Return-Path: <clang-built-linux+bncBDYJPJO25UGBBZ5GW35AKGQE26HZ4CY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AC712584BA
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Sep 2020 02:18:48 +0200 (CEST)
Received: by mail-qv1-xf40.google.com with SMTP id l18sf6537314qvq.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 31 Aug 2020 17:18:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598919527; cv=pass;
        d=google.com; s=arc-20160816;
        b=cvDAjPRcLAtQSrSAYU0BrhdAHtfRc3tu8WgXN6h6n0BzJDz7rQM4jye9OTeIaHVGtB
         6s0Ov/pPndZRLB6Gf5j8m2fwDL5pK+FpIHu5nehIpo73PgwpHPae9KyAolu6GUM6TjA8
         Yb1lEm+wqIwOxWPDM4J06880lO+WT+eh7upDSGQfUxoCcEN1AWfNT3DzUGMqcHXBPiET
         UQ7yrZU2l5u2yVoPcBWyd4bSAhqakClHUMV+Y9Y5jd9Ppn/tadD7+28IIOH6ZuoXrAIZ
         b8O1J96HyxnREPGQxF9BpIdH71VmBrLDV+vewmT4xXmolGNcLVYlS4CAKceRViBL1wwS
         Jj0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=+yomQAONu7UaHedDSgC8yz9Qx8XvDJ60cHBpr0Aqjzw=;
        b=upsHwRLh0+LVRt7hf4gTBZW5UfIqH8JKJmrfsG9gWu9CRpfKRsGXhVCcAfH1gvBF/a
         kgtVKVADoQOCdYfMCbMV+3UMeGz6wcqpF6lSanB7HtbjfUy9UXOFb85VeOQxBZGsdPDo
         Ovl8MepgOiS3qfpAKMG1KD+kLakuinMU+Y9dIF8pYSlDL2OYoua1usXhVYszaNg6fZ5S
         qvqt0gHuR7sGjHxbsQJKNO9bbo09rc8KqHpbkiwuGTHDQXPbs+5gpr3/c2/t/5NLprhb
         eOaHOjqlCjGIGdsavGNf2jvJIhJQymh+iGMXqfkPphU1Pitmc2ZsEvWYZjllFtW+3+oV
         Teag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=R0FbzS11;
       spf=pass (google.com: domain of 3zpnnxwwkammwmn1j3uwrn01pxxpun.lxv@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3ZpNNXwwKAMMwmn1j3uwrn01pxxpun.lxv@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+yomQAONu7UaHedDSgC8yz9Qx8XvDJ60cHBpr0Aqjzw=;
        b=gEpYII9j1whFB7jYXryv9JtsHim50Zf2R9prCAtqFNUQh5V6sUIPgTFNaZC11pgeil
         1opX2lvWxe2NsPAH0N990R7kQWlcEq78DFnchC1ClUOx4vZoUytNb5BpHLlj7ZKXangd
         obvA9jV8C8gQb8Hz0Vv0FPT2gORfNs513diPbSE0bhYR8tPhG9afZLoiVPSVMG6U3Zwq
         RX16gkKLwqIdp2ZUY6xm6d19YFo3cazgcdkqTznn4t3k0GQDb72sd9hI4eouKko9XUIu
         pQ37lX+sOKcz0zUVd9sXNDEtSklOtlaPo1MoR6iSAnBGjWItXRzY5xIlKqkrnRPKRhrA
         7EWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+yomQAONu7UaHedDSgC8yz9Qx8XvDJ60cHBpr0Aqjzw=;
        b=IV5J8Cqx7Qw/dKuSsY1kjUAUfAYT7uYR4366F1uVW+74lLfEDoQ3OJCj664/MPNGCf
         6xooXpGYZLtgzMkjVySHswdxpwjEGCt8dtJFsxxDq0nMOK1pvgfOx06tEnCBpjlZsMOZ
         wzGcr7iVE560vND+4vNu0o2xHa9lCnH1bzsJAfbicYeyJu4Ej01UQgBcHL0GC/3OAWuh
         LOCrMjwuU/AvHz0lgKythiDJlCB6Um6E1Gbb8ZWay7pyE+q8U73ttcM5yfM0BmY9B+Am
         NaESYPWHtzJfF2SQrBozIplErI0l87oKqrdUb8sGtc8Xbm4mDT48UMW0dMe+kZ2Q66h3
         BCZw==
X-Gm-Message-State: AOAM5326Oopc39W0HXRfOeGthyjz2CfPAdheqoTdf6ireHc1kPLzMWKD
	645gB7Z+sgwN35rBIiVts6g=
X-Google-Smtp-Source: ABdhPJwmOzqauJY0dMr8yA82ErwKzHH8jeNMGipmEafEgJSf2472h3pxegyl2HuXvJoohDWHYGbaRw==
X-Received: by 2002:a37:a6c3:: with SMTP id p186mr4037928qke.237.1598919527466;
        Mon, 31 Aug 2020 17:18:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:2e64:: with SMTP id j91ls3548012qtd.0.gmail; Mon, 31 Aug
 2020 17:18:47 -0700 (PDT)
X-Received: by 2002:ac8:22fb:: with SMTP id g56mr3870814qta.141.1598919527044;
        Mon, 31 Aug 2020 17:18:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598919527; cv=none;
        d=google.com; s=arc-20160816;
        b=vuGVX5ylR9+y4nbhR1d+aQ3mkXoWsw196Vx9yyeidiPqGdOlvNUC7qqjj+4UoFQzr+
         R9LJccUhgaOIzhgYcLAEakwZC+27/yQPI3VRmSUw2AFU62llIsPQv2+xM9VX3qsT+vxs
         VsueYWAGSTG8MghviuytqXoLibRNohbotnvSPmtPPh8TH46DzoH/+K1GXbjAWi5oQbA1
         ebrgpWiGq2csI4ZAfjnljCirhuoF2iXH2vaz26Jh1vfSigQXSQGCpcNz9ZzKOAV7C42d
         2kkL3yYVJEeR+eGPr/qHeHddF2VwvvSI/aCHbs1IZnBjXARFHCn3ySwgUGBbFwJjN44z
         zR/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=Atjbr5QaPNSyc9L6JLRq74W+KdS8XUB2zK1vE7a2/Jc=;
        b=LdqTbklmY6D4xShLjCX8mvCTgb+ij2t5nUBX3JuA98yZQWz55nlAhsFE+CTugbadc4
         XroNqRRiCujrpMTrM4biXVeFgCgQgT2F30rqFlSd8P7l+cIBaX4jAtCFB9//yfXzsw22
         chNv9Avu9BD0/p5z2vB+tkhA34q8GgjC0Ms6Xei92uiqmixWzEnFLCw4zkRv8U8CLKV1
         iFzp2TV3oN8Of2MiSDw+HTCGdBJHkDfzmqTKsfHUqoQTVV2BUxMo2P5Y1syeweyKjBo3
         QT3oojPZzLEMz/wW30N+1Jo2K4Ni/eXAPG6h/0tnSQqFHDhYZmtklZl5A2uuZCN0aL1b
         xp4A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=R0FbzS11;
       spf=pass (google.com: domain of 3zpnnxwwkammwmn1j3uwrn01pxxpun.lxv@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3ZpNNXwwKAMMwmn1j3uwrn01pxxpun.lxv@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x64a.google.com (mail-pl1-x64a.google.com. [2607:f8b0:4864:20::64a])
        by gmr-mx.google.com with ESMTPS id o24si550051qki.7.2020.08.31.17.18.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Aug 2020 17:18:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3zpnnxwwkammwmn1j3uwrn01pxxpun.lxv@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) client-ip=2607:f8b0:4864:20::64a;
Received: by mail-pl1-x64a.google.com with SMTP id y13so4307019plr.1
        for <clang-built-linux@googlegroups.com>; Mon, 31 Aug 2020 17:18:46 -0700 (PDT)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:aa7:8edc:0:b029:138:695c:a024 with
 SMTP id b28-20020aa78edc0000b0290138695ca024mr780898pfr.2.1598919526170; Mon,
 31 Aug 2020 17:18:46 -0700 (PDT)
Date: Mon, 31 Aug 2020 17:18:20 -0700
In-Reply-To: <20200901001821.1126189-1-ndesaulniers@google.com>
Message-Id: <20200901001821.1126189-7-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20200901001821.1126189-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.28.0.402.g5ffc5be6b7-goog
Subject: [PATCH v2 6/7] kasan: Remove mentions of unsupported Clang versions
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
 header.i=@google.com header.s=20161025 header.b=R0FbzS11;       spf=pass
 (google.com: domain of 3zpnnxwwkammwmn1j3uwrn01pxxpun.lxv@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3ZpNNXwwKAMMwmn1j3uwrn01pxxpun.lxv@flex--ndesaulniers.bounces.google.com;
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

From: Marco Elver <elver@google.com>

Since the kernel now requires at least Clang 10.0.1, remove any mention
of old Clang versions and simplify the documentation.

Reviewed-by: Andrey Konovalov <andreyknvl@google.com>
Signed-off-by: Marco Elver <elver@google.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 Documentation/dev-tools/kasan.rst | 4 ++--
 lib/Kconfig.kasan                 | 9 ++++-----
 2 files changed, 6 insertions(+), 7 deletions(-)

diff --git a/Documentation/dev-tools/kasan.rst b/Documentation/dev-tools/kasan.rst
index 38fd5681fade..4abc84b1798c 100644
--- a/Documentation/dev-tools/kasan.rst
+++ b/Documentation/dev-tools/kasan.rst
@@ -13,10 +13,10 @@ KASAN uses compile-time instrumentation to insert validity checks before every
 memory access, and therefore requires a compiler version that supports that.
 
 Generic KASAN is supported in both GCC and Clang. With GCC it requires version
-8.3.0 or later. With Clang it requires version 7.0.0 or later, but detection of
+8.3.0 or later. Any supported Clang version is compatible, but detection of
 out-of-bounds accesses for global variables is only supported since Clang 11.
 
-Tag-based KASAN is only supported in Clang and requires version 7.0.0 or later.
+Tag-based KASAN is only supported in Clang.
 
 Currently generic KASAN is supported for the x86_64, arm64, xtensa, s390 and
 riscv architectures, and tag-based KASAN is supported only for arm64.
diff --git a/lib/Kconfig.kasan b/lib/Kconfig.kasan
index 047b53dbfd58..033a5bc67ac4 100644
--- a/lib/Kconfig.kasan
+++ b/lib/Kconfig.kasan
@@ -54,9 +54,9 @@ config KASAN_GENERIC
 	  Enables generic KASAN mode.
 
 	  This mode is supported in both GCC and Clang. With GCC it requires
-	  version 8.3.0 or later. With Clang it requires version 7.0.0 or
-	  later, but detection of out-of-bounds accesses for global variables
-	  is supported only since Clang 11.
+	  version 8.3.0 or later. Any supported Clang version is compatible,
+	  but detection of out-of-bounds accesses for global variables is
+	  supported only since Clang 11.
 
 	  This mode consumes about 1/8th of available memory at kernel start
 	  and introduces an overhead of ~x1.5 for the rest of the allocations.
@@ -78,8 +78,7 @@ config KASAN_SW_TAGS
 	  Enables software tag-based KASAN mode.
 
 	  This mode requires Top Byte Ignore support by the CPU and therefore
-	  is only supported for arm64. This mode requires Clang version 7.0.0
-	  or later.
+	  is only supported for arm64. This mode requires Clang.
 
 	  This mode consumes about 1/16th of available memory at kernel start
 	  and introduces an overhead of ~20% for the rest of the allocations.
-- 
2.28.0.402.g5ffc5be6b7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200901001821.1126189-7-ndesaulniers%40google.com.
