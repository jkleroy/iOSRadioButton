#tag Class
Protected Class MobileRadioButton
Inherits MobileButton
	#tag Event
		Sub Opening()
		  //Setup the left / leading alignment
		  Const UIControlContentHorizontalAlignmentLeading = 4
		  
		  Declare sub setContentHorizontalAlignment lib "UIKit" Selector "setContentHorizontalAlignment:" (obj as ptr, value as Integer)
		  setContentHorizontalAlignment(self.Handle, UIControlContentHorizontalAlignmentLeading)
		  
		  
		  //Setup the default pictures
		  Dim normal As Picture = Picture.SystemImage("circle", 0, Picture.SystemImageWeights.Light)
		  Dim selected As Picture = Picture.SystemImage("record.circle", 0, Picture.SystemImageWeights.Light)
		  
		  if normal is nil or selected is nil then
		    self.mrequiresFallbackImages = True
		  end if
		  
		  self.picNormal = normal
		  self.picSelected = selected
		  
		  RaiseEvent Opening
		  
		  SetupUI(picnormal, picselected)
		  
		  
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Pressed()
		  self.selected = True
		  
		  
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h1
		Protected Function BestRepresentationXC(image As Picture) As Picture
		  
		  if image is nil then Return nil
		  
		  if image.ImageCount = 0 then Return image
		  
		  Dim scale As Double = MainScreenScaleXC
		  
		  Return image.BestRepresentation(image.Width, image.Height, scale)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 47726F757073204D6F62696C65526164696F427574746F6E20636F6E74726F6C7320746F676574686572
		Function GroupButtons() As MobileRadioButton()
		  
		  if sharedLinks.Count > 0 then
		    Dim buttons() As MobileRadioButton
		    
		    For each w as WeakRef in sharedLinks
		      
		      Dim rb As MobileRadioButton = MobileRadioButton(w.Value)
		      
		      buttons.Add rb
		      
		    Next w
		    Return buttons
		  end if
		  
		  Return nil
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GroupButtons(assigns buttons() as MobileRadioButton)
		  
		  sharedLinks.ResizeTo(-1)
		  
		  for each bt as MobileRadioButton in buttons
		    
		    sharedLinks.Add new WeakRef(bt)
		    
		  next bt
		  
		  for each bt as MobileRadioButton in buttons
		    if bt <> self then
		      bt.sharedLinks = self.sharedLinks
		    end if
		    
		  next bt
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1, Description = 52657475726E7320746865207363616C65206F66207468652063757272656E74204D61696E53637265656E
		Protected Function MainScreenScaleXC() As Double
		  //declare function NSClassFromString lib "Foundation.Framework" (aClassName as CFStringRef) as Ptr
		  Declare Function NSClassFromString Lib "Foundation" (aClassName As CFStringRef) As Ptr
		  Soft Declare Function scale Lib "UIKit" selector "scale" (classRef As Ptr) As CGFloat
		  Soft Declare Function mainScreen Lib "UIKit" selector "mainScreen" (classRef As Ptr) As ptr
		  
		  
		  Dim scale As Double = scale(mainScreen(NSClassFromString("UIScreen")))
		  
		  Return scale
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73207468652063757272656E746C792073656C656374656420627574746F6E2E2052657475726E73206E696C206966206E6F20627574746F6E2069732073656C65637465642E
		Function SelectedButton() As MobileRadioButton
		  if self.Selected then
		    Return self
		    
		  else
		    
		    For each w as WeakRef in sharedLinks
		      
		      Dim rb As MobileRadioButton = MobileRadioButton(w.Value)
		      
		      if rb.selected then Return rb
		      
		    Next w
		    
		  end if
		  
		  Return nil
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( hidden = True )  Sub SetButtonSelected(value As Boolean, sendEvent As Boolean)
		  
		  
		  
		  'Declare sub selected_ lib "UIKit" selector "setSelected:" (obj as ptr, value as Boolean)
		  
		  Dim valueChanged As Boolean = (self.selected <> value)
		  'selected_(self.Handle, value)
		  mSelected = value
		  
		  if valueChanged then
		    if value then
		      self.SetImageXC(picSelected, UIControlState.normal)
		    else
		      self.SetImageXC(picNormal, UIControlState.normal)
		    end if
		  end if
		  
		  'Declare Function NSClassFromString Lib "Foundation" (className As CFStringRef) As Ptr
		  'Declare Function colorWithRGBA Lib "UIKit.framework" Selector "colorWithRed:green:blue:alpha:" ( UIColorClassRef As Ptr, red As CGFloat, green As CGFloat, blue As CGFloat, alpha As CGFloat) As Ptr
		  'Declare Function view Lib "UIKit.framework" Selector "view" (UIViewController As Ptr) As Ptr
		  'Declare Sub setBackgroundColor Lib "UIKit.framework" Selector "setBackgroundColor:" (UIView As Ptr, UIColor As Ptr)
		  '
		  'Dim col As color = color.Clear
		  'Dim UIColorClassPtr As Ptr =  NSClassFromString("UIColor")
		  'Dim colorPtr As ptr = colorWithRGBA(UIColorClassPtr, (col.red / 255.0), (col.Green / 255.0), (col.Blue / 255.0), (1.0-col.Alpha/255.0))
		  'Dim viewPtr As Ptr = self.Handle
		  'SetBackgroundColor(viewPtr, colorPtr)
		  
		  if valueChanged and sendEvent then
		    RaiseEvent valueChanged
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1, Description = 5365747320746865205069637475726520746F2062652075736564206E65787420746F207468652063617074696F6E2E
		Protected Sub SetImageXC(image As Picture, state As UIControlState = UIControlState.normal)
		  'This method was posted by Jim McKay in the https://forum.xojo.com/18184-button-and-view-colours-ios/last thread
		  'on 12/12/2014
		  
		  Declare Sub setImage Lib "UIKit" selector "setImage:forState:" (obj As ptr, value As ptr, state As UIControlState)
		  
		  If image Is Nil Then
		    setImage(self.Handle, Nil, state)
		  Else
		    Dim bestImg As Picture = BestRepresentationXC(image)
		    
		    'setImage(bt.Handle, bestImg.CopyOSHandle(picture.HandleType.iOSUIImage), state)
		    setImage(self.Handle, bestImg.handle, state)
		    
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub SetSelected(value As Boolean, distinct As Boolean, sendEvent As Boolean)
		  
		  
		  self.SetButtonSelected(value, sendEvent)
		  
		  if distinct and (value or sharedLinks.Count = 2) then
		    
		    value = not value
		    For each w as WeakRef in sharedLinks
		      
		      Dim rb As MobileRadioButton = MobileRadioButton(w.Value)
		      if rb <> self then
		        rb.SetButtonSelected(value, value)
		      end if
		      
		    Next w
		    
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657475707320746865205573657220496E7465726661636520666F722074686520627574746F6E207573696E6720746865207061737365642070696374757265732E
		Sub SetupUI(normal As Picture, selected As Picture)
		  
		  SetImageXC(if(self.mSelected, selected, normal))
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 556E73656C6563747320616C6C20627574746F6E7320696E207468652067726F75702E
		Sub UnselectAllButtons()
		  
		  
		  
		  For each w as WeakRef in sharedLinks
		    
		    Dim rb As MobileRadioButton = MobileRadioButton(w.Value)
		    
		    rb.SetButtonSelected(False, False)
		    
		  Next w
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event Opening()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event ValueChanged()
	#tag EndHook


	#tag Property, Flags = &h21
		Private mrequiresFallbackImages As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mSelected As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		picNormal As Picture
	#tag EndProperty

	#tag Property, Flags = &h0
		picSelected As Picture
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0, Description = 496620746869732070726F70657274792072657475726E7320747275652C20796F752061726520726573706F6E7369626C6520666F722073657474696E67207069634E6F726D616C20616E642070696353656C65637465642070696374757265732E20546869732077696C6C206F6E6C792068617070656E206F6E20694F53313120616E6420694F5331322E
		#tag Getter
			Get
			  Return mrequiresFallbackImages
			End Get
		#tag EndGetter
		requiresFallbackImages As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mSelected
			  
			  Declare function isSelected lib "UIKit" selector "isSelected" (obj as ptr) as Boolean
			  
			  Return isSelected(self.handle)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  
			  self.SetSelected(value, true, value)
			End Set
		#tag EndSetter
		Selected As Boolean
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		Attributes( hidden = True ) sharedLinks() As WeakRef
	#tag EndProperty

	#tag Property, Flags = &h0, Description = 54686520746167206F662074686520726164696F20627574746F6E2E
		tag As Variant
	#tag EndProperty


	#tag Enum, Name = UIControlState, Flags = &h1
		normal
		  highlighted
		  disabled
		  selected
		focused
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Visible=true
			Group="Behavior"
			InitialValue="30"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Visible=true
			Group="Behavior"
			InitialValue="100"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Caption"
			Visible=true
			Group="Behavior"
			InitialValue="Button"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CaptionColor"
			Visible=true
			Group="Behavior"
			InitialValue="&c007AFF00"
			Type="ColorGroup"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Selected"
			Visible=true
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="requiresFallbackImages"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Enabled"
			Visible=true
			Group="UI Control"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Visible"
			Visible=true
			Group="UI Control"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TintColor"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="ColorGroup"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ControlCount"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AccessibilityHint"
			Visible=false
			Group="UI Control"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AccessibilityLabel"
			Visible=false
			Group="UI Control"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="mSelected"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="picNormal"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Picture"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="picSelected"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Picture"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
