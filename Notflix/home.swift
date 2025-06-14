import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .bottom) {
                // Main content
                ScrollView {
                    VStack(spacing: 16) {
                        // Header
                        HStack {
                            Text("For Rocky")
                                .font(.system(size: 24, weight: .semibold))
                                .foregroundStyle(.white)
                            
                            Spacer()
                            
                            HStack(alignment: .center, spacing: 22) {
                                Image("share")
                                  .frame(width: 21, height: 17)
                                
                                Image("download")
                                  .frame(width: 23, height: 19)
                                
                                Image("search")
                                  .frame(width: 22, height: 22)
                            }
                        }
                        .padding(.top, 68)
                        .padding(.horizontal, 16)
                        
                        // Category filters
                        HStack {
                            HStack(alignment: .center, spacing: 8) {
                                HStack(alignment: .center, spacing: 10) {
                                    Text("TV Shows")
                                        .font(.system(size: 14, weight: .semibold))
                                        .foregroundColor(Color(red: 0.83, green: 0.82, blue: 0.82))
                                }
                                .padding(.leading, 16)
                                .padding(.trailing, 15)
                                .padding(.vertical, 8)
                                .frame(height: 34, alignment: .center)
                                .cornerRadius(40)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 40)
                                        .inset(by: 0.5)
                                        .stroke(Color(red: 0.47, green: 0.39, blue: 0.38), lineWidth: 1)
                                )
                            }
                            HStack(alignment: .center, spacing: 8) {
                                HStack(alignment: .center, spacing: 10) {
                                    Text("Movies")
                                        .font(.system(size: 14, weight: .semibold))
                                        .foregroundColor(Color(red: 0.83, green: 0.82, blue: 0.82))
                                }
                                .padding(.leading, 16)
                                .padding(.trailing, 15)
                                .padding(.vertical, 8)
                                .frame(height: 34, alignment: .center)
                                .cornerRadius(40)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 40)
                                        .inset(by: 0.5)
                                        .stroke(Color(red: 0.47, green: 0.39, blue: 0.38), lineWidth: 1)
                                )
                            }
                            HStack(alignment: .center, spacing: 8) {
                                HStack(alignment: .center, spacing: 10) {
                                    Text("Categories")
                                        .font(.system(size: 14, weight: .semibold))
                                        .foregroundColor(Color(red: 0.83, green: 0.82, blue: 0.82))
                                }
                                .padding(.leading, 16)
                                .padding(.trailing, 15)
                                .padding(.vertical, 8)
                                .frame(height: 34, alignment: .center)
                                .cornerRadius(40)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 40)
                                        .inset(by: 0.5)
                                        .stroke(Color(red: 0.47, green: 0.39, blue: 0.38), lineWidth: 1)
                                )
                            }
                            
                            Spacer()
                        }
                        .padding(.bottom, 18)
                        .padding(.horizontal, 16)
                        
                        // Featured content
                        VStack {
                            Spacer()
                            Text("Watch the Final Season Now")
                            .font(.system(size: 15, weight: .semibold))
                              .foregroundColor(.white)
                            
                            HStack {
                                let btn1: String = "Play"
                                let btn2: String = "My List"
                                
                                HStack(alignment: .center, spacing: 10) {
                                    Image("play")
                                      .frame(width: 19.05256, height: 22)

                                    
                                    Text(btn1)
                                    .font(.system(size: 15, weight: .semibold))
                                      .foregroundColor(.black)
                                }
                                .padding(.horizontal, 0)
                                .padding(.vertical, 9)
                                .frame(width: min(geometry.size.width * 0.4, 151), height: 42, alignment: .center)
                                .background(.white)
                                .cornerRadius(4)
                                
                                
                                HStack(alignment: .center, spacing: 10) {
                                    Image("mylist")
                                      .frame(width: 19.05256, height: 22)
                                    
                                    Text(btn2)
                                    .font(.system(size: 15, weight: .semibold))
                                      .foregroundColor(.white)
                                }
                                .padding(.horizontal, 0)
                                .padding(.vertical, 9)
                                .frame(width: min(geometry.size.width * 0.4, 151), height: 42, alignment: .center)
                                .background(Color(red: 0.25, green: 0.23, blue: 0.22))
                                .cornerRadius(4)
                                
                            }
                            .padding(.bottom, 16)
                            .padding(.top, 16)
                            
                        }
                        .frame(width: 345, height: 486)
                        .background(.black)
                        .cornerRadius(16)
                        .overlay(
                          RoundedRectangle(cornerRadius: 16)
                            .inset(by: 0.5)
                            .stroke(Color(red: 0.16, green: 0.16, blue: 0.16).opacity(0.6), lineWidth: 1)
                        )
                        
                        // Mobile Games section
                        SmallCardSection()
                        
                        MediumCardSection(title: "Top Searches")
                        
                        MediumCardSection(title: "Emmy - Winning US TV Shows")
                        
                        MediumCardSection(title: "Movies & TV Shows Dubbed in Tamil")
                        
                        TopTenCardSection(title: "Top 10 Movies in India Today")
                        
                        MediumCardSection(title: "We Think You'll Love These")
                        
                        MediumCardSection(title: "Continue Watching for Rocky")
                        
                        TopTenCardSection(title: "Top 10 TV Shows in India Today")
                        
                        MediumCardSection(title: "Activating Beast Mode")
                        
                        MediumCardSection(title: "New on Netflix")
                        
                        MediumCardSection(title: "Critcially Acclaimed Movies")
                        
                        MediumCardSection(title: "Get it on the Action")
                        
                        MediumCardSection(title: "Exsiting US TV Shows")
                        
                        MediumCardSection(title: "Hollywood Movies")
                        
                        MediumCardSection(title: "Todays Top Pick for You")
                        
                        MediumCardSection(title: "Witty US TV Comedy Shows")
                        
                        MediumCardSection(title: "Your Next Watch")
                        
                        MediumCardSection(title: "Because you watch Minions & More")
                        
                        MediumCardSection(title: "Emotional Movies")
                        
                        MediumCardSection(title: "Epic Worlds")
                        
                        MediumCardSection(title: "Comedies")
                        
                        MediumCardSection(title: "Children & Family Movies")
                        
                        MediumCardSection(title: "Crowd Pleasers")
                        
                        MediumCardSection(title: "Young Adult Movies & Shows")
                        
                        BigCardSection(title: "Only on Netflix")
                        
                        // Add extra spacing at the bottom to account for the nav bar
                        Spacer()
                            .frame(height: 90)
                    }
                    
