#tag MobileScreen
Begin MobileScreen Screen1
   BackButtonCaption=   ""
   Compatibility   =   ""
   ControlCount    =   0
   Device = 1
   HasNavigationBar=   True
   LargeTitleDisplayMode=   2
   Left            =   0
   Orientation = 0
   TabBarVisible   =   True
   TabIcon         =   0
   TintColor       =   &c00000000
   Title           =   "Untitled"
   Top             =   0
   Begin MobileRadioButton MobileRadioButton1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   MobileRadioButton1, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   MobileRadioButton1, 1, <Parent>, 1, False, +1.00, 4, 1, *kStdGapCtlToViewH, , True
      AutoLayout      =   MobileRadioButton1, 3, <Parent>, 3, False, +1.00, 4, 1, 162, , True
      AutoLayout      =   MobileRadioButton1, 7, , 0, False, +1.00, 4, 1, 100, , True
      Caption         =   "Button 1"
      CaptionColor    =   &c007AFF00
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   20
      LockedInPosition=   False
      mSelected       =   False
      picNormal       =   0
      picSelected     =   0
      requiresFallbackImages=   False
      Scope           =   2
      Selected        =   True
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   162
      Visible         =   True
      Width           =   100
   End
   Begin MobileRadioButton MobileRadioButton2
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   MobileRadioButton2, 1, MobileRadioButton1, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   MobileRadioButton2, 7, , 0, False, +1.00, 4, 1, 100, , True
      AutoLayout      =   MobileRadioButton2, 3, MobileRadioButton1, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   MobileRadioButton2, 8, , 0, False, +1.00, 4, 1, 30, , True
      Caption         =   "Button 2"
      CaptionColor    =   &c007AFF00
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   20
      LockedInPosition=   False
      mSelected       =   False
      picNormal       =   0
      picSelected     =   0
      requiresFallbackImages=   False
      Scope           =   2
      Selected        =   False
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   200
      Visible         =   True
      Width           =   100
   End
   Begin MobileRadioButton MobileRadioButton3
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   MobileRadioButton3, 1, MobileRadioButton2, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   MobileRadioButton3, 7, , 0, False, +1.00, 4, 1, 100, , True
      AutoLayout      =   MobileRadioButton3, 3, MobileRadioButton2, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   MobileRadioButton3, 8, , 0, False, +1.00, 4, 1, 30, , True
      Caption         =   "Button 3"
      CaptionColor    =   &c007AFF00
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   20
      LockedInPosition=   False
      mSelected       =   False
      picNormal       =   0
      picSelected     =   0
      requiresFallbackImages=   False
      Scope           =   2
      Selected        =   False
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   238
      Visible         =   True
      Width           =   100
   End
   Begin MobileRadioButton MobileRadioButton4
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   MobileRadioButton4, 1, MobileRadioButton3, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   MobileRadioButton4, 7, , 0, False, +1.00, 4, 1, 100, , True
      AutoLayout      =   MobileRadioButton4, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   MobileRadioButton4, 3, <Parent>, 3, False, +1.00, 4, 1, 316, , True
      Caption         =   "Other 1"
      CaptionColor    =   &c007AFF00
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   20
      LockedInPosition=   False
      mSelected       =   False
      picNormal       =   0
      picSelected     =   0
      requiresFallbackImages=   False
      Scope           =   2
      Selected        =   False
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   316
      Visible         =   True
      Width           =   100
   End
   Begin MobileRadioButton MobileRadioButton5
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   MobileRadioButton5, 1, MobileRadioButton4, 2, False, +1.00, 4, 1, *kStdControlGapH, , True
      AutoLayout      =   MobileRadioButton5, 7, , 0, False, +1.00, 4, 1, 100, , True
      AutoLayout      =   MobileRadioButton5, 10, MobileRadioButton4, 10, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   MobileRadioButton5, 8, , 0, False, +1.00, 4, 1, 30, , True
      Caption         =   "Other 2"
      CaptionColor    =   &c007AFF00
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   128
      LockedInPosition=   False
      mSelected       =   False
      picNormal       =   0
      picSelected     =   0
      requiresFallbackImages=   False
      Scope           =   2
      Selected        =   True
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   316
      Visible         =   True
      Width           =   100
   End
End
#tag EndMobileScreen

#tag WindowCode
#tag EndWindowCode

#tag Events MobileRadioButton1
	#tag Event
		Sub Opening()
		  
		  me.GroupButtons = Array(MobileRadioButton1, MobileRadioButton2, MobileRadioButton3)
		  
		  //On iOS 11 and iOS 12 it is necessary to setup the images
		  If me.requiresFallbackImages then
		    
		    //Uncomment the following lines and replace somepicture & someotherpicture
		    'me.picNormal = somepicture
		    'me.picSelected = someotherpicture
		    'me.SetupUI(me.picNormal, me.picSelected)
		  End If
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub ValueChanged()
		  System.DebugLog CurrentMethodName
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events MobileRadioButton2
	#tag Event
		Sub ValueChanged()
		  System.DebugLog CurrentMethodName
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events MobileRadioButton3
	#tag Event
		Sub ValueChanged()
		  System.DebugLog CurrentMethodName
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events MobileRadioButton4
	#tag Event
		Sub ValueChanged()
		  System.DebugLog CurrentMethodName
		End Sub
	#tag EndEvent
	#tag Event
		Sub Opening()
		  
		  me.GroupButtons = Array(MobileRadioButton4, MobileRadioButton5)
		  
		  
		  //Overriding the default radio pictures
		  Dim normal As Picture = Picture.SystemImage("circle", 0, Picture.SystemImageWeights.Light, &cFF0000)
		  Dim selected As Picture = Picture.SystemImage("record.circle", 0, Picture.SystemImageWeights.Light, &cFF0000)
		  
		  
		  me.picNormal = normal
		  me.picSelected = selected
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events MobileRadioButton5
	#tag Event
		Sub ValueChanged()
		  System.DebugLog CurrentMethodName
		End Sub
	#tag EndEvent
	#tag Event
		Sub Opening()
		  me.GroupButtons = Array(MobileRadioButton4, MobileRadioButton5)
		  
		  //Overriding the default radio pictures
		  Dim normal As Picture = Picture.SystemImage("circle", 0, Picture.SystemImageWeights.Light, &cFF0000)
		  Dim selected As Picture = Picture.SystemImage("record.circle", 0, Picture.SystemImageWeights.Light, &cFF0000)
		  
		  
		  me.picNormal = normal
		  me.picSelected = selected
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="Index"
		Visible=true
		Group="ID"
		InitialValue="-2147483648"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
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
		Name="BackButtonCaption"
		Visible=true
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasNavigationBar"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabIcon"
		Visible=true
		Group="Behavior"
		InitialValue=""
		Type="Picture"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Behavior"
		InitialValue="Untitled"
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LargeTitleDisplayMode"
		Visible=true
		Group="Behavior"
		InitialValue="2"
		Type="MobileScreen.LargeTitleDisplayModes"
		EditorType="Enum"
		#tag EnumValues
			"0 - Automatic"
			"1 - Always"
			"2 - Never"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabBarVisible"
		Visible=true
		Group="Behavior"
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
#tag EndViewBehavior
