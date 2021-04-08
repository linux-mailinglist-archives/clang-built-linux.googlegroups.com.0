Return-Path: <clang-built-linux+bncBC2ORX645YPRB7MWXWBQMGQED2SHPPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id B2188358C52
	for <lists+clang-built-linux@lfdr.de>; Thu,  8 Apr 2021 20:29:18 +0200 (CEST)
Received: by mail-pj1-x1040.google.com with SMTP id oj6sf1767973pjb.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Apr 2021 11:29:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617906557; cv=pass;
        d=google.com; s=arc-20160816;
        b=QQkL0qsssDF99fgnEdQkm9CkhafM5PQ8B5HRChj1S3rvm2J45Wsv6DfOa7oFdtbct1
         B61tV9lFTYqBDyAUA01FlsJ0HJWbniwqmT2nJOGd2JlDYDVyf0tXBT7vNLayHeSQKfQ0
         zt1zEGdmUig/IMYLNiN+1ZGVIoI3wDGtX2tKqP+appcIyyqm84pGulw20qvTPnQu3H0D
         jP2uOeKVX1Jjhn3famsQ9yc5RNu9aNcnbQbuDpFpmAIL6Ic0f9t8yNDyDarmId4lEFnU
         WSCUklU0sxWZj2is/Zhskks3kqHYv32eZHTnxmxejPlWk10OmE1pjjJasZB53oLGevsu
         YCFg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=YumCVfD6w8LtrHe6C781goA0SqgOdEsCoq1L899j1oY=;
        b=cn+YzRtDChbPT/elvIemo7SpOOjtLIYj7sFaZ+4dUMwYp8g/8bIEs37PIaNfBm0nkL
         wSkgkCirYBRGhtI72iC+fi14s6aew//EFlfyDAIL2fOYKKM14oPIj3pEbNAkNiwtnr0a
         IRXaXVIVSdimIVrEOYm7radpI/97u1iiE7Td+dBMTYAdyE31mPZB+/pdN7SIhLCWyE1x
         +zM+oQ9YrSKFc3ypp4ZstD+rvNUhEMPwxCTL9FOrCE2kyO1E3U32JNmT1GldUmhhkyaS
         j2j+H/64WJq+4daHw2jKE9eyMe2OcfDwholKNkpgx7JPNR019Cnda6iCsa/TgewFagEH
         nkfg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RkrEMcjE;
       spf=pass (google.com: domain of 3fetvyawkankn5hdojgq5i9ibjjbg9.7jh@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3fEtvYAwKANkN5HDOJGQ5I9IBJJBG9.7JH@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YumCVfD6w8LtrHe6C781goA0SqgOdEsCoq1L899j1oY=;
        b=o1xFFURTn1/gGneDwOfNRNwe+dQniaa6eFCLNGnrMhwdkmt5so7LDJgnxpM8tL+rwf
         j2vJs1+Q2lzhUNKFguTzY27vt6QHcfqLJmXtsi8Vv5Iyu03TjOW9kPxkXUyef5EZb8SF
         pwIM3vAiUXG2/ar2Rapc7/SrLv1mjIlyBd5qsS2bRv+qXzvshX7eLTpSL+sdChqqzxfI
         4QcPwMtaLfNqHwJkDfzyfS4UsoRk1dEtUaVD5zTdpPXhY/z910wPrbG0Oeagjz7vZUZt
         9VXwG5xXu479808Gdiy7TuoZjY3Q75YHNp31hq9p1v7y4OaScjKqQdkXgl6dFDk5vfPU
         jo8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YumCVfD6w8LtrHe6C781goA0SqgOdEsCoq1L899j1oY=;
        b=DwyqegKxPvS+GazGbbtyqVEBja0WvGXB0NtwA2Vvtw0Z96zYjbYsqnneeYY+hzEFis
         KDHHVO29M4YZ5x1fghr0yQ43uqedaxUNiVB4Ovliv3JXotr7FquwsbAQ3t+CYfQiAkFP
         SLWewZDpF6rHwCwleRcBB2I9mcBNDEz0D3fCOWmLJMwwvSQp1mt7bnB+p7QZbiRr3MDG
         ygJbjocoLd/aBnVXnmrUqDGuXonsQl0BvMBFHewIhuZGNAdxyLXPbwjtj6ZTmpg2yFyb
         mU7FdcFvCTU0bADuzMo5CJD4mNOfXOYk0QbJ+PprtVs6Om4tjRql8FobhMG8DWTKkWGW
         KOkA==
X-Gm-Message-State: AOAM530Z1XSAn7TCCp17DZeHMqZVxOJYnX5g+OP+WCMj1Q33pD0VQt6f
	RfNSzz0BjlhPn04sWMdN7ag=
X-Google-Smtp-Source: ABdhPJwaO2mFdq0Vf55s6OccPAkCiiZYr6O9QYdtBYfrXtpjuSXcZzwX8ZSaeZcIoMAORU8d2FzEQg==
X-Received: by 2002:a17:902:7585:b029:e6:cc10:61fe with SMTP id j5-20020a1709027585b02900e6cc1061femr8937942pll.23.1617906557398;
        Thu, 08 Apr 2021 11:29:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:4d81:: with SMTP id oj1ls3124583pjb.2.canary-gmail;
 Thu, 08 Apr 2021 11:29:16 -0700 (PDT)
X-Received: by 2002:a17:902:bc4c:b029:e9:175e:3367 with SMTP id t12-20020a170902bc4cb02900e9175e3367mr9174178plz.7.1617906556818;
        Thu, 08 Apr 2021 11:29:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617906556; cv=none;
        d=google.com; s=arc-20160816;
        b=lGxanK1ogVuUUY1tc3uMua/lGAeah/kmX4YCSjDc5Ktog48AQpw3FH361woazREN98
         zB8auo6Fktt3Rg0M4UcX++i6MMX5iAWJcvk/NNBvfVppVOCg+LBZQNLgNfKLqcxrwryG
         t97O3/3jqssD/VBpdW0Ko1uZWLDRUrlmclt9WmDuJM/TWHpPy2z5zOkkUheWAYzNQh0y
         9tryIVdpIcFHEMhfJlhzzVw4iymq32pCyjTUWsiT8VlyNwYTZk+MAI6zm6OuXjBlInA/
         CDIks1Qe6e0nD7Y/E2HgKZix8K+mI5Oiq0acRppXfD1o4Lqc1U7G/f1aGOzkvbb4FKQC
         ohmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=E//9MgjgyGyGzfpqyqWq2doSFEPDUmVLoRf38lFR7Ug=;
        b=rMTZpNm6KFlxTRyRJ+4TgpyzauHB1KNTPbfoRqXf0w4dZDCHFz42avxdkJZXu5ndfl
         0EPP942RxhQf3seY6GfeFZi9iHOVZswotKpMJNZ8BAfX/4GaTih2LaB6kLwQIG8L39OM
         AjVeKZ6NsAcg6k9d+505gTsShz5801/DYJ0D9+ysfMf16yqZiRY9l3DFg1KLAZfQ1ASQ
         svSSJQWJ4z4zIB3MN9YFEpUIyleK2+GX+IdR0rR3d2p2vYUYoFNL1zMh+1zAzaM36VSu
         h6RjDh86cg20l+GaQZ9IS9tdjHnR3zzjUw315awX7I1GCHrTb749uw3PPNnUlccjwOsG
         umrw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RkrEMcjE;
       spf=pass (google.com: domain of 3fetvyawkankn5hdojgq5i9ibjjbg9.7jh@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3fEtvYAwKANkN5HDOJGQ5I9IBJJBG9.7JH@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x549.google.com (mail-pg1-x549.google.com. [2607:f8b0:4864:20::549])
        by gmr-mx.google.com with ESMTPS id a8si7001plp.2.2021.04.08.11.29.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Apr 2021 11:29:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3fetvyawkankn5hdojgq5i9ibjjbg9.7jh@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) client-ip=2607:f8b0:4864:20::549;
Received: by mail-pg1-x549.google.com with SMTP id o1so1811441pgl.0
        for <clang-built-linux@googlegroups.com>; Thu, 08 Apr 2021 11:29:16 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:3560:8505:40a2:e021])
 (user=samitolvanen job=sendgmr) by 2002:a17:902:7896:b029:e8:fa73:ad22 with
 SMTP id q22-20020a1709027896b02900e8fa73ad22mr8974621pll.66.1617906556287;
 Thu, 08 Apr 2021 11:29:16 -0700 (PDT)
