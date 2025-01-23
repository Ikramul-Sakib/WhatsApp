
import SwiftUI

struct TextInputArea: View {
    @State private var text = ""
    var body: some View {
        HStack(alignment: .bottom,spacing:3){
            imagePicker()
                .padding(3)
            audioRecord()
            messageInput()
            sendmsg()
        }
        .padding(.bottom)
        .padding(.horizontal,8)
        .padding(.top,10)
        .background(.whatsAppWhite)
        
    }
    private func messageInput() -> some View{
        TextField("", text: $text,axis: .vertical)
            .padding(6)
            .frame(width: 280)
        
            .background(RoundedRectangle(cornerRadius: 20, style: .continuous).fill(.thinMaterial))
        
        
            .overlay(TextBorder())
        
        
    }
    private func TextBorder() -> some View{
        RoundedRectangle(cornerRadius:20, style: .continuous)
            .stroke(Color(.systemGray5),lineWidth: 1)
    }
    
    
    private func imagePicker() -> some View{
        Button{
        }
        label:{Image (systemName: "photo.on.rectangle").font(.system(size: 22))
        }
    }
    
    private func audioRecord() -> some View{
        Button{
            
        }
        label:{Image (systemName: "microphone.fill")}
            .frame(width: 35, height: 32)
            .imageScale(.small)
            .foregroundStyle(.white)
            .background(Color.blue.opacity(0.8))
            .clipShape(Circle())
            .padding(.horizontal,4)
    }
    private func sendmsg() -> some View{
        Button{
            
        }
        label:{Image (systemName: "arrow.up")}
            .fontWeight(.heavy)
            .foregroundStyle(.white.opacity(0.8))
            .padding(7)
            .background(Color.blue.opacity(0.75))
            .clipShape(Circle())
    }
    
}

#Preview {
    TextInputArea()
}
