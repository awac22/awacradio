<template>
    <v-card class="page" v-if="!isLoading">
        <v-card-title>
            <div class="page__title">
                <v-icon color="primary" x-large>$vuetify.icons.magnify</v-icon>
                {{ $t("Search") }}
            </div>
            <div class="page__options">
                <v-btn
                    small
                    class="success"
                    @click="save"
                    :disabled="isLoadingForButton"
                    :loading="isLoadingForButton"
                    >{{ $t("Save") }}
                    <template v-slot:loader>
                        <span class="custom-loader">
                            <v-icon light>$vuetify.icons.cached</v-icon>
                        </span>
                    </template>
                </v-btn>
            </div>
        </v-card-title>
        <v-container fluid>
            <v-row>
                <v-col cols="12">
                    <v-select
                        :items="searchOptions"
                        item-text="text"
                        item-value="value"
                        :label="$t('Search Method')"
                        v-model="settings.searchMethod"
                        outlined
                        :messages="
                            $t(
                                'Select the search method which should be used by the system.'
                            )
                        "
                    ></v-select>
                </v-col>
                <v-col cols="12">
                    <template v-if="settings.searchMethod === 'algolia'">
                        <v-row>
                            <v-col cols="6">
                                <v-text-field
                                    dense
                                    hide-details=""
                                    outlined
                                    v-model="settings.algoliaAppID"
                                    label="Algolia App ID"
                                ></v-text-field
                            ></v-col>
                            <v-col cols="6">
                                <v-text-field
                                    dense
                                    hide-details=""
                                    outlined
                                    v-model="settings.algoliaSecret"
                                    label="Algolia Secret"
                                ></v-text-field
                            ></v-col>
                        </v-row>
                    </template>
                </v-col>
                <v-col cols="12">
                    <v-alert
                        border="top"
                        colored-border
                        type="info"
                        class="mt-5"
                        elevation="2"
                    >
                        <v-card flat elevation="0">
                            <v-card-title>{{ $t("Import Data") }}</v-card-title>
                            <v-card-text>
                                <div>
                                    {{
                                        $t(
                                            "If the search method is changed, the database records must be indexed so that the search functionality works properly. Importing the existing data might take some time, and it depends on how many records there are and the server speed."
                                        )
                                    }}
                                </div>

                                <v-card-actions>
                                    <v-sheet width="100px">
                                        <v-select
                                            :items="searchImportOptions"
                                            v-model="searchImportOption"
                                            outlined
                                            hide-details
                                            dense
                                            :disabled="importDBDataLoading"
                                            :loading="importDBDataLoading"
                                            :messages="
                                                $t(
                                                    'Select the search method which should be used by the system.'
                                                )
                                            "
                                        ></v-select>
                                    </v-sheet>

                                    <v-btn
                                        class="success ml-3"
                                        @click="importDBData"
                                        :disabled="importDBDataLoading"
                                        :loading="importDBDataLoading"
                                        >{{ $t("Import") }}</v-btn
                                    >
                                </v-card-actions>
                            </v-card-text>
                        </v-card>
                    </v-alert>
                </v-col>
            </v-row>
        </v-container>
    </v-card>
    <page-loading v-else />
</template>
<script>
export default {
    props: ["settings", "isLoading"],
    data() {
        return {
            isLoadingForButton: false,
            searchImportOption: "All",
            importDBDataLoading: false,
            searchImportOptions: [
                "All",
                "Song",
                "Artist",
                "Album",
                "User",
                "Playlist",
                "Podcast",
                "Genre",
                "RadioStation",
            ],
            searchOptions: [
                {
                    text: "MySQL",
                    value: "mysql"
                },
                {
                    text: "TNTSearch",
                    value: "tntsearch"
                },
                {
                    text: "Algolia",
                    value: "algolia"
                }
            ],
        };
    },
    methods: {
        save() {
            if (
                this.settings.searchMethod === "algolia" &&
                (!this.settings.algoliaAppID || !this.settings.algoliaSecret)
            ) {
                this.$notify({
                    group: "foo",
                    type: "error",
                    title: this.$t("Oops!"),
                    text: this.$t("You need to add your Algolia credentials"),
                });
                return;
            }
            this.isLoadingForButton = true;
            const formData = new FormData();

            formData.append("searchMethod", this.settings.searchMethod);

            if (this.settings.searchMethod === "algolia") {
                formData.append("algoliaAppID", this.settings.algoliaAppID);
                formData.append("algoliaSecret", this.settings.algoliaSecret);
            }

            axios
                .post("/api/admin/save-search", formData)
                .then(() => {
                    this.$notify({
                        group: "foo",
                        type: "success",
                        title: this.$t("Updated"),
                        text:
                            this.$t("Settings") +
                            " " +
                            this.$t("updated successfully."),
                    });
                })
                .finally(() => {
                    this.isLoadingForButton = false;
                });
        },
        importDBData() {
            this.importDBDataLoading = true;

            axios
                .post("/api/admin/import-db-data", {
                    type: this.searchImportOption,
                })
                .then(() => {
                    this.$notify({
                        group: "foo",
                        type: "success",
                        title: this.$t("Imported"),
                        text:
                            this.$t("Data") +
                            " " +
                            this.$t("imported successfully."),
                    });
                })
                .finally(() => {
                    this.importDBDataLoading = false;
                });
        },
    },
};
</script>
