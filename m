Return-Path: <clang-built-linux+bncBCN7B3VUS4CRBUMV62DAMGQE766WNCI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CDEE13B8FC3
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Jul 2021 11:28:50 +0200 (CEST)
Received: by mail-il1-x138.google.com with SMTP id a5-20020a056e020e05b02901ef113bb0fcsf3618329ilk.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Jul 2021 02:28:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625131730; cv=pass;
        d=google.com; s=arc-20160816;
        b=zsu+IjtfIIxt0xqqY+o9XfU/F3qnNI4+aLSYrDhZ6sGo7OS/6LPkqKKBwn+kDdyb6N
         aEtYnC/6Iv+jgkpvnUQp75CPcZhS9aouOT7e76SjF2e4sWuBXvwCBFwuxzEcKdEMI/9w
         +yXI/o5JVS58FqFFZKrRw8Dmkjd/IhVzg9zfGhIr92uqysSOue3lDaUik90iH507Qmw1
         wIR/46BbsTmVtqNhl6kCfHuzTMAu2/jJcsrdHqIeEC4I8xh8B6fIGATp20ANAtH8wZ2V
         ZcmtdvEmJ6wgElbrPAve8UWAB/s2kgembBKCpCY4xJVisO+TCNjexxJPsAxcbNu5lyIQ
         rJsQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=bkKY0eVl1upqZeo8kKTbCbmENAxohxYyRWNkAFinTr8=;
        b=mmPAHWwpr1keAe5AfYrrjFdo4Vaou60sMC/H4Ojd5ax7M4h54J/c4kLDHJoScFBgGZ
         HNG+1RA1qMjNOg8Gi49VL5Y6GN5IrqS1b0TwDLqaX9U7/fKpmnm1I+UkrZ9hS+blOqbn
         mH4hUN+gaH2z5w8U8aO9ywB8Atl1rlwgHvYGy2DOL3Ne9720DVk0Uy41uk+D1jmF5ajq
         /Zx6Q/yu8TqbHZk2zeMb2Cl5s8NXp0XpqeEQ3+BKa6cc3yOyf3k8HoqNjmF162ZfTPvG
         8kYXEhNLHskXWnBARAwM0Hay/pa+szMuclLPm2soEv/qG4YCIP2c2bZf0o5LBOoo0Aw2
         omqw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lecopzer.chen@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=lecopzer.chen@mediatek.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bkKY0eVl1upqZeo8kKTbCbmENAxohxYyRWNkAFinTr8=;
        b=KhnWC6jfKL6jZ7kUieUqSGR8aOFSHUrqCcvfZespZC96TvXwXxeAp2CCZrT6nXXFNw
         1lNxwomIBo6XXjizxpa1nCy/NqSPp3mmnbRtSsDxvrXPHjj18zVCqMpBA2o1gQfzccoq
         ags31RodsWW+7sfFaYfbeqVRHq2hklT8/SPeKFQ13tflfXcDA5h17a18qj5fQrBIdUi9
         EiyDwR+bteoFq1gQ5oiGnrDCptaqIZHnPMvxbyvO+e+ZXnPuwLiv0Q1eu+KPJrD4Zamg
         aVzFoEDzUUMzx4JEKbA3J6Qm4YawtYU3rMg4byNERa6t5YxeyNX5G2yxL8OEcLpVS/8B
         4s1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bkKY0eVl1upqZeo8kKTbCbmENAxohxYyRWNkAFinTr8=;
        b=SWCyt9si2xb5j4VMwl8qr0XpSn/h+CvQFbNQJF/5lIx7hb12m6dFITdFasrTQ7QFVO
         BcnwJ6vcI31APMalBmw5380/fXkadAMKHEVELqUKSL7N+UcULf13IDi0KhS/jA0BVs0g
         pM15BV32xCOA5wnlS/8mEbWhKQbkURBXqKbUVpyJiwX81Gh+IFl/upkzbzgrZ3ZblzTa
         HmuXyuH1yqrp4JoMYja0/IEHJ45M8B3Z1C5+VzMMjaPeJRN1rufiA5yP77rywqp9CO5l
         qZfH9iiBqVy8Mwbag2gc7BywB6JrhlvZfFGrI1nPomv08cgVicX3RwPXikuRVsGP01uk
         ylUQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532R0uGvxU8BxUYXyQlh3FYqyQoS2BJSqLgf4BDMspbiunhJDR9m
	xDvXrSmCU5gtmIWN5UcflBg=
