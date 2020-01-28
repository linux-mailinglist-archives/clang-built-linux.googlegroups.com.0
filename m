Return-Path: <clang-built-linux+bncBC2ORX645YPRBWEEYLYQKGQEPCYE3SQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 99EE514C03D
	for <lists+clang-built-linux@lfdr.de>; Tue, 28 Jan 2020 19:50:01 +0100 (CET)
Received: by mail-pg1-x53b.google.com with SMTP id i21sf9112051pgm.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 28 Jan 2020 10:50:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580237400; cv=pass;
        d=google.com; s=arc-20160816;
        b=pXI/kFtbsl3vmsVIlXP95yfbcz34XYUHZBtRDP8EzJie4WIKjKiKU5HPoZ+yyFRuXQ
         AgqSCUKBywDupCpE1L1bPkcNuCGVy9fgf0TasCsRC4RSX0YxFVCDF829dYEA2OkJuk1Z
         o7UKfBQ5ukVay48teZRvV0x09p8uBHR20vpl2SYRN0quHX/LzcAZ9F7LfsvU8dfRiVB2
         A3ocRnivDVcfKYhYuRv6MsYcL6KKHhg4pf4mJ0d/VLxGQAeQtqob5k+y+PlTh+FwMUXU
         QdRXzozFdbBeKxMyr87Ija//yPJxcmc8vHoD25Pmk+0EqLvQhM/CUK7rdSep0DzK9K/+
         gvaA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=PEuAAcCx+L3KmFUwFDn/pIUTuJGOH6LMoqDarB3PwKI=;
        b=O/JPxCeObXnNE9a/jePdaubSUhj/edMy02iUpdMKfikL5JkpvLRUJZuAxkVyc+Tk3Y
         pXRwbTYpnp+ZbT+hfYpes/LPXh0nzJVEAfGVYt5KL2WI2YCwxX/D0PD8pKKY+8gToA/L
         tQ9AlhEhjfnm21l1wmqz5hU6PH1Jce+fVBUv/SAZJ4IbChd83co/oEYzvUXc2NQfdWby
         PFFwNC3NPkq3aUR+tMJ1c6jCVQUv46wdHgBiTluthhUmY4EzQAITe9oq804RCmfogmDh
         KbkfeWgFocD6/ERnEIbRlULev9QpcsmMXGnZh0tZ88y5BFiPiefvCf7tAXZrMFafh0rp
         NH/w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=o7KYQSca;
       spf=pass (google.com: domain of 3voiwxgwkabudv73e96gv8z819916z.x97@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3VoIwXgwKABUDv73E96Gv8z819916z.x97@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PEuAAcCx+L3KmFUwFDn/pIUTuJGOH6LMoqDarB3PwKI=;
        b=iVNXxS2GjtkHBVHzh/YfbRPYMoesqlDb13JHrc7E7YN4mBDef+SZLSEMfa+gODRLkk
         q5ZuS4ES8ZRiL5HI9GP2u+vh6nqNgV0+J/ZKwbYSSbA/p/PQxUdPGexQMuzHuAO5hLwc
         1BKwoZOjaO1h0bcGHQYJKaGty+mDqaH2uNYHqGAD/PVcRB6OiEyyTVpRg/MhYuERzIWr
         uQ+dOIZC3sy29a/aU7+SiUoAW0Ux5B6Xppko63QugYwhUoWsrO2tAFVfG4IvAyNbXRxX
         FgRDPswiPpsx8Tohl/jq0XwULcmH5rQ52mVOVkP56pdKQCiBm668h27jZuTMKYsqWprk
         IIJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PEuAAcCx+L3KmFUwFDn/pIUTuJGOH6LMoqDarB3PwKI=;
        b=Vxui9OE9A41JGPU6Zkgcl7+mMDOe8cKZAKXjlMkqSfkjS/LyjyJaQiPvBkay0i4BlC
         3ihhyTBm4PEtIH9yMZyb1p+G7binmKGvK549roStDTZzlIdM3MoTBz3q/TMqSceP+nI5
         R5LbIMY9TrncaU0tIT211j3imThJdNBn1dgrggDde/OMOwIC+17caeltmZ3UHB9ZV1JB
         VY0z+fZYgCsfajV+iZZsx/pgcPcRV7AdDqa7UCdq2F8zk3XALIQUix/SRYO1p0xzr8R2
         Zxq8SWGAQZq0ji0DgU09wivdGLLh07nxEsC3Qc6o8Iybld2GDce0/wCiq79fd5PIGacH
         3RWw==
X-Gm-Message-State: APjAAAWjfZVPmIBI6eoxhJEBTZYsZJhvr+jB9VbmnwGqXobhxp3hR6Hk
	4ubFZcs1YtM/ndu1Db20QOE=
X-Google-Smtp-Source: APXvYqzDaMOjop78qC/gAnWsJLuUUXcbNtvF2g9dH2rKQmMypfJdpfcRe5JW1s3JqRG0BrM3HtmvBg==
X-Received: by 2002:a17:902:8f8a:: with SMTP id z10mr24835917plo.169.1580237400353;
        Tue, 28 Jan 2020 10:50:00 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:84d9:: with SMTP id x25ls6344828pfn.2.gmail; Tue, 28 Jan
 2020 10:49:59 -0800 (PST)
X-Received: by 2002:aa7:8115:: with SMTP id b21mr5389524pfi.80.1580237399864;
        Tue, 28 Jan 2020 10:49:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580237399; cv=none;
        d=google.com; s=arc-20160816;
        b=RtVt+nMO1z/4TRYkzBecg2NP9U/iP0qr7LNFxSFuRLXvNh10eX82HwL1XESnklq7L+
         E6u49HgKFpSvi/LxD8hGz1SutmnuD00mjpkdl2kRG6zGM+6ZWpJCwhztX6bQPMJjWNO5
         QlellsOrp8u4dSb+OeklqhtHJoetRzn319KDPj2/95dbiKgHpIip8TMAYX4Z+RLqwGAK
         Et8Pn8qGIzmUE+cuxqS1WKLHlC5NutLt8Rv5RC5wVN3wxaRnFzwPL/dVSFiU6DR2Pa/l
         tNny8yXl9rNYPNlYAvYLHEXuLm0en4/CRlgbO8XHBBI5qHAReHwgOd7fPCSbkN64hUHV
         6Xiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=bNCXRmM/yr4GL3yZ1bhHRJc0r5YpsDoQ2qXNiKtbIjQ=;
        b=XpZdpYLbc5xd/RtUpOkFOK98v2aZpEYMsokHy0ag0QV2kjAlHkbBPa4YGSPhucj+Oy
         beCbueVGyU/P5lQymZfzxThYMAgoHTkwZiknGtIn49N3LbWI6u/gdlIHkgnsyxhY7Dk9
         G1aH/HYgvLedjI5jC/52gp8xOY6MIkciMI1n3/MyDhz4U2HbfYLbULu5lfvjmqQytW49
         ku6GfTq3YdbLFAOMRI6yuze+ggrUReIjQHddSl/tW2KRm9YiLBez7urz+XpoDVJ2Q9p2
         vPBoW5uIS1No5/fhCYgyCBmyIRjk0zd88uoietB/2FfyLMdRBBzPhJC63fctB4merxyJ
         8pVg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=o7KYQSca;
       spf=pass (google.com: domain of 3voiwxgwkabudv73e96gv8z819916z.x97@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3VoIwXgwKABUDv73E96Gv8z819916z.x97@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com. [2607:f8b0:4864:20::849])
        by gmr-mx.google.com with ESMTPS id i131si661631pfe.3.2020.01.28.10.49.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Jan 2020 10:49:59 -0800 (PST)
Received-SPF: pass (google.com: domain of 3voiwxgwkabudv73e96gv8z819916z.x97@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) client-ip=2607:f8b0:4864:20::849;
Received: by mail-qt1-x849.google.com with SMTP id c8so9074343qte.22
        for <clang-built-linux@googlegroups.com>; Tue, 28 Jan 2020 10:49:59 -0800 (PST)
X-Received: by 2002:aed:2783:: with SMTP id a3mr7863657qtd.284.1580237398897;
 Tue, 28 Jan 2020 10:49:58 -0800 (PST)
Date: Tue, 28 Jan 2020 10:49:31 -0800
In-Reply-To: <20200128184934.77625-1-samitolvanen@google.com>
Message-Id: <20200128184934.77625-9-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20200128184934.77625-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
Subject: [PATCH v7 08/11] arm64: vdso: disable Shadow Call Stack
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Mark Rutland <mark.rutland@arm.com>, james.morse@arm.com
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=o7KYQSca;       spf=pass
 (google.com: domain of 3voiwxgwkabudv73e96gv8z819916z.x97@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3VoIwXgwKABUDv73E96Gv8z819916z.x97@flex--samitolvanen.bounces.google.com;
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

Shadow stacks are only available in the kernel, so disable SCS
instrumentation for the vDSO.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Mark Rutland <mark.rutland@arm.com>
Acked-by: Will Deacon <will@kernel.org>
---
 arch/arm64/kernel/vdso/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/vdso/Makefile b/arch/arm64/kernel/vdso/Makefile
index dd2514bb1511..a87a4f11724e 100644
--- a/arch/arm64/kernel/vdso/Makefile
+++ b/arch/arm64/kernel/vdso/Makefile
@@ -25,7 +25,7 @@ ccflags-y += -DDISABLE_BRANCH_PROFILING
 
 VDSO_LDFLAGS := -Bsymbolic
 
-CFLAGS_REMOVE_vgettimeofday.o = $(CC_FLAGS_FTRACE) -Os
+CFLAGS_REMOVE_vgettimeofday.o = $(CC_FLAGS_FTRACE) -Os $(CC_FLAGS_SCS)
 KBUILD_CFLAGS			+= $(DISABLE_LTO)
 KASAN_SANITIZE			:= n
 UBSAN_SANITIZE			:= n
-- 
2.25.0.341.g760bfbb309-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200128184934.77625-9-samitolvanen%40google.com.
