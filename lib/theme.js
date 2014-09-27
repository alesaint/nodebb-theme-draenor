"use strict";

var Theme = {},
    app;



Theme.defineWidgetAreas = function(areas, callback) {
    areas = areas.concat([
        {
            'name': 'MOTD',
            'template': 'home.tpl',
            'location': 'motd'
        },
        {
            'name': 'Homepage News',
            'template': 'news-layout.tpl',
            'location': 'newsLayout'
        },
        {
            'name': 'Homepage Sidebar',
            'template': 'home.tpl',
            'location': 'sidebar'
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

Theme.init = function(express, middleware, controllers) {
    app = express;


    app.get('/', middleware.buildHeader,  function(req, res, next) {
        res.render("news-layout");
        // controllers.categories.home-news.apply(controllers.categories.home-news, arguments);

    });

    app.get('/forum', middleware.buildHeader,  function(req, res, next) {
        controllers.home.apply(controllers.home, arguments);

    });

};

module.exports = Theme;
