//
//  ViewController.swift
//  collectionview_sample
//
//  Created by iroid on 09/02/21.
//  Copyright © 2021 iroid. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate,UICollectionViewDataSource {
    
    let fruits = ["apple","orange","grapes","mango","watermelon","kivi","cherry","banana","strawberry","blueberry"]
    let fruitdetails = ["An apple is an edible fruit produced by an apple tree (Malus domestica). Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus. The tree originated in Central Asia, where its wild ancestor, Malus sieversii, is still found today. Apples have been grown for thousands of years in Asia and Europe and were brought to North America by European colonists.","The orange is the fruit of various citrus species in the family Rutaceae (see list of plants known as orange); it primarily refers to Citrus × sinensis,[1] which is also called sweet orange, to distinguish it from the related Citrus × aurantium, referred to as bitter orange. The sweet orange reproduces asexually (apomixis through nucellar embryony); varieties of sweet orange arise through mutations","A grape is a fruit, botanically a berry, of the deciduous woody vines of the flowering plant genus Vitis","A mango is a stone fruit produced from numerous species of tropical trees belonging to the flowering plant genus Mangifera, cultivated mostly for their edible fruit. Most of these species are found in nature as wild mangoes. The genus belongs to the cashew family Anacardiaceae. Mangoes are native to South Asia,[1][2] from where the common mango or Indian mango, Mangifera indica, has been distributed worldwide to become one of the most widely cultivated fruits in the tropics. Other Mangifera species (e.g. horse mango, Mangifera foetida) are grown on a more localized basis","Watermelon (Citrullus lanatus) is a flowering plant species of the Cucurbitaceae family . A scrambling and trailing vine-like plant, it was originally domesticated in Africa. It is a highly cultivated fruit worldwide, with more than 1,000 varieties","The kiwifruit, or Chinese gooseberry, originally grew wild in China. Kiwis are a nutrient-dense food — they are rich in in nutrients and low in calories","A cherry is the fruit of many plants of the genus Prunus, and is a fleshy drupe (stone fruit)","A banana is an elongated, edible fruit – botanically a berry[1][2] – produced by several kinds of large herbaceous flowering plants in the genus Musa.[3] In some countries, bananas used for cooking may be called .. plantains","he garden strawberry (or simply strawberry; Fragaria × ananassa)[1] is a widely grown hybrid species of the genus Fragaria, collectively known as the strawberries, which are cultivated worldwide for their fruit. The fruit is widely appreciated for its characteristic aroma, bright red color, juicy texture, and sweetness. It is consumed in large quantities, either fresh or in such prepared foods as jam, juice, pies, ice cream, milkshakes, and chocolates","Blueberries are perennial flowering plants with blue or purple berries. They are classified in the section Cyanococcus within the genus Vaccinium. Vaccinium also includes cranberries, bilberries, huckleberries and Madeira blueberries.[1] Commercial blueberries—both wild (lowbush) and cultivated (highbush)—are all native to North America. The highbush varieties were introduced into Europe during the 1930s"]
    

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return fruits.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "newc", for: indexPath) as! newCollectionViewCell
        cell.celllbl.text = fruits[indexPath.item]
        cell.cellimg.image = UIImage(named:fruits[indexPath.item])
//        let layout = UICollectionViewFlowLayout()
//        layout.scrollDirection = .horizontal
        cell.cellimg.layer.cornerRadius = 10
        cell.celllbl.layer.cornerRadius = 10
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let storybrd = UIStoryboard(name: "Main", bundle: nil)
        let newpage = storybrd.instantiateViewController(withIdentifier: "details") as! DetailsViewController
        
        newpage.fruiname = fruits[indexPath.item]
        newpage.image = fruits[indexPath.item]
        newpage.details = fruitdetails[indexPath.item]
        
        self.navigationController?.pushViewController(newpage, animated: true)
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

