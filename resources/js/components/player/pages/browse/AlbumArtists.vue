<template>
    <div class="albumartist-wrapper">
        <div class="title">
            
        </div>
        <div class="albumartists-container">
            <albumartist
                v-for="(albumartist, i) in albumartists"
                :key="albumartist ? albumartist.id : i"
                :albumartist="albumartist"
                class="albumartist"
            />
            <empty-page
                v-if="albumartists && !albumartists.length"
                img="peep-41.png"
                :headline="$t('No albumartists!')"
                :sub="$t('You did not follow any artist yet!')"
            />
        </div>
    </div>
</template>
<script>

export default {
    data() {
        return {
            albumartists: []
        };
    },
    created() {
        this.fetchFollowedalbumArtists();
    },
    methods: {
        fetchFollowedalbumArtists() {
            axios.get("/api/artist/all").then((res) => {
                this.albumartists = res.data;
            });
        }
    }
};
</script>
<style lang="scss" scoped>
.albumartists-container {
    display: flex;
    flex-wrap: wrap;
    .albumartist {
        flex-basis: 20%;
        min-width: 120px;
        .name {
            text-align: center;
        }
    }
}
</style>
