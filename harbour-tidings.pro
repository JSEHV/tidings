# The name of your app.
# NOTICE: name defined in TARGET has a corresponding QML filename.
#         If name defined in TARGET is changed, following needs to be
#         done to match new name:
#         - corresponding QML filename must be changed
#         - desktop icon filename must be changed
#         - desktop filename must be changed
#         - icon definition filename in desktop file must be changed
TARGET = harbour-tidings

CONFIG += sailfishapp
QT += xml

SOURCES += \
    src/harbour-tidings.cpp \
    src/feedloader.cpp \
    src/newsblendmodel.cpp

OTHER_FILES += qml/harbour-tidings.qml \
    qml/cover/CoverPage.qml \
    rpm/harbour-tidings.spec \
    rpm/harbour-tidings.yaml \
    qml/pages/FeedsPage.qml \
    qml/pages/RssModel.qml \
    qml/pages/SourcesPage.qml \
    qml/pages/AtomModel.qml \
    qml/pages/OpmlModel.qml \
    qml/pages/ViewPage.qml \
    qml/pages/WebPage.qml \
    qml/pages/FavIcon.qml \
    qml/pages/favicon.js \
    qml/pages/database.js \
    qml/pages/SourcesModel.qml \
    qml/pages/SourceEditDialog.qml \
    qml/pages/NewsBlendModel.qml \
    qml/pages/AboutPage.qml \
    qml/pages/LicensePage.qml \
    qml/pages/license.js \
    qml/tidings.png \
    harbour-tidings.desktop \
    qml/pages/FancyScroller.qml \
    qml/pages/Notification.qml \
    qml/pages/RdfModel.qml \
    qml/pages/RescalingRichText.qml \
    qml/pages/ExternalLinkDialog.qml \
    qml/pages/FeedSorter.qml \
    qml/pages/SortSelectorPage.qml \
    qml/cover/overlay.png \
    qml/pages/ConfigValue.qml \
    qml/pages/BackgroundWorker.qml \
    qml/pages/FeedStats.qml

TRANSLATIONS = l10n/en_US.ts \
            l10n/ru_RU.ts
lupdate_only{
SOURCES = \
          qml/pages/*.qml \
          qml/cover/*.qml
}

RESOURCES += \
    resources.qrc

HEADERS += \
    src/feedloader.h \
    src/appversion.h \
    src/json.h \
    src/newsblendmodel.h
