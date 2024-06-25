import router from '@ohos.router';
@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('HelloWorld')
        .fontSize(50)
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
      Button('Next')
        .fontSize(24)
        .width(100)
        .height(50)
        .onClick(() => {
          router.pushUrl({url: 'pages/LoginPage'})
        })
    }
    .height('100%')
    .width('100%')
  }
}