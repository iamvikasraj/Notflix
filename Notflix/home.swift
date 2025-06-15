import SwiftUI
import RiveRuntime

struct home: View {
    @State var isMainshowtapped: Bool = false // Move this line here
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .top) {
                VStack(spacing:12) {
                    Header(pageName: "For Rocky", r1: "share", r2: "download", r3: "search")
                    headerLabel()
                        .padding(.bottom, 8)
               }.zIndex(1)
                
                
                // Main content
                ScrollView() {
                    VStack(spacing: 16) {
                        Spacer().frame(height: 160)
                        VStack {
                            Spacer()
//                            Text("Watch the Final Season Now")
//                                .font(.system(size: 15, weight: .semibold))
//                                .foregroundColor(.white)
                            HStack {
                                let btn1: String = "Play"
                                let btn2: String = "My List"
                                
                                // Play Button
                                Button(action: {
                                    // Add haptic feedback
                                    let impactFeedback = UIImpactFeedbackGenerator(style: .medium)
                                    impactFeedback.impactOccurred()
                                    
                                    // Add your play action here
                                    print("Play button tapped")
                                }) {
                                    HStack(alignment: .center, spacing: 10) {
                                        Image("played")
                                            .frame(width: 22, height: 22)
                                        
                                        Text(btn1)
                                            .font(.system(size: 15, weight: .semibold))
                                            .foregroundColor(.white)
                                    }
                                    .padding(.horizontal, 0)
                                    .padding(.vertical, 9)
                                    .frame(width: min(geometry.size.width * 0.4, 151), height: 42, alignment: .center)
                                    .glassEffect()
                                    .cornerRadius(4)
                                }
                                .buttonStyle(PlainButtonStyle()) // Removes default button styling
                                
                                // My List Button
                                Button(action: {
                                    // Add haptic feedback
                                    let impactFeedback = UIImpactFeedbackGenerator(style: .light)
                                    impactFeedback.impactOccurred()
                                    
                                    // Add your my list action here
                                    print("My List button tapped")
                                }) {
                                    HStack(alignment: .center, spacing: 10) {
                                        Image("mylist")
                                            .frame(width: 22, height: 22)
                                        
                                        Text(btn2)
                                            .font(.system(size: 15, weight: .semibold))
                                            .foregroundColor(.white)
                                    }
                                    .padding(.horizontal, 0)
                                    .padding(.vertical, 9)
                                    .frame(width: min(geometry.size.width * 0.4, 151), height: 42, alignment: .center)
                                    .glassEffect()
                                }
                                .buttonStyle(PlainButtonStyle()) // Removes default button styling
                            }
                            .padding(.bottom, 16)
                            .padding(.top, 16)
                        }
                        .frame(width: 345, height: 486)
                        .background(
                            ZStack {
                                // Background image
                                Image("hero") // Replace with your image name
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 345, height: 486)
                                
                                // Optional: Dark gradient overlay for better text readability
//                                LinearGradient(
//                                    colors: [Color.clear, Color.black.opacity(0.7)],
//                                    startPoint: .top,
//                                    endPoint: .bottom
//                                )
                            }
                        )
                        .clipped()
                        .cornerRadius(16)
                        
                        // Mobile Games section
                        SmallCardSection()
                        
                        MediumCardSection(title: "Top Searches", cover: "one-1")
                        
                        MediumCardSection(title: "Emmy - Winning US TV Shows", cover: "one-2")
                        
                        MediumCardSection(title: "Movies & TV Shows Dubbed in Tamil", cover: "one-3")
                        
                        TopTenCardSection(title: "Top 10 Movies in India Today")
                        
                        MediumCardSection(title: "We Think You'll Love These", cover: "one-4")
                        
                        MediumCardSection(title: "Continue Watching for Rocky", cover: "one-4")
                        
                        TopTenCardSection(title: "Top 10 TV Shows in India Today")
                        
                        MediumCardSection(title: "Activating Beast Mode", cover: "one-4")
                        
                        MediumCardSection(title: "New on Netflix", cover: "one-4")
                        
                        MediumCardSection(title: "Critcially Acclaimed Movies", cover: "one-4")
                        
                        MediumCardSection(title: "Get it on the Action", cover: "one-4")
                        
                        MediumCardSection(title: "Exsiting US TV Shows", cover: "one-4")
                        
                        MediumCardSection(title: "Hollywood Movies", cover: "one-4")
                        
                        MediumCardSection(title: "Todays Top Pick for You", cover: "one-4")
                        
                        MediumCardSection(title: "Witty US TV Comedy Shows", cover: "one-4")
                        
                        MediumCardSection(title: "Your Next Watch", cover: "one-4")
                        
                        MediumCardSection(title: "Because you watch Minions & More", cover: "one-4")
                        
                        MediumCardSection(title: "Emotional Movies", cover: "one-4")
                        
                        MediumCardSection(title: "Epic Worlds", cover: "one-4")
                        
                        MediumCardSection(title: "Comedies", cover: "one-4")
                        
                        MediumCardSection(title: "Children & Family Movies", cover: "one-4")
                        
                        MediumCardSection(title: "Crowd Pleasers", cover: "one-4")
                        
                        MediumCardSection(title: "Young Adult Movies & Shows", cover: "one-4")
                        
//                        BigCardSection(title: "Only on Netflix")
                        
                        // Add extra spacing at the bottom to account for the nav bar
                        
                    }
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

struct FilterButton: View {
    let title: String
    
    var body: some View {
        Text(title)
            .font(.system(size: 14, weight: .semibold))
            .foregroundColor(Color(red: 0.83, green: 0.82, blue: 0.82))
            .padding(.horizontal, 16)
            .frame(height: 34)

    }
}


struct SmallCard: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            ZStack {
                Image("gamecover")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 110, height: 110)
                    .clipped()
            }
            .frame(width: 110, height: 110)
            .background(Color.gray.opacity(0.3))
            .cornerRadius(16)
            .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(Color.white.opacity(0.1), lineWidth: 1)
            )
    
            VStack(alignment: .leading, spacing: 2) {
                Text("Street Fighter IV CE")
                    .font(.system(size: 12, weight: .bold))
                  .foregroundColor(.white)
                  .frame(width: 110, alignment: .topLeading)
                
                Text("Action")
                .font(.system(size: 12, weight: .regular))
                  .foregroundColor(Color(red: 0.65, green: 0.65, blue: 0.65))
                  .frame(maxWidth: .infinity, alignment: .topLeading)
            }
            .padding(0)
            .frame(maxWidth: .infinity, alignment: .topLeading)
        }
    }
}

