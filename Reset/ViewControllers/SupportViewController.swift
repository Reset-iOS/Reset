//
//  SupportViewController.swift
//  Reset
//
//  Created by Prasanjit Panda on 15/11/24.
//

import UIKit

class SupportViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("In Support page")
        if let currentUser = DataManager.shared.getCurrentUser() {
                    print("Current User: \(currentUser.name)")
                    print(currentUser)
                    // Find the sponsor if exists
                    if let sponsorID = currentUser.sponsorID {
                        let allUsers = DataManager.shared.loadUsers()
                        if let sponsor = allUsers.first(where: { $0.id == sponsorID }) {
                            print("Sponsor Found: \(sponsor.name), \(sponsor.age) years old")
                        } else {
                            print("Sponsor not found in user list.")
                        }
                    } else {
                        print("Current user does not have a sponsor.")
                    }
                } else {
                    print("No current user is logged in.")
                }

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
