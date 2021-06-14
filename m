Return-Path: <clang-built-linux+bncBCN7B3VUS4CRBXW4TODAMGQETXHMS2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id CA9333A5C94
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Jun 2021 07:51:27 +0200 (CEST)
Received: by mail-qv1-xf3d.google.com with SMTP id n17-20020ad444b10000b02902157677ec50sf26727872qvt.12
        for <lists+clang-built-linux@lfdr.de>; Sun, 13 Jun 2021 22:51:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623649886; cv=pass;
        d=google.com; s=arc-20160816;
        b=eamzQFL87I9myYTkqtN85WTSBt6vtcar+UwcruAMqGf4BcL1EbM5p9f+2zI4XLEgeH
         SPpfifAXec3gOmVH2frepE/L/s3O5FCuQb2UW1cu/xzR8n+vpU1kUo432gTkFBCSmMii
         kNzCRiTa74TrO3B16ZGrFHn47YRxvjS8jBO2/qGn1JD6fPUeA9ZXlaVvYDPHSFt1FAIn
         IJbO1rBL2j7hdxrl/cRgFC4VcvWnzaRVsMhFRPTnPoSRh14tabKWe5IjmYd4pZQEE2XW
         XGB2vEx606OX4f0jlmkDeo7UrWcRqQSoniXYbfQ+wds59lXRlxGMSdXATNon3ZiPNoEY
         I3XQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=JqUo5loky+bK8UzHbN0+e/7OstFQkWAlA8Kjwvm/lQI=;
        b=VzGV3ZkzOQJEburFuRw3SOkUR3br1BABrDPWTAzpTS4mwxtnntEpmlZuoGnVyIg1Cc
         baFZ91iIl+hZFr5VcUyIKZ/9DIWVf5UmboJVZfmFEhZixyoXMD52mS3IohU3iY9mnB00
         JaxiUiKhDPZQD2CkjncQEbM7r1C/KBidkTcmouXfXkrOAHtzFj4EsaPccpeSAaNcJI7z
         U4VVs4YjPd6wKZdFRKnAfhPyVg0l2s115cDubTOGkSWKUm9s5CHtbsbYJ8aG+UKp2+7w
         o4rlHoS7QGbhB6WhxhWAKvkq8IBmRiUi+LPQV84Q7W6wnGmcVyY4JyN8bwSmRXl10LS0
         H7dQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lecopzer.chen@mediatek.com designates 210.61.82.183 as permitted sender) smtp.mailfrom=lecopzer.chen@mediatek.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JqUo5loky+bK8UzHbN0+e/7OstFQkWAlA8Kjwvm/lQI=;
        b=dDsx/pegiBimK4f1l7A4Sosb5/ffisQgR27j4zcP5Ik63l1JZ9TqENSaRyK7Vi897m
         MsFUSNTzG95D/zXbq/+1FPYGz5BCRpmkm0c0OBOjvErwTioDYtePyJ6fzRJQ2A37EGSo
         etsm4pHWsW5tLWjMcJ7JT+ldCURzIj5V0vPPZAJeATHKYf6oDfeWZjpT5zaNOvQC1ekc
         2PVdgqZ1aB1mOz2ujrQjgICPTq3K18dt38vwLX/1oHhTc1Gjq9h1gfuota7Nz4mTQNqe
         TKKT2yCxgogJ22UdTjsB9zir0Ya4klCyszCFyp5TP/1mOI220jCn6XpYBDvrQPzx4Tmf
         lOlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JqUo5loky+bK8UzHbN0+e/7OstFQkWAlA8Kjwvm/lQI=;
        b=MSmOMF1AWJhWxu5X6S7cpEkxkXn8b+c4wTuYp9IpSWFiDgjDQ3DTZB5407ttXju3/+
         fzntc9z47DxkeOQmN51rv9Wxwa/lC8KwDqbVMYeLeiQIVvVsVLvYayzNG8Ue3FUzGqeK
         tq/GtWy0OdF7PYzfUPHcXqcFY9mgTWK13wDgI9TBkAG/aFI0XJkgX0Lk3S8B2GxT+VDI
         Oh7EpC6L9evQ5T/6WxFddSGvCWDna1pbISZKEFUVIrfkYCImcuVjyDMZYcG2szJTMzTv
         s8Dbv4/lzvRuxb49oH/avvl1RSPWwaF+EOPhQCXs1BvwoEZwyfZPoOHju/op8RNfLIA0
         u/ig==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531mL3Pt9f5y3pVubE1mL58iQvw+5Rvd2Jiu1elhxP/u6WbU1pMg
	4G43iPKpslC5HPxf5vqjQVw=
