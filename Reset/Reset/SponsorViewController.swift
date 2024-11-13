//
//  SponsorViewController.swift
//  Reset
//
//  Created by Prasanjit Panda on 12/11/24.
//

import UIKit

class ResultsViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
    }
}

class SponsorViewController: UIViewController,UISearchResultsUpdating {
    
   
    

    let searchController = UISearchController(searchResultsController: ResultsViewController())
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Find Sponsors"
        navigationItem.searchController = searchController
        searchController.searchResultsUpdater = self
        // Do any additional setup after loading the view.
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        guard searchController.searchBar.text != nil else { return }
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
