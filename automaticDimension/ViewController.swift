//
//  ViewController.swift
//  automaticDimension
//
//  Created by Sanad Barjawi on 9/30/18.
//  Copyright © 2018 Sanad Barjawi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var dynamicTableView: UITableView!
    let contentArray = ["this is a short one",
                        "this is a half half paragraph, most likely is a two line paragraph and its purpose is to check the dynamic cell height.",
                        "this is a long paragraph, i dont know what it should contain but hell mary is a good killinh machine used in the old 2012 when the africans loll,to check the dynamic cell height.paragraph, most likely is aparagraph, most likely is aparagraph, most likely is aparagraph, most likely is a",
                        "this is a long paragraph, i dont know what it should contain but hell mary is a good killinh machine used in the old 2012 when the africans loll,to check the dynamic cell height.paragraph, most likely is aparagraph, most likely is aparagraph, most likely is aparagraph, most likely is a,this is a long paragraph, i dont know what it should contain but hell mary is a good killinh machine used in the old 2012 when the africans loll,to check the dynamic cell height.paragraph, most likely is aparagraph, most likely is aparagraph, most likely is aparagraph, most likely is athis is a long paragraph, i dont know what it should contain but hell mary is a good killinh machine used in the old 2012 when the africans loll,to check the dynamic cell height.paragraph, most likely is aparagraph, most likely is aparagraph, most likely is aparagraph, most likely is a"]
    override func viewDidLoad() {
        super.viewDidLoad()
        let footerView = UIView(frame: CGRect(x: 0, y: 0, width:  dynamicTableView.frame.width, height: 20))
        footerView.backgroundColor = UIColor.red
        dynamicTableView.tableFooterView = footerView
    }
}
extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contentArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "\(CustomCell.self)", for: indexPath) as! CustomCell
        cell.testLabel.text = contentArray[indexPath.row]
        return cell
    }
    
}

