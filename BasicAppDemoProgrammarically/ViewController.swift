//
//  ViewController.swift
//  BasicAppDemoProgrammarically
//
//  Created by Consultant on 11/8/22.
//

import UIKit

class ViewController: UIViewController {

    var tableView: UITableView?
    
    init() {
    super.init(nibName: nil, bundle: nil)
    self.setUpUI()
    
    }

    required init?(coder: NSCoder){
        fatalError("init(coder:) has not been implimented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    private func setUpUI() {
        self.view.backgroundColor = .systemCyan
        self.title = "Programmatic Example"
        
        let table = UITableView(frame: .zero)
        table.translatesAutoresizingMaskIntoConstraints = false
        table.backgroundColor = .systemYellow
        table.dataSource = self
        table.delegate = self
        
//        table.register(UITableViewCell.self, forCellReuseIdentifier: "SampleCell")
        table.register(ProgrammaticTableViewCell.self, forCellReuseIdentifier: "ProgCell")
        
        self.view.addSubview(table)
        
        table.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 8).isActive = true
        table.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 8).isActive = true
        table.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -8).isActive = true
        table.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -8).isActive = true
   
        
        
        self.tableView = table
        
    }
    


}


extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ProgCell", for: indexPath) as? ProgrammaticTableViewCell else {
            fatalError("Whoops, something went wrong")
        }
//        cell.textLabel?.text = "\(indexPath)"
        return cell
    }
}


extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let placeholderVC = PlaceHolderDetailViewController()
        self.navigationController?.pushViewController(placeholderVC, animated: true)
    }
    
}
