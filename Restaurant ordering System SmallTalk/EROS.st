<?xml version="1.0"?>

<st-source>
<time-stamp>From VisualWorks® Personal Use Edition, 7.10 of July 10, 2013 on September 24, 2014 at 12:09:23 AM</time-stamp>


<component-created>
<name>EROS</name> <type>package</type>
</component-created><!-- Package EROS* -->


<component-created>
<name>EROS</name> <type>package</type>
</component-created>

<class>
<name>MainMenu</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>price name calories ingredients sidedish desc </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>EROS</package>
</attributes>
</class>

<class>
<name>LongDrinks</name>
<environment>Smalltalk</environment>
<super>MainMenu</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>aOrderedCollection </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>EROS</package>
</attributes>
</class>

<class>
<name>Appetizers</name>
<environment>Smalltalk</environment>
<super>MainMenu</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>temp1 temp2 aOrderedCollection </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>EROS</package>
</attributes>
</class>

<class>
<name>EROSApp</name>
<environment>Smalltalk</environment>
<super>UI.ApplicationModel</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>sodaName listAppetizer listDesserts dessertsPrice mainDishCalories sodaPrice longDrinkName appetizerPrice listMainDish mainDishPrice mainDishSideDish dessertsShortdesc listLongDrink longDrinkPrice mainDishIngred listSoda dessertsCalories longDrinkCalories mainDishName sodaCalories appetizerIngred longDrinkIngred appetizerCalories dessertsName appetizerName aOrderedCollection appetizersDictionary mainDishDictionary dessertsDictionary sodaDictionary longDrinkDictionary listOrderedCollection appetizers mainDish desserts soda longDrink mealSuggestions totalPrice totalCalorieCount backupOC </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>EROS</package>
</attributes>
</class>

<class>
<name>Soda</name>
<environment>Smalltalk</environment>
<super>MainMenu</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>aOrderedCollection </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>EROS</package>
</attributes>
</class>

<class>
<name>MainDish</name>
<environment>Smalltalk</environment>
<super>MainMenu</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>aOrderedCollection </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>EROS</package>
</attributes>
</class>

<class>
<name>Desserts</name>
<environment>Smalltalk</environment>
<super>MainMenu</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>aOrderedCollection </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>EROS</package>
</attributes>
</class>

<methods>
<class-id>EROSApp class</class-id> <category>interface specs</category>

