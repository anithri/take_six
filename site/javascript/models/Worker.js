import PropTypes from 'prop-types'

export const WorkerShape = PropTypes.shape({
  id: PropTypes.string.isRequired,
  name: PropTypes.string.isRequired,
  theme: PropTypes.string.isRequired,
  count: PropTypes.number,
})
