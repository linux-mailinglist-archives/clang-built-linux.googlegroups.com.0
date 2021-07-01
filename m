Return-Path: <clang-built-linux+bncBCN7B3VUS4CRBP4R62DAMGQEMRNZG4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id B29103B8FA7
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Jul 2021 11:20:00 +0200 (CEST)
Received: by mail-pj1-x103c.google.com with SMTP id cm22-20020a17090afa16b0290170b1e4383fsf2931529pjb.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Jul 2021 02:20:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625131199; cv=pass;
        d=google.com; s=arc-20160816;
        b=yTTBxJhhBdkMepNj778aMExiDPTfM/fiYpqspH2ngz7obQLNwpyNZDEOM57lHQ5+UF
         A0k6xrXy5nW6kHyALLY9a6sYK3YhuOag1tEB6T6Q7pPE0LyDtydYZT8OxvF3b3yqOpm9
         bm2DOwW8Gadmc/q9LAMIJk+w7qxogA/NCpg7CCcWz8XlrCDu4fZqlRTktHsOH8O/8Mo4
         dXkYPz9Rzk1/EzQ3P45S4t9o3Z/ZbLE+xHoaB76enwcesb25vgFpcAb9b1jXXEwGNyDO
         O1zarBisfZcvRbsGjtSIiVknTIg7o1L7y6rhSeOPghn+16SAllF1uH40yhew7OuiKXPt
         wGOQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=9G1+wbfKhK6fvUiDETQA60JecFC2zvCxyNF9BZfFg7g=;
        b=LChbySgVLStVwuEFnEcSMSXsR0mZqdAVzKENZK7gDTCxn2vVOaTrgk4XMlWezGhLqk
         rVfRUwAWTG7ziKHdY9V5F1/Aqxz1J+TiLMhUFkGg9KOAcXioDTX3TF+vrg+UJXGwIJNN
         IDifXEWWYgE7CT2dGkLGFghR0cZ8qDwslk7Qkw/Imwexi/OdrkpN+DXyw8Dwzq5nW2Pb
         2/Z0p/sNHkIBlJdu476gyODtk+rmQ2p2CF/I2FrVesvuxQDBdLbC7Abav4VqxPp1Ztj/
         LvBiTRKkVs3oZEwBbG/w6MsTtUO8fFMuoBWvaW4DVP1gtPyB65MeJ4AqtnXXcGclCJtP
         +vvA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lecopzer.chen@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=lecopzer.chen@mediatek.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9G1+wbfKhK6fvUiDETQA60JecFC2zvCxyNF9BZfFg7g=;
        b=gcWO7Atu7kY9fRTv6mi0KmklIdL+2+vlngfiOH87m6BpOaPluw32ObHoWR4HpwJ0SN
         ENUxTowFMlDznhReoO5lvTAn/oAZAQb1nyv8HvY3Ppwa1UlHSthzWH7IdXb40pS13Rcx
         kjJqFU2909aiSMgEF/ct4GlFgwR7E8r9/UZz0FO8pgdO1gwWsk81jPv9QhZKK244ABNI
         G8GYTUensj/e4/yS6Zw/lw3SaT0a4/78GZflkYRHRc31r+iqjqxErRKBCpg4S6Il92L9
         BumZtWszffocdogpE+gljnjqzdKkQx9GsE6XmjH53F6GbH2CIfNnKs4BSr2zgmXx8Gt/
         KvQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9G1+wbfKhK6fvUiDETQA60JecFC2zvCxyNF9BZfFg7g=;
        b=GULsrmfMsQR64BSoKYorErSmht+eEB/C+tn3JlzoXA8vTi0W+wU+VpFdWC/OREQmST
         kgif+TbbqvhBkgU0HDCY5H3WCRSIaO2CgHjp1457RsvGlRMPsh9/wcUyKcwebmkQC8iF
         Rx0jSrhrpKTyfCrJ09mvGq86hvk1Yav8sOzWdZR8T1sYb4X1t5/1DiYBXAVSjCr0/scO
         ebPCrelkUJ8KyFj/b3m6p51pgiPVirzNIqjVpf9sX4LPMFNglTcfVMUpHb1t32XCila9
         8vNEGFiaft85omuI7l2PmIzSepETglJ8idK2xzZohqr0V4R6bOzgKFyM2UGLaEyIThFl
         1S9w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Ae7Au3lgspS+rH8AMu9I+PNDRvFieGdLaZYhl9juv7HOoyTcz
	bsYlNCQ5bTQ6sJl+0Qrn6U8=
