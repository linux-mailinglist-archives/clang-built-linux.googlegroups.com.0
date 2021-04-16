Return-Path: <clang-built-linux+bncBC2ORX645YPRB4HL46BQMGQEWMJ4MCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 826D136297C
	for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 22:39:13 +0200 (CEST)
Received: by mail-yb1-xb3c.google.com with SMTP id u128sf7504603ybf.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 13:39:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618605552; cv=pass;
        d=google.com; s=arc-20160816;
        b=yWRnFthkNgLQpapCfabpAQdWNYdkmWtkDlXeTEIjDcj1+pGYd16t72kHKZauCsUjG/
         XUvGEfF5Wh6r2xhNRn3FvJXmiPxqIl4KzDcgykKEsv37k5WcldNQaBNic/VMG5O8si/m
         sMtvhCo4FKdv2yB3D9idhyn0V1acVfmNFDZz1ByCA2YY2qXsd/4mm1OCZ0ujj/oovRpf
         6sJen4Ay82CqL1eSWFsnF0DVXmsi+zdiElJVLRcYQqj8/hUe25lCmkMvJ3yuulkKauc2
         vMxHFEI8vVk5aaIExz0ClYs+jE/eiQ1WR7IpYB5fmwZJEoVGLfZadisTQFLfXo7zlsIi
         P12w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=n9pkasozhZOyMuhn7wfyCRnQ/rEZxO3Y8sJdOcY9YOY=;
        b=assu2Psn2e50V+VMpQBUYwbNQM2Oswq5BRybf7lzyjfd//7Ky/0G1Q6ORs3tvAmIVo
         REyiJGVqOpa1exgo4Prf5osu7Wf4SE1IdwiX6PhzXk96j19SxAGCoJSqRZNC5FeH6v/o
         K3FtwyysPGp6NaJWv3qBJH8FhyKKI+n0yaekIN4yHScCGxiurNu6Ag7Afv92ngEJvIQs
         tfAe4cyGLqZkytsHCQtrJOokFkzwzBJAXA2tqnpgUwK3xU1/7S7oqr7mObnOyqLf0s+c
         vhhDSdYiqdVkFUTGPjcodS4Q8syzdtkVmX4BNYgqkxc8xvYlgfFdqR8sQKDQqgld+5+2
         yUnw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tQpc8LYT;
       spf=pass (google.com: domain of 37_v5yawkamwas40b63ds5w5y66y3w.u64@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=37_V5YAwKAMwAs40B63Ds5w5y66y3w.u64@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=n9pkasozhZOyMuhn7wfyCRnQ/rEZxO3Y8sJdOcY9YOY=;
        b=esxhVNQiTc2TWqSeW1VxW94k0p0U1OW2rH/EHYIaOxCzqBOZeJPmoeE01AT7oYsuTA
         29UE0DbvARqA2Lhrltyt4DwV/c5rEuhktFdfWW25jXd/QopcC/a35eLRIMvEPOaJFzbx
         ivcZyX+t2ZLnkPM6GuGwFzpYGrCsMbxlCz/CeRPBIcwskUh9gB0WOR5BdhXJCA3JKwvK
         xr6A1s2OQuzn/5hWxpoVRGXw/WKEceQQnt+i/EcBTVq3QeibNkhPYI9XpqASe1Cs6Go8
         g1CmosibUXK64F6HfQ1AHLFMo1047CioJw71UpM9RAqWZIFOPDqPcdHPDgHBAq2FE7Jh
         RSww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=n9pkasozhZOyMuhn7wfyCRnQ/rEZxO3Y8sJdOcY9YOY=;
        b=bQ1RfjdHluC1FPZVxTiE9mQXar8xmkTlziY8f14OG3WPl4wf9BFi5KgfRQ2tOoCJ1K
         eWToobW1Egm7Z4mdqMnqL/5qJVWGE0rUglOn1XH5evdK5yH9coH/L6W2yadCv+dS1w+4
         nGRQSVIKHnlEa7vdFu5DYt+2PyaR+Vj0kJmE7DUeqm07O7L0dWvMS9ANPTrVR9SUCVg7
         SNejza60xxZBTYJtZcekalD63ibU74YLA8NLeJf+iaBepICzTwgtnX6UpSPNfO2TUwqj
         9gAQmhhyXXOu4136Z/QudCZBSlFPSf0oesisd0OpjXNqB1M0tvRKii+9XxnVNxaA3een
         upfA==
X-Gm-Message-State: AOAM532M3NgEDU7d8pj6OrLgu7DUA+jO72/PEqxbkXPuw1zXUb9IGpdV
	7cKKbU+/m2PfShfZ4czyHU0=
X-Google-Smtp-Source: ABdhPJyptMMuukRhZTYGEEcuYaRJrANC9uk3S3p0fBocfE9fbNBxMDxkWr1PIHo6Oeps762J+f3ILg==
X-Received: by 2002:a25:cd84:: with SMTP id d126mr1280841ybf.225.1618605552624;
        Fri, 16 Apr 2021 13:39:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:b9cc:: with SMTP id y12ls4963830ybj.0.gmail; Fri, 16 Apr
 2021 13:39:12 -0700 (PDT)
X-Received: by 2002:a25:8488:: with SMTP id v8mr1236999ybk.205.1618605552135;
        Fri, 16 Apr 2021 13:39:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618605552; cv=none;
        d=google.com; s=arc-20160816;
        b=tPQbYTR/pjAuyQ94NF85t/WChS+XOBmVrl3wSejj/0IZsT02qXbmZY0g6BTDJ4LRb4
         k7F/gzIwYwS8RDL6VEo7TA988VQwM7HTvefLpikgH5RswSmimarXEJuWDnFdrBvIf20q
         qBlFeuLGOBjxizsGUgUt7ppAgviq6k7aGNg3ad1q93dST0Q3zS9NtetdQzEPTPIrctDn
         HWsgI+j1yPDjLmaDq6uI++E8C4J7ehrO0JpzsfiRjCJ0Wh6v7u0Gw/4+0zDv8NiNQ5iw
         rJcagqS1J20sVmyhQWrJtA3BDusanh6Lw5ZAnzVXfespxFoE9KgjPBNFTXORVUYn6KNG
         gEEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=L00sBSj1ELLX/Krj/tO4geuDmUwEKOoDhO2GtbyEzGY=;
        b=yHNiLVYdK6GRyL6E7owtyPYaAhffz+Vokgvd91wdGXbvkW3gOPH6Y1BmWSLEH/oMJ3
         m8F5+4PyJStnFOxheKLcgBBzd5yWR9tmD+RZ1Np5McJXZxuj6NmdLe6uxnPAspmh5UIy
         iqE/zZgWiqYsXTjopmRfP/wQ3QlYwunogIylyKpzA/LPellQR910dUWeHTMg2bc9YmW1
         mqVMYD6gxN9arkiTec9GxHFxH7mhKHhkisos1bSZv6oZRORn6EFKt0rdRx6Vgxf1rKES
         7hDzFIi60Q3A8/4nN7yCGMsHw/jSf6OQx3xu59AqB0k2nXDnrVCRifJiHchjkFRlVYHN
         fY7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tQpc8LYT;
       spf=pass (google.com: domain of 37_v5yawkamwas40b63ds5w5y66y3w.u64@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=37_V5YAwKAMwAs40B63Ds5w5y66y3w.u64@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com. [2607:f8b0:4864:20::849])
        by gmr-mx.google.com with ESMTPS id f13si174281ybp.0.2021.04.16.13.39.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Apr 2021 13:39:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of 37_v5yawkamwas40b63ds5w5y66y3w.u64@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) client-ip=2607:f8b0:4864:20::849;
