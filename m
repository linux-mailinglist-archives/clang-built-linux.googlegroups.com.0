Return-Path: <clang-built-linux+bncBC2ORX645YPRBZMYQL6AKGQEOWCMC7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x940.google.com (mail-ua1-x940.google.com [IPv6:2607:f8b0:4864:20::940])
	by mail.lfdr.de (Postfix) with ESMTPS id 7233B288E1C
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Oct 2020 18:14:30 +0200 (CEST)
Received: by mail-ua1-x940.google.com with SMTP id r22sf2618012uao.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Oct 2020 09:14:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602260069; cv=pass;
        d=google.com; s=arc-20160816;
        b=pAduaNPiAc8AFftriJxshMvMHnMHMIJRX05JjKeQZ5jzVa9mDucxXG9rPCF6o98GqJ
         +RuS58dDehqZu1vv0DIHc3rnett50eLLI4rbL9cQaxSeDjJgdjp5xtH7Lz/4vIoBpO1H
         YpFbkIZq/1P001kPXRhTmSCyYQbptm8X99I1EEL41ZOy9Epw9UL8aJXYnfZtTSJKMpKX
         YAdxmB5QO/y565/rAh67+RZ60AONQsUI0xZZVCCu8Er5NJy8ehI8vC5RdOP4dZa7NzSw
         EWC3sPNlk/A1pCM+ug3V7ibyecevTmDUxKnts8mM9/Q0L813xVDA0KbNGqQ1OZgBzK/i
         uOhQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=v8HM8gTMRz8bi8M15c68c4iI9NPKC1l71dtcyzeA6Do=;
        b=nEe4uRLMnP5GtG2aQZtfPa6dmL5si8i1ILTiqk7qkkp/muLPNTf47FfMa2Yfb62vHT
         yHwJvosZHZclcHddFiU6kMA738wbs6jG3wxdlc3cT+CskvP8YmC5wauu/u3RpGNOQrAT
         YJQs7QMPp+DWrhEk2AUNRF6lZlkMlaAgqb6BSCllk8dBARceS4Bao/XkEIpWwtn9/g/u
         EXVpjqLUYztGS089WMXALXOzgALuGTZWc5HDzE0hlYt+/Z6Ee2czZT1UjsJKZdLtgChz
         V9S4IDLFaq84UkJY7Vec6gLwQXrkww4Tx7BcZWTulajqCOP6tKShpv9pyk4TVFS97njZ
         2Ncw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GrQmnCLF;
       spf=pass (google.com: domain of 3ziyaxwwkaiexfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3ZIyAXwwKAIExfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=v8HM8gTMRz8bi8M15c68c4iI9NPKC1l71dtcyzeA6Do=;
        b=nbSUPo7GbmgYSOfT0eJJ8jSG3Kf/TSCzgKJDpWWe+5I4AzNbLp2jm1A2YulVUbvRhR
         KWoz5pneupXgl7AV9miSWJhI+M6Bl3qG5BYucFOXHeVXSo3a3988KXi2vxOn7wdCVu7q
         v4Gl6YXYzEjtVdnsxt7vnHNrXFy79/UFiZoUcPEAQdzwEXzlz4mT9tykt5Z/OSqeW3oJ
         6ntwlKw34jjlM2qbpEJAf00po+e154pU+pdwG0FRLDw71hM7O2HickwUY9PHAZ3u522X
         sYrWp6GOPMTvrmuY+AyO/vIl9DcTNWgDsrpF8XZQwH1cBmdpxUB3BJhXrlxaZqyxPNbh
         XtMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=v8HM8gTMRz8bi8M15c68c4iI9NPKC1l71dtcyzeA6Do=;
        b=V+LVKtLXa47i2tamtfjrM/mufFX6MkpHZWG+AT6479NWDkpG5TDqACXTZEPZPC3JnV
         Swtvww8BB53cAB9SkeOOpujIZxtnwF/DcytVXg6ETu/ofE+vaWe6lsElHj2bKQDGL6Bh
         ZvNHKzya1IXyFf7Li6iCWEv5eAiNIx4U48UIovVld77pGHj/K/kHFFuBCE+nsEbF3yCb
         /BNGfAn5hrYB7b3u62hk4vixE0+mEBj1gGCZnqu3HjyD2H7jWDXZnsD6NW5xOxZIt6x1
         dNzqjHRz5yZVUU6z9tsPIwkyswFYN235FCglOBaAQxnXSNok/P6t1SE3lHm5d6qzPOIj
         Opaw==
X-Gm-Message-State: AOAM531/iEBJcbGTvMhrM+BMM8oLJFKJwfbBg4QOatZd4dmmtDiHUQpe
	ezDX0dL6COCW+dYM+rd5vhE=
X-Google-Smtp-Source: ABdhPJzxZO1c0ppemNtbwFDLHmH//qC8QVImUxPM1tq7ZPskFJ+a3cB7OkWWGQC9d8KUxfUouxLvuA==
X-Received: by 2002:ab0:77d8:: with SMTP id y24mr1498811uar.72.1602260069513;
        Fri, 09 Oct 2020 09:14:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:23c7:: with SMTP id 65ls630320uao.7.gmail; Fri, 09 Oct
 2020 09:14:29 -0700 (PDT)
X-Received: by 2002:ab0:6914:: with SMTP id b20mr8318512uas.52.1602260068951;
        Fri, 09 Oct 2020 09:14:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602260068; cv=none;
        d=google.com; s=arc-20160816;
        b=B+CWQNxlct3HMyu16BxvrOLoqfwf24EAxcI1891Rctbw3WYj0pam/uVbFAdp4n7Gcz
         eN/wft5UtB+0reCc2VX2xpF5dcYaUHbbufHoVoqLEaM3FhPhMc+Bt1Ip+i+eAGL0KNa9
         9tMoUv9dbTyKLe2V5JZJQbVKUKV3SssjCKRxYjEDGueY9iTyMK/BDeyMUq5MTwFcWA0c
         dyM6qqTPPy8v1OFN4S/QgOG3KeSunYUW1YMjtdTL7HyFNH+2Feni8LmoNVHf4sqkX3J6
         NG9yrCBedroOCXdIsffbxS3wfwXbcHnAlSbVntcYyBWw74OCrNwqTh+8X48sJkmBYcq9
         Wxqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=zm1uzmyUH/ec78UqO7SuMlzRHKM3BG4k+fqmwwznAmg=;
        b=f9m9V/KTKNeBvrJUqH/C8HgGG2EFGP0gL0Jk+Sjyew2yPqtkAcQHvUb8H8dX//GV6q
         mLSOHFwphZFJ2uqfNBwe2jvX/tiDDNnLlPOcQ27utwIurdFeZzNzdaWK3xXeHDa/iy74
         ZUxUiZCK84egzZ2E5yoYSl1d+JQjj5FqXcbaV+ErEr6lGM89FrqvtqS4Q5VLjeP8P2ad
         qDnuA3L4opWhrjlLn9OK62oHLoG5U4cgnlAvJ1J/3GCdyDuhnN6FjSsoNIegWAOM9k4X
         AHBJjwXchy7/Gsw+G4RV7Csygk5GYB8B80HnK7YS9dSMVaOMUTJeb/Vi+KKZaq1UcE9r
         mZlw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GrQmnCLF;
       spf=pass (google.com: domain of 3ziyaxwwkaiexfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3ZIyAXwwKAIExfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id r131si432588vkd.0.2020.10.09.09.14.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Oct 2020 09:14:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3ziyaxwwkaiexfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id r75so9421550ybc.20
        for <clang-built-linux@googlegroups.com>; Fri, 09 Oct 2020 09:14:28 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a5b:486:: with SMTP id
 n6mr9292236ybp.229.1602260068556; Fri, 09 Oct 2020 09:14:28 -0700 (PDT)
Date: Fri,  9 Oct 2020 09:13:33 -0700
In-Reply-To: <20201009161338.657380-1-samitolvanen@google.com>
Message-Id: <20201009161338.657380-25-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201009161338.657380-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.1011.ga647a8990f-goog
Subject: [PATCH v5 24/29] arm64: disable recordmcount with DYNAMIC_FTRACE_WITH_REGS
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
 header.i=@google.com header.s=20161025 header.b=GrQmnCLF;       spf=pass
 (google.com: domain of 3ziyaxwwkaiexfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3ZIyAXwwKAIExfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
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

DYNAMIC_FTRACE_WITH_REGS uses -fpatchable-function-entry, which makes
running recordmcount unnecessary as there are no mcount calls in object
files, and __mcount_loc doesn't need to be generated.

While there's normally no harm in running recordmcount even when it's
not strictly needed, this won't work with LTO as we have LLVM bitcode
instead of ELF objects.

This change selects FTRACE_MCOUNT_USE_PATCHABLE_FUNCTION_ENTRY, which
disables recordmcount when patchable function entries are used instead.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/arm64/Kconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 6d232837cbee..ad522b021f35 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -155,6 +155,8 @@ config ARM64
 	select HAVE_DYNAMIC_FTRACE
 	select HAVE_DYNAMIC_FTRACE_WITH_REGS \
 		if $(cc-option,-fpatchable-function-entry=2)
+	select FTRACE_MCOUNT_USE_PATCHABLE_FUNCTION_ENTRY \
+		if DYNAMIC_FTRACE_WITH_REGS
 	select HAVE_EFFICIENT_UNALIGNED_ACCESS
 	select HAVE_FAST_GUP
 	select HAVE_FTRACE_MCOUNT_RECORD
-- 
2.28.0.1011.ga647a8990f-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201009161338.657380-25-samitolvanen%40google.com.
