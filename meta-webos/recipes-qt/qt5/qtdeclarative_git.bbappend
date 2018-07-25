# Copyright (c) 2014-2019 LG Electronics, Inc.

EXTENDPRAUTO_append = "webos38"

FILESEXTRAPATHS_prepend := "${THISDIR}/${BPN}:"

# Patches from 5.9.meta-webos.19 based on 5.9.meta-qt5.8
SRC_URI_append_class-target = " \
    file://0001-Revert-Remove-dead-code.patch \
    file://0002-LTTNG-tracing-support-in-Qt-Quick.patch \
    file://0003-Set-the-stencil-buffer-zone.patch \
    file://0004-Prevent-items-from-being-deleted-while-removing.patch \
    file://0005-Revert-Make-QQuickKeyNavigationAttached-respect-user.patch \
    file://0006-Preserve-render-loop-OpenGL-context.patch \
    file://0007-Revert-Make-SmoothedAnimation-and-SpringAnimation-sm.patch \
    file://0008-do-not-call-windowDestroyed-when-cleanup.patch \
    file://0009-Allow-to-abort-the-scene-graph-rendering-of-QML.patch \
    file://0010-Fix-incorrect-listview-footer-position-on-empty-mode.patch \
    file://0011-Correct-pixelRatio-for-glyphs.patch \
    file://0012-Check-engine-to-mark-Object-for-garbage-collection.patch \
    file://0013-Images-can-be-shared-even-if-cache-is-false.patch \
    file://0014-QQuickWindow-Add-invalidateCursorItem.patch \
    file://0015-Fix-for-possible-crash-in-QSGDefaultLayer-grab.patch \
    file://0016-QQuickTextEdit-Fix-cursor-movement-in-compose-mode.patch \
    file://0017-Fix-for-Hindi-glyph-break.patch \
    file://0018-Warn-circular-dependency-when-loading-types.patch \
    file://0019-Fix-baseUrl-returning-an-empty-url.patch \
    file://0020-Don-t-send-synthetic-hover-event-on-a-frame-update.patch \
    file://0021-Fix-crash-when-modifying-list-model-in-worker-thread.patch \
    file://0022-Add-guard-to-avoid-recursively-text-layout-call.patch \
    file://0023-QQuickItemView-Remove-redundant-refill-when-layout.patch \
    file://0024-Add-QQmlEngine-to-QQuickPixmapKey.patch \
"

# until pseudo is completely fixed
# PLAT-48507 pseudo: random package_qa failures
INSANE_SKIP_${PN}-qmlplugins += "host-user-contaminated"
INSANE_SKIP_${PN}-mkspecs += "host-user-contaminated"
INSANE_SKIP_${PN}-tools += "host-user-contaminated"
