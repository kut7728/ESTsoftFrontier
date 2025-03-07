//
//  ImageGalleryViewController.swift
//  MyContentManager
//
//  Created by nelime on 3/7/25.
//


import UIKit

class ImageGalleryViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    @IBOutlet weak var collectionView: UICollectionView!
    var images: [UIImage] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
    }

    @IBAction func addImage(_ sender: UIBarButtonItem) {
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.sourceType = .photoLibrary
        present(picker, animated: true)
    }

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[.originalImage] as? UIImage {
            images.append(image)
            collectionView.reloadData()
        }
        picker.dismiss(animated: true)
    }
}

extension ImageGalleryViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ImageCell", for: indexPath) as! ImageCell
        cell.imageView.image = images[indexPath.item]
        return cell
    }
}

extension ImageGalleryViewController: UICollectionViewDelegateFlowLayout {
    // 셀의 사이즈 설정
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = (UIScreen.main.bounds.width / 2) - 20
        // 너비 - 아이폰 가로길이의 절반, 높이 - 200
        return CGSize(width: size, height: size)
    }
}
