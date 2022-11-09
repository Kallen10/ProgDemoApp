//
//  PlaceHolderDetailViewController.swift
//  BasicAppDemoProgrammarically
//
//  Created by Consultant on 11/8/22.
//

import UIKit

class PlaceHolderDetailViewController: UIViewController {
    
    override func loadView() {
        super.loadView()
        print ("VC: View is loading in mem")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .systemGray
        print ("VC: View did load in mem")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print ("VC: View will be entering in mem")
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print ("VC: View did enter")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print ("VC: View is leaving in mem")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print ("VC: View did  leave")
    }
    
}
