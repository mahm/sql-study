<template>
  <a class="navbar-item">
    <div @click="openModal">
      <span class="icon">
        <i class="fa fa-question"></i>
      </span>
      <span>
        このサイトは？
      </span>
    </div>
    <b-modal :active.sync="isModalActive" :width="640">
      <article class="message">
        <div class="message-header">
          <p>このサイトは？</p>
        </div>
        <div class="message-body">
          SQL練習問題の動作確認用のサイトです。同じヘッダメニューの「スキーマ」から、利用できるテーブルの情報を参照することができます。Let's enjoy!
        </div>
      </article>
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
