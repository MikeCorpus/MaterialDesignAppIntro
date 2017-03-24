//
//  ViewController.swift
//  MaterialDesignAppIntro
//
//  Created by Michael V. Corpus on 24/03/2017.
//  Copyright © 2017 Michael V. Corpus. All rights reserved.
//

import UIKit
import PaperOnboarding

class ViewController: UIViewController, PaperOnboardingDataSource {

    @IBOutlet weak var OnboardingView: OnboardingView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        OnboardingView.dataSource = self
    }
    
    func onboardingItemsCount() -> Int {
        return 3
    }
    
    func onboardingItemAtIndex(_ index: Int) -> OnboardingItemInfo {
        
        let backgroundColorOne = UIColor(red: 217/255, green: 89/255, blue: 89/255, alpha: 1)
        let backgroundColorTwo = UIColor(red: 106/255, green: 166/255, blue: 211/255, alpha: 1)
        let backgroundColorThree = UIColor(red: 168/255, green: 200/255, blue: 78/255, alpha: 1)
        
        let titleFont = UIFont(name: "AvenirNext-Bold", size: 24)!
        let descriptionFont = UIFont(name: "AvenirNext-Regular", size: 18)!
        
        return [("tea", "Knausgaard", "Migas thundercats vice, normcore woke hashtag kitsch tacos cold-pressed air plant aesthetic. Fingerstache live-edge small batch, scenester chambray photo booth chicharrones listicle typewriter offal.", "", backgroundColorOne, UIColor.white, UIColor.white, titleFont, descriptionFont),
            ("burger", "Affogato", "Live-edge bespoke tacos kale chips, poutine sartorial umami plaid edison bulb godard salvia helvetica chartreuse. ", "", backgroundColorTwo, UIColor.white, UIColor.white, titleFont, descriptionFont),
            ("icecream", "Truffaut", "Normcore migas selvage keytar, cronut af listicle pinterest neutra etsy twee put a bird on it lyft yuccie affogato. ", "", backgroundColorThree, UIColor.white, UIColor.white, titleFont, descriptionFont)] [index]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

