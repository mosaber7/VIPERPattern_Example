//
//  ViewController.swift
//  VIPERPattern_example
//
//  Created by Saber on 01/09/2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource,HomeViewProtocol{
    weak var presenter: HomePresenterProtocol?
    
    @IBOutlet weak var userTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        userTable.delegate = self
        userTable.dataSource = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = userTable.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! Cell
        return cell
    }

}

