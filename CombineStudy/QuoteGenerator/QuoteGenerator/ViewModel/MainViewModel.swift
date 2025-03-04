//
//  MainViewModel.swift
//  QuoteGenerator
//
//  Created by nelime on 3/4/25.
//
import Foundation
import Combine
import CombineMoya
import Moya

@Observable
class MainViewModel {
    var quote: QuoteApiResult?
    
    private var cancellables = Set<AnyCancellable>()  // 구독 객체 보관함
    let provider = MoyaProvider<ApiRequest>()  // 프로바이더 객체 선언
    
    func requestQuote() {
            provider.requestPublisher(.getQuote) // Moya 요청을 `Publisher`로 변환
                .map(\.data) // `Response.data`만 추출
                .decode(type: QuoteApiResult.self, decoder: JSONDecoder()) // JSON 디코딩
                .sink(
                    receiveCompletion: { completion in
                    if case .failure(let error) = completion {
                        print("요청 실패: \(error.localizedDescription)")  // 오류 처리
                    }
                }, receiveValue: { [weak self] result in
                    self?.quote = result // 결과 값 저장 (UI 업데이트)
                    print("\(result.author)-\(result.authorProfile) : \(result.message)")
                }
                )
                .store(in: &cancellables) // 구독을 `cancellables`에 저장하여 메모리 관리
        }
    
}
