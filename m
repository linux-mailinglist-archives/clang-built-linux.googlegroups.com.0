Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBK4BVWCAMGQEZRX4RYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CED236F2DC
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Apr 2021 01:26:37 +0200 (CEST)
Received: by mail-pf1-x43f.google.com with SMTP id a7-20020a62bd070000b029025434d5ead4sf25258035pff.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Apr 2021 16:26:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619738796; cv=pass;
        d=google.com; s=arc-20160816;
        b=pRfkPdf+NcOAl2XwpU7myEP9abMysn64hIOPvtoMtoooosXs5KTeewoVfbeuRp/h+M
         0Pj6l/dugwa+Lh4cvcSg8iG5V7PH6O/4ENM9ctVj7xnLYL9CtsIZFFhMbQg+4tHTiIZB
         h7ENQ3lQqaW+AIdG6Jjayv6jLQjU/XpcEr0zMCoF+j5Ftk4pvQQQah79GaEW1C/FAgRJ
         U+aJ1l8/dxE/blsdk1PRMZMqAxXr2xbh+uRytjPPeHtHbaZRBwrCSxI7nXH+A92H0ajw
         jY5A/0D3JGk+WRBN/IQaqM7EPMZlSDi7ZGVqD4tF2i6q/R+RTvsSS9CljM1XMTgd6qOY
         LpJg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=nUeWNQKEv0M4hOGZSr27D07wZpU92gq9DXcKpv6oAPo=;
        b=IdSBbF0YUahfOoVeLvN98aBN194v3lg0XbiVt9hDCehyjR1KK8BklKxai8/8WPcCS7
         H7aMo+pnyIYVQDKk+MmJjSkOXI60Q9dU5JM+P/7ftlu/z3ccuHWOelKSLtu88qO2gQuB
         0tRHMptLKsgcx/GtKdYykFtAMW2gTV0TkhjzlLvTLQV/+Glw1XLpJu9JABVEzmYSM2Vu
         bnzLKaiiUe6OxGfbHwu3cpwCpoBKf8wNnYVkWBE5x9u9/5vMyzBv0wb/37i6joEkG0nE
         0fTw2KcMrBk0Y4HEv+IdxHJOYXYmLDqQUsoFq4EsMPfHHGARuXivUPKsVOMpktoXeg3H
         qPAw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=d44QNcLP;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nUeWNQKEv0M4hOGZSr27D07wZpU92gq9DXcKpv6oAPo=;
        b=bl3FWwre8/5NNAEx4lRCBBJt9UKwdCwu/Gu94Eu7s5zwAOeo7OCOOa1jYt53477M0f
         um+tBsnZGuEnb7VQG2zkvkgYVKjAHZUudfVgswTeLWpCIKrpDy5zvzb2YZZA0norH3IX
         NNjPCdbqDsYysdBq5tZLVbjEA07fN86cXa0dSZAD9vaPSTRiThUbfdmI7vFIMEKwAgJn
         MOlVXfzsBn9SQAAi9rOeIGxpCL7sBGMYEKclve6dVhT8oSM8RX8nrboX+/AOpX6QaLiS
         h/sPlQh8mdT23p9RifwLzEom7S07wQiLOgyXkXv67o1l5DLJzAnUaxhu6Zbqcyi2RVc8
         Kivg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nUeWNQKEv0M4hOGZSr27D07wZpU92gq9DXcKpv6oAPo=;
        b=cjCWZ7B9zSNeSgUZzV/q4l601nWYzbXJIVhz9eiqJipBB8iDt8D45Qf6wAsB9kRPkr
         HbyDHp2WmtR5IeMOe399MHglyfWjeX7LRGH+mQRKgHvigEdZNOd32LT1ui0lp1iEYncK
         rTFp+XjNeiZS4FBhDQ7N5j4+NNc0jqZot76UZ7FxNacGBdPclepHlF8z1ufGp1A9ujlf
         7UDoAMD51STm0fXlvUXc6EgopBp+BsoSILNrH9Ya++sh4SDt4q5fNCr5DCbARlVGd37S
         DJr5CljBXMuiQHsrLSXftIDUwm4+/LqpUu8x6791HrRtuyigT4tAKiV4Ge/75PlI4aZ+
         Jb3g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530CE2lf3k67OqvBfust3pUBzabr8//BqBTA0XXbZcd3wZcK29Qe
	wWt3W+P3pBUgSsoqcZuAnMc=
X-Google-Smtp-Source: ABdhPJy0vcgSUSrizaGQ+0my4HSFuGuVW1PhijOyGa339dlsW1AJo4Vyk3A0YHIIAucrSYozqI6tVA==
X-Received: by 2002:a17:902:7fc9:b029:eb:4828:47e8 with SMTP id t9-20020a1709027fc9b02900eb482847e8mr2138082plb.56.1619738795872;
        Thu, 29 Apr 2021 16:26:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:4145:: with SMTP id x5ls1749388pgp.4.gmail; Thu, 29 Apr
 2021 16:26:35 -0700 (PDT)
