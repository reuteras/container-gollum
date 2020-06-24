# container-gollum

![Linter](https://github.com/reuteras/container-gollum/workflows/Linter/badge.svg)

My container for [gollum](https://github.com/gollum/gollum) to view GitHub wikis offline.

## Usage

My alias to use this container:

    gollum='echo "Site available at http://localhost:4567"; docker run --rm -v $(pwd):/wiki -p 4567:8080 reuteras/gollum'
