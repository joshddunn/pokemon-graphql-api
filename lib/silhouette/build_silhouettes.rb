# load './lib/silhouette/build_silhouettes.rb'

directories = [
  "./public/v1/sprites/pokemon/silhouette/",
  "./public/v1/sprites/pokemon/silhouette/female/",
  "./public/v1/sprites/pokemon/back/silhouette/",
  "./public/v1/sprites/pokemon/back/silhouette/female/"
]

directories.each do |directory|
  if directory.include? "silhouette"
    Dir.entries(directory).each do |file|
      if file.include? ".png"
        filename = directory + file
        image = ChunkyPNG::Image.from_file(filename)
        image.pixels.map! do |pixel|
          color = pixel
          color = ChunkyPNG::Color.from_hsv(0, 0, 0) if ChunkyPNG::Color.a(pixel) == 255
          color
        end
        image.save(filename, :fast_rgba)
      end
    end
  end
end

  
