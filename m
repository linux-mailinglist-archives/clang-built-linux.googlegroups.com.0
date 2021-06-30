Return-Path: <clang-built-linux+bncBCN7B3VUS4CRBRGA6GDAMGQE5LUYP5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id E4D2D3B81DA
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Jun 2021 14:15:01 +0200 (CEST)
Received: by mail-ot1-x338.google.com with SMTP id i20-20020a9d61140000b0290465533f61a5sf1551083otj.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Jun 2021 05:15:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625055301; cv=pass;
        d=google.com; s=arc-20160816;
        b=tSL/ZdB/rhVTY7rAhibHfUMfqzqa8niNZd3i1NevGP12eMziBcclxp4ZTjaiNW0wts
         vp7u6G+/l6d8owSrWmuisXqkRH/HaFwd1K3zwTP9vGVEWUhgsy6UBEOjcRetEqId029w
         2Zp25+EuPoOlAl3LDsVmixibvjD6MPamkxXTTZCPD8jSCvfMYWVsX1zX6NLWa3CB6nwR
         gU7fo7dn8czYSE2V4NU9iQka5YINo9Ow9KqiU0/BsorDxYr7E/ITIAE5ffzDlLWKOmD1
         g6C3wR4nqUiY85tHY+B5Vf564WVFwbJwL7a4PnvQ4W4zrwn40VDg13Jovo247wcAV8Ak
         e4KA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=ObGqu3wT0TfQkFsiLlvWsIEGm9iU+35M73DglxY1Wfc=;
        b=edihdgNPottNca0FXlXkExowCVxf8tU+KdKzZyXZZBeud9FGJvpREg6FP5myQLjWmv
         fAL6f1yC2/StSMpzehIL96vp4Kzsg5Y2LeZumgWg58D+/QMK57Yw1QZXioTDnPBJsvo5
         WUzCSsvXH+31khP1sB72TAEV+I4DZF2ZcAJSR2YgpgkPQvSHwIPvt9B9rh7u6qv0R6lq
         1uvgaPkMBxoehICspJ28pibrg6EwCi1ofOIVnzmVj00KUORWdo4z4gTM9LzB7PAjUduF
         CbPkAmzhluXqJ4YCiLX6HqDU3RSfaz14tO3efRa083x+XVLQ2f4sLX5Nmqcla7dWppwo
         BRcw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lecopzer.chen@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=lecopzer.chen@mediatek.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ObGqu3wT0TfQkFsiLlvWsIEGm9iU+35M73DglxY1Wfc=;
        b=gteWS3IsR9ET1ewQSrHOO908q3tL7KPPx3egfmIP01MsMVP+xabON4k1UTrIjhE1lM
         Ln6RZu+Y503o+bxa0KJPz7fjW7X05p6heX/crNreHa3s75Od3pH5ksfgdA1TeXfM/gQ8
         gJKc6/WiL9LXjWtKRJv9pd7qMPJuUCacVOErLNQDyUo3fh6Ps7Dbk2q4eKH7kLYFNdKD
         ItIsIJWtfYPGNb3yFdut9HpODmB4I22ghg14xZRfZn39uoCv+J8NJpH88Sj0cyxMTfuC
         9h7mjQyq9TNiZa57LEI+EZDgsxfgybbp4FGbisWQ6HBx1MMBUEEBGo6hQQg1dUH+5hQH
         Oiew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ObGqu3wT0TfQkFsiLlvWsIEGm9iU+35M73DglxY1Wfc=;
        b=BtZFZ5CxGMf+vmqppMmGax+jfDsR2ErWLTFSm6L4F/hOwxq5z1tBi7a6jvRqYg8LPV
         Sl9HlHAPhBNzrex5sy2YDsREqAVkI7ewxollvjwKXT4CzCeWBhtsBSp+KJjYF1cG/hcS
         WUDUIO+KqC6PDVfq7oS4dK9JicNKHCGJ+cRptIPmj7Tuwrvk6JlazL/W0qDAu1gZFi9r
         SgxYtPwnvHH10jyJd97sa7X6pJk2SN0h+d/+OP+9cAt8LkH0fWyeofz86tA8imygbwQ2
         Qmk5OPI3AnRlV8B8CdSoiespEEuo1pGTXshFOO3er1nroQeXiTNq/3YPvU4vCVMRieBp
         3Paw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532A/0jdnwrc/wZBMfUMQ4z4F/8IOqMATvGmXxLckdHSoQOGnlwj
	gEIzdNrfjobfHcyDQdTfrn8=
X-Google-Smtp-Source: ABdhPJwJ69eSegkUiqRN1gVQ80PlNOEQL41IvsczgsvhMnip2HRVLTv3IXNuDYxLs9kYSqZRszwPjw==
X-Received: by 2002:aca:6041:: with SMTP id u62mr24905461oib.23.1625055300951;
        Wed, 30 Jun 2021 05:15:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:be18:: with SMTP id l24ls178823oop.8.gmail; Wed, 30 Jun
 2021 05:15:00 -0700 (PDT)
