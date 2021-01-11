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

        demoTableView.tableFooterView = UIView(frame: CGRect.zero)
    }

}

// MARK: Table methods
extension ViewController {

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        guard let viewModel = viewModel else {
            fatalError("Missing viewmodel!")
        }
        
        switch indexPath.row {
            case 0:
                let cell = demoTableView.dequeueReusableCell(withIdentifier: "ImageCell", for: indexPath) as! ImageCell
                cell.demoImageView.image = UIImage(named: viewModel.imageName)
                cell.updateUI(cornerRadius: 10)
                
                return cell

            case 1:
                let cell = demoTableView.dequeueReusableCell(withIdentifier: "TextCell", for: indexPath) as! TextCell
                cell.cellTextLabel.text = viewModel.currentText
                cell.updateUI(fontSize: viewModel.fontSize)

                return cell

            case 2:
                let cell = demoTableView.dequeueReusableCell(withIdentifier: "ButtonCell", for: indexPath) as! ButtonCell
                cell.delegate = self
                cell.setupUI()

                return cell

            default: fatalError("Unknown cell type!")
        }

    }

}

extension ViewController: ButtonCellDelegate {
    func increaseTextSize() {
        viewModel?.increaseFontSize()

        tableView.reloadData()
    }

    func pickText() {
        viewModel?.pickRandomText()

        tableView.reloadData()
    }

}
