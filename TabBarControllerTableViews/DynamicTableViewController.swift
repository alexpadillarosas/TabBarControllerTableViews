//
//  DynamicTableViewController.swift
//  TabBarControllerTableViews
//
//  Created by alex on 16/10/2022.
//

import UIKit

class DynamicTableViewController: UITableViewController {

    var blogList = [Blog]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        //Function to initialize the array
        initBlogList()
        
    }

    func initBlogList(){
        let cplusplus = Blog(name: "C++", imageName: "cplusplus-original")
        blogList.append(cplusplus)
        
        let haskell = Blog(name: "Haskell", imageName: "haskell-original")
        blogList.append(haskell)
        
        let scala = Blog(name: "Scala", imageName: "scala-original")
        blogList.append(scala)
        
        let javascript = Blog(name: "Javascript", imageName: "javascript-original")
        blogList.append(javascript)
        
        let java = Blog(name: "Java", imageName: "java-original")
        blogList.append(java)
        
        let vue = Blog(name: "VueJS", imageName: "vuejs-original")
        blogList.append(vue)
        
        let csharp = Blog(name: "C#", imageName: "csharp-original")
        blogList.append(csharp)
        
        let kotlin = Blog(name: "Kotlin", imageName: "kotlin-original")
        blogList.append(kotlin)
        
        let python = Blog(name: "Python", imageName: "python-original")
        blogList.append(python)
        
        let ruby = Blog(name: "Ruby", imageName: "ruby-original")
        blogList.append(ruby)

    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return blogList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellId = "cell"
        
        /*
         It's important to CAST the default table view to the BlogTableViewCell since we have mapped our
         UI design to the UITableViewCell class BlogTableViewCell
         */
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! BlogTableViewCell


        // Configure the cell...
        
        //Using default Configuration
        /*
        var content = cell.defaultContentConfiguration()
        content.text = blogList[indexPath.row].name
        content.image = UIImage(named: blogList[indexPath.row].imageName)
        
        cell.contentConfiguration = content
         */
        
        /**
         To use a personalised view we have to:
            Create a class that extends UITableViewCell
            Design the the layout of the tableViewCell
            Link our UI components to our class that extends UITableViewCell
         */
        let blog = blogList[indexPath.row]
        cell.blogName.text = blog.name
        cell.blogImage.image = UIImage(named: blog.imageName)
        
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
