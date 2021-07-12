Return-Path: <clang-built-linux+bncBD763O5S5UARBFWGWCDQMGQEBFM4F2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 28F693C5B26
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Jul 2021 13:10:15 +0200 (CEST)
Received: by mail-lj1-x23b.google.com with SMTP id b3-20020a05651c0323b029018ba0baeb6esf2078923ljp.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Jul 2021 04:10:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626088214; cv=pass;
        d=google.com; s=arc-20160816;
        b=emsCrICYYrBBPcfgQ/4TEk0G6iWfBEQLw871RnTltXF7caBCb9XVavvH1fO8+QfPCE
         vjTQ9TnPE7iu31wZn03kVgegSqBggyLYrSMdOYE3da7kIwYE+UpHQqWx8tO4DTDcpziz
         H/eFAv8UGLKjiUgZzCNqYMakZpznKXsYNKz/3WkPBeHCrLKFWdXka1QrruW850RiXI7p
         /5C0guUtZ4T/TDLV1iMXKeOqAwc0hSirnolY2VhY8RZmxVGZ3PX+Vjqk2S0L42v9YP3U
         je4JrsGVDYPtc1TFVhfTOX2yevYeQZjk3IxnD94HbQbn2gV6yFs74lIyNMzEh0P1OTtX
         z0/w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :mime-version:date:message-id:cc:to:subject:from:dkim-signature;
        bh=m5sOyNJmlIXF8Yj2TIzyGrNW+n5dNLekb0a8V4qg014=;
        b=NsMtgHzWOJCG6vLDsHwBo0q23TK5fNDT9Ki9TnoNbfa1q8ZhZwsX0qqska+WEN07rC
         qPoGSQyA+w2eBK1Wgl2ry8SqF0/NvHYSXr2ZYMwsi1kuMysTWR6sH5VCzs9q196EPIS5
         oTOxOrLG8uxPa9GBnM3GBL7hetfdwTAL7aQUPlJytalNJag30tc4nnWIPvWwlhyGgyr/
         CxE18VMyliX0EdNTFGufa1DGfqXQlgaLc46C8D6GtMFlcerxuP6YNnpqL3yeKQ1wjY1Q
         8UcO3ABiRa05zGca62CMIqDGNfNGqwDPExj5ssrPppsUmFomBBrhFALnsWxL1xwuAgf7
         1FuA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b=n1hP2uZj;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b=j30PfgR9;
       spf=pass (google.com: domain of torvic9@mailbox.org designates 80.241.56.172 as permitted sender) smtp.mailfrom=torvic9@mailbox.org;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=mailbox.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:subject:to:cc:message-id:date:mime-version:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m5sOyNJmlIXF8Yj2TIzyGrNW+n5dNLekb0a8V4qg014=;
        b=VuX8tpfH/umWdjDuhvqRJhZ0Hir/n1e8MS9zgMvbqrHbZpUpAB34MUZej5Me+zEe9E
         toYi3YBCKwJaq2SoAjoYRz2EYvMK9IdnuyqeZDix+eB+T4ONOa6c/R/l5hAYZ+OrOppW
         IdAZV+O6sCn0mH1Et2HxAW1j7CbVXbOW9Offxmm9w9/hCtOIJlzJYx1WAFPvacjFvVcv
         DXsd26CNXMMhJ/x2stZm7FK3EKa8d1nZKN+oPqJRtVg+NSO2X+kt82z6NxHCEexPN4LL
         ccJH54OCQjlEAZm/vZzo9qgYCcDx3h2TDtWM6rI2oji4Lqxu3LnSRoHsRj05NgNylfu7
         ygZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:subject:to:cc:message-id:date:mime-version
         :content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m5sOyNJmlIXF8Yj2TIzyGrNW+n5dNLekb0a8V4qg014=;
        b=OXbqn7AhPfAjrkPMh4OoliAA4o2UjEz5cuYmFABnsAnuXpuQpNbFtqZF+K34QDdGQa
         X0SJj18oBpzWRogdCEG5lLirodXUdCmnVILC11q1BQZ2sSi/LWRgV498HMWJmYG18euf
         MtVfAme9tobagIaBByWYTDmlf+uRzoSleBY4e2gle0YAeqrH8WdJsRx6cUl/sjEKJ0cI
         7bVEM/AgFnwk3g+EOAl71jxDWsxAY6qZqn+z6QI+aFIlczE7/cvHdDzfy7aQPiWQ2gaS
         xaHmuHjrrBy3zBgA7AnqjCFzL5hygqqL+JVaqHym9SlM0X5hejemmbThCSqvGfzG+Bhn
         p13A==
X-Gm-Message-State: AOAM531jbsqkzy6Blcbe4AxLhiOTlWEIug7fnBazKCiGotM3Ztbi5W2l
	ZdwKspk3nHxpfnnn77g5rPA=