X-Received: by 2002:a4a:d781:: with SMTP id c1mr8086978oou.23.1625055300378;
        Wed, 30 Jun 2021 05:15:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625055300; cv=none;
        d=google.com; s=arc-20160816;
        b=yXW2UXiJEHaNv1himPr18+C6nalO21hf49LChM+WoyJvRRv5jn6hW99hvLyInvPvma
         Oozd2iqXEBnlKv7LZ2CM+SaSAVFocws9+qwBHwIx6+YHDIu6PTyPiM3pRRna2tYcbNN7
         eWBpwEZKtSvZPtNyGj2nL98KNZ2LaYUzwIG9G2CpAvWshcLrnKOeTM/o0GGENMjqI1jy
         e3T3DMFj82cBYXNUpvLZADTdswCUf0jQmZiAynpQ/uesS2R9DIyvedLNj3/DK/7qNGm8
         CE5jDFwbPzvy2YF2yHDk+c6h7yDNxHOzHbjvgXZpRlT8sWRnPpMxTpwsjwGXccr2si4Y
         3vuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from;
        bh=PCgd/+eLqEQtAVn45mEzqlUPfmOvkLY7i8DA9P3n7VE=;
        b=Q3tyHdD+9ucsEwJ2vGHfRTsu9wFBIb2gHswRAcLcAf6N258hisaD5Q1FMMN38FmXJ/
         YzL1iOlznmQwj1Q1Lez8eph2sCefig9zYfyb2TH6nkczZPG2CoQdw83A+beBNua0YiP4
         buo/UhtEkHOtDA0hFLW9JaXDQDijOUOQDZil/IBk7d2NqWOc/eZdK0lqXPWpzYQbTJvN
         qWxub4CYHX5cBOp+7oicxiZePJRnHklqCKOjFGHo8BlAlYHoAmKS3f5dPMdvl3yAm3y4
         krmn1V0Kxgr9UkLssmXa1riK8xn9FK3yda1+jZBVdY3zmjR1eNWy8CRtcbBiUNnvigJG
         8vBw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lecopzer.chen@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=lecopzer.chen@mediatek.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
Received: from mailgw02.mediatek.com ([210.61.82.184])
        by gmr-mx.google.com with ESMTPS id k24si852731otn.3.2021.06.30.05.14.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Jun 2021 05:14:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of lecopzer.chen@mediatek.com designates 210.61.82.184 as permitted sender) client-ip=210.61.82.184;
X-UUID: 16871cf3902c4b699625f046f55572ca-20210630
X-UUID: 16871cf3902c4b699625f046f55572ca-20210630
Received: from mtkcas07.mediatek.inc [(172.21.101.84)] by mailgw02.mediatek.com
	(envelope-from <lecopzer.chen@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-SHA384 256/256)
	with ESMTP id 2036288648; Wed, 30 Jun 2021 20:14:53 +0800
Received: from mtkcas10.mediatek.inc (172.21.101.39) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 30 Jun 2021 20:14:51 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas10.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Wed, 30 Jun 2021 20:14:52 +0800
From: Lecopzer Chen <lecopzer.chen@mediatek.com>
To: <keescook@chromium.org>, <samitolvanen@google.com>,
	<linux-kbuild@vger.kernel.org>
CC: <clang-built-linux@googlegroups.com>, <linux-kernel@vger.kernel.org>,
	<yj.chiang@mediatek.com>, <masahiroy@kernel.org>, <michal.lkml@markovi.net>,
	Lecopzer Chen <lecopzer.chen@mediatek.com>
Subject: [PATCH 1/2] Kbuild: lto: add make-version macros
Date: Wed, 30 Jun 2021 20:14:35 +0800
Message-ID: <20210630121436.19581-2-lecopzer.chen@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20210630121436.19581-1-lecopzer.chen@mediatek.com>
References: <20210630121436.19581-1-lecopzer.chen@mediatek.com>
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

LTO with MODVERSION will fail in generating correct CRC because
the makefile rule doesn't work for make with version 3.8X.[1]

Thus we need to check make version during selecting on LTO Kconfig.
The MAKE_VERSION_INT means MAKE_VERSION in canonical digits integer and
implemnted by imitating CLANG_VERSION.

[1] https://lore.kernel.org/lkml/20210616080252.32046-1-lecopzer.chen@mediatek.com/
Signed-off-by: Lecopzer Chen <lecopzer.chen@mediatek.com>
---
 Makefile                |  2 +-
 init/Kconfig            |  4 ++++
 scripts/Kconfig.include |  3 +++
 scripts/make-version.sh | 13 +++++++++++++
 4 files changed, 21 insertions(+), 1 deletion(-)
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
index a61c92066c2e..9f2b71fdf23e 100644
--- a/init/Kconfig
+++ b/init/Kconfig
@@ -83,6 +83,10 @@ config TOOLS_SUPPORT_RELR
 config CC_HAS_ASM_INLINE
 	def_bool $(success,echo 'void foo(void) { asm inline (""); }' | $(CC) -x c - -c -o /dev/null)
 
+config MAKE_VERSION_INT
+	int
+	default $(make-version)
+
 config CONSTRUCTORS
 	bool
 
diff --git a/scripts/Kconfig.include b/scripts/Kconfig.include
index 0496efd6e117..f956953d0236 100644
--- a/scripts/Kconfig.include
+++ b/scripts/Kconfig.include
@@ -63,3 +63,6 @@ ld-version := $(shell,set -- $(ld-info) && echo $2)
 cc-option-bit = $(if-success,$(CC) -Werror $(1) -E -x c /dev/null -o /dev/null,$(1))
 m32-flag := $(cc-option-bit,-m32)
 m64-flag := $(cc-option-bit,-m64)
+
+# Get the GNU make version with a canonical digit.
+make-version := $(shell,$(srctree)/scripts/make-version.sh $(MAKE_VERSION))
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210630121436.19581-2-lecopzer.chen%40mediatek.com.
