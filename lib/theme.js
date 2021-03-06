(function(module) {
    "use strict";

    var Theme = {};
    Theme.defineWidgetAreas = function(areas, callback) {
        areas = areas.concat([
            {
                'name': 'MOTD',
                'template': 'home.tpl',
                'location': 'motd'
            },
            {
                'name': 'Homepage News',
                'template': 'actu.tpl',
                'location': 'newsLayout'
            },
            {
                'name': 'Homepage Video',
                'template': 'videos.tpl',
                'location': 'videosLayout'
            },
            {
                'name': 'Category Sidebar',
                'template': 'category.tpl',
                'location': 'sidebar'
            },

            {
                'name': 'Topic Footer',
                'template': 'topic.tpl',
                'location': 'footer'
            }
        ]);

        callback(null, areas);
    };


    module.exports = Theme;

}(module));




