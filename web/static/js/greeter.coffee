Greet =
  greet: -> console.log("Kevdog for real!")

Bye =
  greet: -> console.log("Bye!")

module.exports =
  Greet: Greet
  Bye: Bye
