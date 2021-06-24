import config  from '../config'

export default class UserService {
    async getAll(){
        const res = await fetch(config.API_URL)
        return await res.json()
    }
}