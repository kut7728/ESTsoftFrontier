//
//  ViewController.swift
//  Lec0227Ex01_UICollection
//
//  Created by nelime on 2/27/25.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    // 스토리보드 컴포넌트를 객체화
    @IBOutlet weak var collectionView: UICollectionView!
    
    let images = Array(1...6).map{UIImage(named: "card\($0)")}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self // 데이터 소스를 현재 클래스가 담당하도록 설정
        collectionView.delegate = self // 이벤트 처리를 현재 클래스가 담당하도록
        
        let nib = UINib(nibName: "CustomCollectionViewCell", bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: "cell")
    }
    
    // 셀 개수 반환
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    
    // 셀 설정
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CustomCollectionViewCell
//        cell.backgroundColor = UIColor.blue
        cell.imageView.image = images[indexPath.item]
//        cell.imageView?.image = UIImage(named: "card1")
        return cell
    }
    
}



// UICollectionViewDelegateFlowLayout 프로토콜을 채택하여 UICollectionView의 레이아웃을 조정
extension ViewController: UICollectionViewDelegateFlowLayout {
    
    // MARK: - 셀 크기 설정
    // UICollectionView의 각 셀 크기를 반환하는 메서드
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (collectionView.frame.width - 30) / 3  // 전체 너비에서 여백을 제외하고 3개의 열로 나눔
        return CGSize(width: width, height: width)  // 정사각형 형태의 셀 크기 반환
    }
    
    // MARK: - 셀 간 간격 설정
    // 행(줄) 간 간격을 설정하는 메서드
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10  // 각 행 간의 간격을 10pt로 설정
    }

    // 같은 행 내에서 항목들 간의 간격을 설정하는 메서드
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10  // 같은 행 내의 셀들 사이 간격을 10pt로 설정
    }


}

