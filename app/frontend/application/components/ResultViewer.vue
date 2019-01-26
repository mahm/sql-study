<template>
  <div v-if="response">
    <table class="table is-fullwidth">
      <thead>
        <th v-for="column in response['header']">
          {{ column }}
        </th>
      </thead>
      <tbody>
        <tr v-for="row in response['rows']">
          <td v-for="column in row">
            {{ column }}
          </td>
        </tr>
      </tbody>
    </table>
  </div>
</template>

<script>
export default {
  props: {
    response: {
      type: Object,
      required: false,
    },
  },
}
</script>
