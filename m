Return-Path: <clang-built-linux+bncBC2ORX645YPRBR7HQOFAMGQEYE65K4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C16140B789
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 21:11:04 +0200 (CEST)
Received: by mail-ot1-x33d.google.com with SMTP id 76-20020a9d0152000000b0053b372910bbsf12101451otu.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 12:11:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631646663; cv=pass;
        d=google.com; s=arc-20160816;
        b=aHOVFJTavA0Rak7vJ+cZQHvoMMOPqF5P5682Zh6dP27ALXn75q5HIE0Ppb1HXtNSMU
         Hc5Mfh+D3W/MYFxhhJcJveg3aRCYWE3emU+Z2CJFtdyAR0+wDNHBbgDLhbxm1ow/9A23
         fQ6XbByQdSZcVyo3PNc2Fszf3IiyWR5SbzKZHC3H+AXmk0DV7yRz3CuxS5d1eT7EziMY
         8/c5Ff5sir/Aqu4M+VkLxka0C8OnmDLJynxzYSf/TWWhB8u3T9QNR4OdU0QjiuVtNfai
         w6P4cEjO3bV1/cZAgR62moHpcjzbdrbeXjZvbYGBi/72pa53b6ICpq5A80hHvKnGpKqr
         vq9w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=QxJ1kPEbZN6hkZT9Xbo3H7JQRXB0xrp4v3sBkB5j9uQ=;
        b=o30rYgmyIPrpipu44nkyv8eAkQbGIpi/FVH1hTLy+Piw/th0QdZ29dRaTXW7kDxMlQ
         Tr8Q5Vfwmfh5VNhXmLnQXiVF1sj3PEQGAxVvjs3yZTcProtLjeFT2WWlBkIIsQtXhrj1
         LO3NWBQW99K0hwiOVa+p9y06reet57DdvISFVvUo0+4vLeJrC3JilPk7U9OpthO8rP6P
         Ivag2q90gGZMp6Wyn4+pUxNPcFRowQ3q26AiBcxehbW9szVz9uaikpZm5SE7bdsvgq/H
         0SAIYTT5G+wqeFZ75JYR7gupcqU3gU9X+8Vs5WOYtOkyoqpVp2ZzDEuFhIRDa04E6p1+
         Lclg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=NPAnSX36;
       spf=pass (google.com: domain of 3xvnayqwkamezhtp0vs2hulunvvnsl.jvt@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3xvNAYQwKAMEzhtp0vs2hulunvvnsl.jvt@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QxJ1kPEbZN6hkZT9Xbo3H7JQRXB0xrp4v3sBkB5j9uQ=;
        b=LAHlu0MgZ+MkQtG5HspNAdY0SjyHNWQeMr+Qt95hko2L3NQjVQkMtNLbQLPDVO36Bi
         YUrnRTi8lIHJ9jMoIlPVZf3TXQVLWVtlQ7YQ+S31ZIPmwSZd8UyppW4nxWQ8VHUd7zfC
         3h3+rGkWcU6bAWMaoolG/HC8GsFbbOprsRNZZBaLHcUBNqMXJNRsKemzj2hZBaax1u2q
         QwXW5X8DS1hOHZV+chbc3CDcUzTx+Gsiwx0WotKemFwJZgccvwdMGvLmu19Ksn9rY8Wt
         9Vradn2HbODKeWy/SoYJ9xSm4pB/iewy/RMpA+RCl5wafmwFhvVOY9KFP7lvjdiiUYsi
         uE/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QxJ1kPEbZN6hkZT9Xbo3H7JQRXB0xrp4v3sBkB5j9uQ=;
        b=tkfzHLel5pVcA/h11j44DFwSi9UbdRudrFAxD7LOTLVD9sOwcOMue6JLtDMzZgr0uK
         xRPtJrQUgSkKNDc0IFXAvxV+ePg1nGxOIJJRQDsSyCUQhi/vsAiZsSPZ1C1H54hyjlTm
         vJd10TL/MxrNamBkz9fI/lKsd5HQWgzTQlhSA3dOinqbN1mwRbEVlg30TTAWc9HBcIzF
         YMOR7V0KUGISZyVl2QscS2RlpIRtcIB1kR46Cs2ANmO/fDqUNz0kY1NfxWilIkCNUQWL
         6l7A2arARcU92DeE5r0p5ooFkxKty38GBJm9OMkKAzE0Tw6Ed3vzVSg6UQoCtBB4GoiR
         Zy6g==
X-Gm-Message-State: AOAM532eCSmgrExzfld2TBECYFXe7eWLycXBckk5k+pVObcYXmUYtOsX
	WMXg9u4JdxADIxEpDwP2/0Y=
X-Google-Smtp-Source: ABdhPJzgQ99RV6Ybl9YoP6KIDhFCZKn0Uh8FO+SIgmofFW13hfcq1aEiF4lmgKXSZcx0FAQxgDpiaw==
X-Received: by 2002:a54:4018:: with SMTP id x24mr2678537oie.125.1631646663127;
        Tue, 14 Sep 2021 12:11:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:f0f:: with SMTP id m15ls2309436oiw.11.gmail; Tue,
 14 Sep 2021 12:11:02 -0700 (PDT)
X-Received: by 2002:a05:6808:98e:: with SMTP id a14mr2625415oic.155.1631646662729;
        Tue, 14 Sep 2021 12:11:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631646662; cv=none;
        d=google.com; s=arc-20160816;
        b=XB1iN+px0kSYJxtPmrE47roOq63/lNsJtQTArGeziYUrxXREkZlmMoXi4yJwxWIbG2
         n6QiEByXryJFADB7ao0gSIePR07oDW6LXkaOlvbwaEBDDkvWW/sQ8IWEiu9alplMCDxZ
         syOOi0rC0b/gk03GuDhjMqBUdiDIiKXl+UYJZfR2klkVh1UIHmvXYYXcQwLfIDfq8+GI
         9GRLzzYd0fWMR0chNwPuApjjSR3Xs+R56ELvpV1NSv0JB6ByPEfkU5UMF9rDR10JKyI2
         WmHpMhdLLu/kDvRaihF8B1RJqs76NTheXYBB+dkxcjkTm2gv03hgPX8pXVlCiVoOvCMx
         WCcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=jYwwg+Kk2U3ZYcf6hnRJvQXYZdAJEEpKGctoJaVt6gw=;
        b=TdVoTh0ZCFHFFf8u5y9MBa9/InZCxe5OkZua8fNZHpInChLXFdxmnsyOQGTZJ41BVM
         L3qrH4fjCN2tz7I/qoXy6V4Ch2IddboMoYrlbvgazooCUrHCYL3OEt6SKgIo8SQO44g0
         Xp4NxRXGe8tNNXaA2zoeWp31kySvthfAdB6VxI/P3rJt9w2AaBFvaB3RIylmCS4lOW0v
         aTzyUi6VTEsMITuLSU73jyQA2UEvuiPlrDx7Am6NZ4pigMFFkYx41wJpafg0j9R4Swle
         qCOxDE6cP2ChGQKjjpRHnzcKVE369gQyD9Q8yMWzCj4IAevCJSFyfItNlKz8h9e0TKno
         2TRg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=NPAnSX36;
       spf=pass (google.com: domain of 3xvnayqwkamezhtp0vs2hulunvvnsl.jvt@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3xvNAYQwKAMEzhtp0vs2hulunvvnsl.jvt@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x74a.google.com (mail-qk1-x74a.google.com. [2607:f8b0:4864:20::74a])
        by gmr-mx.google.com with ESMTPS id w16si1025779oti.5.2021.09.14.12.11.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Sep 2021 12:11:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3xvnayqwkamezhtp0vs2hulunvvnsl.jvt@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) client-ip=2607:f8b0:4864:20::74a;
Received: by mail-qk1-x74a.google.com with SMTP id h10-20020a05620a284a00b003d30e8c8cb5so689668qkp.11
        for <clang-built-linux@googlegroups.com>; Tue, 14 Sep 2021 12:11:02 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:d19c:5902:49bb:c41])
 (user=samitolvanen job=sendgmr) by 2002:ad4:4652:: with SMTP id
 y18mr7035452qvv.2.1631646662445; Tue, 14 Sep 2021 12:11:02 -0700 (PDT)
