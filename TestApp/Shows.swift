//
//  Books.swift
//  TestApp
//
//  Created by epita on 29/03/2018.
//  Copyright © 2018 NOTNULL. All rights reserved.
//

import Foundation

class Shows {
    var writer:String?
    var title:String?
    var publisher:String?
    var year:String?
    var description:String?
    var image: String?
    
    init(writer:String,
         title:String,
         publisher:String,
         year:String,
         description:String,
         image:String
        ){
        self.writer = writer
        self.title = title
        self.publisher = publisher
        self.year = year
        self.description = description
        self.image = image
    }
    
    
}
