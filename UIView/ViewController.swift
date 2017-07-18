//
//  ViewController.swift
//  UIView
//
//  Created by António Pedro on 14/07/17.
//  Copyright © 2017 AppCoda. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        var friends:[Friend] = []
        
        let friend1 = Friend(name: "Sergey", age: 30)
        let friend2 = Friend(name: "Bill", age: 35)
        let friend3 = Friend(name: "Michael", age: 21)
        
        friends.append(friend1)
        friends.append(friend2)
        friends.append(friend3)
        
        // Get sorted array in descending order (largest to the smallest number)
        let sortedFriends = friends.sorted(by: { $0.age > $1.age })
        printFriends(friends: sortedFriends)
        
        // Get sorted array in ascending order (smallest to the largest number)
        let sortedFriendsAscendingOrder = friends.sorted(by: { $0.age < $1.age })
        printFriends(friends: sortedFriendsAscendingOrder)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func printFriends(friends: [Friend])
    {
        for friendEntry in friends {
            print("Name: \(friendEntry.name), age: \(friendEntry.age)")
        }
    }
}

class Friend {
    let name : String
    let age : Int
    
    init(name : String, age: Int) {
        self.name = name
        self.age = age
    }
}
