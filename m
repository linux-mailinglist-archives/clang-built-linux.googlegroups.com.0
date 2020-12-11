Return-Path: <clang-built-linux+bncBC2ORX645YPRBLH5Z37AKGQEVZZ6ORQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id B21D62D7E61
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 19:47:09 +0100 (CET)
Received: by mail-ot1-x33c.google.com with SMTP id 5sf4318349otd.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 10:47:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607712428; cv=pass;
        d=google.com; s=arc-20160816;
        b=tUo1nCZlsGrhnjGy6wvQY9GmzVmFOudt42bhngojx2KXrz1VVUQebgICkAoJGblS+b
         EXplAOvxEVb6RLv8oQNztfoCQOQCiv/SCiktp0n6yecxPl7oB+E05+ZQJH8CXW3Rk2o1
         pFAa+g259zYzaE+YPNCPNwqhBSlfBXfvKWJQXSdrs1Zbm+sr8HwJJcIBmwxSrrWDpOTu
         S3152XiKapSVWyiz/sAeAMwy35KMkDTwkXIvsXOZT6E8uGVNBbUL6sWZdLy1JBqTUfcd
         0oIf9XpicoMEmQNUBrcDfgwj37wmCGcBpxu4EWesa68V4cLLeuMMhY+oec26zuAhyS07
         afKw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=hIERGYpLrGaJ1Zam2YAK/1gHVVaTfI8jJDZED7Fhvvk=;
        b=vag9Apkr4FSGcFSVEAleA2EeodaqZ1HxPxq3YHPTweOeC+Fa7G+DqxtPkBGb7ILZAU
         pPeGC9CsS/8vop+xctro3YV/ad88DiBxIiBiN5Q3aVo09ulVN+0tOx+i+ly8JGEk410n
         9UxaVgDnjZlOZ6SDjmu90NmBtd5Ono9YBPO6xgv8txrdwwjGZi9wSvPJglvhufqrnVjI
         CB/YMbenyLqFvz28jTxqzYeMa0UBkDD+0OZVH4O7zYByHfXaSSlrmsvNtcz7FRyNs2ml
         CDsvM9fI2fxbkXz2JBBa4tVaGE0pQWUF1ThsZByrwbzLV98GjUN83StlS0yrR5ezsvvG
         5ozw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=crCjjtbF;
       spf=pass (google.com: domain of 3q77txwwkahwxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3q77TXwwKAHwxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=hIERGYpLrGaJ1Zam2YAK/1gHVVaTfI8jJDZED7Fhvvk=;
        b=Ei3mH8BdRAMDS090TnWIJHHr3l00uXNJCk9D3frOjLIu1TC/qqccN07JcB3l/Nkf3I
         fGF5odDGzHilc8YYETpeutrIspYpyuxNiBQoXtcm8CJlCQfOy7sjxQJycTanzaETKDfE
         bWj/g5IrYlN7j+9Niqegc9zgPhnZk4VEs133ouC5SGJ2zLkHLgtkC8DXc5sF+XjweAfE
         RIpNn6Z6VUYSUhNSt+uY2/2Dlru0Xu5Mwi3W+RbPnVuP3JuYhzlJoEGyx/iSRxQvD74I
         8kIOaAn848EBljosqs5Ymaxo9priz7pD80j+dKgrKuM5gaRjf9WuHwVmbE8pnz4hvfiA
         ngpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hIERGYpLrGaJ1Zam2YAK/1gHVVaTfI8jJDZED7Fhvvk=;
        b=bHB66ivzOvVYTo9YaZGK7VC5TtyrXA3EPj3r3f5CFL1AS79YUH+0ZM4IgaWnwIJVv5
         17J6eJg3hAlfP9HBzjxbihIppGdpx+U2GZuAPO61wXwdukWdisorq6q8kvGryn40J7G2
         U12R0OuICsTXLlvmfTSM6QX/xtiWC9FySXyfpvr32kwIWh+mDBO06cp4PGw9AKAv7JtE
         c5zZRhb8ODJLd9vF5O4DaRI+qf5vPca4y88P4C5pCVQ41MAcByotkQ7p6paLgO1gVIRH
         wfH2I6e9HNmpzDCjLTTcWuzhlEiDPTGaxSSorLVaeu2SiG047opargNqQAAUTQ/GdXZQ
         OjyQ==
X-Gm-Message-State: AOAM533DQFdXWuyppSmjhVYSGxu4oAkUVI+6j2stBNIE98eImNLvuS7/
	DmoJNPlm0d9mmSTLDwqzDHE=
X-Google-Smtp-Source: ABdhPJzlhPSk750G+yw89PlsjwC6xav5KP74P19LxHrXTlMYlu6DICd0GyAzPpnENPzRb/K4Nf2gAA==
X-Received: by 2002:a4a:e51a:: with SMTP id r26mr11265128oot.48.1607712428583;
        Fri, 11 Dec 2020 10:47:08 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:1e87:: with SMTP id 129ls688688ooq.7.gmail; Fri, 11 Dec
 2020 10:47:08 -0800 (PST)
X-Received: by 2002:a4a:d998:: with SMTP id k24mr8270084oou.23.1607712428170;
        Fri, 11 Dec 2020 10:47:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607712428; cv=none;
        d=google.com; s=arc-20160816;
        b=r5+GTtbBZv4fjKAVX1zoAFSaue1TX50Y5xb+IG3OevAaXblw5S7/LWr0ZE76xPfW4D
         nxeLzWBIvun9M4GhbpTfGSUXBAOiCRqn6fbfyGvl0qAHuEkKOQYMJzH+QZsljgmezMgA
         RaIBB4mR3Tt2+LfhSpZ3xN6ezwfEDfFFVqWtOsuZrZraMZQd6JIbRUxnajcpGHvyfSR8
         vwl2FPWI9cf78PDb4vpgA6fB5OSFbH1Z7eyqdvZn4QsVO73n2RCjLJZ1GqINAf8rSO5/
         jucnIFuCYl5HYx5rDpn3pEI1rAXo2XTBuJX8O77JxfTaXJAVEI595U2eqTFNMhBkMDEP
         VjFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=aVrOLfHwyYehNryqhGtvwSuHF6d3RoXEKFD3yMxv9WQ=;
        b=T64cBnkcJMybJD9OUxwAq41ElSJh0d/VgxDekYtjtK6Ci/J4mY0zfb+YN5Jan4eD87
         Azw+xs8qQ5B4pYYw4biBXDDeXQoI8CGnWj6bt/ISoaAy71ZpI50gMOZvRoQSbB10GCJB
         JLhaQu0QKIlCoVjd8sxptmMb5H7EM9TCQgVI/QWJmaPY6xJ+G0pIiRjq4Q3uPQJy7qFt
         yptVdMpd0MGIQLXY9BXTKXBSqjBlyPEMIO2Vur7jAEe0iQpiPuFAu2nwjIL9KdMtrv24
         ujm5KmPM072YSSxCRINRssMBOZD9Xzs+WHydMn930FaT4teXrz10/BsFtdwpIeOkpBdh
         y0uQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=crCjjtbF;
       spf=pass (google.com: domain of 3q77txwwkahwxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3q77TXwwKAHwxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id j1si633438ooe.2.2020.12.11.10.47.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Dec 2020 10:47:08 -0800 (PST)
Received-SPF: pass (google.com: domain of 3q77txwwkahwxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id j1so11808100ybj.11
        for <clang-built-linux@googlegroups.com>; Fri, 11 Dec 2020 10:47:08 -0800 (PST)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a25:9a48:: with SMTP id
 r8mr18569721ybo.294.1607712427760; Fri, 11 Dec 2020 10:47:07 -0800 (PST)
Date: Fri, 11 Dec 2020 10:46:33 -0800
In-Reply-To: <20201211184633.3213045-1-samitolvanen@google.com>
Message-Id: <20201211184633.3213045-17-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201211184633.3213045-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.29.2.576.ga3fc446d84-goog
Subject: [PATCH v9 16/16] arm64: allow LTO to be selected
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Will Deacon <will@kernel.org>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=crCjjtbF;       spf=pass
 (google.com: domain of 3q77txwwkahwxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3q77TXwwKAHwxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

Allow CONFIG_LTO_CLANG to be enabled.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Acked-by: Will Deacon <will@kernel.org>
---
 arch/arm64/Kconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index cf7eaaa0fb2f..59abe44845f3 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -73,6 +73,8 @@ config ARM64
 	select ARCH_USE_SYM_ANNOTATIONS
 	select ARCH_SUPPORTS_MEMORY_FAILURE
 	select ARCH_SUPPORTS_SHADOW_CALL_STACK if CC_HAVE_SHADOW_CALL_STACK
+	select ARCH_SUPPORTS_LTO_CLANG if CPU_LITTLE_ENDIAN
+	select ARCH_SUPPORTS_LTO_CLANG_THIN
 	select ARCH_SUPPORTS_ATOMIC_RMW
 	select ARCH_SUPPORTS_INT128 if CC_HAS_INT128 && (GCC_VERSION >= 50000 || CC_IS_CLANG)
 	select ARCH_SUPPORTS_NUMA_BALANCING
-- 
2.29.2.576.ga3fc446d84-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201211184633.3213045-17-samitolvanen%40google.com.
