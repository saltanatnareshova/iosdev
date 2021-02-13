//
//  Contact.swift
//  ContactBook
//
//  Created by Saltanat Nareshova on 09.02.2021.
//

import Foundation
import UIKit
class Contact{
    var nameSurname: String?
    var number: String?
    var image: UIImage?
    init(_ nameSurname: String, _ number: String, _ image: UIImage) {
        self.nameSurname = nameSurname
        self.number = number
        self.image = image
    }
}
