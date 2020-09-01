Return-Path: <clang-built-linux+bncBDYJPJO25UGBBCFJW35AKGQECJKUAUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 891BC2584C2
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Sep 2020 02:23:37 +0200 (CEST)
Received: by mail-yb1-xb3b.google.com with SMTP id l67sf11050530ybb.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 31 Aug 2020 17:23:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598919816; cv=pass;
        d=google.com; s=arc-20160816;
        b=aZYUADVds15jM2Hi4GFI79KZdQkdyYc4KFRDo4HfFQI7ZwT4GKiI0r1TmZ60LMjBKu
         PgbAt8YS3pKP+E/nIK1z8hD6uaNDfS25DQ/CSAr5y9k3kJBiecwMgThrD7TUK5c8isrn
         jBrkZ1GK8S5IPItcZ32GeQeyPtNpGeLepBCF+rPJlsNBwdRQpmvJxvtYbnokgnvuK6bF
         XqZnlbtxpqHyTc6inrbA0TeeAXlorkaat1wfazQ4WPlyeSW6aznLIs+kobkUWusXbuDY
         9zDTCppSLr+guKtu8ayYN+fKLMCjYJ61fFKLyZ8Z4In39qB/ZD24OZzPWcyAuo1dwT/9
         waLA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=scPX6CBtJjXxWqtVMoGYxjwN0b+1QaTrSaIZZwMtCN8=;
        b=nkzkbE4GUeqlKtl5Q2xRXMOmxfaAnppuWZfT2ZsRh1LeDE2zAG+hyxJY/WFLI37gre
         Kk9xYEvkHu4guTtAqmq7zN9sXkOCr9eQpuD/fsCdxPg1NoAYVlEuBk8FEymbu8Y8EiJl
         3+uj5Dd469pw26S/LMZ2hRM2Ihl8GWb5GBPnh+Z/dncwjEC0mlx9qmjDo/HJfgHdvzOh
         UpoALuoEWv8IUMqjA/FpxpgqsaRXlK4BMy/EZeofbeaNe1RJ09U5J1XcebEW/q23BBpX
         wXGHPCh4DjzCvh7b2DbRTKLGRa+svbSvi2LoEG7vOb4AjimkncqTIEEQWZxUkDdHcb57
         jgUA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vXbvBt0y;
       spf=pass (google.com: domain of 3h5rnxwwkaoyvlmaictvqmzaowwotm.kwu@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3h5RNXwwKAOYVLMaIcTVQMZaOWWOTM.KWU@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=scPX6CBtJjXxWqtVMoGYxjwN0b+1QaTrSaIZZwMtCN8=;
        b=V6MsB9ERJtYZ0bLIz0jImhHZqiJ1EhDftzP1iSavRZbJYzQM6UppHJmIIWtamqHqm4
         FMw0MwPTMmsd1X0qzs1FRiMtbBvr1u0dyrajcmCuR1fXaT609n90qaquxQtX7crq6X04
         t/ms9PguDC7aO0R9/5krZWKQgCMZ7orVFw2ROV4z+gQ+mJMF+Kkt5d60C+vFWIrsQsbL
         6U1McSRQp/OhUxOkJLVQOBhU1qPhWSV4uozbfq632gpsIAmfPoKap29qD5LyNWHuIglL
         7yV3GNsgYP4xSpFEYKEiLpyHaoUvDCZop+bEmoWMnyz52/AlUlqfCcAOgIP9asTdU4u1
         6daw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=scPX6CBtJjXxWqtVMoGYxjwN0b+1QaTrSaIZZwMtCN8=;
        b=p2LBTd4BnhTfH1R7RJUBbAcYprbY/Teilug3gnUBvm4c2474DKB5ZxwMHRAlDolCB7
         bNNwzGWlOJyWCL2LWwmFKraAY3jtCT9yN8M1EZY0kznwNcqAmZEmg3ynzMuek7/Tw8bA
         od8/RGLXouDciz6llbiULlLOpbzzYfCdWOfSpDx1Q25azg869IG30tFbWo4siO2mKGFV
         VePSngwaEYpjbHdbG4O3Ag7hSmHUaqILv9HnTmPGorDu+AoxHKDqOwyxV25cPDrBIqK6
         oKWlNbWofqaAMFs63oYt6fdhwVHHvsQULseHpUK33hnTVMdUJZPoSp3EDQEuXLZIUu1b
         EAXg==
X-Gm-Message-State: AOAM531cPc8OnWXuLuSj2yPobdYA76+DcNTVQk4hWBFr0H3W+lPAbJQU
	lL/oEXL1jMmyORu4Te0XlSQ=
X-Google-Smtp-Source: ABdhPJxuDhYzDXnEO3xx5/QZuKpfM3pz4EO1A0ttBEoS/Sy54CS9LqlMxP/7qk16jbkvyl7VzsN5/w==
X-Received: by 2002:a25:4f42:: with SMTP id d63mr5775981ybb.430.1598919816479;
        Mon, 31 Aug 2020 17:23:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:1042:: with SMTP id 63ls1713025ybq.11.gmail; Mon, 31 Aug
 2020 17:23:35 -0700 (PDT)
X-Received: by 2002:a25:7b44:: with SMTP id w65mr5981140ybc.243.1598919815878;
        Mon, 31 Aug 2020 17:23:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598919815; cv=none;
        d=google.com; s=arc-20160816;
        b=wUuVgbBsSxui8HLzVsIG5gB96Rns67nyeBkSXe/KI8dG248rGhlvWXK2Gi3YlZfg7H
         PcaygQHLLnx9dPDxyrSCtDt506GDtNZkgSw750bFjBclvsXLxO3lgoEeuYcw5lI+RMIE
         lpgMiI0QjVGJtCXeD7jPUmVBfVLUlBJ+cHC/nlaF5w5RxDzB8l4UFbteVyYbXyilyxOo
         chNtL8e1YoXdf0Bm4G4MKUXI7HbjzJ3MXGxWf+6Zh+x7LQAMFJ0uWlj9wcO+YiliEQW0
         mj+wM+70KHKxJt+69SLGJbponXHDmnFMTwWUpDUzFy8Tiyd24tamYdfqax9Iw48H27Zl
         Hq2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=OpCRtcsPpFRLic5hvjC2zaEKYM15+afAD1UpP9e19yY=;
        b=B8DPZKCvPqGJtUBU1Dca1LcEAhDzPK8RtEWGqsYVwsTgIIo08l4nHGzPtqT3pV0LzL
         o96o0fjCFwFB7N7xzEfLZYS0OzwXxyO6ebT5YQahXN3Kq5dL+xAdS+O9QM653nRmQjoW
         e7fXR7Wdc+QO3qeoV3TTJhkqBVB7IcUSFDqctTPHreHS02Y+IzOLWcHK8o8XWvzSEiL9
         XSj2Tyz2HN9cNL+oamK2RXGfsOQIINFhBA6d3aNXL0Kb/bLWTIY0RqvaVE6sZTItDEya
         CDgWp7CdxAJccK/nl2KMwaQRFQZesRxrRO6U0T3hsdAKG7m6qZfm6j87xjGmNAZQdRxh
         7s7g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vXbvBt0y;
       spf=pass (google.com: domain of 3h5rnxwwkaoyvlmaictvqmzaowwotm.kwu@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3h5RNXwwKAOYVLMaIcTVQMZaOWWOTM.KWU@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf49.google.com (mail-qv1-xf49.google.com. [2607:f8b0:4864:20::f49])
        by gmr-mx.google.com with ESMTPS id o14si476775ybm.5.2020.08.31.17.23.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Aug 2020 17:23:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3h5rnxwwkaoyvlmaictvqmzaowwotm.kwu@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) client-ip=2607:f8b0:4864:20::f49;
Received: by mail-qv1-xf49.google.com with SMTP id dn10so1535476qvb.2
        for <clang-built-linux@googlegroups.com>; Mon, 31 Aug 2020 17:23:35 -0700 (PDT)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a0c:a789:: with SMTP id
 v9mr923919qva.2.1598919815516; Mon, 31 Aug 2020 17:23:35 -0700 (PDT)
Date: Mon, 31 Aug 2020 17:23:21 -0700
In-Reply-To: <20200901002326.1137289-1-ndesaulniers@google.com>
Message-Id: <20200901002326.1137289-3-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20200901002326.1137289-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.28.0.402.g5ffc5be6b7-goog
Subject: [PATCH v2 2/7] Revert "kbuild: disable clang's default use of -fmerge-all-constants"
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Kees Cook <keescook@chromium.org>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Marco Elver <elver@google.com>, Andrey Konovalov <andreyknvl@google.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, clang-built-linux@googlegroups.com, 
	Daniel Borkmann <daniel@iogearbox.net>, Alexei Starovoitov <ast@kernel.org>, Will Deacon <will@kernel.org>, 
	Vincenzo Frascino <vincenzo.frascino@arm.com>, linux-kernel@vger.kernel.org, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=vXbvBt0y;       spf=pass
 (google.com: domain of 3h5rnxwwkaoyvlmaictvqmzaowwotm.kwu@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3h5RNXwwKAOYVLMaIcTVQMZaOWWOTM.KWU@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

This reverts commit 87e0d4f0f37fb0c8c4aeeac46fff5e957738df79.

This was fixed in clang-6; the minimum supported version of clang in the
kernel is clang-10 (10.0.1).

Link: https://reviews.llvm.org/rL329300.
Link: https://github.com/ClangBuiltLinux/linux/issues/9
Suggested-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 Makefile | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/Makefile b/Makefile
index 37739ee53f27..144ac6a073ff 100644
--- a/Makefile
+++ b/Makefile
@@ -932,15 +932,6 @@ KBUILD_CFLAGS += $(call cc-disable-warning, maybe-uninitialized)
 # disable invalid "can't wrap" optimizations for signed / pointers
 KBUILD_CFLAGS	+= $(call cc-option,-fno-strict-overflow)
 
-# clang sets -fmerge-all-constants by default as optimization, but this
-# is non-conforming behavior for C and in fact breaks the kernel, so we
-# need to disable it here generally.
-KBUILD_CFLAGS	+= $(call cc-option,-fno-merge-all-constants)
-
-# for gcc -fno-merge-all-constants disables everything, but it is fine
-# to have actual conforming behavior enabled.
-KBUILD_CFLAGS	+= $(call cc-option,-fmerge-constants)
-
 # Make sure -fstack-check isn't enabled (like gentoo apparently did)
 KBUILD_CFLAGS  += $(call cc-option,-fno-stack-check,)
 
-- 
2.28.0.402.g5ffc5be6b7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200901002326.1137289-3-ndesaulniers%40google.com.
