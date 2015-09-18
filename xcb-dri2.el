;;; -*- lexical-binding: t -*-
;; Copyright (C) 2015 Free Software Foundation, Inc.
;; This file was generated from `dri2.xml' by `el_client.el'.

(require 'xcb-types)

(defconst xcb:dri2:-extension-xname "DRI2")
(defconst xcb:dri2:-extension-name "DRI2")
(defconst xcb:dri2:-major-version 1)
(defconst xcb:dri2:-minor-version 4)

(require 'xcb-xproto)

(defconst xcb:dri2:Attachment:BufferFrontLeft 0)
(defconst xcb:dri2:Attachment:BufferBackLeft 1)
(defconst xcb:dri2:Attachment:BufferFrontRight 2)
(defconst xcb:dri2:Attachment:BufferBackRight 3)
(defconst xcb:dri2:Attachment:BufferDepth 4)
(defconst xcb:dri2:Attachment:BufferStencil 5)
(defconst xcb:dri2:Attachment:BufferAccum 6)
(defconst xcb:dri2:Attachment:BufferFakeFrontLeft 7)
(defconst xcb:dri2:Attachment:BufferFakeFrontRight 8)
(defconst xcb:dri2:Attachment:BufferDepthStencil 9)
(defconst xcb:dri2:Attachment:BufferHiz 10)

(defconst xcb:dri2:DriverType:DRI 0)
(defconst xcb:dri2:DriverType:VDPAU 1)

(defconst xcb:dri2:EventType:ExchangeComplete 1)
(defconst xcb:dri2:EventType:BlitComplete 2)
(defconst xcb:dri2:EventType:FlipComplete 3)

(defclass xcb:dri2:DRI2Buffer
  (xcb:-struct)
  ((attachment :initarg :attachment :type xcb:CARD32)
   (name :initarg :name :type xcb:CARD32)
   (pitch :initarg :pitch :type xcb:CARD32)
   (cpp :initarg :cpp :type xcb:CARD32)
   (flags :initarg :flags :type xcb:CARD32)))

(defclass xcb:dri2:AttachFormat
  (xcb:-struct)
  ((attachment :initarg :attachment :type xcb:CARD32)
   (format :initarg :format :type xcb:CARD32)))

(defclass xcb:dri2:QueryVersion
  (xcb:-request)
  ((~opcode :initform 0 :type xcb:-u1)
   (major-version :initarg :major-version :type xcb:CARD32)
   (minor-version :initarg :minor-version :type xcb:CARD32)))
(defclass xcb:dri2:QueryVersion~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (major-version :initarg :major-version :type xcb:CARD32)
   (minor-version :initarg :minor-version :type xcb:CARD32)))

(defclass xcb:dri2:Connect
  (xcb:-request)
  ((~opcode :initform 1 :type xcb:-u1)
   (window :initarg :window :type xcb:WINDOW)
   (driver-type :initarg :driver-type :type xcb:CARD32)))
(defclass xcb:dri2:Connect~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (driver-name-length :initarg :driver-name-length :type xcb:CARD32)
   (device-name-length :initarg :device-name-length :type xcb:CARD32)
   (pad~1 :initform 16 :type xcb:-pad)
   (driver-name :initarg :driver-name :type xcb:-ignore)
   (driver-name~ :initform
		 '(name driver-name type xcb:char size
			(xcb:-fieldref 'driver-name-length))
		 :type xcb:-list)
   (pad~2 :initform 4 :type xcb:-pad-align)
   (alignment-pad :initarg :alignment-pad :type xcb:-ignore)
   (alignment-pad~ :initform
		   '(name alignment-pad type xcb:void size
			  (-
			   (logand
			    (+
			     (xcb:-fieldref 'driver-name-length)
			     3)
			    (lognot
			     (parse-expression
			      (node-subnode node))))
			   (xcb:-fieldref 'driver-name-length)))
		   :type xcb:-list)
   (pad~3 :initform 4 :type xcb:-pad-align)
   (device-name :initarg :device-name :type xcb:-ignore)
   (device-name~ :initform
		 '(name device-name type xcb:char size
			(xcb:-fieldref 'device-name-length))
		 :type xcb:-list)))

(defclass xcb:dri2:Authenticate
  (xcb:-request)
  ((~opcode :initform 2 :type xcb:-u1)
   (window :initarg :window :type xcb:WINDOW)
   (magic :initarg :magic :type xcb:CARD32)))
(defclass xcb:dri2:Authenticate~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (authenticated :initarg :authenticated :type xcb:CARD32)))

(defclass xcb:dri2:CreateDrawable
  (xcb:-request)
  ((~opcode :initform 3 :type xcb:-u1)
   (drawable :initarg :drawable :type xcb:DRAWABLE)))

(defclass xcb:dri2:DestroyDrawable
  (xcb:-request)
  ((~opcode :initform 4 :type xcb:-u1)
   (drawable :initarg :drawable :type xcb:DRAWABLE)))

(defclass xcb:dri2:GetBuffers
  (xcb:-request)
  ((~opcode :initform 5 :type xcb:-u1)
   (drawable :initarg :drawable :type xcb:DRAWABLE)
   (count :initarg :count :type xcb:CARD32)
   (attachments :initarg :attachments :type xcb:-ignore)
   (attachments~ :initform
		 '(name attachments type xcb:CARD32 size nil)
		 :type xcb:-list)))
(defclass xcb:dri2:GetBuffers~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (width :initarg :width :type xcb:CARD32)
   (height :initarg :height :type xcb:CARD32)
   (count :initarg :count :type xcb:CARD32)
   (pad~1 :initform 12 :type xcb:-pad)
   (buffers :initarg :buffers :type xcb:-ignore)
   (buffers~ :initform
	     '(name buffers type xcb:dri2:DRI2Buffer size
		    (xcb:-fieldref 'count))
	     :type xcb:-list)))

(defclass xcb:dri2:CopyRegion
  (xcb:-request)
  ((~opcode :initform 6 :type xcb:-u1)
   (drawable :initarg :drawable :type xcb:DRAWABLE)
   (region :initarg :region :type xcb:CARD32)
   (dest :initarg :dest :type xcb:CARD32)
   (src :initarg :src :type xcb:CARD32)))
(defclass xcb:dri2:CopyRegion~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)))

(defclass xcb:dri2:GetBuffersWithFormat
  (xcb:-request)
  ((~opcode :initform 7 :type xcb:-u1)
   (drawable :initarg :drawable :type xcb:DRAWABLE)
   (count :initarg :count :type xcb:CARD32)
   (attachments :initarg :attachments :type xcb:-ignore)
   (attachments~ :initform
		 '(name attachments type xcb:dri2:AttachFormat size nil)
		 :type xcb:-list)))
(defclass xcb:dri2:GetBuffersWithFormat~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (width :initarg :width :type xcb:CARD32)
   (height :initarg :height :type xcb:CARD32)
   (count :initarg :count :type xcb:CARD32)
   (pad~1 :initform 12 :type xcb:-pad)
   (buffers :initarg :buffers :type xcb:-ignore)
   (buffers~ :initform
	     '(name buffers type xcb:dri2:DRI2Buffer size
		    (xcb:-fieldref 'count))
	     :type xcb:-list)))

(defclass xcb:dri2:SwapBuffers
  (xcb:-request)
  ((~opcode :initform 8 :type xcb:-u1)
   (drawable :initarg :drawable :type xcb:DRAWABLE)
   (target-msc-hi :initarg :target-msc-hi :type xcb:CARD32)
   (target-msc-lo :initarg :target-msc-lo :type xcb:CARD32)
   (divisor-hi :initarg :divisor-hi :type xcb:CARD32)
   (divisor-lo :initarg :divisor-lo :type xcb:CARD32)
   (remainder-hi :initarg :remainder-hi :type xcb:CARD32)
   (remainder-lo :initarg :remainder-lo :type xcb:CARD32)))
(defclass xcb:dri2:SwapBuffers~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (swap-hi :initarg :swap-hi :type xcb:CARD32)
   (swap-lo :initarg :swap-lo :type xcb:CARD32)))

(defclass xcb:dri2:GetMSC
  (xcb:-request)
  ((~opcode :initform 9 :type xcb:-u1)
   (drawable :initarg :drawable :type xcb:DRAWABLE)))
(defclass xcb:dri2:GetMSC~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (ust-hi :initarg :ust-hi :type xcb:CARD32)
   (ust-lo :initarg :ust-lo :type xcb:CARD32)
   (msc-hi :initarg :msc-hi :type xcb:CARD32)
   (msc-lo :initarg :msc-lo :type xcb:CARD32)
   (sbc-hi :initarg :sbc-hi :type xcb:CARD32)
   (sbc-lo :initarg :sbc-lo :type xcb:CARD32)))

