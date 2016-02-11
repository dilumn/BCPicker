BCPicker
======

BCPicker is a Custom Picker which enables UIPickerView to develop iOS Apps. You can just import the BCPicker class or import using CocoaPods & with few lines of code you can use UIPickerView.

### Installation with CocoaPods

[CocoaPods](http://cocoapods.org) is a dependency manager for Objective-C, which automates and simplifies the process of using 3rd-party libraries like MetaQR in your projects.

#### Podfile

```ruby
platform :ios, '7.0'
pod "BCPicker"
```
### Usage

```html
bcPicker=[[BCPicker alloc] initWithView:self.view]; //init BCPicker with self.view
bcPicker.strTitle=@"SELECT"; //Set  titile
bcPicker.txtTargetField=txtTargetField; //Set target of the Picker
[bcPicker.lblPickerHeader setTextColor:[UIColor whiteColor]];
bcPicker.arrPickerItems = [[NSArray alloc]initWithObjects:@"Driver",@"Branch Manager",@"Manager",@"Owner",@"Sales Person",@"Other", nil];
    
[bcPicker loadDate]; //finally Load data
```

Add this method where you want to show the Picker

```html
- (IBAction)btnClicked:(id)sender 
{
    [bcPicker togglePicker];
}
```

<h1>

<h1>
Credits
</h1>
BCPicker was originally created by Dilum Navanjana for iOS.

<h1>
Contact
</h1>

Follow BCPicker on Blog (http://bcdilumonline.blogspot.com)

<h1>
License
</h1>
BCPicker is available under the MIT license. See the LICENSE file for more info.
