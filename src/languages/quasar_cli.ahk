; --------------------------------------------- 
; Quasar Framework CLI 
; ---------------------------------------------



; --------------------------------------------- 
; CREATE 
; ---------------------------------------------

; quasar create <folder_name>

::qsrn::
    Gosub, quasar_create_sub
Return

::qsrnew::
    Gosub, quasar_create_sub
Return

::qsrcreate::
    Gosub, quasar_create_sub
Return

::quasarn::
    Gosub, quasar_create_sub
Return

::quasarnew::
    Gosub, quasar_create_sub
Return

::quasarcreate::
    Gosub, quasar_create_sub
Return

quasar_create_sub:
    Sleep, 100

    InputBox, sText, Quasar New Project, Type the Folder Name,,,,,,,, .
    if ErrorLevel
        Return

    Send, quasar create %sText%
Return


; --------------------------------------------- 
; UPGRADE
; ---------------------------------------------

; # check for upgradable packages
; $ quasar upgrade

::qsru::
    Gosub, quasar_upgrade_sub
Return

::qsrupd::
    Gosub, quasar_upgrade_sub
Return

::qsrupdate::
    Gosub, quasar_upgrade_sub
Return

::quasarupd::
    Gosub, quasar_upgrade_sub
Return

::quasarupdate::
    Gosub, quasar_upgrade_sub
Return

quasar_upgrade_sub:
    Sleep, 100
    Send, quasar upgrade
Return


; --------------------------------------------- 
; UPGRADE INSTALL 
; ---------------------------------------------

; # do the actual upgrade
; $ quasar upgrade --install

::qsrui::
    Gosub, quasar_upgrade_install_sub
Return

::qsrupdatei::
    Gosub, quasar_upgrade_install_sub
Return

::quasarupdatei::
    Gosub, quasar_upgrade_install_sub
Return

::quasarui::
    Gosub, quasar_upgrade_install_sub
Return

::quasarupdateinstall::
    Gosub, quasar_upgrade_install_sub
Return

quasar_upgrade_install_sub:
    Sleep, 100
    Send, quasar upgrade --install
Return


; --------------------------------------------- 
; INFO
; ---------------------------------------------

; Info
; The Quasar CLI is equipped with a stable combination of multiple NPM
; build packages (Webpack, Vue, etc) which gets updated frequently after heavy testing.

; In order for you to see what versions of Node, NPM, Quasar CLI, 
; Quasar, Vue, Webpack, Cordova, Babel and many more, issue this command in a Quasar project folder:

; $ quasar info

::qsri::
    Gosub, quasar_info_sub
Return

::qsrinfo::
    Gosub, quasar_info_sub
Return

::quasari::
    Gosub, quasar_info_sub
Return

::quasarinfo::
    Gosub, quasar_info_sub
Return

quasar_info_sub:
    Sleep, 100
    Send, quasar info
Return


; --------------------------------------------- 
; QUASAR DEV 
; ---------------------------------------------


; Dev
; $ quasar dev -h

;   Description
;     Starts the app in development mode (hot-code reloading, error
;     reporting, etc)

;   Usage
;     $ quasar dev
;     $ quasar dev -p <port number>

;     $ quasar dev -m ssr

;     # alias for "quasar dev -m cordova -T ios"
;     $ quasar dev -m ios

;     # alias for "quasar dev -m cordova -T android"
;     $ quasar dev -m android

;     # passing extra parameters and/or options to
;     # underlying "cordova" or "electron" executables:
;     $ quasar dev -m ios -- some params --and options --here
;     $ quasar dev -m electron -- --no-sandbox --disable-setuid-sandbox

;   Options
;     --mode, -m       App mode [spa|ssr|pwa|bex|cordova|capacitor|electron] (default: spa)
;     --port, -p       A port number on which to start the application
;     --hostname, -H   A hostname to use for serving the application
;     --help, -h       Displays this message

