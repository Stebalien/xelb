;;; -*- lexical-binding: t -*-
;; Copyright (C) 2015 Free Software Foundation, Inc.
;; This file was generated from `randr.xml' by `el_client.el'.

(require 'xcb-types)

(defconst xcb:randr:-extension-xname "RANDR")
(defconst xcb:randr:-extension-name "RandR")
(defconst xcb:randr:-major-version 1)
(defconst xcb:randr:-minor-version 5)

(require 'xcb-xproto)

(require 'xcb-render)

(xcb:deftypealias 'xcb:randr:MODE 'xcb:-u4)

(xcb:deftypealias 'xcb:randr:CRTC 'xcb:-u4)

(xcb:deftypealias 'xcb:randr:OUTPUT 'xcb:-u4)

(xcb:deftypealias 'xcb:randr:PROVIDER 'xcb:-u4)

(defclass xcb:randr:BadOutput
  (xcb:-error)
  nil)

(defclass xcb:randr:BadCrtc
  (xcb:-error)
  nil)

(defclass xcb:randr:BadMode
  (xcb:-error)
  nil)

(defclass xcb:randr:BadProvider
  (xcb:-error)
  nil)

(defconst xcb:randr:Rotation:Rotate_0 1)
(defconst xcb:randr:Rotation:Rotate_90 2)
(defconst xcb:randr:Rotation:Rotate_180 4)
(defconst xcb:randr:Rotation:Rotate_270 8)
(defconst xcb:randr:Rotation:Reflect_X 16)
(defconst xcb:randr:Rotation:Reflect_Y 32)

(defclass xcb:randr:ScreenSize
  (xcb:-struct)
  ((width :initarg :width :type xcb:CARD16)
   (height :initarg :height :type xcb:CARD16)
   (mwidth :initarg :mwidth :type xcb:CARD16)
   (mheight :initarg :mheight :type xcb:CARD16)))

(defclass xcb:randr:RefreshRates
  (xcb:-struct)
  ((nRates :initarg :nRates :type xcb:CARD16)
   (rates :initarg :rates :type xcb:-ignore)
   (rates~ :initform
	   '(name rates type xcb:CARD16 size
		  (xcb:-fieldref 'nRates))
	   :type xcb:-list)))

(defclass xcb:randr:QueryVersion
  (xcb:-request)
  ((~opcode :initform 0 :type xcb:-u1)
   (major-version :initarg :major-version :type xcb:CARD32)
   (minor-version :initarg :minor-version :type xcb:CARD32)))
(defclass xcb:randr:QueryVersion~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (major-version :initarg :major-version :type xcb:CARD32)
   (minor-version :initarg :minor-version :type xcb:CARD32)
   (pad~1 :initform 16 :type xcb:-pad)))

(defconst xcb:randr:SetConfig:Success 0)
(defconst xcb:randr:SetConfig:InvalidConfigTime 1)
(defconst xcb:randr:SetConfig:InvalidTime 2)
(defconst xcb:randr:SetConfig:Failed 3)

(defclass xcb:randr:SetScreenConfig
  (xcb:-request)
  ((~opcode :initform 2 :type xcb:-u1)
   (window :initarg :window :type xcb:WINDOW)
   (timestamp :initarg :timestamp :type xcb:TIMESTAMP)
   (config-timestamp :initarg :config-timestamp :type xcb:TIMESTAMP)
   (sizeID :initarg :sizeID :type xcb:CARD16)
   (rotation :initarg :rotation :type xcb:CARD16)
   (rate :initarg :rate :type xcb:CARD16)
   (pad~0 :initform 2 :type xcb:-pad)))
(defclass xcb:randr:SetScreenConfig~reply
  (xcb:-reply)
  ((status :initarg :status :type xcb:CARD8)
   (new-timestamp :initarg :new-timestamp :type xcb:TIMESTAMP)
   (config-timestamp :initarg :config-timestamp :type xcb:TIMESTAMP)
   (root :initarg :root :type xcb:WINDOW)
   (subpixel-order :initarg :subpixel-order :type xcb:CARD16)
   (pad~0 :initform 10 :type xcb:-pad)))

(defconst xcb:randr:NotifyMask:ScreenChange 1)
(defconst xcb:randr:NotifyMask:CrtcChange 2)
(defconst xcb:randr:NotifyMask:OutputChange 4)
(defconst xcb:randr:NotifyMask:OutputProperty 8)
(defconst xcb:randr:NotifyMask:ProviderChange 16)
(defconst xcb:randr:NotifyMask:ProviderProperty 32)
(defconst xcb:randr:NotifyMask:ResourceChange 64)

(defclass xcb:randr:SelectInput
  (xcb:-request)
  ((~opcode :initform 4 :type xcb:-u1)
   (window :initarg :window :type xcb:WINDOW)
   (enable :initarg :enable :type xcb:CARD16)
   (pad~0 :initform 2 :type xcb:-pad)))

(defclass xcb:randr:GetScreenInfo
  (xcb:-request)
  ((~opcode :initform 5 :type xcb:-u1)
   (window :initarg :window :type xcb:WINDOW)))
(defclass xcb:randr:GetScreenInfo~reply
  (xcb:-reply)
  ((rotations :initarg :rotations :type xcb:CARD8)
   (root :initarg :root :type xcb:WINDOW)
   (timestamp :initarg :timestamp :type xcb:TIMESTAMP)
   (config-timestamp :initarg :config-timestamp :type xcb:TIMESTAMP)
   (nSizes :initarg :nSizes :type xcb:CARD16)
   (sizeID :initarg :sizeID :type xcb:CARD16)
   (rotation :initarg :rotation :type xcb:CARD16)
   (rate :initarg :rate :type xcb:CARD16)
   (nInfo :initarg :nInfo :type xcb:CARD16)
   (pad~0 :initform 2 :type xcb:-pad)
   (sizes :initarg :sizes :type xcb:-ignore)
   (sizes~ :initform
	   '(name sizes type xcb:randr:ScreenSize size
		  (xcb:-fieldref 'nSizes))
	   :type xcb:-list)
   (pad~1 :initform 4 :type xcb:-pad-align)
   (rates :initarg :rates :type xcb:-ignore)
   (rates~ :initform
	   '(name rates type xcb:randr:RefreshRates size
		  (-
		   (xcb:-fieldref 'nInfo)
		   (xcb:-fieldref 'nSizes)))
	   :type xcb:-list)))

(defclass xcb:randr:GetScreenSizeRange
  (xcb:-request)
  ((~opcode :initform 6 :type xcb:-u1)
   (window :initarg :window :type xcb:WINDOW)))
(defclass xcb:randr:GetScreenSizeRange~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (min-width :initarg :min-width :type xcb:CARD16)
   (min-height :initarg :min-height :type xcb:CARD16)
   (max-width :initarg :max-width :type xcb:CARD16)
   (max-height :initarg :max-height :type xcb:CARD16)
   (pad~1 :initform 16 :type xcb:-pad)))

(defclass xcb:randr:SetScreenSize
  (xcb:-request)
  ((~opcode :initform 7 :type xcb:-u1)
   (window :initarg :window :type xcb:WINDOW)
   (width :initarg :width :type xcb:CARD16)
   (height :initarg :height :type xcb:CARD16)
   (mm-width :initarg :mm-width :type xcb:CARD32)
   (mm-height :initarg :mm-height :type xcb:CARD32)))

(defconst xcb:randr:ModeFlag:HsyncPositive 1)
(defconst xcb:randr:ModeFlag:HsyncNegative 2)
(defconst xcb:randr:ModeFlag:VsyncPositive 4)
(defconst xcb:randr:ModeFlag:VsyncNegative 8)
(defconst xcb:randr:ModeFlag:Interlace 16)
(defconst xcb:randr:ModeFlag:DoubleScan 32)
(defconst xcb:randr:ModeFlag:Csync 64)
(defconst xcb:randr:ModeFlag:CsyncPositive 128)
(defconst xcb:randr:ModeFlag:CsyncNegative 256)
(defconst xcb:randr:ModeFlag:HskewPresent 512)
(defconst xcb:randr:ModeFlag:Bcast 1024)
(defconst xcb:randr:ModeFlag:PixelMultiplex 2048)
(defconst xcb:randr:ModeFlag:DoubleClock 4096)
(defconst xcb:randr:ModeFlag:HalveClock 8192)

(defclass xcb:randr:ModeInfo
  (xcb:-struct)
  ((id :initarg :id :type xcb:CARD32)
   (width :initarg :width :type xcb:CARD16)
   (height :initarg :height :type xcb:CARD16)
   (dot-clock :initarg :dot-clock :type xcb:CARD32)
   (hsync-start :initarg :hsync-start :type xcb:CARD16)
   (hsync-end :initarg :hsync-end :type xcb:CARD16)
   (htotal :initarg :htotal :type xcb:CARD16)
   (hskew :initarg :hskew :type xcb:CARD16)
   (vsync-start :initarg :vsync-start :type xcb:CARD16)
   (vsync-end :initarg :vsync-end :type xcb:CARD16)
   (vtotal :initarg :vtotal :type xcb:CARD16)
   (name-len :initarg :name-len :type xcb:CARD16)
   (mode-flags :initarg :mode-flags :type xcb:CARD32)))

(defclass xcb:randr:GetScreenResources
  (xcb:-request)
  ((~opcode :initform 8 :type xcb:-u1)
   (window :initarg :window :type xcb:WINDOW)))
(defclass xcb:randr:GetScreenResources~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (timestamp :initarg :timestamp :type xcb:TIMESTAMP)
   (config-timestamp :initarg :config-timestamp :type xcb:TIMESTAMP)
   (num-crtcs :initarg :num-crtcs :type xcb:CARD16)
   (num-outputs :initarg :num-outputs :type xcb:CARD16)
   (num-modes :initarg :num-modes :type xcb:CARD16)
   (names-len :initarg :names-len :type xcb:CARD16)
   (pad~1 :initform 8 :type xcb:-pad)
   (crtcs :initarg :crtcs :type xcb:-ignore)
   (crtcs~ :initform
	   '(name crtcs type xcb:randr:CRTC size
		  (xcb:-fieldref 'num-crtcs))
	   :type xcb:-list)
   (pad~2 :initform 4 :type xcb:-pad-align)
   (outputs :initarg :outputs :type xcb:-ignore)
   (outputs~ :initform
	     '(name outputs type xcb:randr:OUTPUT size
		    (xcb:-fieldref 'num-outputs))
	     :type xcb:-list)
   (pad~3 :initform 4 :type xcb:-pad-align)
   (modes :initarg :modes :type xcb:-ignore)
   (modes~ :initform
	   '(name modes type xcb:randr:ModeInfo size
		  (xcb:-fieldref 'num-modes))
	   :type xcb:-list)
   (pad~4 :initform 4 :type xcb:-pad-align)
   (names :initarg :names :type xcb:-ignore)
   (names~ :initform
	   '(name names type xcb:BYTE size
		  (xcb:-fieldref 'names-len))
	   :type xcb:-list)))

(defconst xcb:randr:Connection:Connected 0)
(defconst xcb:randr:Connection:Disconnected 1)
(defconst xcb:randr:Connection:Unknown 2)

(defclass xcb:randr:GetOutputInfo
  (xcb:-request)
  ((~opcode :initform 9 :type xcb:-u1)
   (output :initarg :output :type xcb:randr:OUTPUT)
   (config-timestamp :initarg :config-timestamp :type xcb:TIMESTAMP)))
(defclass xcb:randr:GetOutputInfo~reply
  (xcb:-reply)
  ((status :initarg :status :type xcb:CARD8)
   (timestamp :initarg :timestamp :type xcb:TIMESTAMP)
   (crtc :initarg :crtc :type xcb:randr:CRTC)
   (mm-width :initarg :mm-width :type xcb:CARD32)
   (mm-height :initarg :mm-height :type xcb:CARD32)
   (connection :initarg :connection :type xcb:CARD8)
   (subpixel-order :initarg :subpixel-order :type xcb:CARD8)
   (num-crtcs :initarg :num-crtcs :type xcb:CARD16)
   (num-modes :initarg :num-modes :type xcb:CARD16)
   (num-preferred :initarg :num-preferred :type xcb:CARD16)
   (num-clones :initarg :num-clones :type xcb:CARD16)
   (name-len :initarg :name-len :type xcb:CARD16)
   (crtcs :initarg :crtcs :type xcb:-ignore)
   (crtcs~ :initform
	   '(name crtcs type xcb:randr:CRTC size
		  (xcb:-fieldref 'num-crtcs))
	   :type xcb:-list)
   (pad~0 :initform 4 :type xcb:-pad-align)
   (modes :initarg :modes :type xcb:-ignore)
   (modes~ :initform
	   '(name modes type xcb:randr:MODE size
		  (xcb:-fieldref 'num-modes))
	   :type xcb:-list)
   (pad~1 :initform 4 :type xcb:-pad-align)
   (clones :initarg :clones :type xcb:-ignore)
   (clones~ :initform
	    '(name clones type xcb:randr:OUTPUT size
		   (xcb:-fieldref 'num-clones))
	    :type xcb:-list)
   (pad~2 :initform 4 :type xcb:-pad-align)
   (name :initarg :name :type xcb:-ignore)
   (name~ :initform
	  '(name name type xcb:BYTE size
		 (xcb:-fieldref 'name-len))
	  :type xcb:-list)))

(defclass xcb:randr:ListOutputProperties
  (xcb:-request)
  ((~opcode :initform 10 :type xcb:-u1)
   (output :initarg :output :type xcb:randr:OUTPUT)))
(defclass xcb:randr:ListOutputProperties~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (num-atoms :initarg :num-atoms :type xcb:CARD16)
   (pad~1 :initform 22 :type xcb:-pad)
   (atoms :initarg :atoms :type xcb:-ignore)
   (atoms~ :initform
	   '(name atoms type xcb:ATOM size
		  (xcb:-fieldref 'num-atoms))
	   :type xcb:-list)))

(defclass xcb:randr:QueryOutputProperty
  (xcb:-request)
  ((~opcode :initform 11 :type xcb:-u1)
   (output :initarg :output :type xcb:randr:OUTPUT)
   (property :initarg :property :type xcb:ATOM)))
(defclass xcb:randr:QueryOutputProperty~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (pending :initarg :pending :type xcb:BOOL)
   (range :initarg :range :type xcb:BOOL)
   (immutable :initarg :immutable :type xcb:BOOL)
   (pad~1 :initform 21 :type xcb:-pad)
   (validValues :initarg :validValues :type xcb:-ignore)
   (validValues~ :initform
		 '(name validValues type xcb:INT32 size
			(xcb:-fieldref 'length))
		 :type xcb:-list)))

(defclass xcb:randr:ConfigureOutputProperty
  (xcb:-request)
  ((~opcode :initform 12 :type xcb:-u1)
   (output :initarg :output :type xcb:randr:OUTPUT)
   (property :initarg :property :type xcb:ATOM)
   (pending :initarg :pending :type xcb:BOOL)
   (range :initarg :range :type xcb:BOOL)
   (pad~0 :initform 2 :type xcb:-pad)
   (values :initarg :values :type xcb:-ignore)
   (values~ :initform
	    '(name values type xcb:INT32 size nil)
	    :type xcb:-list)))

(defclass xcb:randr:ChangeOutputProperty
  (xcb:-request)
  ((~opcode :initform 13 :type xcb:-u1)
   (output :initarg :output :type xcb:randr:OUTPUT)
   (property :initarg :property :type xcb:ATOM)
   (type :initarg :type :type xcb:ATOM)
   (format :initarg :format :type xcb:CARD8)
   (mode :initarg :mode :type xcb:CARD8)
   (pad~0 :initform 2 :type xcb:-pad)
   (num-units :initarg :num-units :type xcb:CARD32)
   (data :initarg :data :type xcb:-ignore)
   (data~ :initform
	  '(name data type xcb:void size
		 (/
		  (*
		   (xcb:-fieldref 'num-units)
		   (xcb:-fieldref 'format))
		  8))
	  :type xcb:-list)))

(defclass xcb:randr:DeleteOutputProperty
  (xcb:-request)
  ((~opcode :initform 14 :type xcb:-u1)
   (output :initarg :output :type xcb:randr:OUTPUT)
   (property :initarg :property :type xcb:ATOM)))

(defclass xcb:randr:GetOutputProperty
  (xcb:-request)
  ((~opcode :initform 15 :type xcb:-u1)
   (output :initarg :output :type xcb:randr:OUTPUT)
   (property :initarg :property :type xcb:ATOM)
   (type :initarg :type :type xcb:ATOM)
   (long-offset :initarg :long-offset :type xcb:CARD32)
   (long-length :initarg :long-length :type xcb:CARD32)
   (delete :initarg :delete :type xcb:BOOL)
   (pending :initarg :pending :type xcb:BOOL)
   (pad~0 :initform 2 :type xcb:-pad)))
(defclass xcb:randr:GetOutputProperty~reply
  (xcb:-reply)
  ((format :initarg :format :type xcb:CARD8)
   (type :initarg :type :type xcb:ATOM)
   (bytes-after :initarg :bytes-after :type xcb:CARD32)
   (num-items :initarg :num-items :type xcb:CARD32)
   (pad~0 :initform 12 :type xcb:-pad)
   (data :initarg :data :type xcb:-ignore)
   (data~ :initform
	  '(name data type xcb:BYTE size
		 (*
		  (xcb:-fieldref 'num-items)
		  (/
		   (xcb:-fieldref 'format)
		   8)))
	  :type xcb:-list)))

(defclass xcb:randr:CreateMode
  (xcb:-request)
  ((~opcode :initform 16 :type xcb:-u1)
   (window :initarg :window :type xcb:WINDOW)
   (mode-info :initarg :mode-info :type xcb:randr:ModeInfo)
   (name :initarg :name :type xcb:-ignore)
   (name~ :initform
	  '(name name type xcb:char size nil)
	  :type xcb:-list)))
(defclass xcb:randr:CreateMode~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (mode :initarg :mode :type xcb:randr:MODE)
   (pad~1 :initform 20 :type xcb:-pad)))

(defclass xcb:randr:DestroyMode
  (xcb:-request)
  ((~opcode :initform 17 :type xcb:-u1)
   (mode :initarg :mode :type xcb:randr:MODE)))

(defclass xcb:randr:AddOutputMode
  (xcb:-request)
  ((~opcode :initform 18 :type xcb:-u1)
   (output :initarg :output :type xcb:randr:OUTPUT)
   (mode :initarg :mode :type xcb:randr:MODE)))

(defclass xcb:randr:DeleteOutputMode
  (xcb:-request)
  ((~opcode :initform 19 :type xcb:-u1)
   (output :initarg :output :type xcb:randr:OUTPUT)
   (mode :initarg :mode :type xcb:randr:MODE)))

(defclass xcb:randr:GetCrtcInfo
  (xcb:-request)
  ((~opcode :initform 20 :type xcb:-u1)
   (crtc :initarg :crtc :type xcb:randr:CRTC)
   (config-timestamp :initarg :config-timestamp :type xcb:TIMESTAMP)))
(defclass xcb:randr:GetCrtcInfo~reply
  (xcb:-reply)
  ((status :initarg :status :type xcb:CARD8)
   (timestamp :initarg :timestamp :type xcb:TIMESTAMP)
   (x :initarg :x :type xcb:INT16)
   (y :initarg :y :type xcb:INT16)
   (width :initarg :width :type xcb:CARD16)
   (height :initarg :height :type xcb:CARD16)
   (mode :initarg :mode :type xcb:randr:MODE)
   (rotation :initarg :rotation :type xcb:CARD16)
   (rotations :initarg :rotations :type xcb:CARD16)
   (num-outputs :initarg :num-outputs :type xcb:CARD16)
   (num-possible-outputs :initarg :num-possible-outputs :type xcb:CARD16)
   (outputs :initarg :outputs :type xcb:-ignore)
   (outputs~ :initform
	     '(name outputs type xcb:randr:OUTPUT size
		    (xcb:-fieldref 'num-outputs))
	     :type xcb:-list)
   (pad~0 :initform 4 :type xcb:-pad-align)
   (possible :initarg :possible :type xcb:-ignore)
   (possible~ :initform
	      '(name possible type xcb:randr:OUTPUT size
		     (xcb:-fieldref 'num-possible-outputs))
	      :type xcb:-list)))

(defclass xcb:randr:SetCrtcConfig
  (xcb:-request)
  ((~opcode :initform 21 :type xcb:-u1)
   (crtc :initarg :crtc :type xcb:randr:CRTC)
   (timestamp :initarg :timestamp :type xcb:TIMESTAMP)
   (config-timestamp :initarg :config-timestamp :type xcb:TIMESTAMP)
   (x :initarg :x :type xcb:INT16)
   (y :initarg :y :type xcb:INT16)
   (mode :initarg :mode :type xcb:randr:MODE)
   (rotation :initarg :rotation :type xcb:CARD16)
   (pad~0 :initform 2 :type xcb:-pad)
   (outputs :initarg :outputs :type xcb:-ignore)
   (outputs~ :initform
	     '(name outputs type xcb:randr:OUTPUT size nil)
	     :type xcb:-list)))
(defclass xcb:randr:SetCrtcConfig~reply
  (xcb:-reply)
  ((status :initarg :status :type xcb:CARD8)
   (timestamp :initarg :timestamp :type xcb:TIMESTAMP)
   (pad~0 :initform 20 :type xcb:-pad)))

(defclass xcb:randr:GetCrtcGammaSize
  (xcb:-request)
  ((~opcode :initform 22 :type xcb:-u1)
   (crtc :initarg :crtc :type xcb:randr:CRTC)))
(defclass xcb:randr:GetCrtcGammaSize~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (size :initarg :size :type xcb:CARD16)
   (pad~1 :initform 22 :type xcb:-pad)))

(defclass xcb:randr:GetCrtcGamma
  (xcb:-request)
  ((~opcode :initform 23 :type xcb:-u1)
   (crtc :initarg :crtc :type xcb:randr:CRTC)))
(defclass xcb:randr:GetCrtcGamma~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (size :initarg :size :type xcb:CARD16)
   (pad~1 :initform 22 :type xcb:-pad)
   (red :initarg :red :type xcb:-ignore)
   (red~ :initform
	 '(name red type xcb:CARD16 size
		(xcb:-fieldref 'size))
	 :type xcb:-list)
   (pad~2 :initform 4 :type xcb:-pad-align)
   (green :initarg :green :type xcb:-ignore)
   (green~ :initform
	   '(name green type xcb:CARD16 size
		  (xcb:-fieldref 'size))
	   :type xcb:-list)
   (pad~3 :initform 4 :type xcb:-pad-align)
   (blue :initarg :blue :type xcb:-ignore)
   (blue~ :initform
	  '(name blue type xcb:CARD16 size
		 (xcb:-fieldref 'size))
	  :type xcb:-list)))

(defclass xcb:randr:SetCrtcGamma
  (xcb:-request)
  ((~opcode :initform 24 :type xcb:-u1)
   (crtc :initarg :crtc :type xcb:randr:CRTC)
   (size :initarg :size :type xcb:CARD16)
   (pad~0 :initform 2 :type xcb:-pad)
   (red :initarg :red :type xcb:-ignore)
   (red~ :initform
	 '(name red type xcb:CARD16 size
		(xcb:-fieldref 'size))
	 :type xcb:-list)
   (pad~1 :initform 4 :type xcb:-pad-align)
   (green :initarg :green :type xcb:-ignore)
   (green~ :initform
	   '(name green type xcb:CARD16 size
		  (xcb:-fieldref 'size))
	   :type xcb:-list)
   (pad~2 :initform 4 :type xcb:-pad-align)
   (blue :initarg :blue :type xcb:-ignore)
   (blue~ :initform
	  '(name blue type xcb:CARD16 size
		 (xcb:-fieldref 'size))
	  :type xcb:-list)))

(defclass xcb:randr:GetScreenResourcesCurrent
  (xcb:-request)
  ((~opcode :initform 25 :type xcb:-u1)
   (window :initarg :window :type xcb:WINDOW)))
(defclass xcb:randr:GetScreenResourcesCurrent~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (timestamp :initarg :timestamp :type xcb:TIMESTAMP)
   (config-timestamp :initarg :config-timestamp :type xcb:TIMESTAMP)
   (num-crtcs :initarg :num-crtcs :type xcb:CARD16)
   (num-outputs :initarg :num-outputs :type xcb:CARD16)
   (num-modes :initarg :num-modes :type xcb:CARD16)
   (names-len :initarg :names-len :type xcb:CARD16)
   (pad~1 :initform 8 :type xcb:-pad)
   (crtcs :initarg :crtcs :type xcb:-ignore)
   (crtcs~ :initform
	   '(name crtcs type xcb:randr:CRTC size
		  (xcb:-fieldref 'num-crtcs))
	   :type xcb:-list)
   (pad~2 :initform 4 :type xcb:-pad-align)
   (outputs :initarg :outputs :type xcb:-ignore)
   (outputs~ :initform
	     '(name outputs type xcb:randr:OUTPUT size
		    (xcb:-fieldref 'num-outputs))
	     :type xcb:-list)
   (pad~3 :initform 4 :type xcb:-pad-align)
   (modes :initarg :modes :type xcb:-ignore)
   (modes~ :initform
	   '(name modes type xcb:randr:ModeInfo size
		  (xcb:-fieldref 'num-modes))
	   :type xcb:-list)
   (pad~4 :initform 4 :type xcb:-pad-align)
   (names :initarg :names :type xcb:-ignore)
   (names~ :initform
	   '(name names type xcb:BYTE size
		  (xcb:-fieldref 'names-len))
	   :type xcb:-list)))

(defconst xcb:randr:Transform:Unit 1)
(defconst xcb:randr:Transform:ScaleUp 2)
(defconst xcb:randr:Transform:ScaleDown 4)
(defconst xcb:randr:Transform:Projective 8)

(defclass xcb:randr:SetCrtcTransform
  (xcb:-request)
  ((~opcode :initform 26 :type xcb:-u1)
   (crtc :initarg :crtc :type xcb:randr:CRTC)
   (transform :initarg :transform :type xcb:randr:TRANSFORM)
   (filter-len :initarg :filter-len :type xcb:CARD16)
   (pad~0 :initform 2 :type xcb:-pad)
   (filter-name :initarg :filter-name :type xcb:-ignore)
   (filter-name~ :initform
		 '(name filter-name type xcb:char size
			(xcb:-fieldref 'filter-len))
		 :type xcb:-list)
   (pad~1 :initform 4 :type xcb:-pad-align)
   (filter-params :initarg :filter-params :type xcb:-ignore)
   (filter-params~ :initform
		   '(name filter-params type xcb:randr:FIXED size nil)
		   :type xcb:-list)))

(defclass xcb:randr:GetCrtcTransform
  (xcb:-request)
  ((~opcode :initform 27 :type xcb:-u1)
   (crtc :initarg :crtc :type xcb:randr:CRTC)))
(defclass xcb:randr:GetCrtcTransform~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (pending-transform :initarg :pending-transform :type xcb:randr:TRANSFORM)
   (has-transforms :initarg :has-transforms :type xcb:BOOL)
   (pad~1 :initform 3 :type xcb:-pad)
   (current-transform :initarg :current-transform :type xcb:randr:TRANSFORM)
   (pad~2 :initform 4 :type xcb:-pad)
   (pending-len :initarg :pending-len :type xcb:CARD16)
   (pending-nparams :initarg :pending-nparams :type xcb:CARD16)
   (current-len :initarg :current-len :type xcb:CARD16)
   (current-nparams :initarg :current-nparams :type xcb:CARD16)
   (pending-filter-name :initarg :pending-filter-name :type xcb:-ignore)
   (pending-filter-name~ :initform
			 '(name pending-filter-name type xcb:char size
				(xcb:-fieldref 'pending-len))
			 :type xcb:-list)
   (pad~3 :initform 4 :type xcb:-pad-align)
   (pending-params :initarg :pending-params :type xcb:-ignore)
   (pending-params~ :initform
		    '(name pending-params type xcb:randr:FIXED size
			   (xcb:-fieldref 'pending-nparams))
		    :type xcb:-list)
   (pad~4 :initform 4 :type xcb:-pad-align)
   (current-filter-name :initarg :current-filter-name :type xcb:-ignore)
   (current-filter-name~ :initform
			 '(name current-filter-name type xcb:char size
				(xcb:-fieldref 'current-len))
			 :type xcb:-list)
   (pad~5 :initform 4 :type xcb:-pad-align)
   (current-params :initarg :current-params :type xcb:-ignore)
   (current-params~ :initform
		    '(name current-params type xcb:randr:FIXED size
			   (xcb:-fieldref 'current-nparams))
		    :type xcb:-list)))

(defclass xcb:randr:GetPanning
  (xcb:-request)
  ((~opcode :initform 28 :type xcb:-u1)
   (crtc :initarg :crtc :type xcb:randr:CRTC)))
(defclass xcb:randr:GetPanning~reply
  (xcb:-reply)
  ((status :initarg :status :type xcb:CARD8)
   (timestamp :initarg :timestamp :type xcb:TIMESTAMP)
   (left :initarg :left :type xcb:CARD16)
   (top :initarg :top :type xcb:CARD16)
   (width :initarg :width :type xcb:CARD16)
   (height :initarg :height :type xcb:CARD16)
   (track-left :initarg :track-left :type xcb:CARD16)
   (track-top :initarg :track-top :type xcb:CARD16)
   (track-width :initarg :track-width :type xcb:CARD16)
   (track-height :initarg :track-height :type xcb:CARD16)
   (border-left :initarg :border-left :type xcb:INT16)
   (border-top :initarg :border-top :type xcb:INT16)
   (border-right :initarg :border-right :type xcb:INT16)
   (border-bottom :initarg :border-bottom :type xcb:INT16)))

(defclass xcb:randr:SetPanning
  (xcb:-request)
  ((~opcode :initform 29 :type xcb:-u1)
   (crtc :initarg :crtc :type xcb:randr:CRTC)
   (timestamp :initarg :timestamp :type xcb:TIMESTAMP)
   (left :initarg :left :type xcb:CARD16)
   (top :initarg :top :type xcb:CARD16)
   (width :initarg :width :type xcb:CARD16)
   (height :initarg :height :type xcb:CARD16)
   (track-left :initarg :track-left :type xcb:CARD16)
   (track-top :initarg :track-top :type xcb:CARD16)
   (track-width :initarg :track-width :type xcb:CARD16)
   (track-height :initarg :track-height :type xcb:CARD16)
   (border-left :initarg :border-left :type xcb:INT16)
   (border-top :initarg :border-top :type xcb:INT16)
   (border-right :initarg :border-right :type xcb:INT16)
   (border-bottom :initarg :border-bottom :type xcb:INT16)))
(defclass xcb:randr:SetPanning~reply
  (xcb:-reply)
  ((status :initarg :status :type xcb:CARD8)
   (timestamp :initarg :timestamp :type xcb:TIMESTAMP)))

(defclass xcb:randr:SetOutputPrimary
  (xcb:-request)
  ((~opcode :initform 30 :type xcb:-u1)
   (window :initarg :window :type xcb:WINDOW)
   (output :initarg :output :type xcb:randr:OUTPUT)))

(defclass xcb:randr:GetOutputPrimary
  (xcb:-request)
  ((~opcode :initform 31 :type xcb:-u1)
   (window :initarg :window :type xcb:WINDOW)))
(defclass xcb:randr:GetOutputPrimary~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (output :initarg :output :type xcb:randr:OUTPUT)))

(defclass xcb:randr:GetProviders
  (xcb:-request)
  ((~opcode :initform 32 :type xcb:-u1)
   (window :initarg :window :type xcb:WINDOW)))
(defclass xcb:randr:GetProviders~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (timestamp :initarg :timestamp :type xcb:TIMESTAMP)
   (num-providers :initarg :num-providers :type xcb:CARD16)
   (pad~1 :initform 18 :type xcb:-pad)
   (providers :initarg :providers :type xcb:-ignore)
   (providers~ :initform
	       '(name providers type xcb:randr:PROVIDER size
		      (xcb:-fieldref 'num-providers))
	       :type xcb:-list)))

(defconst xcb:randr:ProviderCapability:SourceOutput 1)
(defconst xcb:randr:ProviderCapability:SinkOutput 2)
(defconst xcb:randr:ProviderCapability:SourceOffload 4)
(defconst xcb:randr:ProviderCapability:SinkOffload 8)

(defclass xcb:randr:GetProviderInfo
  (xcb:-request)
  ((~opcode :initform 33 :type xcb:-u1)
   (provider :initarg :provider :type xcb:randr:PROVIDER)
   (config-timestamp :initarg :config-timestamp :type xcb:TIMESTAMP)))
(defclass xcb:randr:GetProviderInfo~reply
  (xcb:-reply)
  ((status :initarg :status :type xcb:CARD8)
   (timestamp :initarg :timestamp :type xcb:TIMESTAMP)
   (capabilities :initarg :capabilities :type xcb:CARD32)
   (num-crtcs :initarg :num-crtcs :type xcb:CARD16)
   (num-outputs :initarg :num-outputs :type xcb:CARD16)
   (num-associated-providers :initarg :num-associated-providers :type xcb:CARD16)
   (name-len :initarg :name-len :type xcb:CARD16)
   (pad~0 :initform 8 :type xcb:-pad)
   (crtcs :initarg :crtcs :type xcb:-ignore)
   (crtcs~ :initform
	   '(name crtcs type xcb:randr:CRTC size
		  (xcb:-fieldref 'num-crtcs))
	   :type xcb:-list)
   (pad~1 :initform 4 :type xcb:-pad-align)
   (outputs :initarg :outputs :type xcb:-ignore)
   (outputs~ :initform
	     '(name outputs type xcb:randr:OUTPUT size
		    (xcb:-fieldref 'num-outputs))
	     :type xcb:-list)
   (pad~2 :initform 4 :type xcb:-pad-align)
   (associated-providers :initarg :associated-providers :type xcb:-ignore)
   (associated-providers~ :initform
			  '(name associated-providers type xcb:randr:PROVIDER size
				 (xcb:-fieldref 'num-associated-providers))
			  :type xcb:-list)
   (pad~3 :initform 4 :type xcb:-pad-align)
   (associated-capability :initarg :associated-capability :type xcb:-ignore)
   (associated-capability~ :initform
			   '(name associated-capability type xcb:CARD32 size
				  (xcb:-fieldref 'num-associated-providers))
			   :type xcb:-list)
   (pad~4 :initform 4 :type xcb:-pad-align)
   (name :initarg :name :type xcb:-ignore)
   (name~ :initform
	  '(name name type xcb:char size
		 (xcb:-fieldref 'name-len))
	  :type xcb:-list)))

(defclass xcb:randr:SetProviderOffloadSink
  (xcb:-request)
  ((~opcode :initform 34 :type xcb:-u1)
   (provider :initarg :provider :type xcb:randr:PROVIDER)
   (sink-provider :initarg :sink-provider :type xcb:randr:PROVIDER)
   (config-timestamp :initarg :config-timestamp :type xcb:TIMESTAMP)))

(defclass xcb:randr:SetProviderOutputSource
  (xcb:-request)
  ((~opcode :initform 35 :type xcb:-u1)
   (provider :initarg :provider :type xcb:randr:PROVIDER)
   (source-provider :initarg :source-provider :type xcb:randr:PROVIDER)
   (config-timestamp :initarg :config-timestamp :type xcb:TIMESTAMP)))

(defclass xcb:randr:ListProviderProperties
  (xcb:-request)
  ((~opcode :initform 36 :type xcb:-u1)
   (provider :initarg :provider :type xcb:randr:PROVIDER)))
(defclass xcb:randr:ListProviderProperties~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (num-atoms :initarg :num-atoms :type xcb:CARD16)
   (pad~1 :initform 22 :type xcb:-pad)
   (atoms :initarg :atoms :type xcb:-ignore)
   (atoms~ :initform
	   '(name atoms type xcb:ATOM size
		  (xcb:-fieldref 'num-atoms))
	   :type xcb:-list)))

(defclass xcb:randr:QueryProviderProperty
  (xcb:-request)
  ((~opcode :initform 37 :type xcb:-u1)
   (provider :initarg :provider :type xcb:randr:PROVIDER)
   (property :initarg :property :type xcb:ATOM)))
(defclass xcb:randr:QueryProviderProperty~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (pending :initarg :pending :type xcb:BOOL)
   (range :initarg :range :type xcb:BOOL)
   (immutable :initarg :immutable :type xcb:BOOL)
   (pad~1 :initform 21 :type xcb:-pad)
   (valid-values :initarg :valid-values :type xcb:-ignore)
   (valid-values~ :initform
		  '(name valid-values type xcb:INT32 size
			 (xcb:-fieldref 'length))
		  :type xcb:-list)))

(defclass xcb:randr:ConfigureProviderProperty
  (xcb:-request)
  ((~opcode :initform 38 :type xcb:-u1)
   (provider :initarg :provider :type xcb:randr:PROVIDER)
   (property :initarg :property :type xcb:ATOM)
   (pending :initarg :pending :type xcb:BOOL)
   (range :initarg :range :type xcb:BOOL)
   (pad~0 :initform 2 :type xcb:-pad)
   (values :initarg :values :type xcb:-ignore)
   (values~ :initform
	    '(name values type xcb:INT32 size nil)
	    :type xcb:-list)))

(defclass xcb:randr:ChangeProviderProperty
  (xcb:-request)
  ((~opcode :initform 39 :type xcb:-u1)
   (provider :initarg :provider :type xcb:randr:PROVIDER)
   (property :initarg :property :type xcb:ATOM)
   (type :initarg :type :type xcb:ATOM)
   (format :initarg :format :type xcb:CARD8)
   (mode :initarg :mode :type xcb:CARD8)
   (pad~0 :initform 2 :type xcb:-pad)
   (num-items :initarg :num-items :type xcb:CARD32)
   (data :initarg :data :type xcb:-ignore)
   (data~ :initform
	  '(name data type xcb:void size
		 (*
		  (xcb:-fieldref 'num-items)
		  (/
		   (xcb:-fieldref 'format)
		   8)))
	  :type xcb:-list)))

(defclass xcb:randr:DeleteProviderProperty
  (xcb:-request)
  ((~opcode :initform 40 :type xcb:-u1)
   (provider :initarg :provider :type xcb:randr:PROVIDER)
   (property :initarg :property :type xcb:ATOM)))

(defclass xcb:randr:GetProviderProperty
  (xcb:-request)
  ((~opcode :initform 41 :type xcb:-u1)
   (provider :initarg :provider :type xcb:randr:PROVIDER)
   (property :initarg :property :type xcb:ATOM)
   (type :initarg :type :type xcb:ATOM)
   (long-offset :initarg :long-offset :type xcb:CARD32)
   (long-length :initarg :long-length :type xcb:CARD32)
   (delete :initarg :delete :type xcb:BOOL)
   (pending :initarg :pending :type xcb:BOOL)
   (pad~0 :initform 2 :type xcb:-pad)))
(defclass xcb:randr:GetProviderProperty~reply
  (xcb:-reply)
  ((format :initarg :format :type xcb:CARD8)
   (type :initarg :type :type xcb:ATOM)
   (bytes-after :initarg :bytes-after :type xcb:CARD32)
   (num-items :initarg :num-items :type xcb:CARD32)
   (pad~0 :initform 12 :type xcb:-pad)
   (data :initarg :data :type xcb:-ignore)
   (data~ :initform
	  '(name data type xcb:void size
		 (*
		  (xcb:-fieldref 'num-items)
		  (/
		   (xcb:-fieldref 'format)
		   8)))
	  :type xcb:-list)))

(defclass xcb:randr:ScreenChangeNotify
  (xcb:-event)
  ((rotation :initarg :rotation :type xcb:CARD8)
   (timestamp :initarg :timestamp :type xcb:TIMESTAMP)
   (config-timestamp :initarg :config-timestamp :type xcb:TIMESTAMP)
   (root :initarg :root :type xcb:WINDOW)
   (request-window :initarg :request-window :type xcb:WINDOW)
   (sizeID :initarg :sizeID :type xcb:CARD16)
   (subpixel-order :initarg :subpixel-order :type xcb:CARD16)
   (width :initarg :width :type xcb:CARD16)
   (height :initarg :height :type xcb:CARD16)
   (mwidth :initarg :mwidth :type xcb:CARD16)
   (mheight :initarg :mheight :type xcb:CARD16)))

(defconst xcb:randr:Notify:CrtcChange 0)
(defconst xcb:randr:Notify:OutputChange 1)
(defconst xcb:randr:Notify:OutputProperty 2)
(defconst xcb:randr:Notify:ProviderChange 3)
(defconst xcb:randr:Notify:ProviderProperty 4)
(defconst xcb:randr:Notify:ResourceChange 5)

(defclass xcb:randr:CrtcChange
  (xcb:-struct)
  ((timestamp :initarg :timestamp :type xcb:TIMESTAMP)
   (window :initarg :window :type xcb:WINDOW)
   (crtc :initarg :crtc :type xcb:randr:CRTC)
   (mode :initarg :mode :type xcb:randr:MODE)
   (rotation :initarg :rotation :type xcb:CARD16)
   (pad~0 :initform 2 :type xcb:-pad)
   (x :initarg :x :type xcb:INT16)
   (y :initarg :y :type xcb:INT16)
   (width :initarg :width :type xcb:CARD16)
   (height :initarg :height :type xcb:CARD16)))

(defclass xcb:randr:OutputChange
  (xcb:-struct)
  ((timestamp :initarg :timestamp :type xcb:TIMESTAMP)
   (config-timestamp :initarg :config-timestamp :type xcb:TIMESTAMP)
   (window :initarg :window :type xcb:WINDOW)
   (output :initarg :output :type xcb:randr:OUTPUT)
   (crtc :initarg :crtc :type xcb:randr:CRTC)
   (mode :initarg :mode :type xcb:randr:MODE)
   (rotation :initarg :rotation :type xcb:CARD16)
   (connection :initarg :connection :type xcb:CARD8)
   (subpixel-order :initarg :subpixel-order :type xcb:CARD8)))

(defclass xcb:randr:OutputProperty
  (xcb:-struct)
  ((window :initarg :window :type xcb:WINDOW)
   (output :initarg :output :type xcb:randr:OUTPUT)
   (atom :initarg :atom :type xcb:ATOM)
   (timestamp :initarg :timestamp :type xcb:TIMESTAMP)
   (status :initarg :status :type xcb:CARD8)
   (pad~0 :initform 11 :type xcb:-pad)))

(defclass xcb:randr:ProviderChange
  (xcb:-struct)
  ((timestamp :initarg :timestamp :type xcb:TIMESTAMP)
   (window :initarg :window :type xcb:WINDOW)
   (provider :initarg :provider :type xcb:randr:PROVIDER)
   (pad~0 :initform 16 :type xcb:-pad)))

(defclass xcb:randr:ProviderProperty
  (xcb:-struct)
  ((window :initarg :window :type xcb:WINDOW)
   (provider :initarg :provider :type xcb:randr:PROVIDER)
   (atom :initarg :atom :type xcb:ATOM)
   (timestamp :initarg :timestamp :type xcb:TIMESTAMP)
   (state :initarg :state :type xcb:CARD8)
   (pad~0 :initform 11 :type xcb:-pad)))

(defclass xcb:randr:ResourceChange
  (xcb:-struct)
  ((timestamp :initarg :timestamp :type xcb:TIMESTAMP)
   (window :initarg :window :type xcb:WINDOW)
   (pad~0 :initform 20 :type xcb:-pad)))

(defclass xcb:randr:NotifyData
  (xcb:-union)
  ((cc :initarg :cc :type xcb:randr:CrtcChange)
   (oc :initarg :oc :type xcb:randr:OutputChange)
   (op :initarg :op :type xcb:randr:OutputProperty)
   (pc :initarg :pc :type xcb:randr:ProviderChange)
   (pp :initarg :pp :type xcb:randr:ProviderProperty)
   (rc :initarg :rc :type xcb:randr:ResourceChange)))

(defclass xcb:randr:Notify
  (xcb:-event)
  ((subCode :initarg :subCode :type xcb:CARD8)
   (u :initarg :u :type xcb:randr:NotifyData)))

(defclass xcb:randr:MonitorInfo
  (xcb:-struct)
  ((name :initarg :name :type xcb:ATOM)
   (primary :initarg :primary :type xcb:BOOL)
   (automatic :initarg :automatic :type xcb:BOOL)
   (nOutput :initarg :nOutput :type xcb:CARD16)
   (x :initarg :x :type xcb:INT16)
   (y :initarg :y :type xcb:INT16)
   (width :initarg :width :type xcb:CARD16)
   (height :initarg :height :type xcb:CARD16)
   (width-in-millimeters :initarg :width-in-millimeters :type xcb:CARD32)
   (height-in-millimeters :initarg :height-in-millimeters :type xcb:CARD32)
   (outputs :initarg :outputs :type xcb:-ignore)
   (outputs~ :initform
	     '(name outputs type xcb:randr:OUTPUT size
		    (xcb:-fieldref 'nOutput))
	     :type xcb:-list)))

(defclass xcb:randr:GetMonitors
  (xcb:-request)
  ((~opcode :initform 42 :type xcb:-u1)
   (window :initarg :window :type xcb:WINDOW)
   (get-active :initarg :get-active :type xcb:BOOL)))
(defclass xcb:randr:GetMonitors~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (timestamp :initarg :timestamp :type xcb:TIMESTAMP)
   (nMonitors :initarg :nMonitors :type xcb:CARD32)
   (nOutputs :initarg :nOutputs :type xcb:CARD32)
   (pad~1 :initform 12 :type xcb:-pad)
   (monitors :initarg :monitors :type xcb:-ignore)
   (monitors~ :initform
	      '(name monitors type xcb:randr:MonitorInfo size
		     (xcb:-fieldref 'nMonitors))
	      :type xcb:-list)))

(defclass xcb:randr:SetMonitor
  (xcb:-request)
  ((~opcode :initform 43 :type xcb:-u1)
   (window :initarg :window :type xcb:WINDOW)
   (monitorinfo :initarg :monitorinfo :type xcb:randr:MonitorInfo)))

(defclass xcb:randr:DeleteMonitor
  (xcb:-request)
  ((~opcode :initform 44 :type xcb:-u1)
   (window :initarg :window :type xcb:WINDOW)
   (name :initarg :name :type xcb:ATOM)))

(defconst xcb:randr:error-number-class-alist
  '((0 . xcb:randr:BadOutput)
    (1 . xcb:randr:BadCrtc)
    (2 . xcb:randr:BadMode)
    (3 . xcb:randr:BadProvider))
  "(error-number . error-class) alist")

(defconst xcb:randr:event-number-class-alist
  '((0 . xcb:randr:ScreenChangeNotify)
    (1 . xcb:randr:Notify))
  "(event-number . event-class) alist")



(provide 'xcb-randr)
