---
to: <%= h.src('containers', Name, '.js') %>
---
import PropTypes from 'prop-types'
import React from 'react'

class <%= Name %>Container extends React.Component {
  state = {
    enabled: false // change this to something else
  }

  render() {
    const {className, display: <%= Name %>Display} = this.props
    const {enabled} = this.state // change this too
    return (
      <<%= Name %>Display className={className} />
    )
  }
)

<%= Name %>Container.propTypes = {
  className: PropTypes.string,
  display: PropTypes.func.isRequired,
}

export default <%= Name %>Container
