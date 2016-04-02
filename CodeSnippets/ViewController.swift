//
//  ViewController.swift
//  CodeSnippets
//
//  Created by FareedQ on 2016-04-02.
//  Copyright © 2016 FareedQ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

// You will need a view that you are applying the gradient to, in this case it is called contentView
//    func addGradient(colour1:UIColor, colour2:UIColor){
//        let gradient: CAGradientLayer = CAGradientLayer()
//        gradient.frame = contentView.bounds
//        gradient.colors = [colour1.CGColor, colour2.CGColor]
//        contentView.layer.insertSublayer(gradient, atIndex: 0)
//    }
    
//    let alert = UIAlertController(title: "New Student", message: "Add New Student", preferredStyle: .Alert)
//    let save = UIAlertAction(title: "Save", style: .Default) {
//        (alertAction:UIAlertAction) -> Void in
//        let textField = alert.textFields![0]
//        self.saveStudent(textField.text!)
//        self.myTableView.reloadData()
//    }
//    let cancel = UIAlertAction(title: "Cancel", style: .Default) { (UIAlertAction) -> Void in
//    }
//    alert.addTextFieldWithConfigurationHandler { (textField:UITextField) -> Void in
//    }
//    alert.addAction(save)
//    alert.addAction(cancel)
//    presentViewController(alert, animated: true, completion: nil)
    
//    func alertMessage(message:String, thisViewController:UIViewController){
//        let alert = UIAlertController(title: "Error", message: message, preferredStyle: .Alert)
//        let okay = UIAlertAction(title: "Okay", style: .Default) { (UIAlertAction) -> Void in
//        }
//        alert.addAction(okay)
//        thisViewController.presentViewController(alert, animated: true, completion: nil)
//    }
    
//   // You'll need a constant wired to this VC that will hold an object in the associated view to the bottom of the screen. You will also need a constant CGFloat variable in thet file that represents the distance of padding from the bottom.
//    @IBOutlet weak var bottomMapLayoutConstraint: NSLayoutConstraint!
//    let bottomPadding:CGFloat = 8
//    
//    //In the VC you'll need to assign the implement the Keyboard notification listeners function
//    override func viewDidAppear(animated: Bool) {
//        super.viewDidAppear(animated)
//        registerForKeyboardNotifications()
//    }
//    
//    override func viewDidDisappear(animated: Bool) {
//        super.viewDidDisappear(animated)
//        degregisterForKeyboardNotifications()
//    }
//    
//    //Where ever you keep the NSNotification(s) listener, you'll have to define this notification listeners.
//    func registerForKeyboardNotifications(){
//        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
//        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
//    }
//    
//    func degregisterForKeyboardNotifications(){
//        NSNotificationCenter.defaultCenter().removeObserver(self)
//    }
//    
//    // These next two commands allow you to extrat the NSNotification object's data and pass them into animation commands.
//    func keyboardWillShow(notification: NSNotification){
//        guard let
//            kbSizeValue = notification.userInfo?[UIKeyboardFrameEndUserInfoKey] as? NSValue,
//            kbDurationNumber = notification.userInfo?[UIKeyboardAnimationDurationUserInfoKey] as? NSNumber
//        else {return}
//        let kbHeight = kbSizeValue.CGRectValue().height
//        animateToKeyboardHeight(kbHeight, duration: kbDurationNumber.doubleValue)
//        
//    }
//    
//    func keyboardWillHide(notification: NSNotification){
//        guard let
//            kbDurationNumber = notification.userInfo?[UIKeyboardAnimationDurationUserInfoKey] as? NSNumber
//            else {return}
//        animateToKeyboardHeight(0, duration: kbDurationNumber.doubleValue)
//    }
//    
//    //This animation file allows the Bottom Map Layout Constraint to adjust in height for a durration time.
//    func animateToKeyboardHeight(kbHeight: CGFloat, duration: Double){
//        UIView.animateWithDuration(duration, animations: { () -> Void in
//            self.bottomMapLayoutConstraint.constant = kbHeight + self.bottomPadding
//            self.view.layoutIfNeeded()
//        }) { (complete) -> Void in
//            
//        }
//    }
    
