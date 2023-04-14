<template>
  <ul style="display: flex; list-style: none" class="album_tab">
    <li v-for="album in albums" :key="album.id" style="margin-left: 2rem">
      <router-link
        class="router-link"
        :to="{ name: 'album', params: { id: album.id } }"
        target="_blank"
      >
        <left v-if="album">
          <template v-slot:img>
            <div class="img-cover">
              <v-img :src="album.cover" class="img" aspect-ratio="1">
                <template v-slot:placeholder>
                  <div class="fixed-area__image-skeleton">
                    <content-placeholders :rounded="true">
                      <content-placeholders-img />
                    </content-placeholders>
                  </div>
                </template>
              </v-img>
            </div>
          </template>
          <template v-slot:infos>
            <div class="info-wrapper">
              <div class="title">
                <div class="info-badge">{{ $t("Album") }}</div>
                <div class="title__title">
                  <div class="align-center justify-between">
                    <div class="title">
                      {{ album.title }}
                    </div>
                    <div class="product-btn">
                      <product-btn :item="album"></product-btn>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </template>
        </left>
      </router-link>
    </li>
  </ul>
</template>

<script>
import ProductBtn from "../../../elements/other/ProductBtn.vue";
export default {
  metaInfo() {},
  created() {
      axios
        .get("/api/albumartist/"+this.$route.params.id)
        .then((res) => (this.albums = res.data))
        .catch((e) => (this.errorStatus = e.response.status));
  },
  data() {
    return {
      albums: {},
      errorStatus: null,
    };
  },
  components: {
    ProductBtn,
  },

  methods: {
    
    likeAlbum(album) {
      console.log(album);
      if (!album.isLiked) {
        this.$store
          .dispatch("like", {
            type: "album",
            id: album.id,
            origin: album.origin,
          })
          .catch(() => {});
      } else {
        this.$store
          .dispatch("dislike", {
            type: "album",
            id: album.id,
            origin: album.origin,
          })
          .catch(() => {});
      }
    },
  },
};
</script>

<style>
@media screen and (max-width: 600px) {
  .album_tab {
    flex-direction: column;
    justify-content: center;
    flex-grow: 2rem;
    flex-wrap: wrap;
    flex-basis: 10%;
  }
}
</style>