Date: Tue, 14 Sep 2021 12:10:35 -0700
In-Reply-To: <20210914191045.2234020-1-samitolvanen@google.com>
Message-Id: <20210914191045.2234020-7-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210914191045.2234020-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.33.0.309.g3052b89438-goog
Subject: [PATCH v3 06/16] ftrace: Use an opaque type for functions not
 callable from C
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
 header.i=@google.com header.s=20210112 header.b=NPAnSX36;       spf=pass
 (google.com: domain of 3xvnayqwkamezhtp0vs2hulunvvnsl.jvt@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3xvNAYQwKAMEzhtp0vs2hulunvvnsl.jvt@flex--samitolvanen.bounces.google.com;
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

With CONFIG_CFI_CLANG, the compiler changes function references to point
to the CFI jump table. As ftrace_call, ftrace_regs_call, and mcount_call
are not called from C, use DECLARE_ASM_FUNC_SYMBOL to declare them.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 include/linux/ftrace.h | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/include/linux/ftrace.h b/include/linux/ftrace.h
index 832e65f06754..67de28464aeb 100644
--- a/include/linux/ftrace.h
+++ b/include/linux/ftrace.h
@@ -578,9 +578,10 @@ extern void ftrace_replace_code(int enable);
 extern int ftrace_update_ftrace_func(ftrace_func_t func);
 extern void ftrace_caller(void);
 extern void ftrace_regs_caller(void);
-extern void ftrace_call(void);
-extern void ftrace_regs_call(void);
-extern void mcount_call(void);
+
+DECLARE_ASM_FUNC_SYMBOL(ftrace_call);
+DECLARE_ASM_FUNC_SYMBOL(ftrace_regs_call);
+DECLARE_ASM_FUNC_SYMBOL(mcount_call);
 
 void ftrace_modify_all_code(int command);
 
-- 
2.33.0.309.g3052b89438-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210914191045.2234020-7-samitolvanen%40google.com.