//                    .padding(.vertical, 16)
//                    .padding(.horizontal, 16)
                }
                .scrollIndicators(.hidden)
                .ignoresSafeArea(.all)
                .frame(width: geometry.size.width, height: geometry.size.height)
                .background(.black)
                
                // Bottom Navigation Bar
                VStack(alignment: .leading, spacing: 0) {
                    
                    HStack() {
                        // First nav item
                        VStack(spacing: 4) {
                            Image("home")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 24, height: 24)
                            
                            Text("Home")
                                .font(.system(size: 10))
                                .foregroundColor(.white)
                        }
                        
                        Spacer()
                        
                        // Second nav item
                        VStack(spacing: 4) {
                            Image("hot")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 24, height: 24)
                            
                            Text("New & Hot")
                                .font(.system(size: 10))
                                .foregroundColor(.gray)
                        }
                        
                        Spacer()
                        
                        // Third nav item
                        VStack(spacing: 4) {
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 24, height: 24)
                                .background(Color(red: 0.85, green: 0.85, blue: 0.85)).opacity(0.1)
                            
                            Text("My Netflix")
                                .font(.system(size: 10))
                                .foregroundColor(.gray)
                        }
                    }
                    .padding(.top, 2)
                    .padding(.horizontal, 38)
                }
                .frame(height: 48)
                .background(Color(red: 0.12, green: 0.12, blue: 0.12))
                
                
            }
        }
    }
}

#Preview {
    ContentView()
}

struct SmallCard: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            ZStack {
                // Game content here
            }
            .frame(width: 110, height: 110)
            .background(.gray)
            .cornerRadius(16)
            .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .inset(by: 0)
                    .stroke(Color(red: 0.16, green: 0.16, blue: 0.16).opacity(0.2), lineWidth: 1)
            )
            VStack(alignment: .leading, spacing: 2) {
                Text("GTA: San Andreas - The Definitive")
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
            .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .inset(by: 0)
                    .stroke(Color(red: 0.16, green: 0.16, blue: 0.16).opacity(0.2), lineWidth: 1)
            )
            
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
                    ForEach(0..<5) { _ in
                        MediumCard()
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


