Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBPUYRLWAKGQEXPSODGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53f.google.com (mail-ed1-x53f.google.com [IPv6:2a00:1450:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 02AE5B6D13
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Sep 2019 21:57:51 +0200 (CEST)
Received: by mail-ed1-x53f.google.com with SMTP id p55sf473515edc.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Sep 2019 12:57:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568836670; cv=pass;
        d=google.com; s=arc-20160816;
        b=BcgLYwfDOkmpBkUHMrclzcGmG3WuP2L5YjHq68CrMlr9foQf4Udv0zODmxuQpoZKbK
         QTM7R/eibe77fd9CIcMfaVcYZnYYIU5jykA2/DbBSD0UFx1rcp39fu8xv4B1J2DeA9FC
         oESNT+K0rp1Q0E9K5Ijs0tTHkXBkkIZrpvnWJa4UusMw2bUxxvvsewGYLnUvDB0wOJGO
         2hTxz1O5dfZshk1ZEqN/kXy01I1pdHMXaUbhioDrCi4AYtaJglCycuk5hdjwf7jMXRhn
         CHhgpPOhatIr1CIKo4+YuD155cQIPWw2udgwLdmo7RiXrM6CAlbhrJvVd2VbPqq4xSCq
         kJyA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=Ph/+VhLYUUS1vhWePCzRdINgy9Tk6ETS8RkjT4gVaws=;
        b=z9untA4jSgXFcsGMV6evkzorvfvfpylvsaSA20Go2rJO3010FoTKyfATcRWHN+m7a2
         3YF7myPBEDOvDvuBpI0RgWkYQUwhpg2ewOZuuCtJl85vOH+NcE15rabry1YZMKh7bTJs
         5VOaVIwJ87vVOuY81sUUw426F40Gh0J3OOnvZMqrdyd14NFO6I21WBUbq9ziZs/h0r9f
         hOw7OXI88T0pzWsLlba5Yve8j5XnbXy9hOglrHJsBHotvPnqVJNoqByGIn3IpJv9Tkko
         DSsi0JRdbceXbZFedDONqTILT/I/R9nLywwWY7/hxdEq/dFxRzXEnGWAXc/cE8zywFn5
         9iNw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ph/+VhLYUUS1vhWePCzRdINgy9Tk6ETS8RkjT4gVaws=;
        b=H/Jxz4YtsRs2g1sOrWBCWVvETopPmqWed8SGjlJrV/axUlpHsS3PnJMciikcNRkwdx
         /R5w/Ml8g7Yhi0H26aU35VvgnVYKLgzDs0SoVNpnYLy5+7Pv5a6CXVtyReW2qz1bGWG4
         IxI0Xbrc0FRZj0vPoFDNo4QArPbDexIFrJI+v/OLQTGk57DmnjVq4Di92dTBysAHlgCI
         tIVSnJdcLPop0yw20C/vlSIL6e4XLaf0TcMYMpOvCF1ErGg5OakBiVNRWqYmy4ZPgbg8
         8yz/VJpB/ykzNARCgufFd60LmxEfzPyDSzBZ3jpSyHMLEBClvfR+zMYMc1PI+V64hNp5
         chug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Ph/+VhLYUUS1vhWePCzRdINgy9Tk6ETS8RkjT4gVaws=;
        b=Nzz3uYljn/TznnQUnjGvDKjIyofEU5vlzBcECHQvcUx/BZ1FjBgfr6yUMx6UmuEPrE
         tl1WsAEM27oQAtrlyCpgQZjvzgc9zoftNDpOrQpu84eAGJA+7BZ7XsCad7ezBCfvxide
         SVERC7Zy10bwXm5P6WhHerLvLim6ikcu7bkRYszkODwd+AGoqyD3HNb0QKPnp0CtREjt
         UOmmDIKTjwlhw/+VuImraYGn88zp1jeiKybZPPb1O0ahjjBNm4bMNY4LYtzpW7nEzKme
         HNNR0wDd8AgQXmQOH0zaYKybynDwPCsGUXtdJEzN9Ohsm/n7Bv6YvF7X6lbqM+oyeVe7
         sD1w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWzzHW+ALIkof1Fkf3toXq99OeYbajPWeX0YMOfyaZXWFifGs8d
	CWJkbSwMamJ/5uL/E9yJDjU=
X-Google-Smtp-Source: APXvYqzN37RpF+nr6IsJducd4pg69hThaLzIE4a09XHwqbun3UhtueLce2UfV6NYosm3KPwyLPh/SQ==
X-Received: by 2002:a50:f293:: with SMTP id f19mr12259575edm.85.1568836670694;
        Wed, 18 Sep 2019 12:57:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:ac7b:: with SMTP id w56ls266653edc.16.gmail; Wed, 18 Sep
 2019 12:57:50 -0700 (PDT)
X-Received: by 2002:a50:b884:: with SMTP id l4mr12257212ede.295.1568836670323;
        Wed, 18 Sep 2019 12:57:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568836670; cv=none;
        d=google.com; s=arc-20160816;
        b=fLsJOzNHCZF1GZrKY7iTQ2D/v8jpia2SEwxKQcV7ezcHuwYsi5GJyiqp4u4+n7s95f
         BolRgfVeEgyiWUeKYWSEBvO0FBPMHudD6wif/Zl5PNj6KLL+uc6+UiXjqIt6hmgmuJFt
         2e6yz0hKcLAES0PChHrMGZdcv2+E+sVUhWxrUyCdNhKCVZFYRma5DxOc8XUyvLstFphA
         y+d/2jC2rqMCC2+dA+yjeEtEoOGEm8EGQPUWvabDSs8jnwfxxi3TUVb8jTBa0Q6hyGyI
         feKnsAPAilZvA8J6jnbE2i/0Q5NwCBv9XQ9cU0fKkCzRzNrhKEtaUjXXy7H/+1XYwo9v
         l4Rw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=PWaL9RxfgsR/B+oBzU4OhMzRbRURbwHhwiRgkIK7Pxk=;
        b=gtdWA+LfdIpMM6tQpD4XFd0jpa/fKBytHmp5Gt4IUtrb2ClSh5AUeHYUH+RUDEnvfn
         rmQ7iAQfj6e/LP43trasbbls72rzn72ZC/L9XgSMoV4phsbr7YO0sNzZ/Qa+BVBWujtr
         NEDQ2i44W8kfmIkBZRzx1KoyCSAx3YkKbHRajZyhoXOOqRFjrGBf/Wz/hzeRHuOxqfOj
         Wo6kYNv6DdyUyVGvMR9XX9U7AUnA44d9D1oO+mL1qLKOyq673Xz04P7NfCZf9jh0bx+q
         QyP8hY6dhGaGgrrywep6S2nhC2kw/CiP+zWFrkcHq+T7C6i70GbxsZUH7+r2QqctXkp8
         n2jQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.131])
        by gmr-mx.google.com with ESMTPS id v25si535982edw.5.2019.09.18.12.57.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Sep 2019 12:57:50 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.131;
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MBUZr-1iMWhv1hy3-00CwcX; Wed, 18 Sep 2019 21:57:48 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Shannon Nelson <snelson@pensando.io>,
	Pensando Drivers <drivers@pensando.io>,
	"David S. Miller" <davem@davemloft.net>
