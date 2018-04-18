//
//  UiImage.swift
//  gs-weather-ios
//
//  Created by Gregory Soloshchenko on 4/18/18.
//  Copyright © 2018 Gregory Soloshchenko. All rights reserved.
//

import UIKit

extension UIImageView {
    func setImageColor(color: UIColor) {
        let templateImage = self.image?.withRenderingMode(UIImageRenderingMode.alwaysTemplate)
        self.image = templateImage
        self.tintColor = color
    }
}