struct MediumCard: View {
    var imageName: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            VStack {
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 110, height: 159)
                    .clipped()
                
//                Spacer()
//                HStack(alignment: .center, spacing: 10) {
//                    Text("Recently added")
//                      .font(
//                        Font.custom("Inter", size: 10)
//                          .weight(.bold)
//                      )
//                      .multilineTextAlignment(.center)
//                      .foregroundColor(.white)
//                }
//                .padding(.horizontal, 4)
//                .padding(.vertical, 3)
//                .background(Color(red: 0.9, green: 0.04, blue: 0.08))
                
            }
            .frame(width: 110, height: 159)
            .background(.gray)
            .cornerRadius(4)
            .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .inset(by: 0)
                    .stroke(Color(red: 0.16, green: 0.16, blue: 0.16).opacity(0.2), lineWidth: 1)
            )
            
        }
    }
}

struct BigCard: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            VStack {
                // Game content here
                
//                Spacer()
//                HStack(alignment: .center, spacing: 10) {
//                    Text("Recently added")
//                      .font(
//                        Font.custom("Inter", size: 10)
//                          .weight(.bold)
//                      )
//                      .multilineTextAlignment(.center)
//                      .foregroundColor(.white)
//                }
//                .padding(.horizontal, 4)
//                .padding(.vertical, 3)
//                .background(Color(red: 0.9, green: 0.04, blue: 0.08))
                
            }
            .frame(width: 163, height: 333)
            .background(.gray)
            .cornerRadius(4)
            
        }
    }
}

struct TopTenCard: View {
   var rank: Int
    
