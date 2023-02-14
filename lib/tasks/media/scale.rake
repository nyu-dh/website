def scale(path, width)
  image    = Vips::Image.new_from_file path
  return if image.width < width + 1

  extname  = File.extname path
  basename = File.basename path, extname
  pathname = File.dirname path
  tmppath  = "#{pathname}/#{basename}-tmp#{extname}"

  puts Rainbow("Resizing #{path} to #{width}px.").cyan
  resized = image.thumbnail_image width, height: 10000000
  resized.write_to_file tmppath
end

def cleanup(tmppath)
  path = tmppath.gsub('-tmp', '')
  FileUtils.rm path if File.file? path
  FileUtils.mv tmppath, path
end

namespace :media do
  namespace :scale  do
    begin
      require 'vips'
    rescue LoadError
      puts Rainbow("LOAD ERROR: This task requires that Libvips is installed.\nPlease install it using the instructions at https://libvips.github.io/libvips/install.html.").magenta
      exit
    end

    desc 'downscale people images to 600px width'
    task :people do 
      paths = Dir.glob "./source/media/people/**"
      paths.each { |p| scale p, 600 }
      tmppaths = Dir.glob "./source/media/people/*-tmp*"
      tmppaths.each { |t| cleanup t }
      puts Rainbow("Done ✓").green
    end

    desc 'downscale project images to 1140px width'
    task :projects do 
      paths = Dir.glob "./source/media/projects/**"
      paths.each { |p| scale p, 1140 }
      tmppaths = Dir.glob "./source/media/projects/*-tmp*"
      tmppaths.each { |t| cleanup t }
      puts Rainbow("Done ✓").green
    end

    desc 'downscale doodle banners to 1140px width'
    task :banners do 
      paths = Dir.glob "./theme/assets/images/banners/**"
      paths.each { |p| scale p, 1140 }
      tmppaths = Dir.glob "./theme/assets/images/banners/*-tmp*"
      tmppaths.each { |t| cleanup t }
      puts Rainbow("Done ✓").green
    end

    desc 'downscale doodle defaults to 600px width'
    task :defaults do 
      paths = Dir.glob "./theme/assets/images/defaults/**"
      paths.each { |p| scale p, 600 }
      tmppaths = Dir.glob "./theme/assets/images/defaults/*-tmp*"
      tmppaths.each { |t| cleanup t }
      puts Rainbow("Done ✓").green
    end

    desc 'downscale doodle icons to 250px width'
    task :icons do 
      paths = Dir.glob "./theme/assets/images/icons/**"
      paths.each { |p| scale p, 600 }
      tmppaths = Dir.glob "./theme/assets/images/icons/*-tmp*"
      tmppaths.each { |t| cleanup t }
      puts Rainbow("Done ✓").green
    end

    desc 'downscale all'
    task :all do
      %w(people projects banners defaults icons).each { |t| Rake::Task["media:scale:#{t}"].invoke }
    end

  end
end