Cc: Arnd Bergmann <arnd@arndb.de>,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] ionic: remove useless return code
Date: Wed, 18 Sep 2019 21:57:35 +0200
Message-Id: <20190918195745.2158829-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:tGFs0j53Jb1jMYkS2hCvPmKoxnLZMVIP3N3je8VWvQ5S2zgKuOG
 eRLzmZZRrnOViO/Nb+KEwoZQfjnNaRv4CBfx6fajZLUXaHleqA/VqQfmdYphluD3TZYl9z5
 Yfm3r1ze9i5irbHYscYwYmHHInCXbyzQgM92NJz4YuwaYdvF/K+aKiOG2LMYsKheRJCPHa2
 qNGClUNe8K3p3SkrFcxzg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:luKqPByHVkE=:opdo+VkX6Q+A/eJ1A6bg2i
 HKHF/nTEQZgnlDKLcYSraBMPoydxMYmpSm9xXpCxAecESwcR68I1YakaJbZI/mTqg+97ixphp
 PDsicnKNxxMDqFFRHrJDOf89sDZ+LqKSswowLtLLX72FIY/rDNUe8QbwHKqc65IPgVCh+BAhW
 DhP4FYOSQeuQgLg71++ec6edSlFuLpO5Tle6oDOVwhh9B1jwdf7eB2B3r6mCTZ2daguflSY0B
 17yyXEZgwENwt/tE9zRsYZK1ivcmOd6gOa/o9eIhSOZI12VOpQ1mqdYFi6BB3VIrWm2TRo9Xy
 PfrXkBcCvi0u0jeV6xcf4RWsI6zdW9s/D663ohUgBEM1I745TCg8g4pBnlNZRfIcdg3FYcs3g
 e/bvTpQOtYnOGcBI34gVeb/GBhkYukpkx6l/OkduA2Tg3BmzCj/+Ma7wdPMRCqzZ/8RCXi04K
 f0bPh4E1DS/Ez5FXjMst0BAHjs0Hm6FLbsDDrR9NlkjglTFpuN2s28PbD/z+0IFBDVd9R/leD
 4NO5K3AdbGqBUYPz18992nkrGUIRWzhFGeBiwXpxEwomjPqjwzy/V4o9IX0MfnttMtP+LzrmO
 yr4lGtB/atE68UviXuZb7MMX5CC0RkL3bKDFXOjjCM3g59MSAjvH5M5tDDukuY6mUm/BEUAll
 t4pxdss4cRaPApB7zdTp/21CGS+8uyhxeF8uhbDr7Q/LfmHMsjzdQyNJZDJNqZkBmoZTt2kRk
 YDTx9YcZxeo/AC+pBOu3dl+JSiyi2OFtTcGTv1AaFgiSg0ztB+67SRpBGB70TWAMFq3t3KCWT
 3iBUWKgxmDrWQGqjrKuqdGJzeSV15u7i7K2cq4bCw7urLEItHvqrtNmp4yEyRMVhdLJ8YmKxn
 Hq1f+6loHFbXxxloKZsg==
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.126.131 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Content-Type: text/plain; charset="UTF-8"
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Spam-Checked-In-Group: clang-built-linux@googlegroups.com
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