<body package="EROS" selector="windowSpec">windowSpec	"Tools.UIPainter new openOnClass: self andSelector: #windowSpec"	&lt;resource: #canvas&gt;	^#(#{UI.FullSpec} 		#window: 		#(#{UI.WindowSpec} 			#label: 'EROS Order' 			#bounds: #(#{Graphics.Rectangle} 107 30 1259 746 ) ) 		#component: 		#(#{UI.SpecCollection} 			#collection: #(				#(#{UI.SequenceViewSpec} 					#layout: #(#{Graphics.Rectangle} 15 76 115 176 ) 					#name: #List1 					#model: #listAppetizer 					#useModifierKeys: true 					#selectionType: #highlight ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 16 51 ) 					#name: #Label1 					#label: 'Appetizers' ) 				#(#{UI.DividerSpec} 					#layout: #(#{Graphics.Rectangle} 12 40 580 44 ) 					#name: #Divider1 ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 254 11 ) 					#name: #Label2 					#label: 'Food' ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 127 58 ) 					#name: #Label3 					#label: 'Name' ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 166 56 266 79 ) 					#name: #InputField1 					#model: #appetizerName ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 126 99 ) 					#name: #Label4 					#label: 'Price' ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 168 99 268 122 ) 					#name: #InputField2 					#model: #appetizerPrice 					#type: #number 					#formatString: '0.00' ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 280 54 ) 					#name: #Label5 					#label: 'Ingredients' ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 344 52 517 75 ) 					#name: #InputField3 					#model: #appetizerIngred ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 283 97 ) 					#name: #Label6 					#label: 'Calories' ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 346 97 446 120 ) 					#name: #InputField4 					#model: #appetizerCalories 					#type: #number 					#formatString: '0.00' ) 				#(#{UI.SequenceViewSpec} 					#layout: #(#{Graphics.Rectangle} 17 223 117 323 ) 					#name: #List2 					#model: #listMainDish 					#useModifierKeys: true 					#selectionType: #highlight ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 18 194 ) 					#name: #Label7 					#label: 'Main Dishes' ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 132 200 ) 					#name: #Label8 					#label: 'Name' ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 173 199 273 222 ) 					#name: #InputField5 					#model: #mainDishName ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 133 240 ) 					#name: #Label9 					#label: 'Price' ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 172 240 272 263 ) 					#name: #InputField6 					#model: #mainDishPrice 					#type: #number 					#formatString: '0.00' ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 298 198 ) 					#name: #Label10 					#label: 'Ingredients' ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 364 196 534 220 ) 					#name: #InputField7 					#model: #mainDishIngred ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 298 234 ) 					#name: #Label11 					#label: 'Calories' ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 365 234 465 257 ) 					#name: #InputField8 					#model: #mainDishCalories 					#type: #number 					#formatString: '0.00' ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 125 279 ) 					#name: #Label12 					#label: 'Side Dish' ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 172 278 272 301 ) 					#name: #InputField9 					#model: #mainDishSideDish ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 17 377 ) 					#name: #Label13 					#label: 'Desserts' ) 				#(#{UI.SequenceViewSpec} 					#layout: #(#{Graphics.Rectangle} 13 401 113 501 ) 					#name: #List3 					#model: #listDesserts 					#useModifierKeys: true 					#selectionType: #highlight ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 123 400 ) 					#name: #Label14 					#label: 'Name' ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 204 399 304 422 ) 					#name: #InputField10 					#model: #dessertsName ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 114 434 ) 					#name: #Label15 					#label: 'Short Description' ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 204 434 304 457 ) 					#name: #InputField11 					#model: #dessertsShortdesc ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 124 467 ) 					#name: #Label16 					#label: 'Price' ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 207 476 307 499 ) 					#name: #InputField12 					#model: #dessertsPrice 					#type: #number 					#formatString: '0.00' ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 324 400 ) 					#name: #Label17 					#label: 'Calories' ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 377 396 477 419 ) 					#name: #InputField13 					#model: #dessertsCalories 					#type: #number 					#formatString: '0.00' ) 				#(#{UI.GroupBoxSpec} 					#layout: #(#{Graphics.Rectangle} 5 9 588 613 ) 					#name: #GroupBox1 ) 				#(#{UI.GroupBoxSpec} 					#layout: #(#{Graphics.Rectangle} 586 10 1149 613 ) 					#name: #GroupBox2 ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 838 14 ) 					#name: #Label18 					#label: 'Beverages' ) 				#(#{UI.DividerSpec} 					#layout: #(#{Graphics.Rectangle} 590 40 1115 44 ) 					#name: #Divider2 ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 595 49 ) 					#name: #Label19 					#label: 'Soda Selections' ) 				#(#{UI.SequenceViewSpec} 					#layout: #(#{Graphics.Rectangle} 594 72 694 172 ) 					#name: #List4 					#model: #listSoda 					#useModifierKeys: true 					#selectionType: #highlight ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 732 69 ) 					#name: #Label20 					#label: 'Name' ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 772 68 872 91 ) 					#name: #InputField14 					#model: #sodaName ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 735 114 ) 					#name: #Label21 					#label: 'Price' ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 772 116 872 139 ) 					#name: #InputField15 					#model: #sodaPrice 					#type: #number 					#formatString: '0.00' ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 913 67 ) 					#name: #Label22 					#label: 'Calories' ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 968 67 1068 90 ) 					#name: #InputField16 					#model: #sodaCalories 					#type: #number 					#formatString: '0.00' ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 595 239 ) 					#name: #Label23 					#label: 'Long Drink' ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 782 245 882 268 ) 					#name: #InputField17 					#model: #longDrinkName ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 739 245 ) 					#name: #Label24 					#label: 'Name' ) 				#(#{UI.SequenceViewSpec} 					#layout: #(#{Graphics.Rectangle} 593 265 693 365 ) 					#name: #List5 					#model: #listLongDrink 					#useModifierKeys: true 					#selectionType: #highlight ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 740 285 ) 					#name: #Label25 					#label: 'Price' ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 782 289 882 312 ) 					#name: #InputField18 					#model: #longDrinkPrice 					#type: #number 					#formatString: '0.00' ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 918 246 ) 					#name: #Label26 					#label: 'Ingredients' ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 984 245 1084 268 ) 					#name: #InputField19 					#model: #longDrinkIngred ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 920 292 ) 					#name: #Label27 					#label: 'Calories' ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 987 294 1087 317 ) 					#name: #InputField20 					#model: #longDrinkCalories 					#type: #number 					#formatString: '0.00' ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 130 140 211 163 ) 					#name: #ActionButton1 					#model: #addAppetizer 					#label: 'Add/Edit' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 130 314 211 337 ) 					#name: #ActionButton2 					#model: #addMainDish 					#label: 'Add/Edit' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 221 139 302 162 ) 					#name: #ActionButton3 					#model: #displayAppetizers 					#label: 'Display' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 220 315 301 338 ) 					#name: #ActionButton4 					#model: #displayMainDish 					#label: 'Display' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 312 138 393 161 ) 					#name: #ActionButton5 					#model: #removeAppetizer 					#label: 'Remove' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 311 315 392 338 ) 					#name: #ActionButton6 					#model: #removeMainDish 					#label: 'Remove' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 123 509 204 532 ) 					#name: #ActionButton7 					#model: #addDessert 					#label: 'Add/Edit' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 219 509 300 532 ) 					#name: #ActionButton8 					#model: #displayDessert 					#label: 'Display' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 313 509 394 532 ) 					#name: #ActionButton9 					#model: #removeDessert 					#label: 'Remove' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 714 164 795 187 ) 					#name: #ActionButton10 					#model: #addSoda 					#label: 'Add/Edit' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 809 165 890 188 ) 					#name: #ActionButton11 					#model: #displaySoda 					#label: 'Display' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 910 165 991 188 ) 					#name: #ActionButton12 					#model: #removeSoda 					#label: 'Remove' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 709 340 790 363 ) 					#name: #ActionButton13 					#model: #addLongDrink 					#label: 'Add/Edit' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 803 340 884 363 ) 					#name: #ActionButton14 					#model: #displayLongDrink 					#label: 'Display' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 904 341 985 364 ) 					#name: #ActionButton15 					#model: #removeLongDrink 					#label: 'Remove' 					#defaultable: true ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 626 404 ) 					#name: #Label28 					#label: 'Total Calorie Count' ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 735 405 835 428 ) 					#name: #InputField21 					#model: #totalCalorieCount 					#type: #number 					#formatString: '0.00' ) 				#(#{UI.LabelSpec} 					#layout: #(#{Core.Point} 864 405 ) 					#name: #Label29 					#label: 'Total Price' ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.Rectangle} 934 404 1034 427 ) 					#name: #InputField22 					#model: #totalPrice 					#type: #number 					#formatString: '0.00' ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 705 451 846 474 ) 					#name: #ActionButton16 					#model: #suggestFullMeal 					#label: 'Suggest Full Meal' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 870 451 1020 474 ) 					#name: #ActionButton17 					#model: #suggestLightMeal 					#label: 'Suggest Light Meal' 					#defaultable: true ) 				#(#{UI.SequenceViewSpec} 					#layout: #(#{Graphics.Rectangle} 634 481 1060 606 ) 					#name: #List6 					#flags: 45 					#model: #mealSuggestions 					#useModifierKeys: true 					#selectionType: #highlight ) 				#(#{UI.GroupBoxSpec} 					#layout: #(#{Graphics.Rectangle} 5 611 1150 675 ) 					#name: #GroupBox3 ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 52 623 200 655 ) 					#name: #ActionButton18 					#model: #createList 					#label: 'Create List' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 315 623 476 655 ) 					#name: #ActionButton19 					#model: #saveList 					#label: 'Save List' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 607 622 758 655 ) 					#name: #ActionButton20 					#model: #retrieveList 					#label: 'Retrieve List' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.Rectangle} 900 623 1051 657 ) 					#name: #ActionButton21 					#model: #quitEros 					#label: 'Quit EROS' 					#defaultable: true ) ) ) )</body>
</methods>


<methods>
<class-id>EROSApp</class-id> <category>aspects</category>

<body package="EROS" selector="sodaName">sodaName	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^sodaName isNil		ifTrue:			[sodaName := String new asValue]		ifFalse:			[sodaName]</body>

<body package="EROS" selector="appetizerPrice">appetizerPrice	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^appetizerPrice isNil		ifTrue:			[appetizerPrice := 0 asValue]		ifFalse:			[appetizerPrice]</body>

<body package="EROS" selector="listLongDrink">listLongDrink	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^listLongDrink isNil		ifTrue:			[listLongDrink := SelectionInList new]		ifFalse:			[listLongDrink]</body>

<body package="EROS" selector="mainDishPrice">mainDishPrice	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^mainDishPrice isNil		ifTrue:			[mainDishPrice := 0 asValue]		ifFalse:			[mainDishPrice]</body>