Date: Thu,  8 Apr 2021 11:28:41 -0700
In-Reply-To: <20210408182843.1754385-1-samitolvanen@google.com>
Message-Id: <20210408182843.1754385-17-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210408182843.1754385-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.31.1.295.g9ea45b61b8-goog
Subject: [PATCH v6 16/18] arm64: ftrace: use function_nocfi for ftrace_call
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Kees Cook <keescook@chromium.org>
Cc: Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, Jessica Yu <jeyu@kernel.org>, 
	Arnd Bergmann <arnd@arndb.de>, Tejun Heo <tj@kernel.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Christoph Hellwig <hch@infradead.org>, Peter Zijlstra <peterz@infradead.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, Mark Rutland <mark.rutland@arm.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, bpf@vger.kernel.org, 
	linux-hardening@vger.kernel.org, linux-arch@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=RkrEMcjE;       spf=pass
 (google.com: domain of 3fetvyawkankn5hdojgq5i9ibjjbg9.7jh@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3fEtvYAwKANkN5HDOJGQ5I9IBJJBG9.7JH@flex--samitolvanen.bounces.google.com;
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

With CONFIG_CFI_CLANG, the compiler replaces function pointers with
jump table addresses, which breaks dynamic ftrace as the address of
ftrace_call is replaced with the address of ftrace_call.cfi_jt. Use
function_nocfi() to get the address of the actual function instead.

Suggested-by: Ben Dai <ben.dai@unisoc.com>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Acked-by: Mark Rutland <mark.rutland@arm.com>
Tested-by: Nathan Chancellor <nathan@kernel.org>
---
 arch/arm64/kernel/ftrace.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/ftrace.c b/arch/arm64/kernel/ftrace.c
index 86a5cf9bc19a..b5d3ddaf69d9 100644
--- a/arch/arm64/kernel/ftrace.c
+++ b/arch/arm64/kernel/ftrace.c
@@ -55,7 +55,7 @@ int ftrace_update_ftrace_func(ftrace_func_t func)
 	unsigned long pc;
 	u32 new;
 
-	pc = (unsigned long)&ftrace_call;
+	pc = (unsigned long)function_nocfi(ftrace_call);
 	new = aarch64_insn_gen_branch_imm(pc, (unsigned long)func,
 					  AARCH64_INSN_BRANCH_LINK);
 
-- 
2.31.1.295.g9ea45b61b8-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210408182843.1754385-17-samitolvanen%40google.com.