(defclass xcb:dri2:WaitMSC
  (xcb:-request)
  ((~opcode :initform 10 :type xcb:-u1)
   (drawable :initarg :drawable :type xcb:DRAWABLE)
   (target-msc-hi :initarg :target-msc-hi :type xcb:CARD32)
   (target-msc-lo :initarg :target-msc-lo :type xcb:CARD32)
   (divisor-hi :initarg :divisor-hi :type xcb:CARD32)
   (divisor-lo :initarg :divisor-lo :type xcb:CARD32)
   (remainder-hi :initarg :remainder-hi :type xcb:CARD32)
   (remainder-lo :initarg :remainder-lo :type xcb:CARD32)))
(defclass xcb:dri2:WaitMSC~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (ust-hi :initarg :ust-hi :type xcb:CARD32)
   (ust-lo :initarg :ust-lo :type xcb:CARD32)
   (msc-hi :initarg :msc-hi :type xcb:CARD32)
   (msc-lo :initarg :msc-lo :type xcb:CARD32)
   (sbc-hi :initarg :sbc-hi :type xcb:CARD32)
   (sbc-lo :initarg :sbc-lo :type xcb:CARD32)))

(defclass xcb:dri2:WaitSBC
  (xcb:-request)
  ((~opcode :initform 11 :type xcb:-u1)
   (drawable :initarg :drawable :type xcb:DRAWABLE)
   (target-sbc-hi :initarg :target-sbc-hi :type xcb:CARD32)
   (target-sbc-lo :initarg :target-sbc-lo :type xcb:CARD32)))
