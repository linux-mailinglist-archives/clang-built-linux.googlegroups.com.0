Return-Path: <clang-built-linux+bncBCN7B3VUS4CRBNEQ7KDAMGQE5MW2SUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id C024A3B9B0D
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Jul 2021 05:29:57 +0200 (CEST)
Received: by mail-io1-xd38.google.com with SMTP id w22-20020a5ed6160000b02904f28b1d759dsf5842486iom.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Jul 2021 20:29:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625196596; cv=pass;
        d=google.com; s=arc-20160816;
        b=Cc6lSCIc5IxZ4K89xY80vcdjWVFlhvnJp19esu9L0V/GKb6U7n3t1GpPm4I3MQ5696
         X7sHMs4qT6DtQ+SFe1l7PCq4SobXZ6MzxC/7EQyPMF/ym/Db+McVyM65gg71sb8rLCcJ
         xIdr/C7pen7lU0/moYMRnQ0uGua7N8MatqSRAgeCQfONbKw2lFeRLl9OkY8lPFlJ41L1
         9JKCPD1Xv/CKcOBFfK8FOBIz9D2la/DIguV/oDKEbI2HygPoW6LObDfHjnE7TrqUPm0k
         e6OvNUFmeRaV10UTuhZsC+z7hAZg8Jxd9o6/RyVs71hlnny8HCcCSAZSXDNmhFbBdX9R
         1p3A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=njkuAJktwddkxF8UdgDMLy6zdMiJrU2xtU0kTTXeanU=;
        b=kz+BitEAFwT4iEsPr4nz6aSw8s2zZRqduwX0KHK55yyeMZU6DS6H92Y/lqcRlyiSP3
         rjRadYEAk3daS/w+WyDNF9lr7qAShUxuFqMhYXSQKnIXIu8Qns+X3mVxRMlCTcQqazhc
         xghxoZfUZTHN1DlNA5dD9PK/Fpa4Z4GpY35fOYYiyZf+kO65zgOYWuvGHh4Wv24cu9UW
         ItBLQnuHY58pz6O7JLBxdQpHBMsnNPMm0hRaS4JCpv0CqmJ0uxZYaPXzrDoaYIePLUFM
         oTAh7jciImyT5gHcGvwJyzoY5AdrzylqTNdSUt4wap4ADQdUQAo5YsGf1Eimc/84Lb64
         VY9g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lecopzer.chen@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=lecopzer.chen@mediatek.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=njkuAJktwddkxF8UdgDMLy6zdMiJrU2xtU0kTTXeanU=;
        b=JfhAUt+dLmwzZDh216FAoaP60LOQyWwmphJY4Pj+CnpC1BGPbjoRAxhqL0Ru6rXrbf
         PlW3nLNzy0hxhVJ1ezD6mpgmoknSMoE1fToRZRk72UXFMTigxLb+Z5MVUHfaBzqc1BQu
         73X+tBmh3I+udL23clMQ3iG8ri3rH9LigbIJlVjllCVuAtuFHowS8Z+yfHOCSkx+jWht
         rpAbymJWfPpt7JDqZ0fMmIvKA4sFj4A0yFwWQJxu8IW7tlkanW13Fs7Z2u/UDr05Bp9p
         de3QBAXl0pyyOicM14nP5AngYDW2F2BPSA6/TgAbDk4N7V9ooXB4f45+XXOc4Z6RH58d
         Hxdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=njkuAJktwddkxF8UdgDMLy6zdMiJrU2xtU0kTTXeanU=;
        b=M6aFU3SkCZQQUSSbvXaXzQ8w71qK/SR2xRRIKWPyklJISPG1WvxeRSquTamlTKnMH4
         xmo7x1yjfg8AV69i6otFS1Hvao6V38BfqbU3Yn1sEWfphUCEKODJKH7iVhEtBAaFqdMH
         g3TwQKKHiejmFCBmTN0VvP3hrRUQdrYwKauF6yeh7q3FCmr2LDCIYS/zMymi2rsLZAps
         BNjSB6bmozyUnf+2Lz4WDre7M7cRSeLTAM5JrZCw9TYTNn20jJxAm8If9X58PG1GHv+Q
         BX+lzr3OWaNaEWT3xhCAJN2Ln05m05fSZ3S1fDjAkLywRb1Gm6gQOzHcQcbHJiisHNBR
         W0lQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530s3+eH6qU7yaZrux/WWZjc5lB/deFXe3PnNbN71nVKNdMPIE7I
	1rwNYyzGa/Nmvn5F/F9wHDw=
