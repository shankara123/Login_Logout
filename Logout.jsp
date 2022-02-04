// user logout
 logout({
  commit,
  state
 }) {
  return new Promise((resolve, reject) => {
   logout(state.token).then(() => {
    commit('SET_TOKEN', '')
    commit('SET_ROUTES', '')
    removeToken('1')
    resetRouter()
    resolve()
   }).catch(error => {
    reject(error)
   })
  })
 }
