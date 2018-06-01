    //
//  TableViewController.swift
//  TestApp
//
//  Created by epita on 28/03/2018.
//  Copyright © 2018 NOTNULL. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    
    
    @IBOutlet var tableBiew: UITableView!
    
    var showsArray = [Shows]()
    
    var clickedIndex : IndexPath?
    
    
    var images = [UIImage(named:"GOT"), UIImage(named:"friends"), UIImage(named:"mom"), UIImage(named:"suits"),UIImage(named:"flash"), UIImage(named:"sense8"), UIImage(named:"westworld"), UIImage(named:"poldark")]
    

    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        let show1 = Shows(writer: "David Benioff and D. B. Weiss", title: "Game of Thrones", publisher: "Warner Bros. Television Distribution", year: "2011", description: "Game of Thrones is an American fantasy drama television series created by David Benioff and D. B. Weiss. It is an adaptation of A Song of Ice and Fire, George R. R. Martin's series of fantasy novels, the first of which is A Game of Thrones. It is filmed in Belfast and elsewhere in the United Kingdom, Canada, Croatia, Iceland, Malta, Morocco, Spain, and the United States. The series premiered on HBO in the United States on April 17, 2011, and its seventh season ended on August 27, 2017. The series will conclude with its eighth season premiering in 2019.", image :"GOT")
        
        let show2 = Shows(writer: "David Crane and Marta Kauffman", title: "Friends", publisher: "Bright/Kauffman/Crane Productions/Warner Bros. Television", year: "199", description: "Friends is an American television sitcom, created by David Crane and Marta Kauffman, which aired on NBC from September 22, 1994 to May 6, 2004, lasting ten seasons. With an ensemble cast starring Jennifer Aniston, Courteney Cox, Lisa Kudrow, Matt LeBlanc, Matthew Perry and David Schwimmer, the show revolves around six 20–30-something friends living in Manhattan. The series was produced by Bright/Kauffman/Crane Productions, in association with Warner Bros. Television. The original executive producers were Kevin S. Bright, Marta Kauffman, and David Crane.", image : "friends")
        
        let show3 = Shows(writer: "Chuck Lorre", title: "Mom", publisher: "Warner Bros. Television ", year: "2013", description: "Mom is an American sitcom that premiered on September 23, 2013, on CBS. The series was created by Chuck Lorre, Eddie Gorodetsky, and Gemma Baker and produced and distributed by Warner Bros. Television. It stars Anna Faris and Allison Janney in lead roles as dysfunctional daughter/mother duo Christy and Bonnie Plunkett. Sadie Calvano, Blake Garrett Rosenthal, Matt Jones, Spencer Daniels, Nate Corddry, French Stewart, William Fichtner, Beth Hall, Jaime Pressly and Mimi Kennedy appear in supporting roles.", image :"mom")
        
        let show4 = Shows(writer: "Aaron Korsh", title: "Suits", publisher: "Universal Cable Productions", year: "2011", description: "Suits is an American legal drama television series created and written by Aaron Korsh. The series premiered on June 23, 2011, on the cable network USA, and is produced by Universal Cable. Suits is set at a fictional law firm in New York City. The focal point of the show follows talented college dropout Mike Ross (Patrick J. Adams), who initially works as a law associate for Harvey Specter (Gabriel Macht), despite never actually having attended law school.[1] The show focuses on Harvey and Mike managing to close cases while maintaining Mike's secret.", image : "suits")
        
        let show5 = Shows(writer: "Greg Berlanti, Andrew Kreisberg, Geoff Johns", title: "Flash", publisher: "Bonanza Productions, Berlanti Productions, DC Entertainment, Warner Bros. Television", year: "2014", description: "The Flash is an American superhero television series developed by Greg Berlanti, Andrew Kreisberg, and Geoff Johns, airing on The CW. It is based on the DC Comics character Barry Allen / Flash, a costumed superhero crime-fighter with the power to move at superhuman speeds. It is a spin-off from Arrow, existing in the same fictional universe. The series follows Allen, portrayed by Grant Gustin, a crime scene investigator who gains super-human speed, which he uses to fight criminals, including others who have also gained superhuman abilities.", image :"flash")
        
        let show6 = Shows(writer: "Lana Wachowski, Lilly Wachowski, J. Michael Straczynski", title: "sense8", publisher: "Anarchos Productions", year: "2015", description: "Sense8 (a play on the word sensate /ˈsɛnseɪt/) is an American science fiction drama web television series created by Lana and Lilly Wachowski and J. Michael Straczynski for Netflix. The production companies behind Sense8 include the Wachowskis' Anarchos Productions (replaced by Lana and her wife's Venus Castina Productions in the second season), Straczynski's Studio JMS, and Georgeville Television, with Unpronounceable Productions having been set up specifically for this show.",image : "sense8")
        
        let show7 = Shows(writer: "Jonathan Nolan, Lisa Joy, Halley Wegryn Gross", title: "WestWorld", publisher: "HBO Entertainment", year: "2016", description: "Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l'imprimerie depuis les années 1500, quand un peintre anonyme assembla ensemble des mor60 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.",image :"westworld")
        
        let show8 = Shows(writer: "Debbie Horsfield", title: "Poldark", publisher: "Mammoth Screen", year: "2015", description: "Poldark is a British-American drama television series that was first broadcast on BBC One on 8 March 2015, starring Aidan Turner in the lead role. The first eight-part series (aired in seven parts in the U.S.[1]) was based on the first two Poldark novels by Winston Graham, adapted by Debbie Horsfield and directed by Edward Bazalgette and Will McGregor.[1] An earlier television series of the same name was based on Graham's first seven Poldark novels, broadcast by BBC One between 1975 and 1977.", image : "poldark")
        
        
        showsArray.append(show1);
        showsArray.append(show2);
        showsArray.append(show3);
        showsArray.append(show4);
        showsArray.append(show5);
        showsArray.append(show6);
        showsArray.append(show7);
        showsArray.append(show8);
        
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return (showsArray.count)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        
        cell.LName.text = showsArray[indexPath.row].title
        cell.LYear.text = showsArray[indexPath.row].year
        cell.LAuthor.text = showsArray[indexPath.row].writer
        cell.imgShows.image = images[indexPath.row]
        cell.layer.borderWidth = CGFloat(10)	
        cell.layer.borderColor = tableView.backgroundColor?.cgColor

       
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        clickedIndex = indexPath
        self.performSegue(withIdentifier: "link", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let newVC =  segue.destination as! SecondViewController
        newVC.instance=showsArray[(clickedIndex!.row)]
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
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

    / In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