;     Only for Cordova mode:
;     --target, -T     (required) App target
;                         [android|ios|blackberry10|browser|osx|ubuntu|webos|windows]
;     --emulator, -e   (optional) Emulator name
;                         Examples: iPhone-7, iPhone-X
;                         iPhone-X,com.apple.CoreSimulator.SimRuntime.iOS-12-2
;     --ide, -i        Open IDE (Android Studio / XCode) instead of letting Cordova
;                         booting up the emulator, in which case the "--emulator"
;                         param will have no effect

;     --devtools, -d   Open remote Vue Devtools

;     Only for Capacitor mode:
;     --target, -T     (required) App target
;                         [android|ios]



; # Developing a SPA
; $ quasar dev
; # ...or
; $ quasar dev -m spa

; # Developing for SSR
; $ quasar dev -m ssr

; # Developing a PWA
; $ quasar dev -m pwa

; # Developing a BEX for production
; $ quasar dev -m bex

; # Developing a Mobile App (through Cordova)
; $ quasar dev -m cordova -T [android|ios]
; # or the short form:
; $ quasar dev -m [android|ios]

; # Developing an Electron App
; $ quasar dev -m electron

; # passing extra parameters and/or options to
; # underlying "cordova" or "electron" executables:
; $ quasar dev -m ios -- some params --and options --here
; $ quasar dev -m electron -- --no-sandbox --disable-setuid-sandbox

::qsrd::
    Gosub, quasar_dev_sub
Return

::qsrdev::
    Gosub, quasar_dev_sub
Return

::quasard::
    Gosub, quasar_dev_sub
Return

::quasardev::
    Gosub, quasar_dev_sub
Return

quasar_dev_sub:
    Sleep, 100

    InputBox, iOption, Quasar Dev, 
(
1 - SPA          2 - Electron

3 - Android     4 - IOS 

5 - PWA           6 - SSR
)
    ,,,,,,,, 1
    if ErrorLevel
        Return

    if (iOption = 1)
    {
        sText := "spa"
    }
    if (iOption = 2)
    {
        sText := "electron"
    }
    if (iOption = 3)
    {
        sText := "android"
    }
    if (iOption = 4)
    {
        sText := "ios"
    }
    if (iOption = 5)
    {
        sText := "pwa"
    }
    if (iOption = 6)
    {
        sText := "ssr"
    }
    if (iOption = 7)
    {
        sText := "bex"
    }

    Send, quasar dev -m %sText%
    
Return


; --------------------------------------------- 
; DEV WATCH
; ---------------------------------------------

::qsrdw::
    Gosub, quasar_dev_watch_sub
Return

::qsrdevw::
    Gosub, quasar_dev_watch_sub
Return

::quasardw::
    Gosub, quasar_dev_watch_sub
Return

::quasardevwatch::
    Gosub, quasar_dev_watch_sub
Return

quasar_dev_watch_sub:

    Sleep, 100
    Send, quasar dev watch 
    
Return



; --------------------------------------------- 
; BUILD 
; ---------------------------------------------

; Build
; $ quasar build -h

;   Description
;     Builds distributables of your app.

;   Usage
;     $ quasar build
;     $ quasar build -p <port number>

;     $ quasar build -m ssr

;     # alias for "quasar build -m cordova -T ios"
;     $ quasar build -m ios

;     # alias for "quasar build -m cordova -T android"
;     $ quasar build -m android

;     # passing extra parameters and/or options to
;     # underlying "cordova" executable:
;     $ quasar build -m ios -- some params --and options --here

