Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBMUSTSCQMGQE5HKUURY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FA1C38BB61
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 May 2021 03:13:29 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id g21-20020aa787550000b02902db9841d2a1sf8861718pfo.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 20 May 2021 18:13:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621559602; cv=pass;
        d=google.com; s=arc-20160816;
        b=bVpc5vEHq5UPa7GUDkzWgKR2GCeAmSDYvq25D/mztwhFmiMMQs7VH1Ym1KYydVLCaY
         GtRVdv93uMG3Ie2UG1r1i+51b1Oz4HBnlmAFsakXMY6f2d2JdOSS3qSvK6fHLBveWGwy
         oZVbgzQ674MUiR2H/fKi/LEtn+gSwC0kJwKTLy0MjZAc+uEXLEo3aAXivaRWoKymEfzC
         5vaWstcTrIQGyApKqYOfTeRJwrpJoujcHnHlu/imS9pMUmsFDVg4v5kLrCTa+8SmwVmm
         /K7adQG+X7Hlg50pl7j1nzwGWHtv/AS+myu2ceuv2loFE2YLIq4qMcOJYsSwD9OAH4Vx
         vGFg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=VxXp/O0Nv706n2+TbuFZOaoBBe4TmgR+4Q3uRX86teA=;
        b=BcdY30JqTLN3DcsBncPVbCITGoZTQEvoJgLY/e54x381ZEa5IUCMAF1GYNrRumlMgn
         71JwgGzIjLuNWWmosFTHQccBbapYzLm3t30x88XznzZ/lxrzp8+aILZpdee+jMZeqyED
         sAaJbuuUk/3KsM9qdl67bHSz4uIcOmA9EUWrzW+ocuoXFqiK0Kw4KsM7NL/iPoPGs1bC
         yj9FXlplvJUJsKHDyYUhTxR0tG/fzH9IL+OZHpwDIauuCdPmKUzCKFTgnHIKSKm94Uzw
         ZRQ7Hj1toV8c5yzjE0yQIrXegLapcvXy0FAgM4epvwd2F4GaxVrKkA4/2CE8SQ26SBAO
         Aikg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=iaZs6nUY;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VxXp/O0Nv706n2+TbuFZOaoBBe4TmgR+4Q3uRX86teA=;
        b=jLqe/ZGAUlDZWI2x9QEioY+4eKL5dPSzr1c1P2xwnGQ6ZapabggBaHLVeHFpvh/0yf
         OZ4F6zS7uA2tE+G1hAuEzMssK8zbG2OBzcmkQqy2+spj2j1tdHuWM0Z1PPCtHPXVl+y+
         P5AIsp4fmFxAnLXPfjKPDGL9YA+bE7yn345Eg1Bnf4DcB45UAPrdBDw29cm5Tha73mNQ
         jme3QWgemM34l8yCZBE99cA85nkk4asFUVchV0sSnTFu6XB8TVpGyqu47eUAaKNjs0gC
         67ehx+YiQJnwnOkSNgmAcq879gCINicvdQpJ7zozZjMVpuC9HhWeOy/LFkGuzTjep2wf
         PhDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VxXp/O0Nv706n2+TbuFZOaoBBe4TmgR+4Q3uRX86teA=;
        b=P/76+AgZUVVcd9y2ODteuhumRzT7JUfiPllqL93qD9iUzDvh0FH+zPmcI+cNBPu/eg
         KVH00ze6bezUx1+V42CmiyC74YVfE9n15V7ro3vQJBBcc6grFrZI8E1cEmWk7VzkHQsJ
         lrxcrPQQqaPlzcFZR6X3ks/p+4jyRNUvKGlruqXiBitJBWbqYhOXdeLpZI2842QLMPbn
         /tfgifBGkniJeS/bLyxVBIFUCvdKnQF6Fvb3pb5bt+OGD5AH+ygo1RkJi1CLlVxddipM
         ZFZO641a+c05eSAwfMmCnl2MTPPT+qLojEa22gj/M8MWQ6YjLBUu0CYek5hMEUCwbzxx
         Tzuw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533zy/ZBcK+1RHyd432NaEK525Um3HwBBfMDUbmlvLW+v7GXuWKY
	PCmv4QgyxnCtMvQtneUOU/A=
X-Google-Smtp-Source: ABdhPJygKfu92I9BypLaBB4H83c3Dm/1Tt16tXaLsrZ3rAsz69mbvZMR/eNPth7/Wy1r7S6Na/6mFw==
X-Received: by 2002:a05:6a00:2394:b029:2e0:a27:ba26 with SMTP id f20-20020a056a002394b02902e00a27ba26mr7275757pfc.63.1621559602730;
        Thu, 20 May 2021 18:13:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:7e1c:: with SMTP id z28ls2269482pgc.3.gmail; Thu, 20 May
 2021 18:13:22 -0700 (PDT)
