import SwiftUI

struct profile: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .top) {
                Header(pageName: "My Netflix", r1: "share", r2: "search", r3: "menu")
                    .zIndex(1)
                    .background(Color.black)
                
                // Main content
                ScrollView {
                    VStack(spacing: 16) {
                        VStack(alignment: .center, spacing: 2) {
                            ZStack {
                                
                            }
                            .frame(width: 70, height: 70)
                            .background(.white)
                            .cornerRadius(6)
                            
                            HStack(alignment: .center, spacing: 7) {
                                Text("Rocky")
                                    .font(.system(size: 24, weight: .semibold))
                                  .foregroundColor(.white)
                                
                                Image("down")
                                .frame(width: 10.5, height: 5.5)
                            }
                            .padding(0)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        }
                        .padding(0)
                        .frame(width: 89.5, alignment: .top)
                        
                        
                        NotificaitonSection(SectionName: "Notifications", SectionColor: .red)
                        
                        DownloadsSection(SectionName: "Downloads", SectionColor: .purple)
                        
                        ProfileCardSection(title: "My section")
                        
                        Spacer()
                    }
                    .padding(.top, 120)
                    .padding(.vertical, 16)
                    .padding(.horizontal, 16)
                }
                .scrollIndicators(.hidden)
                .ignoresSafeArea(.all)
                .frame(width: geometry.size.width, height: geometry.size.height)
                .background(.black)
            }
        }
    }
}

#Preview {
    MainView()
}


struct NotificationCard: View {
    
    var Title : String = ""
    var Subtext : String = ""
    var Date : String = ""
    
    var body: some View {
        HStack(alignment: .center, spacing: 8) {
            ZStack { }
                .frame(width: 8, height: 8)
                .background(Color(red: 1, green: 0, blue: 0))
                .cornerRadius(30)
            
            ZStack { }
                .frame(width: 124, height: 70)
                .background(Color(red: 0.22, green: 0.09, blue: 0))
                .cornerRadius(4)
            
            VStack(alignment: .leading, spacing: 4) {
                Text(Title)
                    .font(.system(size: 14, weight: .semibold))
                    .foregroundColor(Color(red: 0.7, green: 0.7, blue: 0.7))
                    .frame(maxWidth: .infinity, alignment: .topLeading)
                
                Text(Subtext)
                    .font(.system(size: 14, weight: .regular))
                    .kerning(0.48)
                    .foregroundColor(Color(red: 0.7, green: 0.7, blue: 0.7))
                    .frame(maxWidth: .infinity, alignment: .topLeading)
                
                Text(Date)
                    .font(.system(size: 14, weight: .regular))
                    .foregroundColor(Color(red: 0.7, green: 0.7, blue: 0.7))
                    .frame(maxWidth: .infinity, alignment: .topLeading)
            }
            .padding(0)
            .frame(maxWidth: .infinity, alignment: .topLeading)
        }
        .padding(0)
        .frame(width: 370, alignment: .leading)
    }
}

struct NotificaitonSection: View {
    
    var SectionName: String = ""
    var SectionColor: Color = Color.red
    
    var body: some View {
        VStack (spacing: 20) {
            HStack(alignment: .center)
            {
                HStack(alignment: .center, spacing: 8) {
                    ZStack {  }
                        .frame(width: 44, height: 44)
                        .background(SectionColor)
                        .cornerRadius(50)
                    
                    Text(SectionName)
                        .font(.system(size: 18, weight: .semibold))
                        .foregroundColor(.white)
                }
                .padding(0)
                
                Spacer()
                Image("right")
                    .frame(width: 12, height: 22)
            }
            .padding(0)
            
            NotificationCard(Title: "Coming Soon", Subtext: "Play the trailer", Date: "Tomorrow")
            
            NotificationCard(Title: "Coming Soon", Subtext: "Play the trailer", Date: "Tomorrow")
        }
        .frame(width: 377, alignment: .center)
        .padding(.top, 24)
    }
}

struct DownloadsSection: View {
    
    var SectionName: String = ""
    var SectionColor: Color = Color.red
    
    var body: some View {
        VStack (spacing: 20) {
            HStack(alignment: .center)
            {
                HStack(alignment: .center, spacing: 8) {
                    ZStack {  }
                        .frame(width: 44, height: 44)
                        .background(SectionColor)
                        .cornerRadius(50)
                    
                    Text(SectionName)
                        .font(.system(size: 18, weight: .semibold))
                        .foregroundColor(.white)
                }
                .padding(0)
                
                Spacer()
                Image("right")
                    .frame(width: 12, height: 22)
            }
            .padding(0)
        }
        .frame(width: 377, alignment: .center)
        .padding(.top, 24)
    }
}

struct ProfileCardSection: View {
    var title: String
    var body: some View {
        VStack(spacing: 0) {
            HStack(alignment: .center) {
                Text(title)
                    .font(.system(size: 17, weight: .semibold))
                    .kerning(0.34)
                    .foregroundColor(.white)
                
                Spacer()
            }
            .padding(.horizontal, 8)
            
            ScrollView(.horizontal) {
                HStack(spacing: 10) {
                    ForEach(0..<5) { _ in
                        MediumCard(imageName: "witcher")
                    }
                }
                .padding(.vertical, 10)
                .padding(.leading, 8)
                .padding(.trailing, 8)
            }
            .scrollIndicators(.hidden)
        }
    }
}
