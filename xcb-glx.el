;;; -*- lexical-binding: t -*-
;; Copyright (C) 2015 Free Software Foundation, Inc.
;; This file was generated from `glx.xml' by `el_client.el'.

(require 'xcb-types)

(defconst xcb:glx:-extension-xname "GLX")
(defconst xcb:glx:-extension-name "Glx")
(defconst xcb:glx:-major-version 1)
(defconst xcb:glx:-minor-version 4)

(require 'xcb-xproto)

(xcb:deftypealias 'xcb:glx:PIXMAP 'xcb:-u4)

(xcb:deftypealias 'xcb:glx:CONTEXT 'xcb:-u4)

(xcb:deftypealias 'xcb:glx:PBUFFER 'xcb:-u4)

(xcb:deftypealias 'xcb:glx:WINDOW 'xcb:-u4)

(xcb:deftypealias 'xcb:glx:FBCONFIG 'xcb:-u4)

(xcb:deftypealias 'xcb:glx:DRAWABLE 'xcb:-u4)

(xcb:deftypealias 'xcb:glx:FLOAT32 'xcb:glx:float)

(xcb:deftypealias 'xcb:glx:FLOAT64 'xcb:glx:double)

(xcb:deftypealias 'xcb:glx:BOOL32 'xcb:CARD32)

(xcb:deftypealias 'xcb:glx:CONTEXT_TAG 'xcb:CARD32)

(defclass xcb:glx:Generic
  (xcb:-error)
  ((bad-value :initarg :bad-value :type xcb:CARD32)
   (minor-opcode :initarg :minor-opcode :type xcb:CARD16)
   (major-opcode :initarg :major-opcode :type xcb:CARD8)
   (pad~0 :initform 21 :type xcb:-pad)))

(defclass xcb:glx:BadContext
  (xcb:-error xcb:glx:Generic)
  nil)

(defclass xcb:glx:BadContextState
  (xcb:-error xcb:glx:Generic)
  nil)

(defclass xcb:glx:BadDrawable
  (xcb:-error xcb:glx:Generic)
  nil)

(defclass xcb:glx:BadPixmap
  (xcb:-error xcb:glx:Generic)
  nil)

(defclass xcb:glx:BadContextTag
  (xcb:-error xcb:glx:Generic)
  nil)

(defclass xcb:glx:BadCurrentWindow
  (xcb:-error xcb:glx:Generic)
  nil)

(defclass xcb:glx:BadRenderRequest
  (xcb:-error xcb:glx:Generic)
  nil)

(defclass xcb:glx:BadLargeRequest
  (xcb:-error xcb:glx:Generic)
  nil)

(defclass xcb:glx:UnsupportedPrivateRequest
  (xcb:-error xcb:glx:Generic)
  nil)

(defclass xcb:glx:BadFBConfig
  (xcb:-error xcb:glx:Generic)
  nil)

(defclass xcb:glx:BadPbuffer
  (xcb:-error xcb:glx:Generic)
  nil)

(defclass xcb:glx:BadCurrentDrawable
  (xcb:-error xcb:glx:Generic)
  nil)

(defclass xcb:glx:BadWindow
  (xcb:-error xcb:glx:Generic)
  nil)

(defclass xcb:glx:GLXBadProfileARB
  (xcb:-error xcb:glx:Generic)
  nil)

(defclass xcb:glx:PbufferClobber
  (xcb:-event)
  ((pad~0 :initform 1 :type xcb:-pad)
   (event-type :initarg :event-type :type xcb:CARD16)
   (draw-type :initarg :draw-type :type xcb:CARD16)
   (drawable :initarg :drawable :type xcb:glx:DRAWABLE)
   (b-mask :initarg :b-mask :type xcb:CARD32)
   (aux-buffer :initarg :aux-buffer :type xcb:CARD16)
   (x :initarg :x :type xcb:CARD16)
   (y :initarg :y :type xcb:CARD16)
   (width :initarg :width :type xcb:CARD16)
   (height :initarg :height :type xcb:CARD16)
   (count :initarg :count :type xcb:CARD16)
   (pad~1 :initform 4 :type xcb:-pad)))

(defclass xcb:glx:BufferSwapComplete
  (xcb:-event)
  ((pad~0 :initform 1 :type xcb:-pad)
   (event-type :initarg :event-type :type xcb:CARD16)
   (pad~1 :initform 2 :type xcb:-pad)
   (drawable :initarg :drawable :type xcb:glx:DRAWABLE)
   (ust-hi :initarg :ust-hi :type xcb:CARD32)
   (ust-lo :initarg :ust-lo :type xcb:CARD32)
   (msc-hi :initarg :msc-hi :type xcb:CARD32)
   (msc-lo :initarg :msc-lo :type xcb:CARD32)
   (sbc :initarg :sbc :type xcb:CARD32)))

(defconst xcb:glx:PBCET:Damaged 32791)
(defconst xcb:glx:PBCET:Saved 32792)

(defconst xcb:glx:PBCDT:Window 32793)
(defconst xcb:glx:PBCDT:Pbuffer 32794)

(defclass xcb:glx:Render
  (xcb:-request)
  ((~opcode :initform 1 :type xcb:-u1)
   (context-tag :initarg :context-tag :type xcb:glx:CONTEXT_TAG)
   (data :initarg :data :type xcb:-ignore)
   (data~ :initform
	  '(name data type xcb:BYTE size nil)
	  :type xcb:-list)))

(defclass xcb:glx:RenderLarge
  (xcb:-request)
  ((~opcode :initform 2 :type xcb:-u1)
   (context-tag :initarg :context-tag :type xcb:glx:CONTEXT_TAG)
   (request-num :initarg :request-num :type xcb:CARD16)
   (request-total :initarg :request-total :type xcb:CARD16)
   (data-len :initarg :data-len :type xcb:CARD32)
   (data :initarg :data :type xcb:-ignore)
   (data~ :initform
	  '(name data type xcb:BYTE size
		 (xcb:-fieldref 'data-len))
	  :type xcb:-list)))

(defclass xcb:glx:CreateContext
  (xcb:-request)
  ((~opcode :initform 3 :type xcb:-u1)
   (context :initarg :context :type xcb:glx:CONTEXT)
   (visual :initarg :visual :type xcb:VISUALID)
   (screen :initarg :screen :type xcb:CARD32)
   (share-list :initarg :share-list :type xcb:glx:CONTEXT)
   (is-direct :initarg :is-direct :type xcb:BOOL)
   (pad~0 :initform 3 :type xcb:-pad)))

(defclass xcb:glx:DestroyContext
  (xcb:-request)
  ((~opcode :initform 4 :type xcb:-u1)
   (context :initarg :context :type xcb:glx:CONTEXT)))

(defclass xcb:glx:MakeCurrent
  (xcb:-request)
  ((~opcode :initform 5 :type xcb:-u1)
   (drawable :initarg :drawable :type xcb:glx:DRAWABLE)
   (context :initarg :context :type xcb:glx:CONTEXT)
   (old-context-tag :initarg :old-context-tag :type xcb:glx:CONTEXT_TAG)))
(defclass xcb:glx:MakeCurrent~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (context-tag :initarg :context-tag :type xcb:glx:CONTEXT_TAG)
   (pad~1 :initform 20 :type xcb:-pad)))

(defclass xcb:glx:IsDirect
  (xcb:-request)
  ((~opcode :initform 6 :type xcb:-u1)
   (context :initarg :context :type xcb:glx:CONTEXT)))
(defclass xcb:glx:IsDirect~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (is-direct :initarg :is-direct :type xcb:BOOL)
   (pad~1 :initform 23 :type xcb:-pad)))

(defclass xcb:glx:QueryVersion
  (xcb:-request)
  ((~opcode :initform 7 :type xcb:-u1)
   (major-version :initarg :major-version :type xcb:CARD32)
   (minor-version :initarg :minor-version :type xcb:CARD32)))
(defclass xcb:glx:QueryVersion~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (major-version :initarg :major-version :type xcb:CARD32)
   (minor-version :initarg :minor-version :type xcb:CARD32)
   (pad~1 :initform 16 :type xcb:-pad)))

(defclass xcb:glx:WaitGL
  (xcb:-request)
  ((~opcode :initform 8 :type xcb:-u1)
   (context-tag :initarg :context-tag :type xcb:glx:CONTEXT_TAG)))

(defclass xcb:glx:WaitX
  (xcb:-request)
  ((~opcode :initform 9 :type xcb:-u1)
   (context-tag :initarg :context-tag :type xcb:glx:CONTEXT_TAG)))

(defclass xcb:glx:CopyContext
  (xcb:-request)
  ((~opcode :initform 10 :type xcb:-u1)
   (src :initarg :src :type xcb:glx:CONTEXT)
   (dest :initarg :dest :type xcb:glx:CONTEXT)
   (mask :initarg :mask :type xcb:CARD32)
   (src-context-tag :initarg :src-context-tag :type xcb:glx:CONTEXT_TAG)))

