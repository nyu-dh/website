namespace :media do
  desc 'downsize people and project images to 300px width and convert to jpg'
  task :downscale  do
    begin
      require 'vips'
    rescue LoadError
      puts Rainbow("LOAD ERROR: This task requires that Libvips is installed.\nPlease install it using the instructions at https://libvips.github.io/libvips/install.html.").magenta
      exit
    end

    width = 300

    Dir.glob("./source/media/{people,projects}/**").each do |path|
      basename = File.basename(path, File.extname(path))
      next if basename == 'default'

      image = Vips::Image.new_from_file path
      next if image.width < 301

      pathname = File.dirname(path)
      tmppath  = "#{pathname}/#{basename}-tmp.jpg"

      puts Rainbow("Resizing #{path} to #{width}px.").cyan

      resized = image.thumbnail_image width, height: 10000000
      resized.write_to_file tmppath
      FileUtils.rm path
    end

    Dir.glob("./source/media/{people,projects}/*-tmp*").each do |path|
      FileUtils.mv path, path.gsub('-tmp', '')
    end

    puts Rainbow("Done ✓").green
  end
end
