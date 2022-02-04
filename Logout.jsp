<<<<<<< HEAD
This is Log out page

Modified page of Logout Page
=======
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
>>>>>>> e914fea59a5cf9e03991f7f29ecb2315151db661
