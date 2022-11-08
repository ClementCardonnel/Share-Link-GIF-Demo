//
//  Transferable.swift
//  ShareLinkDemo
//
//  Created by Clément Cardonnel on 08/11/2022.
//

import SwiftUI

struct GIFDataRepresentation: Transferable {
    let data: Data
    
    static var transferRepresentation: some TransferRepresentation {
        // Exporting the GIF as a UTType.gif.
        DataRepresentation(exportedContentType: .gif) { transferable in
            // Debugging: Here I'm measuring the size of the data in order to make sure that
            // up to the very last point, we have the correct data (at least according to its size)
            let bcf = ByteCountFormatter()
            bcf.allowedUnits = [.useMB] // optional: restricts the units to MB only
            bcf.countStyle = .file
            let string = bcf.string(fromByteCount: Int64(transferable.data.count))
            print("There's \(string) of data")
            
            return transferable.data
        }
    }
}

struct GIFFileRepresentation: Transferable {
    let url: URL
    static var transferRepresentation: some TransferRepresentation {
        // Exporting the GIF as a UTType.gif.
        FileRepresentation(exportedContentType: .gif) { transferable in
            SentTransferredFile(transferable.url)
        }
    }
}
