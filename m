Return-Path: <clang-built-linux+bncBDYJPJO25UGBBX5GW35AKGQEJFZODUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93d.google.com (mail-ua1-x93d.google.com [IPv6:2607:f8b0:4864:20::93d])
	by mail.lfdr.de (Postfix) with ESMTPS id B02C42584B6
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Sep 2020 02:18:40 +0200 (CEST)
Received: by mail-ua1-x93d.google.com with SMTP id g4sf1621675uag.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 31 Aug 2020 17:18:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598919519; cv=pass;
        d=google.com; s=arc-20160816;
        b=zPfukK++OvUEIQ1FIg2Eppy5nl15o72SmttWgeQtB2L44FPjuo7CxduXMSsCIROeXd
         yot2alsh4ZCLvbxNuNjdsHjsWy/vv954wjf+K4Xmvddf1HpDV54c7f/E4nvAwSwVxnK3
         Z6OslWBy9FE/qltEUBh6xnJW/Ev9QgX1ax7Wtm6kG9IzHOlukOyI5/Aym50iJmixj3uF
         bJ2nE4Ijh8EdSFP5NyUettAI9n6tslbztVM+avqB8CwK3yzJuhzrtbDU3aOHfzu80/fB
         np8U5WdMStYHZccql+oZB1/Eb5Nt1yQl+xNvsjzK3OsvgKBCg7mIGr7nucnx5y5pPJv+
         5gfg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=DZxu5i9VnCIZelJ7Gomg74GuGcBa3dRsfaG8V/BQ/2c=;
        b=H1wo0mtEEt1ev/UmI/xxt/F0CEp1C0iQY3J4GpJdO6s3EypYhSGyeLSHC8DftKnzUZ
         FyD+HqzWPCiKaFoutatc3BmFS6v9THxebUzaBBVFoUJSp5beCgVzTn6WZp7+6RlWBHO4
         96EWGl7Pju2mK1mdX/iSC7SDUNdFVCXDaPOZFwhS8m1BP4TJnPMpyUe3Z8BlUWEiUzzM
         Fe6SWr1n5XsB4l8ecbECFKtwI9MFMCxT91+Byse2NbOuJvP7Pjz3CmyC1el9L+XW9vxc
         dJldKySJ5ZCA+HqBCZgXqap5DZgq7RPJbvCGxbUE82KviGwt1UJwsEIDuA0EEigklMtH
         gAtA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=t7aEIwO9;
       spf=pass (google.com: domain of 3xpnnxwwkalsoeftbvmojfsthpphmf.dpn@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::1049 as permitted sender) smtp.mailfrom=3XpNNXwwKALsoeftbvmojfsthpphmf.dpn@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=DZxu5i9VnCIZelJ7Gomg74GuGcBa3dRsfaG8V/BQ/2c=;
        b=D6CTzYn+3v5WwOTw8CI4FyQoQOmiH6TWBVbbZov00r4otbGsVLq5mWim/USTSocZ7H
         A7GOFNLAw44WCbeaH125jfRtXMp8YHIKgq7YF/o+zkuuo7/d41EAgaZ36ndRHLVe5Y/u
         rD4p6t/eH2w2aej1XazRFznwSpdvK+iW/9OfFdnZVKRCitmMrCwz2fKiYnr4Lhj4lBYg
         6vagSq631qyA/8D99bsuOl8TS+K5TlQ6sXSyfEqv8lKr05pPZ51C+lAFYR4czmQPtApA
         kdDySR13bluVSq+vqxypfrBsMLUVfvzu7oVLfmYaJL4VuZqxAoivswAYJ8RQMsN8vvRM
         /EEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DZxu5i9VnCIZelJ7Gomg74GuGcBa3dRsfaG8V/BQ/2c=;
        b=G+W2GUkyw5VsJ6OwD0CTl7b4BEOuXh54bj2XveykIxUgSWxoudXOK0/3MEqzcGWu9v
         5RmB26hBS2fheBrUZ2fhKe5+pRRehU2AQkGSwafJ+LtIhJ9SqybSGmPqoxeAxV4lYkxl
         ADTLtaDRLMfbD1yOqEWRxsuVIybtpw9TujZXkuffdCDL7msjonq7CupKI3nOJ76jPr/O
         bhZmGEqi5WkbvxBtmv2JFf3nkFXVk8grTUUgah3vIrspFdaw1s0vTnrBmm/0BS6Fw1UP
         7D4yabFqSI2X0eX+Vo5snGGwDlXX2w8xIE/5wSNuc+N5pUW/i+959HrCzo+NBNgquMVx
         dayw==
X-Gm-Message-State: AOAM531M/UbBj8DYb8nXfx57Bmk2ZLDbw6KkbV00Cps4Y7xW7jiQAd1q
	uN+VdJvp/z8Ra4XCTPW/UjU=
