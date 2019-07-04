//
//  PlantHome.swift
//  simpleViews
//
//  Created by Kateryna Gridina.
//  Copyright © 2019 Kateryna Gridina. All rights reserved.
//


import SwiftUI

// 1. create a simple tabbed view with 2 tabs in it, which contain text

// 2. create a list view with the static text in the cell

// 3. create a List with data from Plants.json

// 4. create a navigation button to show another screen (with text). Connect all in tabs
// 5. create a navigation button to show another screen (with form). Connect all in tabs

struct PlantHome : View {
    @State var index: Int = 0
    let plantStore = PlantLocalStore()

    var body: some View {
       Text("")
    }
}

struct PlantList1: View {

    var body: some View {
       Text("")
    }
}

struct PlantList2: View {

    var body: some View {
        Text("")
    }
}

#if DEBUG
struct PlantHome_Previews : PreviewProvider {
    static var previews: some View {
       PlantHome()
    }
}
#endif
