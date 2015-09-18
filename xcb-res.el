;;; -*- lexical-binding: t -*-
;; Copyright (C) 2015 Free Software Foundation, Inc.
;; This file was generated from `res.xml' by `el_client.el'.

(require 'xcb-types)

(defconst xcb:res:-extension-xname "X-Resource")
(defconst xcb:res:-extension-name "Res")
(defconst xcb:res:-major-version 1)
(defconst xcb:res:-minor-version 2)

(require 'xcb-xproto)

(defclass xcb:res:Client
  (xcb:-struct)
  ((resource-base :initarg :resource-base :type xcb:CARD32)
   (resource-mask :initarg :resource-mask :type xcb:CARD32)))

(defclass xcb:res:Type
  (xcb:-struct)
  ((resource-type :initarg :resource-type :type xcb:ATOM)
   (count :initarg :count :type xcb:CARD32)))

(defconst xcb:res:ClientIdMask:ClientXID 1)
(defconst xcb:res:ClientIdMask:LocalClientPID 2)

(defclass xcb:res:ClientIdSpec
  (xcb:-struct)
  ((client :initarg :client :type xcb:CARD32)
   (mask :initarg :mask :type xcb:CARD32)))

(defclass xcb:res:ClientIdValue
  (xcb:-struct)
  ((spec :initarg :spec :type xcb:res:ClientIdSpec)
   (length :initarg :length :type xcb:CARD32)
   (value :initarg :value :type xcb:-ignore)
   (value~ :initform
	   '(name value type xcb:CARD32 size
		  (xcb:-fieldref 'length))
	   :type xcb:-list)))

(defclass xcb:res:ResourceIdSpec
  (xcb:-struct)
  ((resource :initarg :resource :type xcb:CARD32)
   (type :initarg :type :type xcb:CARD32)))

(defclass xcb:res:ResourceSizeSpec
  (xcb:-struct)
  ((spec :initarg :spec :type xcb:res:ResourceIdSpec)
   (bytes :initarg :bytes :type xcb:CARD32)
   (ref-count :initarg :ref-count :type xcb:CARD32)
   (use-count :initarg :use-count :type xcb:CARD32)))

(defclass xcb:res:ResourceSizeValue
  (xcb:-struct)
  ((size :initarg :size :type xcb:res:ResourceSizeSpec)
   (num-cross-references :initarg :num-cross-references :type xcb:CARD32)
   (cross-references :initarg :cross-references :type xcb:-ignore)
   (cross-references~ :initform
		      '(name cross-references type xcb:res:ResourceSizeSpec size
			     (xcb:-fieldref 'num-cross-references))
		      :type xcb:-list)))

(defclass xcb:res:QueryVersion
  (xcb:-request)
  ((~opcode :initform 0 :type xcb:-u1)
   (client-major :initarg :client-major :type xcb:CARD8)
   (client-minor :initarg :client-minor :type xcb:CARD8)))
(defclass xcb:res:QueryVersion~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (server-major :initarg :server-major :type xcb:CARD16)
   (server-minor :initarg :server-minor :type xcb:CARD16)))

(defclass xcb:res:QueryClients
  (xcb:-request)
  ((~opcode :initform 1 :type xcb:-u1)))
(defclass xcb:res:QueryClients~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (num-clients :initarg :num-clients :type xcb:CARD32)
   (pad~1 :initform 20 :type xcb:-pad)
   (clients :initarg :clients :type xcb:-ignore)
   (clients~ :initform
	     '(name clients type xcb:res:Client size
		    (xcb:-fieldref 'num-clients))
	     :type xcb:-list)))

(defclass xcb:res:QueryClientResources
  (xcb:-request)
  ((~opcode :initform 2 :type xcb:-u1)
   (xid :initarg :xid :type xcb:CARD32)))
(defclass xcb:res:QueryClientResources~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (num-types :initarg :num-types :type xcb:CARD32)
   (pad~1 :initform 20 :type xcb:-pad)
   (types :initarg :types :type xcb:-ignore)
   (types~ :initform
	   '(name types type xcb:res:Type size
		  (xcb:-fieldref 'num-types))
	   :type xcb:-list)))

(defclass xcb:res:QueryClientPixmapBytes
  (xcb:-request)
  ((~opcode :initform 3 :type xcb:-u1)
   (xid :initarg :xid :type xcb:CARD32)))
(defclass xcb:res:QueryClientPixmapBytes~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (bytes :initarg :bytes :type xcb:CARD32)
   (bytes-overflow :initarg :bytes-overflow :type xcb:CARD32)))

(defclass xcb:res:QueryClientIds
  (xcb:-request)
  ((~opcode :initform 4 :type xcb:-u1)
   (num-specs :initarg :num-specs :type xcb:CARD32)
   (specs :initarg :specs :type xcb:-ignore)
   (specs~ :initform
	   '(name specs type xcb:res:ClientIdSpec size
		  (xcb:-fieldref 'num-specs))
	   :type xcb:-list)))
(defclass xcb:res:QueryClientIds~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (num-ids :initarg :num-ids :type xcb:CARD32)
   (pad~1 :initform 20 :type xcb:-pad)
   (ids :initarg :ids :type xcb:-ignore)
   (ids~ :initform
	 '(name ids type xcb:res:ClientIdValue size
		(xcb:-fieldref 'num-ids))
	 :type xcb:-list)))

(defclass xcb:res:QueryResourceBytes
  (xcb:-request)
  ((~opcode :initform 5 :type xcb:-u1)
   (client :initarg :client :type xcb:CARD32)
   (num-specs :initarg :num-specs :type xcb:CARD32)
   (specs :initarg :specs :type xcb:-ignore)
   (specs~ :initform
	   '(name specs type xcb:res:ResourceIdSpec size
		  (xcb:-fieldref 'num-specs))
	   :type xcb:-list)))
(defclass xcb:res:QueryResourceBytes~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (num-sizes :initarg :num-sizes :type xcb:CARD32)
   (pad~1 :initform 20 :type xcb:-pad)
   (sizes :initarg :sizes :type xcb:-ignore)
   (sizes~ :initform
	   '(name sizes type xcb:res:ResourceSizeValue size
		  (xcb:-fieldref 'num-sizes))
	   :type xcb:-list)))



(provide 'xcb-res)