    var body: some View {
        HStack (alignment: .bottom, spacing: -28) {
            Text("\(rank)")
            .font(
            Font.custom("Inter", size: 132)
            .weight(.heavy)
            )
            .kerning(-3)
            .frame(height: 100)
            .foregroundStyle(.white)
            VStack(alignment: .leading, spacing: 6) {
                VStack {
                    // Game content here
                    
                    //                Spacer()
                    //                HStack(alignment: .center, spacing: 10) {
                    //                    Text("Recently added")
                    //                      .font(
                    //                        Font.custom("Inter", size: 10)
                    //                          .weight(.bold)
                    //                      )
                    //                      .multilineTextAlignment(.center)
                    //                      .foregroundColor(.white)
                    //                }
                    //                .padding(.horizontal, 4)
                    //                .padding(.vertical, 3)
                    //                .background(Color(red: 0.9, green: 0.04, blue: 0.08))
                    
                }
                .frame(width: 110, height: 159)
                .background(.gray)
                .cornerRadius(4)
                .overlay(
                    RoundedRectangle(cornerRadius: 16)
                        .inset(by: 0)
                        .stroke(Color(red: 0.16, green: 0.16, blue: 0.16).opacity(0.2), lineWidth: 1)
                )
                
            }
        }
    }
}

struct SmallCardSection: View {
    var body: some View {
        VStack {
            HStack(alignment: .center) {
                Text("Mobile Games")
                    .font(.system(size: 17, weight: .semibold))
                    .kerning(0.34)
                    .foregroundColor(.white)
                
                Spacer()
                
                Text("My List")
                    .font(.system(size: 16, weight: .regular))
                    .kerning(0.34)
                    .foregroundColor(.white)
                
            }
            .padding(.horizontal, 16)
            
            ScrollView(.horizontal) {
                HStack(spacing: 10) {
                    ForEach(0..<5) { _ in
                        SmallCard()
                    }
                }
                .padding(.vertical, 10)
                .padding(.leading, 16)
                .padding(.trailing, 16)
            }
            .scrollIndicators(.hidden)
        }
    }
}

struct MediumCardSection: View {
    var title: String
    var cover: String
    var body: some View {
        VStack(spacing: 0) {
            HStack(alignment: .center) {
                Text(title)
                    .font(.system(size: 17, weight: .semibold))
                    .kerning(0.34)
                    .foregroundColor(.white)
                
                Spacer()
            }
            .padding(.horizontal, 16)
            
            ScrollView(.horizontal) {
                HStack(spacing: 10) {
                    MediumCard(imageName: "witcher")
                    MediumCard(imageName: "you")
                    MediumCard(imageName: "dearchild")
                    MediumCard(imageName: "madness")
                    MediumCard(imageName: "bodyproblem")
                }
                .padding(.vertical, 10)
                .padding(.leading, 16)
                .padding(.trailing, 16)
            }
            .scrollIndicators(.hidden)
        }
    }
}

struct BigCardSection: View {
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
            .padding(.horizontal, 16)
            
            ScrollView(.horizontal) {
                HStack(spacing: 10) {
                    ForEach(0..<9) { _ in
                        BigCard()
                    }
                }
                .padding(.vertical, 10)
                .padding(.leading, 16)
                .padding(.trailing, 16)
            }
            .scrollIndicators(.hidden)
        }
    }
}

struct TopTenCardSection: View {
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
            .padding(.horizontal, 16)
            
            ScrollView(.horizontal) {
                HStack(spacing: 10) {
                    ForEach(1...10, id: \.self)
                    {
                        rank in
                        TopTenCard(rank: rank)
                    }
                }
                .padding(.vertical, 10)
                .padding(.leading, 16)
                .padding(.trailing, 16)
            }
            .scrollIndicators(.hidden)
        }
    }
}

struct Header: View {
    
    var pageName : String = ""
    var r1 : String = ""
    var r2 : String = ""
    var r3 : String = ""
    
    var body: some View {
        ZStack {
            VStack(spacing: 12) {
                // Header
                HStack {
                    Text(pageName)
                        .font(.system(size: 24, weight: .semibold))
                        .foregroundStyle(.white)
                    
                    Spacer()
                    
                    HStack(spacing: 22) {
                        ForEach([r1, r2, r3], id: \.self) { imageName in
                            Image(imageName)
                            .frame(width: 22, height: 22)
                        }
                    }
                }
                .padding(.horizontal, 10)
            }
        }
    }
}

struct headerLabel: View {
    var body: some View {
        HStack {
            ForEach(["TV Shows", "Movies", "Categories"], id: \.self) { title in
                FilterButton(title: title)
            }
            .glassEffect()
            Spacer()
        }
        .padding(.horizontal, 10)
    }
}
