//
//  FriendsViewController.swift
//  Reset
//
//  Created by Prasanjit Panda on 12/11/24.
//

import UIKit

class FriendsViewController: UIViewController {

    let searchController = UISearchController()
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Add friends and family"
        navigationItem.searchController = searchController
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
