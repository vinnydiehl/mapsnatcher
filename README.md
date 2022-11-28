# `mapsnatcher`

`mapsnatcher` is a bot to automatically download and splice together tiles from
QGIS maps. This simple system uses a URL such as
`http://mapwebsite.com/z/x/y.png`, where `z` is the zoom level, and `x` and `y`
are the coordinates of the tile.

You can use a tool such as
[ChromeCacheView](https://www.nirsoft.net/utils/chrome_cache_view.html) to find
these URLs easily.

## Usage

Usage is as follows:

```mapsnatcher "http://mapwebsite.com/0/XXX/YYY.png"```

Place `XXX` and `YYY` (case-insensitive) where the respective coordinate
numbers would be in the URL. You will then be prompted to enter the X and Y
boundaries that you would like to capture.

```mapsnatcher -b "http://mapwebsite.com/0/XXX/YYY.png"```

If you are unsure of the boundaries and would like to capture the entire map,
add the `-b` argument and you will only need to enter one valid coordinate;
`mapsnatcher` will do the rest.