(defconst xcb:glx:GC:GL_CURRENT_BIT 1)
(defconst xcb:glx:GC:GL_POINT_BIT 2)
(defconst xcb:glx:GC:GL_LINE_BIT 4)
(defconst xcb:glx:GC:GL_POLYGON_BIT 8)
(defconst xcb:glx:GC:GL_POLYGON_STIPPLE_BIT 16)
(defconst xcb:glx:GC:GL_PIXEL_MODE_BIT 32)
(defconst xcb:glx:GC:GL_LIGHTING_BIT 64)
(defconst xcb:glx:GC:GL_FOG_BIT 128)
(defconst xcb:glx:GC:GL_DEPTH_BUFFER_BIT 256)
(defconst xcb:glx:GC:GL_ACCUM_BUFFER_BIT 512)
(defconst xcb:glx:GC:GL_STENCIL_BUFFER_BIT 1024)
(defconst xcb:glx:GC:GL_VIEWPORT_BIT 2048)
(defconst xcb:glx:GC:GL_TRANSFORM_BIT 4096)
(defconst xcb:glx:GC:GL_ENABLE_BIT 8192)
(defconst xcb:glx:GC:GL_COLOR_BUFFER_BIT 16384)
(defconst xcb:glx:GC:GL_HINT_BIT 32768)
(defconst xcb:glx:GC:GL_EVAL_BIT 65536)
(defconst xcb:glx:GC:GL_LIST_BIT 131072)
(defconst xcb:glx:GC:GL_TEXTURE_BIT 262144)
(defconst xcb:glx:GC:GL_SCISSOR_BIT 524288)
(defconst xcb:glx:GC:GL_ALL_ATTRIB_BITS 16777215)

(defclass xcb:glx:SwapBuffers
  (xcb:-request)
  ((~opcode :initform 11 :type xcb:-u1)
   (context-tag :initarg :context-tag :type xcb:glx:CONTEXT_TAG)
   (drawable :initarg :drawable :type xcb:glx:DRAWABLE)))

(defclass xcb:glx:UseXFont
  (xcb:-request)
  ((~opcode :initform 12 :type xcb:-u1)
   (context-tag :initarg :context-tag :type xcb:glx:CONTEXT_TAG)
   (font :initarg :font :type xcb:FONT)
   (first :initarg :first :type xcb:CARD32)
   (count :initarg :count :type xcb:CARD32)
   (list-base :initarg :list-base :type xcb:CARD32)))

(defclass xcb:glx:CreateGLXPixmap
  (xcb:-request)
  ((~opcode :initform 13 :type xcb:-u1)
   (screen :initarg :screen :type xcb:CARD32)
   (visual :initarg :visual :type xcb:VISUALID)
   (pixmap :initarg :pixmap :type xcb:glx:xproto:PIXMAP)
   (glx-pixmap :initarg :glx-pixmap :type xcb:glx:PIXMAP)))

(defclass xcb:glx:GetVisualConfigs
  (xcb:-request)
  ((~opcode :initform 14 :type xcb:-u1)
   (screen :initarg :screen :type xcb:CARD32)))
(defclass xcb:glx:GetVisualConfigs~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (num-visuals :initarg :num-visuals :type xcb:CARD32)
   (num-properties :initarg :num-properties :type xcb:CARD32)
   (pad~1 :initform 16 :type xcb:-pad)
   (property-list :initarg :property-list :type xcb:-ignore)
   (property-list~ :initform
		   '(name property-list type xcb:CARD32 size
			  (xcb:-fieldref 'length))
		   :type xcb:-list)))

(defclass xcb:glx:DestroyGLXPixmap
  (xcb:-request)
  ((~opcode :initform 15 :type xcb:-u1)
   (glx-pixmap :initarg :glx-pixmap :type xcb:glx:PIXMAP)))

(defclass xcb:glx:VendorPrivate
  (xcb:-request)
  ((~opcode :initform 16 :type xcb:-u1)
   (vendor-code :initarg :vendor-code :type xcb:CARD32)
   (context-tag :initarg :context-tag :type xcb:glx:CONTEXT_TAG)
   (data :initarg :data :type xcb:-ignore)
   (data~ :initform
	  '(name data type xcb:BYTE size nil)
	  :type xcb:-list)))

(defclass xcb:glx:VendorPrivateWithReply
  (xcb:-request)
  ((~opcode :initform 17 :type xcb:-u1)
   (vendor-code :initarg :vendor-code :type xcb:CARD32)
   (context-tag :initarg :context-tag :type xcb:glx:CONTEXT_TAG)
   (data :initarg :data :type xcb:-ignore)
   (data~ :initform
	  '(name data type xcb:BYTE size nil)
	  :type xcb:-list)))
(defclass xcb:glx:VendorPrivateWithReply~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (retval :initarg :retval :type xcb:CARD32)
   (data1 :initarg :data1 :type xcb:-ignore)
   (data1~ :initform
	   '(name data1 type xcb:BYTE size 24)
	   :type xcb:-list)
   (data2 :initarg :data2 :type xcb:-ignore)
   (data2~ :initform
	   '(name data2 type xcb:BYTE size
		  (*
		   (xcb:-fieldref 'length)
		   4))
	   :type xcb:-list)))

(defclass xcb:glx:QueryExtensionsString
  (xcb:-request)
  ((~opcode :initform 18 :type xcb:-u1)
   (screen :initarg :screen :type xcb:CARD32)))
(defclass xcb:glx:QueryExtensionsString~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (pad~1 :initform 4 :type xcb:-pad)
   (n :initarg :n :type xcb:CARD32)
   (pad~2 :initform 16 :type xcb:-pad)))

(defclass xcb:glx:QueryServerString
  (xcb:-request)
  ((~opcode :initform 19 :type xcb:-u1)
   (screen :initarg :screen :type xcb:CARD32)
   (name :initarg :name :type xcb:CARD32)))
(defclass xcb:glx:QueryServerString~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (pad~1 :initform 4 :type xcb:-pad)
   (str-len :initarg :str-len :type xcb:CARD32)
   (pad~2 :initform 16 :type xcb:-pad)
   (string :initarg :string :type xcb:-ignore)
   (string~ :initform
	    '(name string type xcb:char size
		   (xcb:-fieldref 'str-len))
	    :type xcb:-list)))

(defclass xcb:glx:ClientInfo
  (xcb:-request)
  ((~opcode :initform 20 :type xcb:-u1)
   (major-version :initarg :major-version :type xcb:CARD32)
   (minor-version :initarg :minor-version :type xcb:CARD32)
   (str-len :initarg :str-len :type xcb:CARD32)
   (string :initarg :string :type xcb:-ignore)
   (string~ :initform
	    '(name string type xcb:char size
		   (xcb:-fieldref 'str-len))
	    :type xcb:-list)))

(defclass xcb:glx:GetFBConfigs
  (xcb:-request)
  ((~opcode :initform 21 :type xcb:-u1)
   (screen :initarg :screen :type xcb:CARD32)))
(defclass xcb:glx:GetFBConfigs~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (num-FB-configs :initarg :num-FB-configs :type xcb:CARD32)
   (num-properties :initarg :num-properties :type xcb:CARD32)
   (pad~1 :initform 16 :type xcb:-pad)
   (property-list :initarg :property-list :type xcb:-ignore)
   (property-list~ :initform
		   '(name property-list type xcb:CARD32 size
			  (xcb:-fieldref 'length))
		   :type xcb:-list)))

(defclass xcb:glx:CreatePixmap
  (xcb:-request)
  ((~opcode :initform 22 :type xcb:-u1)
   (screen :initarg :screen :type xcb:CARD32)
   (fbconfig :initarg :fbconfig :type xcb:glx:FBCONFIG)
   (pixmap :initarg :pixmap :type xcb:glx:xproto:PIXMAP)
   (glx-pixmap :initarg :glx-pixmap :type xcb:glx:PIXMAP)
   (num-attribs :initarg :num-attribs :type xcb:CARD32)
   (attribs :initarg :attribs :type xcb:-ignore)
   (attribs~ :initform
	     '(name attribs type xcb:CARD32 size
		    (*
		     (xcb:-fieldref 'num-attribs)
		     2))
	     :type xcb:-list)))

(defclass xcb:glx:DestroyPixmap
  (xcb:-request)
  ((~opcode :initform 23 :type xcb:-u1)
   (glx-pixmap :initarg :glx-pixmap :type xcb:glx:PIXMAP)))

(defclass xcb:glx:CreateNewContext
  (xcb:-request)
  ((~opcode :initform 24 :type xcb:-u1)
   (context :initarg :context :type xcb:glx:CONTEXT)
   (fbconfig :initarg :fbconfig :type xcb:glx:FBCONFIG)
   (screen :initarg :screen :type xcb:CARD32)
   (render-type :initarg :render-type :type xcb:CARD32)
   (share-list :initarg :share-list :type xcb:glx:CONTEXT)
   (is-direct :initarg :is-direct :type xcb:BOOL)
   (pad~0 :initform 3 :type xcb:-pad)))

(defclass xcb:glx:QueryContext
  (xcb:-request)
  ((~opcode :initform 25 :type xcb:-u1)
   (context :initarg :context :type xcb:glx:CONTEXT)))
(defclass xcb:glx:QueryContext~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (num-attribs :initarg :num-attribs :type xcb:CARD32)
   (pad~1 :initform 20 :type xcb:-pad)
   (attribs :initarg :attribs :type xcb:-ignore)
   (attribs~ :initform
	     '(name attribs type xcb:CARD32 size
		    (*
		     (xcb:-fieldref 'num-attribs)
		     2))
	     :type xcb:-list)))

