//
//  BuahCollectionViewController.swift
//  collectionview app
//
//  Created by Nando Septian Husni on 20/08/18.
//  Copyright © 2018 IMASTUDIO. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class BuahCollectionViewController: UICollectionViewController {
    
    //deklrasi array
    var data = ["Buah Arab","Jeruk","apel","soup buah","durian"]
    
    var gambar = [#imageLiteral(resourceName: "image1"),#imageLiteral(resourceName: "image2"),#imageLiteral(resourceName: "image3"),#imageLiteral(resourceName: "imagr4"),#imageLiteral(resourceName: "image5")]

    override func viewDidLoad() {
        super.viewDidLoad()

        //mau ngatur jumlah column nya
        let layout = UICollectionViewFlowLayout()
        
        //AMBIL TINGGI DAN LEBAR DEVICE NYA
        let lebar = UIScreen.main.bounds.width
        let tinggi = UIScreen.main.bounds.height
        
        //size item setting
        layout.itemSize = CGSize(width: lebar/5, height: tinggi/4)
        
        layout.minimumInteritemSpacing = 1
        layout.minimumLineSpacing = 0
        
        
        //layout include ke colection
        collectionView?.collectionViewLayout = layout
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return data.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "nando", for: indexPath) as? BuahCollectionViewCell
        
        //ambil label dan imageview dari class ccell
        cell?.cellLabel.text = data[indexPath.row]
        cell?.cellImage.image = gambar[indexPath.row]
    
        // Configure the cell
    
        return cell!
    }

    
    override func collectionView(_ collectionView: UICollectionView, didEndDisplaying cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        //panggil story board
        let story = UIStoryboard(name: "Main", bundle: nil)
        
        //get id storyboard
        let hal2 = story.instantiateViewController(withIdentifier: "kedua")
        
        //action pindah menggunakan seque
        show(<#T##vc: UIViewController##UIViewController#>, sender: <#T##Any?#>)
        
        
    }
    
    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
