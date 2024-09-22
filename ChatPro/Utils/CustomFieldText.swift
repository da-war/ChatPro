import SwiftUI

struct CustomTextField: View {
    var placeholderText: String
    @Binding var text: String
    var isSecuredField: Bool

    var body: some View {
        Group {
            if isSecuredField {
                SecureField(placeholderText, text: $text)
                    .padding(5)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            } else {
                TextField(placeholderText, text: $text)
                    .padding(5)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
        }
        .padding(.top, 8)
    }
}

struct CustomTextField_Previews: PreviewProvider {
    static var previews: some View {
        @State var sampleText = ""
        return CustomTextField(placeholderText: "Enter Text", text: $sampleText, isSecuredField: false)
            .padding()
    }
}
