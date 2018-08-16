//
//  GlobalVariables.swift
//  TTT
//
//  Created by Gordon, Brandon Thomas on 11/8/17.
//  Copyright © 2017 Gordon, Brandon Thomas. All rights reserved.
//

class GlobalVariables{
    
    var computerScore: Int = 0
    var humanScore: Int = 0
    var tieScore: Int = 0
    
    class var sharedManager: GlobalVariables{
        struct Static{
            static let instance = GlobalVariables()
        }
        return Static.instance
    }
    
    
    
}
