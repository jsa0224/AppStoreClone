# 🍎 AppStoreClone

![image](https://github.com/jsa0224/AppStoreClone/assets/94514250/5bb0716b-455c-439a-af55-31047fa32938)

> Apple의 App Store를 클론한 프로젝트입니다. <br> <br>
> 개발 기간: 2024.03 ~

> 목표: SwiftUI의 활용과 애니메이션에 대한 공부

<br>
<br>

## ☁️ 개발 인원
|[som](https://github.com/jsa0224)|
|:---:|
|<img src=https://github.com/jsa0224/ios-diary-RxSwift/assets/94514250/25aa347d-e125-42bd-9500-025c80807227 width="200" height="200">

<br>
<br>

## ⚙️ 개발환경 및 라이브러리
[![swift](https://img.shields.io/badge/swift-5.6-orange)]() [![Xcode](https://img.shields.io/badge/Xcode-15.2-blue)]() [![iOS](https://img.shields.io/badge/iOS-17.2-white)]() [![TCA](https://img.shields.io/badge/TCA-1.9.2-purple)]() 

<br>
<br>

## 📱 프로젝트 실행화면
|TodayView|GamesView|
|:---:|:---:|
|![TodayView 시현 영상](https://github.com/jsa0224/AppStoreClone/assets/94514250/96fecbf9-95e3-43f6-bf20-401cf3a7bfda)|![GamesView 시현 영상](https://github.com/jsa0224/AppStoreClone/assets/94514250/d0ebfb2e-63fc-42a6-87bf-3d672e99308f)|

<br>
<br>

## 💡 트러블 슈팅
### TodayView
> 문제점: `.background`로 이미지를 넣다보니 이미지와 VStack의 레이아웃을 설정하기가 힘들었다.

![image](https://github.com/jsa0224/AppStoreClone/assets/94514250/5122ea27-088c-4091-b343-9dd76c0f85a7)

> 해결 방법: `ZStack` 안에 이미지와 `VStack`을 넣어 레이아웃을 설정할 수 있게끔 수정하였다. 

![image](https://github.com/jsa0224/AppStoreClone/assets/94514250/36d9133a-9de6-4e38-a57c-debd1bb13c1a) 

```swift 
struct CardView: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            ZStack(alignment: .bottom) {
                Image("Instargram")
                    .resizable()
                    .frame(width: 350, height: 500)
                    .scaledToFit()
                    .cornerRadius(15)
                Text("")
                    .frame(width: 350, height: 75)
                    .background(.thinMaterial)
                    .cornerRadius(15, corner: .bottomLeft)
                    .cornerRadius(15, corner: .bottomRight)
            }

            VStack(alignment: .leading, spacing: 20) {
                VStack(alignment: .leading, spacing: 5) {
                    Text("시작하기")
                        .font(.body)
                        .bold()
                        .foregroundColor(.white)
                    Text("소중한 사람들과" + "\n" + "콘텐츠에 더욱 가까이")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.white)
                }

                AppView()
                    .padding([.bottom], 15)
            }

        }
    }
}
```

