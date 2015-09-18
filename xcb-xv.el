;;; -*- lexical-binding: t -*-
;; Copyright (C) 2015 Free Software Foundation, Inc.
;; This file was generated from `xv.xml' by `el_client.el'.

(require 'xcb-types)

(defconst xcb:xv:-extension-xname "XVideo")
(defconst xcb:xv:-extension-name "Xv")
(defconst xcb:xv:-major-version 2)
(defconst xcb:xv:-minor-version 2)

(require 'xcb-xproto)

(require 'xcb-shm)

(xcb:deftypealias 'xcb:xv:PORT 'xcb:-u4)

(xcb:deftypealias 'xcb:xv:ENCODING 'xcb:-u4)

(defconst xcb:xv:Type:InputMask 1)
(defconst xcb:xv:Type:OutputMask 2)
(defconst xcb:xv:Type:VideoMask 4)
(defconst xcb:xv:Type:StillMask 8)
(defconst xcb:xv:Type:ImageMask 16)

(defconst xcb:xv:ImageFormatInfoType:RGB 0)
(defconst xcb:xv:ImageFormatInfoType:YUV 1)

(defconst xcb:xv:ImageFormatInfoFormat:Packed 0)
(defconst xcb:xv:ImageFormatInfoFormat:Planar 1)

(defconst xcb:xv:AttributeFlag:Gettable 1)
(defconst xcb:xv:AttributeFlag:Settable 2)

(defconst xcb:xv:VideoNotifyReason:Started 0)
(defconst xcb:xv:VideoNotifyReason:Stopped 1)
(defconst xcb:xv:VideoNotifyReason:Busy 2)
(defconst xcb:xv:VideoNotifyReason:Preempted 3)
(defconst xcb:xv:VideoNotifyReason:HardError 4)

(defconst xcb:xv:ScanlineOrder:TopToBottom 0)
(defconst xcb:xv:ScanlineOrder:BottomToTop 1)

(defconst xcb:xv:GrabPortStatus:Success 0)
(defconst xcb:xv:GrabPortStatus:BadExtension 1)
(defconst xcb:xv:GrabPortStatus:AlreadyGrabbed 2)
(defconst xcb:xv:GrabPortStatus:InvalidTime 3)
(defconst xcb:xv:GrabPortStatus:BadReply 4)
(defconst xcb:xv:GrabPortStatus:BadAlloc 5)

(defclass xcb:xv:Rational
  (xcb:-struct)
  ((numerator :initarg :numerator :type xcb:INT32)
   (denominator :initarg :denominator :type xcb:INT32)))

(defclass xcb:xv:Format
  (xcb:-struct)
  ((visual :initarg :visual :type xcb:VISUALID)
   (depth :initarg :depth :type xcb:CARD8)
   (pad~0 :initform 3 :type xcb:-pad)))

(defclass xcb:xv:AdaptorInfo
  (xcb:-struct)
  ((base-id :initarg :base-id :type xcb:xv:PORT)
   (name-size :initarg :name-size :type xcb:CARD16)
   (num-ports :initarg :num-ports :type xcb:CARD16)
   (num-formats :initarg :num-formats :type xcb:CARD16)
   (type :initarg :type :type xcb:CARD8)
   (pad~0 :initform 1 :type xcb:-pad)
   (name :initarg :name :type xcb:-ignore)
   (name~ :initform
	  '(name name type xcb:char size
		 (xcb:-fieldref 'name-size))
	  :type xcb:-list)
   (pad~1 :initform 4 :type xcb:-pad-align)
   (formats :initarg :formats :type xcb:-ignore)
   (formats~ :initform
	     '(name formats type xcb:xv:Format size
		    (xcb:-fieldref 'num-formats))
	     :type xcb:-list)))

(defclass xcb:xv:EncodingInfo
  (xcb:-struct)
  ((encoding :initarg :encoding :type xcb:xv:ENCODING)
   (name-size :initarg :name-size :type xcb:CARD16)
   (width :initarg :width :type xcb:CARD16)
   (height :initarg :height :type xcb:CARD16)
   (pad~0 :initform 2 :type xcb:-pad)
   (rate :initarg :rate :type xcb:xv:Rational)
   (name :initarg :name :type xcb:-ignore)
   (name~ :initform
	  '(name name type xcb:char size
		 (xcb:-fieldref 'name-size))
	  :type xcb:-list)))

(defclass xcb:xv:Image
  (xcb:-struct)
  ((id :initarg :id :type xcb:CARD32)
   (width :initarg :width :type xcb:CARD16)
   (height :initarg :height :type xcb:CARD16)
   (data-size :initarg :data-size :type xcb:CARD32)
   (num-planes :initarg :num-planes :type xcb:CARD32)
   (pitches :initarg :pitches :type xcb:-ignore)
   (pitches~ :initform
	     '(name pitches type xcb:CARD32 size
		    (xcb:-fieldref 'num-planes))
	     :type xcb:-list)
   (pad~0 :initform 4 :type xcb:-pad-align)
   (offsets :initarg :offsets :type xcb:-ignore)
   (offsets~ :initform
	     '(name offsets type xcb:CARD32 size
		    (xcb:-fieldref 'num-planes))
	     :type xcb:-list)
   (pad~1 :initform 4 :type xcb:-pad-align)
   (data :initarg :data :type xcb:-ignore)
   (data~ :initform
	  '(name data type xcb:CARD8 size
		 (xcb:-fieldref 'data-size))
	  :type xcb:-list)))

(defclass xcb:xv:AttributeInfo
  (xcb:-struct)
  ((flags :initarg :flags :type xcb:CARD32)
   (min :initarg :min :type xcb:INT32)
   (max :initarg :max :type xcb:INT32)
   (size :initarg :size :type xcb:CARD32)
   (name :initarg :name :type xcb:-ignore)
   (name~ :initform
	  '(name name type xcb:char size
		 (xcb:-fieldref 'size))
	  :type xcb:-list)))

(defclass xcb:xv:ImageFormatInfo
  (xcb:-struct)
  ((id :initarg :id :type xcb:CARD32)
   (type :initarg :type :type xcb:CARD8)
   (byte-order :initarg :byte-order :type xcb:CARD8)
   (pad~0 :initform 2 :type xcb:-pad)
   (guid :initarg :guid :type xcb:-ignore)
   (guid~ :initform
	  '(name guid type xcb:CARD8 size 16)
	  :type xcb:-list)
   (bpp :initarg :bpp :type xcb:CARD8)
   (num-planes :initarg :num-planes :type xcb:CARD8)
   (pad~1 :initform 2 :type xcb:-pad)
   (depth :initarg :depth :type xcb:CARD8)
   (pad~2 :initform 3 :type xcb:-pad)
   (red-mask :initarg :red-mask :type xcb:CARD32)
   (green-mask :initarg :green-mask :type xcb:CARD32)
   (blue-mask :initarg :blue-mask :type xcb:CARD32)
   (format :initarg :format :type xcb:CARD8)
   (pad~3 :initform 3 :type xcb:-pad)
   (y-sample-bits :initarg :y-sample-bits :type xcb:CARD32)
   (u-sample-bits :initarg :u-sample-bits :type xcb:CARD32)
   (v-sample-bits :initarg :v-sample-bits :type xcb:CARD32)
   (vhorz-y-period :initarg :vhorz-y-period :type xcb:CARD32)
   (vhorz-u-period :initarg :vhorz-u-period :type xcb:CARD32)
   (vhorz-v-period :initarg :vhorz-v-period :type xcb:CARD32)
   (vvert-y-period :initarg :vvert-y-period :type xcb:CARD32)
   (vvert-u-period :initarg :vvert-u-period :type xcb:CARD32)
   (vvert-v-period :initarg :vvert-v-period :type xcb:CARD32)
   (vcomp-order :initarg :vcomp-order :type xcb:-ignore)
   (vcomp-order~ :initform
		 '(name vcomp-order type xcb:CARD8 size 32)
		 :type xcb:-list)
   (vscanline-order :initarg :vscanline-order :type xcb:CARD8)
   (pad~4 :initform 11 :type xcb:-pad)))

(defclass xcb:xv:BadPort
  (xcb:-error)
  nil)

(defclass xcb:xv:BadEncoding
  (xcb:-error)
  nil)

(defclass xcb:xv:BadControl
  (xcb:-error)
  nil)

(defclass xcb:xv:VideoNotify
  (xcb:-event)
  ((reason :initarg :reason :type xcb:BYTE)
   (time :initarg :time :type xcb:TIMESTAMP)
   (drawable :initarg :drawable :type xcb:DRAWABLE)
   (port :initarg :port :type xcb:xv:PORT)))

(defclass xcb:xv:PortNotify
  (xcb:-event)
  ((pad~0 :initform 1 :type xcb:-pad)
   (time :initarg :time :type xcb:TIMESTAMP)
   (port :initarg :port :type xcb:xv:PORT)
   (attribute :initarg :attribute :type xcb:ATOM)
   (value :initarg :value :type xcb:INT32)))

(defclass xcb:xv:QueryExtension
  (xcb:-request)
  ((~opcode :initform 0 :type xcb:-u1)))
(defclass xcb:xv:QueryExtension~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (major :initarg :major :type xcb:CARD16)
   (minor :initarg :minor :type xcb:CARD16)))

(defclass xcb:xv:QueryAdaptors
  (xcb:-request)
  ((~opcode :initform 1 :type xcb:-u1)
   (window :initarg :window :type xcb:WINDOW)))
(defclass xcb:xv:QueryAdaptors~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (num-adaptors :initarg :num-adaptors :type xcb:CARD16)
   (pad~1 :initform 22 :type xcb:-pad)
   (info :initarg :info :type xcb:-ignore)
   (info~ :initform
	  '(name info type xcb:xv:AdaptorInfo size
		 (xcb:-fieldref 'num-adaptors))
	  :type xcb:-list)))

(defclass xcb:xv:QueryEncodings
  (xcb:-request)
  ((~opcode :initform 2 :type xcb:-u1)
   (port :initarg :port :type xcb:xv:PORT)))
(defclass xcb:xv:QueryEncodings~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (num-encodings :initarg :num-encodings :type xcb:CARD16)
   (pad~1 :initform 22 :type xcb:-pad)
   (info :initarg :info :type xcb:-ignore)
   (info~ :initform
	  '(name info type xcb:xv:EncodingInfo size
		 (xcb:-fieldref 'num-encodings))
	  :type xcb:-list)))

(defclass xcb:xv:GrabPort
  (xcb:-request)
  ((~opcode :initform 3 :type xcb:-u1)
   (port :initarg :port :type xcb:xv:PORT)
   (time :initarg :time :type xcb:TIMESTAMP)))
(defclass xcb:xv:GrabPort~reply
  (xcb:-reply)
  ((result :initarg :result :type xcb:BYTE)))

(defclass xcb:xv:UngrabPort
  (xcb:-request)
  ((~opcode :initform 4 :type xcb:-u1)
   (port :initarg :port :type xcb:xv:PORT)
   (time :initarg :time :type xcb:TIMESTAMP)))

(defclass xcb:xv:PutVideo
  (xcb:-request)
  ((~opcode :initform 5 :type xcb:-u1)
   (port :initarg :port :type xcb:xv:PORT)
   (drawable :initarg :drawable :type xcb:DRAWABLE)
   (gc :initarg :gc :type xcb:GCONTEXT)
   (vid-x :initarg :vid-x :type xcb:INT16)
   (vid-y :initarg :vid-y :type xcb:INT16)
   (vid-w :initarg :vid-w :type xcb:CARD16)
   (vid-h :initarg :vid-h :type xcb:CARD16)
   (drw-x :initarg :drw-x :type xcb:INT16)
   (drw-y :initarg :drw-y :type xcb:INT16)
   (drw-w :initarg :drw-w :type xcb:CARD16)
   (drw-h :initarg :drw-h :type xcb:CARD16)))

(defclass xcb:xv:PutStill
  (xcb:-request)
  ((~opcode :initform 6 :type xcb:-u1)
   (port :initarg :port :type xcb:xv:PORT)
   (drawable :initarg :drawable :type xcb:DRAWABLE)
   (gc :initarg :gc :type xcb:GCONTEXT)
   (vid-x :initarg :vid-x :type xcb:INT16)
   (vid-y :initarg :vid-y :type xcb:INT16)
   (vid-w :initarg :vid-w :type xcb:CARD16)
   (vid-h :initarg :vid-h :type xcb:CARD16)
   (drw-x :initarg :drw-x :type xcb:INT16)
   (drw-y :initarg :drw-y :type xcb:INT16)
   (drw-w :initarg :drw-w :type xcb:CARD16)
   (drw-h :initarg :drw-h :type xcb:CARD16)))

(defclass xcb:xv:GetVideo
  (xcb:-request)
  ((~opcode :initform 7 :type xcb:-u1)
   (port :initarg :port :type xcb:xv:PORT)
   (drawable :initarg :drawable :type xcb:DRAWABLE)
   (gc :initarg :gc :type xcb:GCONTEXT)
   (vid-x :initarg :vid-x :type xcb:INT16)
   (vid-y :initarg :vid-y :type xcb:INT16)
   (vid-w :initarg :vid-w :type xcb:CARD16)
   (vid-h :initarg :vid-h :type xcb:CARD16)
   (drw-x :initarg :drw-x :type xcb:INT16)
   (drw-y :initarg :drw-y :type xcb:INT16)
   (drw-w :initarg :drw-w :type xcb:CARD16)
   (drw-h :initarg :drw-h :type xcb:CARD16)))

(defclass xcb:xv:GetStill
  (xcb:-request)
  ((~opcode :initform 8 :type xcb:-u1)
   (port :initarg :port :type xcb:xv:PORT)
   (drawable :initarg :drawable :type xcb:DRAWABLE)
   (gc :initarg :gc :type xcb:GCONTEXT)
   (vid-x :initarg :vid-x :type xcb:INT16)
   (vid-y :initarg :vid-y :type xcb:INT16)
   (vid-w :initarg :vid-w :type xcb:CARD16)
   (vid-h :initarg :vid-h :type xcb:CARD16)
   (drw-x :initarg :drw-x :type xcb:INT16)
   (drw-y :initarg :drw-y :type xcb:INT16)
   (drw-w :initarg :drw-w :type xcb:CARD16)
   (drw-h :initarg :drw-h :type xcb:CARD16)))

(defclass xcb:xv:StopVideo
  (xcb:-request)
  ((~opcode :initform 9 :type xcb:-u1)
   (port :initarg :port :type xcb:xv:PORT)
   (drawable :initarg :drawable :type xcb:DRAWABLE)))

(defclass xcb:xv:SelectVideoNotify
  (xcb:-request)
  ((~opcode :initform 10 :type xcb:-u1)
   (drawable :initarg :drawable :type xcb:DRAWABLE)
   (onoff :initarg :onoff :type xcb:BOOL)
   (pad~0 :initform 3 :type xcb:-pad)))

(defclass xcb:xv:SelectPortNotify
  (xcb:-request)
  ((~opcode :initform 11 :type xcb:-u1)
   (port :initarg :port :type xcb:xv:PORT)
   (onoff :initarg :onoff :type xcb:BOOL)
   (pad~0 :initform 3 :type xcb:-pad)))

(defclass xcb:xv:QueryBestSize
  (xcb:-request)
  ((~opcode :initform 12 :type xcb:-u1)
   (port :initarg :port :type xcb:xv:PORT)
   (vid-w :initarg :vid-w :type xcb:CARD16)
   (vid-h :initarg :vid-h :type xcb:CARD16)
   (drw-w :initarg :drw-w :type xcb:CARD16)
   (drw-h :initarg :drw-h :type xcb:CARD16)
   (motion :initarg :motion :type xcb:BOOL)
   (pad~0 :initform 3 :type xcb:-pad)))
(defclass xcb:xv:QueryBestSize~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (actual-width :initarg :actual-width :type xcb:CARD16)
   (actual-height :initarg :actual-height :type xcb:CARD16)))

(defclass xcb:xv:SetPortAttribute
  (xcb:-request)
  ((~opcode :initform 13 :type xcb:-u1)
   (port :initarg :port :type xcb:xv:PORT)
   (attribute :initarg :attribute :type xcb:ATOM)
   (value :initarg :value :type xcb:INT32)))

(defclass xcb:xv:GetPortAttribute
  (xcb:-request)
  ((~opcode :initform 14 :type xcb:-u1)
   (port :initarg :port :type xcb:xv:PORT)
   (attribute :initarg :attribute :type xcb:ATOM)))
(defclass xcb:xv:GetPortAttribute~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (value :initarg :value :type xcb:INT32)))

(defclass xcb:xv:QueryPortAttributes
  (xcb:-request)
  ((~opcode :initform 15 :type xcb:-u1)
   (port :initarg :port :type xcb:xv:PORT)))
(defclass xcb:xv:QueryPortAttributes~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (num-attributes :initarg :num-attributes :type xcb:CARD32)
   (text-size :initarg :text-size :type xcb:CARD32)
   (pad~1 :initform 16 :type xcb:-pad)
   (attributes :initarg :attributes :type xcb:-ignore)
   (attributes~ :initform
		'(name attributes type xcb:xv:AttributeInfo size
		       (xcb:-fieldref 'num-attributes))
		:type xcb:-list)))

(defclass xcb:xv:ListImageFormats
  (xcb:-request)
  ((~opcode :initform 16 :type xcb:-u1)
   (port :initarg :port :type xcb:xv:PORT)))
(defclass xcb:xv:ListImageFormats~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (num-formats :initarg :num-formats :type xcb:CARD32)
   (pad~1 :initform 20 :type xcb:-pad)
   (format :initarg :format :type xcb:-ignore)
   (format~ :initform
	    '(name format type xcb:xv:ImageFormatInfo size
		   (xcb:-fieldref 'num-formats))
	    :type xcb:-list)))

(defclass xcb:xv:QueryImageAttributes
  (xcb:-request)
  ((~opcode :initform 17 :type xcb:-u1)
   (port :initarg :port :type xcb:xv:PORT)
   (id :initarg :id :type xcb:CARD32)
   (width :initarg :width :type xcb:CARD16)
   (height :initarg :height :type xcb:CARD16)))
(defclass xcb:xv:QueryImageAttributes~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (num-planes :initarg :num-planes :type xcb:CARD32)
   (data-size :initarg :data-size :type xcb:CARD32)
   (width :initarg :width :type xcb:CARD16)
   (height :initarg :height :type xcb:CARD16)
   (pad~1 :initform 12 :type xcb:-pad)
   (pitches :initarg :pitches :type xcb:-ignore)
   (pitches~ :initform
	     '(name pitches type xcb:CARD32 size
		    (xcb:-fieldref 'num-planes))
	     :type xcb:-list)
   (pad~2 :initform 4 :type xcb:-pad-align)
   (offsets :initarg :offsets :type xcb:-ignore)
   (offsets~ :initform
	     '(name offsets type xcb:CARD32 size
		    (xcb:-fieldref 'num-planes))
	     :type xcb:-list)))

(defclass xcb:xv:PutImage
  (xcb:-request)
  ((~opcode :initform 18 :type xcb:-u1)
   (port :initarg :port :type xcb:xv:PORT)
   (drawable :initarg :drawable :type xcb:DRAWABLE)
   (gc :initarg :gc :type xcb:GCONTEXT)
   (id :initarg :id :type xcb:CARD32)
   (src-x :initarg :src-x :type xcb:INT16)
   (src-y :initarg :src-y :type xcb:INT16)
   (src-w :initarg :src-w :type xcb:CARD16)
   (src-h :initarg :src-h :type xcb:CARD16)
   (drw-x :initarg :drw-x :type xcb:INT16)
   (drw-y :initarg :drw-y :type xcb:INT16)
   (drw-w :initarg :drw-w :type xcb:CARD16)
   (drw-h :initarg :drw-h :type xcb:CARD16)
   (width :initarg :width :type xcb:CARD16)
   (height :initarg :height :type xcb:CARD16)
   (data :initarg :data :type xcb:-ignore)
   (data~ :initform
	  '(name data type xcb:CARD8 size nil)
	  :type xcb:-list)))

(defclass xcb:xv:ShmPutImage
  (xcb:-request)
  ((~opcode :initform 19 :type xcb:-u1)
   (port :initarg :port :type xcb:xv:PORT)
   (drawable :initarg :drawable :type xcb:DRAWABLE)
   (gc :initarg :gc :type xcb:GCONTEXT)
   (shmseg :initarg :shmseg :type xcb:xv:SEG)
   (id :initarg :id :type xcb:CARD32)
   (offset :initarg :offset :type xcb:CARD32)
   (src-x :initarg :src-x :type xcb:INT16)
   (src-y :initarg :src-y :type xcb:INT16)
   (src-w :initarg :src-w :type xcb:CARD16)
   (src-h :initarg :src-h :type xcb:CARD16)
   (drw-x :initarg :drw-x :type xcb:INT16)
   (drw-y :initarg :drw-y :type xcb:INT16)
   (drw-w :initarg :drw-w :type xcb:CARD16)
   (drw-h :initarg :drw-h :type xcb:CARD16)
   (width :initarg :width :type xcb:CARD16)
   (height :initarg :height :type xcb:CARD16)
   (send-event :initarg :send-event :type xcb:CARD8)
   (pad~0 :initform 3 :type xcb:-pad)))

(defconst xcb:xv:error-number-class-alist
  '((0 . xcb:xv:BadPort)
    (1 . xcb:xv:BadEncoding)
    (2 . xcb:xv:BadControl))
  "(error-number . error-class) alist")

(defconst xcb:xv:event-number-class-alist
  '((0 . xcb:xv:VideoNotify)
    (1 . xcb:xv:PortNotify))
  "(event-number . event-class) alist")



(provide 'xcb-xv)
