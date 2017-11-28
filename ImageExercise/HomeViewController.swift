import UIKit

class HomeViewController: UIViewController, UITableViewDataSource {
    @IBOutlet var newsTableView: UITableView!
    
    override func viewDidLoad() {
        newsTableView.dataSource = self
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath as IndexPath)
        cell.textLabel!.text = "News Item"
        cell.detailTextLabel!.text = "Interesting thing"
        return cell
    }
}

