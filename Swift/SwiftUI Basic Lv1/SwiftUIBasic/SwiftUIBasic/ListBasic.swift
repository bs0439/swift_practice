//
//  ListBasic.swift
//  SwiftUIBasic
//
//  Created by 김범수 on 12/31/23.
//

import SwiftUI

struct ListBasic: View {
    
    //property
    @State var fruits: [String] = [
        "사과", "오렌지", "바나나", "수박"
    ]
    
    @State var meats: [String] = [
        "소고기", "돼지고기", "닭고기"
    ]
    
    var body: some View {
        NavigationStack{
            List{
                Section {
                    ForEach(fruits, id: \.self){ fruit in
                        Text(fruit)
                            .font(.body)
                            .foregroundStyle(.white)
                            .padding(.vertical)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: { indices, newOffset in
                        fruits.move(fromOffsets: indices, toOffset: newOffset)
                    })
                    .listRowBackground(Color.blue)
                } header: {
                    Text("과일종류")
                        .font(.headline)
                        .foregroundStyle(.brown)
                }
                
                
                Section {
                    ForEach(meats, id: \.self){ meat in
                        Text(meat)
                    }
                } header: {
                    Text("고기종류")
                        .font(.headline)
                        .foregroundStyle(.red)
                }


            }
            .navigationTitle("우리동네마트")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(leading: EditButton(), trailing: addButton)
        }
    }
    
    func delete(indexSet: IndexSet){
        fruits.remove(atOffsets: indexSet)
    }
    
    var addButton: some View{
        Button {
            // Action
            fruits.append("딸기")
        } label: {
            Text("Add")
        }
    }
}

#Preview {
    ListBasic()
}
