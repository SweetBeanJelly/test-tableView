
import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    

    var tableV: UITableView!
    var arrA: [String] = ["aaa","bbb","ccc","ddd","eee","fff","ggg","hhh"]
    var dicA: [String:[String]]!
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print(indexPath.row)
        let detailVC = DetailVC(nibName: nil, bundle: nil)
        detailVC.title = arrA[indexPath.row]
        detailVC.strA = arrA[indexPath.row]
        self.navigationController?.pushViewController(detailVC, animated: true)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrA.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellA = tableView.dequeueReusableCell(withIdentifier: "cellA", for: indexPath)
        cellA.textLabel?.text = arrA[indexPath.row]
        return cellA
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableV = UITableView(frame: self.view.frame, style: UITableViewStyle.plain)
        self.tableV.dataSource = self
        self.tableV.delegate = self
        self.tableV.register(UITableViewCell.self, forCellReuseIdentifier: "cellA")
        self.view.addSubview(self.tableV)
    }


}