The debugfs function was apparently changed from returning an error code
to a void return, but the return code left in place, causing a warning
from clang:

drivers/net/ethernet/pensando/ionic/ionic_debugfs.c:60:37: error: expression result unused [-Werror,-Wunused-value]
                            ionic, &identity_fops) ? 0 : -EOPNOTSUPP;
                                                         ^~~~~~~~~~~

Fixes: fbfb8031533c ("ionic: Add hardware init and device commands")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/net/ethernet/pensando/ionic/ionic_debugfs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/pensando/ionic/ionic_debugfs.c b/drivers/net/ethernet/pensando/ionic/ionic_debugfs.c
index 7afc4a365b75..bc03cecf80cc 100644
--- a/drivers/net/ethernet/pensando/ionic/ionic_debugfs.c
+++ b/drivers/net/ethernet/pensando/ionic/ionic_debugfs.c
@@ -57,7 +57,7 @@ DEFINE_SHOW_ATTRIBUTE(identity);
 void ionic_debugfs_add_ident(struct ionic *ionic)
 {
 	debugfs_create_file("identity", 0400, ionic->dentry,
-			    ionic, &identity_fops) ? 0 : -EOPNOTSUPP;
+			    ionic, &identity_fops);
 }
 
 void ionic_debugfs_add_sizes(struct ionic *ionic)
-- 
2.20.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190918195745.2158829-1-arnd%40arndb.de.
