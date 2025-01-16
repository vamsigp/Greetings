import SwiftUI

struct TextView: View {
    
    let text:String
    let bgColor: Color
    
    
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .fontWeight(.semibold)
            .padding()
            .foregroundStyle(Color.white)
            .background(bgColor.opacity(0.4))
            .cornerRadius(20.0)
            .shadow(color:bgColor, radius: 5, x:10.0, y:10.0)
    }
    
    
}

#Preview() {
    VStack {
        TextView(text: "Hello", bgColor: .green)
        TextView(text: "world", bgColor: .gray)
        TextView(text: "its", bgColor: .orange)
        TextView(text: "Vamsi", bgColor: .purple)
    }
    
}
