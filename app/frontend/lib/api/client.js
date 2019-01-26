import axios from 'axios'
import Rails from 'rails-ujs'
import { decamelizeKeys } from 'humps'
import { isPlainObject } from 'lodash-es'

const client = axios.create()
client.defaults.headers = {
  'X-Requested-With': 'XMLHttpRequest',
  'X-CSRF-TOKEN': Rails.csrfToken(),
}

client.interceptors.request.use(({ data, ...config }) => ({
  ...config,
  // NOTE: FormDataは変換しない
  data: isPlainObject(data) ? decamelizeKeys(data) : data,
}), error => Promise.reject(error))

export default client
