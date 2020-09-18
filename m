Return-Path: <clang-built-linux+bncBC2ORX645YPRB6FKST5QKGQEQP7DGOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id D5C13270666
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 22:15:53 +0200 (CEST)
Received: by mail-ot1-x340.google.com with SMTP id j12sf2024817otn.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 13:15:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600460152; cv=pass;
        d=google.com; s=arc-20160816;
        b=gQ+5SOjgrezr3HkihTMiiE93Zg0TpUuFXn2U1EL5e7YlEPuHyix9OZ+DaUzrtOzO3e
         jQ4YaQcv+xAbVWmNmCMcH45CoNWVDx5VWcdMjTCyhG74Xl2yNCw/vbJ67AstgetDoiaa
         UKAH7XKU859vIsZSkDoGjdnpKXoa9d5iJn8mHV4ImqzZT6wczp+WfA1vcjy08h74OalV
         znvjNpLAJAaHNQLhZ8vQUqkECaE29x/o5NOEBNIzDKwkIexFCqcKYvDz+Pp5XgXdshNf
         mZMIAAsTV7bYd9+FN0sgDZmZfrVOW1fH4v2EVgn9GIRaZ1iXLhRHgBfL/e4Z0UcoaYdx
         xbSw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=5q15oKNjhUw0Uuo8YoJhjOtsII6W2rFFXRT3jsvuE8E=;
        b=IXvNVJ0fWCe2R/Mk8rzu9XN+cz63YNPF+PpYCZ6PRJfgqIU3fz4BnFv05v7eJnG/nR
         OpoCkziomsxpexcVKkVC7sYREIWl3RjQSQEsS45d45+zpFLUzj5vKKFBysJN7ZIdZfeN
         NoL0KwHGvDd/M+xAzJa0iCIrzPhfe95/mp7XgHPYSPWIMWYKupP2vVwB9KBkOo6kBeXr
         2BxpwqTIqJojHTlRO4+OhMfQuAW2RPxy0hAbUjZoZzUlEvSV2TKQn5tYorixE9iLrxkD
         YQqFn0tld83pTgxiyToP9gjttnWfZFpRNhJaX7JdQa8gpDJaVI20XoQtkG/Lq79EvMFa
         IIug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BCRPev+r;
       spf=pass (google.com: domain of 3dxvlxwwkadgmugcnifpuhyhaiiafy.wig@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3dxVlXwwKADgmUgcnifpUhYhaiiafY.Wig@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=5q15oKNjhUw0Uuo8YoJhjOtsII6W2rFFXRT3jsvuE8E=;
        b=Owu2mUUOGk1mOfsce/b+gb+XkmIj98cR+eNuowq46/srCPRtrmdxTywaab+a6U47QT
         6uLr8RyMXux5QOiSXcxna8abQ5WNfLPv12iZSq6z5TB90U77b+lakZFHbYDfiUZr9qNG
         BLYCZ5PdRh+ZYJxZKyxGMEUmIKsoG33Kts1ztmb7ojbvQHLGEUnAuXnGuDJaUC5bY2OL
         zgnmDcZHgP5ndmp//Ya9snXqESghVdwqjlD93xR63H8XxFHYYj3Yp2s25a5CWfxhoaDU
         UCtZl4aHww5Nru/9tZF9fXf3yV110PQjuL7rGlNvJIA0x6FCYhoQs4M06+sjEN5TUhs4
         U1hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5q15oKNjhUw0Uuo8YoJhjOtsII6W2rFFXRT3jsvuE8E=;
        b=ik9cAPOtjfFKgraNjCR/ADBnuc7/fgEpJI/l3YDg637e7cf4uH657KoB2WjiovMF6i
         BIWA5XmLbtebfQ/yQrej61VAkRzFp10ZfewqC482WNRRWmqh9sUOt1w89GGed8h1lC/E
         zeJ2Dihjl02l0iOaja9IqYibEqc8M/dHoovpZUO1zfLRG+SJAMxqCxrDKgYHpY/HRumm
         BOmywMvxJZN2NgSPeagLH15455zeLCIvDIEkf0w/PcQGZRwvk53WaCYaCpTwt6oIaWG6
         i8iUtovvagYPskuXvfdTorshI2y2pM7L+/KjrLdsgpG/T6573/4EcGPZpkaT8ToHYtD5
         raDw==
X-Gm-Message-State: AOAM532f6Fpj0BAob5bpv/gXYq9rNUnMZwx2eqJ37pvejqZnke2TpDno
	UN1qw0/LrrhoIYTVGfOLRas=
X-Google-Smtp-Source: ABdhPJzbw9PVIbkHmT7cRvqERe+tNR1aSowrGJKF6193rPyv1xbx0ZwPqCcPiZBmdkxn641Ayh6h0g==
X-Received: by 2002:a9d:66d4:: with SMTP id t20mr22823106otm.133.1600460152769;
        Fri, 18 Sep 2020 13:15:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:b88b:: with SMTP id i133ls1570973oif.10.gmail; Fri, 18
 Sep 2020 13:15:52 -0700 (PDT)
X-Received: by 2002:a05:6808:994:: with SMTP id a20mr6110215oic.109.1600460152438;
        Fri, 18 Sep 2020 13:15:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600460152; cv=none;
        d=google.com; s=arc-20160816;
        b=zcpuU6gyNqcExV9XVzrJr0IZE0ZC+eIrk/UiDojAcWh4r2id1z1xLhpG0x7Ldxzq6o
         mWvwMvRe/hGAjJMMaSWv1IoaLv3Z6vdOhuhfzY2/H1xV15Wvg5Gk99RHRTTSeE7AE1XD
         1ct+ziMDLMjB1hX1Em8sZYt4IY/p/Z0OIGApAr8m3+XK63kvbXKqXEMhQH5iez+o/vCX
         D3bc6WSHdauRaJZnyWeyTM29z+Lz+V/dCryeq+jvs4SFNbEYnAn8pFfE9yVlDpR6VgTl
         GuBu7qKMWlQ/ngkHNoSZqvqQ+plkOEqLgtpXnQlkrqTmS03U/f0iHaV5rMkSt/y8aIMa
         hMgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=o2DL67IOGBCnkKLJVmvx6mUhLGuExASqR4QZ4OZyxOY=;
        b=XCa1TOOPYT/hkxDmIFdBSLNFr/uLC8GwW/xOlHOx3nRU3FP1fJ4HOpalt8Ft7kocwA
         8iugwwomthhMfjODOFLVKoTp47WC2DY7KJjB2cONKrDXTdNkf1GmowEOcT+dfZJRRyLs
         RAZrn32/zYjITdhNDVQFYOPcqUGuHyajz9gqcDyj4gj+CikaQwhPy5GjPnqqAexfJHWv
         jhmHx2WF9j+JANA0xJi5x6I1N4H7IiRKI4pqEoWwgJOp/uolS/zB0HSNNDPvE40lUfB0
         QllhV7lIiLIP+XpempL5Jbbv2xHLCbueUUhUKlQnqajYvdxRs7OOF9mUeKq4cPKIuQ5z
         HziA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BCRPev+r;
       spf=pass (google.com: domain of 3dxvlxwwkadgmugcnifpuhyhaiiafy.wig@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3dxVlXwwKADgmUgcnifpUhYhaiiafY.Wig@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id i15si328289oig.1.2020.09.18.13.15.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2020 13:15:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3dxvlxwwkadgmugcnifpuhyhaiiafy.wig@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id v106so6680528ybi.6
        for <clang-built-linux@googlegroups.com>; Fri, 18 Sep 2020 13:15:52 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a25:887:: with SMTP id
 129mr35650576ybi.513.1600460151944; Fri, 18 Sep 2020 13:15:51 -0700 (PDT)
Date: Fri, 18 Sep 2020 13:14:36 -0700
In-Reply-To: <20200918201436.2932360-1-samitolvanen@google.com>
Message-Id: <20200918201436.2932360-31-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200918201436.2932360-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.681.g6f77f65b4e-goog
Subject: [PATCH v3 30/30] x86, build: allow LTO_CLANG and THINLTO to be selected
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, x86@kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=BCRPev+r;       spf=pass
 (google.com: domain of 3dxvlxwwkadgmugcnifpuhyhaiiafy.wig@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3dxVlXwwKADgmUgcnifpUhYhaiiafY.Wig@flex--samitolvanen.bounces.google.com;
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

Pass code model and stack alignment to the linker as these are
not stored in LLVM bitcode, and allow both CONFIG_LTO_CLANG and
CONFIG_THINLTO to be selected.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 arch/x86/Kconfig  | 2 ++
 arch/x86/Makefile | 5 +++++
 2 files changed, 7 insertions(+)

diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
index 6de2e5c0bdba..0a49008c2363 100644
--- a/arch/x86/Kconfig
+++ b/arch/x86/Kconfig
@@ -92,6 +92,8 @@ config X86
 	select ARCH_SUPPORTS_ACPI
 	select ARCH_SUPPORTS_ATOMIC_RMW
 	select ARCH_SUPPORTS_NUMA_BALANCING	if X86_64
+	select ARCH_SUPPORTS_LTO_CLANG		if X86_64
+	select ARCH_SUPPORTS_THINLTO		if X86_64
 	select ARCH_USE_BUILTIN_BSWAP
 	select ARCH_USE_QUEUED_RWLOCKS
 	select ARCH_USE_QUEUED_SPINLOCKS
diff --git a/arch/x86/Makefile b/arch/x86/Makefile
index 4346ffb2e39f..49e3b8674eb5 100644
--- a/arch/x86/Makefile
+++ b/arch/x86/Makefile
@@ -173,6 +173,11 @@ ifeq ($(ACCUMULATE_OUTGOING_ARGS), 1)
 	KBUILD_CFLAGS += $(call cc-option,-maccumulate-outgoing-args,)
 endif
 
+ifdef CONFIG_LTO_CLANG
+KBUILD_LDFLAGS	+= -plugin-opt=-code-model=kernel \
+		   -plugin-opt=-stack-alignment=$(if $(CONFIG_X86_32),4,8)
+endif
+
 # Workaround for a gcc prelease that unfortunately was shipped in a suse release
 KBUILD_CFLAGS += -Wno-sign-compare
 #
-- 
2.28.0.681.g6f77f65b4e-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200918201436.2932360-31-samitolvanen%40google.com.
