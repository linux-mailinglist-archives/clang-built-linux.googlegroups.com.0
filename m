Return-Path: <clang-built-linux+bncBD763O5S5UARBN4N56EAMGQENUCIQJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 201E13EEE72
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 16:24:56 +0200 (CEST)
Received: by mail-wr1-x437.google.com with SMTP id m5-20020a5d6a050000b0290154e83dce73sf6589871wru.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 07:24:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629210295; cv=pass;
        d=google.com; s=arc-20160816;
        b=o0JZZn3E66en7oGCcxNtbSG3UDJnwxk1k9ZABK9jBgqga7DyvaeXrPLafCNAdSi+LI
         JUEgcEOo/JjAnkyjmSHwMZOKM0+aoG2bu5zAjtVMglmwsh4QBTsXiayMfeRDbSgaJvFg
         Ki0ir+2A3hOMgPpTduh4CVFLPONhtnS7Mth8DbPS02HCvHspLgUNT26kUDTHh4eZWazu
         P8DByN+auKn+6I4l6hA7Ih+TuNN8hShYt7rg7Xc3zARZ2T2+UDoBdFTLEDxKVTvf5v2X
         IRHuODIUa0DDwyAVmuGfKdWQ3DsllmSmyn7rWofbLdE+0uAnJBXjKiBAXcD8dMwwb+OR
         pX/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:importance:mime-version
         :subject:references:in-reply-to:message-id:cc:to:from:date
         :dkim-signature;
        bh=uxfn2F7q0hrD2tZ1N0sve56MPMw+glCIIxRzjqFftdA=;
        b=VD4/8SvkSORMLkRe/GkS6/PTlIZH2kvTbNjyeKScBQ42RnzHokRuH2TMjp3bmaJtJn
         cucyoY/Voatgi0VoVIzfYimCLG+KEO5/PBj6lR/SBOWbVhipNahvbKbY+mM3kNXUv3O2
         1w+AmkzQfx00HeRUM5SdATMSTJumWY7qEQB/CUyHLawcpECYCpdOPxO8rF9tNFGTLoLs
         lndqh4hVQxgVnR38+/C9pIViKNniHasBvQQGkxZMu0ANg/7iN5Fy1b3q7Swk5LeEzys/
         phWYfO5f0Oy4QYcSExuQXThd2YhdUGzJ1S5KLZuVws6ibmRcq/7dHa01YjG3aCLbOJCA
         lAaA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b=H1wuJ1iQ;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b="m/WR6djz";
       spf=pass (google.com: domain of torvic9@mailbox.org designates 80.241.56.161 as permitted sender) smtp.mailfrom=torvic9@mailbox.org;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=mailbox.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:message-id:in-reply-to:references:subject
         :mime-version:importance:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=uxfn2F7q0hrD2tZ1N0sve56MPMw+glCIIxRzjqFftdA=;
        b=EOMA6GD2a0EJKNesHtA3uCttCUizd7adMTQsnzM8YENiLvLmOjZztM244HLUEs5xGv
         OF24zA6JmpHn0x82TYBDUptR8Ai+sXfOOEzl+l4sJ/vyU1GJOojxCwRrcQzv4TEgOkkV
         GSE017CZdosWpPEm5vOY0jyd+ok5cYDaLvjfg6BcyU6G6nJPnDxsQaEwETZe+f8EQFes
         6sJ4NQkjnzsNKjXK5e26/WImP+o9ZcpEoMd/d3fmi9GJY95RjtklgvGGzyYlNwr2Bih4
         Hua2DHv2Pb9yZCXnQN8KobcNtCHv9UDGvORncqDw4lWbf3llQjIU6XQ5r57k6FaltPDZ
         AOnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:message-id:in-reply-to
         :references:subject:mime-version:importance:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uxfn2F7q0hrD2tZ1N0sve56MPMw+glCIIxRzjqFftdA=;
        b=Kp2NQYPN0k/KhZN+25a0CZcquKRSrWZFmFJSYgDwtVTSaiCl3fcZ+Kf2knXScdTzyX
         Ikxh/3Rq1bMzcsOEzYzBdsu4F6kwwIWqoio6RzrT5vViDHwNs9uGSCsCc4MWsOocsub3
         LMn2PqnRIsc3W2vpXYp1rAupr7gG+5matfNqjPLAk337+HMPU5DZJskq/ZK4MoFTSejr
         xS0v6W/LmFE27YN+xVHfnGa4bWGHHPVOsfnot9BPQH94qJxq6OtgikpF3qHFtvEDQhyE
         Fc8AqGc8Axx4F6BL9F1cOaQ/Oz1/BBYpcVp/kWZM/VjS4xU/Xj9etjvxM7wXz0975WUz
         1Psg==
X-Gm-Message-State: AOAM532vW4Pw92XKT678wwjndMdc43Zl4FbUFCjJ4PAR0xlpdLIXWiIe
	x76U8OnymvEAesgrDyMPtOc=