(defclass xcb:glx:MakeContextCurrent
  (xcb:-request)
  ((~opcode :initform 26 :type xcb:-u1)
   (old-context-tag :initarg :old-context-tag :type xcb:glx:CONTEXT_TAG)
   (drawable :initarg :drawable :type xcb:glx:DRAWABLE)
   (read-drawable :initarg :read-drawable :type xcb:glx:DRAWABLE)
   (context :initarg :context :type xcb:glx:CONTEXT)))
(defclass xcb:glx:MakeContextCurrent~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (context-tag :initarg :context-tag :type xcb:glx:CONTEXT_TAG)
   (pad~1 :initform 20 :type xcb:-pad)))

(defclass xcb:glx:CreatePbuffer
  (xcb:-request)
  ((~opcode :initform 27 :type xcb:-u1)
   (screen :initarg :screen :type xcb:CARD32)
   (fbconfig :initarg :fbconfig :type xcb:glx:FBCONFIG)
   (pbuffer :initarg :pbuffer :type xcb:glx:PBUFFER)
   (num-attribs :initarg :num-attribs :type xcb:CARD32)
   (attribs :initarg :attribs :type xcb:-ignore)
   (attribs~ :initform
	     '(name attribs type xcb:CARD32 size
		    (*
		     (xcb:-fieldref 'num-attribs)
		     2))
	     :type xcb:-list)))

(defclass xcb:glx:DestroyPbuffer
  (xcb:-request)
  ((~opcode :initform 28 :type xcb:-u1)
   (pbuffer :initarg :pbuffer :type xcb:glx:PBUFFER)))

(defclass xcb:glx:GetDrawableAttributes
  (xcb:-request)
  ((~opcode :initform 29 :type xcb:-u1)
   (drawable :initarg :drawable :type xcb:glx:DRAWABLE)))
(defclass xcb:glx:GetDrawableAttributes~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (num-attribs :initarg :num-attribs :type xcb:CARD32)
   (pad~1 :initform 20 :type xcb:-pad)
   (attribs :initarg :attribs :type xcb:-ignore)
   (attribs~ :initform
	     '(name attribs type xcb:CARD32 size
		    (*
		     (xcb:-fieldref 'num-attribs)
		     2))
	     :type xcb:-list)))

(defclass xcb:glx:ChangeDrawableAttributes
  (xcb:-request)
  ((~opcode :initform 30 :type xcb:-u1)
   (drawable :initarg :drawable :type xcb:glx:DRAWABLE)
   (num-attribs :initarg :num-attribs :type xcb:CARD32)
   (attribs :initarg :attribs :type xcb:-ignore)
   (attribs~ :initform
	     '(name attribs type xcb:CARD32 size
		    (*
		     (xcb:-fieldref 'num-attribs)
		     2))
	     :type xcb:-list)))

(defclass xcb:glx:CreateWindow
  (xcb:-request)
  ((~opcode :initform 31 :type xcb:-u1)
   (screen :initarg :screen :type xcb:CARD32)
   (fbconfig :initarg :fbconfig :type xcb:glx:FBCONFIG)
   (window :initarg :window :type xcb:glx:xproto:WINDOW)
   (glx-window :initarg :glx-window :type xcb:glx:WINDOW)
   (num-attribs :initarg :num-attribs :type xcb:CARD32)
   (attribs :initarg :attribs :type xcb:-ignore)
   (attribs~ :initform
	     '(name attribs type xcb:CARD32 size
		    (*
		     (xcb:-fieldref 'num-attribs)
		     2))
	     :type xcb:-list)))

(defclass xcb:glx:DeleteWindow
  (xcb:-request)
  ((~opcode :initform 32 :type xcb:-u1)
   (glxwindow :initarg :glxwindow :type xcb:glx:WINDOW)))

(defclass xcb:glx:SetClientInfoARB
  (xcb:-request)
  ((~opcode :initform 33 :type xcb:-u1)
   (major-version :initarg :major-version :type xcb:CARD32)
   (minor-version :initarg :minor-version :type xcb:CARD32)
   (num-versions :initarg :num-versions :type xcb:CARD32)
   (gl-str-len :initarg :gl-str-len :type xcb:CARD32)
   (glx-str-len :initarg :glx-str-len :type xcb:CARD32)
   (gl-versions :initarg :gl-versions :type xcb:-ignore)
   (gl-versions~ :initform
		 '(name gl-versions type xcb:CARD32 size
			(*
			 (xcb:-fieldref 'num-versions)
			 2))
		 :type xcb:-list)
   (pad~0 :initform 4 :type xcb:-pad-align)
   (gl-extension-string :initarg :gl-extension-string :type xcb:-ignore)
   (gl-extension-string~ :initform
			 '(name gl-extension-string type xcb:char size
				(xcb:-fieldref 'gl-str-len))
			 :type xcb:-list)
   (pad~1 :initform 4 :type xcb:-pad-align)
   (glx-extension-string :initarg :glx-extension-string :type xcb:-ignore)
   (glx-extension-string~ :initform
			  '(name glx-extension-string type xcb:char size
				 (xcb:-fieldref 'glx-str-len))
			  :type xcb:-list)))

(defclass xcb:glx:CreateContextAttribsARB
  (xcb:-request)
  ((~opcode :initform 34 :type xcb:-u1)
   (context :initarg :context :type xcb:glx:CONTEXT)
   (fbconfig :initarg :fbconfig :type xcb:glx:FBCONFIG)
   (screen :initarg :screen :type xcb:CARD32)
   (share-list :initarg :share-list :type xcb:glx:CONTEXT)
   (is-direct :initarg :is-direct :type xcb:BOOL)
   (pad~0 :initform 3 :type xcb:-pad)
   (num-attribs :initarg :num-attribs :type xcb:CARD32)
   (attribs :initarg :attribs :type xcb:-ignore)
   (attribs~ :initform
	     '(name attribs type xcb:CARD32 size
		    (*
		     (xcb:-fieldref 'num-attribs)
		     2))
	     :type xcb:-list)))

(defclass xcb:glx:SetClientInfo2ARB
  (xcb:-request)
  ((~opcode :initform 35 :type xcb:-u1)
   (major-version :initarg :major-version :type xcb:CARD32)
   (minor-version :initarg :minor-version :type xcb:CARD32)
   (num-versions :initarg :num-versions :type xcb:CARD32)
   (gl-str-len :initarg :gl-str-len :type xcb:CARD32)
   (glx-str-len :initarg :glx-str-len :type xcb:CARD32)
   (gl-versions :initarg :gl-versions :type xcb:-ignore)
   (gl-versions~ :initform
		 '(name gl-versions type xcb:CARD32 size
			(*
			 (xcb:-fieldref 'num-versions)
			 3))
		 :type xcb:-list)
   (pad~0 :initform 4 :type xcb:-pad-align)
   (gl-extension-string :initarg :gl-extension-string :type xcb:-ignore)
   (gl-extension-string~ :initform
			 '(name gl-extension-string type xcb:char size
				(xcb:-fieldref 'gl-str-len))
			 :type xcb:-list)
   (pad~1 :initform 4 :type xcb:-pad-align)
   (glx-extension-string :initarg :glx-extension-string :type xcb:-ignore)
   (glx-extension-string~ :initform
			  '(name glx-extension-string type xcb:char size
				 (xcb:-fieldref 'glx-str-len))
			  :type xcb:-list)))

(defclass xcb:glx:NewList
  (xcb:-request)
  ((~opcode :initform 101 :type xcb:-u1)
   (context-tag :initarg :context-tag :type xcb:glx:CONTEXT_TAG)
   (list :initarg :list :type xcb:CARD32)
   (mode :initarg :mode :type xcb:CARD32)))

(defclass xcb:glx:EndList
  (xcb:-request)
  ((~opcode :initform 102 :type xcb:-u1)
   (context-tag :initarg :context-tag :type xcb:glx:CONTEXT_TAG)))

(defclass xcb:glx:DeleteLists
  (xcb:-request)
  ((~opcode :initform 103 :type xcb:-u1)
   (context-tag :initarg :context-tag :type xcb:glx:CONTEXT_TAG)
   (list :initarg :list :type xcb:CARD32)
   (range :initarg :range :type xcb:INT32)))

(defclass xcb:glx:GenLists
  (xcb:-request)
  ((~opcode :initform 104 :type xcb:-u1)
   (context-tag :initarg :context-tag :type xcb:glx:CONTEXT_TAG)
   (range :initarg :range :type xcb:INT32)))
(defclass xcb:glx:GenLists~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (ret-val :initarg :ret-val :type xcb:CARD32)))

(defclass xcb:glx:FeedbackBuffer
  (xcb:-request)
  ((~opcode :initform 105 :type xcb:-u1)
   (context-tag :initarg :context-tag :type xcb:glx:CONTEXT_TAG)
   (size :initarg :size :type xcb:INT32)
   (type :initarg :type :type xcb:INT32)))

(defclass xcb:glx:SelectBuffer
  (xcb:-request)
  ((~opcode :initform 106 :type xcb:-u1)
   (context-tag :initarg :context-tag :type xcb:glx:CONTEXT_TAG)
   (size :initarg :size :type xcb:INT32)))

(defclass xcb:glx:RenderMode
  (xcb:-request)
  ((~opcode :initform 107 :type xcb:-u1)
   (context-tag :initarg :context-tag :type xcb:glx:CONTEXT_TAG)
   (mode :initarg :mode :type xcb:CARD32)))
(defclass xcb:glx:RenderMode~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (ret-val :initarg :ret-val :type xcb:CARD32)
   (n :initarg :n :type xcb:CARD32)
   (new-mode :initarg :new-mode :type xcb:CARD32)
   (pad~1 :initform 12 :type xcb:-pad)
   (data :initarg :data :type xcb:-ignore)
   (data~ :initform
	  '(name data type xcb:CARD32 size
		 (xcb:-fieldref 'n))
	  :type xcb:-list)))

(defconst xcb:glx:RM:GL_RENDER 7168)
(defconst xcb:glx:RM:GL_FEEDBACK 7169)
(defconst xcb:glx:RM:GL_SELECT 7170)

(defclass xcb:glx:Finish
  (xcb:-request)
  ((~opcode :initform 108 :type xcb:-u1)
   (context-tag :initarg :context-tag :type xcb:glx:CONTEXT_TAG)))
(defclass xcb:glx:Finish~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)))

(defclass xcb:glx:PixelStoref
  (xcb:-request)
  ((~opcode :initform 109 :type xcb:-u1)
   (context-tag :initarg :context-tag :type xcb:glx:CONTEXT_TAG)
   (pname :initarg :pname :type xcb:CARD32)
   (datum :initarg :datum :type xcb:glx:FLOAT32)))

(defclass xcb:glx:PixelStorei
  (xcb:-request)
  ((~opcode :initform 110 :type xcb:-u1)
   (context-tag :initarg :context-tag :type xcb:glx:CONTEXT_TAG)
   (pname :initarg :pname :type xcb:CARD32)
   (datum :initarg :datum :type xcb:INT32)))

(defclass xcb:glx:ReadPixels
  (xcb:-request)
  ((~opcode :initform 111 :type xcb:-u1)
   (context-tag :initarg :context-tag :type xcb:glx:CONTEXT_TAG)
   (x :initarg :x :type xcb:INT32)
   (y :initarg :y :type xcb:INT32)
   (width :initarg :width :type xcb:INT32)
   (height :initarg :height :type xcb:INT32)
   (format :initarg :format :type xcb:CARD32)
   (type :initarg :type :type xcb:CARD32)
   (swap-bytes :initarg :swap-bytes :type xcb:BOOL)
   (lsb-first :initarg :lsb-first :type xcb:BOOL)))
(defclass xcb:glx:ReadPixels~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (pad~1 :initform 24 :type xcb:-pad)
   (data :initarg :data :type xcb:-ignore)
   (data~ :initform
	  '(name data type xcb:BYTE size
		 (*
		  (xcb:-fieldref 'length)
		  4))
	  :type xcb:-list)))

