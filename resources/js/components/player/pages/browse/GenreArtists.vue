<template>
    <div class="browse-genreartists-container" v-if="genreartists">
        <div class="genreartists">
            <genreartist v-for="genreartist in genreartists" :key="genreartist.id" :genreartist="genreartist"></genreartist>
        </div>
    </div>
    <page-loading v-else />
</template>
<script>
export default {
    async created() {
        const res = await axios.get(`/api/genres`);
        this.genreartists = res.data;
    },
    data() {
        return {
            genreartists: null
        };
    }
};
</script>
<style  lang="scss" scoped>
    .genreartists {
        display: flex;
        flex-wrap: wrap;
    }
</style>