X-Google-Smtp-Source: ABdhPJwDG0Hjbmp73fo3n1+a3+nmrTQnmshnaj20NtA33eLicMnvvjFlpE4foUUZJcFhV+9VdgZoyg==
X-Received: by 2002:adf:aac9:: with SMTP id i9mr4420599wrc.231.1629210295880;
        Tue, 17 Aug 2021 07:24:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:e5c5:: with SMTP id a5ls1072697wrn.0.gmail; Tue, 17 Aug
 2021 07:24:55 -0700 (PDT)
X-Received: by 2002:adf:aac9:: with SMTP id i9mr4420502wrc.231.1629210294985;
        Tue, 17 Aug 2021 07:24:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629210294; cv=none;
        d=google.com; s=arc-20160816;
        b=TI1NFWgr35cPLY+jLJ1AK5F9qL3u0G0CaQ59sowvxcmfBp7IxYgdHPGDrdKss/immN
         mI/nCs3cPPsDkMWpPMYYqjgpI5WQUQ7U35j9UukSTLcmycNVm6tVHCdl4RZx2vhJQEia
         ThZCWZiwJg5vChrTox1ZeILNzzwnC1F8gFjcV9G65FXXz+UKj5WWF27m5SzYl/xmBaxJ
         VT5vtwFz82YmAXnmxdsLvAH+oM0D3wqzsWtoIRP11JyeOnM/dGSIlBbLyBb+lej8iboG
         xTfCavamqcUMiStHY8QHCdHPfauRXB4HCgy7HT5JrdJk0fFRndQfizKDQpdx4dwmRA7z
         Ce2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=importance:content-transfer-encoding:mime-version:subject
         :references:in-reply-to:message-id:cc:to:from:date:dkim-signature
         :dkim-signature;
        bh=ThDosbwQsgynlZbrGTbFx2gI7U2iAxLqr8oEIbJgqUw=;
        b=VPgVsRLgNLBCNJblLMXCUNp3ZviUN+tQM3rZfA4RNx57j4iF36I1EB8q3lvn4PTha2
         gNe13uOaMUTN1OqHXVnA3zBEe5PnA+vKHLi9VV1CG89r2GFz2+yEg2uNJ0U6I00QBjJH
         m3+6eG7Zw3HdVyHsTcb2dpytfrZCfS57PsiHJDLD9QUcOVAFAqXVZuAuZJ1MQhC4pVrA
         vbFP9ZHUVMs3N1t32i3TIR3hTWfEImyIjgwxJV+Cz6hzuOHTDE/meF8jXSKjDG80lnX8
         dgWUtl41L5E85JLuu3jcfRuGpBv1oqgRl+ZQnOofs0LHrLiA+1xYn585S3SpFvdw/spI
         6Umg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b=H1wuJ1iQ;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b="m/WR6djz";
       spf=pass (google.com: domain of torvic9@mailbox.org designates 80.241.56.161 as permitted sender) smtp.mailfrom=torvic9@mailbox.org;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=mailbox.org
Received: from mout-p-103.mailbox.org (mout-p-103.mailbox.org. [80.241.56.161])
        by gmr-mx.google.com with ESMTPS id w3si161227wmk.1.2021.08.17.07.24.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 07:24:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvic9@mailbox.org designates 80.241.56.161 as permitted sender) client-ip=80.241.56.161;
Received: from smtp2.mailbox.org (smtp2.mailbox.org [IPv6:2001:67c:2050:105:465:1:2:0])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-103.mailbox.org (Postfix) with ESMTPS id 4GptbB5bFtzQkBS;
	Tue, 17 Aug 2021 16:24:54 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
	by spamfilter05.heinlein-hosting.de (spamfilter05.heinlein-hosting.de [80.241.56.123]) (amavisd-new, port 10030)
	with ESMTP id ee66Lsf4LKQW; Tue, 17 Aug 2021 16:24:48 +0200 (CEST)
Date: Tue, 17 Aug 2021 16:24:48 +0200 (CEST)
From: torvic9 via Clang Built Linux <clang-built-linux@googlegroups.com>
To: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"x86@kernel.org" <x86@kernel.org>
Cc: "clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	"graysky@archlinux.us" <graysky@archlinux.us>
Message-ID: <796036867.117557.1629210288168@office.mailbox.org>
In-Reply-To: <269701460.117528.1629210189833@office.mailbox.org>
References: <269701460.117528.1629210189833@office.mailbox.org>
Subject: [PATCH 2/2] x86, Makefile: Add new generic x86-64 settings v2/v3/v4
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Priority: 3
Importance: Normal
X-Rspamd-Queue-Id: B0831184D
X-Rspamd-UID: e02cbe
X-Original-Sender: torvic9@mailbox.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mailbox.org header.s=mail20150812 header.b=H1wuJ1iQ;
       dkim=pass header.i=@mailbox.org header.s=mail20150812
 header.b="m/WR6djz";       spf=pass (google.com: domain of
 torvic9@mailbox.org designates 80.241.56.161 as permitted sender)
 smtp.mailfrom=torvic9@mailbox.org;       dmarc=pass (p=REJECT sp=REJECT
 dis=NONE) header.from=mailbox.org