Received: by mail-qt1-x849.google.com with SMTP id y10-20020a05622a004ab029019d4ad3437cso6793987qtw.12
        for <clang-built-linux@googlegroups.com>; Fri, 16 Apr 2021 13:39:12 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:e262:3d8e:cbf:6164])
 (user=samitolvanen job=sendgmr) by 2002:a05:6214:13c2:: with SMTP id
 cg2mr10524752qvb.4.1618605551808; Fri, 16 Apr 2021 13:39:11 -0700 (PDT)
Date: Fri, 16 Apr 2021 13:38:42 -0700
In-Reply-To: <20210416203844.3803177-1-samitolvanen@google.com>
Message-Id: <20210416203844.3803177-14-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210416203844.3803177-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.31.1.368.gbe11c130af-goog
Subject: [PATCH 13/15] x86, cpu: Use LTO for cpu.c with CFI
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: x86@kernel.org
Cc: Kees Cook <keescook@chromium.org>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	Peter Zijlstra <peterz@infradead.org>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	linux-hardening@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=tQpc8LYT;       spf=pass
 (google.com: domain of 37_v5yawkamwas40b63ds5w5y66y3w.u64@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=37_V5YAwKAMwAs40B63Ds5w5y66y3w.u64@flex--samitolvanen.bounces.google.com;
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

Allow LTO to be used for cpu.c when CONFIG_CFI_CLANG is enabled to avoid
indirect call failures. CFI requires Clang >= 12, which doesn't have the
stack protector inlining bug.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/x86/power/Makefile | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/x86/power/Makefile b/arch/x86/power/Makefile
index 379777572bc9..a0532851fed7 100644
--- a/arch/x86/power/Makefile
+++ b/arch/x86/power/Makefile
@@ -4,9 +4,11 @@
 # itself be stack-protected
 CFLAGS_cpu.o	:= -fno-stack-protector
 
+ifndef CONFIG_CFI_CLANG
 # Clang may incorrectly inline functions with stack protector enabled into
 # __restore_processor_state(): https://bugs.llvm.org/show_bug.cgi?id=47479
 CFLAGS_REMOVE_cpu.o := $(CC_FLAGS_LTO)
+endif
 
 obj-$(CONFIG_PM_SLEEP)		+= cpu.o
 obj-$(CONFIG_HIBERNATION)	+= hibernate_$(BITS).o hibernate_asm_$(BITS).o hibernate.o
-- 
2.31.1.368.gbe11c130af-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210416203844.3803177-14-samitolvanen%40google.com.
