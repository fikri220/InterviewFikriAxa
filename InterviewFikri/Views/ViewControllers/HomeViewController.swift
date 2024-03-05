//
//  ViewController.swift
//  InterviewFikri
//
//  Created by Fikri Ihsan on 26/02/24.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var dataList : [UserData]?
    var viewModel : HomeViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.register(DataTableViewCell.nib(), forCellReuseIdentifier: DataTableViewCell.identifierCell)
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.viewModel?.startFetcDataList()
        
    }
    
    //App Flow
    func pushToDetail(data:UserData) {
        let view = UIStoryboard(name:"Main",bundle: Bundle.main).instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        view.data = data
        navigationController?.pushViewController(view, animated: true)
    }
}

//ViewModel To View Protocol
extension HomeViewController : HomeViewModelToViewProtocol {
    func onSuccess(userList : [UserData]?) {
        self.dataList = userList
        self.tableView.reloadData()
    }
    
    
}

extension HomeViewController : UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataList?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: DataTableViewCell.identifierCell, for: indexPath) as! DataTableViewCell
        
        let data = self.dataList![indexPath.row]
    
        cell.titleLabel.text = data.title
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let data = self.dataList![indexPath.row]
        self.pushToDetail(data: data)
    }
}
