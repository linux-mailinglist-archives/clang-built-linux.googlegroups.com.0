Return-Path: <clang-built-linux+bncBC2ORX645YPRBTVOR6EQMGQEH4BFWUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73a.google.com (mail-qk1-x73a.google.com [IPv6:2607:f8b0:4864:20::73a])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CDAC3F4F1A
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 19:13:51 +0200 (CEST)
Received: by mail-qk1-x73a.google.com with SMTP id g73-20020a379d4c000000b003d3ed03ca28sf12292078qke.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 10:13:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629738830; cv=pass;
        d=google.com; s=arc-20160816;
        b=Jgkx2oUc8OgYTpcj2stdcj6afdgDCDy1wzSH4ZaVQQweqlFtpnDjV5qKczHIoGfeSF
         c0JDrTVIakfko0dTBuXPT5dvH2zvxVI+cFSbksm/xGGOK0ut5Y24gJp9qenQu8zm7vLA
         dvr3c0/xUZ/5PXFA5Mjvngt/DtLNmLPnEc+WY9fL79CPWs86It5NGstOjZH8ilYna543
         Rc5eTbj7QPPjMs/vTE3kEdL7zVoI4f/rmrjBGcetZF8o5xl8bwGBcFnlffwwb9r7ozEd
         hNkITXohKbpcXnvxcS+YsV0ILJvh0DJVKDG5e+cJiW71LIx3VykBbGcRf1H9J/A+fbYD
         ZJvA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=TuhPHBtR0g3xY0aN/XJ7Z6DuZDowcCMHEzglMfpRW1w=;
        b=sFBJKTnJqzrNO5/KGLKxgcR2RifLOLdGklIxaIoexXY1fBd8nJ/LaYx5IXObAnwcYr
         awjZ9uTfnD33vO2jFlTXfVCOrmm00u3/wc9oJo9+dm1uuiOFdoIEBGiBirmZeW4xX8sL
         FmgNDe9hR+c8Xyf4ru1VCYI/JgJQ7wN5bdNg+T4bDtxCVPd472OGfvmWEhr2OMq0yuRM
         yuUzfCCUsj1tXOJaIuAmfzUIZx1zfZrZjhnbWEDPGJtZGRZe2qXpbo98LPKHdET5xyqC
         RtEeHhLty4poJyjqsiQ+0fu5NUmEBu3jtiR202e+AndPUD0aYJ5KEKfmvV3FMWRgrHXQ
         Lh2g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=UKMKXPgs;
       spf=pass (google.com: domain of 3tdcjyqwkajom4gcnifp4h8haiiaf8.6ig@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3TdcjYQwKAJoM4GCNIFP4H8HAIIAF8.6IG@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TuhPHBtR0g3xY0aN/XJ7Z6DuZDowcCMHEzglMfpRW1w=;
        b=WjCqeJoQxR40Dlwiii1UjxeSjeeZaQo+N5h1sOAIJowDqhnzomk3ZWZYne6OVnxnvQ
         s3MNxRlu5o/v8MpE4GGeqsx8n/zbyGMBgS/mu9VOHhcq+Zdtcd44xV0Ip1k7e3YIciNP
         acciJ98J8fCMfLdljyEf+Y1ffc0TwQLVeAW6nH7iYXjnjMV4/2+KnOOvzK5+97g9b+mF
         U3SsM7Qnz1sYqrwLNxlQ/LfmpIQu5HW2N7507HHII8pNtUkiC9AtW9uUSSiP66VMb/9+
         9oCyK41tkA0N/urliJfzo7ouqm56OKI4o8q1Ipn4KneN4cWBjaV64w1fn6zCC8BAs5O6
         y8NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TuhPHBtR0g3xY0aN/XJ7Z6DuZDowcCMHEzglMfpRW1w=;
        b=XfksqGIzuo1rZzQrkM6kVhzva9xQSsKVt4iNRoqmko7C3aMqTE37cq4M8xgZydPTYa
         /8Ya3ZWTJ+TVJUPmaiC5p+ShTOvotJH3ccNYOSxkoVEIBkJOxsmIt420gau8dwg7FpOU
         GQboSnwYq5AFsaUMkEZKQb0EhFOwl5TaTWngQT8cwi9sak/AUcqCAspNTEus1NT30zfS
         choP7xa4f24ayNdu8ddjw5oqxIRPswATQnc+MO8kPayS3H49mlus4Rjbhl9tXYf/nbUe
         BNsox49JgMVoZZDycaOoL4k6suNykoRkODUzAvmmUiidG0qbLlHmU2sTf5jeXFtO4FWa
         axuA==
X-Gm-Message-State: AOAM532RVKIiJpB/Wvj+NYMeJ9ebGtXjlVEuM7H9aXZ4MjcN+6yZTSN8
	kQ7+JVdqOgVxsB+GYHtZ4mw=
X-Google-Smtp-Source: ABdhPJy8F694KS2Ld0rWXoqUbQXbhDwUhCyvXcJgI5CyvYDU88Pi4jyIoG7pQST3+Y5VKhS4Jswvrw==
X-Received: by 2002:a05:622a:1207:: with SMTP id y7mr24389658qtx.146.1629738830301;
        Mon, 23 Aug 2021 10:13:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:a4c7:: with SMTP id n190ls8184663qke.4.gmail; Mon, 23
 Aug 2021 10:13:49 -0700 (PDT)
X-Received: by 2002:a37:9244:: with SMTP id u65mr22524084qkd.46.1629738829846;
        Mon, 23 Aug 2021 10:13:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629738829; cv=none;
        d=google.com; s=arc-20160816;
        b=LiRTl86TSfqBSZmZBEJYGFRU4TCLCjotpDQBs3zR29vaJXnQruM+bEPtYktxBV7aJ9
         pqqIAShNNswvTfxsJyHBUNUDsSfQuLTEbXYXhA2opqU5GjAYEU9EmrG2y7ZFyY7OjTAp
         PvHeIr4GX3D78asniFzXbavw8nXWk+waFe1KyhfiX15shsUuLjAq4PQoFRSCHtWMNxkq
         wbAJDZBGYkBBQD98p41ObMNM9zlhefcwL90sFy3hh40VRprCrXbI+0mRa0NDPB8fgEva
         dBXTNgGVAXsX6Yf203z4GptpFzP+Zk4uz9UiYvJ0M5tfXlgAHacRE293ZcwEzq4ciGX9
         wmIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=QdQnBYBrTtlb7EbgqCKiS4RqSCRV3iiUzEvkTpjIQRc=;
        b=Oce9mDoTbC9xqcwj3eVJW+XH72n7K0tO0x/d3AFsTiKnJs86Dd2niosOZWwGV049MB
         rSGL+cTHLyYX4Tt5C1F+MEGRuysNVAlBYWnk+4gld0HwA4os+iRFnjGzcZVQ45w8tyLV
         9Z+iSzTpVro524irCZyoYcP652b30E6W7BDYZymu36JvHfjqRlDpmLuy83PC3pFGjN2V
         +yQdERxcdoa9GxY1bUGgY9VeBO1p2W3EQhQTBAbt4q2feWNZTv+u0iS3GhQ5jNNl80Tt
         G7Lxj8uLUadYy10IETBBq32Fj6lEpnv88g5L900y9yHOjyoXRkv5PsLr0h+PwMUGnqhH
         65fQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=UKMKXPgs;
       spf=pass (google.com: domain of 3tdcjyqwkajom4gcnifp4h8haiiaf8.6ig@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3TdcjYQwKAJoM4GCNIFP4H8HAIIAF8.6IG@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf4a.google.com (mail-qv1-xf4a.google.com. [2607:f8b0:4864:20::f4a])
        by gmr-mx.google.com with ESMTPS id f13si715157qko.2.2021.08.23.10.13.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Aug 2021 10:13:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3tdcjyqwkajom4gcnifp4h8haiiaf8.6ig@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) client-ip=2607:f8b0:4864:20::f4a;
Received: by mail-qv1-xf4a.google.com with SMTP id b2-20020a0cc9820000b0290352b2c7d7e1so12852708qvk.9
        for <clang-built-linux@googlegroups.com>; Mon, 23 Aug 2021 10:13:49 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:cc48:aa6a:f4ec:7d19])
 (user=samitolvanen job=sendgmr) by 2002:a0c:e883:: with SMTP id
 b3mr34406392qvo.23.1629738829630; Mon, 23 Aug 2021 10:13:49 -0700 (PDT)
