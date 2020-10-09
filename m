Return-Path: <clang-built-linux+bncBC2ORX645YPRB24YQL6AKGQEJRFTZJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe39.google.com (mail-vs1-xe39.google.com [IPv6:2607:f8b0:4864:20::e39])
	by mail.lfdr.de (Postfix) with ESMTPS id 73391288E20
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Oct 2020 18:14:36 +0200 (CEST)
Received: by mail-vs1-xe39.google.com with SMTP id y196sf1400810vsc.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Oct 2020 09:14:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602260075; cv=pass;
        d=google.com; s=arc-20160816;
        b=S+ilA/IBDs3LnVSIJ2Q4TR5LKQGymTuMTpniWKxzcLsuKMjxAbv0wuxQTdvWWaSaXE
         lKNQKYwffCD9Lwh9gvamRCYmyGIf4EADrDx6BFA8GX2oR13twX68+0+OfzMiVqbyoPUI
         UNCwLgrVuWmSQfRUOzYpxOaW9zaBfeP05pF7xBZvODxeTuqN60UprJCz0S0uYIiW7cU8
         dEMzoQU5tSIVJmzRtP52KYK1dZ43y8fjYUgBDKPRfr2eH49lHlqb0EYAWsSh5OuUiFvv
         DSP9ReG59ZDbARKkxxHKOhNhqj2ig14it/5J/5lJ2ZRTVgNJF8PV/X32X89izk37yCxI
         u9kg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=GjdEKZStBagIsKPouwBI7cvpmFaWjVJNp2Jvn+YD3Xo=;
        b=cNAWFY7PlkdqbSRRuizeOqmGlme1dQJtmZhRtrulayMlT4SFc1pQ9LDfUL/ZTEvlSs
         RIOIWubk9bFpFfezYCOusKSJMvelTqjjSQQ7eO+obxZHWQEhIdlYywNaV7aNIZTK+Bis
         jqaMGHiuvPGGZQariSazQcT2vdaGfNSeLTz7qWO51djElbZu0w0xkmJ1UEb4X9ykXpyE
         6TH+yKHhPWkU/+wk7LkLf1e/97Tcr1SupDkzEuRfBA4mNDnRMy2ussESWok+KjIqZhMa
         /RXSOCEaZF62gTY9cfTyW727DP3wH7crJW/KlN9MxCdILar8H5vQhDpYU3SsyQPm1nPj
         OL4w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Of/McM9M";
       spf=pass (google.com: domain of 3aoyaxwwkaic3lxt4zw6lypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3aoyAXwwKAIc3lxt4zw6lypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=GjdEKZStBagIsKPouwBI7cvpmFaWjVJNp2Jvn+YD3Xo=;
        b=gdacDHKhYWADNBKMh83fTahBTM7tCFafDMiQRVk2flC84yfWpkSf0gt6N3ZWb8NvyD
         //ZmAeK7mTPU7okNm5g+cBXR6BiYZjLOPjiTCV67/At4tqvW6+KRoeVKV6rHkWQJpdcw
         /ldZC67NMWF1ZNpMsRxmmveAxuUC/zWLMrIlQ+mWLZb8IIC/I8JC4sSd9jMRqfLADCAB
         KPBr91iqRJ9FKOh/KjkMfqqK3000fhgBbScO+2KRdfSww4rC4rRMLHKxV4BvHyNTFZTj
         EyjZ8EAq8G/mZcjDdS+9C7HV1S/wyNE5p9RQP/+Cvv0MGQs7QFEl0PPLjXVOXzci3O/m
         aoyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GjdEKZStBagIsKPouwBI7cvpmFaWjVJNp2Jvn+YD3Xo=;
        b=j3YfZk0gvTiGFrzsGRxlG3A2Tj/PWQFqcBaotvGubNrTO6/xZbG5Gp4FKNqJi9s/SA
         EDOwZRK4cvcjF0VzsZXIMQ78tMfq2tgHOSiiaw96/A+sTyb/fmHLRFXV0LmN39CAijmK
         t6lIgDRAbDJM/Wqn8X0xgvhkm+q/FSuQn80+44wU0l/6wI2c+Z4YPd38kwME8Dw+CEf6
         EzETeA9UXU5OsDkZwfkbLzqa8AfkuAqRFpVMn03epRghmmaHojxY0+KCF7OBciVWet8O
         d2UTwCTiUgg0R3uxviYJwvJa4ckop/DBTUrPqtm+wOwtpeldRC/9Cmb2qee4obHQs5ZC
         CGVQ==
X-Gm-Message-State: AOAM5317yg/Vl4mALPqXz8bkyZB6juSuLJ+oJUq71sBmYNmrXlWiHQLU
	UB5TWRIspWUrtnp+aw4OkuU=
X-Google-Smtp-Source: ABdhPJy9vcQyIyyZ7M7Y7iRqjbOR+RILkre34OZt9apO65P+MyUuL4ss4IykmxpYINIFxEui++wsuw==
X-Received: by 2002:a67:ea4e:: with SMTP id r14mr8407921vso.42.1602260075536;
        Fri, 09 Oct 2020 09:14:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac5:c352:: with SMTP id l18ls497367vkk.1.gmail; Fri, 09 Oct
 2020 09:14:35 -0700 (PDT)
X-Received: by 2002:a1f:988e:: with SMTP id a136mr8223108vke.4.1602260074990;
        Fri, 09 Oct 2020 09:14:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602260074; cv=none;
        d=google.com; s=arc-20160816;
        b=ZyIt1hn4QATcrbOafSoZeGZ0cePYLdspxzJklf9OYKkaxEwifgKDrMZ63XytRVCU6d
         U7+8qj4WfoT60R3Do66Bv3b/R8eKn2CwfrSzhakmBjqgNKKdx2GuVQfT/kUwNZnyYMxY
         Sul5XGXo8dDUDuvqpJBn3m2yFk8L6OkjnQUjzJiLuLmjB+MGHfm60ri8UvOyMNPYU6B+
         pYQj8nxGHaR6ZMsiF0IHtk0RX3YdHPooWFoPCH65pK7iwQipJvuhY+JXIFXIC3EuYSrp
         pe5zOCcQGb6BbOF6BWfpzKQPJMzreTGP7wAeOV5KsHY6jhEtv23Em61NRkKCSS8ZHfm2
         bnIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=hXDRuVDCt6QcdhcOoOZPfzkgSyHjAxTz3vM4hOZGaOg=;
        b=xHOkNZZW2aShT0qoJBPjHHi8CPQwALWPka98eNFLdoJabwk9bOu+vcJCruIqw1Z/ig
         oZN/C00oZztpZevOBY5BZKDrjkz41d53qOo6iCbIR6W9uN+CzPQh+99y5cyqNbMCFOYk
         fKnbbSAY+jbVuW75M6zJ53p7WIn0ZW3+OtMFgI+nZ7OPENn8D4WolQ94lLTHU3Of7OTO
         XKnKRd3CQs2uupaJ4FgfD17t7iJFwedjvtZtN0nkMQZpriroMjYwVrRj3tEpHqSrnLuK
         AXbpnZW1bpM4Fn/xaoM8YPf1N/gIMo9bDT9nPiV54KxspEHzNu0AUGh5epwQltIuohw/
         qO4g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Of/McM9M";
       spf=pass (google.com: domain of 3aoyaxwwkaic3lxt4zw6lypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3aoyAXwwKAIc3lxt4zw6lypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x649.google.com (mail-pl1-x649.google.com. [2607:f8b0:4864:20::649])
        by gmr-mx.google.com with ESMTPS id r131si432599vkd.0.2020.10.09.09.14.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Oct 2020 09:14:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3aoyaxwwkaic3lxt4zw6lypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) client-ip=2607:f8b0:4864:20::649;
Received: by mail-pl1-x649.google.com with SMTP id b2so6600261plx.7
        for <clang-built-linux@googlegroups.com>; Fri, 09 Oct 2020 09:14:34 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a62:c701:0:b029:142:2501:39e4 with
 SMTP id w1-20020a62c7010000b0290142250139e4mr13194002pfg.51.1602260074046;
 Fri, 09 Oct 2020 09:14:34 -0700 (PDT)
Date: Fri,  9 Oct 2020 09:13:36 -0700
In-Reply-To: <20201009161338.657380-1-samitolvanen@google.com>
Message-Id: <20201009161338.657380-28-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201009161338.657380-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.1011.ga647a8990f-goog
Subject: [PATCH v5 27/29] x86, vdso: disable LTO only for vDSO
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
 header.i=@google.com header.s=20161025 header.b="Of/McM9M";       spf=pass
 (google.com: domain of 3aoyaxwwkaic3lxt4zw6lypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3aoyAXwwKAIc3lxt4zw6lypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com;
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

Disable LTO for the vDSO. Note that while we could use Clang's LTO
for the 64-bit vDSO, it won't add noticeable benefit for the small
amount of C code.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 arch/x86/entry/vdso/Makefile | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/x86/entry/vdso/Makefile b/arch/x86/entry/vdso/Makefile
index ecc27018ae13..9b742f21d2db 100644
--- a/arch/x86/entry/vdso/Makefile
+++ b/arch/x86/entry/vdso/Makefile
@@ -90,7 +90,7 @@ ifneq ($(RETPOLINE_VDSO_CFLAGS),)
 endif
 endif
 
-$(vobjs): KBUILD_CFLAGS := $(filter-out $(GCC_PLUGINS_CFLAGS) $(RETPOLINE_CFLAGS),$(KBUILD_CFLAGS)) $(CFL)
+$(vobjs): KBUILD_CFLAGS := $(filter-out $(CC_FLAGS_LTO) $(GCC_PLUGINS_CFLAGS) $(RETPOLINE_CFLAGS),$(KBUILD_CFLAGS)) $(CFL)
 
 #
 # vDSO code runs in userspace and -pg doesn't help with profiling anyway.
@@ -148,6 +148,7 @@ KBUILD_CFLAGS_32 := $(filter-out -fno-pic,$(KBUILD_CFLAGS_32))
 KBUILD_CFLAGS_32 := $(filter-out -mfentry,$(KBUILD_CFLAGS_32))
 KBUILD_CFLAGS_32 := $(filter-out $(GCC_PLUGINS_CFLAGS),$(KBUILD_CFLAGS_32))
 KBUILD_CFLAGS_32 := $(filter-out $(RETPOLINE_CFLAGS),$(KBUILD_CFLAGS_32))
+KBUILD_CFLAGS_32 := $(filter-out $(CC_FLAGS_LTO),$(KBUILD_CFLAGS_32))
 KBUILD_CFLAGS_32 += -m32 -msoft-float -mregparm=0 -fpic
 KBUILD_CFLAGS_32 += -fno-stack-protector
 KBUILD_CFLAGS_32 += $(call cc-option, -foptimize-sibling-calls)
-- 
2.28.0.1011.ga647a8990f-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201009161338.657380-28-samitolvanen%40google.com.
