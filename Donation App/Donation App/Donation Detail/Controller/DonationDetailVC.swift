//
//  DonationDetailVC.swift
//  Donation App
//
//  Created by Eric Morales on 8/7/21.
//

import UIKit

class DonationDetailVC: UIViewController {

    // MARK: Properties
    var foodBankName: String = ""
    lazy var donationPage: DonationDetailPage = DonationDetailPage(parentVC: self.view, foodBankName: foodBankName)
    
    // MARK: VC LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .systemGray6
        self.view.addSubview(donationPage)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        donationPage.setUpTextFieldsBorders()
    }
    
    // MARK: Methods
    @objc func reserveDonationButtonPressed() {
        
        print("Reserve donation slot!")
        self.dismiss(animated: true, completion: nil)
        
    }
    
    @objc func backButtonPressed() {
        
        print("Back button pressed!")
        self.dismiss(animated: true, completion: nil)
    }
}