<body package="EROS" selector="listAppetizer">listAppetizer	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^listAppetizer isNil		ifTrue:			[listAppetizer := SelectionInList new]		ifFalse:			[listAppetizer]</body>

<body package="EROS" selector="appetizerName">appetizerName	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^appetizerName isNil		ifTrue:			[appetizerName := String new asValue]		ifFalse:			[appetizerName]</body>

<body package="EROS" selector="longDrinkPrice">longDrinkPrice	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^longDrinkPrice isNil		ifTrue:			[longDrinkPrice := 0 asValue]		ifFalse:			[longDrinkPrice]</body>

<body package="EROS" selector="mainDishIngred">mainDishIngred	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^mainDishIngred isNil		ifTrue:			[mainDishIngred := String new asValue]		ifFalse:			[mainDishIngred]</body>

<body package="EROS" selector="mainDishName">mainDishName	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^mainDishName isNil		ifTrue:			[mainDishName := String new asValue]		ifFalse:			[mainDishName]</body>

<body package="EROS" selector="dessertsName">dessertsName	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^dessertsName isNil		ifTrue:			[dessertsName := String new asValue]		ifFalse:			[dessertsName]</body>

<body package="EROS" selector="sodaPrice">sodaPrice	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^sodaPrice isNil		ifTrue:			[sodaPrice := 0 asValue]		ifFalse:			[sodaPrice]</body>

<body package="EROS" selector="mainDishCalories">mainDishCalories	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^mainDishCalories isNil		ifTrue:			[mainDishCalories := 0 asValue]		ifFalse:			[mainDishCalories]</body>

<body package="EROS" selector="longDrinkName">longDrinkName	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^longDrinkName isNil		ifTrue:			[longDrinkName := String new asValue]		ifFalse:			[longDrinkName]</body>

<body package="EROS" selector="longDrinkCalories">longDrinkCalories	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^longDrinkCalories isNil		ifTrue:			[longDrinkCalories := 0 asValue]		ifFalse:			[longDrinkCalories]</body>

<body package="EROS" selector="dessertsShortdesc">dessertsShortdesc	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^dessertsShortdesc isNil		ifTrue:			[dessertsShortdesc := String new asValue]		ifFalse:			[dessertsShortdesc]</body>

<body package="EROS" selector="totalPrice">totalPrice	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^totalPrice isNil		ifTrue:			[totalPrice := 0 asValue]		ifFalse:			[totalPrice]</body>

<body package="EROS" selector="dessertsPrice">dessertsPrice	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^dessertsPrice isNil		ifTrue:			[dessertsPrice := 0 asValue]		ifFalse:			[dessertsPrice]</body>

<body package="EROS" selector="appetizerCalories">appetizerCalories	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^appetizerCalories isNil		ifTrue:			[appetizerCalories := 0 asValue]		ifFalse:			[appetizerCalories]</body>

<body package="EROS" selector="longDrinkIngred">longDrinkIngred	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^longDrinkIngred isNil		ifTrue:			[longDrinkIngred := String new asValue]		ifFalse:			[longDrinkIngred]</body>

<body package="EROS" selector="sodaCalories">sodaCalories	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^sodaCalories isNil		ifTrue:			[sodaCalories := 0 asValue]		ifFalse:			[sodaCalories]</body>

<body package="EROS" selector="totalCalorieCount">totalCalorieCount	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^totalCalorieCount isNil		ifTrue:			[totalCalorieCount := 0 asValue]		ifFalse:			[totalCalorieCount]</body>

<body package="EROS" selector="mainDishSideDish">mainDishSideDish	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^mainDishSideDish isNil		ifTrue:			[mainDishSideDish := String new asValue]		ifFalse:			[mainDishSideDish]</body>

<body package="EROS" selector="mealSuggestions">mealSuggestions	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^mealSuggestions isNil		ifTrue:			[mealSuggestions := SelectionInList new]		ifFalse:			[mealSuggestions]</body>

<body package="EROS" selector="listSoda">listSoda	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^listSoda isNil		ifTrue:			[listSoda := SelectionInList new]		ifFalse:			[listSoda]</body>

<body package="EROS" selector="dessertsCalories">dessertsCalories	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^dessertsCalories isNil		ifTrue:			[dessertsCalories := 0 asValue]		ifFalse:			[dessertsCalories]</body>

<body package="EROS" selector="appetizerIngred">appetizerIngred	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^appetizerIngred isNil		ifTrue:			[appetizerIngred := String new asValue]		ifFalse:			[appetizerIngred]</body>

<body package="EROS" selector="listMainDish">listMainDish	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^listMainDish isNil		ifTrue:			[listMainDish := SelectionInList new]		ifFalse:			[listMainDish]</body>

<body package="EROS" selector="listDesserts">listDesserts	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^listDesserts isNil		ifTrue:			[listDesserts := SelectionInList new]		ifFalse:			[listDesserts]</body>
</methods>

<methods>
<class-id>EROSApp</class-id> <category>actions</category>

<body package="EROS" selector="displayListAppetizers">displayListAppetizers"Displays the list of the appetizers in the appetizer list in the output"listAppetizer list: appetizers displayList.</body>

<body package="EROS" selector="quitEros">quitEros	"This stub method was generated by UIDefiner"	^self closeRequest.</body>

<body package="EROS" selector="displayListSoda">displayListSoda"Displays the list of the soda in the soda list in the output"listSoda list: soda displayList.</body>

<body package="EROS" selector="createList">createList		"Initializes all the fields and the lists and displays the initial values"	self refreshFields.	self refreshLists.	self displayLists.	^self</body>

<body package="EROS" selector="addMainDish">addMainDish" Checks if all the attributes of the Main dish are filled and then adds the attributes to the name of the main dish as the key to dictionary"|instMainDish|	instMainDish := MainDish new.	(mainDishName value = '')		ifTrue:[ Dialog warn: ' Please enter the name of the Main Dish.']		ifFalse:[ (mainDishIngred value = '')					ifTrue:[ Dialog warn: ' Please enter the list of the ingredients.']					ifFalse:[ (mainDishPrice value = 0.00)								ifTrue:[ Dialog warn: 'Please enter the price of the Main Dish.']									ifFalse:[ (mainDishCalories value = 0.00)										 ifTrue:[ Dialog warn: 'Please enter the calories present in the appetizer.']											 ifFalse:[ (mainDishSideDish value = '')												ifTrue:[ Dialog warn: 'Please enter the side dish of the main dish.']										 		ifFalse:[ instMainDish name: mainDishName value.												  instMainDish ingredients: mainDishIngred value.												  instMainDish price: mainDishPrice value.												  instMainDish calories: mainDishCalories value.												  instMainDish sidedish: mainDishSideDish value.												  mainDishDictionary add: mainDishName value -&gt; instMainDish.												  mainDish add: mainDishName value.												  self displayListMainDish.												  mainDishName value: ''.												  mainDishIngred value: ''.												  mainDishPrice value: 0.00.												  mainDishCalories value: 0.00.												  mainDishSideDish value: ''.												  ].].].].].	^self</body>