X-Google-Smtp-Source: ABdhPJwcf2NZ7jqkA+LWRSlSLclO1Xc4YQ1XaudfeXdDz+PO4Z1xndafRLarRVfNmsyI2pynsoggPg==
X-Received: by 2002:ac8:718b:: with SMTP id w11mr15159596qto.354.1623649886573;
        Sun, 13 Jun 2021 22:51:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:4f30:: with SMTP id fc16ls5320085qvb.8.gmail; Sun, 13
 Jun 2021 22:51:26 -0700 (PDT)
X-Received: by 2002:ad4:4ae4:: with SMTP id cp4mr17057480qvb.44.1623649886169;
        Sun, 13 Jun 2021 22:51:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623649886; cv=none;
        d=google.com; s=arc-20160816;
        b=v2cE/hHRE0yTtDaLqAhC9js0bAIjIvQm91h6NH48OI+OsdX4XnfeRMkmZsRtanIPm8
         p2NuZUdTGlyR+gajcBkMNkXmVLkYKlVMtdJ7W86iPr4fyXOx8utkAHKn5FPOpGqSH2k5
         7NbXuCcZh5QM7CvHQ3qza+3uTP73plAk9avXWqtE6jLG8Ymf4Y2fUR6m/fwy/64tFNgF
         j+GkyHq5Tie44vQeoeUx/+/zVNANbj75ILcF2eeD7s5szQ53SKcQRyJO6WNvaGPQlulG
         dUwJgotlgWvI/wQNEdbNI1szxJZoECzx10ITYKLcf7rB9oYmGvjm9APboSexsvz5B1KP
         Z26g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:subject:cc:to:from;
        bh=5ACmAS8RA8ExCdPZbpGuzj34US4pUjQnggsAMQTFIes=;
        b=W1Jd2tJTFMeD9ZQjF30PTY6JgBGRPegx+mwBXq+gW4S+Cr+2UcgFoD8lWPp3eIw85O
         Md55pm+smUQqx5GkbwUd/ShWPvuwsVH0efIzwLwbMKKK/8pIzr48R3/D/hfcSDjrp3c3
         nwJ2T7x2w8JoH08X0NhG9k17ZkKTYc5TiinUoMeavPvRSmcjtPWmHPI6zw76RkioPslg
         7tlzNHTjAm/N4PMhki1rYwE6T88IOzA3Ul8GOO6RMy9gmeG+8fFOPSSZDsPN25qdjta8
         dOgi/X8mDbvm7/654i3pMEykwuqJFu0ey8r4aeDUx1MgR3mfgrftPlnHaxCAYTsYEFFz
         r67Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lecopzer.chen@mediatek.com designates 210.61.82.183 as permitted sender) smtp.mailfrom=lecopzer.chen@mediatek.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
Received: from mailgw01.mediatek.com ([210.61.82.183])
        by gmr-mx.google.com with ESMTPS id d77si762535qkg.1.2021.06.13.22.51.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Jun 2021 22:51:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of lecopzer.chen@mediatek.com designates 210.61.82.183 as permitted sender) client-ip=210.61.82.183;
