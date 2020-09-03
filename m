Return-Path: <clang-built-linux+bncBC2ORX645YPRBGFFYX5AKGQEXAWF67Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id D59C625CA52
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Sep 2020 22:31:21 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id c190sf2697304pfa.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Sep 2020 13:31:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599165080; cv=pass;
        d=google.com; s=arc-20160816;
        b=en4o5mRV3DXSoftUCOY9KimAi4Ildyynl/SaZYSR4qLNpbCUJVaLuU1NFPruZQ5O1y
         wjUNMsVENH2SwW2BeYW14LrISesfFyw8sFRT3+dz1q04oeOWK3mx3NfQExGRBf7uRFKb
         COgD7gvwP6+17dXLMkyfhHsVpWI/+eY2XOjSfYkHkkS5aJ9+XjVgvD2JcQkvA+wAne98
         SDp/yilFxsYhSv+GUfdzxBNR4YDPfMkMEa240Xzn0lAJM3Zu/FhV0KYZLFAEUMSmGfGH
         jEb/m/5UDQeYg0fZZkbzEzTcIT8GH6rtyPj8fOwBXe2JbePQoxVLhl7neOsg+EmyBwIT
         Unmw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=P19eSFKRSRIzihy6s+f4hRt4jVCHyZhkvZx1Se3KYsM=;
        b=IPfK3gnhQIhTsf95+riOSiUVzfklpvTQhZwl9gd4RSWrTf4A9/4NxbFUbpTQbviQZe
         pJZ6B3XXrz+befeAmxEgs3C9oo9f8LKIy2L8+hLDLUoP6N4uYSypwpcC+6fO4tuOZ14W
         xt0hIzaivo6iU6u9wxL85sq1bTrc6dwTFA6cTWijd3ArV8PQkQ577HLukg/VojKttloI
         5dP9PL7gQdKumBnHk01xwrMrEyrd7RxV2FDEq20+A5mRD3NEnLXyZhKYOdY7oCNr9Z70
         2SQ8yPAhVwIPkZvOOzq0ahOKg1gVTYJKofpBiSXJSPkXBz/C1/NbF6chF4z1TR8wuJaT
         2isQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=d3WTta76;
       spf=pass (google.com: domain of 3l1jrxwwkaiiygsozur1gtktmuumrk.ius@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3l1JRXwwKAIIygsozur1gtktmuumrk.ius@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=P19eSFKRSRIzihy6s+f4hRt4jVCHyZhkvZx1Se3KYsM=;
        b=H30q9DIb1IqM6adUrYZBpCmlJmViXYGHLoYJtVTkfy/GvBCSB66Mnz+Fv0Ikhl1Fmo
         NeIXZwuWn6anny+f4CGP+A2xL6gyOm8yXxepwlKGVueFyDVskCtSsmqzbH+Vnx24xWmS
         BA+XxVmylrUqygUecwKjSwyzSWL6KQ6qS5RYozqLcHBMhpRKCj4N+P8jNBc+F+reCYi+
         ULu3CnLJZQVhzBZRYmF1qOhtaZ+aiJojr+cW304U0NdrGmNaDPR0kiZMTAE3t0INdm8D
         vsp6Sk9RQw2D7AzfKQCXhgTqtenOLC/e3fr9O8hP8KehQe4HsPoskcNMfkTwjSluO1P4
         rcJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=P19eSFKRSRIzihy6s+f4hRt4jVCHyZhkvZx1Se3KYsM=;
        b=qpaKRqKEOwWOXEqgAe5oAaBzPN8g8DkhCQkhWJaReM+gadrlNdNdPuOxpAnqzULFYE
         3xKe3X1iIArB6suFeD9i/yJUrwbbyB8AR5MtfJV6VQQDWK1pviqYjGCr8X7Me5yoL3cE
         o2ZH8jXVqPgB6NgH7oW634bQD1bzJOHSkeO7QEPPDwPEgZgdy6MOt5Xy8Z8JQISnhaq6
         q80ZAwwed4PitQ6LHVAEpOnAUdH85gpSgNPP7qHJBcRKhUDT06i5WfEp21a8J90A1GUp
         SVfnBpF/Ip1UFGedEhFTWC5P7o+YRr0bI18kVb3GJOzRTI7RGELA51gzZFtlTsmuYbzI
         WVKg==
X-Gm-Message-State: AOAM532qYVsZhNT9+y5P0C+sprSF9POGqSUKyuvUM30p32BEfohXJdeM
	lbp4uObhLfWVbVKBFyWqksk=
X-Google-Smtp-Source: ABdhPJwbtT7TX+3/IMbTQXeMvhstw4MhrZlR0uIrPvIhHQAGchVX2ciNlqpJ0ht8JuOgs5DuAjDeqg==
X-Received: by 2002:a63:a55e:: with SMTP id r30mr4553311pgu.61.1599165080563;
        Thu, 03 Sep 2020 13:31:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:720b:: with SMTP id ba11ls3513318plb.0.gmail; Thu,
 03 Sep 2020 13:31:20 -0700 (PDT)
X-Received: by 2002:a17:90b:f0b:: with SMTP id br11mr5057603pjb.191.1599165080065;
        Thu, 03 Sep 2020 13:31:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599165080; cv=none;
        d=google.com; s=arc-20160816;
        b=IkDBN9iB7P4JoswYusfWLOQdzqbUCMuDLdtCVUdgJ3SSj1sPKLI+/i/TlAuNxmA0be
         foKA9eL6EDsw2PcWvok6M1I/PY9pq44DxcsXsmhIVepfqnS4ksbvTLrtz4L1MRSeMXwB
         TbE7ro//aIGV09ryKeRYpec37DWSJaliJRh7jNdS/ef7cW1j4P+m6J7oLEilRyM/0Tuk
         sq0I8LVYGlkc9Mb/TdCgqMvmnVewFuD8y1mhRisAKSxQjnAkYnS2Jc/0rARbOmz1bWGe
         Ni8XhaqJ4+CiHkj+QGizkzlSpHwbswzK7trxWmPv5H1tXgOk32KaRt3mACJeOSNohTKG
         BDYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=v4aEDtr6bLZLPmR/ra6D5NVXgPqHTR+q2+p+53rP8YU=;
        b=08MoeO0v8YYbzUfd/vutlsynrq0qfjYECt5TW/pXSkXhPyNnk6z/yV+lY6Ffi2TYq7
         t0a1S/qswqzecwWDG9uv5Po1bNKrZJL8d6NMsdsuMfZYOQL5B+tpS6E83dVjaxlNvJaQ
         zY2QioxjeF2koYTY9/NHLxgcfQT3LUN5hNh61gF7QrEfQylLfBfbIiictg4FrHORlWK8
         nnYtZB1maZXPfpWCukmPPCyuwcZzBDMHDZ6G45B7qcMAg9NgTznxBXK0+l8jy5qTVtn9
         ET/rARsGx9avsINM/kJE1OhY1dELF3qCAjzosU6QjmZ2mVGTxyI4reFUMKhM6Rjr9YMc
         tZiA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=d3WTta76;
       spf=pass (google.com: domain of 3l1jrxwwkaiiygsozur1gtktmuumrk.ius@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3l1JRXwwKAIIygsozur1gtktmuumrk.ius@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id p1si228573pgf.1.2020.09.03.13.31.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Sep 2020 13:31:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3l1jrxwwkaiiygsozur1gtktmuumrk.ius@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id k74so3980439ybf.23
        for <clang-built-linux@googlegroups.com>; Thu, 03 Sep 2020 13:31:20 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a25:a366:: with SMTP id
 d93mr5081717ybi.415.1599165079173; Thu, 03 Sep 2020 13:31:19 -0700 (PDT)
Date: Thu,  3 Sep 2020 13:30:37 -0700
In-Reply-To: <20200903203053.3411268-1-samitolvanen@google.com>
Message-Id: <20200903203053.3411268-13-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com> <20200903203053.3411268-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.526.ge36021eeef-goog
Subject: [PATCH v2 12/28] kbuild: lto: limit inlining
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, x86@kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=d3WTta76;       spf=pass
 (google.com: domain of 3l1jrxwwkaiiygsozur1gtktmuumrk.ius@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3l1JRXwwKAIIygsozur1gtktmuumrk.ius@flex--samitolvanen.bounces.google.com;
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

This change limits function inlining across translation unit boundaries
in order to reduce the binary size with LTO. The -import-instr-limit
flag defines a size limit, as the number of LLVM IR instructions, for
importing functions from other TUs, defaulting to 100.

Based on testing with arm64 defconfig, we found that a limit of 5 is a
reasonable compromise between performance and binary size, reducing the
size of a stripped vmlinux by 11%.

Suggested-by: George Burgess IV <gbiv@google.com>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 Makefile | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Makefile b/Makefile
index 2752be67b460..c69e07bd506a 100644
--- a/Makefile
+++ b/Makefile
@@ -917,6 +917,10 @@ else
 CC_FLAGS_LTO_CLANG := -flto
 endif
 CC_FLAGS_LTO_CLANG += -fvisibility=default
+
+# Limit inlining across translation units to reduce binary size
+LD_FLAGS_LTO_CLANG := -mllvm -import-instr-limit=5
+KBUILD_LDFLAGS += $(LD_FLAGS_LTO_CLANG)
 endif
 
 ifdef CONFIG_LTO
-- 
2.28.0.402.g5ffc5be6b7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200903203053.3411268-13-samitolvanen%40google.com.