X-Received: by 2002:a63:5004:: with SMTP id e4mr1940518pgb.61.1619738795391;
        Thu, 29 Apr 2021 16:26:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619738795; cv=none;
        d=google.com; s=arc-20160816;
        b=FecnGQRntluxuiCXBmk6W4/FsS3q6Nmn/beluMVCHb5OPanhgdrGeM7s4lcNCgOKtO
         /QCAYjp4izhLgEdQhWY1HJH9BTmHrPS4tzrOYeqqysX3NowPrLYa3m7rRMGCdVo0SSPM
         GiPo5eTv7rQFzr2VBIIdmNIXn/lWUXsx3/2LDtCussnxzgXa1Clo8S0UZ5mlP/0MfEm6
         ez3sVPU+5ehMlLMg1iXaWvkIMr3mXflBqeEvvb1VppTcxj5cXQwxsQd4YZZpLGHgwTC3
         BKU/Eao2eqrtFKZ2QLgWgfSuhMBEMLJZYGo6E/DHUzV5pT+sS7efCe+VYCD5+Kxz3Ld/
         Wn4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=Zz3wE5PGATNW7d83TueWE/s1O/PVnP0e6682GFBkwAM=;
        b=v0hptW0OnTG99O9WTFKKX/g6z6gMFyu/9eZj63DMoB/z9YT2udYUASBJidU//BvEtP
         T4C723Ac2Tn1Y6ZaJKEpdl6Bq9Y0jSIw8O+7aq1G/p04lT3XLJGQH3/UfHq2pVIPTXs9
         x/tzFcQtdPYzVz+X5KahHpLOHQUcEPJsdTw/RyJi98bC5qg7xRv1WoQp1TN115Ka7dB1
         3/AQvFcciRSDYLjX4Rsfq4mG4C41JmIl9PJ0qJdLamZU1r5JOS8+0MYkQoR/r3kdV7+R
         b4Rn1QI6FjSA8SA5daLT98ypAXS3wPSm66KXI8UMQkbWnEeMKIMSgEmwDYN1yUuvng3y
         n7QQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=d44QNcLP;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n21si401873pjq.1.2021.04.29.16.26.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Apr 2021 16:26:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 051FA60FEF;
	Thu, 29 Apr 2021 23:26:32 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	x86@kernel.org,
	Sami Tolvanen <samitolvanen@google.com>,
	Kees Cook <keescook@chromium.org>
Cc: "H. Peter Anvin" <hpa@zytor.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH] x86: Enable clang LTO for 32-bit as well
Date: Thu, 29 Apr 2021 16:26:12 -0700
Message-Id: <20210429232611.3966964-1-nathan@kernel.org>
X-Mailer: git-send-email 2.31.1.362.g311531c9de
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=d44QNcLP;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

Commit b33fff07e3e3 ("x86, build: allow LTO to be selected") enabled
support for LTO for x86_64 but 32-bit works fine as well.

I tested the following config combinations:

* i386_defconfig + CONFIG_LTO_CLANG_FULL=y

* i386_defconfig + CONFIG_LTO_CLANG_THIN=y

* ARCH=i386 allmodconfig + CONFIG_LTO_CLANG_THIN=y

with LLVM 11.1.0, 12.0.0, and 13.0.0 from git without any build
failures. The defconfigs boot in QEMU with no new warnings.

Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 arch/x86/Kconfig | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
index 0fc82237414d..d8a919d9535e 100644
--- a/arch/x86/Kconfig
+++ b/arch/x86/Kconfig
@@ -97,8 +97,8 @@ config X86
 	select ARCH_SUPPORTS_DEBUG_PAGEALLOC
 	select ARCH_SUPPORTS_NUMA_BALANCING	if X86_64
 	select ARCH_SUPPORTS_KMAP_LOCAL_FORCE_MAP	if NR_CPUS <= 4096
-	select ARCH_SUPPORTS_LTO_CLANG		if X86_64
-	select ARCH_SUPPORTS_LTO_CLANG_THIN	if X86_64
+	select ARCH_SUPPORTS_LTO_CLANG
+	select ARCH_SUPPORTS_LTO_CLANG_THIN
 	select ARCH_USE_BUILTIN_BSWAP
 	select ARCH_USE_QUEUED_RWLOCKS
 	select ARCH_USE_QUEUED_SPINLOCKS

base-commit: d8201efe75e13146ebde433745c7920e15593baf
-- 
2.31.1.362.g311531c9de

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210429232611.3966964-1-nathan%40kernel.org.