(defclass xcb:glx:GetBooleanv
  (xcb:-request)
  ((~opcode :initform 112 :type xcb:-u1)
   (context-tag :initarg :context-tag :type xcb:glx:CONTEXT_TAG)
   (pname :initarg :pname :type xcb:INT32)))
(defclass xcb:glx:GetBooleanv~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (pad~1 :initform 4 :type xcb:-pad)
   (n :initarg :n :type xcb:CARD32)
   (datum :initarg :datum :type xcb:BOOL)
   (pad~2 :initform 15 :type xcb:-pad)
   (data :initarg :data :type xcb:-ignore)
   (data~ :initform
	  '(name data type xcb:BOOL size
		 (xcb:-fieldref 'n))
	  :type xcb:-list)))

(defclass xcb:glx:GetClipPlane
  (xcb:-request)
  ((~opcode :initform 113 :type xcb:-u1)
   (context-tag :initarg :context-tag :type xcb:glx:CONTEXT_TAG)
   (plane :initarg :plane :type xcb:INT32)))
(defclass xcb:glx:GetClipPlane~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (pad~1 :initform 24 :type xcb:-pad)
   (data :initarg :data :type xcb:-ignore)
   (data~ :initform
	  '(name data type xcb:glx:FLOAT64 size
		 (/
		  (xcb:-fieldref 'length)
		  2))
	  :type xcb:-list)))

(defclass xcb:glx:GetDoublev
  (xcb:-request)
  ((~opcode :initform 114 :type xcb:-u1)
   (context-tag :initarg :context-tag :type xcb:glx:CONTEXT_TAG)
   (pname :initarg :pname :type xcb:CARD32)))
(defclass xcb:glx:GetDoublev~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (pad~1 :initform 4 :type xcb:-pad)
   (n :initarg :n :type xcb:CARD32)
   (datum :initarg :datum :type xcb:glx:FLOAT64)
   (pad~2 :initform 8 :type xcb:-pad)
   (data :initarg :data :type xcb:-ignore)
   (data~ :initform
	  '(name data type xcb:glx:FLOAT64 size
		 (xcb:-fieldref 'n))
	  :type xcb:-list)))

(defclass xcb:glx:GetError
  (xcb:-request)
  ((~opcode :initform 115 :type xcb:-u1)
   (context-tag :initarg :context-tag :type xcb:glx:CONTEXT_TAG)))
(defclass xcb:glx:GetError~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (error :initarg :error :type xcb:INT32)))

(defclass xcb:glx:GetFloatv
  (xcb:-request)
  ((~opcode :initform 116 :type xcb:-u1)
   (context-tag :initarg :context-tag :type xcb:glx:CONTEXT_TAG)
   (pname :initarg :pname :type xcb:CARD32)))
(defclass xcb:glx:GetFloatv~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (pad~1 :initform 4 :type xcb:-pad)
   (n :initarg :n :type xcb:CARD32)
   (datum :initarg :datum :type xcb:glx:FLOAT32)
   (pad~2 :initform 12 :type xcb:-pad)
   (data :initarg :data :type xcb:-ignore)
   (data~ :initform
	  '(name data type xcb:glx:FLOAT32 size
		 (xcb:-fieldref 'n))
	  :type xcb:-list)))

(defclass xcb:glx:GetIntegerv
  (xcb:-request)
  ((~opcode :initform 117 :type xcb:-u1)
   (context-tag :initarg :context-tag :type xcb:glx:CONTEXT_TAG)
   (pname :initarg :pname :type xcb:CARD32)))
(defclass xcb:glx:GetIntegerv~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (pad~1 :initform 4 :type xcb:-pad)
   (n :initarg :n :type xcb:CARD32)
   (datum :initarg :datum :type xcb:INT32)
   (pad~2 :initform 12 :type xcb:-pad)
   (data :initarg :data :type xcb:-ignore)
   (data~ :initform
	  '(name data type xcb:INT32 size
		 (xcb:-fieldref 'n))
	  :type xcb:-list)))

(defclass xcb:glx:GetLightfv
  (xcb:-request)
  ((~opcode :initform 118 :type xcb:-u1)
   (context-tag :initarg :context-tag :type xcb:glx:CONTEXT_TAG)
   (light :initarg :light :type xcb:CARD32)
   (pname :initarg :pname :type xcb:CARD32)))
(defclass xcb:glx:GetLightfv~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (pad~1 :initform 4 :type xcb:-pad)
   (n :initarg :n :type xcb:CARD32)
   (datum :initarg :datum :type xcb:glx:FLOAT32)
   (pad~2 :initform 12 :type xcb:-pad)
   (data :initarg :data :type xcb:-ignore)
   (data~ :initform
	  '(name data type xcb:glx:FLOAT32 size
		 (xcb:-fieldref 'n))
	  :type xcb:-list)))

(defclass xcb:glx:GetLightiv
  (xcb:-request)
  ((~opcode :initform 119 :type xcb:-u1)
   (context-tag :initarg :context-tag :type xcb:glx:CONTEXT_TAG)
   (light :initarg :light :type xcb:CARD32)
   (pname :initarg :pname :type xcb:CARD32)))
(defclass xcb:glx:GetLightiv~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (pad~1 :initform 4 :type xcb:-pad)
   (n :initarg :n :type xcb:CARD32)
   (datum :initarg :datum :type xcb:INT32)
   (pad~2 :initform 12 :type xcb:-pad)
   (data :initarg :data :type xcb:-ignore)
   (data~ :initform
	  '(name data type xcb:INT32 size
		 (xcb:-fieldref 'n))
	  :type xcb:-list)))