X-Google-Smtp-Source: ABdhPJzhMQk7i1mUZ/kRkKni0Q6p4vw/+AUopbByO8ljfX2wk7t6AsRkA1jxY5yazZbeyT6LF/7MPQ==
X-Received: by 2002:a92:c690:: with SMTP id o16mr1858802ilg.29.1625196596312;
        Thu, 01 Jul 2021 20:29:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:3414:: with SMTP id b20ls2172087ila.3.gmail; Thu, 01 Jul
 2021 20:29:55 -0700 (PDT)
X-Received: by 2002:a92:c84f:: with SMTP id b15mr88235ilq.27.1625196595855;
        Thu, 01 Jul 2021 20:29:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625196595; cv=none;
        d=google.com; s=arc-20160816;
        b=wgruHzdV8rmM249LvVNAKtRx2qZp/3ESfsHxTWhzHaiCgQ7/34QcVZqvIS6KDTRiHl
         W28RUMwHd9JCcSpTn1qaXgbM+YIZtx9MlOm9+Rrb7r/mQ54dmZAjyzDvVVh03etOq7cX
         JKfJY7UTkN3OPLqtDQQ/P2Apky00CNx8T32n9QWnGYNeDdwfRXPX9tsqkkd72D20khVA
         HQx+Wc30N4e7N1IgnorBWTQnvm6P7KA0fBS020ZMbXRVqlP6Q/wUUqGEp2hwqAsfxYB8
         Cpk+/7nS8O8DPWt1zqNCiJ6rib/jlF5gLxVQFyPDNEzVvDD4XKmByMhPrE2AFH1JIs08
         +C8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from;
        bh=guvPEGmjhFyUVoEx79EhwvR7YWqY1Gknzi8Exx3/3V4=;
        b=zbH7rFSH2MfeWpV7mh0oU/643dgOmDtF7WH/DLj7bZQ3bkqQj8XsXSoitfpzOEddZT
         gLXyGeHamaPyVnMEYNwTpcZcFBa5PxT4wE31DYCxZyZgBtc9SCOkpPbX2xMmWuPnP3Eu
         4ZhPzlcKOCqSDWZYsegY6jPTSFRVSFlIWJVN43dwjb5qgIutT2tGBd3nb7E+jF3pmag/
         k0VB1ztYpFK4Sg8WhRQtDQsXzSuCFmTRqgupOqIQ07p7qQd5u1/ejtb1LbkgXGE+foGR
         eLGFw1egYRjuQFxUdbo2pWD8xJ1+4XmQFyIIuSXgdAS466cS076U0z9zqBbnikTdsWtX
         DOOg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lecopzer.chen@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=lecopzer.chen@mediatek.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mediatek.com
Received: from mailgw02.mediatek.com ([210.61.82.184])
        by gmr-mx.google.com with ESMTPS id y14si123455ilj.1.2021.07.01.20.29.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Jul 2021 20:29:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of lecopzer.chen@mediatek.com designates 210.61.82.184 as permitted sender) client-ip=210.61.82.184;
X-UUID: 444f03f430da48548f0351d4d845e019-20210702
X-UUID: 444f03f430da48548f0351d4d845e019-20210702
Received: from mtkcas07.mediatek.inc [(172.21.101.84)] by mailgw02.mediatek.com
	(envelope-from <lecopzer.chen@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-SHA384 256/256)
	with ESMTP id 1383365218; Fri, 02 Jul 2021 11:29:47 +0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 2 Jul 2021 11:29:45 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Fri, 2 Jul 2021 11:29:45 +0800
From: Lecopzer Chen <lecopzer.chen@mediatek.com>
To: <ndesaulniers@google.com>, <keescook@chromium.org>,
	<samitolvanen@google.com>, <linux-kbuild@vger.kernel.org>,
	<nathan@kernel.org>
CC: <clang-built-linux@googlegroups.com>, <linux-kernel@vger.kernel.org>,
	<yj.chiang@mediatek.com>, <masahiroy@kernel.org>, <michal.lkml@markovi.net>,
	Lecopzer Chen <lecopzer.chen@mediatek.com>
Subject: [PATCH v3 1/2] Kbuild: lto: add CONFIG_MAKE_VERSION
Date: Fri, 2 Jul 2021 11:29:42 +0800
Message-ID: <20210702032943.7865-2-lecopzer.chen@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20210702032943.7865-1-lecopzer.chen@mediatek.com>
References: <20210702032943.7865-1-lecopzer.chen@mediatek.com>
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
index 000000000000..3a451db3c067
--- /dev/null
+++ b/scripts/make-version.sh
@@ -0,0 +1,13 @@
+#!/bin/sh
+# SPDX-License-Identifier: GPL-2.0
+#
+# Print the GNU make version in a 5 or 6-digit form.
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210702032943.7865-2-lecopzer.chen%40mediatek.com.