;   Options
;     --mode, -m      App mode [spa|ssr|pwa|bex|cordova|capacitor|electron] (default: spa)
;     --target, -T    App target
;                       - Cordova (default: all installed)
;                         [android|ios|blackberry10|browser|osx|ubuntu|webos|windows]
;                       - Capacitor
;                         [android|ios]
;                       - Electron with default "electron-packager" bundler (default: yours)
;                         [darwin|win32|linux|mas|all]
;                       - Electron with "electron-builder" bundler (default: yours)
;                         [darwin|mac|win32|win|linux|all]
;     --publish, -P   Also trigger publishing hooks (if any are specified)
;                       - Has special meaning when building with Electron mode and using
;                         electron-builder as bundler
;     --debug, -d     Build for debugging purposes
;     --skip-pkg, -s  Build only UI (skips creating Cordova/Capacitor/Electron executables)
;                       - Cordova (it only fills in /src/cordova/www folder with the UI code)
;                       - Capacitor (it only fills in /src/capacitor/www folder with the UI code)
;                       - Electron (it only creates the /dist/electron/UnPackaged folder)
;     --help, -h      Displays this message

;     ONLY for Cordova and Capacitor mode:
;     --ide, -i       Open IDE (Android Studio / XCode) instead of finalizing with a
;                     terminal/console-only build

;     ONLY for Electron mode:
;     --bundler, -b   Bundler (electron-packager or electron-builder)
;                       [packager|builder]
;     --arch, -A      App architecture (default: yours)
;                       - with default "electron-packager" bundler:
;                           [ia32|x64|armv7l|arm64|mips64el|all]
;                       - with "electron-builder" bundler:
;                           [ia32|x64|armv7l|arm64|all]

;     ONLY for electron-builder (when using "publish" parameter):
;     --publish, -P  Publish options [onTag|onTagOrDraft|always|never]
;                      - see https://www.electron.build/configuration/publish
; The Quasar CLI can pack everything together and optimize your App for production. It minifies source code, extracts vendor components, leverages browser cache and much more.

; # Build a SPA for production
; $ quasar build
; # ...or
; $ quasar build -m spa

; # Build a SSR for production
; $ quasar build -m ssr

; # Build a PWA for production
; $ quasar build -m pwa

; # Build a BEX for production
; $ quasar build -m bex

; # Build a Mobile App (through Cordova)
; $ quasar build -m cordova -T [android|ios]
; # or the short form:
; $ quasar build -m [android|ios]

; # Build an Electron App for production
; $ quasar build -m electron

; # passing extra parameters and/or options to
; # underlying "cordova" executable:
; $ quasar build -m ios -- some params --and options --here

; # Create a production build with ability to debug it
; # (has source-maps and code is NOT minified)
; $ quasar build -d [-m <mode>]


::qsrb::
    Gosub, quasar_build_sub
Return

::qsrbuild::
    Gosub, quasar_build_sub
Return

::quasarb::
    Gosub, quasar_build_sub
Return

::quasarbuild::
    Gosub, quasar_build_sub
Return

quasar_build_sub:
    Sleep, 100

    InputBox, iOption, Quasar Build, 
(
1 - SPA          2 - Electron

3 - Android     4 - IOS 

5 - PWA           6 - SSR
)
    ,,,,,,,, 1
    if ErrorLevel
        Return

    if (iOption = 1)
    {
        sText := "spa"
    }
    if (iOption = 2)
    {
        sText := "electron"
    }
    if (iOption = 3)
    {
        sText := "android"
    }
    if (iOption = 4)
    {
        sText := "ios"
    }
    if (iOption = 5)
    {
        sText := "pwa"
    }
    if (iOption = 6)
    {
        sText := "ssr"
    }
    if (iOption = 7)
    {
        sText := "bex"
    }

    Send, quasar build -m %sText%
    
Return


; --------------------------------------------- 
; CLEAN
; ---------------------------------------------

; Clean
; Cleans up all the build assets:

; $ quasar clean

::qsrcl::
    Gosub, quasar_clean_sub
Return

::qsrclean::
    Gosub, quasar_clean_sub
Return

::quasarcl::
    Gosub, quasar_clean_sub
Return

::quasarclean::
    Gosub, quasar_clean_sub