(defclass xcb:glx:GetMapdv
  (xcb:-request)
  ((~opcode :initform 120 :type xcb:-u1)
   (context-tag :initarg :context-tag :type xcb:glx:CONTEXT_TAG)
   (target :initarg :target :type xcb:CARD32)
   (query :initarg :query :type xcb:CARD32)))
(defclass xcb:glx:GetMapdv~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (pad~1 :initform 4 :type xcb:-pad)
   (n :initarg :n :type xcb:CARD32)
   (datum :initarg :datum :type xcb:glx:FLOAT64)
   (pad~2 :initform 8 :type xcb:-pad)
   (data :initarg :data :type xcb:-ignore)
   (data~ :initform
	  '(name data type xcb:glx:FLOAT64 size
		 (xcb:-fieldref 'n))
	  :type xcb:-list)))

(defclass xcb:glx:GetMapfv
  (xcb:-request)
  ((~opcode :initform 121 :type xcb:-u1)
   (context-tag :initarg :context-tag :type xcb:glx:CONTEXT_TAG)
   (target :initarg :target :type xcb:CARD32)
   (query :initarg :query :type xcb:CARD32)))
(defclass xcb:glx:GetMapfv~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (pad~1 :initform 4 :type xcb:-pad)
   (n :initarg :n :type xcb:CARD32)
   (datum :initarg :datum :type xcb:glx:FLOAT32)
   (pad~2 :initform 12 :type xcb:-pad)
   (data :initarg :data :type xcb:-ignore)
   (data~ :initform
	  '(name data type xcb:glx:FLOAT32 size
		 (xcb:-fieldref 'n))
	  :type xcb:-list)))

(defclass xcb:glx:GetMapiv
  (xcb:-request)
  ((~opcode :initform 122 :type xcb:-u1)
   (context-tag :initarg :context-tag :type xcb:glx:CONTEXT_TAG)
   (target :initarg :target :type xcb:CARD32)
   (query :initarg :query :type xcb:CARD32)))
(defclass xcb:glx:GetMapiv~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (pad~1 :initform 4 :type xcb:-pad)
   (n :initarg :n :type xcb:CARD32)
   (datum :initarg :datum :type xcb:INT32)
   (pad~2 :initform 12 :type xcb:-pad)
   (data :initarg :data :type xcb:-ignore)
   (data~ :initform
	  '(name data type xcb:INT32 size
		 (xcb:-fieldref 'n))
	  :type xcb:-list)))

(defclass xcb:glx:GetMaterialfv
  (xcb:-request)
  ((~opcode :initform 123 :type xcb:-u1)
   (context-tag :initarg :context-tag :type xcb:glx:CONTEXT_TAG)
   (face :initarg :face :type xcb:CARD32)
   (pname :initarg :pname :type xcb:CARD32)))
(defclass xcb:glx:GetMaterialfv~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (pad~1 :initform 4 :type xcb:-pad)
   (n :initarg :n :type xcb:CARD32)
   (datum :initarg :datum :type xcb:glx:FLOAT32)
   (pad~2 :initform 12 :type xcb:-pad)
   (data :initarg :data :type xcb:-ignore)
   (data~ :initform
	  '(name data type xcb:glx:FLOAT32 size
		 (xcb:-fieldref 'n))
	  :type xcb:-list)))

(defclass xcb:glx:GetMaterialiv
  (xcb:-request)
  ((~opcode :initform 124 :type xcb:-u1)
   (context-tag :initarg :context-tag :type xcb:glx:CONTEXT_TAG)
   (face :initarg :face :type xcb:CARD32)
   (pname :initarg :pname :type xcb:CARD32)))
(defclass xcb:glx:GetMaterialiv~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (pad~1 :initform 4 :type xcb:-pad)
   (n :initarg :n :type xcb:CARD32)
   (datum :initarg :datum :type xcb:INT32)
   (pad~2 :initform 12 :type xcb:-pad)
   (data :initarg :data :type xcb:-ignore)
   (data~ :initform
	  '(name data type xcb:INT32 size
		 (xcb:-fieldref 'n))
	  :type xcb:-list)))

(defclass xcb:glx:GetPixelMapfv
  (xcb:-request)
  ((~opcode :initform 125 :type xcb:-u1)
   (context-tag :initarg :context-tag :type xcb:glx:CONTEXT_TAG)
   (map :initarg :map :type xcb:CARD32)))
(defclass xcb:glx:GetPixelMapfv~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (pad~1 :initform 4 :type xcb:-pad)
   (n :initarg :n :type xcb:CARD32)
   (datum :initarg :datum :type xcb:glx:FLOAT32)
   (pad~2 :initform 12 :type xcb:-pad)
   (data :initarg :data :type xcb:-ignore)
   (data~ :initform
	  '(name data type xcb:glx:FLOAT32 size
		 (xcb:-fieldref 'n))
	  :type xcb:-list)))

(defclass xcb:glx:GetPixelMapuiv
  (xcb:-request)
  ((~opcode :initform 126 :type xcb:-u1)
   (context-tag :initarg :context-tag :type xcb:glx:CONTEXT_TAG)
   (map :initarg :map :type xcb:CARD32)))
(defclass xcb:glx:GetPixelMapuiv~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (pad~1 :initform 4 :type xcb:-pad)
   (n :initarg :n :type xcb:CARD32)
   (datum :initarg :datum :type xcb:CARD32)
   (pad~2 :initform 12 :type xcb:-pad)
   (data :initarg :data :type xcb:-ignore)
   (data~ :initform
	  '(name data type xcb:CARD32 size
		 (xcb:-fieldref 'n))
	  :type xcb:-list)))

(defclass xcb:glx:GetPixelMapusv
  (xcb:-request)
  ((~opcode :initform 127 :type xcb:-u1)
   (context-tag :initarg :context-tag :type xcb:glx:CONTEXT_TAG)
   (map :initarg :map :type xcb:CARD32)))
(defclass xcb:glx:GetPixelMapusv~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (pad~1 :initform 4 :type xcb:-pad)
   (n :initarg :n :type xcb:CARD32)
   (datum :initarg :datum :type xcb:CARD16)
   (pad~2 :initform 16 :type xcb:-pad)
   (data :initarg :data :type xcb:-ignore)
   (data~ :initform
	  '(name data type xcb:CARD16 size
		 (xcb:-fieldref 'n))
	  :type xcb:-list)))

(defclass xcb:glx:GetPolygonStipple
  (xcb:-request)
  ((~opcode :initform 128 :type xcb:-u1)
   (context-tag :initarg :context-tag :type xcb:glx:CONTEXT_TAG)
   (lsb-first :initarg :lsb-first :type xcb:BOOL)))
(defclass xcb:glx:GetPolygonStipple~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (pad~1 :initform 24 :type xcb:-pad)
   (data :initarg :data :type xcb:-ignore)
   (data~ :initform
	  '(name data type xcb:BYTE size
		 (*
		  (xcb:-fieldref 'length)
		  4))
	  :type xcb:-list)))

(defclass xcb:glx:GetString
  (xcb:-request)
  ((~opcode :initform 129 :type xcb:-u1)
   (context-tag :initarg :context-tag :type xcb:glx:CONTEXT_TAG)
   (name :initarg :name :type xcb:CARD32)))
(defclass xcb:glx:GetString~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (pad~1 :initform 4 :type xcb:-pad)
   (n :initarg :n :type xcb:CARD32)
   (pad~2 :initform 16 :type xcb:-pad)
   (string :initarg :string :type xcb:-ignore)
   (string~ :initform
	    '(name string type xcb:char size
		   (xcb:-fieldref 'n))
	    :type xcb:-list)))

(defclass xcb:glx:GetTexEnvfv
  (xcb:-request)
  ((~opcode :initform 130 :type xcb:-u1)
   (context-tag :initarg :context-tag :type xcb:glx:CONTEXT_TAG)
   (target :initarg :target :type xcb:CARD32)
   (pname :initarg :pname :type xcb:CARD32)))
(defclass xcb:glx:GetTexEnvfv~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (pad~1 :initform 4 :type xcb:-pad)
   (n :initarg :n :type xcb:CARD32)
   (datum :initarg :datum :type xcb:glx:FLOAT32)
   (pad~2 :initform 12 :type xcb:-pad)
   (data :initarg :data :type xcb:-ignore)
   (data~ :initform
	  '(name data type xcb:glx:FLOAT32 size
		 (xcb:-fieldref 'n))
	  :type xcb:-list)))

(defclass xcb:glx:GetTexEnviv
  (xcb:-request)
  ((~opcode :initform 131 :type xcb:-u1)
   (context-tag :initarg :context-tag :type xcb:glx:CONTEXT_TAG)
   (target :initarg :target :type xcb:CARD32)
   (pname :initarg :pname :type xcb:CARD32)))