X-Original-From: torvic9@mailbox.org
Reply-To: torvic9@mailbox.org
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

Add new generic x86-64 CPU tunings introduced with recent versions of
gcc and clang, as documented in x86-64-psABI [1].

This is taken straight from graysky's CPU optimization patch with minor
modifications [2].

[1] https://gitlab.com/x86-psABIs/x86-64-ABI/-/commit/77566eb03bc6a326811cb7e9a6b9396884b67c7c
[2] https://github.com/graysky2/kernel_compiler_patch

Signed-off-by: Tor Vic <torvic9@mailbox.org>
---
 arch/x86/Kconfig.cpu  | 26 +++++++++++++++++++++++++-
 arch/x86/Makefile.cpu |  6 ++++++
 2 files changed, 31 insertions(+), 1 deletion(-)

diff --git a/arch/x86/Kconfig.cpu b/arch/x86/Kconfig.cpu
index 814fe0d349b0..a2c872aa5a0b 100644
--- a/arch/x86/Kconfig.cpu
+++ b/arch/x86/Kconfig.cpu
@@ -294,6 +294,30 @@ config GENERIC_CPU
 	  Generic x86-64 CPU.
 	  Run equally well on all x86-64 CPUs.
 
+config GENERIC_CPU_V2
+	bool "Generic-x86-64-v2"
+	depends on ( CC_IS_GCC && GCC_VERSION > 110000 ) || ( CC_IS_CLANG && CLANG_VERSION >= 120000 )
+	depends on X86_64
+	help
+	  Generic x86-64 CPU.
+	  Run equally well on all x86-64 CPUs with min support of x86-64-v2.
+
+config GENERIC_CPU_V3
+	bool "Generic-x86-64-v3"
+	depends on ( CC_IS_GCC && GCC_VERSION > 110000 ) || ( CC_IS_CLANG && CLANG_VERSION >= 120000 )
+	depends on X86_64
+	help
+	  Generic x86-64-v3 CPU with v3 instructions.
+	  Run equally well on all x86-64 CPUs with min support of x86-64-v3.
+
+config GENERIC_CPU_V4
+	bool "Generic-x86-64-v4"
+	depends on ( CC_IS_GCC && GCC_VERSION > 110000 ) || ( CC_IS_CLANG && CLANG_VERSION >= 120000 )
+	depends on X86_64
+	help
+	  Generic x86-64 CPU with v4 instructions.
+	  Run equally well on all x86-64 CPUs with min support of x86-64-v4.
+
 endchoice
 
 config X86_GENERIC
@@ -318,7 +342,7 @@ config X86_INTERNODE_CACHE_SHIFT
 config X86_L1_CACHE_SHIFT
 	int
 	default "7" if MPENTIUM4 || MPSC
-	default "6" if MK7 || MK8 || MPENTIUMM || MCORE2 || MATOM || MVIAC7 || X86_GENERIC || GENERIC_CPU
+	default "6" if MK7 || MK8 || MPENTIUMM || MCORE2 || MATOM || MVIAC7 || X86_GENERIC || GENERIC_CPU || GENERIC_CPU_V2 || GENERIC_CPU_V3 || GENERIC_CPU_V4
 	default "4" if MELAN || M486SX || M486 || MGEODEGX1
 	default "5" if MWINCHIP3D || MWINCHIPC6 || MCRUSOE || MEFFICEON || MCYRIXIII || MK6 || MPENTIUMIII || MPENTIUMII || M686 || M586MMX || M586TSC || M586 || MVIAC3_2 || MGEODE_LX
 
diff --git a/arch/x86/Makefile.cpu b/arch/x86/Makefile.cpu
index fb407ae94d90..f190feefe964 100644
--- a/arch/x86/Makefile.cpu
+++ b/arch/x86/Makefile.cpu
@@ -10,3 +10,9 @@ cflags-$(CONFIG_MCORE2) += \
 cflags-$(CONFIG_MATOM) += $(call cc-option,-march=atom) \
 	$(call cc-option,-mtune=atom,$(call cc-option,-mtune=generic))
 cflags-$(CONFIG_GENERIC_CPU) += $(call cc-option,-mtune=generic)
+
+# New generic x86-64 CPU options.
+# Don't call the compiler, we have Kconfig compiler checks for these.
+cflags-$(CONFIG_GENERIC_CPU_V2) += -march=x86-64-v2
+cflags-$(CONFIG_GENERIC_CPU_V3) += -march=x86-64-v3
+cflags-$(CONFIG_GENERIC_CPU_V4) += -march=x86-64-v4
-- 
2.32.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/796036867.117557.1629210288168%40office.mailbox.org.
