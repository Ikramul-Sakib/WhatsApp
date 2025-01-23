
import SwiftUI

struct MessageListView: UIViewControllerRepresentable {
    typealias UIViewControllerType = MessageListController
    func makeUIViewController(context: Context) -> MessageListController {
        let MessageListController = MessageListController()
        return MessageListController
    }
    func updateUIViewController(_ uiViewController: MessageListController, context: Context) {}
    
}
 
#Preview {
    MessageListView()
}
