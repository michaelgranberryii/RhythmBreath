//
//  ViewController.swift
//  Custom Cell
//
//  Created by Michael Granberry II on 8/9/21.
//

import UIKit

class MainTableViewController: UITableViewController {
    var menuCards = MenuCards()
    var rowNumber = Int()
    var images: [Image] = []
    var moreInfoClicked = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "MyTableViewCell", bundle: nil), forCellReuseIdentifier: "ReuseableCell") // Register Cell
        UIApplication.shared.isIdleTimerDisabled = false    // Disable sleeper
        navigationController?.navigationBar.prefersLargeTitles = false   // Large title
        images = BackgroundImages.fetchData()   // Festching Images
    
    }

    override func viewWillAppear(_ animated: Bool) {
        UIApplication.shared.isIdleTimerDisabled = false    // Disable sleeper
        navigationController?.navigationBar.prefersLargeTitles = false  // Large title
    }
    
}


//MARK: - Table View

extension MainTableViewController {
    // heightForRowAt
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let cellHeight : CGFloat = 175
        return cellHeight
    }
    
    // numberOfRowsInSection
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuCards.descriptions.count
    }
    
    // cellForRowAt
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: K.StoryBoardConstants.ReuseableCell, for: indexPath) as! MyTableViewCell
        cell = prepareCell(cell, indexPath)
        return cell
    }
    
    // didSelectRowAt
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        rowNumber = indexPath.row
        performSegue(withIdentifier: K.StoryBoardConstants.toViewController, sender: nil)
    }
    
    // accessoryButtonTappedForRowWith
    override func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
        print(indexPath.row)
        var moreInfoViewController = MoreInfoViewController()
        moreInfoViewController = prepareMoreInfoVC(moreInfoViewController, indexPath)
        present(moreInfoViewController, animated: true, completion: nil)
        
    }

    // prepare for segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == K.StoryBoardConstants.toViewController {
            let destinationVC = segue.destination as! BreathingController
            destinationVC.circleColor = menuCards.descriptions[rowNumber].cardBackgroundColor
            destinationVC.breathingRhythm = menuCards.descriptions[rowNumber].breathingRhythm
            destinationVC.breathingRhythmText = menuCards.descriptions[rowNumber].breathingRhythmtext
        }
    }
    

}


//MARK: - Prepare Data for Views

extension MainTableViewController {
    // prepareCell
    fileprivate func prepareCell(_ cell: MyTableViewCell, _ indexPath: IndexPath) -> MyTableViewCell {
        cell.titleLabel.text = menuCards.descriptions[indexPath.row].breathingRhythmtext
        cell.shortBreathingDecriptionLabel.text = menuCards.descriptions[indexPath.row].breathingShortDescription
        cell.myView.backgroundColor = menuCards.descriptions[indexPath.row].cardBackgroundColor
        cell.selectionStyle = .none
        cell.moreInfoButton.addTarget(self, action: #selector(moreInfoPressed(_:)), for: .touchUpInside)
//        cell.accessoryView = cell.moreInfoButton
        cell.accessoryType = .detailButton
        cell.set(image: images[indexPath.row])
        return cell
    }
    
    @objc func moreInfoPressed(_ sender: UISwitch) {
        print(sender.tag)
    }
    
    // prepareDescriptionView
    fileprivate func prepareMoreInfoVC(_ moreInfoViewController: MoreInfoViewController, _ indexPath: IndexPath) -> MoreInfoViewController {
        moreInfoViewController.titleLabel.text = menuCards.descriptions[indexPath.row].breathingRhythmtext
        moreInfoViewController.circleView.backgroundColor = menuCards.descriptions[indexPath.row].cardBackgroundColor
        moreInfoViewController.descriptionLabel.text = menuCards.descriptions[indexPath.row].breathingLongDescription
        return moreInfoViewController
    }
}

