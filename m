Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBD7NSXZAKGQE5ZCCTZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x538.google.com (mail-ed1-x538.google.com [IPv6:2a00:1450:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 37CF515C7AB
	for <lists+clang-built-linux@lfdr.de>; Thu, 13 Feb 2020 17:17:20 +0100 (CET)
Received: by mail-ed1-x538.google.com with SMTP id d21sf5256203edy.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 13 Feb 2020 08:17:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581610640; cv=pass;
        d=google.com; s=arc-20160816;
        b=zZs0X/uj3ejn5H22/kzTxbOa2SHjP8gvOExngNCDG/Do9OHXVMyYSVjtiC+xcgX6py
         vTOyrttcOEjDLX1fnuBP2EbNn8jplf+Je8KCdE6DSMLR7TcDPHkxQ8O255NxfbWK3BB4
         hQ9a6QCwlzjEn/VyZKBUl8IDG6Afv0/enseWKv4F7bnCIMRtKFnr9/xX2pD8QpNf6A9E
         FP35zj3+ziFPE4BYsJwnZco5xUyYmTdYlJjDeHNyJu/ym1X6RgBWYPnHB3OQXpzHr/mn
         z02bNK0zSDY9u74eZtsdc3aXqUN4qZXpo4vkGlnLCJzQpQBOgkgAEwu6ez8rTE700SL1
         W4Qg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=bjoRmhO1oPG0yiC38XYiEsCneaUndkjpJIUbKXQqvMw=;
        b=oQBEMNWzYl2Wtb9f9S3tMzw3YAwNq1IAGhFgwWNd+i7QKJ0rxbCqmTLrFdCW6FHIuj
         1z7Ci5WBX1OOKIMc+2st0AfqjkbDsfuQe0acW/M09iHmBGcX5sWobkuu974QKTW1K9qv
         sjZvkVa993LKSqBk8brznJGW/N/ol8zQQz36GWJB7rf070EbsKAg4VRqSOyxJuM8UbqQ
         sLvyR8xbCEHrUqa/sWCklHfhkUFppElcpHCvRFEGzCBpSwFK+cV+Ct/4ZjbA/es84BGL
         lEYxgJHP4eurdBjvmmE/PvSJ4FFLam4IdQNd18sd/1y+GBBOU6LoOlrrXiEOQH39/ER2
         Qreg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bjoRmhO1oPG0yiC38XYiEsCneaUndkjpJIUbKXQqvMw=;
        b=DbYtwihIOIt4/nWnuVsALiI5N4p4wTDhyuHGg6NFCOJEjoJZVy/yIGmpa6C+D3HE/D
         VOe68ENKuCC7xfZ3M5ASdqlHSPaKuynK1voUGW5XMbEswPHw/ye3EYfCS3p6xlRnVfAa
         lUotefPSSy8Whi+oY6CKAS5rdIlydCwyZupUcZYs9lQrItZYL8Y5ck1SlaNcjBze/kfb
         9DM6dHyD9jZPy3ojnk8INGUfSGO7m/rplj7EozEvt0S0ybnF8FfHzVaJ2s8txx4kZ1fY
         1ShY6SDlatv/d5v9tWjVICy9ijvKnCcFykPTdfl8nUbwD/Tks513tt/YlKP98gfJn0Hg
         UAHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bjoRmhO1oPG0yiC38XYiEsCneaUndkjpJIUbKXQqvMw=;
        b=rJ7cuAA+b8ItBuXk404wqAtxoqDLQVIZnueK+rDfgW2hZS+rxM48KLUxEDhk8jCcd+
         qlfWoSs92nyqJsmczXBeEpKPogkEfWRzlXkYC4QpHHDVJ0FOCoTvTpIqRped1EKmuzib
         58faNzwtnM0/n4OkA0ddHVEBUVAZ2cQBIrwYvRiowJZ6VNEZmPULsfhqdYLl/NDn0veC
         KErafqCHwYQcam5aV/SCb3MRyOx2aZ4fTzfVV46I8TAb2MF5EuJXEBBfEmQZkDllX42v
         uzrDoN7q7UCCrTT2UdQb/G7kbvIiZNevHAl8EZgJPXucJ0CKE/jkQ1emqdySUsFrparX
         wq+A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWxUJHg6Px0MNtRYO4ftOu5+o6Sq8uqgLHqPJhr/Gy5EzKcoPRe
	vtCAUAMEn0QGTlu6kkukDDo=
X-Google-Smtp-Source: APXvYqzP9f2cUPycP26sM1Y3gxLAYs8rt4jwNP3dikuno0jW3sNt0Sd19YULdPUryhxTm0GDZgxvtg==
X-Received: by 2002:a50:f419:: with SMTP id r25mr15579531edm.358.1581610639991;
        Thu, 13 Feb 2020 08:17:19 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:c82b:: with SMTP id dd11ls12217428ejb.8.gmail; Thu,
 13 Feb 2020 08:17:19 -0800 (PST)
X-Received: by 2002:a17:906:a454:: with SMTP id cb20mr16997109ejb.205.1581610639378;
        Thu, 13 Feb 2020 08:17:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581610639; cv=none;
        d=google.com; s=arc-20160816;
        b=xpIZ29lvdxPXioudLxp0E9eVmlQ+C9pojCRbK+G2Q7lCr8QPZOPtRYUb4fCPo7DSo9
         Kzmj+CVdl60GgRalSkKaWXLH7TJJJUM2mfzJYNXMi7lSmli14ZyN8HxYoxDIsQyZePLO
         0vPv++Z47dj2LjYVi/fPkkZjorRAXeWP3awkoPEnk1FRjR1vUTdC05oLDU2X+x2iNK07
         m7T8fFgWFbXXKdASssPZK6gaTv+eueRNWCFge4HPbiHbMMeL1iO0xeeQNp+WTEZN4EvC
         aCCbatWDnrcQlCFO68TBIs/5lQmuw/4GM9q24Yu7mSzxR/nlf15OQ9wequZAR0yLDPDF
         HOmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=v1VrfAWHlOxTQlF6437EDc9vrxVY6nkSzN9qZjyIkYg=;
        b=o9foEIxHk14i78+PyeCFEBR5BzV6hf5HATdfhdKBU3shgP71r3JBuNOlG//atpq9//
         6XqlKV9dcVDF2IollFD6Tuw8Yzk3yYiUWM3mUdrNrn7/FenMCzrejKrSgcqBa2vS2Flq
         6HUEChP8itgVT0dFPj6NdWppcmCkf+vDjwqQNGWGBFt0oQ/kLNqEjkGLR17VqOFQP6ZC
         YjVlwQDjUg/Foj42W0EmUYK2Bb2TQ7fMHYXx9QNHzpz8dJgzCs84UrgPUN1FoUxePyE4
         PwdzoPOfDAigS5k5b4SDqEC46jZFQrZnU43gZ5DIDRfutPfgB3I1/Lx+0nsvONFt59e5
         Qjyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id df10si173588edb.1.2020.02.13.08.17.19
        for <clang-built-linux@googlegroups.com>;
        Thu, 13 Feb 2020 08:17:19 -0800 (PST)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A87B5328;
	Thu, 13 Feb 2020 08:17:18 -0800 (PST)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 25F573F6CF;
	Thu, 13 Feb 2020 08:17:16 -0800 (PST)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mips@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	x86@kernel.org
Cc: catalin.marinas@arm.com,
	will.deacon@arm.com,
	arnd@arndb.de,
	linux@armlinux.org.uk,
	paul.burton@mips.com,
	tglx@linutronix.de,
	luto@kernel.org,
	mingo@redhat.com,
	bp@alien8.de,
	sboyd@kernel.org,
	salyzyn@android.com,
	pcc@google.com,
	0x7f454c46@gmail.com,
	ndesaulniers@google.com,
	avagin@openvz.org
Subject: [PATCH 13/19] arm64: vdso: Include common headers in the vdso library
Date: Thu, 13 Feb 2020 16:16:08 +0000
Message-Id: <20200213161614.23246-14-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200213161614.23246-1-vincenzo.frascino@arm.com>
References: <20200213161614.23246-1-vincenzo.frascino@arm.com>
MIME-Version: 1.0
X-Original-Sender: vincenzo.frascino@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172
 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Content-Type: text/plain; charset="UTF-8"
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

The vDSO library should only include the necessary headers required for
a userspace library (UAPI and a minimal set of kernel headers). To make
this possible it is necessary to isolate from the kernel headers the
common parts that are strictly necessary to build the library.

Refactor the vdso implementation to include common headers.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 arch/arm64/include/asm/vdso/gettimeofday.h | 1 -
 arch/arm64/kernel/vdso/vgettimeofday.c     | 2 --
 2 files changed, 3 deletions(-)

diff --git a/arch/arm64/include/asm/vdso/gettimeofday.h b/arch/arm64/include/asm/vdso/gettimeofday.h
index b08f476b72b4..cc3456416096 100644
--- a/arch/arm64/include/asm/vdso/gettimeofday.h
+++ b/arch/arm64/include/asm/vdso/gettimeofday.h
@@ -8,7 +8,6 @@
 #ifndef __ASSEMBLY__
 
 #include <asm/unistd.h>
-#include <uapi/linux/time.h>
 
 #define __VDSO_USE_SYSCALL		ULLONG_MAX
 
diff --git a/arch/arm64/kernel/vdso/vgettimeofday.c b/arch/arm64/kernel/vdso/vgettimeofday.c
index 747635501a14..4236cf34d7d9 100644
--- a/arch/arm64/kernel/vdso/vgettimeofday.c
+++ b/arch/arm64/kernel/vdso/vgettimeofday.c
@@ -5,8 +5,6 @@
  * Copyright (C) 2018 ARM Limited
  *
  */
-#include <linux/time.h>
-#include <linux/types.h>
 
 int __kernel_clock_gettime(clockid_t clock,
 			   struct __kernel_timespec *ts)
-- 
2.25.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200213161614.23246-14-vincenzo.frascino%40arm.com.
