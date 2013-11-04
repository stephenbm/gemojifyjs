class Emojify
  constructor: ->
    @normal_tags = /:[-\w]+:/g
    @smileys = [
            [/:-*\)/g, 'blush'],
            [/:-*o/gi, 'scream'],
            [/(:|;)-*]/g, 'smirk'],
            [/(:|;)-*d/gi, 'smiley'],
            [/xd/gi, 'stuck_out_tongue_closed_eyes'],
            [/:-*p/gi, 'stuck_out_tongue_winking_eye'],
            [/:-*(\[|@)/g, 'rage'],
            [/:-*\(/g, 'disappointed'],
            [/:('|’)-*\(/g, 'emojify sob'],
            [/:-*\*/g, 'kissing_heart'],
            [/;-*\)/g, 'wink'],
            [/:-*\//g, 'pensive'],
            [/:-*s/gi, 'confounded'],
            [/:-*\|/g, 'flushed'],
            [/:-*\$/g, 'relaxed'],
            [/:-*x/gi, 'mask'],
            [/<3/g, 'heart'],
            [/<\/3/g, 'broken_heart'],
            [/:\+1:/g, 'thumbsup'],
            [/:-1:/g, 'thumsdown']
        ]

  markup: (text) ->
    for match in text.match(@normal_tags) or []
      text = text.replace(match, "<span class='emojify #{match.substring(1, match.length-1).toLowerCase()}' title='#{match}'></span>")
    for smiley in @smileys
      text = text.replace(smiley[0], "<span class='emojify #{smiley[1]}' title='#{match}'></span>")
    return text

window.emojify = new Emojify
