# `mapsnatcher`

`mapsnatcher` is a bot to automatically download and splice together tiles from
QGIS maps. This simple system uses a URL such as
`http://mapwebsite.com/z/x/y.png`, where `z` is the zoom level, and `x` and `y`
are the coordinates of the tile.

You can use a tool such as
[ChromeCacheView](https://www.nirsoft.net/utils/chrome_cache_view.html) to find
these URLs easily.

## Installation

You will need ImageMagick and its development headers installed in order to
build the dependencies. For Ubuntu these are:

```sudo apt-get install imagemagick libmagickwand-dev```

Once set up, install through RubyGems:

```gem install mapsnatcher```

To process larger maps, you may need to comment out or modify the resource
policies in `/etc/ImageMagick-6/policy.xml`.

## Usage

Usage is as follows:

```mapsnatcher http://mapwebsite.com/0/xxx/yyy.png```

Place `XXX` and `YYY` (case-insensitive) where the respective coordinate
numbers would be in the URL. You will then be prompted to enter the X and Y
boundaries that you would like to capture.

```mapsnatcher -b http://mapwebsite.com/0/xxx/yyy.png```

If you are unsure of the boundaries and would like to capture the entire map,
add the `-b` argument and you will only need to enter one valid coordinate;
`mapsnatcher` will do the rest.

If you would like to save the tiles, add the `-s` argument.

Coordinates can be passed into `mapsnatcher` as arguments:

```mapsnatcher http://mapwebsite.com/0/xxx/yyy.png -x 200-300 -y 200-250```
```mapsnatcher http://mapwebsite.com/0/xxx/yyy.png -b -x 200 -y 200```

And the output file may be specified with `-o`:

```mapsnatcher http://mapwebsite.com/0/xxx/yyy.png -o map.jpg```

If coordinates and output are not specified, you will be prompted for them.
