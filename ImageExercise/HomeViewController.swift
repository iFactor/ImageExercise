import UIKit

class HomeViewController: UIViewController, UITableViewDataSource {
    @IBOutlet var newsTableView: UITableView!
    
    override func viewDidLoad() {
        newsTableView.dataSource = self
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        cell.textLabel!.text = "News Item"
        cell.detailTextLabel!.text = "Interesting thing"
        return cell
    }
}