(defclass xcb:glx:GetTexEnviv~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (pad~1 :initform 4 :type xcb:-pad)
   (n :initarg :n :type xcb:CARD32)
   (datum :initarg :datum :type xcb:INT32)
   (pad~2 :initform 12 :type xcb:-pad)
   (data :initarg :data :type xcb:-ignore)
   (data~ :initform
	  '(name data type xcb:INT32 size
		 (xcb:-fieldref 'n))
	  :type xcb:-list)))

(defclass xcb:glx:GetTexGendv
  (xcb:-request)
  ((~opcode :initform 132 :type xcb:-u1)
   (context-tag :initarg :context-tag :type xcb:glx:CONTEXT_TAG)
   (coord :initarg :coord :type xcb:CARD32)
   (pname :initarg :pname :type xcb:CARD32)))
(defclass xcb:glx:GetTexGendv~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (pad~1 :initform 4 :type xcb:-pad)
   (n :initarg :n :type xcb:CARD32)
   (datum :initarg :datum :type xcb:glx:FLOAT64)
   (pad~2 :initform 8 :type xcb:-pad)
   (data :initarg :data :type xcb:-ignore)
   (data~ :initform
	  '(name data type xcb:glx:FLOAT64 size
		 (xcb:-fieldref 'n))
	  :type xcb:-list)))

(defclass xcb:glx:GetTexGenfv
  (xcb:-request)
  ((~opcode :initform 133 :type xcb:-u1)
   (context-tag :initarg :context-tag :type xcb:glx:CONTEXT_TAG)
   (coord :initarg :coord :type xcb:CARD32)
   (pname :initarg :pname :type xcb:CARD32)))
(defclass xcb:glx:GetTexGenfv~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (pad~1 :initform 4 :type xcb:-pad)
   (n :initarg :n :type xcb:CARD32)
   (datum :initarg :datum :type xcb:glx:FLOAT32)
   (pad~2 :initform 12 :type xcb:-pad)
   (data :initarg :data :type xcb:-ignore)
   (data~ :initform
	  '(name data type xcb:glx:FLOAT32 size
		 (xcb:-fieldref 'n))
	  :type xcb:-list)))

(defclass xcb:glx:GetTexGeniv
  (xcb:-request)
  ((~opcode :initform 134 :type xcb:-u1)
   (context-tag :initarg :context-tag :type xcb:glx:CONTEXT_TAG)
   (coord :initarg :coord :type xcb:CARD32)
   (pname :initarg :pname :type xcb:CARD32)))
(defclass xcb:glx:GetTexGeniv~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (pad~1 :initform 4 :type xcb:-pad)
   (n :initarg :n :type xcb:CARD32)
   (datum :initarg :datum :type xcb:INT32)
   (pad~2 :initform 12 :type xcb:-pad)
   (data :initarg :data :type xcb:-ignore)
   (data~ :initform
	  '(name data type xcb:INT32 size
		 (xcb:-fieldref 'n))
	  :type xcb:-list)))

(defclass xcb:glx:GetTexImage
  (xcb:-request)
  ((~opcode :initform 135 :type xcb:-u1)
   (context-tag :initarg :context-tag :type xcb:glx:CONTEXT_TAG)
   (target :initarg :target :type xcb:CARD32)
   (level :initarg :level :type xcb:INT32)
   (format :initarg :format :type xcb:CARD32)
   (type :initarg :type :type xcb:CARD32)
   (swap-bytes :initarg :swap-bytes :type xcb:BOOL)))
(defclass xcb:glx:GetTexImage~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (pad~1 :initform 8 :type xcb:-pad)
   (width :initarg :width :type xcb:INT32)
   (height :initarg :height :type xcb:INT32)
   (depth :initarg :depth :type xcb:INT32)
   (pad~2 :initform 4 :type xcb:-pad)
   (data :initarg :data :type xcb:-ignore)
   (data~ :initform
	  '(name data type xcb:BYTE size
		 (*
		  (xcb:-fieldref 'length)
		  4))
	  :type xcb:-list)))

(defclass xcb:glx:GetTexParameterfv
  (xcb:-request)
  ((~opcode :initform 136 :type xcb:-u1)
   (context-tag :initarg :context-tag :type xcb:glx:CONTEXT_TAG)
   (target :initarg :target :type xcb:CARD32)
   (pname :initarg :pname :type xcb:CARD32)))
(defclass xcb:glx:GetTexParameterfv~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (pad~1 :initform 4 :type xcb:-pad)
   (n :initarg :n :type xcb:CARD32)
   (datum :initarg :datum :type xcb:glx:FLOAT32)
   (pad~2 :initform 12 :type xcb:-pad)
   (data :initarg :data :type xcb:-ignore)
   (data~ :initform
	  '(name data type xcb:glx:FLOAT32 size
		 (xcb:-fieldref 'n))
	  :type xcb:-list)))

(defclass xcb:glx:GetTexParameteriv
  (xcb:-request)
  ((~opcode :initform 137 :type xcb:-u1)
   (context-tag :initarg :context-tag :type xcb:glx:CONTEXT_TAG)
   (target :initarg :target :type xcb:CARD32)
   (pname :initarg :pname :type xcb:CARD32)))
(defclass xcb:glx:GetTexParameteriv~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (pad~1 :initform 4 :type xcb:-pad)
   (n :initarg :n :type xcb:CARD32)
   (datum :initarg :datum :type xcb:INT32)
   (pad~2 :initform 12 :type xcb:-pad)
   (data :initarg :data :type xcb:-ignore)
   (data~ :initform
	  '(name data type xcb:INT32 size
		 (xcb:-fieldref 'n))
	  :type xcb:-list)))

(defclass xcb:glx:GetTexLevelParameterfv
  (xcb:-request)
  ((~opcode :initform 138 :type xcb:-u1)
   (context-tag :initarg :context-tag :type xcb:glx:CONTEXT_TAG)
   (target :initarg :target :type xcb:CARD32)
   (level :initarg :level :type xcb:INT32)
   (pname :initarg :pname :type xcb:CARD32)))
(defclass xcb:glx:GetTexLevelParameterfv~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (pad~1 :initform 4 :type xcb:-pad)
   (n :initarg :n :type xcb:CARD32)
   (datum :initarg :datum :type xcb:glx:FLOAT32)
   (pad~2 :initform 12 :type xcb:-pad)
   (data :initarg :data :type xcb:-ignore)
   (data~ :initform
	  '(name data type xcb:glx:FLOAT32 size
		 (xcb:-fieldref 'n))
	  :type xcb:-list)))

(defclass xcb:glx:GetTexLevelParameteriv
  (xcb:-request)
  ((~opcode :initform 139 :type xcb:-u1)
   (context-tag :initarg :context-tag :type xcb:glx:CONTEXT_TAG)
   (target :initarg :target :type xcb:CARD32)
   (level :initarg :level :type xcb:INT32)
   (pname :initarg :pname :type xcb:CARD32)))
(defclass xcb:glx:GetTexLevelParameteriv~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (pad~1 :initform 4 :type xcb:-pad)
   (n :initarg :n :type xcb:CARD32)
   (datum :initarg :datum :type xcb:INT32)
   (pad~2 :initform 12 :type xcb:-pad)
   (data :initarg :data :type xcb:-ignore)
   (data~ :initform
	  '(name data type xcb:INT32 size
		 (xcb:-fieldref 'n))
	  :type xcb:-list)))

(defclass xcb:glx:IsList
  (xcb:-request)
  ((~opcode :initform 141 :type xcb:-u1)
   (context-tag :initarg :context-tag :type xcb:glx:CONTEXT_TAG)
   (list :initarg :list :type xcb:CARD32)))
(defclass xcb:glx:IsList~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (ret-val :initarg :ret-val :type xcb:BOOL32)))

(defclass xcb:glx:Flush
  (xcb:-request)
  ((~opcode :initform 142 :type xcb:-u1)
   (context-tag :initarg :context-tag :type xcb:glx:CONTEXT_TAG)))

(defclass xcb:glx:AreTexturesResident
  (xcb:-request)
  ((~opcode :initform 143 :type xcb:-u1)
   (context-tag :initarg :context-tag :type xcb:glx:CONTEXT_TAG)
   (n :initarg :n :type xcb:INT32)
   (textures :initarg :textures :type xcb:-ignore)
   (textures~ :initform
	      '(name textures type xcb:CARD32 size
		     (xcb:-fieldref 'n))
	      :type xcb:-list)))
(defclass xcb:glx:AreTexturesResident~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (ret-val :initarg :ret-val :type xcb:BOOL32)
   (pad~1 :initform 20 :type xcb:-pad)
   (data :initarg :data :type xcb:-ignore)
   (data~ :initform
	  '(name data type xcb:BOOL size
		 (*
		  (xcb:-fieldref 'length)
		  4))
	  :type xcb:-list)))