Return

quasar_clean_sub:

    Sleep, 100
    Send, quasar clean

Return


; --------------------------------------------- 
; QUASAR NEW 
; ---------------------------------------------

; New
; Generates Components, Pages, Layouts, Vuex Store.

; TIP

; This command is simply a helper in order to quickly scaffold a page/layout/component/vuex store module. You are not required to use it, but can help you when you don?t know how to start.

; $ quasar new -h

;   Description
;     Quickly scaffold a page/layout/component/store module.

;   Usage
;     $ quasar new <p|page> [-f <option>] <page_file_name>
;     $ quasar new <l|layout> [-f <option>] <layout_file_name>
;     $ quasar new <c|component> [-f <option>] <component_file_name>
;     $ quasar new <b|boot> [-f ts] <boot_name>
;     $ quasar new <s|store> [-f ts] <store_module_name>

;     # Examples:

;     # Create src/pages/MyNewPage.vue:
;     $ quasar new p MyNewPage

;     # Create src/pages/MyNewPage.vue and src/pages/OtherPage.vue:
;     $ quasar new p MyNewPage OtherPage

;     # Create src/layouts/shop/Checkout.vue
;     $ quasar new layout shop/Checkout.vue

;     # Create src/layouts/shop/Checkout.vue with TypeScript options API
;     $ quasar new layout -f ts-options shop/Checkout.vue

;     # Create a store with TypeScript support
;     $ quasar new store -f ts myStore

;   Options
;     --help, -h            Displays this message

;     --format -f <option>  (optional) Use a supported format for the template
;                           Option can be:
;                              * ts-options - TS options API
;                              * ts-composition - TS component API
;                              * ts-class - TS class style syntax
;                              * ts - use for TS boot file and store modules only



; PAGE
;-------------------

::qsrp::
    Gosub, quasar_new_page_sub
Return

::qsrpage::
    Gosub, quasar_new_page_sub
Return

::quasarp::
    Gosub, quasar_new_page_sub
Return

::quasarpage::
    Gosub, quasar_new_page_sub
Return

quasar_new_page_sub:

    Sleep, 100

    InputBox, sText, New Page, Type Page Name,,,,,,,, page_name
    if ErrorLevel
        Return

    Send, quasar new page %sText%

Return


; LAYOUT
;-------------------

::qsrl::
    Gosub, quasar_new_layout_sub
Return

::qsrlayout::
    Gosub, quasar_new_layout_sub
Return

::quasarl::
    Gosub, quasar_new_layout_sub
Return

::quasarlayout::
    Gosub, quasar_new_layout_sub
Return

quasar_new_layout_sub:

    Sleep, 100

    InputBox, sText, New Layout, Type Layout Name,,,,,,,, layout_name
    if ErrorLevel
        Return

    Send, quasar new layout %sText%

Return


; COMPONENT
;-------------------

::qsrc::
    Gosub, quasar_new_component_sub
Return

::qsrcomponent::
    Gosub, quasar_new_component_sub
Return

::quasarc::
    Gosub, quasar_new_component_sub
Return

::quasarcomponent::
    Gosub, quasar_new_component_sub
Return

quasar_new_component_sub:

    Sleep, 100

    InputBox, sText, New Layout, Type Layout Name,,,,,,,, component_name
    if ErrorLevel
        Return

    Send, quasar new component %sText%

Return


; BOOT
;-------------------

::qsrbt::
    Gosub, quasar_new_boot_sub
Return

::qsrboot::
    Gosub, quasar_new_boot_sub
Return

::quasarbt::
    Gosub, quasar_new_boot_sub
Return

::quasarboot::
    Gosub, quasar_new_boot_sub
Return

quasar_new_boot_sub:

    Sleep, 100

    InputBox, sText, New Boot, Type Boot Name,,,,,,,, boot_name
    if ErrorLevel
        Return

    Send, quasar new boot %sText%

