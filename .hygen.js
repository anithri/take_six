const sourcePaths = {
  components: 'site/javascript/components/',
  containers: 'site/javascript/containers/',
  models: 'site/javascript/models/',
}

const extRegex = /^\./

const pathTo = (source, ...parts) => {
  if (parts.slice(-1)[0].match(extRegex)) {
    ext = parts.pop()
    parts[parts.length - 1] = parts[parts.length - 1] + ext
  }
  return sourcePaths[source] + parts.join('/')
}

module.exports = {
  helpers: {
    src: pathTo,

  }
}