<body package="EROS" selector="displayLongDrink">displayLongDrink	"Displays the attributes in the input fields when a Longdrink is selected and display button is hit"	| aList keyValue tempLongDrink|	aList := SelectionInList new.	aList list: listLongDrink.	keyValue := aList list selection.	(keyValue = nil) ifTrue:[ Dialog warn: 'Select atleast one Long Drink you wish to display']					ifFalse:[ tempLongDrink := longDrinkDictionary at: keyValue.							longDrinkName value: (tempLongDrink name).							longDrinkIngred value: (tempLongDrink ingredients).							longDrinkPrice value: (tempLongDrink price).							longDrinkCalories value: (tempLongDrink calories).							^self.].</body>

<body package="EROS" selector="populateOC">populateOC"Alll the orderedlists are again populated "|appSize mdSize desSize sodSize ldSize tempSize1 tempSize2 tempSize3 tempSize4 tempSize5|appSize := listAppetizer list size.mdSize := listMainDish list size.desSize := listDesserts list size.sodSize := listSoda list size.ldSize := listLongDrink list size.tempSize1 := tempSize2 := tempSize3 := tempSize4 := tempSize5 := 1.[tempSize1 &gt; appSize] whileFalse: [ appetizers add: (listAppetizer list at: tempSize1).									    (tempSize1 := (tempSize1 + 1)).].[tempSize2 &gt; mdSize] whileFalse: [ mainDish add: (listMainDish list at: tempSize2).									    (tempSize2 := (tempSize2 + 1)).].[tempSize3 &gt; desSize] whileFalse: [ desserts add: (listDesserts list at: tempSize3).									    (tempSize3 := (tempSize3 + 1)).].[tempSize4 &gt; sodSize] whileFalse: [ soda add: (listSoda list at: tempSize4).									    (tempSize4 := (tempSize4 + 1)).].[tempSize5 &gt; ldSize] whileFalse: [ longDrink add: (listLongDrink list at: tempSize5).									    (tempSize5 := (tempSize5 + 1)).].</body>

<body package="EROS" selector="displayDessert">displayDessert	"This stub method was generated by UIDefiner"	"Displays the attributes in the input fields when a dessert is selected and display button is hit"	| aList keyValue tempDesserts|	aList := SelectionInList new.	aList list: listDesserts.	keyValue := aList list selection.	(keyValue = nil) ifTrue:[ Dialog warn: 'Select atleast one dessert you wish to display']					ifFalse:[tempDesserts := dessertsDictionary at: keyValue.							dessertsName value: (tempDesserts name).							dessertsShortdesc value: (tempDesserts desc).							dessertsPrice value: (tempDesserts price).							dessertsCalories value: (tempDesserts calories).							^self].</body>

<body package="EROS" selector="refreshFields">refreshFieldsappetizerName value: ''.appetizerIngred value: ''.appetizerPrice value: 0.00.appetizerCalories value: 0.00.dessertsName value: ''.dessertsShortdesc value: ''.dessertsPrice value: 0.00.dessertsCalories value: 0.00.longDrinkName value: ''.longDrinkIngred value: ''.longDrinkPrice value: 0.00.longDrinkCalories value: 0.00.mainDishName value: ''.mainDishIngred value: ''.mainDishPrice value: 0.00.mainDishCalories value: 0.00.mainDishSideDish value: ''.sodaName value: ''.sodaPrice value: 0.00.sodaCalories value: 0.00.</body>

<body package="EROS" selector="addLongDrink">addLongDrink	"This stub method was generated by UIDefiner"	" Checks if all the attributes of the Long drink are filled and then adds the attributes to the name of the long drink as the key to dictionary"	|instLongDrink|	instLongDrink := LongDrinks new.	(longDrinkName value = '')		ifTrue:[ Dialog warn: ' Please enter the name of the Long Drink.']		ifFalse:[ (longDrinkIngred value = '')					ifTrue:[ Dialog warn: ' Please enter the list of the ingredients.']					ifFalse:[ (longDrinkPrice value = 0.00)								ifTrue:[ Dialog warn: 'Please enter the price of the Long drink.']									ifFalse:[ (longDrinkCalories value = 0.00)										 ifTrue:[ Dialog warn: ' Please enter the calories present in the long drink.']											 ifFalse:[  instLongDrink name: longDrinkName value.												  instLongDrink ingredients: longDrinkIngred value.												  instLongDrink price: longDrinkPrice value.												  instLongDrink calories: longDrinkCalories value.												  longDrinkDictionary add: longDrinkName value -&gt; instLongDrink.												  longDrink add: longDrinkName value.												  self displayListLongDrink.												  longDrinkName value: ''.												  longDrinkIngred value: ''.												  longDrinkPrice value: 0.00.												  longDrinkCalories value: 0.00.												  ].].].].	^self</body>

<body package="EROS" selector="displayMainDish">displayMainDish	"This stub method was generated by UIDefiner"	"Displays the attributes in the input fields when a Main Dish is selected and display button is hit"	| aList keyValue tempMainDish|	aList := SelectionInList new.	aList list: listMainDish.	keyValue := aList list selection.	(keyValue = nil) ifTrue:[ Dialog warn: 'Select atleast one Main Dish you wish to display']					ifFalse:[tempMainDish := mainDishDictionary at: keyValue.							mainDishName value: (tempMainDish name).							mainDishIngred value: (tempMainDish ingredients).							mainDishPrice value: (tempMainDish price).							mainDishCalories value: (tempMainDish calories).							mainDishSideDish value: (tempMainDish sidedish).							^self.].</body>

<body package="EROS" selector="removeDessert">removeDessert	"This stub method was generated by UIDefiner"      | aList keyValue |	aList := SelectionInList new.	aList list: listDesserts.	keyValue := aList list selection.	(keyValue = nil) ifTrue:[ Dialog warn: 'Select atleast one dessert you wish to delete']					  ifFalse:[dessertsDictionary removeKey: keyValue.							  desserts delete: keyValue.							  self displayListDesserts.							  dessertsName value: ''.							  dessertsShortdesc value: ''.							  dessertsPrice value: 0.00.							  dessertsCalories value: 0.00.							  ^self].</body>

