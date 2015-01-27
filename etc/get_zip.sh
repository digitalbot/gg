#!/bin/sh

\curl 'http://nlftp.mlit.go.jp/ksj/api/1.0b/index.php/app/getKSJURL.xml?appId=ksjapibeta1&lang=J&dataformat=1&identifier=N03&fiscalyear=2014' | perl -nle 'while (/<(zipFileUrl)>(.+?)<\/\1>/ig) { print $2 }' | xargs \wget