X-Google-Smtp-Source: ABdhPJzk+5SNMvaFDUO+e24RRKvmg5uWSED42IKUig2mfqqAfgRS3crmMJ8LwFmcRR5eoEuYPza7Fg==
X-Received: by 2002:a05:651c:1a1:: with SMTP id c1mr19989862ljn.308.1626088214663;
        Mon, 12 Jul 2021 04:10:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:508b:: with SMTP id f11ls427197lfm.2.gmail; Mon, 12 Jul
 2021 04:10:13 -0700 (PDT)
X-Received: by 2002:ac2:4578:: with SMTP id k24mr6495959lfm.521.1626088213654;
        Mon, 12 Jul 2021 04:10:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626088213; cv=none;
        d=google.com; s=arc-20160816;
        b=IY5uTRAFHZTKbH+vFEWj1130gqc1O7A9PV6yekym/wUp4DUXgfPInBj0X7SMNVaZqm
         6mRacZjyeBESvHbscYy3z6NGaDZq2gsMiNpEKWb5jIJvLerPj8o9rmYJ931FPoUj+ItT
         PdQxpJi+3l3ym1D/HqUWyaB+fi8bGvt77oGBlTRUcErshQZ43LH2x9PeZ11rOzolWrFk
         kp+dvhbIfmbT4kEYx/9rFTJJ+BdwBW8ZqP1zkEcs0KxU5v/w1mjb2elh8ZlAB33xVJoN
         93wFPMcC8D+BCWP4CTpBPKv6OlLZciVQCl75tCyQMBFIrz5qppPSQ/CIvi2wV3ezAe74
         +FFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version:date
         :message-id:cc:to:subject:from:dkim-signature:dkim-signature;
        bh=wOi1UYYQ8I3f24rxux4lFTLL6nRIrOruMYvcRjf03t4=;
        b=FzcAdQx6n8AVpYE8lVR1JY1k4LnnFP35MWGexzZ7XNGVgRwZ58wFNYXuvFj6Jml7Bd
         MXRRxj94JJyj7g5xn5SpJo7Ijz5IBEuzCJ8GNAFJTDYCayZ5OPsLZfKQvb5NQqVNG18/
         7kDgKncBlIx2C1gDSl5Ff+nN13oU9YGGc4wLtQWLKqLKspSkeoBO4oFcu9SWHm00Q88t
         zdAxL31r55cCgFvrROhjkVerM76gY532CqOLypXtZiDdLgz5+pqNThBuSZlWZBhA+yIS
         X165n8kDwosLzEaPI99MjUwCn1HktvrYLkSkm7+dLnPhLPdCduOexvN2bjjaW6cRVsCj
         GYsQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b=n1hP2uZj;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b=j30PfgR9;
       spf=pass (google.com: domain of torvic9@mailbox.org designates 80.241.56.172 as permitted sender) smtp.mailfrom=torvic9@mailbox.org;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=mailbox.org
Received: from mout-p-202.mailbox.org (mout-p-202.mailbox.org. [80.241.56.172])
        by gmr-mx.google.com with ESMTPS id v138si644484lfa.6.2021.07.12.04.10.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jul 2021 04:10:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvic9@mailbox.org designates 80.241.56.172 as permitted sender) client-ip=80.241.56.172;
Received: from smtp2.mailbox.org (smtp2.mailbox.org [IPv6:2001:67c:2050:105:465:1:2:0])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-202.mailbox.org (Postfix) with ESMTPS id 4GNgz86l8BzQk9Q;
	Mon, 12 Jul 2021 13:10:12 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
	by spamfilter06.heinlein-hosting.de (spamfilter06.heinlein-hosting.de [80.241.56.125]) (amavisd-new, port 10030)
	with ESMTP id tO8fHc4YlX90; Mon, 12 Jul 2021 13:10:09 +0200 (CEST)
From: "'Tor Vic' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Subject: [PATCH 1/1] Kbuild, clang: add option for choosing a ThinLTO cache
 directory
To: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 masahiroy@kernel.org, Nathan Chancellor <nathan@kernel.org>,
 "ndesaulniers@google.com" <ndesaulniers@google.com>, keescook@chromium.org
Cc: linux-kbuild@vger.kernel.org,
 "clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
Message-ID: <b45b2430-3670-b310-b6ad-2d6db50c2d18@mailbox.org>
Date: Mon, 12 Jul 2021 11:10:04 +0000
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-MBO-SPAM-Probability: 
X-Rspamd-Score: -6.54 / 15.00 / 15.00
X-Rspamd-Queue-Id: 88D25182B
X-Rspamd-UID: d25e57
X-Original-Sender: torvic9@mailbox.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mailbox.org header.s=mail20150812 header.b=n1hP2uZj;
       dkim=pass header.i=@mailbox.org header.s=mail20150812
 header.b=j30PfgR9;       spf=pass (google.com: domain of torvic9@mailbox.org
 designates 80.241.56.172 as permitted sender) smtp.mailfrom=torvic9@mailbox.org;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=mailbox.org
