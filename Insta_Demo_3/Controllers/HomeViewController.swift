//
//  HomeViewController.swift
//  Insta_Demo_3
//
//  Created by kim jong moon on 31/01/2021.
//

import UIKit

class HomeViewController: BaseViewController, UITableViewDelegate, UITableViewDataSource {
    

    @IBOutlet var tableView: UITableView!
    
    var items : Array<Post> = Array()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initViews()
    }


    
    // MARK: - Methods
    func initViews() {
        tableView.dataSource = self
        tableView.delegate = self
        
        addNavigationBar()
        
        
        items.append(Post(fullname: "Lobar Abdullayeva", profile_img: "p_1", post_img_Right: "post_Image_1", post_img_Left: "post_Image_2"))
        items.append(Post(fullname: "Otabek Tuychiev", profile_img: "p_2", post_img_Right: "post_Image_3", post_img_Left: "post_Image_4"))
        
        items.append(Post(fullname: "Lobar Abdullayeva", profile_img: "p_1", post_img_Right: "post_Image_3", post_img_Left: "post_Image_2"))
        items.append(Post(fullname: "Otabek Tuychiev", profile_img: "p_2", post_img_Right: "post_Image_4", post_img_Left: "post_Image_1"))
    
          
    }
        
    
    
    func addNavigationBar() {
        // Bar Icons :)
        let camera = UIImage(named: "ic_camera")
        let send = UIImage(named: "ic_send")

        navigationItem.rightBarButtonItem = UIBarButtonItem(image: send, style: .plain, target: self, action: #selector(rightTapped))
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: camera, style: .plain, target: self, action: #selector(leftTapped))
        title = "Instagram"
    }
    
    // MARK: - Actions
    @objc func rightTapped() {}
@objc func leftTapped() {}
    
    
    // MARK: - TableView
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item  = items[indexPath.row]
        
        let cell = Bundle.main.loadNibNamed("PostTableViewCell", owner: self, options: nil)?.first as! PostTableViewCell
        
        cell.fullnameLabel.text = item.fullname
        cell.profileImageView.image = UIImage(named: item.profile_img!)
        cell.postImageView_Right.image = UIImage(named: item.post_img_Right!)
        cell.postImageView_Left.image = UIImage(named: item.post_img_Left!)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 500
        
    }
    

    
}
