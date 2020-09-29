Return-Path: <clang-built-linux+bncBC2ORX645YPRB46WZ35QKGQENYQCPNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83a.google.com (mail-qt1-x83a.google.com [IPv6:2607:f8b0:4864:20::83a])
	by mail.lfdr.de (Postfix) with ESMTPS id 77F1127DAA4
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 23:47:32 +0200 (CEST)
Received: by mail-qt1-x83a.google.com with SMTP id m13sf4063854qtu.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 14:47:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601416051; cv=pass;
        d=google.com; s=arc-20160816;
        b=q1byPShI0oI93RRvA3W0g89BfwSrxzMXw+wgHJgIxYdvGKFKUjF6VbcQ6RgTMpynqZ
         3tNtZ3y9OqN2OuDDZpAdsRA3BlIB0XufS8sE2rYo3BoVea4h96Gczc0aT3Y6Jfhue8Rc
         mIEJqGfyqg/f2b1yABzzRu3yA0+5PeAOdUin4UdnfmqxqWwUpLKr+9KHF6k+YGvBufO1
         kxvCpnU3vOYECI5ZZktDcvL20hXG8OYxU9Yx7kVzhazVQgMV+6ptRgPK5jFTMZNctEj2
         YzHZ0Xq8ci/8zp9gRZIFYpWTgnhX0EAsiKrh2s2D3ozxpzFOqwTxUw0qh/CKjEkbK3mS
         sNyg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=e72ObfK9wuDIsPMUAVMLRrn6RerKOO40xb1E5lzF4Rk=;
        b=s4f1VacgcgQkXbQkhFL78VrURV1+ozQA+DuNdpuEU1D4mtocv4OcigoX7hLUwnX7uh
         PTmPHplu2JcKSpJvV/9OGPFmmlgHCCSZDh3irBht7HLp9qo8XXl2T6+SCoW+sXWNX3J7
         iJIzZxORSDq86mr3bEl+gaL7rAaFZSFUwpnkO3pyCSwbPlzlSo44nKz3QZXcf6Qn4HcB
         sIiyBUfCc0Wg/qn2SMEMp0FmtB9nnlfpjdOXs9SGglsQI1gXDljpO0YkcpdvkviRFypm
         ABW08nj29BrVLn3fzFMp4Ah64RMqXYLjAOWKMGNCJBgohDsInjALwHq4DVmTTVL/IiQG
         K3yw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dHnRNjTA;
       spf=pass (google.com: domain of 3cqtzxwwkajkl3fbmheo3g7g9hh9e7.5hf@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3cqtzXwwKAJkL3FBMHEO3G7G9HH9E7.5HF@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=e72ObfK9wuDIsPMUAVMLRrn6RerKOO40xb1E5lzF4Rk=;
        b=nsx8RKT4eObVqT0sPO6Tn3XQHavvR5FyfSFUEDDsTFLUH/keMdvHGEWjD8/4yTakxv
         CDcTSihj6Tv8Lvo88rQm0MrMT/t6RhRWSxkVOEOrqR1qyLjTt0HcJh4uH1SIKAHO2SYK
         2j0Wu57uXU45FA/UQ9owbgYDBsirKZYQzF6Oqznkv9nINrFrMXkzKtQEtYni715DVOJ9
         s0fQY5ZTBoAQSAi/LvYlClpJgrs/ABynBAMDot6hRKG6vjYJ6eWLTV3w3K5HzIjQc/lc
         YNcCcJcOiCYHZtnmcishKNyOUb7l0OE7MgY1/Er2nb5pYdK/H5QPdh0QO/KsyoncnHlq
         JlLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=e72ObfK9wuDIsPMUAVMLRrn6RerKOO40xb1E5lzF4Rk=;
        b=PZi4PRmn+FB7uKSKrgylu/ji7LM5pC4r6o7AEeK3/q3VqCji4VouHtdvmEqzJKl2SS
         Q37vStbA3IPGWqKtqtyMh3imU4AvbYg1/EFWm4SmMJdBcHDWHEIMXvtIc4ecYjgJvHK8
         cVhZRsZ1h9mLhztYMtLEKJx3aSyWJVMHWkL3i3HW2QC1sbDw2qN9uC2pHIB/o5SCE65E
         DmyNTAr8nMDLe/QPSQDkMT7VCIvqXSbcYOlqbfyUrQlZRF60whDT1C5qixNnO79rSxsY
         A7ehdGx8bAAZNccjilHgQWgCbBA4DyyBTO/Gw5S05EcRR0GOn+xfrquFRwCfek5alnZq
         lFsQ==
X-Gm-Message-State: AOAM533C4FywthFI2Si/lSz5RFOwQnELGWFBwLQ7nwhb/Xp5+WjfVjJ7
	m2ONxacnrW05yWtJmrpBE50=
X-Google-Smtp-Source: ABdhPJyb81zUb4HxqAiJrvKEpY7XkbwwH3CJr9HPZAJnDko0yJ6xDU++Q/ylvi9CZjWjTXLZ074IBQ==
X-Received: by 2002:a37:51d5:: with SMTP id f204mr6303344qkb.145.1601416051556;
        Tue, 29 Sep 2020 14:47:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:cc8:: with SMTP id 191ls5363699qkm.11.gmail; Tue, 29 Sep
 2020 14:47:31 -0700 (PDT)
X-Received: by 2002:a05:620a:4e7:: with SMTP id b7mr6720582qkh.415.1601416051092;
        Tue, 29 Sep 2020 14:47:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601416051; cv=none;
        d=google.com; s=arc-20160816;
        b=vN57Ez8NZ+oU2h100FhA60L1EgwZsYLKr2YZLWihyppfGdzpCKQZ3yFWN45LGJ8/w9
         4lniGLB4DntwDrwvVPLAV4f4S5S8xQXgiprX8pYhAkDxDvQPIHq6Kan5QHKJ0nk59CmL
         /x2AGxGWxdXkIdnPD2VG+KDFiyf85x57mxga2sTR54EYQRn8j8/rP6LaVetmhf3wsMO5
         ej2eNKdh0n3B+Xa2c3fKrqvtfezBQBEsRSXdu8RhERyTYz79yTF+rOfaE+COwmRDS03F
         kbSkRbFGHEyfhsIRQEkKSbNoLtyzDmjK8GH9sHFLKHRTEE0cIG06Hsx9cFICc5W/PGs7
         TqJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=bLX+1fjl9Bbya2A+atnzXnNoTgL1KkV514BpMbJv1Zc=;
        b=B5yjnwjBn3eNLngA1OJlfTdyopUc5m2ST3/zMWnKV2A+1roEKECn8IDa7/Fc8KhwTC
         iwQy9yOuar9hfbV3aiJ/wGAg4dPz/YNxOKEZ+t48t6JPg3zWeawhM/FxPlWi01f2SIjg
         47uwNIv5G54zE0QUJvLm5SBCSL0JozztKfpfFOOv2GHzw+H+802zotOi0YEDVGTxMjQI
         czJxMh4K00qE/jqnfXhy+wfk9jLciIq9ExN8PqijhMz7zdFwrYcVwYEFY2EPwH9nmCfB
         YPA+8yUh/6bJC53/OAKnF+yi5NvjE3Tk3Z4H3H+gwCbkx9BAy4ZJZ9SeM1ItC5kJ8hRF
         Rx6g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dHnRNjTA;
       spf=pass (google.com: domain of 3cqtzxwwkajkl3fbmheo3g7g9hh9e7.5hf@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3cqtzXwwKAJkL3FBMHEO3G7G9HH9E7.5HF@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x84a.google.com (mail-qt1-x84a.google.com. [2607:f8b0:4864:20::84a])
        by gmr-mx.google.com with ESMTPS id h17si361899qtu.2.2020.09.29.14.47.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Sep 2020 14:47:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3cqtzxwwkajkl3fbmheo3g7g9hh9e7.5hf@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) client-ip=2607:f8b0:4864:20::84a;
Received: by mail-qt1-x84a.google.com with SMTP id g1so4055587qtc.22
        for <clang-built-linux@googlegroups.com>; Tue, 29 Sep 2020 14:47:31 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a0c:e5cf:: with SMTP id
 u15mr6643416qvm.14.1601416050747; Tue, 29 Sep 2020 14:47:30 -0700 (PDT)
Date: Tue, 29 Sep 2020 14:46:27 -0700
In-Reply-To: <20200929214631.3516445-1-samitolvanen@google.com>
Message-Id: <20200929214631.3516445-26-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200929214631.3516445-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.709.gb0816b6eb0-goog
Subject: [PATCH v4 25/29] KVM: arm64: disable LTO for the nVHE directory
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
 header.i=@google.com header.s=20161025 header.b=dHnRNjTA;       spf=pass
 (google.com: domain of 3cqtzxwwkajkl3fbmheo3g7g9hh9e7.5hf@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3cqtzXwwKAJkL3FBMHEO3G7G9HH9E7.5HF@flex--samitolvanen.bounces.google.com;
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

We use objcopy to manipulate ELF binaries for the nVHE code,
which fails with LTO as the compiler produces LLVM bitcode
instead. Disable LTO for this code to allow objcopy to be used.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 arch/arm64/kvm/hyp/nvhe/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/kvm/hyp/nvhe/Makefile b/arch/arm64/kvm/hyp/nvhe/Makefile
index aef76487edc2..c903c8f31280 100644
--- a/arch/arm64/kvm/hyp/nvhe/Makefile
+++ b/arch/arm64/kvm/hyp/nvhe/Makefile
@@ -45,9 +45,9 @@ quiet_cmd_hypcopy = HYPCOPY $@
 		   --rename-section=.text=.hyp.text			\
 		   $< $@
 
-# Remove ftrace and Shadow Call Stack CFLAGS.
+# Remove ftrace, LTO, and Shadow Call Stack CFLAGS.
 # This is equivalent to the 'notrace' and '__noscs' annotations.
-KBUILD_CFLAGS := $(filter-out $(CC_FLAGS_FTRACE) $(CC_FLAGS_SCS), $(KBUILD_CFLAGS))
+KBUILD_CFLAGS := $(filter-out $(CC_FLAGS_FTRACE) $(CC_FLAGS_LTO) $(CC_FLAGS_SCS), $(KBUILD_CFLAGS))
 
 # KVM nVHE code is run at a different exception code with a different map, so
 # compiler instrumentation that inserts callbacks or checks into the code may
-- 
2.28.0.709.gb0816b6eb0-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200929214631.3516445-26-samitolvanen%40google.com.
