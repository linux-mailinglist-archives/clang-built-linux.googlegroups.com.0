Return-Path: <clang-built-linux+bncBDYJPJO25UGBBAUC5SEAMGQETL3IQ7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3f.google.com (mail-qv1-xf3f.google.com [IPv6:2607:f8b0:4864:20::f3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 6466E3EE0D4
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 02:21:28 +0200 (CEST)
Received: by mail-qv1-xf3f.google.com with SMTP id iw1-20020a0562140f2100b0035f58985cecsf6334543qvb.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 17:21:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629159682; cv=pass;
        d=google.com; s=arc-20160816;
        b=Pq5z0qcXWnzPmSvyb49c6Aj6RsApWdj8InWt3dAXY9wI1PKl+pUZ6Yyf6wSfXK0QFe
         PulHhcoVmPHudNqMubiaV4aaazSjBAVSsY+4TxuTwqoGi1+1IdUIYI52kHaYucHUSV6E
         VVz9xaFaMtw8XknHmDn7tqrTEruaDEfSPArt8E9PMZKxAzErdWF/QBBkUohNLBe53I//
         6/fDitoHZgjb9EseJVEClBGb5oklUrbe3HhKfj5cXeOyLLpIT7P7i8zFLP39o/04U14q
         RIqzFcCnqCtXIfVW9ICyRI1cLSMvrotbTxu91YceaRfE3OyZqR+UpcMeZDHILteZIX4w
         bawQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=oJGMgTpCtfqHGiEGpTEPr4we8hFSinrhWVZbITC/r7w=;
        b=poRefxfBRA7zeI0/NDka1I7k5ZoKHSwI+hDUwMxY4WoMSRfPKMjhrdvhax5bvVNhyF
         r4ch67kZiE3xOqo3VwFIqhEaSG/8I2nKMgFhk/1oZ+e/MYgdjOELGcXfKx+BDu9xtFAC
         9eD4Cg+IuvCSxo1NmmI8hSowsVspnk9ipzHkXteLCkEurN+Hj7euxtSgrwcvRaHktGSi
         evtNvSYWukAGUO/J4NTPHSJcGKF6gSNOkq6UL/l+eSzQim3aA71wkXmGN8n5ikSPic21
         2CqcSOlCf/QJ4IXcHul3l+Do5pQWzut7uv3PcF7oGzOzKteOn4xsjFukBFSBwnaXADI0
         YaZQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MScZ8npA;
       spf=pass (google.com: domain of 3aqebyqwkah4pfgucwnpkgtuiqqing.eqo@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3AQEbYQwKAH4pfgucwnpkgtuiqqing.eqo@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oJGMgTpCtfqHGiEGpTEPr4we8hFSinrhWVZbITC/r7w=;
        b=GHmOfVeo/qE5Hh8w1D/NRo6Os50u0aZNZA6C/sVQAxUCW0TB9aCEBWeTKoijl/KhsE
         +n3VFdbdlsBYDjBbDy+qmq1bLfr68FS8oF5Vn0B1xSjtdjUr1g0QDPOBsOpNIPWsFQ1v
         cygmDVunZnYkexX+taKaDthyP/n2nT61ovLTbMSnN0dJDtRpf0xR2059n+g/luzhppCM
         FawQWLCL41iFhmD9CynsRTgRhMwyXc7irq05i0/7awJSuUXOybWPe0G51nJsmJ0tsJoa
         iOeDiDlvkBKa/iYuRq8vJabcGqJW2PH5LQz+5RuKNxGlGb+7pw+gEY6z0j/vGxxT3hGo
         7ppQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oJGMgTpCtfqHGiEGpTEPr4we8hFSinrhWVZbITC/r7w=;
        b=QFmqBCBy9JPte49fZuOw5nI7F7CpJ2Yckk1M4EegfS64JIR2wrhOkFCNXYZtieAPLI
         ubEPJuqq0v3KTTY+1LyT6raZhEDHsUI8RTpuv86/5ts4K22Ofh9RhjuVsa8q8zHW0aww
         q7cAyeZBsR71Elxrs8kFkRrs3PCCqm3J8Eb/KPGAd359Nj43wRYwH96fu6hpXASE8Ctp
         e1s05MECKDc912+jarCIl12aZ5UFf+BJtTooHrl7bIyCy4sh8fgBN4/2ONBDoV+xHxZh
         1heocyw+/Hxkz5OhWvnSC8PDVLzsCm3UL9OFolT2t14Davms/FqTZtgxbDnlDczTV7iH
         7bzg==
X-Gm-Message-State: AOAM532HdfWo6a3HyQJ9Zga4wXWsTyJiD513K9jH+X9B+t3xMPjZWP73
	noISZ7iRL6+F19zdq923F1I=
X-Google-Smtp-Source: ABdhPJwtzfOPnZsqRQsCBQ52KsnpU4rPyU8f7U7m70nrtl+SpMTVUvD9jYdM0Rx8cXuR7alRLCOmOA==
X-Received: by 2002:ae9:f50a:: with SMTP id o10mr1064853qkg.387.1629159682305;
        Mon, 16 Aug 2021 17:21:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:1e06:: with SMTP id n6ls351229qtl.9.gmail; Mon, 16 Aug
 2021 17:21:21 -0700 (PDT)
X-Received: by 2002:a05:622a:154:: with SMTP id v20mr642998qtw.148.1629159681746;
        Mon, 16 Aug 2021 17:21:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629159681; cv=none;
        d=google.com; s=arc-20160816;
        b=HnFNrrOwyp+9eXNELJw1Xi3M8ZSlCkn0CmudmUzW9bTLQmt8CpJs/UEC9Shx6UE3G5
         6BW8s2WfVZBraxrnR7JvJvI/fuRUIjQs9FLTLwpO/zOdRIzNDYdD2GVtubHdEYPgItio
         VTXMdHbe+d/mcpBhvYXuyoM6p0wJrKBfVrlOcS2qoSTmEIOfCghNw13T4thrFIGvvpwP
         8SnuN8HujzV/U9SE5yCrqOhZGxLq9KeIhG4Y7HqaZICXpVi6FHrvFqjYDrwQMHmOOGgQ
         7T68n9/MwAEXFT5kem2imZ8j7L84QVBd8fczIlYddLpzHYTzzRT1jGYrgnpydZbHt/jH
         hVEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=GevpZaQQXx6uJazNaaL+jipz4XqGAMmvjabHC4B/TIQ=;
        b=yIJ3e8IHyOKVGstAI19fTBORszVhwc2H0GXdBc2RGlMZV7hGopbWFCUuVJUDygmVLq
         HFhbOZpyafg9xXk7cfwvomPWDJ+LMOZb1oRIoa63jw3pzYJwirEBNsSMVC8UPmfst1Cc
         cKGVuheGjcf82s3cftgYH7ey17u1lmiWCRAVGcuYQ3d7c7o2/c9JzLrW9tbmjRZ5jVDX
         YudOjjYGDq/nahQ+GgyshA1Fsz5B42mEp8FXEJIGNbE/VL3MnFiSXJIrXsrywxan5Niy
         peYjZdrS3FjbNubQxJ/sEgAYWHBMpIU53pWJsyZVnCNb7OyutS1C8AdP2/R6QOvKBmLu
         3Gzw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MScZ8npA;
       spf=pass (google.com: domain of 3aqebyqwkah4pfgucwnpkgtuiqqing.eqo@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3AQEbYQwKAH4pfgucwnpkgtuiqqing.eqo@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id w11si20715qkp.3.2021.08.16.17.21.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Aug 2021 17:21:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3aqebyqwkah4pfgucwnpkgtuiqqing.eqo@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id n200-20020a25d6d10000b02905935ac4154aso18478484ybg.23
        for <clang-built-linux@googlegroups.com>; Mon, 16 Aug 2021 17:21:21 -0700 (PDT)
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:478:6e44:5cf7:fcde])
 (user=ndesaulniers job=sendgmr) by 2002:a25:b845:: with SMTP id
 b5mr888141ybm.343.1629159681391; Mon, 16 Aug 2021 17:21:21 -0700 (PDT)
Date: Mon, 16 Aug 2021 17:21:04 -0700
In-Reply-To: <20210817002109.2736222-1-ndesaulniers@google.com>
Message-Id: <20210817002109.2736222-3-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20210817002109.2736222-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.33.0.rc1.237.g0d66db33f3-goog
Subject: [PATCH 2/7] s390: replace cc-option-yn uses with cc-option
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com, 
	Nick Desaulniers <ndesaulniers@google.com>, Heiko Carstens <hca@linux.ibm.com>, 
	Vasily Gorbik <gor@linux.ibm.com>, Christian Borntraeger <borntraeger@de.ibm.com>, linux-s390@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=MScZ8npA;       spf=pass
 (google.com: domain of 3aqebyqwkah4pfgucwnpkgtuiqqing.eqo@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3AQEbYQwKAH4pfgucwnpkgtuiqqing.eqo@flex--ndesaulniers.bounces.google.com;
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

cc-option-yn can be replaced with cc-option. ie.
Checking for support:
ifeq ($(call cc-option-yn,$(FLAG)),y)
becomes:
ifneq ($(call cc-option,$(FLAG)),)

Checking for lack of support:
ifeq ($(call cc-option-yn,$(FLAG)),n)
becomes:
ifeq ($(call cc-option,$(FLAG)),)

This allows us to pursue removing cc-option-yn.

Cc: Heiko Carstens <hca@linux.ibm.com>
Cc: Vasily Gorbik <gor@linux.ibm.com>
Cc: Christian Borntraeger <borntraeger@de.ibm.com>
Cc: linux-s390@vger.kernel.org
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 arch/s390/Makefile | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/s390/Makefile b/arch/s390/Makefile
index 17dc4f1ac4fa..a3cf33ad009f 100644
--- a/arch/s390/Makefile
+++ b/arch/s390/Makefile
@@ -70,7 +70,7 @@ cflags-y += -Wa,-I$(srctree)/arch/$(ARCH)/include
 #
 cflags-$(CONFIG_FRAME_POINTER) += -fno-optimize-sibling-calls
 
-ifeq ($(call cc-option-yn,-mpacked-stack -mbackchain -msoft-float),y)
+ifneq ($(call cc-option,-mpacked-stack -mbackchain -msoft-float),)
 cflags-$(CONFIG_PACK_STACK)  += -mpacked-stack -D__PACK_STACK
 aflags-$(CONFIG_PACK_STACK)  += -D__PACK_STACK
 endif
@@ -78,22 +78,22 @@ endif
 KBUILD_AFLAGS_DECOMPRESSOR += $(aflags-y)
 KBUILD_CFLAGS_DECOMPRESSOR += $(cflags-y)
 
-ifeq ($(call cc-option-yn,-mstack-size=8192 -mstack-guard=128),y)
+ifneq ($(call cc-option,-mstack-size=8192 -mstack-guard=128),)
 cflags-$(CONFIG_CHECK_STACK) += -mstack-size=$(STACK_SIZE)
-ifneq ($(call cc-option-yn,-mstack-size=8192),y)
+ifeq ($(call cc-option,-mstack-size=8192),)
 cflags-$(CONFIG_CHECK_STACK) += -mstack-guard=$(CONFIG_STACK_GUARD)
 endif
 endif
 
 ifdef CONFIG_WARN_DYNAMIC_STACK
-  ifeq ($(call cc-option-yn,-mwarn-dynamicstack),y)
+  ifneq ($(call cc-option,-mwarn-dynamicstack),)
     KBUILD_CFLAGS += -mwarn-dynamicstack
     KBUILD_CFLAGS_DECOMPRESSOR += -mwarn-dynamicstack
   endif
 endif
 
 ifdef CONFIG_EXPOLINE
-  ifeq ($(call cc-option-yn,$(CC_FLAGS_MARCH) -mindirect-branch=thunk),y)
+  ifneq ($(call cc-option,$(CC_FLAGS_MARCH) -mindirect-branch=thunk),)
     CC_FLAGS_EXPOLINE := -mindirect-branch=thunk
     CC_FLAGS_EXPOLINE += -mfunction-return=thunk
     CC_FLAGS_EXPOLINE += -mindirect-branch-table
@@ -104,10 +104,10 @@ ifdef CONFIG_EXPOLINE
 endif
 
 ifdef CONFIG_FUNCTION_TRACER
-  ifeq ($(call cc-option-yn,-mfentry -mnop-mcount),n)
+  ifeq ($(call cc-option,-mfentry -mnop-mcount),)
     # make use of hotpatch feature if the compiler supports it
     cc_hotpatch	:= -mhotpatch=0,3
-    ifeq ($(call cc-option-yn,$(cc_hotpatch)),y)
+    ifneq ($(call cc-option,$(cc_hotpatch)),)
       CC_FLAGS_FTRACE := $(cc_hotpatch)
       KBUILD_AFLAGS	+= -DCC_USING_HOTPATCH
       KBUILD_CFLAGS	+= -DCC_USING_HOTPATCH
-- 
2.33.0.rc1.237.g0d66db33f3-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210817002109.2736222-3-ndesaulniers%40google.com.
