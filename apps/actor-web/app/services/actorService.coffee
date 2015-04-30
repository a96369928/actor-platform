class ActorService
  messenger: null
  currentPeer: null
  # isReady: false
  isLoggedIn: false

  constructor: (@$rootScope, @$sessionStorage) ->
    console.log '[AW]ActorService constructor'
    window.jsAppLoaded = =>
      @initActor()
      console.log '[AW]ActorService $broadcast: actorReady'
      @$rootScope.$broadcast 'actorReady'

  initActor: ->
    console.log '[AW]ActorService initActor'
    @messenger = new actor.ActorApp
    # @isReady = true
    @isLoggedIn = @messenger.isLoggedIn()
    # console.log '[AW]ActorService initActor: @isReady', @isReady
    console.log '[AW]ActorService initActor: @isLoggedIn:', @isLoggedIn
    @setLoggedIn() if @isLoggedIn
    # @uid = @messenger.getUid()
    # console.log '[AW]ActorService initActor: @uid:', @uid


  checkAccess: (event, toState, toParams, fromState, fromParams) ->
    console.log '[AW]ActorService checkAccess'
    if toState.data != undefined
      if toState.data.noLogin != undefined && toState.data.noLogin
        console.log '[AW]ActorService checkAccess: before login'
        return
    else
      if @$sessionStorage.isLoggedIn
        console.log '[AW]ActorService checkAccess: authenticated'
        @$rootScope.isLoggedIn = @$sessionStorage.isLoggedIn
      else
        console.log '[AW]ActorService checkAccess: redirect to login'
        event.preventDefault()
        @$rootScope.$state.go('login')

  setLoggedIn: () =>
    console.log '[AW]ActorService setLoggedIn'
    @isLoggedIn = true
    @$rootScope.isLoggedIn = true
    @$sessionStorage.isLoggedIn = true
    @$rootScope.$state.go 'home'
    @$rootScope.$broadcast 'actorLoggedIn'

  setLoggedOut: () =>
    console.log '[AW]ActorService setLoggedOut'
    @isLoggedIn = false
    @$rootScope.isLoggedIn = false
    @$sessionStorage.isLoggedIn = false
    @$rootScope.$state.go 'login'
    @$rootScope.$broadcast 'actorLoggedOut'

  requestSms: (phone) ->
    console.log '[AW]ActorService requestSms'
    @messenger.requestSms phone.toString(), (state) ->
      console.log '[AW]ActorService requestSms: state:', state
    , (tag, message, canTryAgain, state) ->
      console.log '[AW]ActorService requestSms: error'

  sendCode: (code) ->
    console.log '[AW]ActorService sendCode'
    @messenger.sendCode code, (state) =>
      console.log '[AW]ActorService sendCode: state:', state
      @setLoggedIn() if state == 'logged_in'
    , (tag, message, canTryAgain, state) ->
      console.log '[AW]ActorService sendCode: error'


  bindDialogs: (callback) ->
    console.log '[AW]ActorService getDialogs'
    @messenger.bindDialogs (items) ->
      console.log '[AW]ActorService getDialogs: items', items
      callback items

  closeConversation: (peer) ->
    console.log '[AW]ActorService closeConversation'
    console.log '[AW]ActorService closeConversation: peer:', peer
    @messenger.onConversationClosed peer
    @$rootScope.$broadcast 'closeConversation', peer

  openConversation: (peer) ->
    console.log '[AW]ActorService openConversation'
    console.log '[AW]ActorService openConversation: peer:', peer
    @setCurrentPeer peer
    @messenger.onConversationOpen peer
    @$rootScope.$broadcast 'openConversation', peer

  bindChat: (peer, callback) ->
    console.log '[AW]ActorService bindChat'
    console.log '[AW]ActorService bindChat: peer:', peer
    @messenger.bindChat peer, callback

  setCurrentPeer: (peer) ->
    console.log '[AW]ActorService setCurrentPeer'
    console.log '[AW]ActorService setCurrentPeer: peer:', peer
    @currentPeer = peer

  onTyping: ->
    console.log '[AW]ActorService onTyping'
    @messenger.onTyping @currentPeer

  sendMessage: (peer, message) ->
    console.log '[AW]ActorService sendMessage'
    console.log '[AW]ActorService sendMessage: message:', message
    console.log '[AW]ActorService sendMessage: peer:', peer
    @messenger.sendMessage peer, message


ActorService.$inject = ['$rootScope', '$sessionStorage']

angular
  .module 'actorWeb'
  .service 'actorService', ActorService