<body package="EROS" selector="displaySoda">displaySoda	"This stub method was generated by UIDefiner"	"Displays the attributes in the input fields when a soda is selected and display button is hit"	| aList keyValue tempSoda|	aList := SelectionInList new.	aList list: listSoda.	keyValue := aList list selection.	(keyValue = nil) ifTrue:[ Dialog warn: 'Select a soda you wish to display the details of']					ifFalse:[ tempSoda := sodaDictionary at: keyValue.							sodaName value: (tempSoda name).							sodaPrice value: (tempSoda price).							sodaCalories value: (tempSoda calories).							^self.].</body>

<body package="EROS" selector="suggestFullMeal">suggestFullMeal| suggestion |	((totalCalorieCount value = 0.00) | (totalPrice value = 0.00))	ifTrue:[ Dialog warn: 'Please enter the desired Total Calorie Count and Price']	ifFalse:[ suggestion := self suggestFullMealHelper.				(suggestion isNil)					ifTrue: [ mealSuggestions list: ''.							Dialog warn: 'There are no full meal suggestions for the entered total calorie count and price']					ifFalse: [ mealSuggestions list: suggestion ].].</body>

<body package="EROS" selector="refreshLists">refreshListsappetizers initialize.mainDish initialize.desserts initialize.soda initialize.longDrink initialize.</body>

<body package="EROS" selector="removeAppetizer">removeAppetizer	"This stub method was generated by UIDefiner"	| aList keyValue |	aList := SelectionInList new.	aList list: listAppetizer.	keyValue := aList list selection.	(keyValue = nil) ifTrue:[ Dialog warn: 'Select atleast one appetizer you wish to delete']					  ifFalse:[appetizersDictionary removeKey: keyValue.							  appetizers delete: keyValue.							  self displayListAppetizers.							  appetizerName value: ''.							  appetizerIngred value: ''.							  appetizerPrice value: 0.00.							  appetizerCalories value: 0.00.							  ^self].</body>

<body package="EROS" selector="displayListLongDrink">displayListLongDrink"Displays the list of the Long drinks in the Long drink list in the output"listLongDrink list: longDrink displayList.</body>

<body package="EROS" selector="addSoda">addSoda	" Checks if all the attributes of the Soda are filled and then adds the attributes to the name of the soda as the key to dictionary"	|instSoda|	instSoda := Soda new.	(sodaName value = '')		ifTrue:[ Dialog warn: ' Please enter the name of soda.']		ifFalse:[ (sodaPrice value = 0.00)								ifTrue:[ Dialog warn: 'Please enter the price of the soda.']									ifFalse:[ (sodaCalories value = 0.00)										 ifTrue:[ Dialog warn: ' Please enter the calories present in the soda.']											 ifFalse:[ instSoda name: sodaName value.												  instSoda price: sodaPrice value.												  instSoda calories: sodaCalories value.												  sodaDictionary add: sodaName value -&gt; instSoda.												  soda add: sodaName value.												  self displayListSoda.												  sodaName value: ''.												  sodaPrice value: 0.00.												  sodaCalories value: 0.00.												  ].].].	^self</body>

<body package="EROS" selector="displayAppetizers">displayAppetizers		"This stub method was generated by UIDefiner"	"Displays the attributes in the input fields when a appetizer is selected and display button is hit"	| aList keyValue tempAppetizers|	aList := SelectionInList new.	aList list: listAppetizer.	keyValue := aList list selection.	(keyValue = nil) ifTrue:[ Dialog warn: 'Select atleast one appetizer you wish to display']					ifFalse:[tempAppetizers := appetizersDictionary at: keyValue.							appetizerName value: (tempAppetizers name).							appetizerIngred value: (tempAppetizers ingredients).							appetizerPrice value: (tempAppetizers price).							appetizerCalories value: (tempAppetizers calories).							^self].</body>

<body package="EROS" selector="removeLongDrink">removeLongDrink	"This stub method was generated by UIDefiner"      | aList keyValue |	aList := SelectionInList new.	aList list: listLongDrink.	keyValue := aList list selection.	(keyValue = nil) ifTrue:[ Dialog warn: 'Select atleast one long drink you wish to delete']					  ifFalse:[longDrinkDictionary removeKey: keyValue.							  longDrink delete: keyValue.							  self displayListLongDrink.							  longDrinkName value: ''.							  longDrinkIngred value: ''.							  longDrinkPrice value: 0.00.							  longDrinkCalories value: 0.00.							  ^self].</body>

<body package="EROS" selector="retrieveList">retrieveList     | file boss retrievedOC |	      self createBackup.	self refreshFields.	self refreshLists.	[	[file := Dialog requestFileName: 'Enter file name'.	boss := BinaryObjectStorage onOld: (Filename named: file) readStream.	retrievedOC := boss next.	boss close.	appetizersDictionary := retrievedOC at:1.	mainDishDictionary := retrievedOC at:2.	dessertsDictionary := retrievedOC at:3.	sodaDictionary := retrievedOC at:4.	longDrinkDictionary := retrievedOC at:5.	listAppetizer list: (retrievedOC at:6).	listMainDish list: (retrievedOC at:7).	listDesserts list: (retrievedOC at:8).	listSoda list: (retrievedOC at:9).	listLongDrink list: (retrievedOC at:10).	self populateOC.	"boss close."	Dialog warn: 'File Import Successful !'.]	on: Error			do: 				[:ex |				Dialog warn: 'File Import Unsuccessful, bringing in the unsaved values !'.	appetizersDictionary := backupOC at:1.	mainDishDictionary := backupOC at:2.	dessertsDictionary := backupOC at:3.	sodaDictionary := backupOC at:4.	longDrinkDictionary := backupOC at:5.	listAppetizer list: (backupOC at:6).	listMainDish list: (backupOC at:7).	listDesserts list: (backupOC at:8).	listSoda list: (backupOC at:9).	listLongDrink list: (backupOC at:10).]]			ensure: []</body>

<body package="EROS" selector="addDessert">addDessert" Checks if all the attributes of the dessert are filled and then adds the attributes to the name of the dessert as the key to dictionary"	|instDessert|	instDessert := Desserts new.	(dessertsName value = '')		ifTrue:[ Dialog warn: ' Please enter the name of the dessert.']		ifFalse:[ (dessertsShortdesc value = '')					ifTrue:[ Dialog warn: ' Please enter a short description of the dessert.']					ifFalse:[ (dessertsPrice value = 0.00)								ifTrue:[ Dialog warn: 'Please enter the price of the dessert.']									ifFalse:[ (dessertsCalories value = 0.00)										 ifTrue:[ Dialog warn: ' Please enter the calories present in the dessert.']											 ifFalse:[ instDessert name: dessertsName value.												  instDessert desc: dessertsShortdesc value.												  instDessert price: dessertsPrice value.												  instDessert calories: dessertsCalories value.												  dessertsDictionary add: dessertsName value -&gt; instDessert.												  desserts add: dessertsName value.												  self displayListDesserts.												  dessertsName value: ''.												  dessertsShortdesc value: ''.												  dessertsPrice value: 0.00.												  dessertsCalories value: 0.00.												  ].].].].	^self</body>