//        let seconds = 4.0
//    let delay = seconds * Double(NSEC_PER_SEC)  // nanoseconds per seconds
//    let dispatchTime = dispatch_time(DISPATCH_TIME_NOW, Int64(delay))
//    
//    dispatch_after(dispatchTime, dispatch_get_main_queue(), {
//    
//    // here code perfomed with delay
//    
//    })
    
//        func myPerformeCode(timer : NSTimer) {
//        
//        // here code to perform
//    }
//    let myTimer : NSTimer = NSTimer.scheduledTimerWithTimeInterval(4, target: self, selector: Selector("myPerformeCode:"), userInfo: nil, repeats: false)
    
//    //This useful little snippit will allow you to open an NSData as a string
//
//extension NSData {
//    var string: String {
//        return NSString(data: self, encoding: NSUTF8StringEncoding)! as String
//    }
//}
    
//    import UIKit
//
////Declaring it an IBDesignable will make the property in any UI Class that inherets this
//@IBDesignable
//
//class ExtendedView: UIView {
//
//    @IBInspectable var cornerRadius : CGFloat = 0 {
//        didSet {
//            layer.cornerRadius = cornerRadius
//            layer.masksToBounds = cornerRadius > 0
//        }
//    }
//    @IBInspectable var borderWidth:CGFloat = 0 {
//        didSet {
//            layer.borderWidth = borderWidth
//        }
//    }
//    @IBInspectable var borderColor:UIColor? {
//        didSet {
//            layer.borderColor = borderColor?.CGColor
//        }
//    }
//
//}
    
//    extension String {
//    var doubleValue: Double {
//        return (self as NSString).doubleValue
//    }
//}
    
//    extension String {
//    var floatValue: Float {
//        return (self as NSString).floatValue
//    }
//}
    
//        @IBOutlet weak var target_image: UIImageView!
//    
//    @IBAction func action_button(sender: AnyObject) {
//        
//        let largeScale:CGFloat = 1.3
//        let tranformationScale = 1 + (largeScale - target_image.transform.a)
//        
//        UIView.animateWithDuration(0.3) { () -> Void in
//            self.target_image.transform = CGAffineTransformMakeScale(tranformationScale, tranformationScale)
//            self.target_image.alpha = 1 - self.target_image.alpha
//        }
//    }
    
//    self.someArray.sortInPlace({ $0.sortValue > $1.sortValue })
//dispatch_async(dispatch_get_main_queue(), { () -> Void in
//    self.collectionView.reloadData()
//})
    
//    let locationInCollectionView = sender.locationInView(collectionView)
//
//guard let indexPath = collectionView.indexPathForItemAtPoint(locationInCollectionView) else {return}
    
//    
////Import to add vibration
//import AudioToolbox
//
//    //handles shake events
//    override func canBecomeFirstResponder() -> Bool {
//        return true
//    }
//    
//    override func motionBegan(motion: UIEventSubtype, withEvent event: UIEvent?) {
//        if motion == .MotionShake  {
//        }
//    }
//    
//    override func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent?) {
//        if motion == .MotionShake {
//            AudioServicesPlayAlertSound(kSystemSoundID_Vibrate);
//        }
//    }
    
//        func UIColorFromRGB(colorCode: String, alpha: Float = 1.0) -> UIColor{
//        let scanner = NSScanner(string:colorCode)
//        var color:UInt32 = 0;
//        scanner.scanHexInt(&color)
//        
//        let mask = 0x000000FF
//        let r = CGFloat(Float(Int(color >> 16) & mask)/255.0)
//        let g = CGFloat(Float(Int(color >> 8) & mask)/255.0)
//        let b = CGFloat(Float(Int(color) & mask)/255.0)
//        
//        return UIColor(red: r, green: g, blue: b, alpha: CGFloat(alpha))
//    }
    
