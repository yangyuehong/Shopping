//
//  FirstViewController.swift
//  Shopping
//
//  Created by Yang, Yuehong | OSPD on 2017/07/05.
//  Copyright © 2017年 Yang, Yuehong | OSPD. All rights reserved.
//

import UIKit

class InputViewController: UIViewController, UITextFieldDelegate, UITableViewDataSource
//    ,UITableViewDelegate,
{
    //MARK: Properties
    @IBOutlet weak var mRate: UITextField!
    @IBOutlet weak var mExcludingTaxPrice: UITextField!
    @IBOutlet weak var mIncludingTaxPrice: UITextField!
    @IBOutlet weak var mChinesePrice: UITextField!
    @IBOutlet weak var mGoodName: UITextField!
    @IBOutlet weak var mShopName: UITextField!
    @IBOutlet weak var mTable: UITableView!
    
    var goods = [Good]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Load the sample data.
        loadSampleGoods()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - keyboard hidden
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    // MARK: - Button Click
    @IBAction func calculateBtnClick(_ sender: Any) {
//        mIncludingTaxPrice.text = String(mExcludingTaxPrice.text * 1.08)
//        mChinesePrice.text = mIncludingTaxPrice.text * mRate.text
//        
//        mRate.text.double
  
    }
    
    @IBAction func clearBtnClick(_ sender: Any) {
        mRate.text = ""
        mExcludingTaxPrice.text = ""
        mIncludingTaxPrice.text = ""
        mChinesePrice.text = ""
        mGoodName.text = ""
        mShopName.text = ""
    }
    
    @IBAction func addBtnClick(_ sender: Any) {
        let name = mGoodName.text!
        let price = mChinesePrice.text!
        let shop = mShopName.text!
        
        guard let good = Good(name: name, price: price, shop: shop) else {
            fatalError("Unable to instantiate meal1")
        }
        
        goods += [good]
        mTable.reloadData()
    }
    
    // MARK: - TableView
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//            return goodsArray.count
            return goods.count
        }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Table view cells are reused and should be dequeued using a cell identifier.
        let cellIdentifier = "Cell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? TableViewCell  else {
            fatalError("The dequeued cell is not an instance of MealTableViewCell.")
        }
        
        // Fetches the appropriate meal for the data source layout.
        let good = goods[indexPath.row]
        
        cell.mName.text = good.name
        cell.mPrice.text = good.price
        cell.mShop.text = good.shop
        
        return cell
    }
    
    //MARK: Private Methods
    
    private func loadSampleGoods() {
        
        guard let good1 = Good(name: "NameA", price: "PriceA", shop: "ShopA") else {
            fatalError("Unable to instantiate meal1")
        }
        
        guard let good2 = Good(name: "NameB", price: "PriceB", shop: "ShopB") else {
            fatalError("Unable to instantiate meal2")
        }
        
        goods += [good1, good2]
    }
}