<body package="EROS" selector="addAppetizer">addAppetizer		"This stub method was generated by UIDefiner"	" Checks if all the attributes of the appetizer are filled and then adds the attributes to the name of the appetizer as the key to dictionary"		|instAppetizer|	instAppetizer := Appetizers new.	(appetizerName value = '')		ifTrue:[ Dialog warn: ' Please enter the name of the appetizer.']		ifFalse:[ (appetizerIngred value = '')					ifTrue:[ Dialog warn: ' Please enter the list of the ingredients.']					ifFalse:[ (appetizerPrice value = 0.00)								ifTrue:[ Dialog warn: 'Please enter the price of the appetizer.']									ifFalse:[ (appetizerCalories value = 0.00)										 ifTrue:[ Dialog warn: ' Please enter the calories present in the appetizer.']											 ifFalse:[ instAppetizer name: appetizerName value.												  instAppetizer ingredients: appetizerIngred value.												  instAppetizer price: appetizerPrice value.												  instAppetizer calories: appetizerCalories value.												  appetizersDictionary add: appetizerName value -&gt; instAppetizer.												  appetizers add: appetizerName value.												  self displayListAppetizers.												  appetizerName value: ''.												  appetizerIngred value: ''.												  appetizerPrice value: 0.00.												  appetizerCalories value: 0.00.												  ].].].].	^self</body>

<body package="EROS" selector="suggestFullMealHelper">suggestFullMealHelper|appetizersListSize mainDishListSize dessertListSize sodaListSize longDrinkListSize tempSize1 tempSize2 tempSize3 tempSize4 tempSize5 tempKey1 tempKey2 tempKey3 tempKey4 tempKey5 appetizersOC mainDishOC dessertOC sodaOC longDrinkOC md app sod ld tempOC des |	tempOC := OrderedCollection new.	appetizersOC := appetizers aOrderedCollection.	mainDishOC := mainDish aOrderedCollection.	dessertOC := desserts aOrderedCollection.	sodaOC := soda aOrderedCollection.	longDrinkOC := longDrink aOrderedCollection.	tempSize1 := tempSize2 := tempSize3 := tempSize4 := tempSize5 := 1.	appetizersListSize := appetizersOC size.	mainDishListSize := mainDishOC size.	dessertListSize := dessertOC size.	sodaListSize := sodaOC size.	longDrinkListSize := longDrinkOC size.	[tempSize1 &gt; mainDishListSize] whileFalse: [ (tempKey1 := (mainDishOC at: tempSize1)).									[tempSize2 &gt; appetizersListSize] whileFalse: [ (tempKey2 := (appetizersOC at: tempSize2)).																	     [tempSize3 &gt; sodaListSize] whileFalse: [ (tempKey3 := (sodaOC at: tempSize3)).																									 [tempSize4 &gt; longDrinkListSize] whileFalse: [ (tempKey4 := (longDrinkOC at: tempSize4)).																																	[tempSize5 &gt; dessertListSize] whileFalse: [ (tempKey5 := (dessertOC at: tempSize5)).																																																																		md := mainDishDictionary at: tempKey1.																																	app := appetizersDictionary at: tempKey2.																																	sod := sodaDictionary at: tempKey3.																																	ld := longDrinkDictionary at: tempKey4.																																	des := dessertsDictionary at: tempKey5.																																	(((md price + app price + sod price + ld price) &lt;= (totalPrice value)) &amp;																																	((md calories + app calories + sod calories + ld calories) &lt;= (totalCalorieCount value)))																																	ifTrue:[ 																																		     tempOC add: 'Your Full Meal Suggestion is:'.																																		     tempOC add: 'Main Dish:' ,md name.																																		     tempOC add: 'Appetizer:' ,app name.																																		     tempOC add: 'Soda:' ,sod name.																																		     tempOC add: 'Long Drink:' ,ld name.																																		    																																		    ^(tempOC)]																																	ifFalse:[																																	(((md price + des price + sod price + ld price) &lt;= (totalPrice value)) &amp;																																	((md calories + des calories + sod calories + ld calories) &lt;= (totalCalorieCount value))) 																																				ifTrue:[  																																						tempOC add: 'Your Full Meal Suggestion is:'.																																						tempOC add: 'Main Dish:'  ,md name.																																		     				tempOC add: 'Dessert:'   , des name.																																		     				tempOC add: 'Soda:'     ,sod name.																																		     				tempOC add: 'Long Drink:'    ,ld name.																																																																								    				^(tempOC)]																																				ifFalse:[tempSize5 := (tempSize5 +1)].].].																																	(tempSize4 := (tempSize4 +1)).].																	(tempSize3 := (tempSize3 +1)).].									(tempSize2 := (tempSize2 +1)).].	(tempSize1 := (tempSize1 +1)).].^ nil.</body>

<body package="EROS" selector="createBackup">createBackup"This method creates the backup of all the dictionaries and lists into an ordered collection"backupOC := OrderedCollection new.backupOC add: appetizersDictionary.backupOC add: mainDishDictionary.backupOC add: dessertsDictionary.backupOC add: sodaDictionary.backupOC add: longDrinkDictionary.backupOC add: appetizers displayList.backupOC add: mainDish displayList.backupOC add: desserts displayList.backupOC add: soda displayList.backupOC add: longDrink displayList.</body>

<body package="EROS" selector="displayListDesserts">displayListDesserts"Displays the list of the desserts in the dessert list in the output"listDesserts list: desserts displayList.</body>

<body package="EROS" selector="removeMainDish">removeMainDish	"This stub method was generated by UIDefiner"     | aList keyValue |	aList := SelectionInList new.	aList list: listMainDish.	keyValue := aList list selection.	(keyValue = nil) ifTrue:[ Dialog warn: 'Select atleast one Main Dish you wish to delete']					  ifFalse:[mainDishDictionary removeKey: keyValue.							  mainDish delete: keyValue.							  self displayListMainDish.							  mainDishName value: ''.							  mainDishIngred value: ''.							  mainDishPrice value: 0.00.							  mainDishCalories value: 0.00.							  mainDishSideDish value: ''.							  ^self].</body>

<body package="EROS" selector="displayLists">displayListsself displayListAppetizers.self displayListDesserts.self displayListLongDrink.self displayListMainDish.self displayListSoda.</body>

