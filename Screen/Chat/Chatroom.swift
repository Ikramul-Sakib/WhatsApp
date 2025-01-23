

import SwiftUI

struct Chatroom: View {
    var body: some View {
            MessageListView()
            .toolbar(.hidden,for: .tabBar)
        .toolbar {
            
            leadingNavItem()
            trailingNavItem()
        }
        .safeAreaInset(edge: .bottom ){
            TextInputArea()
        }
    }
}

extension Chatroom {
    @ToolbarContentBuilder
    private func leadingNavItem() -> some ToolbarContent {
        ToolbarItem(placement: .topBarLeading) {
            HStack{
                Circle()
                    .frame(width: 35,height: 30)
                Text("QAUSer")
                    .bold()
            }
        }
        
        
    }
    @ToolbarContentBuilder
    private func trailingNavItem() -> some ToolbarContent{
        ToolbarItemGroup(placement: .topBarTrailing)
        {
            Button{
                
            }label: {
                Image(systemName: "video")
            }
            Button{
                
            }label: {
                Image(systemName: "phone")
            }
        }
        
    }
}


#Preview {
    NavigationStack {
        Chatroom()
    }
}
