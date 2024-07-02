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
### SwiftUI 레이아웃 문제 - TodayView
> 문제점: `.background`로 이미지를 넣다보니 이미지와 VStack의 레이아웃을 설정하기가 힘들었다.

<Img src = "https://github.com/jsa0224/AppStoreClone/assets/94514250/5122ea27-088c-4091-b343-9dd76c0f85a7" height="500"> <Img src = "https://github.com/jsa0224/AppStoreClone/assets/94514250/36d9133a-9de6-4e38-a57c-debd1bb13c1a" height="500">

> 해결 방법: `ZStack` 안에 이미지와 `VStack`을 넣어 레이아웃을 설정할 수 있게끔 수정하였다. 



<details>
<summary>상세 코드</summary>
<div markdown="1">

- 문제 코드
```swift
struct CardView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Spacer()
            Spacer()
            Spacer()

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
            Spacer()
        }
        .background(
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
        )
    }
}
```

<br>

- 해결된 코드
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

</div>
</details>

### SwiftUI 레이아웃 문제 - GamesView
![KakaoTalk_Video_2024-07-02-14-38-36-ezgif com-speed](https://github.com/jsa0224/AppStoreClone/assets/94514250/53d48eeb-5572-4bd4-a88a-f89cc2c2ca6a)

> 문제점: 기존 앱스토어 화면을 보면 게임 뷰의 카드 형태의 스크롤뷰가 스크롤 시 다음 뷰로 넘어갈 때, 스크롤이 멈추게 되는데 이 구현 방법에 대한 고민을 했다.

<Img src = "https://github.com/jsa0224/AppStoreClone/assets/94514250/6cea4dd2-c5cb-49e8-ac55-82c12898323a" height="500"> <Img src = "https://github.com/jsa0224/AppStoreClone/assets/94514250/a9d0d43c-4aa0-4e98-a2d2-90cd8cc572ce" height="500">

> 해결 방법: 개별 뷰의 기하학적 구조에 따라 결정되는 `ViewAlignedScrollTargetBehavior` 스크롤 동작을 제공하는 `.scrollTargetBehavior(.viewAligned)` 활용

<details>
<summary>상세 코드</summary>
<div markdown="1">

```swift
ScrollView(.horizontal, showsIndicators: false) {
    HStack {
        ForEach(store.appCardItem) { item in
            Button {

            } label: {
                GameCardView(store: store, currentItem: item)
            }
        }
    }
    .scrollTargetLayout()
}
.contentMargins(25, for: .scrollContent)
.scrollTargetBehavior(.viewAligned)
```

</div>
</details>