<body package="EROS" selector="saveList">saveList	"This stub method was generated by UIDefiner"	|fileName boss|	self createBackup.	[	[fileName := Dialog requestFileName: 'Enter the file name you wish to save as'.	boss := BinaryObjectStorage onNew: (Filename named: fileName) writeStream.	boss nextPut: backupOC.	boss close.	Dialog warn: 'File Export Successful !'.	self refreshFields.	self refreshLists.	self displayLists.]				on: Error			do: [:ex | Dialog warn: 'File Export Unsuccessful !']]			ensure: []</body>

<body package="EROS" selector="suggestLightMeal">suggestLightMeal| suggestion |	((totalCalorieCount value = 0.00) | (totalPrice value = 0.00))	ifTrue:[ Dialog warn: 'Please enter the desired Total Calorie Count and Price']	ifFalse:[ suggestion := self suggestLightMealHelper.				(suggestion isNil)					ifTrue: [ mealSuggestions list: ''.							Dialog warn: 'There are no light meal suggestions for the entered total calorie count and price']					ifFalse: [ mealSuggestions list: suggestion ].].</body>

<body package="EROS" selector="removeSoda">removeSoda	"This stub method was generated by UIDefiner"     | aList keyValue |	aList := SelectionInList new.	aList list: listSoda.	keyValue := aList list selection.	(keyValue = nil) ifTrue:[ Dialog warn: 'Select a soda you wish to delete']					  ifFalse:[sodaDictionary removeKey: keyValue.							  soda delete: keyValue.							  self displayListSoda.							  sodaName value: ''.							  sodaPrice value: 0.00.							  sodaCalories value: 0.00.							  ^self].</body>

<body package="EROS" selector="displayListMainDish">displayListMainDish"Displays the list of the Main dish in the maindish list in the output"listMainDish list: mainDish displayList.</body>

<body package="EROS" selector="suggestLightMealHelper">suggestLightMealHelper|appetizersListSize dessertListSize sodaListSize tempSize1 tempSize2 tempSize3 tempKey1 tempKey2 tempKey3 appetizersOC dessertOC sodaOC app sod  tempOC des |	tempOC := OrderedCollection new.	appetizersOC := appetizers aOrderedCollection.	dessertOC := desserts aOrderedCollection.	sodaOC := soda aOrderedCollection.	tempSize1 := tempSize2 := tempSize3 := 1.	appetizersListSize := appetizersOC size.	dessertListSize := dessertOC size.	sodaListSize := sodaOC size.	[tempSize1 &gt; appetizersListSize] whileFalse: [ (tempKey1 := (appetizersOC at: tempSize1)).									[tempSize2 &gt; dessertListSize] whileFalse: [ (tempKey2 := (dessertOC at: tempSize2)).																	     [tempSize3 &gt; sodaListSize] whileFalse: [ (tempKey3 := (sodaOC at: tempSize3)).																																	app := appetizersDictionary at: tempKey1.																																	des := dessertsDictionary at: tempKey2.																																	sod := sodaDictionary at: tempKey3.																																	(((app price + sod price + des price) &lt;= (totalPrice value)) &amp;																																	((app calories + sod calories + des calories) &lt;= (totalCalorieCount value)))																																	ifTrue:[ 																																		     tempOC add: 'Your Light Meal Suggestion is:'.																																		     tempOC add: 'Appetizer:' ,app name.																																		     tempOC add: 'Dessert:'   , des name.																																		     tempOC add: 'Soda:' ,sod name.																																		   ^(tempOC)]																																	ifFalse:[tempSize3 := (tempSize3 +1)].].																																																										(tempSize2 := (tempSize2 +1)).].	(tempSize1 := (tempSize1 +1)).].^ nil.</body>
</methods>

<methods>
<class-id>EROSApp</class-id> <category>initialize-release</category>

<body package="EROS" selector="initialize">initializesuper initialize.aOrderedCollection := OrderedCollection new.backupOC := OrderedCollection new.appetizersDictionary := Dictionary new.mainDishDictionary := Dictionary new.dessertsDictionary := Dictionary new.sodaDictionary := Dictionary new.longDrinkDictionary := Dictionary new.listOrderedCollection := OrderedCollection new.appetizers := Appetizers new.mainDish := MainDish new.desserts := Desserts new.soda := Soda new.longDrink := LongDrinks new.^self.</body>
</methods>


<methods>
<class-id>MainMenu class</class-id> <category>instance creation</category>

<body package="EROS" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>
</methods>


<methods>
<class-id>MainMenu</class-id> <category>EROSApp Actions</category>

<body package="EROS" selector="displayList">displayListself subclassResponsibility.</body>

<body package="EROS" selector="add:">add: aOrderedCollectionself subclassResponsibility.</body>

<body package="EROS" selector="delete:">delete: aValueself subclassResponsibility.</body>
</methods>

<methods>
<class-id>MainMenu</class-id> <category>accessing</category>

<body package="EROS" selector="desc">desc	^desc</body>

<body package="EROS" selector="calories">calories	^calories</body>

<body package="EROS" selector="ingredients:">ingredients: anObject	ingredients := anObject</body>

<body package="EROS" selector="price:">price: anObject	price := anObject</body>

<body package="EROS" selector="ingredients">ingredients	^ingredients</body>

<body package="EROS" selector="price">price	^price</body>

<body package="EROS" selector="name:">name: anObject	name := anObject</body>

<body package="EROS" selector="sidedish:">sidedish: anObject	sidedish := anObject</body>

<body package="EROS" selector="sidedish">sidedish	^sidedish</body>

<body package="EROS" selector="calories:">calories: anObject	calories := anObject</body>

<body package="EROS" selector="desc:">desc: anObject	desc := anObject</body>

<body package="EROS" selector="name">name	^name</body>
</methods>

<methods>
<class-id>MainMenu</class-id> <category>initialize-release</category>

<body package="EROS" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Edit the following to properly initialize instance variables ***"	price := nil.	name := nil.	calories := nil.	ingredients := nil.	sidedish := nil.	" *** And replace this comment with additional initialization code *** "	^self</body>
</methods>


<methods>
<class-id>MainDish</class-id> <category>EROSApp Actions</category>

<body package="EROS" selector="delete:">delete: aValue"The selected Main Dish value is searched in the ordered collection and is removed."|temp|temp := 1.	[((aOrderedCollection at: temp) = aValue)] whileFalse: [ temp := (temp +1) ].	aOrderedCollection removeAtIndex: temp.	^self</body>

<body package="EROS" selector="displayList">displayList^aOrderedCollection.</body>

