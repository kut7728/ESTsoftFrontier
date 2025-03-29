//
//  TodoViewController.swift
//  MusTodo
//
//  Created by nelime on 3/28/25.
//


import UIKit

class TodoViewController: UIViewController {
    // 할 일 목록을 저장할 배열 (임시 데이터)
    private var todos: [String] = ["운동하기", "책 읽기", "코딩 연습"]

    // 테이블 뷰 인스턴스 생성
    private let tableView = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    private func setupUI() {
        view.backgroundColor = .white
        title = "할 일 목록"

        // 테이블 뷰 설정
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.dataSource = self
        view.addSubview(tableView)

        // Auto Layout 설정
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}

// UITableViewDataSource 프로토콜 구현
extension TodoViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todos.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        cell.textLabel?.text = todos[indexPath.row]
        return cell
    }
}