Return-Path: <clang-built-linux+bncBC27X66SWQMBB5HQ5X7QKGQEIUPJOHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id BC72B2F09F8
	for <lists+clang-built-linux@lfdr.de>; Sun, 10 Jan 2021 22:58:13 +0100 (CET)
Received: by mail-ot1-x339.google.com with SMTP id x20sf8384237otk.23
        for <lists+clang-built-linux@lfdr.de>; Sun, 10 Jan 2021 13:58:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610315892; cv=pass;
        d=google.com; s=arc-20160816;
        b=nLFNdWVCMUc38QsAZ3DwxIiLcNSB2JX/jLhZ7zoGjbBsHLwpw9ZgfQ43x58d8/EoUy
         xxc2Zjjb7UEQSH2SGgMnKRo3+hxj8WI7twYHKk06uI4z/FwbGJ67QEKU52PmhuGiPlLN
         wXZlQGaM0v3+91SAiFEqbsL0PzueK4jk8SnCiahZUNZmTbNB5tU8Yp3VtelWanS5iLD0
         sMf1lYNEtqHjdqLZe6X7FCOTTom/eL+hO5ZQVfkJi/+cu3FsS+L/gnj/DpNnJ/h3GApZ
         kItCujf9xzUsanhjXjTlTumyIlUQg5bjtSoOD9+pQPrrcMEpuf6erdDr07j76ovV+rDQ
         lzLg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=ZAQHMzGIaWUoOyHjgo3fzHB6KTFWgsEWfGUSamcF3LA=;
        b=wC3e+BCuDTksf5JGub75DUMHcTPbEdtzpx1wUjOGR+pzyYiP4aHbx39ru5EV0NMDHs
         YflnnbituIYtqOLu2bmrlFMj0PboNWtn7cVh0VLzen8ULj+Bm7AJ+I9Ks6nl2YS9AR98
         bJ7rZewgCR937Wn/b53FxA0t0i4adedUES7vT/+rJEwVy83W6moice56GM6lrmmanVWx
         VUGWHYbpqu5nImt0lNiEX1Pae7ArGg7bxP02ycpznvvw0FurEIpKNAuKI5aXfhMJDtWA
         iDAN8QQlqMwOrGMG8iuIcvd1iCvp85mMZ52JDhDfotHWOWgMxfrzm0n/ONmGIEpan0b/
         MdwA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=fu4MNkwL;
       spf=pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZAQHMzGIaWUoOyHjgo3fzHB6KTFWgsEWfGUSamcF3LA=;
        b=lZnnHDBrX+pFje3QMWAfMfY+uDo5XEMBhHjtWyC5H1pfSdvmOZmhAJa15Xanw3ovrj
         O0B2iwfKq0p76BbgIAs4CV7dKOtGmsnUpHa8c9LIVILPuwoYTgsNVykzvxEEktEI1q77
         pifYFLh5321ROLagc96xRdPMuWxggcqkMvQ5Z8U1y/QHZymgxwrdZi89hZaUkMJ1IyFs
         hjizX/nCl1ppuOLmpRWzp9ZTC9e+rPD/sGj6gyetIPJAHighScrWYGu7xJ46WMhgPAjk
         DQENv8hSsMCDPErLsc13k2XGxW1wCcArR0Mf4TWDZH03s2PKKAfGsXqyXcreJszKYnBS
         8a3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZAQHMzGIaWUoOyHjgo3fzHB6KTFWgsEWfGUSamcF3LA=;
        b=G7Ame3iIg0yNbrQjbmyE+4WYYL+B2G8ekPiofMwhs3LZgN+NTE/rrezwk09gtKTG63
         lJh46yE9470A6W4pOVKTAzYsJn5RoemU2xyJkK7wS5wL6oDGXTde6UK37doVqxVwlxSQ
         zX2d5S6PbdBZixysE5h+uSO0kP5QMXSElfIOv7UWMd/WAvZ2I2z1yV2MS60UwrnPQlsl
         RLaAzBfs900yEXmE9Qb/qYzOmFRv7yA/e9oNbsngPYtsWB+Ma2PKhwkvhIJkPdDbojFv
         wVtzgrazYFxJ2t2NYvpvBlRvQpZ8BFwOQzTmaT4bcI8NDxekZpm4VwEWWPRGD5KcEIj6
         ox1g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532kurYQWDEhJeHSkbjUTGGaomVCbjJfzJLQLw16Bqey9FYN+v/f
	acvfwhPc+BiVEgJpQEXh0Bc=
X-Google-Smtp-Source: ABdhPJzPwMyiNI0YZcgoB6AMsxPQkPgDhEjBjTtkvQb36CUET9HnpuNLxoXXDYlKhkfU1aNldt447w==
X-Received: by 2002:a05:6830:1e0c:: with SMTP id s12mr8982322otr.152.1610315892500;
        Sun, 10 Jan 2021 13:58:12 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6841:: with SMTP id c1ls4349024oto.8.gmail; Sun, 10 Jan
 2021 13:58:12 -0800 (PST)
