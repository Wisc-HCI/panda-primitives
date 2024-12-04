/****************************************************************************
** Meta object code from reading C++ file 'camera_display.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.12.8)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/rviz_camera_stream/include/rviz_camera_stream/camera_display.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'camera_display.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.12.8. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_rviz__CameraPub_t {
    QByteArrayData data[10];
    char stringdata0[161];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_rviz__CameraPub_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_rviz__CameraPub_t qt_meta_stringdata_rviz__CameraPub = {
    {
QT_MOC_LITERAL(0, 0, 15), // "rviz::CameraPub"
QT_MOC_LITERAL(1, 16, 11), // "forceRender"
QT_MOC_LITERAL(2, 28, 0), // ""
QT_MOC_LITERAL(3, 29, 11), // "updateTopic"
QT_MOC_LITERAL(4, 41, 15), // "updateQueueSize"
QT_MOC_LITERAL(5, 57, 15), // "updateFrameRate"
QT_MOC_LITERAL(6, 73, 21), // "updateBackgroundColor"
QT_MOC_LITERAL(7, 95, 22), // "updateDisplayNamespace"
QT_MOC_LITERAL(8, 118, 19), // "updateImageEncoding"
QT_MOC_LITERAL(9, 138, 22) // "updateNearClipDistance"

    },
    "rviz::CameraPub\0forceRender\0\0updateTopic\0"
    "updateQueueSize\0updateFrameRate\0"
    "updateBackgroundColor\0updateDisplayNamespace\0"
    "updateImageEncoding\0updateNearClipDistance"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_rviz__CameraPub[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
       8,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    0,   54,    2, 0x08 /* Private */,
       3,    0,   55,    2, 0x08 /* Private */,
       4,    0,   56,    2, 0x08 /* Private */,
       5,    0,   57,    2, 0x08 /* Private */,
       6,    0,   58,    2, 0x08 /* Private */,
       7,    0,   59,    2, 0x08 /* Private */,
       8,    0,   60,    2, 0x08 /* Private */,
       9,    0,   61,    2, 0x08 /* Private */,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

void rviz::CameraPub::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<CameraPub *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->forceRender(); break;
        case 1: _t->updateTopic(); break;
        case 2: _t->updateQueueSize(); break;
        case 3: _t->updateFrameRate(); break;
        case 4: _t->updateBackgroundColor(); break;
        case 5: _t->updateDisplayNamespace(); break;
        case 6: _t->updateImageEncoding(); break;
        case 7: _t->updateNearClipDistance(); break;
        default: ;
        }
    }
    Q_UNUSED(_a);
}

QT_INIT_METAOBJECT const QMetaObject rviz::CameraPub::staticMetaObject = { {
    &Display::staticMetaObject,
    qt_meta_stringdata_rviz__CameraPub.data,
    qt_meta_data_rviz__CameraPub,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *rviz::CameraPub::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *rviz::CameraPub::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_rviz__CameraPub.stringdata0))
        return static_cast<void*>(this);
    if (!strcmp(_clname, "Ogre::RenderTargetListener"))
        return static_cast< Ogre::RenderTargetListener*>(this);
    return Display::qt_metacast(_clname);
}

int rviz::CameraPub::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = Display::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 8)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 8;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 8)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 8;
    }
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
