chroma = require 'chroma-js'

root = document.documentElement
uno = ''
duo = ''

module.exports =
  activate: (state) ->

    # Change Preset
    atom.config.observe 'duotone-dark-syntax.preset', (newValue) ->
      root.classList.remove('theme-duotone-dark-syntax--custom-colors')
      switch newValue
        when "Dark Sky"
          uno = 'hsl(250, 58%, 72%)'
          duo = 'hsl( 30, 99%, 78%)'
        when "Dark Sea"
          uno = 'hsl(212, 48%, 60%)'
          duo = 'hsl(160, 99%, 70%)'
        when "Dark Space"
          uno = 'hsl(240, 66%, 77%)'
          duo = 'hsl( 20, 99%, 66%)'
        when "Dark Forest"
          uno = 'hsl(120, 28%, 70%)'
          duo = 'hsl( 70, 99%, 76%)'
        when "Dark Earth"
          uno = 'hsl(24, 40%, 60%)'
          duo = 'hsl(42, 99%, 70%)'
        when "Custom"
          root.classList.add('theme-duotone-dark-syntax--custom-colors')
          uno = atom.config.get('duotone-dark-syntax.unoColor').toHexString()
          duo = atom.config.get('duotone-dark-syntax.duoColor').toHexString()
      setColors()

    # Change Uno
    atom.config.onDidChange 'duotone-dark-syntax.unoColor', ({newValue, oldValue}) ->
      uno = newValue.toHexString()
      setColors()

    # Change Duo
    atom.config.onDidChange 'duotone-dark-syntax.duoColor', ({newValue, oldValue}) ->
      duo = newValue.toHexString()
      setColors()

  deactivate: ->
    root.classList.remove('theme-duotone-dark-syntax--custom-colors')
    unsetColors()

# Apply Colors -----------------------
setColors = ->
  unsetColors() # prevents adding endless properties

  # Color limits
  _high = chroma.mix('hsl(0,0%,100%)', uno, 0.5);
  _mid  = uno
  _low  = chroma.mix('hsl(0,0%,25%)', uno, 0.25);

  # Color scales
  _scaleUno = chroma.scale([ _high, _mid, _low]).colors(5)
  _scaleDuo = chroma.scale([ duo, _low]).padding([0, 0.33]).colors(3)

  root.style.setProperty('--uno-1', _scaleUno[0])
  root.style.setProperty('--uno-2', _scaleUno[1])
  root.style.setProperty('--uno-3', _scaleUno[2])
  root.style.setProperty('--uno-4', _scaleUno[3])
  root.style.setProperty('--uno-5', _scaleUno[4])

  root.style.setProperty('--duo-1', _scaleDuo[0])
  root.style.setProperty('--duo-2', _scaleDuo[1])
  root.style.setProperty('--duo-3', _scaleDuo[2])

  root.style.setProperty('--accent', duo)


# Unset Colors -----------------------
unsetColors = ->
  root.style.removeProperty('--uno-1')
  root.style.removeProperty('--uno-2')
  root.style.removeProperty('--uno-3')
  root.style.removeProperty('--uno-4')
  root.style.removeProperty('--uno-5')

  root.style.removeProperty('--duo-1')
  root.style.removeProperty('--duo-2')
  root.style.removeProperty('--duo-3')

  root.style.removeProperty('--accent')
