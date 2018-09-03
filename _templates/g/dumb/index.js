const defaults = require('../defaults')

module.exports = {
  params: ({args}) => Object.assign(args, defaults)
}