Return


; STORE
;-------------------

::qsrs::
    Gosub, quasar_new_store_sub
Return

::qsrstore::
    Gosub, quasar_new_store_sub
Return

::quasars::
    Gosub, quasar_new_store_sub
Return

::quasarsore::
    Gosub, quasar_new_store_sub
Return

quasar_new_store_sub:

    Sleep, 100

    InputBox, sText, New Store, Type Store Name,,,,,,,, store_name
    if ErrorLevel
        Return

    Send, quasar new store %sText%

Return


; --------------------------------------------- 
; MODE 
; ---------------------------------------------

; Mode
; $ quasar mode -h

;   Description
;     Add/Remove support for PWA / Cordova / Electron modes.
;   Usage
;     $ quasar mode [add|remove pwa|ssr|cordova|electron]

;     # determine what modes are currently installed:
;     $ quasar mode

;   Options
;     --help, -h    Displays this message

; MODE
;-------------------

::qsrm::
    Gosub, quasar_mode_sub
Return

::qsrmode::
    Gosub, quasar_mode_sub
Return

::quasarm::
    Gosub, quasar_mode_sub
Return

::quasarmode::
    Gosub, quasar_mode_sub
Return

quasar_mode_sub:

    Sleep, 100
    Send, quasar mode

Return

; MODE add
;-------------------

::qsrma::
    Gosub, quasar_mode_add_sub
Return

::qsrmodea::
    Gosub, quasar_mode_add_sub
Return

::quasarma::
    Gosub, quasar_mode_add_sub
Return

::quasarmodeadd::
    Gosub, quasar_mode_add_sub
Return

quasar_mode_add_sub:

    Sleep, 100

    InputBox, iOption, Quasar Mode Add, 
(
1 - pwa
2 - ssr
3 - cordova
4 - electron
)
    ,,,,,,,, 1
    if ErrorLevel
        Return

    if (iOption = 1)
    {
        sText := "pwa"
    }
    if (iOption = 2)
    {
        sText := "ssr"
    }
    if (iOption = 3)
    {
        sText := "cordova"
    }
    if (iOption = 4)
    {
        sText := "electron"
    }

    Send, quasar mode add %sText%

Return


; MODE remove
;-------------------

::qsrmr::
    Gosub, quasar_mode_remove_sub
Return

::qsrmoder::
    Gosub, quasar_mode_remove_sub
Return

::quasarmr::
    Gosub, quasar_mode_remove_sub
Return

::quasarmoderemove::
    Gosub, quasar_mode_remove_sub
Return

quasar_mode_remove_sub:

    Sleep, 100

    InputBox, iOption, Quasar Mode Remove, 
(
1 - pwa
2 - ssr
3 - cordova
4 - electron
)
    ,,,,,,,, 1
    if ErrorLevel
        Return

    if (iOption = 1)
    {
        sText := "pwa"
    }
    if (iOption = 2)
    {
        sText := "ssr"
    }
    if (iOption = 3)
    {
        sText := "cordova"
    }
    if (iOption = 4)
    {
        sText := "electron"
    }

    Send, quasar mode remove %sText%

Return


; --------------------------------------------- 
; DESCRIBE 
; ---------------------------------------------

::qsrds::
    Gosub, quasar_describe_sub
Return

::qsrdescribe::
    Gosub, quasar_describe_sub
Return

::qsrdesc::
    Gosub, quasar_describe_sub
Return

::quasards::
    Gosub, quasar_describe_sub
Return

::quasardes::
    Gosub, quasar_describe_sub
Return

::quasardescribe::
    Gosub, quasar_describe_sub
Return

quasar_describe_sub:

    Sleep, 100

    InputBox, sText, Quasar Describe, Describes a component API for project's Quasar version being used,,,,,,,, <component/directive/plugin>
    if ErrorLevel
        Return

    Send, quasar describe %sText%

Return