//    // this will need to be in the VC where the textfield is you want to manipulate.
//
//// Add the protocal UITableViewDelegate
//// make sure the textfeild's delegate is the ViewController
//
//    func textFieldShouldReturn(textField: UITextField) -> Bool {
//        view.endEditing(true)
//        return false
//    }
//    
//    func textFieldShouldClear(textField: UITextField) -> Bool {
//        return true
//    }
//    
//    func textFieldDidEndEditing(textField: UITextField) {
//        //Code you want to execute on hitting enter
//    }
    
//    	<key>NSAppTransportSecurity</key>
//	<dict>
//		<key>NSAllowsArbitraryLoads</key>
//		<true/>
//	</dict>
    
//    <key>NSLocationWhenInUseUsageDescription</key>
//<string>Please let me use your location</string>
//<key>NSLocationAlwaysUsageDescription</key>
//<string>Please let me use your location</string>
//<key>NSLocationUsageDescription</key>
//<string>Please let me use your location</string>
    
//        weak var mySelectionVC:selectionViewController!
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        if segue.identifier == "selectionSegue" {
//            guard let tempVC = segue.destinationViewController as? selectionViewController else {return}
//            mySelectionVC = tempVC
//        }
//    }
    
//    import UIKit
//import MapKit
//
//
//class ViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {
//    
//    let locationManager = CLLocationManager()
//    let zoomRadius:CLLocationDistance = 500
//    
//    @IBOutlet weak var mapView: MKMapView!
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        setupLocationManager()
//        
//    }
//
//    func setupLocationManager(){
//        locationManager.delegate = self
//        locationManager.requestWhenInUseAuthorization()
//        locationManager.requestLocation()
//    }
//    
//    func locationManager(manager: CLLocationManager, didChangeAuthorizationStatus status: CLAuthorizationStatus) {
//        mapView.showsUserLocation = (status == .AuthorizedWhenInUse || status == .AuthorizedAlways)
//    }
//    
//    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
//        guard let usersLocation = locationManager.location else {return}
//        let coordinateRegion = MKCoordinateRegionMakeWithDistance(usersLocation.coordinate, zoomRadius, zoomRadius)
//        mapView.setRegion(coordinateRegion, animated: true)
//    }
//    
//    func locationManager(manager: CLLocationManager, didFailWithError error: NSError) {
//    }
//
//}
    
//    // Require a bool for pinPlaced originally false
//// And the IBOutlet for the mapkit view needs to have self set as delegate in the viewDidLoad
//
//    func handleTap(sender: UITapGestureRecognizer){
//        let touchPosition = sender.locationInView(view)
//        
//        if mapKitView.frame.contains(touchPosition) {
//            if !pinPlaced {
//                let touchConvertedToMapPosition = mapKitView.convertPoint(touchPosition, toCoordinateFromView: view)
//                
//                //add annotation pin
//                point1.coordinate = touchConvertedToMapPosition
//                mapKitView.addAnnotation(point1)
//                
//                //add circle
//                overlayCircle = MKCircle(centerCoordinate: touchConvertedToMapPosition, radius: 25 as CLLocationDistance)
//                mapKitView.addOverlay(overlayCircle)
//                
//                //set flag
//                pinPlaced = true
//            } else {
//                //removed annotation pin and circle
//                mapKitView.removeAnnotation(point1)
//                mapKitView.removeOverlay(overlayCircle)
//                
//                //set flag
//                pinPlaced = false
//            }
//        }
//    }
//    
//    //This is a mapView Delegate function to render an overlayed circle on the map.
//
//    func mapView(mapView: MKMapView, rendererForOverlay overlay: MKOverlay) -> MKOverlayRenderer {
//        if overlay is MKCircle {
//            let circle = MKCircleRenderer(overlay: overlay)
//            circle.strokeColor = UIColor.redColor()
//            circle.fillColor = UIColor(red: 255, green: 0, blue: 0, alpha: 0.1)
//            circle.lineWidth = 1
//            return circle
//        }
//        return MKOverlayRenderer()
//    }

//        func executeGeocode(searchBar:UITextField) {
//        guard let appDelegate = UIApplication.sharedApplication().delegate as? AppDelegate else {return}
//        guard let searchString = searchBar.text where searchString.characters.count > 0 else { return }
//        
//        appDelegate.geocodeController.geocodeUserLocation(searchString + " " + CURRENT_CITY_STRING) { (foundLocation) -> () in
//            
//            //locations returned with the long and lat of (0,0) are returned as errors
//            if(foundLocation.coordinate.latitude == 0){
//                self.alertMessage("The location provided did not map to a place in Toronto. Please try specifying the street's direction.")
//                return
//            }
//            
//            self.centerMapOnLocation(foundLocation)
//        }
//    }
//
//    func geocodeUserLocation(addressString:String, returnClosure:(CLLocation)->()) {
//        let geoCoder = CLGeocoder()
//        geoCoder.geocodeAddressString(addressString) { (possiblePlacemarks, possibleError) -> Void in
//            if let error = possibleError {
//                print(error.localizedDescription)
//                returnClosure(CLLocation())
//            } else {
//                guard let actualPlacemarks = possiblePlacemarks else {
//                    returnClosure(CLLocation())
//                    return
//                }
//                for placemark in actualPlacemarks {
//                    guard let foundLocation = placemark.location else {
//                        returnClosure(CLLocation())
//                        return
//                    }
//                    returnClosure(foundLocation)
//                }
//            }
//        }
//    }
//
//    func centerMapOnLocation(location : CLLocation) {
//        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate, regionRadius * 2, regionRadius * 2)
//        mapView.setRegion(coordinateRegion, animated: true)
//    }
    
//    // Reverse gelocate an address
//    // Require Import MapKit
//
//    // Require this IBOutlet to input an address
//
//    func geocodeUserLocation() {
//        
//        guard let actualString = inputTextField.text where actualString.characters.count > 0 else {return}
//        
//        let geoCoder = CLGeocoder()
//        geoCoder.geocodeAddressString(actualString) { (possiblePlacemarks, possibleError) -> Void in
//            if let error = possibleError {
//                print(error.localizedDescription)
//            } else {
//                guard let actualPlacemarks = possiblePlacemarks else {return}
//                for placemark in actualPlacemarks {
//                    self.mapPresentationViewController?.zoomToRegion(placemark.location!)
//                }
//            }
//        }
//    }
    
//    //This snippet will load the users current location and zome into it with 500m radius.
////Remember to add the premission parts into the infoP List
////You will need a MapView on the application
//
//import UIKit
//import MapKit
//
//
//class ViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {
//    
//    let locationManager = CLLocationManager()
//    let zoomRadius:CLLocationDistance = 500
//    
//    @IBOutlet weak var mapView: MKMapView!
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        setupLocationManager()
//        
//    }
//
//    func setupLocationManager(){
//        locationManager.delegate = self
//        locationManager.requestWhenInUseAuthorization()
//        locationManager.requestLocation()
//    }
//    
//    func locationManager(manager: CLLocationManager, didChangeAuthorizationStatus status: CLAuthorizationStatus) {
//        mapView.showsUserLocation = (status == .AuthorizedWhenInUse || status == .AuthorizedAlways)
//    }
//    
//    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
//        guard let usersLocation = locationManager.location else {return}
//        let coordinateRegion = MKCoordinateRegionMakeWithDistance(usersLocation.coordinate, zoomRadius, zoomRadius)
//        mapView.setRegion(coordinateRegion, animated: true)
//    }
//    
//    func locationManager(manager: CLLocationManager, didFailWithError error: NSError) {
//    }
//
//}

//    //Obviously this doesn't have the code to load the map'
////This code requires you to setup an MKAnnotationPoint() for sourcePin and desitnationPin
////All of the things in the button either need to be wired to a button or put somewhere else
//    
//@IBAction func button(sender: AnyObject) {
//        let directionsRequest = MKDirectionsRequest()
//        directionsRequest.source = MKMapItem.init(placemark: MKPlacemark(coordinate: sourcePin.coordinate, addressDictionary: ["":""]))
//        directionsRequest.destination = MKMapItem.init(placemark: MKPlacemark(coordinate: desitnationPin.coordinate, addressDictionary: ["":""]))
//        directionsRequest.transportType = .Any
//        let directions = MKDirections.init(request: directionsRequest)
//        directions.calculateDirectionsWithCompletionHandler { (response, error) -> Void in
//            if((error) != nil){
//                print(error)
//            } else {
//                guard let routeDetails = response?.routes.last else {return}
//                self.mapView.addOverlay(routeDetails.polyline)
//            }
//        }
//    }
//    
//    func mapView(mapView: MKMapView, rendererForOverlay overlay: MKOverlay) -> MKOverlayRenderer {
//        if overlay .isKindOfClass(MKPolyline) {
//            guard let polylineOverlay = overlay as? MKPolyline else {return MKOverlayRenderer()}
//            let renderer = MKPolylineRenderer(polyline: polylineOverlay)
//            renderer.strokeColor = UIColor.redColor()
//            renderer.lineWidth = 5
//            return renderer
//        }
//        return MKOverlayRenderer()
//    }

//    //This snippit gives an example of using the OAuthSwift library to setup an OAuth call and print the JSON results. Remember to import the library and cocoapod framework.
////The oauthswift object can be instantied anywhere and the prameters should be provided by the service provider.
////
//    
//let oauthswift = OAuth1Swift(consumerKey:"fXGxgfzz2ivSUEwnIdjUyq1XOZ5pogmLUnimVnDK", consumerSecret: "53u773HMG0zihJIGLub55N73mqSumUsqeVdRTXMv", requestTokenUrl: "https://api.500px.com/v1/oauth/request_token", authorizeUrl:"https://api.500px.com/v1/oauth/authorize", accessTokenUrl:"https://api.500px.com/v1/oauth/access_token")
//    
//
////The URL will be provided by the api provider
//    func exampleCall() {
//        oauthswift.client.get("https://api.500px.com/v1/photos/4928401", success: { (data, response) -> Void in
//            do {
//                let json = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers)
//                print(json)
//            } catch _ as NSError {
//            }
//            }) { (error) -> Void in
//                print(error)
//        }
//    }

//        let defaults = NSUserDefaults.standardUserDefaults()
//    
//    let data = ["Street Address 1": "1101-322 EGLINTON AVE EAST", "Document Discriminator": "DE4171679", "Customer Id Number": "L0559-38317-60408?", "Class": "G2", "Endorsements": "NONE", "Restrictions": "X", "Jurisdiction Code": "ON", "Postal Code": "M4P 1L6", "Expiration Date": "20180320", "Height": "185 cm", "Country Identification": "CAN", "Vehicle Code": "NONE", "Date Of Birth": "19760408", "Customer Family Name": "LARCOMBE", "Eye Color": "NONE", "Sex": "1", "Customer Given Name": "JAMES,ANDREW", "City": "TORONTO", "Issue Date": "20150429"]
//    
//    var defaultsData:[String:String]?
//    
//    func saveDataToDefaults(){
//        defaults.setValue(data, forKey: "data")
//        defaults.synchronize()
//    }
//    
//    func fetchDataWithDefaults() {
//        if let object = defaults.objectForKey("data") as? [String:String] {
//            defaultsData = object
//            print("Happy Day \(defaultsData)")
//        }
//    }

//    //This is the snippit of code if you need to perfom a segue for any reason
//
//performSegueWithIdentifier("showSecondView", sender: self)
    
//    //This function requires a CGPoint to place the image at the touch
////It also is using an "imageSize" variable to define the image size - you'll need to provide this
////It adds the tag 1 to reference this and to remove it, if you wish
//    
//func createImageOfSelectedOptionUnderTouch(givenTouch:CGPoint){
//        
//        selectedImage = UIImageView(frame: CGRectMake(0,0,0,0))
//        selectedImage.image = UIImage(named: "whatever you called it")
//        selectedImage.translatesAutoresizingMaskIntoConstraints = false
//        selectedImage.tag = 1
//        view.addSubview(selectedImage)
//
//
//        selectedImageHorizontalConstraint = NSLayoutConstraint(item: selectedImage, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Leading, multiplier: 1, constant: givenTouch.x)
//        view.addConstraint(selectedImageHorizontalConstraint)
//        
//        selectedImageVerticalConstraint = NSLayoutConstraint(item: selectedImage, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Top, multiplier: 1, constant: givenTouch.y)
//        view.addConstraint(selectedImageVerticalConstraint)
//        
//        let heightConstraint = NSLayoutConstraint(item: selectedImage, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.Height, multiplier: 1, constant: imageSize.height)
//        view.addConstraint(heightConstraint)
//        
//        let widthConstraint = NSLayoutConstraint(item: selectedImage, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.Width, multiplier: 1, constant: imageSize.width)
//        view.addConstraint(widthConstraint)
//    }
    
//        //note - the preloaded first element and the while loop is to ensure the same meals doesn't happen two days in a row
//    func loadWeeksRandomSelection(){
//        weeklyMealSelection = [Int]()
//        var randomSelection = Int(arc4random_uniform(UInt32(food.meals.count)))
//        weeklyMealSelection.append(randomSelection)
//        for index in 1...daysOfTheWeek.names.count {
//            while randomSelection == weeklyMealSelection[index - 1] {
//                randomSelection = Int(arc4random_uniform(UInt32(food.meals.count)))
//            }
//            weeklyMealSelection.append(randomSelection)
//        }
//    }
    
//    let diceRoll = Int(arc4random_uniform(6) + 1)
    
//        //Declaration
//    func someFunction(returnColsure:([String])->()){
//        var myData = ["1","2"]
//        returnColsure([])
//    }
//    
//    //Method Call
//    someFunction { () -> () in
//    }
    
//    import UIKit
//
//class RoundedCorners: UIImageView{
//    
//    override func awakeFromNib() {
//        super.awakeFromNib()
//        layer.cornerRadius = (bounds.size.width + bounds.size.height)/4
//    }
//
//}
    
//    class TheOneAndOnlyKraken {
//    static let sharedInstance = TheOneAndOnlyKraken()
//}
    
//    
//    
//    func collectionView(collectionView: UICollectionView,
//        layout collectionViewLayout: UICollectionViewLayout,
//        sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
//            let mySize = CGSize(width: collectionView.bounds.size.width, height: collectionView.bounds.size.width*0.7)
//            return mySize
//    }

////This snippit will decode the JSON into a dictionary or print an error
//
//do {
//    let dictionary = try NSJSONSerialization.JSONObjectWithData(bodyData!, options: NSJSONReadingOptions.AllowFragments)
//
//        //Do stuff
//    }
//} catch let err as NSError {
//    print(err.localizedDescription)
//}

//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        let gestureRecognizer = UIPanGestureRecognizer(target: self, action: "selectedMainImage:")
//        self.view.addGestureRecognizer(gestureRecognizer)
//        
//        
////This tidbit is to override other guesture recongizers, so you don't run into issues
//        guard let gestures = imageCollectionView.gestureRecognizers else { return }
//        for gesture in gestures {
//            gestureRecognizer.requireGestureRecognizerToFail(gesture)
//        }
//
//    }
//    
//    func selectedMainImage(sender: UIPanGestureRecognizer){
//        
//        switch sender.state {
//        case .Began:
//            break
//        case .Changed:
//            break
//        case .Ended:
//            break
//        default:
//            break
//        }
//        
//    }

//
////Put this into the page you want to unwind to
////drag an UIButton into the exit at the top of the page
//
//    @IBAction func prepareForUnwind(segue:UIStoryboardSegue) {
//    }
}

