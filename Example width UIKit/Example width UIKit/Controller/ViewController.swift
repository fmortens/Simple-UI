//
//  ViewController.swift
//  Example width UIKit
//
//  Created by Frank Mortensen on 10/01/2021.
//

import UIKit

class ViewController: UITableViewController {

    @IBOutlet var demoTableView: UITableView!

    var viewModel: ViewModel?

    override func viewDidLoad() {
        super.viewDidLoad()

        viewModel = ViewModel()

        demoTableView.delegate = self
    }

}

// MARK: Table methods
extension ViewController {

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        guard let viewModel = viewModel else {
            fatalError("Missing viewmodel!")
        }
        
        switch indexPath.row {
            case 0:
                let cell = demoTableView.dequeueReusableCell(withIdentifier: "ImageCell", for: indexPath) as! ImageCell
                cell.demoImageView.image = UIImage(named: viewModel.imageName)
                return cell
            default: fatalError("Unknown cell type!")
        }

    }

}
