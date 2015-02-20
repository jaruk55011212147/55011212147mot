//
//  ViewController.swift
//  coreimageViwe
//
//  Created by iStudents on 2/20/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit
import AssetsLibrary
class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var uimageCiew: UIImageView!

    
    @IBOutlet weak var amounslider: UISlider!
    var context: CIContext!
    var filter: CIFilter!
    var beginImage: CIImage!
    var orientation: UIImageOrientation = .Up
    
    @IBAction func save(sender: AnyObject) {
        let imageToSave = filter.outputImage
        let softwareContext = CIContext(options:[kCIContextUseSoftwareRenderer: true])
        let cgimg = softwareContext.createCGImage(imageToSave, fromRect: imageToSave.extent())
        let library = ALAssetsLibrary()
         library.writeImageToSavedPhotosAlbum(cgimg, metadata : imageToSave.properties(), completionBlock: nil)
    }
    @IBAction func photoalbum(sender: AnyObject) {
        let pickerC = UIImagePickerController()
        pickerC.delegate =  self
        self.presentViewController(pickerC, animated: true, completion: nil)
    }
    
    
    @IBAction func amounsliderchag(sender: UISlider) {
        let slidervalue = sender.value
        let outputImge = self.oldPhoto(beginImage, withAmount: slidervalue)
        let cgimg = context.createCGImage(outputImge, fromRect:outputImge.extent())
        let newImage = UIImage(CGImage: cgimg, scale:1, orientation: orientation)
        self.uimageCiew.image = newImage
                   }
    
    func imagePickerController(picker: UIImagePickerController!, didFinishPickingMediaWithInfo info: NSDictionary!) {
        
        self.dismissViewControllerAnimated(true, completion: nil);
        
        let gotImage =  info[UIImagePickerControllerOriginalImage] as UIImage
        
        beginImage = CIImage(image: gotImage)
        orientation = gotImage.imageOrientation
        filter.setValue(beginImage, forKey: kCIInputImageKey)
        self.amounsliderchag(amounslider)
    }
    
    func oldPhoto(img: CIImage,withAmount intensity: Float) -> CIImage{
     
        let sepia = CIFilter(name:"CISepiaTone")
        sepia.setValue(img, forKey: kCIInputImageKey)
        sepia.setValue(intensity, forKey: "inputIntensity")
        
        let random = CIFilter(name: "CIRandomGenerator")
        let lighten = CIFilter(name: "CIColorControls")
        lighten.setValue(random.outputImage, forKey: kCIInputImageKey)
        lighten.setValue(1 - intensity, forKey: "inputBrigthness")
        lighten.setValue(0, forKey: "inputSaturation")
        
        
        let crippedImage = lighten.outputImage.imageByCroppingToRect(beginImage.extent())
        
        let composite = CIFilter(name: "CIHARDLightBlendMode")
        composite.setValue(sepia.outputImage, forKey: kCIInputImageKey)
        composite.setValue(crippedImage, forKey: kCIInputBackgroundImageKey)
        
        let vignette = CIFilter(name: "CIVidnette")
        vignette.setValue(composite.outputImage, forKey: kCIInputImageKey)
        vignette.setValue(intensity * 2, forKey: "inputIntensity")
        vignette.setValue(intensity * 30, forKey: "inputPadius")
        
        return vignette.outputImage
    }
    
    func logAllFilters(){
    let properties = CIFilter.filterNamesInCategory(kCICategoryBuiltIn)
        println(properties)
        
        for filterName: AnyObject in properties {
            let fltr = CIFilter(name:filterName as String)
            println(fltr.attributes())
        }
    
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    let fikeURL = NSBundle.mainBundle().URLForResource("image", withExtension: "png")
    
       beginImage = CIImage(contentsOfURL: fikeURL)
        filter = CIFilter(name: "CISepiaTone")
        filter.setValue(beginImage, forKey: kCIInputAngleKey)
        filter.setValue(0.5, forKey: kCIInputIntensityKey)
        let outputImage = filter.outputImage
        
        context = CIContext(options: nil)
        let cgimg = context.createCGImage(outputImage, fromRect: outputImage.extent())
        
        let newImge = UIImage(CGImage: cgimg)
        self.logAllFilters()
            }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
           }


}

