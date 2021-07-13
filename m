Return-Path: <clang-built-linux+bncBD763O5S5UARBT4EW6DQMGQEAMAHK2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id F017C3C751D
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Jul 2021 18:41:51 +0200 (CEST)
Received: by mail-lf1-x139.google.com with SMTP id z13-20020a056512376db0290329474fcc99sf8059592lft.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Jul 2021 09:41:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626194511; cv=pass;
        d=google.com; s=arc-20160816;
        b=qMb1j2sZ+0+x1aRSkfHN13oy5B/E2S4AYt8sWLvgX7R2np5BNy+wmHdwYnM4ggD74e
         grHdDD3aRomhUzWjTBEtqaJF6Z1Qsv0nvXIBlr60eTp4xcEaB/U9M4veOObtAaUEQpRs
         Wn5yZPMDihZ6w2ixV/K5CDKlclpAlbgFwM2fB0aQei82oRqU9SrsfI1LxJtaqfpICyWv
         s9GJpOBtCNK2zzge/BEMrSPM+D2KQ2TyY83qP3a9AQNzQpvpz7ToABKU2deJOlnLC/Qd
         KZdtSqYkgRSbpIhZnH8jfL3VE8vCkZo9dbt6Aue5XCRoujsIcFV8ZgOP7L9kK7zYoSxW
         Vqtg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :mime-version:date:message-id:cc:to:subject:from:dkim-signature;
        bh=CkQXnWpqJDc0ZVQz6gahWZm+M7iXH1wIpvBhTJlvMks=;
        b=SBvmcaHSqDb7XvjZi3sBtgWir1A4mcxzyhaWnB7vRhgSIOdvAZECB332OFaCUZOinL
         YzE99dHhH9HrgkDhUqymwJkhfFF3bFMSQ2cjCEuogS76S2gtwuxdLl1/G8EtCzt0cOqp
         kuX9Z4Am1dzmroA40hiYnoq0vyxSD8/E/Xg5IXE8pYKrRhAWUccrjQyZ0nGr2/wCoS3l
         kZC3F7J/xCtwzfo6x1eflwpXD2jPPlehVIiW5zvl2JlegUuEqqPNc1FohkivfxT0Ktm3
         R3OJEtqq6QBoO6i7RVbx0EKdGny3PDKI7rsQzvZ3o5jTT0rdWarYd7MBUkCGm/iA6RF3
         qNuQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b=L3LEee6P;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b="oVta/ZFq";
       spf=pass (google.com: domain of torvic9@mailbox.org designates 80.241.56.171 as permitted sender) smtp.mailfrom=torvic9@mailbox.org;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=mailbox.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:subject:to:cc:message-id:date:mime-version:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CkQXnWpqJDc0ZVQz6gahWZm+M7iXH1wIpvBhTJlvMks=;
        b=PPgJbeU08QIDr90ocQ0htdDi2t7yD+mxGSJKflPiltzD2r0eyvBMC1h6kTDJiz7xEW
         ejy2V85N7M4BJq77t+nfiFXRXkq6W4wj/uB4YNUGOv7Yfj8Sq1DCSD6jPYHRowd1q5nH
         19KY6DQrd2wSj0/KACrkAFdicF4skyYZDZCs1BsabKG9/bYS5OwTY2gqozBfm57wwA+2
         RyPAshb71IYxFWvIAYqje78s7vqPhMlGNxS81OMZYkdQ8YGRh08iVDMyiWRTm1HlcPMs
         aTU0o/Q068nUha0JbMSopd7ZwuI+WCr0xk0xIPQ2xIiC3Q1EDTpacU8KoLQOlahn48qM
         LaRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:subject:to:cc:message-id:date:mime-version
         :content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CkQXnWpqJDc0ZVQz6gahWZm+M7iXH1wIpvBhTJlvMks=;
        b=O+dXwUuz2pZ1xMfy6SohAuLvzqqynY3TueHjEeRtxN2r3MgG9mLEVq/P4IHZ1OsMPN
         tCTjrcr0B0ETAzPovZC79QaGcgWiHaFQtVa3J8Ev8SMq8C51E9DsFAjccV4mMfbo3o4Y
         AEc16xPFjJqy60cbWv8u1NAJRcLpS2IcVcB8reKQH8FewX12rIfiEqntPp6pBbY/icvA
         El/X9eYyegDsJnaa0qhvBA8hrClJ7uoQpXWm0SK6g0vRMSRH/xdD7VffOC6TNu9OGFxC
         Ug5JmuJ6fY+Op1lJLKqBv5qhO5LmTG4RSCG2HtlovWVXdnKl6PBHdR7Ojc/yYjszGhwy
         uLyQ==
X-Gm-Message-State: AOAM5307Fobx2zS6r50sATagKNEQinR5uc+NxiC8DaNVFG4J7BTWNUaK
	tDMkBUvgB14FT9RR8I/eO3E=
