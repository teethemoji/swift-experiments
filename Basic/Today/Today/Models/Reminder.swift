//
//  Reminder.swift
//  Today
//
//  Created by 김보영 on 2022/07/06.
//

import Foundation

struct Reminder {
 
    var title : String
    var dueDate : Date
    var notes : String? = nil
    var isComplete : Bool = false
    
}

#if DEBUG
extension Reminder {
    
}
#endif
