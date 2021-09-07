//
//  MemorrPresureMonitor.swift
//  MemorySimulator
//
//  Created by Pushpsen Airekar on 07/09/21.
//

import Foundation

//4. Dispatch Source for memory pressure events.
class MemoryPressureMonitor {
    
    static let shared = MemoryPressureMonitor()
    
    private let dispatchSource = DispatchSource.makeMemoryPressureSource(eventMask: [.warning, .critical])
    
    private init() {
        dispatchSource.setEventHandler { [weak self] in
            if let event = self?.dispatchSource.data, self?.dispatchSource.isCancelled == false {
                switch event {
                case .warning:
                    print("MemoryPressureMonitor: Low memory warning")
                case.critical:
                    print("MemoryPressureMonitor: Critical memory warning")
                default:
                    print("MemoryPressureMonitor: Unknown Event")
                }
            }
        }
        dispatchSource.activate()
    }

    deinit {
        dispatchSource.cancel()
    }
}