X-Google-Smtp-Source: ABdhPJzFknfodfXCAtCx+5R1c/D1gQy/Dgk+E1K+lE7ewR9iXmj2QZe8H/aKmRhTZFNnUrX2GTIb1A==
X-Received: by 2002:a05:6512:1cf:: with SMTP id f15mr4230665lfp.261.1626194511306;
        Tue, 13 Jul 2021 09:41:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:a783:: with SMTP id c3ls4214548ljf.2.gmail; Tue, 13 Jul
 2021 09:41:50 -0700 (PDT)
X-Received: by 2002:a2e:8e74:: with SMTP id t20mr4847540ljk.397.1626194510273;
        Tue, 13 Jul 2021 09:41:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626194510; cv=none;
        d=google.com; s=arc-20160816;
        b=nHJHbngIZdk6NuhbSMcvZ77TkhNbAk5s2mzVB4es2150mqBEbLcLShbZp35ijUYPRY
         sXATFqbQDyemPVzswLkvrpAm3zGlwZY03rbP6Un48qzXtWJgty74AlJhjOZDQ21GgCRc
         q0M3sQCWw0TbcShXgj3MVyXiPfMWn2yBY90DLfdigZeQ3U4QpMnwloOjpuR/W9jwor8v
         +lkANMMDDOqIJi86eIZxhH39JMg2XyfTnKphJjrOrD0Wz0kxILDlSLkubs2SpS0P9ydX
         qFHFT0wgqqjgmv+GQwqWM+I9H1mf06WWx/fPMxxxpxzEPPZASVap+UgLDWun0T/yO0WW
         9O6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version:date
         :message-id:cc:to:subject:from:dkim-signature:dkim-signature;
        bh=AdGwqYiU2Exy6QI/bwNjAGF2kjHGEu0qjw5lXgO0IGQ=;
        b=jOSxq0oFgQiayMgsdav1Bla2X7kgGVf34ZPdxlFasu+IpUIoBZypTif4Q/kIEUFDTz
         XLe35ua8WqZPknzTMDDYOuX6hZ5XGd46Vg3j3YaVJ0BPU7mh2rX2PvnV83qdiwrAqSx8
         aiJLdLuslhJENtthM9NOSstR0s5hWeLVxuhoFdW/U/CpBqJZGMvrN1ImXtNiegjqa8jv
         MBvaqJo/q7c2jPfayu7ybew8TkgFR8Ubx5pZ45HzAvmrUTZLiuuZz8SG6sS42GrxbXkP
         qsUsUtmdYj3YigSh/8dqhNPTqHMWyPSkzgmxVV849YoECsOoiSiKiSC2oDCbbZfjFgdk
         6qSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b=L3LEee6P;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b="oVta/ZFq";
       spf=pass (google.com: domain of torvic9@mailbox.org designates 80.241.56.171 as permitted sender) smtp.mailfrom=torvic9@mailbox.org;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=mailbox.org
Received: from mout-p-201.mailbox.org (mout-p-201.mailbox.org. [80.241.56.171])
        by gmr-mx.google.com with ESMTPS id u17si878533ljg.6.2021.07.13.09.41.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jul 2021 09:41:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvic9@mailbox.org designates 80.241.56.171 as permitted sender) client-ip=80.241.56.171;
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-201.mailbox.org (Postfix) with ESMTPS id 4GPRHK3bh8zQkBw;
	Tue, 13 Jul 2021 18:41:49 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
	by spamfilter04.heinlein-hosting.de (spamfilter04.heinlein-hosting.de [80.241.56.122]) (amavisd-new, port 10030)
	with ESMTP id Bf6s8kN6VwLN; Tue, 13 Jul 2021 18:41:46 +0200 (CEST)
From: "'Tor Vic' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Subject: [PATCH v2 1/1] Kbuild, clang: add option for choosing a ThinLTO cache
 directory
To: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 masahiroy@kernel.org, Nathan Chancellor <nathan@kernel.org>,
 "ndesaulniers@google.com" <ndesaulniers@google.com>, keescook@chromium.org
Cc: linux-kbuild@vger.kernel.org,
 "clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
Message-ID: <a6eea2c4-6d90-3ddf-33d6-973d1ae917e7@mailbox.org>
Date: Tue, 13 Jul 2021 16:41:38 +0000
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-MBO-SPAM-Probability: ***
X-Rspamd-Score: 3.69 / 15.00 / 15.00
X-Rspamd-Queue-Id: 478F21819
X-Rspamd-UID: 1fac34
X-Original-Sender: torvic9@mailbox.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mailbox.org header.s=mail20150812 header.b=L3LEee6P;
       dkim=pass header.i=@mailbox.org header.s=mail20150812
 header.b="oVta/ZFq";       spf=pass (google.com: domain of
 torvic9@mailbox.org designates 80.241.56.171 as permitted sender)
 smtp.mailfrom=torvic9@mailbox.org;       dmarc=pass (p=REJECT sp=REJECT
 dis=NONE) header.from=mailbox.org
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
Changes from v1 to v2: remove unneeded changes in scripts/Makefile

 Makefile     |  5 +++--
 arch/Kconfig | 10 ++++++++++
 2 files changed, 13 insertions(+), 2 deletions(-)

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
-- 
2.32.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/a6eea2c4-6d90-3ddf-33d6-973d1ae917e7%40mailbox.org.
