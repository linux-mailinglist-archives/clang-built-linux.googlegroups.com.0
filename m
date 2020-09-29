Return-Path: <clang-built-linux+bncBC2ORX645YPRB36WZ35QKGQEC2LNXTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id B6A6927DA99
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 23:47:28 +0200 (CEST)
Received: by mail-pj1-x103c.google.com with SMTP id z22sf4303912pjr.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 14:47:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601416047; cv=pass;
        d=google.com; s=arc-20160816;
        b=DMsJUT5kRzUaB5xGDrfH7rEEwSqRdmt5l9ZAzXt2OitFE68m/sLcUoO7n/GJFoaH8u
         OMPfC55fgiq8eISzvhwntp2e8RmH+HLeu5kIOGB3sno4c7pqycwlyrhYWOZq507oIYRt
         DgGSNAmpgWNh5N+PGMHPV8XqOBqqixvyq3cdSuH4jgrVptNj/hjJgXz+Xtq5S4ecXEEo
         SafxHjogmKcfxguOIgZMZK2wRAhKwU+xFiwM60WWkHlmaLiZyoimV5NfGUHD5y5ZGwbR
         jlc4Ww51BS0uikw1yTkFEsaT7rMSSzdIS5eYlMEKEdRiCoN4yHOJ786ea23SxHen9gCD
         jsog==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=0FYrDOrB0yxzRytOAw6TfEzrXzybGaM7G4vjGVq+p2E=;
        b=f+8yyirkAQyDkTLJXWfcNEej0aPUurSlkXtm2UI3CSp6mh5Au0TXUK+C3Xti/JVgOO
         rDsVToBfxu2Ajr0TqmVPx8RZlmgYrG70q4/F1ua/QC7cp9y1tzVDqHqJ25ox0HopY29u
         5zX6gIUNV0RoPvEmJGECT0gSUFfDMGhnIq7aePOStqG5ZP3GzlZARpHb0efL4WXEGwB5
         CNzWIAoFtTLU6T8KEHJUAKT5UxdVbE6+pxkuzJ4HI//e7GQ0D32ht6ctgkkubqs6ycFL
         rYzIP52zYzrmEsxPlaTLpW22cLs5eN3T1kRQbiBRPjud2Y2BO75j2XSsNMsV7KkUjsMj
         s6GQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VQOoXlSc;
       spf=pass (google.com: domain of 3batzxwwkajqgya6hc9jyb2b4cc492.0ca@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3batzXwwKAJQGyA6HC9JyB2B4CC492.0CA@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=0FYrDOrB0yxzRytOAw6TfEzrXzybGaM7G4vjGVq+p2E=;
        b=TRpiOsyALZScbgkhx29AkUYdXxPLQkox4oTReGlvoCGKy0q3oK5MgWnylnbZFlA5ub
         YeC4h6m6uFK7sYOPLXQXEmgzqUg/W6iIPKVcIzqx47lLnFXEuEwQe3S5aIr9ki3fx6QX
         cpDxazU4d5weOzUKqdPqWu6ex3MForBNcjKUAlJMSyNOgcUtdR+Na1SKvhWifz7FafIA
         KOMoNy/oOEEVWjyMBba7SsEWavnUynws+qpyvo6UZzjBakSPwsWty81DB1KecFs4pBPW
         wSb9nrhg23QmxbLNMcdeaJioEVmgiVegwyMjy/0Oyo2E00FddfLuFa5YGQPGgrCivimQ
         IlmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0FYrDOrB0yxzRytOAw6TfEzrXzybGaM7G4vjGVq+p2E=;
        b=QbS8RIjkRMUfFyQFOVLqBAQVOPT/hRjIphQS7FxKoIhu9JBnuREbK9yybws5vVc7j8
         aK+zGMd/T6I3lw7oCfzdedF4naqACJ0Kkk3MRgOjJQxK8HFuhVKozBqGhP1ID5lSGgj7
         Y+rP0OOS7xdhQHvWIuVwu1iiANUcAB3HRC6W2KtudGIfFCiX2zqeL3SxiW/1rN4E2hcG
         hgRq1BO7LF8zqt20K+4w/X5ZBMdaa5Bm+zfI8rMZMjc5hgrUBKnOkBBqmYOAlbjdnaqL
         65uL7ugIzOw0bvpSxXqMi3T8Mr2zjP5ScMh1DNPe84cHEAoOxqPkl3/fQ9Ic8TUVKhA8
         CqIA==
X-Gm-Message-State: AOAM532bi/Ps1/e81h2uxBlnW8KlCpp1qsUpOAjYoujJ7BHF61+kMoLP
	SkB3i8o44izssJo3ELuPjU0=
X-Google-Smtp-Source: ABdhPJy8CEbUw0UqA7WRgAJ/WfESs/d5Ey2f2+mvmPEgX3qa+EkeQnrX0OL67cGpPiRToHYpiZ0dQA==
X-Received: by 2002:a17:90a:c794:: with SMTP id gn20mr77676pjb.82.1601416047476;
        Tue, 29 Sep 2020 14:47:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:7d09:: with SMTP id y9ls10386pgc.3.gmail; Tue, 29 Sep
 2020 14:47:26 -0700 (PDT)
X-Received: by 2002:a63:1a21:: with SMTP id a33mr4922205pga.305.1601416046887;
        Tue, 29 Sep 2020 14:47:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601416046; cv=none;
        d=google.com; s=arc-20160816;
        b=qNcxLHOCBy/K4htOfHVYUcTHD71Sr/NFgw66MFct3Q5JzMbyOSgvucZdTIS4GzIsmA
         1QmQwmQwLjPmQDqKI+ZTjmxFqAlwMevmlXI0befMysSo2ThhkBByV2GTSpg/UIQ2H9Ya
         GkK00takor09XItDaQuIYPU4ZeTU7rzyItSEbwYVFCjaqoPPsXqvwW7yh0sySLFspSr/
         u48SN1N54NO6THnuQu+QBLXQdc2T0w/dEeICr+WlWHhkb2TjeAaOUmj1dBtd0DjSh4fv
         7wmzZ6AAPdBz6KLzVy+Ko6yh4g1wU5L9SXW2/XsoJT156ZTdS+n8K7NaZrGinG4TnVLA
         S6Zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=dEqcNX1Djl0IV1+V4O1jZ3zX0CSjG7hkO+H8f2GKot0=;
        b=GWSiK3s+K+28o5eT2FMMIqV7l8O5Zm6AQfDVZQwGTei/b0BV9xmg0ltWmaQXxVevrj
         /NwJoKmaSvZ70JlRx2lGI0WxbPBEnY7JEypZ8l/Gj+0m05I/Oq31Xyo/H1ew3Ax3uPxb
         DLMp1vzFpMdsXCGbzcwEAxUjCBmkTfTl6OsjXMvVH5RQcEmuuPotrj8Q8h+/7vIIwK45
         i70PkGSV1vAypcBAb2jBM0mk6JtcOqh/VFAKx8OOh56XBU+EOnBoL1jmX4tOsqmvZ6V9
         0ZF9fzOLXYesGyAcsfcVZuykyuGD4IEgL5qe23qUFzwu7JkmoscN18U0kIPOAX+/vDB5
         rBjg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VQOoXlSc;
       spf=pass (google.com: domain of 3batzxwwkajqgya6hc9jyb2b4cc492.0ca@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3batzXwwKAJQGyA6HC9JyB2B4CC492.0CA@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x74a.google.com (mail-qk1-x74a.google.com. [2607:f8b0:4864:20::74a])
        by gmr-mx.google.com with ESMTPS id f6si573072pgk.3.2020.09.29.14.47.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Sep 2020 14:47:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3batzxwwkajqgya6hc9jyb2b4cc492.0ca@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) client-ip=2607:f8b0:4864:20::74a;
Received: by mail-qk1-x74a.google.com with SMTP id a2so3679298qkg.19
        for <clang-built-linux@googlegroups.com>; Tue, 29 Sep 2020 14:47:26 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a0c:abc7:: with SMTP id
 k7mr6181365qvb.45.1601416045978; Tue, 29 Sep 2020 14:47:25 -0700 (PDT)
Date: Tue, 29 Sep 2020 14:46:25 -0700
In-Reply-To: <20200929214631.3516445-1-samitolvanen@google.com>
Message-Id: <20200929214631.3516445-24-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200929214631.3516445-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.709.gb0816b6eb0-goog
Subject: [PATCH v4 23/29] drivers/misc/lkdtm: disable LTO for rodata.o
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, 
	Steven Rostedt <rostedt@goodmis.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, x86@kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=VQOoXlSc;       spf=pass
 (google.com: domain of 3batzxwwkajqgya6hc9jyb2b4cc492.0ca@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3batzXwwKAJQGyA6HC9JyB2B4CC492.0CA@flex--samitolvanen.bounces.google.com;
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

Disable LTO for rodata.o to allow objcopy to be used to
manipulate sections.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Acked-by: Kees Cook <keescook@chromium.org>
---
 drivers/misc/lkdtm/Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/misc/lkdtm/Makefile b/drivers/misc/lkdtm/Makefile
index c70b3822013f..dd4c936d4d73 100644
--- a/drivers/misc/lkdtm/Makefile
+++ b/drivers/misc/lkdtm/Makefile
@@ -13,6 +13,7 @@ lkdtm-$(CONFIG_LKDTM)		+= cfi.o
 
 KASAN_SANITIZE_stackleak.o	:= n
 KCOV_INSTRUMENT_rodata.o	:= n
+CFLAGS_REMOVE_rodata.o		+= $(CC_FLAGS_LTO)
 
 OBJCOPYFLAGS :=
 OBJCOPYFLAGS_rodata_objcopy.o	:= \
-- 
2.28.0.709.gb0816b6eb0-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200929214631.3516445-24-samitolvanen%40google.com.
