//
//  PickerListStyleInterfaceController.swift
//  WWDCWatchDemo
//
//  Created by Jacky Wang on 7/7/15.
//  Copyright © 2015 Jacky Wang. All rights reserved.
//

import WatchKit
import Foundation

let players = ["kobe", "jordan", "love", "westbrook", "duncan", "griffin", "magic", "shaq", "durant", "bird", "carmelo", "rose", "paul", "iverson", "curry"]

class PickerListStyleInterfaceController: WKInterfaceController {

    @IBOutlet var listStylePicker: WKInterfacePicker!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
		let items: [WKPickerItem] = (0..<players.count).map {
			let item = WKPickerItem()
			item.title = players[$0]
			item.accessoryImage = WKImage(imageName: players[$0])
			return item
		}
        listStylePicker.setItems(items)
    }
}

