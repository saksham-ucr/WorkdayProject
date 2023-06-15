//
//  ImageViewModel.swift
//  WorkdayProject
//
//  Created by user242726 on 6/15/23.
//

import Foundation
import SwiftUI

@MainActor
class ImageViewModel: ObservableObject {
    
    @Published var image: UIImage? = nil
    @Published var isLoading: Bool = true
    
    private var imageDataService: ImageDataService
    
    private let data: NasaData
    
    init(data: NasaData) {
        self.data = data
        self.imageDataService = ImageDataService(data: data)
    }
    
    func fetchImage() async {
        do {
            
            defer {
                self.isLoading = false
            }
            
            self.image = try await imageDataService.getImage()
        
            
        } catch (let error) {
            print(error.localizedDescription)
        }
    }
    
    
    
    
}