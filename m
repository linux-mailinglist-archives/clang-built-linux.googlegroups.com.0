Return-Path: <clang-built-linux+bncBC2ORX645YPRB25KST5QKGQELTXO4XQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id B6D0927065F
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 22:15:40 +0200 (CEST)
Received: by mail-qt1-x837.google.com with SMTP id b18sf6130578qto.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 13:15:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600460139; cv=pass;
        d=google.com; s=arc-20160816;
        b=bnSUAKJ8K8skjGJOCzQZcp0fG9kIgDmem10bUkIaaOM7y5McMQ3GH0n08Bi8HpODCd
         pLUini8egcClVBz9E6Vnd6BMLzutuLgoErzLyPCP1od7pqobkKECGON9pWNJc9H4axos
         UmRbiK8/n+Lftz0pjAUCHQEOGxI70bewhn4Umq93zOTLfEk561UYh0Qv4DutycA89+e7
         zFmYlg2K7Gbgto/GwzF2hyOwBYa0JPH5Q/vZ4DVpjcDBctOOeglo8VC6A245/CsBIQlI
         1VoBBUYRudQ4oSL0OUyTotmFmtYAOhpOcc/eTq/4zpkMGK2633KPKJASwSCFAWdsKHaW
         M7pg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=nHqSfj25WNJoCUTSDfaMz81MWUix8iyhojv+D5ZVNrw=;
        b=lCG4gI+y2paHZ8h9xwc5/xqTyKZBc2tZRJ7+JCNOtMVhKUqYKe+PsasV8SWWK/l+tQ
         EsjE0F5GzAQwnakexulv0/OLyKu+2IVRFs2W2HE9CZqATGfOJW+KWm1qEo9KPQOMExp8
         Rdidpsql7pJMQxX761aIQNoO0KToDaPnJqQPzYNZXh8x1xASafqwPu6rCEq6YVOxETAg
         JuNYbuKV0ZQRzRzHaQ6J0qkKSKKvHvcNUe8BxN/Xd9Y9eLsC87mrG13DzfMXuZZyCIL5
         f+XyYHuSFCnzDYqV+fyJFdDCCv70zuPKt+2n9mMuw0e4YTLekcnWwFsPRUQQd+ZZA/yr
         EjhA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lu5o9R8g;
       spf=pass (google.com: domain of 3axvlxwwkacwaiuqbwtdivmvowwotm.kwu@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3axVlXwwKACwaIUQbWTdIVMVOWWOTM.KWU@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=nHqSfj25WNJoCUTSDfaMz81MWUix8iyhojv+D5ZVNrw=;
        b=O4OaV45/q2dHTb4lR+14mSAyfNBi8jbn2vbZowG2y+NIaRZsAFwRhsla7w+2CvVXzi
         +IGx0nuE7ITwKkfOjONwrEnIeGrIn3b/T+Q+Bv6owczZvei+cGPZJ/oJ5zBIH0rNbdzP
         R5KvgSMGUc7/NjqxW2hzXgPAH13ttEYa7C8h2YfoBDf+il6q02xZYMcZUdfIxP8u9wy9
         6RdMLn4R77fliQwtnb4FPOv1lwZ7YF+VAgFK9Li3gDGW4Cf8rZ5pt0w1s9SQQp8yujhA
         mCSaOeUnFRoKEIBd0fk+AoF9yRmYSNj7az9cpabZrbN+aDIgcDOQj1XoVmjO/egpQZEc
         g9cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nHqSfj25WNJoCUTSDfaMz81MWUix8iyhojv+D5ZVNrw=;
        b=sakKXag1iPW+T/LTQEg9YmMGcP/FotoqVQ/aW0ZZFvJdjzaQyS8kGAfYqygTBzHU1P
         sq8gj7Fg3HscxgKMEF8L+laX/NWi+QQwRv8YosB+yEyVDj/fa9iN2L1tSm5CbA3vsqmx
         GQqLu7AxPSpotn5vz1i6fmFok/lW5Zwhv6kRkYEKTtybg6jn0q4MFNpQfdtsrbAd3EgD
         gvmo3qPtUvvySe5l5jqivnPSwMCv+q3T913sZgKrzo17BwS+sUnRehGGRa1kBB6R8l5B
         Itpj2/4WOj0hmhTadol6h79FRslKM3vwAxaKntqtU8+zyU7uL6exUnaI+8JsiFPEKybH
         w5yg==
X-Gm-Message-State: AOAM530mCsZZv3R18XQP6/0aidBAlEUkU/91hEIXnBKqS5jDkeT/MUF8
	N8m8GTHV17Z65UpW93K+zPo=
X-Google-Smtp-Source: ABdhPJyCVkYwLJMvz2lp6Ge6wCp8NWWG/VOstOAi4BZC9OTpqn9ihVwMqjeZYTyVswMxq2cw9Y3jOQ==
X-Received: by 2002:ac8:5d4d:: with SMTP id g13mr34949424qtx.348.1600460139819;
        Fri, 18 Sep 2020 13:15:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:dca:: with SMTP id t10ls2679699qti.9.gmail; Fri, 18 Sep
 2020 13:15:39 -0700 (PDT)
X-Received: by 2002:ac8:4d84:: with SMTP id a4mr36001531qtw.365.1600460139366;
        Fri, 18 Sep 2020 13:15:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600460139; cv=none;
        d=google.com; s=arc-20160816;
        b=yn2/7eODcmzpkCTAySbOhWFzM98iuAC8vl+tJWM3JSxGpsWg5loHFLaOwd2A4dkpv0
         K0YDblHCOcNy/noGrdP0v2Bv7IWeo2BGe4INQdOuPBM0TskYrBplyNy9PuTWbVHMlU39
         pMU4kJsmxW57Vogk7QloZVZcxyfF2V9bjDf4GLnH9exApq0Cqd2WbU78zElOa++bz3k0
         dtPbldnNiHfAlOUKSO+kM94F3M6ZDYlcephalHKbcveS26jYlNGETYnDrfJZQfG1X/vN
         sHuxZG+x/+tXjSxSCRjt5H+cJG3EuYz88Lm75hI/XDOeLsxrvZh52BEiDHKAGDEepT7T
         2SwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=TqIl0XsuMws2W7SAyTGgPlMUxJpmV31lTKH8j5/4FZ8=;
        b=Q/981QMb8Ygcz0txUfuR/TKtlDrSOUBya/Kdt0CtDiO8rRQsx9n8U+ygMovQHE4+sz
         F4XUspsFf6cwN+wM2SslToj0WLSBKYf4QmHrDBb6VUxTZPzv9Ji3Tn4TK/MedMo9nqFI
         jKs51GacUbyPc3iouZ4uIJyud7S8xo4/O7gDJkr2hG+oa5xlH9uggi0y8s3h8gH4qsGJ
         MEAiBX47dB5Xt2r77FZH0NRQ15N6FTF8MjX1GtmXsQ9YLjbPJmWhDcjR8+crHHCZ5Ecp
         I8yyBYqsx3pbaUU2MSQk4A0C5AnaYVkMN6sJWJYfTQyQp9ksxm0KUpcGBL/QnrCFh3Wy
         QkkA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lu5o9R8g;
       spf=pass (google.com: domain of 3axvlxwwkacwaiuqbwtdivmvowwotm.kwu@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3axVlXwwKACwaIUQbWTdIVMVOWWOTM.KWU@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com. [2607:f8b0:4864:20::849])
        by gmr-mx.google.com with ESMTPS id n26si189508qkg.5.2020.09.18.13.15.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2020 13:15:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3axvlxwwkacwaiuqbwtdivmvowwotm.kwu@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) client-ip=2607:f8b0:4864:20::849;
Received: by mail-qt1-x849.google.com with SMTP id a16so6096234qtj.7
        for <clang-built-linux@googlegroups.com>; Fri, 18 Sep 2020 13:15:39 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:ad4:58e7:: with SMTP id
 di7mr18639207qvb.36.1600460139023; Fri, 18 Sep 2020 13:15:39 -0700 (PDT)
Date: Fri, 18 Sep 2020 13:14:31 -0700
In-Reply-To: <20200918201436.2932360-1-samitolvanen@google.com>
Message-Id: <20200918201436.2932360-26-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200918201436.2932360-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.681.g6f77f65b4e-goog
Subject: [PATCH v3 25/30] arm64: vdso: disable LTO
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
 header.i=@google.com header.s=20161025 header.b=lu5o9R8g;       spf=pass
 (google.com: domain of 3axvlxwwkacwaiuqbwtdivmvowwotm.kwu@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3axVlXwwKACwaIUQbWTdIVMVOWWOTM.KWU@flex--samitolvanen.bounces.google.com;
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
index e836e300440f..aa47070a3ccf 100644
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
2.28.0.681.g6f77f65b4e-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200918201436.2932360-26-samitolvanen%40google.com.
