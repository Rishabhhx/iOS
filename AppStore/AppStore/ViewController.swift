//
//  ViewController.swift
//  AppStore
//
//  Created by Rishabh Sharma on 13/03/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var upperTableView: UITableView!
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
//        setupTableView()
        
    }
//    func setupTableView() {
//        let cellNib = UINib(nibName: "AppsTableViewCell", bundle: nil)
//        self.tableView.register(cellNib, forCellReuseIdentifier: "AppsTableViewCell")
//    }

    @IBAction func onClickSeeAll(_ sender: Any) {
    }
    
}
extension ViewController : UITableViewDelegate , UITableViewDataSource
{
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AppsTableViewCell", for: indexPath) as! AppsTableViewCell
        return cell
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    func upperTableView(_ upperTableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = upperTableView.dequeueReusableCell(withIdentifier: "BannerTableViewCell", for: indexPath) as! BannerTableViewCell
        return cell
    }
    func upperTableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    
}