X-Received: by 2002:a63:5a19:: with SMTP id o25mr7077668pgb.122.1621559602183;
        Thu, 20 May 2021 18:13:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621559602; cv=none;
        d=google.com; s=arc-20160816;
        b=uTx48zLEUgZLguWouMNPyjxs40Z8+l/res/hHDAn6mAqr3JcVACTq/2KGnaPySLOQ4
         jvIBE2XLBTCm1Bx7IgdBMLLzjIofhAHAL9YFiKTssRjMJOF9lRHOugORrfGcsflY24yy
         M5qV7wJht52C6aw/UJgFVLgqETkoR30iKpzXUEDYm8X4F6+RTJYhcNp8it8Pkd8/wpBH
         zM0aiTsBOL+iEMrg36ZEtCGpT6IU+HXa1yfHZUssROS0fhsFNJ0Tv8YkwP8AVLkhvIdX
         WcFuyywnhLhH5Z/LJm0fOuSv8R2W1Tza1NldWjtHWFhsgjKEkWd1dvMTsnLRiGKe6kf8
         WInw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=LpBkzkYTPL9mHIcTIy3Agjd6gEtHH/D/UV0ewbB7xTE=;
        b=ozHAP0AoGlKf2K6yCLll6Tbu+u2pNiJkFfgrUaGfIMM1O5Av2YPE8FL5H+WDvkYzod
         fQzA/ss6LOLoufDeAmvnPb5ay/SnyrNmmnKa0li8VU5O7cRO5azzIRkcMAtyRUgupL9S
         HbgXJcAIozcEKVIe+vrbBrWh9wdmOovRtWdUAJmChxOTdVW2ntl3QJyFw5qc9DN4BuXg
         NyTA6cZ1wJpZ7Tm/cXUIf8q7ZH3wa8lNmBNTsfCgHMTY26TDyg0ObGJTFS/d0KGBLkF6
         oT/N2iJ9mY46jB7EPN4riUx93xK9FxGVpuu96eB8NRa9gI2ZlmoP0uwnowXBam2xyK+z
         zEOA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=iaZs6nUY;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z1si403958pju.0.2021.05.20.18.13.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 20 May 2021 18:13:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8E48661353;
	Fri, 21 May 2021 01:13:20 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Brian Cain <bcain@codeaurora.org>,
	Andrew Morton <akpm@linux-foundation.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	linux-hexagon@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH 1/3] hexagon: Handle {,SOFT}IRQENTRY_TEXT in linker script
Date: Thu, 20 May 2021 18:12:37 -0700
Message-Id: <20210521011239.1332345-2-nathan@kernel.org>
X-Mailer: git-send-email 2.32.0.rc0
In-Reply-To: <20210521011239.1332345-1-nathan@kernel.org>
References: <20210521011239.1332345-1-nathan@kernel.org>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=iaZs6nUY;       spf=pass
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

Patch "mm/slub: use stackdepot to save stack trace in objects" in -mm
selects CONFIG_STACKDEPOT when CONFIG_STACKTRACE_SUPPORT is selected and
CONFIG_STACKDEPOT requires IRQENTRY_TEXT and SOFTIRQENTRY_TEXT to be
handled after commit 505a0ef15f96 ("kasan: stackdepot: move
filter_irq_stacks() to stackdepot.c") due to the use of the
__{,soft}irqentry_text_{start,end} section symbols. If those sections
are not handled, the build is broken.

$ make ARCH=hexagon CROSS_COMPILE=hexagon-linux- LLVM=1 LLVM_IAS=1 defconfig all
...
ld.lld: error: undefined symbol: __irqentry_text_start
>>> referenced by stackdepot.c
>>>               stackdepot.o:(filter_irq_stacks) in archive lib/built-in.a
>>> referenced by stackdepot.c
>>>               stackdepot.o:(filter_irq_stacks) in archive lib/built-in.a

ld.lld: error: undefined symbol: __irqentry_text_end
>>> referenced by stackdepot.c
>>>               stackdepot.o:(filter_irq_stacks) in archive lib/built-in.a
>>> referenced by stackdepot.c
>>>               stackdepot.o:(filter_irq_stacks) in archive lib/built-in.a

ld.lld: error: undefined symbol: __softirqentry_text_start
>>> referenced by stackdepot.c
>>>               stackdepot.o:(filter_irq_stacks) in archive lib/built-in.a
>>> referenced by stackdepot.c
>>>               stackdepot.o:(filter_irq_stacks) in archive lib/built-in.a

ld.lld: error: undefined symbol: __softirqentry_text_end
>>> referenced by stackdepot.c
>>>               stackdepot.o:(filter_irq_stacks) in archive lib/built-in.a
>>> referenced by stackdepot.c
>>>               stackdepot.o:(filter_irq_stacks) in archive lib/built-in.a
...

Add these sections to the Hexagon linker script so the build continues
to work. ld.lld's orphan section warning would have caught this prior to
the -mm commit mentioned above:

ld.lld: warning: kernel/built-in.a(softirq.o):(.softirqentry.text) is being placed in '.softirqentry.text'
ld.lld: warning: kernel/built-in.a(softirq.o):(.softirqentry.text) is being placed in '.softirqentry.text'
ld.lld: warning: kernel/built-in.a(softirq.o):(.softirqentry.text) is being placed in '.softirqentry.text'

Fixes: 505a0ef15f96 ("kasan: stackdepot: move filter_irq_stacks() to stackdepot.c")
Link: https://github.com/ClangBuiltLinux/linux/issues/1381
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 arch/hexagon/kernel/vmlinux.lds.S | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/hexagon/kernel/vmlinux.lds.S b/arch/hexagon/kernel/vmlinux.lds.S
index 35b18e55eae8..20f19539c5fc 100644
--- a/arch/hexagon/kernel/vmlinux.lds.S
+++ b/arch/hexagon/kernel/vmlinux.lds.S
@@ -38,6 +38,8 @@ SECTIONS
 	.text : AT(ADDR(.text)) {
 		_text = .;
 		TEXT_TEXT
+		IRQENTRY_TEXT
+		SOFTIRQENTRY_TEXT
 		SCHED_TEXT
 		CPUIDLE_TEXT
 		LOCK_TEXT
-- 
2.32.0.rc0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210521011239.1332345-2-nathan%40kernel.org.
