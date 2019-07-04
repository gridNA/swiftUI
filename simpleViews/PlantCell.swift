//
//  ContentView.swift
//  simpleViews
//
//  Created by Kateryna Gridina.
//  Copyright © 2019 Kateryna Gridina. All rights reserved.
//

import SwiftUI



// 1. create eliptical image

// 2. add shadow to the image

// 3. add image title and subtitle on the right of the image
// 4. place the cell on the top of the screen

// 5. Transfer data to the cell

// 6. add picker


struct PlantImage: View {
    
    var imageURL: String?
    @State var isImage: Bool = true
    //let imageURL = Bundle.main.url(forResource: "plant2", withExtension: "jpg")
    
    private var imgSource: CGImageSource? {
        guard let imageURL = imageURL, let u = NSURL(string: imageURL) else {
            isImage = false
            return nil
            
        }
        return (CGImageSourceCreateWithURL(u, nil))
    }
    
    private var image: CGImage? {
        guard let imgS = imgSource else {
            isImage = false
            return nil
            
        }
        return CGImageSourceCreateImageAtIndex(imgS, 0, nil)
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            if self.isImage {
                Image(image!, scale: 2, label: Text("img"))
                    .frame(width: 120, height: 100) .scaledToFit().clipShape(Ellipse()).overlay(Ellipse().stroke(Color.gray, lineWidth: 4)).shadow(radius: 4)
                
            }
        }
    }
}


struct PlantCell : View {
    
    var body: some View {
        Text("")
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        PlantCell()
    }
}
#endif
