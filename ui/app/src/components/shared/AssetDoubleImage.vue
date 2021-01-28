<script lang="ts">
import { defineComponent } from "vue";

export default defineComponent({
  props: [
    "fromTokenImage",
    "toTokenImage",
    "toBackgroundStyle",
    "fromBackgroundStyle",
  ],
});
</script>

<template>
  <div class="image">
    <img
      v-if="fromTokenImage"
      width="22"
      height="22"
      :src="fromTokenImage"
      class="info-img"
    />
    <div class="placeholder" :style="fromBackgroundStyle" v-else></div>
    <img
      v-if="toTokenImage"
      width="22"
      height="22"
      :src="toTokenImage"
      class="info-img"
    />
    <div class="placeholder" :style="toBackgroundStyle" v-else></div>
  </div>
</template>

<style lang="scss" scoped>
.image {
  height: 22px;

  & > * {
    border-radius: 16px;

    &:nth-child(2) {
      position: relative;
      left: -6px;
    }
  }
}
.placeholder {
  display: inline-block;
  background: #aaa;
  box-sizing: border-box;
  border-radius: 16px;
  height: 22px;
  width: 22px;
  text-align: center;
}
</style>