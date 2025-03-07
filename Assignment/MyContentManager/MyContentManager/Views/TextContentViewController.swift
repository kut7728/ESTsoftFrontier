//
//  ViewController.swift
//  MyContentManager
//
//  Created by nelime on 3/7/25.
//

import UIKit

class TextContentViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    var contents: [Content] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        loadContents()
    }

    @IBAction func addContent(_ sender: UIBarButtonItem) {
        let alert = UIAlertController(title: "새 메모", message: "메모를 입력하세요", preferredStyle: .alert)
        alert.addTextField()

        let addAction = UIAlertAction(title: "추가", style: .default) { _ in
            if let text = alert.textFields?.first?.text, !text.isEmpty {
                let newContent = Content(text: text)
                self.contents.append(newContent)
                self.saveContents()
                self.tableView.reloadData()
            }
        }
        alert.addAction(addAction)
        alert.addAction(UIAlertAction(title: "취소", style: .cancel))
        present(alert, animated: true)
    }

    func saveContents() {
        if let data = try? JSONEncoder().encode(contents) {
            UserDefaults.standard.set(data, forKey: "contents")
        }
    }

    func loadContents() {
        if let data = UserDefaults.standard.data(forKey: "contents"),
           let loadedContents = try? JSONDecoder().decode([Content].self, from: data) {
            contents = loadedContents
        }
    }
}

extension TextContentViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contents.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ContentCell", for: indexPath)
        cell.textLabel?.text = contents[indexPath.row].text
        return cell
    }
}

