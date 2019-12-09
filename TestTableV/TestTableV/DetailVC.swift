
import UIKit

class DetailVC: UIViewController {

    var labelA: UILabel!
    var strA: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.white

        self.labelA = UILabel(frame: CGRect(x: 100, y: 100, width: 200, height: 30))
        self.labelA.backgroundColor = UIColor.green
        self.labelA.text = strA
        self.view.addSubview(self.labelA)

    }


}
