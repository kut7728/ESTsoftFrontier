import SwiftUI

class UserProfile: ObservableObject {
    @Published var name: String = UserDefaults.standard.string(forKey: "name") ?? ""
    @Published var email: String = UserDefaults.standard.string(forKey: "email") ?? ""
    @Published var phone: String = UserDefaults.standard.string(forKey: "phone") ?? ""
    @Published var receiveNotifications: Bool = UserDefaults.standard.bool(forKey: "receiveNotifications")

    func saveToUserDefaults() {
        UserDefaults.standard.set(name, forKey: "name")
        UserDefaults.standard.set(email, forKey: "email")
        UserDefaults.standard.set(phone, forKey: "phone")
        UserDefaults.standard.set(receiveNotifications, forKey: "receiveNotifications")
    }
}

struct MyPageView: View {
    @StateObject private var userProfile = UserProfile()

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("사용자 정보")) {
                    TextField("이름 입력", text: $userProfile.name)
                        .textInputAutocapitalization(.never)
                    TextField("이메일 입력", text: $userProfile.email)
                        .keyboardType(.emailAddress)
                    TextField("전화번호 입력", text: $userProfile.phone)
                        .keyboardType(.numberPad)
                }

                Section(header: Text("설정")) {
                    Toggle("알림 받기", isOn: $userProfile.receiveNotifications)
                }

                Section {
                    Button(action: saveProfile) {
                        Text("저장")
                            .bold()
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                }
            }
            .navigationTitle("마이 페이지")
        }
    }

    func saveProfile() {
        userProfile.saveToUserDefaults()
        print("사용자 정보 저장 완료!")
    }
}

#Preview {
    MyPageView()
}