X-Google-Smtp-Source: ABdhPJyOOs6m6g+t6yZmyqLSu5AvXDxTBee/pR0zdr/ge4Yl/60NHBxLY4JACP4B/qNjDgsYlmHcXQ==
X-Received: by 2002:a65:5b0f:: with SMTP id y15mr28167640pgq.263.1625131199372;
        Thu, 01 Jul 2021 02:19:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:834f:: with SMTP id h76ls901187pfe.7.gmail; Thu, 01 Jul
 2021 02:19:58 -0700 (PDT)
X-Received: by 2002:a62:ee14:0:b029:309:715f:563f with SMTP id e20-20020a62ee140000b0290309715f563fmr32922271pfi.38.1625131198739;
        Thu, 01 Jul 2021 02:19:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625131198; cv=none;
        d=google.com; s=arc-20160816;
        b=LCQhX2Jk8bsK6uUibxEj6wic+/zHYeTN7k+UNO/tVW4EwonRRSpqO1ThqLRFsXcGQA
         N15hMgY3J4gwtT6l+QhLuXnpS6RY1f+Wmj5RFV9KtmU1NJoyuXd8vbgwnnwfMB3mH4nK
         tqRbGLReVWheGG2exupZWiUNIEm4ugQOWPbk5StaAXYI3RiBqRi3QT5NKzzHWFGalTPp
         dqDVOJn27d5oAmfK+3c2Smd+hR5uGRFGUojDVD3ILf/kZg1wOq0EaAfxTww2bEWZyULn
         9MLPbuT514xTdjNPT7rR15dT0aRwcSxhbYfJJsOaD9NfqfUN4DuvTf9XAuW9JETmdVr6
         v08w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from;
        bh=MwQIr837SxlYRV9+gLxL5FMtkXKHJGQpLcZzAyWk010=;
        b=s94mc3JLPt0LwpRrBIMG92imWIckJaxfTl9DP9UxiqOxbgpx/3xrZZq/DJWfXkluqv
         opHq/g4Xe7xoC6t0/E5QWmDqCSnGFRu/yZF2y6ftJLfbfrJVykgIZflAp2HLzk2HFt4Q
         CSaaoRYEM9UlgFaOfRnWl2C5WuYS7puH0YkpqMbe+u41tioi0A7mmlX502TA5AcslNq8
         t9hCpBhx4y4mxMWUoHor7Cp/bLa5rvMrudC/4O5lgt4cfwSVf2RL9xTqFZrCIKM2DC16
         V50ohCc9PjhDXWdHSDIjBZ7p6CBDc1DTlcMwQmz6GYQSHsLBDERwIEZOgZZFgQY0Vbbp
         rQ5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lecopzer.chen@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=lecopzer.chen@mediatek.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
Received: from mailgw02.mediatek.com ([210.61.82.184])
        by gmr-mx.google.com with ESMTPS id f16si1660823plj.1.2021.07.01.02.19.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Jul 2021 02:19:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of lecopzer.chen@mediatek.com designates 210.61.82.184 as permitted sender) client-ip=210.61.82.184;
