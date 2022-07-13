//
//  ViewController.swift
//  Today
//
//  Created by 김보영 on 2022/07/06.
//

import UIKit

class ReminderListViewController: UICollectionViewController {
    typealias DataSource = UICollectionViewDiffableDataSource<Int, String>
    // Add a type alias for the diffable data source
    // Type aliases are helpful for referring to an existing type with a name that's more expressive
    
    var dataSource: DataSource!
    // Add a dataSource property that implicitly unwraps a DataSource
    // Use implicitly unwrapped optionals only when you know that the optional will have a value. Otherwise, you risk triggering a runtime error that immediately terminates the app. You'll initialize the data source in the next step to guarantee that the optional has a value.
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let listLayout = listLayout()
        collectionView.collectionViewLayout = listLayout
        
        // Create a new cell registration
        // Cell registration specifies how to configure the content and appearance of a cell
        let cellRegistration = UICollectionView.CellRegistration {
            (cell: UICollectionViewListCell, indexPath: IndexPath, itemIdentifier: String) in
            let reminder = Reminder.sampleData[indexPath.item]
            // Retrieve the reminder corresponding to the item
            
            var contentConfiguration = cell.defaultContentConfiguration()
            // Retrieve the cell's default content configuration
            // defaultContentConfiguration() creates a content configuration with the predefined system style.
            
            contentConfiguration.text = reminder.title
            // Assign reminder.title to the content configuration text
            // The list displays the configuration text as the primary text of a cell
            
            cell.contentConfiguration = contentConfiguration
            // Assign the content configuration to the cell
        }
    }

    private func listLayout() -> UICollectionViewCompositionalLayout {
        var listConfiguration = UICollectionLayoutListConfiguration(appearance: .grouped)
        listConfiguration.showsSeparators = false
        listConfiguration.backgroundColor = .clear
        return UICollectionViewCompositionalLayout.list(using: listConfiguration)
    }
}