Date: Mon, 23 Aug 2021 10:13:16 -0700
In-Reply-To: <20210823171318.2801096-1-samitolvanen@google.com>
Message-Id: <20210823171318.2801096-13-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210823171318.2801096-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.33.0.rc2.250.ged5fa647cd-goog
Subject: [PATCH v2 12/14] x86, cpu: Use LTO for cpu.c with CFI
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: x86@kernel.org
Cc: Kees Cook <keescook@chromium.org>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	Peter Zijlstra <peterz@infradead.org>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	linux-hardening@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=UKMKXPgs;       spf=pass
 (google.com: domain of 3tdcjyqwkajom4gcnifp4h8haiiaf8.6ig@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3TdcjYQwKAJoM4GCNIFP4H8HAIIAF8.6IG@flex--samitolvanen.bounces.google.com;
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

Allow LTO to be used for cpu.c when CONFIG_CFI_CLANG is enabled to avoid
indirect call failures. CFI requires Clang >= 12, which doesn't have the
stack protector inlining bug.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/x86/power/Makefile | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/x86/power/Makefile b/arch/x86/power/Makefile
index 379777572bc9..a0532851fed7 100644
--- a/arch/x86/power/Makefile
+++ b/arch/x86/power/Makefile
@@ -4,9 +4,11 @@
 # itself be stack-protected
 CFLAGS_cpu.o	:= -fno-stack-protector
 
+ifndef CONFIG_CFI_CLANG
 # Clang may incorrectly inline functions with stack protector enabled into
 # __restore_processor_state(): https://bugs.llvm.org/show_bug.cgi?id=47479
 CFLAGS_REMOVE_cpu.o := $(CC_FLAGS_LTO)
+endif
 
 obj-$(CONFIG_PM_SLEEP)		+= cpu.o
 obj-$(CONFIG_HIBERNATION)	+= hibernate_$(BITS).o hibernate_asm_$(BITS).o hibernate.o
-- 
2.33.0.rc2.250.ged5fa647cd-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210823171318.2801096-13-samitolvanen%40google.com.
