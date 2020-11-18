Return-Path: <clang-built-linux+bncBC2ORX645YPRBRVW236QKGQETVT2QMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id 46E512B8733
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 23:08:07 +0100 (CET)
Received: by mail-io1-xd37.google.com with SMTP id z7sf2712087iom.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 14:08:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605737286; cv=pass;
        d=google.com; s=arc-20160816;
        b=NOlFpbPxSrluCY09b9qHoXzkld3UUOZ6hIT8gjBlknb2S8cQTLSl86w/2M1oMAQPbM
         o6ZzPsRbg1LerMQVwPOsJfykPos9E+Od8KXq3zZPNo0RDj8SEBg5hSyAxKxM+WFM7U/t
         y0VjFQIgZz6ETB4UUAsUU2doA1Rdjl0+kWVp/R2OpPWDD6thZPP6VFN3ACI5v/nY8RU+
         f1nEKJI7l/ZzbkDKaOFhW80baKphLoP7qoPXMEwox3fU/MAMxhPcZ5vSNTWqis/P5J/L
         fk9RMkBK+3l0H56ojsGAkeTpXBe6ncT/2xA8VxhBz4dzzutPrfDg72BAFIGfQDmO5DPd
         9m+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=5iGWzO1KW0S8t+5wUcQnQq8l09lWMo8b3GlbOhx54Yw=;
        b=OfILKottMJ0VQOhkLKgirkpSNGBv4VLBM9LlFIIUG8bp7sngKOE3CQHRygQa8owY5s
         zMSYYfw4GofJPmA5MSe9Rh360Va5FFdj63x5CvJwWB4HFt+SOS255/vKYqEv/7yGM4Ys
         0+jyAhEIbQy9nMOHViUz+4p4h649RnxeTF2URloRIh3SBedjKNucODUEGA9OtAqc+g5k
         cX7ZIpr3O3RsEDxeZSt8BFMbfp9A6bggOBgZzl0bVaCb3SqvcgLp9r/ii0P9wU0YRTR1
         wKXAmO5Cjc2CtDSBDM17yYLH/Tv8RpqtFDARfQ+QiY1D8yq/eq8zc+opE2enIDkuY40H
         RgrA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bQOrgmvm;
       spf=pass (google.com: domain of 3rzu1xwwkafygya6hc9jyb2b4cc492.0ca@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3RZu1XwwKAFYGyA6HC9JyB2B4CC492.0CA@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=5iGWzO1KW0S8t+5wUcQnQq8l09lWMo8b3GlbOhx54Yw=;
        b=AowzE19vzQJXg6g3dPH5kfOzmP+/fFmlCIinn3vaGXOw3PUGts3ydybeDLzIIA1KVt
         Fa7mh64TQBGKYFGAb7y+JDgLaDf9vfe/bQcjCXDBejlacxy04stsuIphrjFeskFN7BNU
         pxrMO6L1sl9E102XaxVq6LYti6hI1rRo1PqZT6UeX1m0s04WxO26dHbijJOkY64ViVEW
         8PBt5oP8ZuR2yhgW+RhgySKPFWkYgYcAj2FMEAY32yanF7YJArJo7cSsBNnT/BuTP3t4
         wq8T17hmnBghwuxmdo8fgXUPovpvbEhE6e7IJuPxc8VUEG1TedUiAKA37uVlzBrzL5dl
         9GKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5iGWzO1KW0S8t+5wUcQnQq8l09lWMo8b3GlbOhx54Yw=;
        b=UjfPbcgTW9DIu4jwLF2ERROzs8+Tx/AwlDlViielCx+BiwKX5bXNaEWzvsr1fpVui8
         lLlN9ji1RR7fCtnF1kfsiATkaTPfvFLtcuXn5Jjcc3Qq123oZyZTb0F965wHw9rvJ/c9
         5rKy20qanec0cuhgKUNTeYXj4bZdncK/CBAU2iqEoH1rmrarCwLCp9Zvv8QWiers7lkK
         p8VJtH/Ju3vllzCgb40Tu8Aui4sfaBIEV6KCcDne63p1/LkOPiehYd1IrFf5sKf58H6y
         gh2Lngtk+UiL88xKPBpwv+KxdfsRFN4gBkpuWI+IYCaSusQU+CdoFWeOhOrkXGK49hja
         QPdw==
X-Gm-Message-State: AOAM533t9L92k/q88yDE4XUlY9NoNnwNZUXUKS5T6/8QTJEBsLxnfEtW
	qGE2vNfxS1NF26gMSAHnKwU=
X-Google-Smtp-Source: ABdhPJwGZGsfJvGXEmyJQU5YTp+wb78itryJyt8WWFoWeNrCiSEOGr/ZfBYdz04wFwjSTKnlXDOhjw==
X-Received: by 2002:a5d:8551:: with SMTP id b17mr8463292ios.149.1605737286351;
        Wed, 18 Nov 2020 14:08:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:8c86:: with SMTP id g6ls197132ion.0.gmail; Wed, 18 Nov
 2020 14:08:05 -0800 (PST)
X-Received: by 2002:a05:6602:2212:: with SMTP id n18mr8856682ion.34.1605737285927;
        Wed, 18 Nov 2020 14:08:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605737285; cv=none;
        d=google.com; s=arc-20160816;
        b=i1VykRS/R8FvhU/c8k+U7OuVmzEknFCwiES6ZpBXECMLFc/R4Cu/UwlZV3SxSdS0Kv
         WfmSJ7o5A61AyJTulE/kzW8Sw0nZMJIJ1usuW9/IciIE9XLmJ/7yRnbtnd3Qv71cgVoP
         Ay7bEQxE0zQGDdSSfBNu+2+jk5KcAI9QEJQS7qsCcWqTsE9hMrbwIidxeiLXC+Hvmlw7
         7vm5uda/xJKTQAjkeZONidrNM1k674i7fmZWsi3xSLwdof2ISUS6xgdPq2LWEJmBDfZa
         z2T1QHZjBBQ6GEzfX2zBLSy7hxrI+engDH7VO/zh4oNqRhKYxKcUyIqhYNGZ7dj0TXAi
         t9Eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=sjtbZ3xOlxTCeGDsc49y7blbydcHA97ATmZyW4gNXi8=;
        b=aEvQkx8gpQCV7oeF46v2R916ndyb/fD0sdkF83xt/159TQ31ffCmFZfp0RQbgUBF8K
         VJscPvs7ZVAGauljtS9XjJk9MYuabd68f1S1+58MRXQZUnz3MrBVzF9prgWGIWtHdzm3
         4xd6F2tepRhOIzV+QIYdm6AVYonVKpAGR4ksdeHgttlbpFWtvhRiqz56PXtA3+Ao4qlR
         sYx4ktVmfSEj237mku/ZZA0wvGNLbUcr/rXiGR4uvuM19mkzAMuhBsKIV/IOHzRfU3Vy
         Z2vC1dE12Qt8SMaHp93/GKU7tk2iUJF68hpMC75h4FiqBM9l/Td0darewddJR7U4HlOB
         tJwg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bQOrgmvm;
       spf=pass (google.com: domain of 3rzu1xwwkafygya6hc9jyb2b4cc492.0ca@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3RZu1XwwKAFYGyA6HC9JyB2B4CC492.0CA@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf4a.google.com (mail-qv1-xf4a.google.com. [2607:f8b0:4864:20::f4a])
        by gmr-mx.google.com with ESMTPS id n9si1198723iom.3.2020.11.18.14.08.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Nov 2020 14:08:05 -0800 (PST)
Received-SPF: pass (google.com: domain of 3rzu1xwwkafygya6hc9jyb2b4cc492.0ca@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) client-ip=2607:f8b0:4864:20::f4a;
Received: by mail-qv1-xf4a.google.com with SMTP id dp12so2537463qvb.2
        for <clang-built-linux@googlegroups.com>; Wed, 18 Nov 2020 14:08:05 -0800 (PST)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a05:6214:c8e:: with SMTP id
 r14mr7292366qvr.21.1605737285331; Wed, 18 Nov 2020 14:08:05 -0800 (PST)
Date: Wed, 18 Nov 2020 14:07:28 -0800
In-Reply-To: <20201118220731.925424-1-samitolvanen@google.com>
Message-Id: <20201118220731.925424-15-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201118220731.925424-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.29.2.454.gaff20da3a2-goog
Subject: [PATCH v7 14/17] arm64: vdso: disable LTO
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
 header.i=@google.com header.s=20161025 header.b=bQOrgmvm;       spf=pass
 (google.com: domain of 3rzu1xwwkafygya6hc9jyb2b4cc492.0ca@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3RZu1XwwKAFYGyA6HC9JyB2B4CC492.0CA@flex--samitolvanen.bounces.google.com;
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

Disable LTO for the vDSO by filtering out CC_FLAGS_LTO, as there's no
point in using link-time optimization for the small about of C code.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 arch/arm64/kernel/vdso/Makefile | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/vdso/Makefile b/arch/arm64/kernel/vdso/Makefile
index d65f52264aba..50fe49fb4d95 100644
--- a/arch/arm64/kernel/vdso/Makefile
+++ b/arch/arm64/kernel/vdso/Makefile
@@ -30,7 +30,8 @@ ldflags-y := -shared -nostdlib -soname=linux-vdso.so.1 --hash-style=sysv	\
 ccflags-y := -fno-common -fno-builtin -fno-stack-protector -ffixed-x18
 ccflags-y += -DDISABLE_BRANCH_PROFILING
 
-CFLAGS_REMOVE_vgettimeofday.o = $(CC_FLAGS_FTRACE) -Os $(CC_FLAGS_SCS) $(GCC_PLUGINS_CFLAGS)
+CFLAGS_REMOVE_vgettimeofday.o = $(CC_FLAGS_FTRACE) -Os $(CC_FLAGS_SCS) $(GCC_PLUGINS_CFLAGS) \
+				$(CC_FLAGS_LTO)
 KASAN_SANITIZE			:= n
 UBSAN_SANITIZE			:= n
 OBJECT_FILES_NON_STANDARD	:= y
-- 
2.29.2.299.gdc1121823c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201118220731.925424-15-samitolvanen%40google.com.
