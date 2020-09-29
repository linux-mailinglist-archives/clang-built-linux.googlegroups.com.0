Return-Path: <clang-built-linux+bncBC2ORX645YPRB6GWZ35QKGQE7AHCJHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 76AAD27DAB1
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 23:47:37 +0200 (CEST)
Received: by mail-il1-x13f.google.com with SMTP id v5sf4756282ilj.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 14:47:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601416056; cv=pass;
        d=google.com; s=arc-20160816;
        b=XJ9WSYFCQCnPf/0q3wc+Styc8SnTo000k0ksPhCtwh9Hyrw3MNs+jSMED7rsEGakg8
         WGwFCNDr+r4SgS7YLMZjp1wWwz8hVax10tagIk65+OaHhIpSHVywSIEqzo106RLZqwUy
         SK0ygU4dWB9BI4B82rbCowjpr+OLgYieCmu3SC6ph6dp0bGj1vwSBrDAGyhXbfvzS5Ek
         D2I0c4K2D9DxnbbqxK3dJjU9v+tG8Ocmzdje9JU7hbzI6KvWy/k3Od9u2ckZcUAGVThy
         AWwkzzo5gjph4ljseBlfmr6SNy5iVtWkEmScVm0EfctpuKcfhwhS4g/429jgSBLZfPAG
         7Lmg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=z1jqwSPaqbHQwUuqqAVPve/GsSbHNFA3GsJvF+8SXKA=;
        b=ACXGaIhOgoIYwkdKcw2Uy+nBJbxhEwAM2xtAwfrOWaWWkbsLUW06FiKGGVokEdXBqH
         ODStDyf7KnNY9kQ0BssYs/Lxpb/H/ZRZkDItnZwXeSxbpljAOZpzM3wPJi1ozT7tkHhB
         aOx88sGNUsjZRDqyLyZyFSj+PDfGpXfwOvbAhONi9iQLRqRphNf+ArOz31GxUdwLRLD3
         MPuN7xtq05itwQaMqNbNJsd73f8WirJ/mTO6Ut8LhasEOmW+Ne9bGTOXWzXcnCeGRFhN
         5TSsZvbWYQlToMIwodJoG/ki8SKnTBFbgj/wen/NodLY2w7d6beOzyzgiXuhcZcNFU0d
         szQA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Imh3zKnl;
       spf=pass (google.com: domain of 3d6tzxwwkaj4q8kgrmjt8lclemmejc.amk@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3d6tzXwwKAJ4Q8KGRMJT8LCLEMMEJC.AMK@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=z1jqwSPaqbHQwUuqqAVPve/GsSbHNFA3GsJvF+8SXKA=;
        b=ZrzTn3cjlNZQMuYVjwCMVprt8ifM2yU9XdvskviZAzD58lCvwiBbuWq8TPimRsxTuW
         0iINyxDFW7jcPrVHxR/TpmJd+V1L4oymmhUMZEhNh5al91yy7cRD1jPNbZA2JhAUIT8q
         YgtqZYe0v3osW4ht1z13PzWNLMGSTwA3gw+e+HGtrZhTXazBK4VJ6Ntg6BUYOI8D1Y8b
         sRzai6o1E2TrQh4zHDs/s8iygNrusX3eFiNoSsPWUoiFHNxNZ3OhQMnyRjB6zP/I7BZ/
         t5cpWe8fnMX0TNRpDgn2howufrazn7Q6kEoXp5ZkD9O82SjgYE8riUtj7LVM9GCg9Aa+
         +K8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=z1jqwSPaqbHQwUuqqAVPve/GsSbHNFA3GsJvF+8SXKA=;
        b=uQ+dRVWarPvhFzoyLN++wHwAYfKORqYAIvmc/6VGwsNKqptV0Ry86vCFJx3IPQqyJn
         CfIPeoeFpePhS4Ao91S0TWEpmwPgogDtSrHt2ljwPoMpcOiVPoy9j9qLaRP41dTDG5i7
         42w+7Jrn27wxV9Jt3XiecG9TWalt7Xg6l8MNxxz0hnuM+OicpYJ7E8ACrAxjDmaZT57D
         xw7bgWCD8cO+TmOxreuHcT6Gc63awfbY2VrEAqPBVNK0eAwGnRQzihepbGwF46aPkk65
         40wUOWHvarUoHxjiBxx/FHGIlhsEU0bQz9oosJpLsDQs7RoNZeYdehAzJoESPM6mmMkB
         Ipgg==
X-Gm-Message-State: AOAM530KRFYvqECYSm7nPi/YhDJe2hYqikOUPYdSyOpKjst46N/xPac+
	BgsHFSDSrf50RRdLh9AbT0k=
X-Google-Smtp-Source: ABdhPJyFuce2HQVWv5rG94DPA7xFe83bSv2w8xD8aWttibIT5jmZrHVFVYpO3IuzA8RsndMuhxMnWw==
X-Received: by 2002:a92:8946:: with SMTP id n67mr4835585ild.144.1601416056413;
        Tue, 29 Sep 2020 14:47:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:8e8c:: with SMTP id q134ls45240iod.7.gmail; Tue, 29 Sep
 2020 14:47:36 -0700 (PDT)
X-Received: by 2002:a05:6602:2e87:: with SMTP id m7mr4004492iow.106.1601416056023;
        Tue, 29 Sep 2020 14:47:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601416056; cv=none;
        d=google.com; s=arc-20160816;
        b=pkb6V3CyGqCRv4R6qoOHRy52EuR5pdQueL/tAqFqRbJrfYv02WxmQtAh0cVd9cdYuG
         ugv33VHR2A0q5OO7zTYDOwrws7QJeHekJWx7fbKh0WRBcGsebvstS1i7fR96UYhZ7Nyn
         YC6LLdMFpwP7JFn6rvN7t8Lw6A1cwBPi0uIsHNR9yWncsY+VF/pjVUnCdg1RbiOiS58Z
         L9weCOD/yZbu9V+SQa1QhSO81aE30pK/JChjv7pd7zOHlQOC8aNqQl6S/RZWdFa/2Qd5
         eknOpQh7aHu11eH6BzSQgPJ0XLM1h5SHPUquNR9+bOBzHUGZfnCkCHpgk+cHMfIQLWO7
         wb4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=19TlqdLHcWDTmI9u6TYfXzttwjA+Dmg1Ug41aa4j6uk=;
        b=c1eCeXEu4Hmfkgzo/BX6OUBZ+OSLnvHCamwDAg1ZuhrYgAv0seHEfxstF1btHFPdO8
         w7IIpH33u8IBPw79hF34eUuLLlWcxDtMup6aHemfj3IKgHhu4pLsI45ssgxGZ3WAfkK5
         i4F9VW7S5M6vOjEKtDjavMOBQDLn0lmN0i+Zc1WYxZkB3C4n4wmveVe+7J3c0+hCKaql
         EZIKMXpDmpHjkRJ/74B7yJDWVtqb9Dha+cgUPKgXW3EyIRzhTAP7z0IRjJMPNUZSj9pQ
         VoiTx1R/1AVF2ivGkgpPMPinFB4kQDa3G6hofZ3feMp85x4GOpr2dwH8h57HDsN+XxcB
         cKig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Imh3zKnl;
       spf=pass (google.com: domain of 3d6tzxwwkaj4q8kgrmjt8lclemmejc.amk@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3d6tzXwwKAJ4Q8KGRMJT8LCLEMMEJC.AMK@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x84a.google.com (mail-qt1-x84a.google.com. [2607:f8b0:4864:20::84a])
        by gmr-mx.google.com with ESMTPS id c10si404259iow.3.2020.09.29.14.47.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Sep 2020 14:47:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3d6tzxwwkaj4q8kgrmjt8lclemmejc.amk@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) client-ip=2607:f8b0:4864:20::84a;
Received: by mail-qt1-x84a.google.com with SMTP id b54so4060505qtk.17
        for <clang-built-linux@googlegroups.com>; Tue, 29 Sep 2020 14:47:35 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:ad4:4594:: with SMTP id
 x20mr6549973qvu.4.1601416055400; Tue, 29 Sep 2020 14:47:35 -0700 (PDT)
Date: Tue, 29 Sep 2020 14:46:29 -0700
In-Reply-To: <20200929214631.3516445-1-samitolvanen@google.com>
Message-Id: <20200929214631.3516445-28-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200929214631.3516445-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.709.gb0816b6eb0-goog
Subject: [PATCH v4 27/29] x86, vdso: disable LTO only for vDSO
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
 header.i=@google.com header.s=20161025 header.b=Imh3zKnl;       spf=pass
 (google.com: domain of 3d6tzxwwkaj4q8kgrmjt8lclemmejc.amk@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3d6tzXwwKAJ4Q8KGRMJT8LCLEMMEJC.AMK@flex--samitolvanen.bounces.google.com;
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
2.28.0.709.gb0816b6eb0-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200929214631.3516445-28-samitolvanen%40google.com.