<body package="EROS" selector="add:">add: aValue"This method is used to add the Main Dish names to the ordered collection"(aOrderedCollection includes: aValue)	ifTrue:[ Dialog warn: 'The attributes of the Main Dish are updated']	ifFalse:[ aOrderedCollection add: aValue.].^self</body>
</methods>

<methods>
<class-id>MainDish</class-id> <category>accessing</category>

<body package="EROS" selector="aOrderedCollection">aOrderedCollection	^aOrderedCollection</body>

<body package="EROS" selector="aOrderedCollection:">aOrderedCollection: anObject	aOrderedCollection := anObject</body>
</methods>

<methods>
<class-id>MainDish</class-id> <category>initialize-release</category>

<body package="EROS" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Edit the following to properly initialize instance variables ***"	aOrderedCollection := OrderedCollection new.	" *** And replace this comment with additional initialization code *** "	^self</body>
</methods>


<methods>
<class-id>Soda</class-id> <category>EROSApp Actions</category>

<body package="EROS" selector="displayList">displayList^aOrderedCollection.</body>

<body package="EROS" selector="add:">add: aValue"This method is used to add the soda names to the ordered collection"(aOrderedCollection includes: aValue)	ifTrue:[ Dialog warn: 'The attributes of soda are updated']	ifFalse:[ aOrderedCollection add: aValue.].^self</body>

<body package="EROS" selector="delete:">delete: aValue"The selected soda value is searched in the ordered collection and is removed."|temp|temp := 1.	[((aOrderedCollection at: temp) = aValue)] whileFalse: [ temp := (temp +1) ].	aOrderedCollection removeAtIndex: temp.	^self</body>
</methods>

<methods>
<class-id>Soda</class-id> <category>accessing</category>

<body package="EROS" selector="aOrderedCollection:">aOrderedCollection: anObject	aOrderedCollection := anObject</body>

<body package="EROS" selector="aOrderedCollection">aOrderedCollection	^aOrderedCollection</body>
</methods>

<methods>
<class-id>Soda</class-id> <category>initialize-release</category>

<body package="EROS" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Edit the following to properly initialize instance variables ***"	aOrderedCollection := OrderedCollection new.	" *** And replace this comment with additional initialization code *** "	^self</body>
</methods>


<methods>
<class-id>LongDrinks</class-id> <category>EROSApp Actions</category>

<body package="EROS" selector="delete:">delete: aValue"The selected Long drink value is searched in the ordered collection and is removed."|temp|temp := 1.	[((aOrderedCollection at: temp) = aValue)] whileFalse: [ temp := (temp +1) ].	aOrderedCollection removeAtIndex: temp.	^self</body>

<body package="EROS" selector="displayList">displayList^aOrderedCollection.</body>

<body package="EROS" selector="add:">add: aValue"This method is used to add the Long drink names to the ordered collection"(aOrderedCollection includes: aValue)	ifTrue:[ Dialog warn: 'The attributes of Long drink are updated']	ifFalse:[ aOrderedCollection add: aValue.].^self</body>
</methods>

<methods>
<class-id>LongDrinks</class-id> <category>accessing</category>

<body package="EROS" selector="aOrderedCollection">aOrderedCollection	^aOrderedCollection</body>

<body package="EROS" selector="aOrderedCollection:">aOrderedCollection: anObject	aOrderedCollection := anObject</body>
</methods>

<methods>
<class-id>LongDrinks</class-id> <category>initialize-release</category>

<body package="EROS" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Edit the following to properly initialize instance variables ***"	aOrderedCollection := OrderedCollection new.	" *** And replace this comment with additional initialization code *** "	^self</body>
</methods>


<methods>
<class-id>Appetizers</class-id> <category>EROSApp Actions</category>

<body package="EROS" selector="displayList">displayList^aOrderedCollection.</body>

<body package="EROS" selector="add:">add: aValue"This method is used to add the appetizers names to the ordered collection"(aOrderedCollection includes: aValue)	ifTrue:[ Dialog warn: 'The attributes of the appetizer are updated']	ifFalse:[ aOrderedCollection add: aValue.].^self</body>

<body package="EROS" selector="delete:">delete: aValue"The selected appetizer value is searched in the ordered collection and is removed."|temp|temp := 1.	[((aOrderedCollection at: temp) = aValue)] whileFalse: [ temp := (temp +1) ].	aOrderedCollection removeAtIndex: temp.	^self</body>
</methods>

<methods>
<class-id>Appetizers</class-id> <category>accessing</category>

<body package="EROS" selector="temp2">temp2	^temp2</body>

<body package="EROS" selector="aOrderedCollection">aOrderedCollection	^aOrderedCollection</body>

<body package="EROS" selector="aOrderedCollection:">aOrderedCollection: anObject	aOrderedCollection := anObject</body>

<body package="EROS" selector="temp1:">temp1: anObject	temp1 := anObject</body>

<body package="EROS" selector="temp1">temp1	^temp1</body>

<body package="EROS" selector="temp2:">temp2: anObject	temp2 := anObject</body>
</methods>

<methods>
<class-id>Appetizers</class-id> <category>initialize-release</category>

<body package="EROS" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Edit the following to properly initialize instance variables ***"	temp1 := nil.	temp2 := nil.	aOrderedCollection := OrderedCollection new.	" *** And replace this comment with additional initialization code *** "	^self</body>
</methods>


<methods>
<class-id>Desserts</class-id> <category>EROSApp Actions</category>

<body package="EROS" selector="delete:">delete: aValue"The selected dessert value is searched in the ordered collection and is removed."|temp|temp := 1.	[((aOrderedCollection at: temp) = aValue)] whileFalse: [ temp := (temp +1) ].	aOrderedCollection removeAtIndex: temp.	^self</body>

<body package="EROS" selector="displayList">displayList^aOrderedCollection.</body>

<body package="EROS" selector="add:">add: aValue"This method is used to add the dessert names to the ordered collection"(aOrderedCollection includes: aValue)	ifTrue:[ Dialog warn: 'The attributes of the Dessert are updated']	ifFalse:[ aOrderedCollection add: aValue.].^self</body>
</methods>

<methods>
<class-id>Desserts</class-id> <category>accessing</category>

<body package="EROS" selector="aOrderedCollection">aOrderedCollection	^aOrderedCollection</body>

<body package="EROS" selector="aOrderedCollection:">aOrderedCollection: anObject	aOrderedCollection := anObject</body>
</methods>

<methods>
<class-id>Desserts</class-id> <category>initialize-release</category>

<body package="EROS" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Edit the following to properly initialize instance variables ***"	aOrderedCollection := OrderedCollection new.	" *** And replace this comment with additional initialization code *** "	^self</body>
</methods>



</st-source>
