//
//  TableViewVC.swift
//  RecipeApp!
//
//  Created by srk on 26/06/21.
//  Copyright © 2021 Nikunj. All rights reserved.
//

import UIKit

//class UserModel {
//    var userImage: UIImage?
//    var name: String?
//    var desc: String?
//
//    init(userImage: UIImage, name: String, desc: String){
//        self.userImage = userImage
//        self.name = name
//        self.desc = desc
//    }
//}



class TableViewVC: UIViewController {
    
    var tableView = UITableView()
    var recipeArr = ["GRILLED CHICKEN WITH FRESH CHERRY SALSA", "BLACK-PEPPER SOY CHICKEN WINGS", "LAMB BOLOGNESE WITH FETA & MINT", "LEMONGRASS CHICKEN DUMPLINGS", "GREEK STYLE LAMB MEATBALLS WITH GARLIC YOGURT & MINT CHIMICHURRI SAUCE", "CRANBERRY COCKTAIL (HOLIDAY SPECIAL)","BANANA BREAD WITH HONEY, OATS & WALNUTS"]
    var recipeDesc = ["Juicy grilled chicken breasts, topped with a delicious ruby-red cherry salsa, made from the season’s best local cherries.", "These peppery Asian inspired chicken wings are great as a finger-licking appetizer or as a main served with green beans and rice. Either way, it will leave your mouth tingling for more!", "A hearty and traditional pasta sauce favorite with a ground lamb makeover. Served with a twist of feta and mint, this is the perfect stick to your ribs comfort dish!", "A delicious fragrant lemongrass chicken filled dumpling/pot-sticker you won’t be able to stop eating!", "Juicy Greek-style lamb meatballs on a bed of garlicky yogurt and topped with some refreshing mint chimichurri sauce.","This sweet and fruity cranberry cocktail is perfect for Thanksgiving, Christmas, Valentine’s Day or any special occasion. Taste it and it will be Love at first sip!", "A super simple to make, moist, melt in your mouth delicious Banana Bread with Honey, Oats & Walnuts. This one’s perfect to freeze slice and eat whenever you want."]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Recipes"
        setTableView()
        view.backgroundColor = UIColor.white
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func setTableView(){
        tableView.frame = self.view.frame
        tableView.backgroundColor = UIColor.clear
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorColor = UIColor.clear
        tableView.backgroundColor = UIColor.clear
        self.view.addSubview(tableView)
        
        tableView.register(CustomTableViewCell.self, forCellReuseIdentifier: "Cell")
    }
    
    
    
}


extension TableViewVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recipeArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell
        
        cell.userImage.image = UIImage(named: recipeArr[indexPath.row])
        cell.namelbl.text = recipeArr[indexPath.row]
//        cell.descriptionlbl.text = recipeDesc[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 125
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let vc = storyboard.instantiateViewController(withIdentifier: "DetailVCViewController") as? DetailVCViewController{
            vc.desc = recipeDesc[indexPath.row]
            vc.image = UIImage(named: recipeArr[indexPath.row])!
            vc.lbl = recipeArr[indexPath.row]
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let ip = tableView.indexPathForSelectedRow
//        let dvc = segue.destination as! DetailVCViewController
//        dvc.image = UIImage(named: recipeArr[ip!.row])!
//        dvc.lbl = recipeArr[(ip?.row)!]
//    }
    
}
