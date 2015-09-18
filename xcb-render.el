;;; -*- lexical-binding: t -*-
;; Copyright (C) 2015 Free Software Foundation, Inc.
;; This file was generated from `render.xml' by `el_client.el'.

(require 'xcb-types)

(defconst xcb:render:-extension-xname "RENDER")
(defconst xcb:render:-extension-name "Render")
(defconst xcb:render:-major-version 0)
(defconst xcb:render:-minor-version 11)

(require 'xcb-xproto)

(defconst xcb:render:PictType:Indexed 0)
(defconst xcb:render:PictType:Direct 1)

(defconst xcb:render:Picture:None 0)

(defconst xcb:render:PictOp:Clear 0)
(defconst xcb:render:PictOp:Src 1)
(defconst xcb:render:PictOp:Dst 2)
(defconst xcb:render:PictOp:Over 3)
(defconst xcb:render:PictOp:OverReverse 4)
(defconst xcb:render:PictOp:In 5)
(defconst xcb:render:PictOp:InReverse 6)
(defconst xcb:render:PictOp:Out 7)
(defconst xcb:render:PictOp:OutReverse 8)
(defconst xcb:render:PictOp:Atop 9)
(defconst xcb:render:PictOp:AtopReverse 10)
(defconst xcb:render:PictOp:Xor 11)
(defconst xcb:render:PictOp:Add 12)
(defconst xcb:render:PictOp:Saturate 13)
(defconst xcb:render:PictOp:DisjointClear 16)
(defconst xcb:render:PictOp:DisjointSrc 17)
(defconst xcb:render:PictOp:DisjointDst 18)
(defconst xcb:render:PictOp:DisjointOver 19)
(defconst xcb:render:PictOp:DisjointOverReverse 20)
(defconst xcb:render:PictOp:DisjointIn 21)
(defconst xcb:render:PictOp:DisjointInReverse 22)
(defconst xcb:render:PictOp:DisjointOut 23)
(defconst xcb:render:PictOp:DisjointOutReverse 24)
(defconst xcb:render:PictOp:DisjointAtop 25)
(defconst xcb:render:PictOp:DisjointAtopReverse 26)
(defconst xcb:render:PictOp:DisjointXor 27)
(defconst xcb:render:PictOp:ConjointClear 32)
(defconst xcb:render:PictOp:ConjointSrc 33)
(defconst xcb:render:PictOp:ConjointDst 34)
(defconst xcb:render:PictOp:ConjointOver 35)
(defconst xcb:render:PictOp:ConjointOverReverse 36)
(defconst xcb:render:PictOp:ConjointIn 37)
(defconst xcb:render:PictOp:ConjointInReverse 38)
(defconst xcb:render:PictOp:ConjointOut 39)
(defconst xcb:render:PictOp:ConjointOutReverse 40)
(defconst xcb:render:PictOp:ConjointAtop 41)
(defconst xcb:render:PictOp:ConjointAtopReverse 42)
(defconst xcb:render:PictOp:ConjointXor 43)
(defconst xcb:render:PictOp:Multiply 48)
(defconst xcb:render:PictOp:Screen 49)
(defconst xcb:render:PictOp:Overlay 50)
(defconst xcb:render:PictOp:Darken 51)
(defconst xcb:render:PictOp:Lighten 52)
(defconst xcb:render:PictOp:ColorDodge 53)
(defconst xcb:render:PictOp:ColorBurn 54)
(defconst xcb:render:PictOp:HardLight 55)
(defconst xcb:render:PictOp:SoftLight 56)
(defconst xcb:render:PictOp:Difference 57)
(defconst xcb:render:PictOp:Exclusion 58)
(defconst xcb:render:PictOp:HSLHue 59)
(defconst xcb:render:PictOp:HSLSaturation 60)
(defconst xcb:render:PictOp:HSLColor 61)
(defconst xcb:render:PictOp:HSLLuminosity 62)

(defconst xcb:render:PolyEdge:Sharp 0)
(defconst xcb:render:PolyEdge:Smooth 1)

(defconst xcb:render:PolyMode:Precise 0)
(defconst xcb:render:PolyMode:Imprecise 1)

(defconst xcb:render:CP:Repeat 1)
(defconst xcb:render:CP:AlphaMap 2)
(defconst xcb:render:CP:AlphaXOrigin 4)
(defconst xcb:render:CP:AlphaYOrigin 8)
(defconst xcb:render:CP:ClipXOrigin 16)
(defconst xcb:render:CP:ClipYOrigin 32)
(defconst xcb:render:CP:ClipMask 64)
(defconst xcb:render:CP:GraphicsExposure 128)
(defconst xcb:render:CP:SubwindowMode 256)
(defconst xcb:render:CP:PolyEdge 512)
(defconst xcb:render:CP:PolyMode 1024)
(defconst xcb:render:CP:Dither 2048)
(defconst xcb:render:CP:ComponentAlpha 4096)

(defconst xcb:render:SubPixel:Unknown 0)
(defconst xcb:render:SubPixel:HorizontalRGB 1)
(defconst xcb:render:SubPixel:HorizontalBGR 2)
(defconst xcb:render:SubPixel:VerticalRGB 3)
(defconst xcb:render:SubPixel:VerticalBGR 4)
(defconst xcb:render:SubPixel:None 5)

(defconst xcb:render:Repeat:None 0)
(defconst xcb:render:Repeat:Normal 1)
(defconst xcb:render:Repeat:Pad 2)
(defconst xcb:render:Repeat:Reflect 3)

(xcb:deftypealias 'xcb:render:GLYPH 'xcb:CARD32)

(xcb:deftypealias 'xcb:render:GLYPHSET 'xcb:-u4)

(xcb:deftypealias 'xcb:render:PICTURE 'xcb:-u4)

(xcb:deftypealias 'xcb:render:PICTFORMAT 'xcb:-u4)

(xcb:deftypealias 'xcb:render:FIXED 'xcb:INT32)

(defclass xcb:render:PictFormat
  (xcb:-error)
  nil)

(defclass xcb:render:Picture
  (xcb:-error)
  nil)

(defclass xcb:render:PictOp
  (xcb:-error)
  nil)

(defclass xcb:render:GlyphSet
  (xcb:-error)
  nil)

(defclass xcb:render:Glyph
  (xcb:-error)
  nil)

(defclass xcb:render:DIRECTFORMAT
  (xcb:-struct)
  ((red-shift :initarg :red-shift :type xcb:CARD16)
   (red-mask :initarg :red-mask :type xcb:CARD16)
   (green-shift :initarg :green-shift :type xcb:CARD16)
   (green-mask :initarg :green-mask :type xcb:CARD16)
   (blue-shift :initarg :blue-shift :type xcb:CARD16)
   (blue-mask :initarg :blue-mask :type xcb:CARD16)
   (alpha-shift :initarg :alpha-shift :type xcb:CARD16)
   (alpha-mask :initarg :alpha-mask :type xcb:CARD16)))

(defclass xcb:render:PICTFORMINFO
  (xcb:-struct)
  ((id :initarg :id :type xcb:render:PICTFORMAT)
   (type :initarg :type :type xcb:CARD8)
   (depth :initarg :depth :type xcb:CARD8)
   (pad~0 :initform 2 :type xcb:-pad)
   (direct :initarg :direct :type xcb:render:DIRECTFORMAT)
   (colormap :initarg :colormap :type xcb:COLORMAP)))

(defclass xcb:render:PICTVISUAL
  (xcb:-struct)
  ((visual :initarg :visual :type xcb:VISUALID)
   (format :initarg :format :type xcb:render:PICTFORMAT)))

(defclass xcb:render:PICTDEPTH
  (xcb:-struct)
  ((depth :initarg :depth :type xcb:CARD8)
   (pad~0 :initform 1 :type xcb:-pad)
   (num-visuals :initarg :num-visuals :type xcb:CARD16)
   (pad~1 :initform 4 :type xcb:-pad)
   (visuals :initarg :visuals :type xcb:-ignore)
   (visuals~ :initform
	     '(name visuals type xcb:render:PICTVISUAL size
		    (xcb:-fieldref 'num-visuals))
	     :type xcb:-list)))

(defclass xcb:render:PICTSCREEN
  (xcb:-struct)
  ((num-depths :initarg :num-depths :type xcb:CARD32)
   (fallback :initarg :fallback :type xcb:render:PICTFORMAT)
   (depths :initarg :depths :type xcb:-ignore)
   (depths~ :initform
	    '(name depths type xcb:render:PICTDEPTH size
		   (xcb:-fieldref 'num-depths))
	    :type xcb:-list)))

(defclass xcb:render:INDEXVALUE
  (xcb:-struct)
  ((pixel :initarg :pixel :type xcb:CARD32)
   (red :initarg :red :type xcb:CARD16)
   (green :initarg :green :type xcb:CARD16)
   (blue :initarg :blue :type xcb:CARD16)
   (alpha :initarg :alpha :type xcb:CARD16)))

(defclass xcb:render:COLOR
  (xcb:-struct)
  ((red :initarg :red :type xcb:CARD16)
   (green :initarg :green :type xcb:CARD16)
   (blue :initarg :blue :type xcb:CARD16)
   (alpha :initarg :alpha :type xcb:CARD16)))

(defclass xcb:render:POINTFIX
  (xcb:-struct)
  ((x :initarg :x :type xcb:render:FIXED)
   (y :initarg :y :type xcb:render:FIXED)))

(defclass xcb:render:LINEFIX
  (xcb:-struct)
  ((p1 :initarg :p1 :type xcb:render:POINTFIX)
   (p2 :initarg :p2 :type xcb:render:POINTFIX)))

(defclass xcb:render:TRIANGLE
  (xcb:-struct)
  ((p1 :initarg :p1 :type xcb:render:POINTFIX)
   (p2 :initarg :p2 :type xcb:render:POINTFIX)
   (p3 :initarg :p3 :type xcb:render:POINTFIX)))

(defclass xcb:render:TRAPEZOID
  (xcb:-struct)
  ((top :initarg :top :type xcb:render:FIXED)
   (bottom :initarg :bottom :type xcb:render:FIXED)
   (left :initarg :left :type xcb:render:LINEFIX)
   (right :initarg :right :type xcb:render:LINEFIX)))

(defclass xcb:render:GLYPHINFO
  (xcb:-struct)
  ((width :initarg :width :type xcb:CARD16)
   (height :initarg :height :type xcb:CARD16)
   (x :initarg :x :type xcb:INT16)
   (y :initarg :y :type xcb:INT16)
   (x-off :initarg :x-off :type xcb:INT16)
   (y-off :initarg :y-off :type xcb:INT16)))

(defclass xcb:render:QueryVersion
  (xcb:-request)
  ((~opcode :initform 0 :type xcb:-u1)
   (client-major-version :initarg :client-major-version :type xcb:CARD32)
   (client-minor-version :initarg :client-minor-version :type xcb:CARD32)))
(defclass xcb:render:QueryVersion~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (major-version :initarg :major-version :type xcb:CARD32)
   (minor-version :initarg :minor-version :type xcb:CARD32)
   (pad~1 :initform 16 :type xcb:-pad)))

(defclass xcb:render:QueryPictFormats
  (xcb:-request)
  ((~opcode :initform 1 :type xcb:-u1)))
(defclass xcb:render:QueryPictFormats~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (num-formats :initarg :num-formats :type xcb:CARD32)
   (num-screens :initarg :num-screens :type xcb:CARD32)
   (num-depths :initarg :num-depths :type xcb:CARD32)
   (num-visuals :initarg :num-visuals :type xcb:CARD32)
   (num-subpixel :initarg :num-subpixel :type xcb:CARD32)
   (pad~1 :initform 4 :type xcb:-pad)
   (formats :initarg :formats :type xcb:-ignore)
   (formats~ :initform
	     '(name formats type xcb:render:PICTFORMINFO size
		    (xcb:-fieldref 'num-formats))
	     :type xcb:-list)
   (pad~2 :initform 4 :type xcb:-pad-align)
   (screens :initarg :screens :type xcb:-ignore)
   (screens~ :initform
	     '(name screens type xcb:render:PICTSCREEN size
		    (xcb:-fieldref 'num-screens))
	     :type xcb:-list)
   (pad~3 :initform 4 :type xcb:-pad-align)
   (subpixels :initarg :subpixels :type xcb:-ignore)
   (subpixels~ :initform
	       '(name subpixels type xcb:CARD32 size
		      (xcb:-fieldref 'num-subpixel))
	       :type xcb:-list)))

(defclass xcb:render:QueryPictIndexValues
  (xcb:-request)
  ((~opcode :initform 2 :type xcb:-u1)
   (format :initarg :format :type xcb:render:PICTFORMAT)))
(defclass xcb:render:QueryPictIndexValues~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (num-values :initarg :num-values :type xcb:CARD32)
   (pad~1 :initform 20 :type xcb:-pad)
   (values :initarg :values :type xcb:-ignore)
   (values~ :initform
	    '(name values type xcb:render:INDEXVALUE size
		   (xcb:-fieldref 'num-values))
	    :type xcb:-list)))

(defclass xcb:render:CreatePicture
  (xcb:-request)
  ((~opcode :initform 4 :type xcb:-u1)
   (pid :initarg :pid :type xcb:render:PICTURE)
   (drawable :initarg :drawable :type xcb:DRAWABLE)
   (format :initarg :format :type xcb:render:PICTFORMAT)
   (value-mask :initarg :value-mask :type xcb:CARD32)
   (value-list :initform
	       '(expression
		 (xcb:-fieldref 'value-mask)
		 cases
		 ((xcb:render:CP:Repeat repeat)
		  (xcb:render:CP:AlphaMap alphamap)
		  (xcb:render:CP:AlphaXOrigin alphaxorigin)
		  (xcb:render:CP:AlphaYOrigin alphayorigin)
		  (xcb:render:CP:ClipXOrigin clipxorigin)
		  (xcb:render:CP:ClipYOrigin clipyorigin)
		  (xcb:render:CP:ClipMask clipmask)
		  (xcb:render:CP:GraphicsExposure graphicsexposure)
		  (xcb:render:CP:SubwindowMode subwindowmode)
		  (xcb:render:CP:PolyEdge polyedge)
		  (xcb:render:CP:PolyMode polymode)
		  (xcb:render:CP:Dither dither)
		  (xcb:render:CP:ComponentAlpha componentalpha)))
	       :type xcb:-switch)
   (repeat :initarg :repeat :type xcb:CARD32)
   (alphamap :initarg :alphamap :type xcb:render:PICTURE)
   (alphaxorigin :initarg :alphaxorigin :type xcb:INT32)
   (alphayorigin :initarg :alphayorigin :type xcb:INT32)
   (clipxorigin :initarg :clipxorigin :type xcb:INT32)
   (clipyorigin :initarg :clipyorigin :type xcb:INT32)
   (clipmask :initarg :clipmask :type xcb:PIXMAP)
   (graphicsexposure :initarg :graphicsexposure :type xcb:CARD32)
   (subwindowmode :initarg :subwindowmode :type xcb:CARD32)
   (polyedge :initarg :polyedge :type xcb:CARD32)
   (polymode :initarg :polymode :type xcb:CARD32)
   (dither :initarg :dither :type xcb:ATOM)
   (componentalpha :initarg :componentalpha :type xcb:CARD32)))

(defclass xcb:render:ChangePicture
  (xcb:-request)
  ((~opcode :initform 5 :type xcb:-u1)
   (picture :initarg :picture :type xcb:render:PICTURE)
   (value-mask :initarg :value-mask :type xcb:CARD32)
   (value-list :initform
	       '(expression
		 (xcb:-fieldref 'value-mask)
		 cases
		 ((xcb:render:CP:Repeat repeat)
		  (xcb:render:CP:AlphaMap alphamap)
		  (xcb:render:CP:AlphaXOrigin alphaxorigin)
		  (xcb:render:CP:AlphaYOrigin alphayorigin)
		  (xcb:render:CP:ClipXOrigin clipxorigin)
		  (xcb:render:CP:ClipYOrigin clipyorigin)
		  (xcb:render:CP:ClipMask clipmask)
		  (xcb:render:CP:GraphicsExposure graphicsexposure)
		  (xcb:render:CP:SubwindowMode subwindowmode)
		  (xcb:render:CP:PolyEdge polyedge)
		  (xcb:render:CP:PolyMode polymode)
		  (xcb:render:CP:Dither dither)
		  (xcb:render:CP:ComponentAlpha componentalpha)))
	       :type xcb:-switch)
   (repeat :initarg :repeat :type xcb:CARD32)
   (alphamap :initarg :alphamap :type xcb:render:PICTURE)
   (alphaxorigin :initarg :alphaxorigin :type xcb:INT32)
   (alphayorigin :initarg :alphayorigin :type xcb:INT32)
   (clipxorigin :initarg :clipxorigin :type xcb:INT32)
   (clipyorigin :initarg :clipyorigin :type xcb:INT32)
   (clipmask :initarg :clipmask :type xcb:PIXMAP)
   (graphicsexposure :initarg :graphicsexposure :type xcb:CARD32)
   (subwindowmode :initarg :subwindowmode :type xcb:CARD32)
   (polyedge :initarg :polyedge :type xcb:CARD32)
   (polymode :initarg :polymode :type xcb:CARD32)
   (dither :initarg :dither :type xcb:ATOM)
   (componentalpha :initarg :componentalpha :type xcb:CARD32)))

(defclass xcb:render:SetPictureClipRectangles
  (xcb:-request)
  ((~opcode :initform 6 :type xcb:-u1)
   (picture :initarg :picture :type xcb:render:PICTURE)
   (clip-x-origin :initarg :clip-x-origin :type xcb:INT16)
   (clip-y-origin :initarg :clip-y-origin :type xcb:INT16)
   (rectangles :initarg :rectangles :type xcb:-ignore)
   (rectangles~ :initform
		'(name rectangles type xcb:RECTANGLE size nil)
		:type xcb:-list)))

(defclass xcb:render:FreePicture
  (xcb:-request)
  ((~opcode :initform 7 :type xcb:-u1)
   (picture :initarg :picture :type xcb:render:PICTURE)))

(defclass xcb:render:Composite
  (xcb:-request)
  ((~opcode :initform 8 :type xcb:-u1)
   (op :initarg :op :type xcb:CARD8)
   (pad~0 :initform 3 :type xcb:-pad)
   (src :initarg :src :type xcb:render:PICTURE)
   (mask :initarg :mask :type xcb:render:PICTURE)
   (dst :initarg :dst :type xcb:render:PICTURE)
   (src-x :initarg :src-x :type xcb:INT16)
   (src-y :initarg :src-y :type xcb:INT16)
   (mask-x :initarg :mask-x :type xcb:INT16)
   (mask-y :initarg :mask-y :type xcb:INT16)
   (dst-x :initarg :dst-x :type xcb:INT16)
   (dst-y :initarg :dst-y :type xcb:INT16)
   (width :initarg :width :type xcb:CARD16)
   (height :initarg :height :type xcb:CARD16)))

(defclass xcb:render:Trapezoids
  (xcb:-request)
  ((~opcode :initform 10 :type xcb:-u1)
   (op :initarg :op :type xcb:CARD8)
   (pad~0 :initform 3 :type xcb:-pad)
   (src :initarg :src :type xcb:render:PICTURE)
   (dst :initarg :dst :type xcb:render:PICTURE)
   (mask-format :initarg :mask-format :type xcb:render:PICTFORMAT)
   (src-x :initarg :src-x :type xcb:INT16)
   (src-y :initarg :src-y :type xcb:INT16)
   (traps :initarg :traps :type xcb:-ignore)
   (traps~ :initform
	   '(name traps type xcb:render:TRAPEZOID size nil)
	   :type xcb:-list)))

(defclass xcb:render:Triangles
  (xcb:-request)
  ((~opcode :initform 11 :type xcb:-u1)
   (op :initarg :op :type xcb:CARD8)
   (pad~0 :initform 3 :type xcb:-pad)
   (src :initarg :src :type xcb:render:PICTURE)
   (dst :initarg :dst :type xcb:render:PICTURE)
   (mask-format :initarg :mask-format :type xcb:render:PICTFORMAT)
   (src-x :initarg :src-x :type xcb:INT16)
   (src-y :initarg :src-y :type xcb:INT16)
   (triangles :initarg :triangles :type xcb:-ignore)
   (triangles~ :initform
	       '(name triangles type xcb:render:TRIANGLE size nil)
	       :type xcb:-list)))

(defclass xcb:render:TriStrip
  (xcb:-request)
  ((~opcode :initform 12 :type xcb:-u1)
   (op :initarg :op :type xcb:CARD8)
   (pad~0 :initform 3 :type xcb:-pad)
   (src :initarg :src :type xcb:render:PICTURE)
   (dst :initarg :dst :type xcb:render:PICTURE)
   (mask-format :initarg :mask-format :type xcb:render:PICTFORMAT)
   (src-x :initarg :src-x :type xcb:INT16)
   (src-y :initarg :src-y :type xcb:INT16)
   (points :initarg :points :type xcb:-ignore)
   (points~ :initform
	    '(name points type xcb:render:POINTFIX size nil)
	    :type xcb:-list)))

(defclass xcb:render:TriFan
  (xcb:-request)
  ((~opcode :initform 13 :type xcb:-u1)
   (op :initarg :op :type xcb:CARD8)
   (pad~0 :initform 3 :type xcb:-pad)
   (src :initarg :src :type xcb:render:PICTURE)
   (dst :initarg :dst :type xcb:render:PICTURE)
   (mask-format :initarg :mask-format :type xcb:render:PICTFORMAT)
   (src-x :initarg :src-x :type xcb:INT16)
   (src-y :initarg :src-y :type xcb:INT16)
   (points :initarg :points :type xcb:-ignore)
   (points~ :initform
	    '(name points type xcb:render:POINTFIX size nil)
	    :type xcb:-list)))

(defclass xcb:render:CreateGlyphSet
  (xcb:-request)
  ((~opcode :initform 17 :type xcb:-u1)
   (gsid :initarg :gsid :type xcb:render:GLYPHSET)
   (format :initarg :format :type xcb:render:PICTFORMAT)))

(defclass xcb:render:ReferenceGlyphSet
  (xcb:-request)
  ((~opcode :initform 18 :type xcb:-u1)
   (gsid :initarg :gsid :type xcb:render:GLYPHSET)
   (existing :initarg :existing :type xcb:render:GLYPHSET)))

(defclass xcb:render:FreeGlyphSet
  (xcb:-request)
  ((~opcode :initform 19 :type xcb:-u1)
   (glyphset :initarg :glyphset :type xcb:render:GLYPHSET)))

(defclass xcb:render:AddGlyphs
  (xcb:-request)
  ((~opcode :initform 20 :type xcb:-u1)
   (glyphset :initarg :glyphset :type xcb:render:GLYPHSET)
   (glyphs-len :initarg :glyphs-len :type xcb:CARD32)
   (glyphids :initarg :glyphids :type xcb:-ignore)
   (glyphids~ :initform
	      '(name glyphids type xcb:CARD32 size
		     (xcb:-fieldref 'glyphs-len))
	      :type xcb:-list)
   (pad~0 :initform 4 :type xcb:-pad-align)
   (glyphs :initarg :glyphs :type xcb:-ignore)
   (glyphs~ :initform
	    '(name glyphs type xcb:render:GLYPHINFO size
		   (xcb:-fieldref 'glyphs-len))
	    :type xcb:-list)
   (pad~1 :initform 4 :type xcb:-pad-align)
   (data :initarg :data :type xcb:-ignore)
   (data~ :initform
	  '(name data type xcb:BYTE size nil)
	  :type xcb:-list)))

(defclass xcb:render:FreeGlyphs
  (xcb:-request)
  ((~opcode :initform 22 :type xcb:-u1)
   (glyphset :initarg :glyphset :type xcb:render:GLYPHSET)
   (glyphs :initarg :glyphs :type xcb:-ignore)
   (glyphs~ :initform
	    '(name glyphs type xcb:render:GLYPH size nil)
	    :type xcb:-list)))

(defclass xcb:render:CompositeGlyphs8
  (xcb:-request)
  ((~opcode :initform 23 :type xcb:-u1)
   (op :initarg :op :type xcb:CARD8)
   (pad~0 :initform 3 :type xcb:-pad)
   (src :initarg :src :type xcb:render:PICTURE)
   (dst :initarg :dst :type xcb:render:PICTURE)
   (mask-format :initarg :mask-format :type xcb:render:PICTFORMAT)
   (glyphset :initarg :glyphset :type xcb:render:GLYPHSET)
   (src-x :initarg :src-x :type xcb:INT16)
   (src-y :initarg :src-y :type xcb:INT16)
   (glyphcmds :initarg :glyphcmds :type xcb:-ignore)
   (glyphcmds~ :initform
	       '(name glyphcmds type xcb:BYTE size nil)
	       :type xcb:-list)))

(defclass xcb:render:CompositeGlyphs16
  (xcb:-request)
  ((~opcode :initform 24 :type xcb:-u1)
   (op :initarg :op :type xcb:CARD8)
   (pad~0 :initform 3 :type xcb:-pad)
   (src :initarg :src :type xcb:render:PICTURE)
   (dst :initarg :dst :type xcb:render:PICTURE)
   (mask-format :initarg :mask-format :type xcb:render:PICTFORMAT)
   (glyphset :initarg :glyphset :type xcb:render:GLYPHSET)
   (src-x :initarg :src-x :type xcb:INT16)
   (src-y :initarg :src-y :type xcb:INT16)
   (glyphcmds :initarg :glyphcmds :type xcb:-ignore)
   (glyphcmds~ :initform
	       '(name glyphcmds type xcb:BYTE size nil)
	       :type xcb:-list)))

(defclass xcb:render:CompositeGlyphs32
  (xcb:-request)
  ((~opcode :initform 25 :type xcb:-u1)
   (op :initarg :op :type xcb:CARD8)
   (pad~0 :initform 3 :type xcb:-pad)
   (src :initarg :src :type xcb:render:PICTURE)
   (dst :initarg :dst :type xcb:render:PICTURE)
   (mask-format :initarg :mask-format :type xcb:render:PICTFORMAT)
   (glyphset :initarg :glyphset :type xcb:render:GLYPHSET)
   (src-x :initarg :src-x :type xcb:INT16)
   (src-y :initarg :src-y :type xcb:INT16)
   (glyphcmds :initarg :glyphcmds :type xcb:-ignore)
   (glyphcmds~ :initform
	       '(name glyphcmds type xcb:BYTE size nil)
	       :type xcb:-list)))

(defclass xcb:render:FillRectangles
  (xcb:-request)
  ((~opcode :initform 26 :type xcb:-u1)
   (op :initarg :op :type xcb:CARD8)
   (pad~0 :initform 3 :type xcb:-pad)
   (dst :initarg :dst :type xcb:render:PICTURE)
   (color :initarg :color :type xcb:render:COLOR)
   (rects :initarg :rects :type xcb:-ignore)
   (rects~ :initform
	   '(name rects type xcb:RECTANGLE size nil)
	   :type xcb:-list)))

(defclass xcb:render:CreateCursor
  (xcb:-request)
  ((~opcode :initform 27 :type xcb:-u1)
   (cid :initarg :cid :type xcb:CURSOR)
   (source :initarg :source :type xcb:render:PICTURE)
   (x :initarg :x :type xcb:CARD16)
   (y :initarg :y :type xcb:CARD16)))

(defclass xcb:render:TRANSFORM
  (xcb:-struct)
  ((matrix11 :initarg :matrix11 :type xcb:render:FIXED)
   (matrix12 :initarg :matrix12 :type xcb:render:FIXED)
   (matrix13 :initarg :matrix13 :type xcb:render:FIXED)
   (matrix21 :initarg :matrix21 :type xcb:render:FIXED)
   (matrix22 :initarg :matrix22 :type xcb:render:FIXED)
   (matrix23 :initarg :matrix23 :type xcb:render:FIXED)
   (matrix31 :initarg :matrix31 :type xcb:render:FIXED)
   (matrix32 :initarg :matrix32 :type xcb:render:FIXED)
   (matrix33 :initarg :matrix33 :type xcb:render:FIXED)))

(defclass xcb:render:SetPictureTransform
  (xcb:-request)
  ((~opcode :initform 28 :type xcb:-u1)
   (picture :initarg :picture :type xcb:render:PICTURE)
   (transform :initarg :transform :type xcb:render:TRANSFORM)))

(defclass xcb:render:QueryFilters
  (xcb:-request)
  ((~opcode :initform 29 :type xcb:-u1)
   (drawable :initarg :drawable :type xcb:DRAWABLE)))
(defclass xcb:render:QueryFilters~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (num-aliases :initarg :num-aliases :type xcb:CARD32)
   (num-filters :initarg :num-filters :type xcb:CARD32)
   (pad~1 :initform 16 :type xcb:-pad)
   (aliases :initarg :aliases :type xcb:-ignore)
   (aliases~ :initform
	     '(name aliases type xcb:CARD16 size
		    (xcb:-fieldref 'num-aliases))
	     :type xcb:-list)
   (pad~2 :initform 4 :type xcb:-pad-align)
   (filters :initarg :filters :type xcb:-ignore)
   (filters~ :initform
	     '(name filters type xcb:STR size
		    (xcb:-fieldref 'num-filters))
	     :type xcb:-list)))

(defclass xcb:render:SetPictureFilter
  (xcb:-request)
  ((~opcode :initform 30 :type xcb:-u1)
   (picture :initarg :picture :type xcb:render:PICTURE)
   (filter-len :initarg :filter-len :type xcb:CARD16)
   (pad~0 :initform 2 :type xcb:-pad)
   (filter :initarg :filter :type xcb:-ignore)
   (filter~ :initform
	    '(name filter type xcb:char size
		   (xcb:-fieldref 'filter-len))
	    :type xcb:-list)
   (pad~1 :initform 4 :type xcb:-pad-align)
   (values :initarg :values :type xcb:-ignore)
   (values~ :initform
	    '(name values type xcb:render:FIXED size nil)
	    :type xcb:-list)))

(defclass xcb:render:ANIMCURSORELT
  (xcb:-struct)
  ((cursor :initarg :cursor :type xcb:CURSOR)
   (delay :initarg :delay :type xcb:CARD32)))

(defclass xcb:render:CreateAnimCursor
  (xcb:-request)
  ((~opcode :initform 31 :type xcb:-u1)
   (cid :initarg :cid :type xcb:CURSOR)
   (cursors :initarg :cursors :type xcb:-ignore)
   (cursors~ :initform
	     '(name cursors type xcb:render:ANIMCURSORELT size nil)
	     :type xcb:-list)))

(defclass xcb:render:SPANFIX
  (xcb:-struct)
  ((l :initarg :l :type xcb:render:FIXED)
   (r :initarg :r :type xcb:render:FIXED)
   (y :initarg :y :type xcb:render:FIXED)))

(defclass xcb:render:TRAP
  (xcb:-struct)
  ((top :initarg :top :type xcb:render:SPANFIX)
   (bot :initarg :bot :type xcb:render:SPANFIX)))

(defclass xcb:render:AddTraps
  (xcb:-request)
  ((~opcode :initform 32 :type xcb:-u1)
   (picture :initarg :picture :type xcb:render:PICTURE)
   (x-off :initarg :x-off :type xcb:INT16)
   (y-off :initarg :y-off :type xcb:INT16)
   (traps :initarg :traps :type xcb:-ignore)
   (traps~ :initform
	   '(name traps type xcb:render:TRAP size nil)
	   :type xcb:-list)))

(defclass xcb:render:CreateSolidFill
  (xcb:-request)
  ((~opcode :initform 33 :type xcb:-u1)
   (picture :initarg :picture :type xcb:render:PICTURE)
   (color :initarg :color :type xcb:render:COLOR)))

(defclass xcb:render:CreateLinearGradient
  (xcb:-request)
  ((~opcode :initform 34 :type xcb:-u1)
   (picture :initarg :picture :type xcb:render:PICTURE)
   (p1 :initarg :p1 :type xcb:render:POINTFIX)
   (p2 :initarg :p2 :type xcb:render:POINTFIX)
   (num-stops :initarg :num-stops :type xcb:CARD32)
   (stops :initarg :stops :type xcb:-ignore)
   (stops~ :initform
	   '(name stops type xcb:render:FIXED size
		  (xcb:-fieldref 'num-stops))
	   :type xcb:-list)
   (pad~0 :initform 4 :type xcb:-pad-align)
   (colors :initarg :colors :type xcb:-ignore)
   (colors~ :initform
	    '(name colors type xcb:render:COLOR size
		   (xcb:-fieldref 'num-stops))
	    :type xcb:-list)))

(defclass xcb:render:CreateRadialGradient
  (xcb:-request)
  ((~opcode :initform 35 :type xcb:-u1)
   (picture :initarg :picture :type xcb:render:PICTURE)
   (inner :initarg :inner :type xcb:render:POINTFIX)
   (outer :initarg :outer :type xcb:render:POINTFIX)
   (inner-radius :initarg :inner-radius :type xcb:render:FIXED)
   (outer-radius :initarg :outer-radius :type xcb:render:FIXED)
   (num-stops :initarg :num-stops :type xcb:CARD32)
   (stops :initarg :stops :type xcb:-ignore)
   (stops~ :initform
	   '(name stops type xcb:render:FIXED size
		  (xcb:-fieldref 'num-stops))
	   :type xcb:-list)
   (pad~0 :initform 4 :type xcb:-pad-align)
   (colors :initarg :colors :type xcb:-ignore)
   (colors~ :initform
	    '(name colors type xcb:render:COLOR size
		   (xcb:-fieldref 'num-stops))
	    :type xcb:-list)))

(defclass xcb:render:CreateConicalGradient
  (xcb:-request)
  ((~opcode :initform 36 :type xcb:-u1)
   (picture :initarg :picture :type xcb:render:PICTURE)
   (center :initarg :center :type xcb:render:POINTFIX)
   (angle :initarg :angle :type xcb:render:FIXED)
   (num-stops :initarg :num-stops :type xcb:CARD32)
   (stops :initarg :stops :type xcb:-ignore)
   (stops~ :initform
	   '(name stops type xcb:render:FIXED size
		  (xcb:-fieldref 'num-stops))
	   :type xcb:-list)
   (pad~0 :initform 4 :type xcb:-pad-align)
   (colors :initarg :colors :type xcb:-ignore)
   (colors~ :initform
	    '(name colors type xcb:render:COLOR size
		   (xcb:-fieldref 'num-stops))
	    :type xcb:-list)))

(defconst xcb:render:error-number-class-alist
  '((0 . xcb:render:PictFormat)
    (1 . xcb:render:Picture)
    (2 . xcb:render:PictOp)
    (3 . xcb:render:GlyphSet)
    (4 . xcb:render:Glyph))
  "(error-number . error-class) alist")



(provide 'xcb-render)
