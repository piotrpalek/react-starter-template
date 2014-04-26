`/** @jsx React.DOM */`

ListItem = React.createClass
  render: () ->
    `(
      <li className='todo-list-item'>
        { this.props.name }
      </li>
    )`

module.exports = ListItem