X-UUID: 97bcb5b983a44609807ec5f536e05f78-20210701
X-UUID: 97bcb5b983a44609807ec5f536e05f78-20210701
Received: from mtkmbs10n1.mediatek.inc [(172.21.101.34)] by mailgw02.mediatek.com
	(envelope-from <lecopzer.chen@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 212237512; Thu, 01 Jul 2021 17:19:27 +0800
Received: from mtkcas11.mediatek.inc (172.21.101.40) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 1 Jul 2021 17:19:26 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas11.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Thu, 1 Jul 2021 17:19:25 +0800
From: Lecopzer Chen <lecopzer.chen@mediatek.com>
To: <keescook@chromium.org>, <samitolvanen@google.com>,
	<linux-kbuild@vger.kernel.org>, <nathan@kernel.org>
CC: <clang-built-linux@googlegroups.com>, <linux-kernel@vger.kernel.org>,
	<yj.chiang@mediatek.com>, <masahiroy@kernel.org>, <michal.lkml@markovi.net>,
	Lecopzer Chen <lecopzer.chen@mediatek.com>
Subject: [PATCH v2 1/2] [PATCH 1/2] Kbuild: lto: add CONFIG_MAKE_VERSION
Date: Thu, 1 Jul 2021 17:19:21 +0800
Message-ID: <20210701091922.572-2-lecopzer.chen@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20210701091922.572-1-lecopzer.chen@mediatek.com>
References: <20210701091922.572-1-lecopzer.chen@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-MTK: N
X-Original-Sender: lecopzer.chen@mediatek.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lecopzer.chen@mediatek.com designates 210.61.82.184 as
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

To check the GNU make version. Used by the LTO Kconfig.

LTO with MODVERSIONS will fail in generating correct CRC because
the makefile rule doesn't work for make with version 3.8X.[1]

Thus we need to check make version during selecting on LTO Kconfig.
Add CONFIG_MAKE_VERSION which means MAKE_VERSION in canonical digits
for arithmetic comparisons.

[1] https://lore.kernel.org/lkml/20210616080252.32046-1-lecopzer.chen@mediatek.com/
Signed-off-by: Lecopzer Chen <lecopzer.chen@mediatek.com>
---
 Makefile                |  2 +-
 init/Kconfig            |  4 ++++
 scripts/make-version.sh | 13 +++++++++++++
 3 files changed, 18 insertions(+), 1 deletion(-)
 create mode 100755 scripts/make-version.sh

diff --git a/Makefile b/Makefile
index 88888fff4c62..2402745b2ba9 100644
--- a/Makefile
+++ b/Makefile
@@ -516,7 +516,7 @@ CLANG_FLAGS :=
 
 export ARCH SRCARCH CONFIG_SHELL BASH HOSTCC KBUILD_HOSTCFLAGS CROSS_COMPILE LD CC
 export CPP AR NM STRIP OBJCOPY OBJDUMP READELF PAHOLE RESOLVE_BTFIDS LEX YACC AWK INSTALLKERNEL
-export PERL PYTHON3 CHECK CHECKFLAGS MAKE UTS_MACHINE HOSTCXX
+export PERL PYTHON3 CHECK CHECKFLAGS MAKE MAKE_VERSION UTS_MACHINE HOSTCXX
 export KGZIP KBZIP2 KLZOP LZMA LZ4 XZ ZSTD
 export KBUILD_HOSTCXXFLAGS KBUILD_HOSTLDFLAGS KBUILD_HOSTLDLIBS LDFLAGS_MODULE
 
diff --git a/init/Kconfig b/init/Kconfig
index 55f9f7738ebb..ecc110504f87 100644
--- a/init/Kconfig
+++ b/init/Kconfig
@@ -86,6 +86,10 @@ config CC_HAS_ASM_INLINE
 config CC_HAS_NO_PROFILE_FN_ATTR
 	def_bool $(success,echo '__attribute__((no_profile_instrument_function)) int x();' | $(CC) -x c - -c -o /dev/null -Werror)
 
+config MAKE_VERSION
+	int
+	default $(shell,$(srctree)/scripts/make-version.sh $(MAKE_VERSION))
+
 config CONSTRUCTORS
 	bool
 
diff --git a/scripts/make-version.sh b/scripts/make-version.sh
new file mode 100755
index 000000000000..ce5af96696cc
--- /dev/null
+++ b/scripts/make-version.sh
@@ -0,0 +1,13 @@
+#!/bin/sh
+# SPDX-License-Identifier: GPL-2.0
+#
+# Print the linker name and its version in a 5 or 6-digit form.
+
+set -e
+
+# Convert the version string x.y.z to a canonical 5 or 6-digit form.
+IFS=.
+set -- $1
+
+# If the 2nd or 3rd field is missing, fill it with a zero.
+echo $((10000 * $1 + 100 * ${2:-0} + ${3:-0}))
-- 
2.18.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210701091922.572-2-lecopzer.chen%40mediatek.com.
