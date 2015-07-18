# Original from https://github.com/Alchiadus/base16-syntax/blob/master/lib/base16.coffee

fs = require 'fs'
path = require 'path'
{CompositeDisposable} = require 'atom'

class Duotone

  config: require('./duotone-settings').config

  activate: ->
    @disposables = new CompositeDisposable
    @packageName = require('../package.json').name
    @disposables.add atom.config.observe "#{@packageName}.scheme", => @enableConfigTheme()

  deactivate: ->
    @disposables.dispose()

  enableConfigTheme: ->
    scheme = atom.config.get "#{@packageName}.scheme"
    @enableTheme scheme

  enableTheme: (scheme) ->
    # No need to enable the theme if it is already active.
    return if @isActiveTheme scheme
    try
      # Try to enable the requested theme.
      fs.writeFileSync @getSyntaxVariablesPath(), @getSyntaxVariablesContent(scheme)
      @activeTheme?.dispose()
      activePackages = atom.packages.getActivePackages()
      if activePackages.length is 0
        # No packages have been activated yet. Only reload own stylesheets.
        @activeTheme = @applyStylesheet @getIndexStylesheetPath()
      else
        # Reload the stylesheets of all active packages.
        @activeTheme = null
        activePackage.reloadStylesheets() for activePackage in activePackages
      @activeScheme = scheme
    catch
      # If unsuccessfull enable the default theme.
      @enableDefaultTheme()

  isActiveTheme: (scheme) ->
    scheme is @activeScheme

  applyStylesheet: (sourcePath, preliminaryContent) ->
    stylesheetContent = fs.readFileSync sourcePath, 'utf8'
    source = atom.themes.lessCache.cssForFile sourcePath, [preliminaryContent, stylesheetContent].join '\n'
    atom.styles.addStyleSheet source, sourcePath: sourcePath, priority: 1, context: 'atom-text-editor'

  getIndexStylesheetPath: ->
    path.join __dirname, "..", "index.less"

  getSyntaxVariablesPath: ->
    path.join __dirname, "..", "styles", "hue.less"

  getSyntaxVariablesContent: (scheme) ->
    """
    @duotone-scheme: '#{@getNormalizedName scheme}';
    @import 'schemes/@{duotone-scheme}';

    """

  getNormalizedName: (name) ->
    "#{name}"
      .replace ' ', '-'
      .replace /\b\w/g, (character) -> character.toLowerCase()

  enableDefaultTheme: ->
    scheme = atom.config.getDefault "#{@packageName}.scheme"
    @setThemeConfig scheme

  setThemeConfig: (scheme) ->
    atom.config.set "#{@packageName}.scheme", scheme

  isConfigTheme: (scheme) ->
    configScheme = atom.config.get "#{@packageName}.scheme"
    scheme is configScheme

module.exports = new Duotone