(defclass xcb:dri2:WaitSBC~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (ust-hi :initarg :ust-hi :type xcb:CARD32)
   (ust-lo :initarg :ust-lo :type xcb:CARD32)
   (msc-hi :initarg :msc-hi :type xcb:CARD32)
   (msc-lo :initarg :msc-lo :type xcb:CARD32)
   (sbc-hi :initarg :sbc-hi :type xcb:CARD32)
   (sbc-lo :initarg :sbc-lo :type xcb:CARD32)))

(defclass xcb:dri2:SwapInterval
  (xcb:-request)
  ((~opcode :initform 12 :type xcb:-u1)
   (drawable :initarg :drawable :type xcb:DRAWABLE)
   (interval :initarg :interval :type xcb:CARD32)))

(defclass xcb:dri2:GetParam
  (xcb:-request)
  ((~opcode :initform 13 :type xcb:-u1)
   (drawable :initarg :drawable :type xcb:DRAWABLE)
   (param :initarg :param :type xcb:CARD32)))
(defclass xcb:dri2:GetParam~reply
  (xcb:-reply)
  ((is-param-recognized :initarg :is-param-recognized :type xcb:BOOL)
   (value-hi :initarg :value-hi :type xcb:CARD32)
   (value-lo :initarg :value-lo :type xcb:CARD32)))

(defclass xcb:dri2:BufferSwapComplete
  (xcb:-event)
  ((pad~0 :initform 1 :type xcb:-pad)
   (event-type :initarg :event-type :type xcb:CARD16)
   (pad~1 :initform 2 :type xcb:-pad)
   (drawable :initarg :drawable :type xcb:DRAWABLE)
   (ust-hi :initarg :ust-hi :type xcb:CARD32)
   (ust-lo :initarg :ust-lo :type xcb:CARD32)
   (msc-hi :initarg :msc-hi :type xcb:CARD32)
   (msc-lo :initarg :msc-lo :type xcb:CARD32)
   (sbc :initarg :sbc :type xcb:CARD32)))

(defclass xcb:dri2:InvalidateBuffers
  (xcb:-event)
  ((pad~0 :initform 1 :type xcb:-pad)
   (drawable :initarg :drawable :type xcb:DRAWABLE)))

(defconst xcb:dri2:event-number-class-alist
  '((0 . xcb:dri2:BufferSwapComplete)
    (1 . xcb:dri2:InvalidateBuffers))
  "(event-number . event-class) alist")



(provide 'xcb-dri2)
