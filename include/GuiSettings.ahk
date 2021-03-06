﻿; LintaList Include
; Purpose: Set and Toggle values for GUI (width, height and position of controls)
; Version: 1.0.2
; Date:    20140423

GuiStartupSettings:
SearchBoxWidth:=CompactWidth-30  ; Searchbox Width
YCtrl=26                         ; Y pos of controls
YLView=45                        ; Y pos of Listview (e.g. bundle/search results)
ExtraLV=0
If (Width > CompactWidth)        ; if not change
	{
	 Yctrl=4
	 YLView=25
	 ExtraLV=20
	}
	

Gosub, GuiRadioAndCheckPos

VisibleRows:=Ceil(LVHeight/20)  ; TODO: Calculate correct value for 20 for pagedown/pageup as is just a rough guess

Return

GuiToggleSettings:
If (Width < WideWidth)
	{
	 Width:=WideWidth
	 Height:=WideHeight
	 Yctrl=4
	 YLView=25
	 ExtraLV=20
	}
Else
   { 
	Width:=CompactWidth
	Height:=CompactHeight
	Yctrl=26
	YLView=45
	ExtraLV=0
   }	
Gosub, GuiRadioAndCheckPos
Return

GuiRadioAndCheckPos:

mgx:=Width-50   ; position of magic radio
rex:=Width-100	; position of regexp radio
fzx:=Width-150  ; position of fuzzy radio
nox:=Width-200	; position of normal radio
cax:=Width-243  ; position of case sensitive checkbox
lox:=Width-286  ; position of lock checkbox
lex:=Width-329  ; position of letter variations checkbox

LVWidth:=Width-2                			; Listview Width
LVHeight:=Height-PreviewHeight-70+ExtraLV   ; Listview Height
YPosPreview:=Height-PreviewHeight-22    	; 

Return