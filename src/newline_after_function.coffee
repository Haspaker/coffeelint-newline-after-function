module.exports = class NewlinesAfterFunction

  rule:
    name: 'newlines_after_function'
    value : 1
    level : 'error'
    message : 'Wrong count of newlines between a function and other code'
    description: "Checks the number of newlines between a function definition and other
    code"

  lintLine: (line, lineApi) ->

    line_spacing = lineApi.config[@rule.name].value

    return null if not line_spacing or lineApi.isLastLine()

    { lineNumber, context } = lineApi

    if lineApi.lineHasToken("->") or lineApi.lineHasToken("=>")
      for i in [1..line_spacing]
        nextLine = lineNumber + i

        if lineApi.lineHasToken(null, nextLine)
          return  { context: "Expected #{line_spacing} got #{nextLine - lineNumber - 1}" }

    return null

