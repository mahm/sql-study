<template>
  <a class="navbar-item">
    <div @click="openModal">
      <span class="icon">
        <i class="fa fa-comments"></i>
      </span>
      <span>
        ER図
      </span>
    </div>
    <b-modal :active.sync="isModalActive" :width="640">
      <img class="image" src="~/images/er.png" />
    </b-modal>
  </a>
</template>

<script>
export default {
  data() {
    return {
      isModalActive: false,
    }
  },
  methods: {
    openModal() {
      this.isModalActive = true
    },
  },
}
</script>

<style lang="sass" scoped>
.image
  max-height: 100%
</style>
