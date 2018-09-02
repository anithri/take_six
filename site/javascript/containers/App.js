import 'css/site.css'
import ApolloClient from 'apollo-boost'
import {ApolloProvider} from 'react-apollo'
import Helmet from './Helmet'
import Pages from 'pages'
import React from 'react'

const client = new ApolloClient({uri: 'http://localhost:3000/graphql'})

class App extends React.Component {
  render() {
    return (
      <ApolloProvider client={client}>
        <Pages className="max">
          <Helmet />
        </Pages>
      </ApolloProvider>
    )
  }
}

export default App