X-Google-Smtp-Source: ABdhPJz3ZIGjJ5gvOqvls79qoeuKygqHqvvli40znOv5e/Dqg/jZ8Qx4K3sWMuFClMobTNzSqCgMjw==
X-Received: by 2002:ab0:5e43:: with SMTP id a3mr3052893uah.19.1598919519571;
        Mon, 31 Aug 2020 17:18:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac5:cc54:: with SMTP id l20ls423912vkm.6.gmail; Mon, 31 Aug
 2020 17:18:39 -0700 (PDT)
X-Received: by 2002:a1f:e641:: with SMTP id d62mr3349275vkh.30.1598919519289;
        Mon, 31 Aug 2020 17:18:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598919519; cv=none;
        d=google.com; s=arc-20160816;
        b=JpE3BLEqVC9sDCk5bU2pU92vdSiL7GP2hYpnm43b3mFVYV7QfqYxM985D0zkZSRhPy
         4hNlVhG0oeawWLNTZq2RfU2oE5aXHS/fNQsTt97/pHD5+GJE+83tWXRAgUHr7fi6Dczn
         Dl11khwMKLas7364htbqzOQntXDaG+FHhXMVD5gXNPgHqTIy8TUEQQ5gDE97muqwGxMp
         o8v0BKAr0s2Ym8V0BrSO5puN436dm/M8e/I4FIQTIw5nTvOq1qEp7uE4w/lAYXEiVv05
         /O4IzSc5CsIHRxkZ2CpOrrfyiFk+jRJSbRdeJQaWPh0/qyor8VsD6hXdzxetYJhiHVoP
         +nEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=OpCRtcsPpFRLic5hvjC2zaEKYM15+afAD1UpP9e19yY=;
        b=tVZz3zELDUQHl648ABxal8658huBUdpuB3gZB4f76rrv7EfTwPBrQ2Rh/KwMc9oV/l
         lN5LDYWo3BMsq3tFv7LCsGDxIo6ZtIBmk1tqJNhf1leE393FbuMGdrARU9Jz+UycoX73
         M7Hpg5oTR4jvK4ugmvSsLXnXhSLC2Y67gVZqP7cih941IkGQxUMO86b+F3MxI+gFf6wV
         yQ5wDwBtp3NS9aFlH82hmH80McVpZHLbgenVzazCibbTTrl+B+IhuYd0RM1T+mAum7MG
         KsxWoDxdGHCP4zMQB7xD9fte0Km6rbknbbcv86JkCwf/q2nVIANa4S2l+t6gRCrXhAbB
         ToFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=t7aEIwO9;
       spf=pass (google.com: domain of 3xpnnxwwkalsoeftbvmojfsthpphmf.dpn@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::1049 as permitted sender) smtp.mailfrom=3XpNNXwwKALsoeftbvmojfsthpphmf.dpn@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1049.google.com (mail-pj1-x1049.google.com. [2607:f8b0:4864:20::1049])
        by gmr-mx.google.com with ESMTPS id q1si621137ual.0.2020.08.31.17.18.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Aug 2020 17:18:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3xpnnxwwkalsoeftbvmojfsthpphmf.dpn@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::1049 as permitted sender) client-ip=2607:f8b0:4864:20::1049;
Received: by mail-pj1-x1049.google.com with SMTP id c1so485705pjq.5
        for <clang-built-linux@googlegroups.com>; Mon, 31 Aug 2020 17:18:39 -0700 (PDT)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a05:6a00:1356:: with SMTP id
 k22mr3356071pfu.76.1598919518336; Mon, 31 Aug 2020 17:18:38 -0700 (PDT)
Date: Mon, 31 Aug 2020 17:18:16 -0700
In-Reply-To: <20200901001821.1126189-1-ndesaulniers@google.com>
Message-Id: <20200901001821.1126189-3-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20200901001821.1126189-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.28.0.402.g5ffc5be6b7-goog
Subject: [PATCH v2 2/7] Revert "kbuild: disable clang's default use of -fmerge-all-constants"
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Kees Cook <keescook@chromium.org>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Marco Elver <elver@google.com>, Andrey Konovalov <andreyknvl@google.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, clang-built-linux@googlegroups.com, 
	Daniel Borkmann <daniel@iogearbox.net>, Alexei Starovoitov <ast@kernel.org>, Will Deacon <will@kernel.org>, 
	Vincenzo Frascino <vincenzo.frascino@arm.com>, Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=t7aEIwO9;       spf=pass
 (google.com: domain of 3xpnnxwwkalsoeftbvmojfsthpphmf.dpn@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::1049 as permitted sender) smtp.mailfrom=3XpNNXwwKALsoeftbvmojfsthpphmf.dpn@flex--ndesaulniers.bounces.google.com;
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200901001821.1126189-3-ndesaulniers%40google.com.
