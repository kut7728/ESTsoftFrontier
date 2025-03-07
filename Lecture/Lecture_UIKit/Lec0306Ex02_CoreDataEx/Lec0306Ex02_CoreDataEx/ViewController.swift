//
//  ViewController.swift
//  Lec0306Ex02_CoreDataEx
//
//  Created by nelime on 3/6/25.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        saveData(title: "something Happened", content: "This is a content", date: Date())
        fetchData()
    }
    
    func saveData(title: String, content: String, date: Date) {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }
        let context = appDelegate.persistentContainer.viewContext
        let note = NSEntityDescription.insertNewObject(forEntityName: "Note", into: context)
        
        note.setValue(title, forKey: "title")
        note.setValue(content, forKey: "content")
        note.setValue(date, forKey: "createDate")
        
        do {
            try context.save()
            print("데이터 저장 성공!")
        } catch {
            print("데이터 저장 실패 : \(error.localizedDescription)")
        }
    }
    
    func fetchData() {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }
            let context = appDelegate.persistentContainer.viewContext
            let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "Note")

            do {
                let notes = try context.fetch(fetchRequest)
                for note in notes {
                    let title = note.value(forKey: "title") as? String ?? ""
                    let content = note.value(forKey: "content") as? String ?? ""
                    print("📝 불러온 노트: \(title) - \(content)")
                }
            } catch {
                print("❌ 데이터 불러오기 실패: \(error)")
            }
    }


}

