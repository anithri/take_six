import PropTypes from 'prop-types'

export const idShape = PropTypes.shape({
  id: PropTypes.string.isRequired,
})

export const namedShape = PropTypes.shape({
  id: PropTypes.string.isRequired,
  name: PropTypes.string.isRequired,
})

export const themedShape = PropTypes.shape({
  id: PropTypes.string.isRequired,
  name: PropTypes.string.isRequired,
  theme: PropTypes.string.isRequired,
})
