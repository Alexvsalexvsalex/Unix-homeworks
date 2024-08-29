#!/usr/bin/env sh

sed '
    s/^\(.*\),\(.*\),\(.*\)$/\
    <td>\1<\/td>\
    <td>\2<\/td>\
    <td>\3<\/td>/
    1 i <!DOCTYPE html><html><body><table>
    i <tr>
    a </tr>
    $ a </table></body></html>
' table
