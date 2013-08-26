Ext.setup({
    icon: 'icon.png',
    glossOnIcon: false,
    tabletStartupScreen: 'tablet_startup.png',
    phoneStartupScreen: 'phone_startup.png',
    onReady: function() {
        var panel = new Ext.Panel({
            fullscreen: true,
            html: 'Hello World'
        });
        panel.show();
    }
});