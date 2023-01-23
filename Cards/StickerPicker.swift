//
//  StickerPicker.swift
//  Cards
//
//  Created by Jinwook Kim on 2023/01/23.
//

import SwiftUI

struct StickerPicker: View {
    @State private var stickerNames: [String] = []
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(stickerNames, id: \.self) { sticker in
                    Image(uiImage: image(from: sticker))
                        .resizable()
                        .scaledToFit()
                }
            }
        }
        .onAppear {
            stickerNames = loadStickers()
        }
    }
    func loadStickers() -> [String] {
        var themes: [URL] = []
        var stickerNames: [String] = []
        let fileManager = FileManager.default
        if let resourcePath = Bundle.main.resourcePath, let enumerator = fileManager.enumerator(at: URL(fileURLWithPath: resourcePath + "/Stickers"), includingPropertiesForKeys: nil, options: [.skipsSubdirectoryDescendants, .skipsHiddenFiles]) {
            for case let url as URL in enumerator where url.hasDirectoryPath {
                themes.append(url)
            }
        }
        for theme in themes {
            if let files = try? fileManager.contentsOfDirectory(atPath: theme.path) {
                for file in files {
                    stickerNames.append(theme.path + "/" + file)
                }
            }
        }
        return stickerNames
    }
    func image(from path: String) -> UIImage {
        print("Loading: ", path)
        return UIImage(named: path) ?? UIImage(named: "Error") ?? UIImage()
    }
}

struct StickerPicker_Previews: PreviewProvider {
    static var previews: some View {
        StickerPicker()
    }
}
