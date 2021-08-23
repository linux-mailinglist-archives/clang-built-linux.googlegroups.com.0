Return-Path: <clang-built-linux+bncBC2ORX645YPRBONOR6EQMGQEVWUOCVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F2123F4F0B
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 19:13:31 +0200 (CEST)
Received: by mail-pg1-x538.google.com with SMTP id k11-20020a6568cb0000b029023d00ca7bbcsf10656733pgt.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 10:13:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629738809; cv=pass;
        d=google.com; s=arc-20160816;
        b=NmBMmsklKbR7PJL6WwvEg5/1g06zSjkv3UF3Jm9smO3KYQn9oMyvM7VYKehBCHydWs
         NtoxnxlQ4UIU83e8bZpuJGMA256SGZD8wFMIPoGNL6mYNK1eZuzcy3SFujCLa2xMlJ1v
         N3UhSoIo5X39njqCOAWGzRvQ4DFjrKwHLEe9ao9mAr4mYuAj1bMck53HQxz/vItqhBcd
         /jsa3nybbmS2Ki9DTUqXO8eO4yrLVMTgExr5eX7Q29XA8oCJOnREdxyqFE+JIp/EjhRY
         bEls/bVFf40vM5m2KDxVZu1T+ficsjiMhcc7fbbAShmtV4s17WVpzD509dMIUx0uBaF/
         14sQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=VDuFcaAhYN8N5A5uaTE29cpceDWftjGWE+ExNTbs1Eo=;
        b=Z4YBTj4GB3eDXFsQriXImTHXPMbLHzR8RVSYDCoZEWAXeYOvPysA7LjHg+0eYuNDxe
         4WdppYc77Bx99zFXujRShx3VIklys/WLr8R76jKCBS9XEx8Sn7+URx2x1w7P4SqGq1mO
         mr41I3fjfq6PDXLanVIVCbklCq/5rC2EWXRQMgk/eulAJcQMaFfXMn0HSW+Wd0ei53F5
         qY3GjtNu7rxp+VneCY3piunVAz2hQS+6g5+ZdeqxpA9F86ye+ysegyfjr/AMpmb6TFb5
         NNjexvuzriKoD24OPLyzxH+KmfAX2hUDuSeNVoWzeEIXtfo6eCGygWbH5MHhph7FoMUh
         omTw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mh+67Hga;
       spf=pass (google.com: domain of 3oncjyqwkaiu1jvr2xu4jwnwpxxpun.lxv@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3ONcjYQwKAIU1jvr2xu4jwnwpxxpun.lxv@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VDuFcaAhYN8N5A5uaTE29cpceDWftjGWE+ExNTbs1Eo=;
        b=HLO9bxzm5XjGdp+7C8pExAV2u2pUVTwZ7BvgxRzsFLnM2nlzJ1s4X+7e55IbuIY1Ev
         wHx9MiPboThVBX3L3QFQvffShufI5sJR3GZZNEYAhwZ2uOsRD89WNwfMhMbAeDrrn7TA
         BaUKwh4NwSi619WbauKT8zkvbvOPHmZFBjCBA/WYp4EnX/7qOK8qo+KJrWDMxKFB8pQa
         RARM9JmDNlW/YF0V1n8V3sZFCw5EbKC/rMqDd2NjwLDSDaxxZT+dazANfLDTTt9H1Ci6
         K182PvIlsrcYW2xF5Ai946jlHn63vMRCxYjizM8N1C1XMScqwYh74KdQAVpDLX8E4xbl
         /oJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VDuFcaAhYN8N5A5uaTE29cpceDWftjGWE+ExNTbs1Eo=;
        b=sTY5EUa1tvElnwhnr1EXwEQXqX/FttLtxfcDqaRwSaeVLhJ9N+ClF9Rs1beZiBjxKL
         jXc144AdM57QnpLYjpRiMhQHFdGcRGYzTNfQhulJdUo4Pku6tAgZ5MEQDSN8YwI0r5Am
         PzBe48N3bwlmHGHzQivsuY9m3mNuy/BY/E4kMVS4NvVCsrCxW1CvxpJaZ0FF3mgB2ZwD
         5oTY3QDH0+jRuzXUBfPIdgbtVPLB+08QifwJ9FoIKe9rAof7CFCzSnltCYDrhZi373zo
         Wsylwltc40k0JOwrb/ArC2OA0NnSvUm7kVYv9TZJLCAGQuhDNRRJ3QFAAIY5+YEVpgG0
         hUAA==
X-Gm-Message-State: AOAM532WVs30HYhmPPMjXDG0RT6xApikprlhoaAGW6Dl+YkLijepup/A
	4VQFph5HjjW8AlCNWEOEzwY=
X-Google-Smtp-Source: ABdhPJwX8oOXurzKEFuKGvqmjqb1t3PJbPYA7dthdIuwZfbQFogTg2gSGsr4gnQs5pC+WocwXrZQJw==
X-Received: by 2002:a63:154d:: with SMTP id 13mr25485584pgv.404.1629738809751;
        Mon, 23 Aug 2021 10:13:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:e881:: with SMTP id w1ls3673434plg.9.gmail; Mon, 23
 Aug 2021 10:13:29 -0700 (PDT)
X-Received: by 2002:a17:90a:6782:: with SMTP id o2mr21044924pjj.165.1629738808995;
        Mon, 23 Aug 2021 10:13:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629738808; cv=none;
        d=google.com; s=arc-20160816;
        b=nGTtRrdD3SVy+Y7YRr2YfaC+lNV3ulmZMRBMn7wE/qvuEnEuA/yKvMsWcLWUFwFp5h
         JAhUuq3qDyRfK23xI4cAs9zIZkegZ6CczgyYqV8gSBzhbZpX7loQUWAx8lsSXE/8PIc6
         euxJZ8657bbV11xTJ6bxrFrdtVbY/x0LoUUn1wZF6o/AEumkhmLMqaR+MUMoUo1hjVaj
         +XaTPKhpMR4F1SZNAVhvVuQ+T9RRc2Oy/JbDaEx9oRtgLRr0YoZIT/0U4JHPTrUzkYjh
         6odPWemwXs5Q98S/lH9yCbjN5z98r1nWO9teKbwErTCwxeVhXZFoBAjW0d0f39n5C0dm
         Bp3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=/AlTSLKKvBCzDgdcHxG56ogzVSJhPh3j0OBqaQS6YrE=;
        b=lAp/+6ddSV8VQ3wa72bZe7RGCE/V1kM1gR1LLp5Eqf8+kL2iL1OMS6bXNyhbF7Tf+7
         pJc3rjibC+sEBLtTWKVwt3tm+rOtG5fqQMn97FEGCTousV/i3BrK+tUVGD9VSrum0VbG
         UUMLv5jC7HVUJnJFYdBMY5sclAxoLDOPeAOoY5quqIyUaM8k4goXxCJihD9JzIf4uccE
         bqdw4eJsFxZGgRVKZ+8NIBuv9KRsxDivsYzgwchm556G9OBF6PSmddAWqtGaOpDljAgm
         svwSVlNISh75fHBH43myv6qCoroBpk+Y1Pm8sQ9qgUrqrfEPcBvXaCsP/boEDM+rl6Le
         bJxA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mh+67Hga;
       spf=pass (google.com: domain of 3oncjyqwkaiu1jvr2xu4jwnwpxxpun.lxv@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3ONcjYQwKAIU1jvr2xu4jwnwpxxpun.lxv@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x74a.google.com (mail-qk1-x74a.google.com. [2607:f8b0:4864:20::74a])
        by gmr-mx.google.com with ESMTPS id o5si1020031pgv.1.2021.08.23.10.13.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Aug 2021 10:13:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3oncjyqwkaiu1jvr2xu4jwnwpxxpun.lxv@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) client-ip=2607:f8b0:4864:20::74a;
Received: by mail-qk1-x74a.google.com with SMTP id p23-20020a05620a22f700b003d5ac11ac5cso12308165qki.15
        for <clang-built-linux@googlegroups.com>; Mon, 23 Aug 2021 10:13:28 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:cc48:aa6a:f4ec:7d19])
 (user=samitolvanen job=sendgmr) by 2002:a05:6214:4009:: with SMTP id
 kd9mr33959844qvb.40.1629738808441; Mon, 23 Aug 2021 10:13:28 -0700 (PDT)