X-Original-From: Tor Vic <torvic9@mailbox.org>
Reply-To: Tor Vic <torvic9@mailbox.org>
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

On some distros and configurations, it might be useful to allow for
specifying a directory where Clang stores its ThinLTO cache.

More specifically, when building the VirtualBox extramodules on Arch with
its proper 'makepkg' build system and DKMS, against an already installed
ThinLTO kernel, the build fails because it tries to create the ThinLTO
cache in a directory that is not user-writable.

A similar problem has been reported with openSUSE's OBS build system.

Add a Kconfig option that allows users to choose a directory in which
Clang's ThinLTO can store its cache.

Link: https://github.com/ClangBuiltLinux/linux/issues/1104
Signed-off-by: Tor Vic <torvic9@mailbox.org>
---
 Makefile                  |  5 +++--
 arch/Kconfig              | 10 ++++++++++
 scripts/Makefile.lib      |  4 ++++
 scripts/Makefile.modfinal |  4 ++++
 4 files changed, 21 insertions(+), 2 deletions(-)

diff --git a/Makefile b/Makefile
index c3f9bd191b89..472bc8bfff03 100644
--- a/Makefile
+++ b/Makefile
@@ -932,7 +932,8 @@ endif
 ifdef CONFIG_LTO_CLANG
 ifdef CONFIG_LTO_CLANG_THIN
 CC_FLAGS_LTO	:= -flto=thin -fsplit-lto-unit
-KBUILD_LDFLAGS	+= --thinlto-cache-dir=$(extmod_prefix).thinlto-cache
+export thinlto-dir = $(if
$(CONFIG_LTO_CLANG_THIN_CACHEDIR),$(CONFIG_LTO_CLANG_THIN_CACHEDIR)/)
+KBUILD_LDFLAGS	+=
--thinlto-cache-dir=$(thinlto-dir)$(extmod_prefix).thinlto-cache
 else
 CC_FLAGS_LTO	:= -flto
 endif
@@ -1728,7 +1729,7 @@ PHONY += compile_commands.json

 clean-dirs := $(KBUILD_EXTMOD)
 clean: rm-files := $(KBUILD_EXTMOD)/Module.symvers
$(KBUILD_EXTMOD)/modules.nsdeps \
-	$(KBUILD_EXTMOD)/compile_commands.json $(KBUILD_EXTMOD)/.thinlto-cache
+	$(KBUILD_EXTMOD)/compile_commands.json
$(thinlto-dir)$(KBUILD_EXTMOD)/.thinlto-cache

 PHONY += help
 help:
diff --git a/arch/Kconfig b/arch/Kconfig
index 129df498a8e1..19e4d140e12a 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -696,6 +696,16 @@ config LTO_CLANG_THIN
 	    https://clang.llvm.org/docs/ThinLTO.html

 	  If unsure, say Y.
+
+config LTO_CLANG_THIN_CACHEDIR
+	string "Clang ThinLTO cache directory"
+	depends on LTO_CLANG_THIN
+	default ""
+	help
+	  This option allows users to choose a directory that stores
+	  Clang's ThinLTO cache.
+	  Leave empty for default.
+
 endchoice

 config ARCH_SUPPORTS_CFI_CLANG
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 10950559b223..bca87a6aa35b 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -197,6 +197,10 @@ endif
 part-of-module = $(if $(filter $(basename $@).o, $(real-obj-m)),y)
 quiet_modtag = $(if $(part-of-module),[M],   )

+ifdef CONFIG_LTO_CLANG_THIN
+KBUILD_LDFLAGS	+=
--thinlto-cache-dir=$(thinlto-dir)$(extmod-prefix).thinlto-cache
+endif
+
 modkern_cflags =                                          \
 	$(if $(part-of-module),                           \
 		$(KBUILD_CFLAGS_MODULE) $(CFLAGS_MODULE), \
diff --git a/scripts/Makefile.modfinal b/scripts/Makefile.modfinal
index 5e9b8057fb24..ab0d72e21318 100644
--- a/scripts/Makefile.modfinal
+++ b/scripts/Makefile.modfinal
@@ -35,6 +35,10 @@ ifdef CONFIG_LTO_CLANG
 # avoid a second slow LTO link
 prelink-ext := .lto

+ifdef CONFIG_LTO_CLANG_THIN
+KBUILD_LDFLAGS	+=
--thinlto-cache-dir=$(thinlto-dir)$(extmod-prefix).thinlto-cache
+endif # CONFIG_LTO_CLANG_THIN
+
 # ELF processing was skipped earlier because we didn't have native code,
 # so let's now process the prelinked binary before we link the module.

-- 
2.32.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/b45b2430-3670-b310-b6ad-2d6db50c2d18%40mailbox.org.