X-Received: by 2002:a9d:7745:: with SMTP id t5mr9401306otl.104.1610315892075;
        Sun, 10 Jan 2021 13:58:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610315892; cv=none;
        d=google.com; s=arc-20160816;
        b=AgeBRfT7NOHguM2miWZzmx74p4ZkvBv9yawkUZ5fjHnBxFg2m6gXvuUikGcbuX81Xj
         a3u6BxAx7orNdQs4klAUKqb2dePKxF5badpL32GH6dSZY7MP/AC7mFWRzxiUu15XoNLL
         TzBzxnuorf6FmdiCKSOcRI8WaU7fSDoh2ro+0RdZlCsw0xBO5BT5VPlgEsCrCjF+Nhuv
         AIKd0SdmUzBr0AK7BmsECWvX3Mh1rl9Z4fUNeeWmGWFS5EYdt+ufp6R/vuq9coLtkHum
         nH4ZOvV8s2JRH88JK6cRs6osrjZ5No46qDTSd4/AdFDA0YxQnjo6HP7Ifrv8KtW16mEc
         feDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=3eVTM/WNkAqgnImqOE9gVZKZvkeANNt1RNH+SQOg+Dg=;
        b=nZeNy0j5lSIKFa7ETsWBrcPXrS0C85a7VVEtu8Uz6C7cB/8e/1MFsdAhqeIOBn+bgY
         9xj7lusGii68J4QJqV/H3I12iOnthfovKF+AMt2ux/LJmuNTNBkwueIbiBhHMYccGQoB
         EAYaE9WlT7Q1leQsrSVO5YSaDdLAu0Wdqxgibyk9MQR1gT/2sWo1grw9npN8EYFE6b0z
         M3izGd8W5HQm6sne0m9Xynv2tl+Swn7BRHATJoi3MhSKPsuW1jk5rbTckgHmo6it3lL6
         VvMas6jbqE6Ec7dgLqFiUaoDCVahJoyw59o8b2c51STw6y+Wv5p9KYtFbGrfHq9KBMJL
         9LGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=fu4MNkwL;
       spf=pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id r8si1310429otp.4.2021.01.10.13.58.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Jan 2021 13:58:11 -0800 (PST)
Received-SPF: pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mail-il1-f197.google.com (mail-il1-f197.google.com
 [209.85.166.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-213-4LalDpzpM2iHGjbvBTzFuw-1; Sun, 10 Jan 2021 16:58:07 -0500
X-MC-Unique: 4LalDpzpM2iHGjbvBTzFuw-1
Received: by mail-il1-f197.google.com with SMTP id c13so15577002ilg.22
        for <clang-built-linux@googlegroups.com>; Sun, 10 Jan 2021 13:58:07 -0800 (PST)
X-Received: by 2002:a6b:3bc3:: with SMTP id i186mr12800075ioa.192.1610315886933;
        Sun, 10 Jan 2021 13:58:06 -0800 (PST)
X-Received: by 2002:a6b:3bc3:: with SMTP id i186mr12800067ioa.192.1610315886747;
        Sun, 10 Jan 2021 13:58:06 -0800 (PST)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id e19sm10014698ioh.15.2021.01.10.13.58.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Jan 2021 13:58:06 -0800 (PST)
From: trix@redhat.com
To: danil.kipnis@cloud.ionos.com,
	jinpu.wang@cloud.ionos.com,
	axboe@kernel.dk,
	natechancellor@gmail.com,
	ndesaulniers@google.com
Cc: linux-block@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Tom Rix <trix@redhat.com>
Subject: [PATCH] block/rnbd-clt: improve find_or_create_sess() return check
Date: Sun, 10 Jan 2021 13:57:26 -0800
Message-Id: <20210110215726.861269-1-trix@redhat.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: trix@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=fu4MNkwL;
       spf=pass (google.com: domain of trix@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

From: Tom Rix <trix@redhat.com>

clang static analysis reports this problem

rnbd-clt.c:1212:11: warning: Branch condition evaluates to a
  garbage value
        else if (!first)
                 ^~~~~~

This is triggered in the find_and_get_or_create_sess() call
because the variable first is not initialized and the
earlier check is specifically for

	if (sess == ERR_PTR(-ENOMEM))

This is false positive.

But the if-check can be reduced by initializing first to
false and then returning if the call to find_or_creat_sess()
does not set it to true.  When it remains false, either
sess will be valid or not.  The not case is caught by
find_and_get_or_create_sess()'s caller rnbd_clt_map_device()

	sess = find_and_get_or_create_sess(...);
	if (IS_ERR(sess))
		return ERR_CAST(sess);

Since find_and_get_or_create_sess() initializes first to false
setting it in find_or_create_sess() is not needed.

Signed-off-by: Tom Rix <trix@redhat.com>
---
 drivers/block/rnbd/rnbd-clt.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/block/rnbd/rnbd-clt.c b/drivers/block/rnbd/rnbd-clt.c
index 96e3f9fe8241..251f747cf10d 100644
--- a/drivers/block/rnbd/rnbd-clt.c
+++ b/drivers/block/rnbd/rnbd-clt.c
@@ -919,6 +919,7 @@ static struct rnbd_clt_session *__find_and_get_sess(const char *sessname)
 	return NULL;
 }
 
+/* caller is responsible for initializing 'first' to false */
 static struct
 rnbd_clt_session *find_or_create_sess(const char *sessname, bool *first)
 {
@@ -934,8 +935,7 @@ rnbd_clt_session *find_or_create_sess(const char *sessname, bool *first)
 		}
 		list_add(&sess->list, &sess_list);
 		*first = true;
-	} else
-		*first = false;
+	}
 	mutex_unlock(&sess_lock);
 
 	return sess;
@@ -1203,13 +1203,11 @@ find_and_get_or_create_sess(const char *sessname,
 	struct rnbd_clt_session *sess;
 	struct rtrs_attrs attrs;
 	int err;
-	bool first;
+	bool first = false;
 	struct rtrs_clt_ops rtrs_ops;
 
 	sess = find_or_create_sess(sessname, &first);
-	if (sess == ERR_PTR(-ENOMEM))
-		return ERR_PTR(-ENOMEM);
-	else if (!first)
+	if (!first)
 		return sess;
 
 	if (!path_cnt) {
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210110215726.861269-1-trix%40redhat.com.
