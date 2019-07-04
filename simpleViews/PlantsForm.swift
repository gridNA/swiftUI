//
//  PlantsForm.swift
//  simpleViews
//
//  Created by Kateryna Gridina.
//  Copyright © 2019 Kateryna Gridina. All rights reserved.
//

import SwiftUI
import Combine


// create a simple form with 1 text field

struct LabelTextField : View {
    var label: String
    var placeHolder: String? = ""
    @ObjectBinding var plant: Plant
    
    var body: some View {
        
        VStack(alignment: .leading) {
            Text(label)
                .font(.headline)
            TextField($plant.name, placeholder: Text(placeHolder ?? ""))
                .padding(.all)
                .background(Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0), cornerRadius: 5.0)
            }
            .padding(.horizontal, 15)
    }
}


struct PlantsForm : View {
    @ObjectBinding var plant: Plant
    
    var body: some View {
        Text("")
    }
}

#if DEBUG
struct PlantsForm_Previews : PreviewProvider {
    
    static var previews: some View {
        PlantsForm()
    }
}
#endif

