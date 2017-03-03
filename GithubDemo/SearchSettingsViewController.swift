//
//  SearchSettingsViewController.swift
//  GithubDemo
//
//  Created by Jane on 3/2/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit

class SearchSettingsViewController: UIViewController {

    var settings = GithubRepoSearchSettings()
    weak var delegate: SettingsPresentingViewControllerDelegate?
    
    @IBOutlet var sliderLabel: UILabel!
    @IBAction func sliderAction(_ sender: UISlider) {
        sliderLabel.text = "\(Int(sender.value))" // = String(sender.value)
        settings.minStars = Int(sender.value)
    }
    
    @IBAction func saveButtonTapped(_ sender: UIBarButtonItem) {
        self.delegate?.didSaveSettings(settings: self.settings)
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func cancelButtonTapped(_ sender: UIBarButtonItem) {
        self.delegate?.didCancelSettings()
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sliderLabel.text = "0"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

protocol SettingsPresentingViewControllerDelegate: class {
    func didSaveSettings(settings: GithubRepoSearchSettings)
    func didCancelSettings()
}
