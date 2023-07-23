//
//  ViewController.swift
//  UIDesignCodigo
//
//  Created by Aung Ko Ko on 23/07/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var sgdButton: UIButton!
    @IBOutlet weak var chatIcon: UIButton!
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollectionView()
        setupTableView()
    }
    
    func setupCollectionView() {
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.backgroundColor = .clear
        collectionView.showsVerticalScrollIndicator = false
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.contentInset = .init(top: 0, left: 20, bottom: 0, right: 20)
        collectionView.isPagingEnabled = true
        collectionView.registerForCells(HomePosterCollectionViewCell.className)
    }
    
    func setupTableView() {
        tableView.dataSource = self
        tableView.backgroundColor = .clear
        tableView.showsVerticalScrollIndicator = false
        tableView.showsHorizontalScrollIndicator = false
        tableView.isPagingEnabled = true
        tableView.contentInset = .zero
        tableView.separatorStyle = .none
        tableView.registerForCells(
            CategoryContainerTableViewCell.className,
            SegmentControlCell.className,
            RoomTableViewCell.className,
            RateTableViewCell.className
        )
    }
}

