//
//  ContentView.swift
//  CustomCamera
//
//  Created by 김보영 on 2022/07/03.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    var body: some View {
        
        CameraView()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        ContentView()
        
    }
}

struct CameraView : View {
    
    @StateObject var camera = CameraModel()
    
    var body: some View {
        ZStack {
            
            // Going to be Camera preview
            Color.black
                .ignoresSafeArea(.all, edges: .all)
            
            VStack {
                
                if camera.isTaken {
                    
                    HStack {
                        
                        Spacer()
                        
                        Button {
                            
                        } label: {
                            
                            Image(systemName: "arrow.triangle.2.circlepath.camera")
                                .foregroundColor(.black)
                                .padding()
                                .background(Color.white)
                                .clipShape(Circle())
                            
                            
                        }
                        .padding(.trailing, 12)
                    }
                    
                }
                
                Spacer()
                
                HStack {
                    
                    // If taken showing save and agina take button...
                    
                    if camera.isTaken {
                        Button {
                            
                        } label: {
                            Text("Save")
                                .foregroundColor(.black)
                                .fontWeight(.semibold)
                                .padding(.vertical, 12)
                                .padding(.horizontal, 24)
                                .background(Color.white)
                                .clipShape(Capsule())
                        }
                        .padding(.leading, 12)
                        
                        Spacer()
                        
                    } else {
                        Button {
                            camera.isTaken.toggle()
                        } label: {
                            ZStack {
                                Circle()
                                    .fill(Color.white)
                                    .frame(width: 70, height: 70, alignment: .center)
                                Circle()
                                    .stroke(Color.white, lineWidth: 2)
                                    .frame(width: 76, height: 76, alignment: .center)
                            }
                        }
                    }
                }
                .frame(height: 74, alignment: .center)
                
            }
        }
        .onAppear {
            camera.Check()
        }
    }
}

// Camera Model

class CameraModel: ObservableObject {
    
    @Published var isTaken: Bool = false
    
    @Published var session = AVCaptureSession()
    
    @Published var alert = false
    
    // picture data
    @Published var output = AVCapturePhotoOutput()
    
    func Check() {
        
        // first checking camera has got permission...
        switch AVCaptureDevice.authorizationStatus(for: .video) {
        case .authorized:
            // Setting Up Session
            SetUp()
            return
            
        case .notDetermined:
            // Returning for permission...
            AVCaptureDevice.requestAccess(for: .video) { (status) in
                
                if status {
                    self.SetUp()
                }
            }
            
        case .denied:
            self.alert.toggle()
                return
            
        default:
            return
            
        }
    }
    
    func SetUp() {
        // Setting up camera...
        
        do {
            // Setting  configs...
            self.session.beginConfiguration()
            
            // 자유롭게 수정하시라네요?
            let device = AVCaptureDevice.default(.builtInDualCamera, for: .video, position: .back)
            
            let input = try AVCaptureDeviceInput(device: device!)
            
            // Checking and adding to session...
            
            if self.session.canAddInput(input) {
                self.session.addInput(input)
            }
            
            // same for output
            
            if self.session.canAddOutput(self.output) {
                self.session.addOutPut(self.output)
            }
            
            self.session.commitConfiguration()
            
        } catch {
            print(error.localizedDescription)
        }
        
    }
}