X-Google-Smtp-Source: ABdhPJyiiw+DrKQpQjzm8jBSXh3YrWEu7KVMPloV89R13ovxahaamsuqpDgAaHC+5By5oFET0rQ/yw==
X-Received: by 2002:a92:874a:: with SMTP id d10mr27795931ilm.145.1625131729891;
        Thu, 01 Jul 2021 02:28:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:670d:: with SMTP id b13ls1449152ilc.0.gmail; Thu, 01 Jul
 2021 02:28:49 -0700 (PDT)
X-Received: by 2002:a05:6e02:1d94:: with SMTP id h20mr9323930ila.125.1625131729447;
        Thu, 01 Jul 2021 02:28:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625131729; cv=none;
        d=google.com; s=arc-20160816;
        b=i5HZUnNfvAgQf7PvWCfekpFcKSF3gK44lG5LsEQxkN7jkWY8YEnOCaUJAMmx4FR+CG
         sNegzaOOV4hx3QoLOHz7Mr9xeRema/UerY4EUyz3EdHM/FLvtlfynunIEsTxgLSd4Xpk
         sKuP/uW8hwfyoelI1ckMPHAHEjUjeM6/SozUeFxDX8x1JfgyD00pt7AFYk8i2sttEl8+
         dwwVkJ/qLM4tV36tpUBlgLjQ3us6/JAFi9C5zEDuMiOr0Am2oI5R9yYSJBba24Y8limG
         DDRlGdreA3+eidbH5DqFUQGRhAlR3u5qtXPWta334j12lgj6WiM8jdggKKB5ru/Q6SG0
         ZBng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from;
        bh=MwQIr837SxlYRV9+gLxL5FMtkXKHJGQpLcZzAyWk010=;
        b=avZVZWKCgUMKD27gpnjdg4qCKtGuNQfuwfQ53GntQaIZwL8aHWo/nUVb63f6F2G5DK
         7chHeauNZHPfhBuLh4TqQ0Ji6RGEPyoPOOJ7O86NQ6RP63eowvclN++lI8H7CkkHtsrX
         b1V7gCiFPXvMb7zNQVaj10RP1nF9ikr5ifYyqpuBcQ2gWfWfrcFzk7aSrsNQeEgNvlvq
         b9V4FrY+uUniQ40u0e8ygO5KYkiz0IdF/vcNgBwWYiTSEkJO2EvQvppwUFzcjmWuo41q
         D/Mt0L/nyxSetTQ/DsXYPUWKU1AHChQqkMXItxTNu3n6LykzL81+Wo7NSUbYniDoZZYm
         FAow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lecopzer.chen@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=lecopzer.chen@mediatek.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
Received: from mailgw02.mediatek.com ([210.61.82.184])
        by gmr-mx.google.com with ESMTPS id y14si723077ilj.1.2021.07.01.02.28.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Jul 2021 02:28:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of lecopzer.chen@mediatek.com designates 210.61.82.184 as permitted sender) client-ip=210.61.82.184;
X-UUID: 94d504e69d414389a1248056c35e37ca-20210701
X-UUID: 94d504e69d414389a1248056c35e37ca-20210701
Received: from mtkcas06.mediatek.inc [(172.21.101.30)] by mailgw02.mediatek.com
	(envelope-from <lecopzer.chen@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-SHA384 256/256)
	with ESMTP id 1297820940; Thu, 01 Jul 2021 17:28:44 +0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 1 Jul 2021 17:28:43 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Thu, 1 Jul 2021 17:28:43 +0800
From: Lecopzer Chen <lecopzer.chen@mediatek.com>
To: <keescook@chromium.org>, <samitolvanen@google.com>,
	<linux-kbuild@vger.kernel.org>, <nathan@kernel.org>
CC: <clang-built-linux@googlegroups.com>, <linux-kernel@vger.kernel.org>,
	<yj.chiang@mediatek.com>, <masahiroy@kernel.org>, <michal.lkml@markovi.net>,
	Lecopzer Chen <lecopzer.chen@mediatek.com>
Subject: [RESEND PATCH v2 1/2] Kbuild: lto: add CONFIG_MAKE_VERSION
Date: Thu, 1 Jul 2021 17:28:39 +0800
Message-ID: <20210701092841.1419-2-lecopzer.chen@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20210701092841.1419-1-lecopzer.chen@mediatek.com>
References: <20210701092841.1419-1-lecopzer.chen@mediatek.com>
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210701092841.1419-2-lecopzer.chen%40mediatek.com.