(defclass xcb:glx:DeleteTextures
  (xcb:-request)
  ((~opcode :initform 144 :type xcb:-u1)
   (context-tag :initarg :context-tag :type xcb:glx:CONTEXT_TAG)
   (n :initarg :n :type xcb:INT32)
   (textures :initarg :textures :type xcb:-ignore)
   (textures~ :initform
	      '(name textures type xcb:CARD32 size
		     (xcb:-fieldref 'n))
	      :type xcb:-list)))

(defclass xcb:glx:GenTextures
  (xcb:-request)
  ((~opcode :initform 145 :type xcb:-u1)
   (context-tag :initarg :context-tag :type xcb:glx:CONTEXT_TAG)
   (n :initarg :n :type xcb:INT32)))
(defclass xcb:glx:GenTextures~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (pad~1 :initform 24 :type xcb:-pad)
   (data :initarg :data :type xcb:-ignore)
   (data~ :initform
	  '(name data type xcb:CARD32 size
		 (xcb:-fieldref 'length))
	  :type xcb:-list)))

(defclass xcb:glx:IsTexture
  (xcb:-request)
  ((~opcode :initform 146 :type xcb:-u1)
   (context-tag :initarg :context-tag :type xcb:glx:CONTEXT_TAG)
   (texture :initarg :texture :type xcb:CARD32)))
(defclass xcb:glx:IsTexture~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (ret-val :initarg :ret-val :type xcb:BOOL32)))

(defclass xcb:glx:GetColorTable
  (xcb:-request)
  ((~opcode :initform 147 :type xcb:-u1)
   (context-tag :initarg :context-tag :type xcb:glx:CONTEXT_TAG)
   (target :initarg :target :type xcb:CARD32)
   (format :initarg :format :type xcb:CARD32)
   (type :initarg :type :type xcb:CARD32)
   (swap-bytes :initarg :swap-bytes :type xcb:BOOL)))
(defclass xcb:glx:GetColorTable~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (pad~1 :initform 8 :type xcb:-pad)
   (width :initarg :width :type xcb:INT32)
   (pad~2 :initform 12 :type xcb:-pad)
   (data :initarg :data :type xcb:-ignore)
   (data~ :initform
	  '(name data type xcb:BYTE size
		 (*
		  (xcb:-fieldref 'length)
		  4))
	  :type xcb:-list)))

(defclass xcb:glx:GetColorTableParameterfv
  (xcb:-request)
  ((~opcode :initform 148 :type xcb:-u1)
   (context-tag :initarg :context-tag :type xcb:glx:CONTEXT_TAG)
   (target :initarg :target :type xcb:CARD32)
   (pname :initarg :pname :type xcb:CARD32)))
(defclass xcb:glx:GetColorTableParameterfv~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (pad~1 :initform 4 :type xcb:-pad)
   (n :initarg :n :type xcb:CARD32)
   (datum :initarg :datum :type xcb:glx:FLOAT32)
   (pad~2 :initform 12 :type xcb:-pad)
   (data :initarg :data :type xcb:-ignore)
   (data~ :initform
	  '(name data type xcb:glx:FLOAT32 size
		 (xcb:-fieldref 'n))
	  :type xcb:-list)))

(defclass xcb:glx:GetColorTableParameteriv
  (xcb:-request)
  ((~opcode :initform 149 :type xcb:-u1)
   (context-tag :initarg :context-tag :type xcb:glx:CONTEXT_TAG)
   (target :initarg :target :type xcb:CARD32)
   (pname :initarg :pname :type xcb:CARD32)))
(defclass xcb:glx:GetColorTableParameteriv~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (pad~1 :initform 4 :type xcb:-pad)
   (n :initarg :n :type xcb:CARD32)
   (datum :initarg :datum :type xcb:INT32)
   (pad~2 :initform 12 :type xcb:-pad)
   (data :initarg :data :type xcb:-ignore)
   (data~ :initform
	  '(name data type xcb:INT32 size
		 (xcb:-fieldref 'n))
	  :type xcb:-list)))

(defclass xcb:glx:GetConvolutionFilter
  (xcb:-request)
  ((~opcode :initform 150 :type xcb:-u1)
   (context-tag :initarg :context-tag :type xcb:glx:CONTEXT_TAG)
   (target :initarg :target :type xcb:CARD32)
   (format :initarg :format :type xcb:CARD32)
   (type :initarg :type :type xcb:CARD32)
   (swap-bytes :initarg :swap-bytes :type xcb:BOOL)))
(defclass xcb:glx:GetConvolutionFilter~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (pad~1 :initform 8 :type xcb:-pad)
   (width :initarg :width :type xcb:INT32)
   (height :initarg :height :type xcb:INT32)
   (pad~2 :initform 8 :type xcb:-pad)
   (data :initarg :data :type xcb:-ignore)
   (data~ :initform
	  '(name data type xcb:BYTE size
		 (*
		  (xcb:-fieldref 'length)
		  4))
	  :type xcb:-list)))

(defclass xcb:glx:GetConvolutionParameterfv
  (xcb:-request)
  ((~opcode :initform 151 :type xcb:-u1)
   (context-tag :initarg :context-tag :type xcb:glx:CONTEXT_TAG)
   (target :initarg :target :type xcb:CARD32)
   (pname :initarg :pname :type xcb:CARD32)))
(defclass xcb:glx:GetConvolutionParameterfv~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (pad~1 :initform 4 :type xcb:-pad)
   (n :initarg :n :type xcb:CARD32)
   (datum :initarg :datum :type xcb:glx:FLOAT32)
   (pad~2 :initform 12 :type xcb:-pad)
   (data :initarg :data :type xcb:-ignore)
   (data~ :initform
	  '(name data type xcb:glx:FLOAT32 size
		 (xcb:-fieldref 'n))
	  :type xcb:-list)))

(defclass xcb:glx:GetConvolutionParameteriv
  (xcb:-request)
  ((~opcode :initform 152 :type xcb:-u1)
   (context-tag :initarg :context-tag :type xcb:glx:CONTEXT_TAG)
   (target :initarg :target :type xcb:CARD32)
   (pname :initarg :pname :type xcb:CARD32)))
(defclass xcb:glx:GetConvolutionParameteriv~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (pad~1 :initform 4 :type xcb:-pad)
   (n :initarg :n :type xcb:CARD32)
   (datum :initarg :datum :type xcb:INT32)
   (pad~2 :initform 12 :type xcb:-pad)
   (data :initarg :data :type xcb:-ignore)
   (data~ :initform
	  '(name data type xcb:INT32 size
		 (xcb:-fieldref 'n))
	  :type xcb:-list)))

(defclass xcb:glx:GetSeparableFilter
  (xcb:-request)
  ((~opcode :initform 153 :type xcb:-u1)
   (context-tag :initarg :context-tag :type xcb:glx:CONTEXT_TAG)
   (target :initarg :target :type xcb:CARD32)
   (format :initarg :format :type xcb:CARD32)
   (type :initarg :type :type xcb:CARD32)
   (swap-bytes :initarg :swap-bytes :type xcb:BOOL)))
(defclass xcb:glx:GetSeparableFilter~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (pad~1 :initform 8 :type xcb:-pad)
   (row-w :initarg :row-w :type xcb:INT32)
   (col-h :initarg :col-h :type xcb:INT32)
   (pad~2 :initform 8 :type xcb:-pad)
   (rows-and-cols :initarg :rows-and-cols :type xcb:-ignore)
   (rows-and-cols~ :initform
		   '(name rows-and-cols type xcb:BYTE size
			  (*
			   (xcb:-fieldref 'length)
			   4))
		   :type xcb:-list)))

(defclass xcb:glx:GetHistogram
  (xcb:-request)
  ((~opcode :initform 154 :type xcb:-u1)
   (context-tag :initarg :context-tag :type xcb:glx:CONTEXT_TAG)
   (target :initarg :target :type xcb:CARD32)
   (format :initarg :format :type xcb:CARD32)
   (type :initarg :type :type xcb:CARD32)
   (swap-bytes :initarg :swap-bytes :type xcb:BOOL)
   (reset :initarg :reset :type xcb:BOOL)))
(defclass xcb:glx:GetHistogram~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (pad~1 :initform 8 :type xcb:-pad)
   (width :initarg :width :type xcb:INT32)
   (pad~2 :initform 12 :type xcb:-pad)
   (data :initarg :data :type xcb:-ignore)
   (data~ :initform
	  '(name data type xcb:BYTE size
		 (*
		  (xcb:-fieldref 'length)
		  4))
	  :type xcb:-list)))

(defclass xcb:glx:GetHistogramParameterfv
  (xcb:-request)
  ((~opcode :initform 155 :type xcb:-u1)
   (context-tag :initarg :context-tag :type xcb:glx:CONTEXT_TAG)
   (target :initarg :target :type xcb:CARD32)
   (pname :initarg :pname :type xcb:CARD32)))
(defclass xcb:glx:GetHistogramParameterfv~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (pad~1 :initform 4 :type xcb:-pad)
   (n :initarg :n :type xcb:CARD32)
   (datum :initarg :datum :type xcb:glx:FLOAT32)
   (pad~2 :initform 12 :type xcb:-pad)
   (data :initarg :data :type xcb:-ignore)
   (data~ :initform
	  '(name data type xcb:glx:FLOAT32 size
		 (xcb:-fieldref 'n))
	  :type xcb:-list)))

