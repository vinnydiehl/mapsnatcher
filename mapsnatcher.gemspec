Gem::Specification.new do |gem|
  gem.name = "mapsnatcher"
  gem.version = File.read(File.expand_path("../VERSION", __FILE__)).strip

  gem.author = "Vinny Diehl"
  gem.email = "vinny.diehl@gmail.com"
  gem.homepage = "https://github.com/vinnydiehl/mapsnatcher"

  gem.license = "MIT"

  gem.summary = "QGIS map downloading and tiling."
  gem.description = "Downloads and combines tiles from QGIS maps into an image."

  gem.bindir = "bin"
  gem.executables = %w[mapsnatcher]

  gem.files = `git ls-files -z`.split "\x0"

  gem.required_ruby_version = "~> 3.0"

  gem.add_dependency "rmagick", "~> 5.1"
  gem.add_dependency "optimist", "~> 3.0"
end
