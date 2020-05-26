//
//  User.swift
//  Final-Relax-Master
//
//  Created by Omrane on 5/24/20.
//  Copyright © 2020 mac. All rights reserved.
//

import UIKit

class User: NSObject,NSCoding {
    
    
    func encode(with coder: NSCoder) {
          coder.encode(id, forKey: "id")
          coder.encode(nom,forKey: "nom")
          coder.encode(prenom,forKey: "prenom")
          coder.encode(password,forKey: "password")
          coder.encode(email,forKey: "email")
          coder.encode(phone,forKey: "phone")

      }
    
    required convenience init?(coder: NSCoder) {
          let id = coder.decodeInteger(forKey: "id")
          let nom = coder.decodeObject(forKey: "nom") as! String
          let prenom = coder.decodeObject(forKey: "prenom") as! String
          let password = coder.decodeObject(forKey: "password") as! String
          let email = coder.decodeObject(forKey: "email") as! String
          let phone = coder.decodeObject(forKey: "phone") as! String
        self.init(id: id,nom: nom,prenom: prenom,password: password,email:email,phone:phone)
      }
      
      
      var id = 0
      var nom = ""
      var prenom = ""
      var password = ""
      var email = ""
      var phone = ""
     
      
      init(id: Int, nom: String, prenom: String, password: String, email: String, phone: String){
          self.id = id
          self.nom = nom
          self.prenom = prenom
          self.password = password
          self.email = email
          self.phone = phone
          
      }
      
      override init() {
      }



}
