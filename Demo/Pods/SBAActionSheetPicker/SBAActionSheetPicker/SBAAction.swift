//
//  SBAAction.swift
//  SBAActionSheetPicker
//
//  Created by Shoaib Akhtar on 4/24/18.
//  Copyright © 2018 Shoaib Akhtar. All rights reserved.
//

import UIKit

public class SBAAction: NSObject {
    public var title : String?
    public var image : UIImage?
    private var completion : ((SBAAction)->Void)?
    
    public init(title: String?,image: UIImage?,completion: @escaping ((SBAAction)->Void)){
        super.init()
        self.title=title
        self.image=image
        self.completion=completion
    }
    public func handleCompletion() -> Void {
        self.completion!(self)
    }
}
