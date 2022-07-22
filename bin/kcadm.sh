#!/bin/sh
case "`uname`" in
    CYGWIN*)
        CFILE = `cygpath "$0"`
        RESOLVED_NAME=`readlink -f "$CFILE"`
        ;;
    Darwin*)
        RESOLVED_NAME=`readlink "$0"`
        ;;
    FreeBSD)
        RESOLVED_NAME=`readlink -f "$0"`
        ;;
    Linux)
        RESOLVED_NAME=`readlink -f "$0"`
        ;;
esac

if [ "x$RESOLVED_NAME" = "x" ]; then
    RESOLVED_NAME="$0"
fi

DIRNAME=`dirname "$RESOLVED_NAME"`


java $KC_OPTS -cp $DIRNAME/client/keycloak-admin-cli-18.0.2.jar org.keycloak.client.admin.cli.KcAdmMain "$@"

