//
//  ButtonCell.swift
//  Example width UIKit
//
//  Created by Frank Mortensen on 10/01/2021.
//

import UIKit

protocol ButtonCellDelegate {
    func increaseTextSize()
    func pickText()
}

class ButtonCell: UITableViewCell {
    var delegate: ButtonCellDelegate?

    @IBOutlet weak var increaseTextSizeButton: UIButton!
    @IBOutlet weak var pickTextButton: UIButton!

    func setupUI() {
        increaseTextSizeButton.layer.cornerRadius = 10
        pickTextButton.layer.cornerRadius = 10
    }

    @IBAction func increaseTextSizeButtonTapped(_ sender: Any) {
        delegate?.increaseTextSize()
    }


    @IBAction func pickTextButtonTapped(_ sender: Any) {
        delegate?.pickText()
    }
}