X-UUID: ee7ddcb7ec4b43a3a4cfb9ccec489cc4-20210614
X-UUID: ee7ddcb7ec4b43a3a4cfb9ccec489cc4-20210614
Received: from mtkmbs10n2.mediatek.inc [(172.21.101.183)] by mailgw01.mediatek.com
	(envelope-from <lecopzer.chen@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1636646899; Mon, 14 Jun 2021 13:51:17 +0800
Received: from mtkcas11.mediatek.inc (172.21.101.40) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 14 Jun 2021 13:51:15 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas11.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Mon, 14 Jun 2021 13:51:15 +0800
From: Lecopzer Chen <lecopzer.chen@mediatek.com>
To: <masahiroy@kernel.org>, <michal.lkml@markovi.net>, <nathan@kernel.org>,
	<ndesaulniers@google.com>, <keescook@chromium.org>, <samitolvanen@google.com>
CC: <linux-kbuild@vger.kernel.org>, <clang-built-linux@googlegroups.com>,
	<linux-kernel@vger.kernel.org>, <yj.chiang@mediatek.com>, Lecopzer Chen
	<lecopzer.chen@mediatek.com>
Subject: [PATCH] kbuild: lto: fix module versionings mismatch in incremental build
Date: Mon, 14 Jun 2021 13:51:09 +0800
Message-ID: <20210614055109.28774-1-lecopzer.chen@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-MTK: N
X-Original-Sender: lecopzer.chen@mediatek.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lecopzer.chen@mediatek.com designates 210.61.82.183 as
 permitted sender) smtp.mailfrom=lecopzer.chen@mediatek.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
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

When building modules(CONFIG_...=m), I found some of module versions
are incorrect and set to 0.
This can be found in build log for first clean build which shows

WARNING: EXPORT symbol "XXXX" [drivers/XXX/XXX.ko] version generation failed, symbol will not be versioned.

But in second build(incremental build), the WARNING disappeared and the
module version becomes valid CRC and make someone who want to change
modules without updating kernel image can't insert their modules.

The problematic code is
+	$(foreach n, $(filter-out FORCE,$^),				\
+		$(if $(wildcard $(n).symversions),			\
+			; cat $(n).symversions >> $@.symversions))

For example:
  rm -f fs/notify/built-in.a.symversions    ; rm -f fs/notify/built-in.a; \
llvm-ar cDPrST fs/notify/built-in.a fs/notify/fsnotify.o \
fs/notify/notification.o fs/notify/group.o ...

`foreach n` shows nothing to `cat` into $(n).symversions because
`if $(wildcard $(n).symversions)` return nothing, but actually
they do exist during this line was executed.

-rw-r--r-- 1 root root 168580 Jun 13 19:10 fs/notify/fsnotify.o
-rw-r--r-- 1 root root    111 Jun 13 19:10 fs/notify/fsnotify.o.symversions

The reason is the $(n).symversions are generated at runtime, but
Makefile wildcard function expends and checks the file exist or not
during parsing the Makefile.

Thus fix this by use `test` shell command to check the file
existence in runtime.

Fixes: 38e89184900385 ("kbuild: lto: fix module versioning")
Signed-off-by: Lecopzer Chen <lecopzer.chen@mediatek.com>
---
 scripts/Makefile.build | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index 949f723efe53..a91012b06ebb 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -387,8 +387,7 @@ ifeq ($(CONFIG_LTO_CLANG) $(CONFIG_MODVERSIONS),y y)
       cmd_update_lto_symversions =					\
 	rm -f $@.symversions						\
 	$(foreach n, $(filter-out FORCE,$^),				\
-		$(if $(wildcard $(n).symversions),			\
-			; cat $(n).symversions >> $@.symversions))
+			; test -s $(n).symversions && cat $(n).symversions >> $@.symversions)
 else
       cmd_update_lto_symversions = echo >/dev/null
 endif
-- 
2.18.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210614055109.28774-1-lecopzer.chen%40mediatek.com.
