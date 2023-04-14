<template>
    <div class="artist-wrapper">
        <div class="title">
            
        </div>
        <div class="artists-container">
            <artist
                v-for="(artist, i) in artists"
                :key="artist ? artist.id : i"
                :artist="artist"
                class="artist"
            />
            <empty-page
                v-if="artists && !artists.length"
                img="peep-41.png"
                :headline="$t('No artists!')"
                :sub="$t('You did not follow any artist yet!')"
            />
        </div>
    </div>
</template>
<script>

export default {
    data() {
        return {
            artists: []
        };
    },
    created() {
        this.fetchFollowedArtists();
    },
    methods: {
        fetchFollowedArtists() {
            axios.get("/api/artist/all").then((res) => {
                this.artists = res.data;
            });
        }
    }
};
</script>
<style lang="scss" scoped>
.artists-container {
    display: flex;
    flex-wrap: wrap;
    .artist {
        flex-basis: 20%;
        min-width: 120px;
        .name {
            text-align: center;
        }
    }
}
</style>
