`/** @jsx React.DOM */`
ListItem = require("./ListItem.coffee")

ListContainer = React.createClass
  render: () ->
    listItems = @props.data.map (val) ->
      `<ListItem name={val} />`

    `(
      <ul className='todo-list-container'>
        { listItems }
      </ul>
    )`

module.exports = ListContainer
