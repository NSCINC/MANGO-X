import SwiftUI
import WebKit
import SwiftUI

@main
struct MangoXChatbotApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

struct ChatbotView: UIViewRepresentable {
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        return webView
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let url = Bundle.main.url(forResource: "index", withExtension: "html") {
            uiView.loadFileURL(url, allowingReadAccessTo: url)
        }
    }
}

struct ContentView: View {
    var body: some View {
        ChatbotView()
            .edgesIgnoringSafeArea(.all) // Para que a webview use toda a tela
    }
}
