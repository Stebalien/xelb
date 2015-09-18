;;; -*- lexical-binding: t -*-
;; Copyright (C) 2015 Free Software Foundation, Inc.
;; This file was generated from `xprint.xml' by `el_client.el'.

(require 'xcb-types)

(defconst xcb:xprint:-extension-xname "XpExtension")
(defconst xcb:xprint:-extension-name "XPrint")
(defconst xcb:xprint:-major-version 1)
(defconst xcb:xprint:-minor-version 0)

(require 'xcb-xproto)

(xcb:deftypealias 'xcb:xprint:STRING8 'xcb:char)

(defclass xcb:xprint:PRINTER
  (xcb:-struct)
  ((nameLen :initarg :nameLen :type xcb:CARD32)
   (name :initarg :name :type xcb:-ignore)
   (name~ :initform
	  '(name name type xcb:xprint:STRING8 size
		 (xcb:-fieldref 'nameLen))
	  :type xcb:-list)
   (pad~0 :initform 4 :type xcb:-pad-align)
   (descLen :initarg :descLen :type xcb:CARD32)
   (description :initarg :description :type xcb:-ignore)
   (description~ :initform
		 '(name description type xcb:xprint:STRING8 size
			(xcb:-fieldref 'descLen))
		 :type xcb:-list)))

(xcb:deftypealias 'xcb:xprint:PCONTEXT 'xcb:-u4)

(defconst xcb:xprint:GetDoc:Finished 0)
(defconst xcb:xprint:GetDoc:SecondConsumer 1)

(defconst xcb:xprint:EvMask:NoEventMask 0)
(defconst xcb:xprint:EvMask:PrintMask 1)
(defconst xcb:xprint:EvMask:AttributeMask 2)

(defconst xcb:xprint:Detail:StartJobNotify 1)
(defconst xcb:xprint:Detail:EndJobNotify 2)
(defconst xcb:xprint:Detail:StartDocNotify 3)
(defconst xcb:xprint:Detail:EndDocNotify 4)
(defconst xcb:xprint:Detail:StartPageNotify 5)
(defconst xcb:xprint:Detail:EndPageNotify 6)

(defconst xcb:xprint:Attr:JobAttr 1)
(defconst xcb:xprint:Attr:DocAttr 2)
(defconst xcb:xprint:Attr:PageAttr 3)
(defconst xcb:xprint:Attr:PrinterAttr 4)
(defconst xcb:xprint:Attr:ServerAttr 5)
(defconst xcb:xprint:Attr:MediumAttr 6)
(defconst xcb:xprint:Attr:SpoolerAttr 7)

(defclass xcb:xprint:PrintQueryVersion
  (xcb:-request)
  ((~opcode :initform 0 :type xcb:-u1)))
(defclass xcb:xprint:PrintQueryVersion~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (major-version :initarg :major-version :type xcb:CARD16)
   (minor-version :initarg :minor-version :type xcb:CARD16)))

(defclass xcb:xprint:PrintGetPrinterList
  (xcb:-request)
  ((~opcode :initform 1 :type xcb:-u1)
   (printerNameLen :initarg :printerNameLen :type xcb:CARD32)
   (localeLen :initarg :localeLen :type xcb:CARD32)
   (printer-name :initarg :printer-name :type xcb:-ignore)
   (printer-name~ :initform
		  '(name printer-name type xcb:xprint:STRING8 size
			 (xcb:-fieldref 'printerNameLen))
		  :type xcb:-list)
   (pad~0 :initform 4 :type xcb:-pad-align)
   (locale :initarg :locale :type xcb:-ignore)
   (locale~ :initform
	    '(name locale type xcb:xprint:STRING8 size
		   (xcb:-fieldref 'localeLen))
	    :type xcb:-list)))
(defclass xcb:xprint:PrintGetPrinterList~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (listCount :initarg :listCount :type xcb:CARD32)
   (pad~1 :initform 20 :type xcb:-pad)
   (printers :initarg :printers :type xcb:-ignore)
   (printers~ :initform
	      '(name printers type xcb:xprint:PRINTER size
		     (xcb:-fieldref 'listCount))
	      :type xcb:-list)))

(defclass xcb:xprint:PrintRehashPrinterList
  (xcb:-request)
  ((~opcode :initform 20 :type xcb:-u1)))

(defclass xcb:xprint:CreateContext
  (xcb:-request)
  ((~opcode :initform 2 :type xcb:-u1)
   (context-id :initarg :context-id :type xcb:CARD32)
   (printerNameLen :initarg :printerNameLen :type xcb:CARD32)
   (localeLen :initarg :localeLen :type xcb:CARD32)
   (printerName :initarg :printerName :type xcb:-ignore)
   (printerName~ :initform
		 '(name printerName type xcb:xprint:STRING8 size
			(xcb:-fieldref 'printerNameLen))
		 :type xcb:-list)
   (pad~0 :initform 4 :type xcb:-pad-align)
   (locale :initarg :locale :type xcb:-ignore)
   (locale~ :initform
	    '(name locale type xcb:xprint:STRING8 size
		   (xcb:-fieldref 'localeLen))
	    :type xcb:-list)))

(defclass xcb:xprint:PrintSetContext
  (xcb:-request)
  ((~opcode :initform 3 :type xcb:-u1)
   (context :initarg :context :type xcb:CARD32)))

(defclass xcb:xprint:PrintGetContext
  (xcb:-request)
  ((~opcode :initform 4 :type xcb:-u1)))
(defclass xcb:xprint:PrintGetContext~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (context :initarg :context :type xcb:CARD32)))

(defclass xcb:xprint:PrintDestroyContext
  (xcb:-request)
  ((~opcode :initform 5 :type xcb:-u1)
   (context :initarg :context :type xcb:CARD32)))

(defclass xcb:xprint:PrintGetScreenOfContext
  (xcb:-request)
  ((~opcode :initform 6 :type xcb:-u1)))
(defclass xcb:xprint:PrintGetScreenOfContext~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (root :initarg :root :type xcb:WINDOW)))

(defclass xcb:xprint:PrintStartJob
  (xcb:-request)
  ((~opcode :initform 7 :type xcb:-u1)
   (output-mode :initarg :output-mode :type xcb:CARD8)))

(defclass xcb:xprint:PrintEndJob
  (xcb:-request)
  ((~opcode :initform 8 :type xcb:-u1)
   (cancel :initarg :cancel :type xcb:BOOL)))

(defclass xcb:xprint:PrintStartDoc
  (xcb:-request)
  ((~opcode :initform 9 :type xcb:-u1)
   (driver-mode :initarg :driver-mode :type xcb:CARD8)))

(defclass xcb:xprint:PrintEndDoc
  (xcb:-request)
  ((~opcode :initform 10 :type xcb:-u1)
   (cancel :initarg :cancel :type xcb:BOOL)))

(defclass xcb:xprint:PrintPutDocumentData
  (xcb:-request)
  ((~opcode :initform 11 :type xcb:-u1)
   (drawable :initarg :drawable :type xcb:DRAWABLE)
   (len-data :initarg :len-data :type xcb:CARD32)
   (len-fmt :initarg :len-fmt :type xcb:CARD16)
   (len-options :initarg :len-options :type xcb:CARD16)
   (data :initarg :data :type xcb:-ignore)
   (data~ :initform
	  '(name data type xcb:BYTE size
		 (xcb:-fieldref 'len-data))
	  :type xcb:-list)
   (pad~0 :initform 4 :type xcb:-pad-align)
   (doc-format :initarg :doc-format :type xcb:-ignore)
   (doc-format~ :initform
		'(name doc-format type xcb:xprint:STRING8 size
		       (xcb:-fieldref 'len-fmt))
		:type xcb:-list)
   (pad~1 :initform 4 :type xcb:-pad-align)
   (options :initarg :options :type xcb:-ignore)
   (options~ :initform
	     '(name options type xcb:xprint:STRING8 size
		    (xcb:-fieldref 'len-options))
	     :type xcb:-list)))

(defclass xcb:xprint:PrintGetDocumentData
  (xcb:-request)
  ((~opcode :initform 12 :type xcb:-u1)
   (context :initarg :context :type xcb:xprint:PCONTEXT)
   (max-bytes :initarg :max-bytes :type xcb:CARD32)))
(defclass xcb:xprint:PrintGetDocumentData~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (status-code :initarg :status-code :type xcb:CARD32)
   (finished-flag :initarg :finished-flag :type xcb:CARD32)
   (dataLen :initarg :dataLen :type xcb:CARD32)
   (pad~1 :initform 12 :type xcb:-pad)
   (data :initarg :data :type xcb:-ignore)
   (data~ :initform
	  '(name data type xcb:BYTE size
		 (xcb:-fieldref 'dataLen))
	  :type xcb:-list)))

(defclass xcb:xprint:PrintStartPage
  (xcb:-request)
  ((~opcode :initform 13 :type xcb:-u1)
   (window :initarg :window :type xcb:WINDOW)))

(defclass xcb:xprint:PrintEndPage
  (xcb:-request)
  ((~opcode :initform 14 :type xcb:-u1)
   (cancel :initarg :cancel :type xcb:BOOL)
   (pad~0 :initform 3 :type xcb:-pad)))

(defclass xcb:xprint:PrintSelectInput
  (xcb:-request)
  ((~opcode :initform 15 :type xcb:-u1)
   (context :initarg :context :type xcb:xprint:PCONTEXT)
   (event-mask :initarg :event-mask :type xcb:CARD32)))

(defclass xcb:xprint:PrintInputSelected
  (xcb:-request)
  ((~opcode :initform 16 :type xcb:-u1)
   (context :initarg :context :type xcb:xprint:PCONTEXT)))
(defclass xcb:xprint:PrintInputSelected~reply
  (xcb:-reply)
  ((event-mask :initarg :event-mask :type xcb:CARD32)
   (all-events-mask :initarg :all-events-mask :type xcb:CARD32)))

(defclass xcb:xprint:PrintGetAttributes
  (xcb:-request)
  ((~opcode :initform 17 :type xcb:-u1)
   (context :initarg :context :type xcb:xprint:PCONTEXT)
   (pool :initarg :pool :type xcb:CARD8)
   (pad~0 :initform 3 :type xcb:-pad)))
(defclass xcb:xprint:PrintGetAttributes~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (stringLen :initarg :stringLen :type xcb:CARD32)
   (pad~1 :initform 20 :type xcb:-pad)
   (attributes :initarg :attributes :type xcb:-ignore)
   (attributes~ :initform
		'(name attributes type xcb:xprint:STRING8 size
		       (xcb:-fieldref 'stringLen))
		:type xcb:-list)))

(defclass xcb:xprint:PrintGetOneAttributes
  (xcb:-request)
  ((~opcode :initform 19 :type xcb:-u1)
   (context :initarg :context :type xcb:xprint:PCONTEXT)
   (nameLen :initarg :nameLen :type xcb:CARD32)
   (pool :initarg :pool :type xcb:CARD8)
   (pad~0 :initform 3 :type xcb:-pad)
   (name :initarg :name :type xcb:-ignore)
   (name~ :initform
	  '(name name type xcb:xprint:STRING8 size
		 (xcb:-fieldref 'nameLen))
	  :type xcb:-list)))
(defclass xcb:xprint:PrintGetOneAttributes~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (valueLen :initarg :valueLen :type xcb:CARD32)
   (pad~1 :initform 20 :type xcb:-pad)
   (value :initarg :value :type xcb:-ignore)
   (value~ :initform
	   '(name value type xcb:xprint:STRING8 size
		  (xcb:-fieldref 'valueLen))
	   :type xcb:-list)))

(defclass xcb:xprint:PrintSetAttributes
  (xcb:-request)
  ((~opcode :initform 18 :type xcb:-u1)
   (context :initarg :context :type xcb:xprint:PCONTEXT)
   (stringLen :initarg :stringLen :type xcb:CARD32)
   (pool :initarg :pool :type xcb:CARD8)
   (rule :initarg :rule :type xcb:CARD8)
   (pad~0 :initform 2 :type xcb:-pad)
   (attributes :initarg :attributes :type xcb:-ignore)
   (attributes~ :initform
		'(name attributes type xcb:xprint:STRING8 size nil)
		:type xcb:-list)))

(defclass xcb:xprint:PrintGetPageDimensions
  (xcb:-request)
  ((~opcode :initform 21 :type xcb:-u1)
   (context :initarg :context :type xcb:xprint:PCONTEXT)))
(defclass xcb:xprint:PrintGetPageDimensions~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (width :initarg :width :type xcb:CARD16)
   (height :initarg :height :type xcb:CARD16)
   (offset-x :initarg :offset-x :type xcb:CARD16)
   (offset-y :initarg :offset-y :type xcb:CARD16)
   (reproducible-width :initarg :reproducible-width :type xcb:CARD16)
   (reproducible-height :initarg :reproducible-height :type xcb:CARD16)))

(defclass xcb:xprint:PrintQueryScreens
  (xcb:-request)
  ((~opcode :initform 22 :type xcb:-u1)))
(defclass xcb:xprint:PrintQueryScreens~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (listCount :initarg :listCount :type xcb:CARD32)
   (pad~1 :initform 20 :type xcb:-pad)
   (roots :initarg :roots :type xcb:-ignore)
   (roots~ :initform
	   '(name roots type xcb:WINDOW size
		  (xcb:-fieldref 'listCount))
	   :type xcb:-list)))

(defclass xcb:xprint:PrintSetImageResolution
  (xcb:-request)
  ((~opcode :initform 23 :type xcb:-u1)
   (context :initarg :context :type xcb:xprint:PCONTEXT)
   (image-resolution :initarg :image-resolution :type xcb:CARD16)))
(defclass xcb:xprint:PrintSetImageResolution~reply
  (xcb:-reply)
  ((status :initarg :status :type xcb:BOOL)
   (previous-resolutions :initarg :previous-resolutions :type xcb:CARD16)))

(defclass xcb:xprint:PrintGetImageResolution
  (xcb:-request)
  ((~opcode :initform 24 :type xcb:-u1)
   (context :initarg :context :type xcb:xprint:PCONTEXT)))
(defclass xcb:xprint:PrintGetImageResolution~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (image-resolution :initarg :image-resolution :type xcb:CARD16)))

(defclass xcb:xprint:Notify
  (xcb:-event)
  ((detail :initarg :detail :type xcb:CARD8)
   (context :initarg :context :type xcb:xprint:PCONTEXT)
   (cancel :initarg :cancel :type xcb:BOOL)))

(defclass xcb:xprint:AttributNotify
  (xcb:-event)
  ((detail :initarg :detail :type xcb:CARD8)
   (context :initarg :context :type xcb:xprint:PCONTEXT)))

(defclass xcb:xprint:BadContext
  (xcb:-error)
  nil)

(defclass xcb:xprint:BadSequence
  (xcb:-error)
  nil)

(defconst xcb:xprint:error-number-class-alist
  '((0 . xcb:xprint:BadContext)
    (1 . xcb:xprint:BadSequence))
  "(error-number . error-class) alist")

(defconst xcb:xprint:event-number-class-alist
  '((0 . xcb:xprint:Notify)
    (1 . xcb:xprint:AttributNotify))
  "(event-number . event-class) alist")



(provide 'xcb-xprint)