(defclass xcb:glx:GetHistogramParameteriv
  (xcb:-request)
  ((~opcode :initform 156 :type xcb:-u1)
   (context-tag :initarg :context-tag :type xcb:glx:CONTEXT_TAG)
   (target :initarg :target :type xcb:CARD32)
   (pname :initarg :pname :type xcb:CARD32)))
(defclass xcb:glx:GetHistogramParameteriv~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (pad~1 :initform 4 :type xcb:-pad)
   (n :initarg :n :type xcb:CARD32)
   (datum :initarg :datum :type xcb:INT32)
   (pad~2 :initform 12 :type xcb:-pad)
   (data :initarg :data :type xcb:-ignore)
   (data~ :initform
	  '(name data type xcb:INT32 size
		 (xcb:-fieldref 'n))
	  :type xcb:-list)))

(defclass xcb:glx:GetMinmax
  (xcb:-request)
  ((~opcode :initform 157 :type xcb:-u1)
   (context-tag :initarg :context-tag :type xcb:glx:CONTEXT_TAG)
   (target :initarg :target :type xcb:CARD32)
   (format :initarg :format :type xcb:CARD32)
   (type :initarg :type :type xcb:CARD32)
   (swap-bytes :initarg :swap-bytes :type xcb:BOOL)
   (reset :initarg :reset :type xcb:BOOL)))
(defclass xcb:glx:GetMinmax~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (pad~1 :initform 24 :type xcb:-pad)
   (data :initarg :data :type xcb:-ignore)
   (data~ :initform
	  '(name data type xcb:BYTE size
		 (*
		  (xcb:-fieldref 'length)
		  4))
	  :type xcb:-list)))

(defclass xcb:glx:GetMinmaxParameterfv
  (xcb:-request)
  ((~opcode :initform 158 :type xcb:-u1)
   (context-tag :initarg :context-tag :type xcb:glx:CONTEXT_TAG)
   (target :initarg :target :type xcb:CARD32)
   (pname :initarg :pname :type xcb:CARD32)))
(defclass xcb:glx:GetMinmaxParameterfv~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (pad~1 :initform 4 :type xcb:-pad)
   (n :initarg :n :type xcb:CARD32)
   (datum :initarg :datum :type xcb:glx:FLOAT32)
   (pad~2 :initform 12 :type xcb:-pad)
   (data :initarg :data :type xcb:-ignore)
   (data~ :initform
	  '(name data type xcb:glx:FLOAT32 size
		 (xcb:-fieldref 'n))
	  :type xcb:-list)))

(defclass xcb:glx:GetMinmaxParameteriv
  (xcb:-request)
  ((~opcode :initform 159 :type xcb:-u1)
   (context-tag :initarg :context-tag :type xcb:glx:CONTEXT_TAG)
   (target :initarg :target :type xcb:CARD32)
   (pname :initarg :pname :type xcb:CARD32)))
(defclass xcb:glx:GetMinmaxParameteriv~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (pad~1 :initform 4 :type xcb:-pad)
   (n :initarg :n :type xcb:CARD32)
   (datum :initarg :datum :type xcb:INT32)
   (pad~2 :initform 12 :type xcb:-pad)
   (data :initarg :data :type xcb:-ignore)
   (data~ :initform
	  '(name data type xcb:INT32 size
		 (xcb:-fieldref 'n))
	  :type xcb:-list)))

(defclass xcb:glx:GetCompressedTexImageARB
  (xcb:-request)
  ((~opcode :initform 160 :type xcb:-u1)
   (context-tag :initarg :context-tag :type xcb:glx:CONTEXT_TAG)
   (target :initarg :target :type xcb:CARD32)
   (level :initarg :level :type xcb:INT32)))
(defclass xcb:glx:GetCompressedTexImageARB~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (pad~1 :initform 8 :type xcb:-pad)
   (size :initarg :size :type xcb:INT32)
   (pad~2 :initform 12 :type xcb:-pad)
   (data :initarg :data :type xcb:-ignore)
   (data~ :initform
	  '(name data type xcb:BYTE size
		 (*
		  (xcb:-fieldref 'length)
		  4))
	  :type xcb:-list)))

(defclass xcb:glx:DeleteQueriesARB
  (xcb:-request)
  ((~opcode :initform 161 :type xcb:-u1)
   (context-tag :initarg :context-tag :type xcb:glx:CONTEXT_TAG)
   (n :initarg :n :type xcb:INT32)
   (ids :initarg :ids :type xcb:-ignore)
   (ids~ :initform
	 '(name ids type xcb:CARD32 size
		(xcb:-fieldref 'n))
	 :type xcb:-list)))

(defclass xcb:glx:GenQueriesARB
  (xcb:-request)
  ((~opcode :initform 162 :type xcb:-u1)
   (context-tag :initarg :context-tag :type xcb:glx:CONTEXT_TAG)
   (n :initarg :n :type xcb:INT32)))
(defclass xcb:glx:GenQueriesARB~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (pad~1 :initform 24 :type xcb:-pad)
   (data :initarg :data :type xcb:-ignore)
   (data~ :initform
	  '(name data type xcb:CARD32 size
		 (xcb:-fieldref 'length))
	  :type xcb:-list)))

(defclass xcb:glx:IsQueryARB
  (xcb:-request)
  ((~opcode :initform 163 :type xcb:-u1)
   (context-tag :initarg :context-tag :type xcb:glx:CONTEXT_TAG)
   (id :initarg :id :type xcb:CARD32)))
(defclass xcb:glx:IsQueryARB~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (ret-val :initarg :ret-val :type xcb:BOOL32)))

(defclass xcb:glx:GetQueryivARB
  (xcb:-request)
  ((~opcode :initform 164 :type xcb:-u1)
   (context-tag :initarg :context-tag :type xcb:glx:CONTEXT_TAG)
   (target :initarg :target :type xcb:CARD32)
   (pname :initarg :pname :type xcb:CARD32)))
(defclass xcb:glx:GetQueryivARB~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (pad~1 :initform 4 :type xcb:-pad)
   (n :initarg :n :type xcb:CARD32)
   (datum :initarg :datum :type xcb:INT32)
   (pad~2 :initform 12 :type xcb:-pad)
   (data :initarg :data :type xcb:-ignore)
   (data~ :initform
	  '(name data type xcb:INT32 size
		 (xcb:-fieldref 'n))
	  :type xcb:-list)))

(defclass xcb:glx:GetQueryObjectivARB
  (xcb:-request)
  ((~opcode :initform 165 :type xcb:-u1)
   (context-tag :initarg :context-tag :type xcb:glx:CONTEXT_TAG)
   (id :initarg :id :type xcb:CARD32)
   (pname :initarg :pname :type xcb:CARD32)))
(defclass xcb:glx:GetQueryObjectivARB~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (pad~1 :initform 4 :type xcb:-pad)
   (n :initarg :n :type xcb:CARD32)
   (datum :initarg :datum :type xcb:INT32)
   (pad~2 :initform 12 :type xcb:-pad)
   (data :initarg :data :type xcb:-ignore)
   (data~ :initform
	  '(name data type xcb:INT32 size
		 (xcb:-fieldref 'n))
	  :type xcb:-list)))

(defclass xcb:glx:GetQueryObjectuivARB
  (xcb:-request)
  ((~opcode :initform 166 :type xcb:-u1)
   (context-tag :initarg :context-tag :type xcb:glx:CONTEXT_TAG)
   (id :initarg :id :type xcb:CARD32)
   (pname :initarg :pname :type xcb:CARD32)))
(defclass xcb:glx:GetQueryObjectuivARB~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (pad~1 :initform 4 :type xcb:-pad)
   (n :initarg :n :type xcb:CARD32)
   (datum :initarg :datum :type xcb:CARD32)
   (pad~2 :initform 12 :type xcb:-pad)
   (data :initarg :data :type xcb:-ignore)
   (data~ :initform
	  '(name data type xcb:CARD32 size
		 (xcb:-fieldref 'n))
	  :type xcb:-list)))

(defconst xcb:glx:error-number-class-alist
  '((-1 . xcb:glx:Generic)
    (0 . xcb:glx:BadContext)
    (1 . xcb:glx:BadContextState)
    (2 . xcb:glx:BadDrawable)
    (3 . xcb:glx:BadPixmap)
    (4 . xcb:glx:BadContextTag)
    (5 . xcb:glx:BadCurrentWindow)
    (6 . xcb:glx:BadRenderRequest)
    (7 . xcb:glx:BadLargeRequest)
    (8 . xcb:glx:UnsupportedPrivateRequest)
    (9 . xcb:glx:BadFBConfig)
    (10 . xcb:glx:BadPbuffer)
    (11 . xcb:glx:BadCurrentDrawable)
    (12 . xcb:glx:BadWindow)
    (13 . xcb:glx:GLXBadProfileARB))
  "(error-number . error-class) alist")

(defconst xcb:glx:event-number-class-alist
  '((0 . xcb:glx:PbufferClobber)
    (1 . xcb:glx:BufferSwapComplete))
  "(event-number . event-class) alist")



(provide 'xcb-glx)
