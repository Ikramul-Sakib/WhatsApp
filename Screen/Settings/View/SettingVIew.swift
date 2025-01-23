
import SwiftUI

struct SettingVIew: View {
    @State private var search = ""
    var body: some View {
        
        NavigationStack{
            List{
                SettingHeaderView()
                Section{
                    Untitled(item: .broadCastLists)
                    Untitled(item: .starredMessages)
                    Untitled(item: .linkedDevices)
                    Untitled(item: .broadCastLists)
                }
                Section{
                    Untitled(item: .account)
                    Untitled(item: .privacy)
                    Untitled(item: .chats)
                    Untitled(item: .notifications)
                    Untitled(item: .storage)
                }
                Section{
                    Untitled(item: .help)
                    Untitled(item: .tellFriend)
                    
                }
            }
            .navigationTitle("Setting")
            .searchable(text: $search)
            
        }
    }
}

private struct SettingHeaderView: View {
    var body: some View {
        Section{
            HStack{
                Circle()
                    .frame(width: 55, height: 55)
                userInfoText()
            }
            Untitled(item: .avatar)
                
        }
        
    }
    private func userInfoText() -> some View{
        VStack(alignment: .leading, spacing: 0){
            HStack{
                Text("QA User 13")
                    .font(.title2)
                
                Spacer()
                
                Image(systemName: "qrcode")
                    .renderingMode(.template)
                    .padding(5)
                    .foregroundStyle(.blue)
                    .background(Color(.systemGray5))
                    .clipShape(Circle())
            }
            Text("Hey There I am using whatsapp")
                .font(.callout)
                .foregroundStyle(.gray)
            
        }
        .lineLimit(1)
    }
   
}

#Preview {
    SettingVIew()
}
