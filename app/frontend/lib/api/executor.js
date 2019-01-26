import client from './client'

const create = async (params) => {
  const { data } = await client.post('/executor', params)
    .catch((error) => {
      return error.response
    })
  return data
}

/* eslint-disable-next-line import/prefer-default-export */
export { create }
