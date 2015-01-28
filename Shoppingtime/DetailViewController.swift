//
//  DetailViewController.swift
//  Shoppingtime
//
//  Created by Olivier Cappelle on 27/11/14.
//  Copyright (c) 2014 Olivier Cappelle. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!

    @IBOutlet weak var noteText: UITextView!

    var detailItem: Task? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    func configureView() {
        // Update the user interface for the detail item.
        if let detail: Task = self.detailItem {
            if let label = self.detailDescriptionLabel {
                label.text = detail.title
            }
            if let note = self.noteText {
                note.text = detail.note
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