Date: Mon, 23 Aug 2021 10:13:07 -0700
In-Reply-To: <20210823171318.2801096-1-samitolvanen@google.com>
Message-Id: <20210823171318.2801096-4-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210823171318.2801096-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.33.0.rc2.250.ged5fa647cd-goog
Subject: [PATCH v2 03/14] linkage: Add DECLARE_ASM_FUNC_SYMBOL
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
 header.i=@google.com header.s=20161025 header.b=mh+67Hga;       spf=pass
 (google.com: domain of 3oncjyqwkaiu1jvr2xu4jwnwpxxpun.lxv@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3ONcjYQwKAIU1jvr2xu4jwnwpxxpun.lxv@flex--samitolvanen.bounces.google.com;
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

The kernel has several assembly functions, which are not directly
callable from C but need to be referred to from C code. This change adds
the DECLARE_ASM_FUNC_SYMBOL macro, which allows us to declare these
symbols using an opaque type, which makes misuse harder, and avoids the
need to annotate references to the functions for Clang's Control-Flow
Integrity (CFI).

Suggested-by: Andy Lutomirski <luto@amacapital.net>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 include/linux/linkage.h | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/include/linux/linkage.h b/include/linux/linkage.h
index dbf8506decca..8b8d1db3ffbc 100644
--- a/include/linux/linkage.h
+++ b/include/linux/linkage.h
@@ -48,6 +48,19 @@
 #define __PAGE_ALIGNED_DATA	.section ".data..page_aligned", "aw"
 #define __PAGE_ALIGNED_BSS	.section ".bss..page_aligned", "aw"
 
+/*
+ * Declares a function not callable from C using an opaque type. Defined as
+ * an array to allow the address of the symbol to be taken without '&'.
+ */
+#ifndef DECLARE_ASM_FUNC_SYMBOL
+#define DECLARE_ASM_FUNC_SYMBOL(sym) \
+	extern const u8 sym[]
+#endif
+
+#ifndef __ASSEMBLY__
+typedef const u8 *asm_func_t;
+#endif
+
 /*
  * This is used by architectures to keep arguments on the stack
  * untouched by the compiler by keeping them live until the end.
-- 
2.33.0.rc2.250.ged5fa647cd-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210823171318.2801096-4-samitolvanen%40google.com.
