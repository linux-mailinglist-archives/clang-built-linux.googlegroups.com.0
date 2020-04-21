Return-Path: <clang-built-linux+bncBC2ORX645YPRBK5O7H2AKGQEJAGZVMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id E81341B1B97
	for <lists+clang-built-linux@lfdr.de>; Tue, 21 Apr 2020 04:15:08 +0200 (CEST)
Received: by mail-pf1-x43e.google.com with SMTP id b25sf7987761pfd.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Apr 2020 19:15:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587435307; cv=pass;
        d=google.com; s=arc-20160816;
        b=0KM0JkxGItgHpZNPsuGu6LAmjy8CsM4ALc+/4j9vZX9Kvok+/ROFfF86F1r/ie69hl
         IfcBpA4m6OhYYpzkDiUQACEPmm3tKCneslTjjV33yxyLPRWcJFTeCUf5NfaODTkMlJJp
         8DSO6xNBIoJrJtB18dGUXYQz5HqAnufNpT9vRttokzElo+ojyo8KSLxR49BzNItZIRs1
         YJuRw1asnUoZr83vPaBay9gP9aqCquliR+82xuF1/c2EjrEPmWCUWmRIKVlhkCNyw9m0
         7e4fm45JQd08KtQRB8iRk6IkqfD0RrJ6lbvcc5KaXkPEdo1H2YmirrhUu0IaehtwLfy+
         eLFg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=K3DrU3xl8ImZYvC4m102s/TiUQFq5zHcdhldmNS3P9A=;
        b=jAy44f8e/dylBclTUofHjEdejgmr4KQ5z0eqeIw7hlD8yU1uLVWRNcng9mplp/VRti
         +Xm5TSzPUVHua4K2a93z3F6VkbgC6upQ38A7gitgIorG3tbkmMdcAIEgy4n0PU1FpnrI
         xvo2YzneEMYTG+Xx6gTTX93aj0/Q/sxXcvgJgyKUaFV+FfJFmfRtL6w+QOrO103K9ER0
         XNDShN9wsrS8mJghEH8CxFvni24AVHPnycdkTNUZqsXGhBISWJffwnGuMd5o5Mq6IWPF
         X7GiPsWLeAkP51kykvJc+0Ozm4VVhmC3dNHTeMUoSSWE+9Mrmm6/xucVJW7pdpHmqvjU
         z0lw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FmbqKiCh;
       spf=pass (google.com: domain of 3kleexgwkae07p1x830ap2t2v33v0t.r31@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::1049 as permitted sender) smtp.mailfrom=3KleeXgwKAE07p1x830Ap2t2v33v0t.r31@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=K3DrU3xl8ImZYvC4m102s/TiUQFq5zHcdhldmNS3P9A=;
        b=XfREfjzijWE2nfFJlip82dGI6ovbv2juDra9XIsIob5F64ZNv9XIHrA5Nb0LEOJ23/
         t5XMgOMMv4EXc6tUWzyTe0KX0jrbLaFaEWdkc7M4nFNE3Sw+AJGE930FWDrGXkJLE6LZ
         hfeqCMiAbU1LiUoPT2WvVyqJuIgtgigeSZ6Q2lIpFGHCXMZ/8hMsVIgytfgkbtn0hCPh
         BalCxixmZaJEX59b0zQvmVZkFFzR3ePTVSZxFKdZ+0e/ciVf5QQvm0+ehDtHLGtDuQPm
         cSJoJz8Su8qCGLIMhToiFK+gfF7GIyXhBr4m230tOHijY3wyd+9SyeGiNISSG0QQIj5B
         nrOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=K3DrU3xl8ImZYvC4m102s/TiUQFq5zHcdhldmNS3P9A=;
        b=RUt2r+YJLWVYSsFe8zZPifoogHaXM8b8LCwWQV0STl+JUGs9EUgyqjk4y3XitruA4H
         yt65fWn2c0+b+3aHbiGzoiOBm0b0kU5xaCcThrDSXp2ahvXn5PMpMrbUpjL7TCH1ZyO2
         FtlwH15psgmNrs6JA6KIGjwlmJ1TmFpp0seIuDkFycAzVWAAHo7fJKDbGSRyYIsM0qmh
         2UnbG+Vj/Tz45bJNQB0ZE6tspkIoR7cfUp6LZJi4PWTV1qFjK8616NpPSysDKa9AH7Jq
         Po2xWWt5YPfEXJj7dv/DgXbNGNPb6BQU8EdYJGB1h9TC8gGCC0cK2nWudk5VT1DYj1eG
         Im7w==
X-Gm-Message-State: AGi0PuY8QYL0baNH6Md93bLuZQJwUUuZtIFtsJdLyAzqNDS7gKE84rF+
	PLoTeZG4QvMTD8B1MlYBLMo=
X-Google-Smtp-Source: APiQypIIA2w5boFv9Dgd/e/IlAaFuQ9JJEynL6FSPHRMjrav5gvcSuHKGtPffZgc9z/lz25iRGBVqQ==
X-Received: by 2002:a17:902:a603:: with SMTP id u3mr19851828plq.105.1587435307696;
        Mon, 20 Apr 2020 19:15:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:a50f:: with SMTP id n15ls11960863pgf.5.gmail; Mon, 20
 Apr 2020 19:15:07 -0700 (PDT)
X-Received: by 2002:a63:f707:: with SMTP id x7mr20348203pgh.374.1587435307235;
        Mon, 20 Apr 2020 19:15:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587435307; cv=none;
        d=google.com; s=arc-20160816;
        b=HiLwatuSvZQTKkzb8nMDvhqayGT9uzHy09lyoJuOjdFsRjNTEBDhz5AD3VZWbXdu5C
         8KulzYbIH6fk+ywAMnk2zNjCTtn6sJIUZ2LHhFkkNYgvQ38O1FnTQmyWk+wNqJbCbmDb
         Wwcspek8u5Bo/N8qhuduuANzAfW6T998y5djhBj3TBSaEsCEWblIQ6tQTYAdNMJUq9D9
         uC8JTk0LJIc3VznIUGSqh2votSKpTCyz1fIinaxV7inIj1Z9L/QskJxDgVOLyiWFPdyq
         cdRihSx6OmwLACApTRwB5G8HuffNtTsK5XNiY3K2b6CfySBcInYIqwT1auE0/hRaAmQl
         RjhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=chILL6A5g4aA5f1fWto46CThp2yfStYETCAmL1RMQR4=;
        b=CaMzkemkkdUctjl6rRXyIidOamPS6GyVbr2OF7meOir5oncmj9ueom9YDtxOOxtXH2
         zecHLFW/ln6pqb+TIWVI/e3y5/zpkm/ZBk7eQz3Z8cBbKq3M+e17VlL9yklKI0ukj0jR
         aKMgbhyMnoTh027tm6iDwzVEg1Cwu7hTQoqdrxGgZI1ZHJTbVry5kRTWL2Ut3YllOLPM
         fOrCBqGmd1PIeB7czn/u6pzvCznA6GGcpkd4WjYA7BxE3NiQ5wMhVTHL/DhjLcR8qIW/
         WD6QymRh2r0L4Uhsq54a8nT4BFjtQdnwzhkQjTbm8gMWdiP1NcZyCIYlt8f+StU2Lv/v
         CHRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FmbqKiCh;
       spf=pass (google.com: domain of 3kleexgwkae07p1x830ap2t2v33v0t.r31@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::1049 as permitted sender) smtp.mailfrom=3KleeXgwKAE07p1x830Ap2t2v33v0t.r31@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1049.google.com (mail-pj1-x1049.google.com. [2607:f8b0:4864:20::1049])
        by gmr-mx.google.com with ESMTPS id q189si60137pfc.0.2020.04.20.19.15.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 19:15:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3kleexgwkae07p1x830ap2t2v33v0t.r31@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::1049 as permitted sender) client-ip=2607:f8b0:4864:20::1049;
Received: by mail-pj1-x1049.google.com with SMTP id l9so1779174pjq.8
        for <clang-built-linux@googlegroups.com>; Mon, 20 Apr 2020 19:15:07 -0700 (PDT)
X-Received: by 2002:a17:90a:714b:: with SMTP id g11mr2691672pjs.17.1587435306926;
 Mon, 20 Apr 2020 19:15:06 -0700 (PDT)
Date: Mon, 20 Apr 2020 19:14:45 -0700
In-Reply-To: <20200421021453.198187-1-samitolvanen@google.com>
Message-Id: <20200421021453.198187-5-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20200421021453.198187-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.1.301.g55bc3eb7cb9-goog
Subject: [PATCH v12 04/12] scs: disable when function graph tracing is enabled
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	James Morse <james.morse@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Mark Rutland <mark.rutland@arm.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Ingo Molnar <mingo@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Juri Lelli <juri.lelli@redhat.com>, Vincent Guittot <vincent.guittot@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>, 
	Masami Hiramatsu <mhiramat@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Jann Horn <jannh@google.com>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=FmbqKiCh;       spf=pass
 (google.com: domain of 3kleexgwkae07p1x830ap2t2v33v0t.r31@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::1049 as permitted sender) smtp.mailfrom=3KleeXgwKAE07p1x830Ap2t2v33v0t.r31@flex--samitolvanen.bounces.google.com;
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

The graph tracer hooks returns by modifying frame records on the
(regular) stack, but with SCS the return address is taken from the
shadow stack, and the value in the frame record has no effect. As we
don't currently have a mechanism to determine the corresponding slot
on the shadow stack (and to pass this through the ftrace
infrastructure), for now let's disable SCS when the graph tracer is
enabled.

With SCS the return address is taken from the shadow stack and the
value in the frame record has no effect. The mcount based graph tracer
hooks returns by modifying frame records on the (regular) stack, and
thus is not compatible. The patchable-function-entry graph tracer
used for DYNAMIC_FTRACE_WITH_REGS modifies the LR before it is saved
to the shadow stack, and is compatible.

Modifying the mcount based graph tracer to work with SCS would require
a mechanism to determine the corresponding slot on the shadow stack
(and to pass this through the ftrace infrastructure), and we expect
that everyone will eventually move to the patchable-function-entry
based graph tracer anyway, so for now let's disable SCS when the
mcount-based graph tracer is enabled.

SCS and patchable-function-entry are both supported from LLVM 10.x.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Mark Rutland <mark.rutland@arm.com>
---
 arch/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/Kconfig b/arch/Kconfig
index 8450d56e6af6..b52929f38cf7 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -543,6 +543,7 @@ config ARCH_SUPPORTS_SHADOW_CALL_STACK
 config SHADOW_CALL_STACK
 	bool "Clang Shadow Call Stack"
 	depends on CC_IS_CLANG && ARCH_SUPPORTS_SHADOW_CALL_STACK
+	depends on DYNAMIC_FTRACE_WITH_REGS || !FUNCTION_GRAPH_TRACER
 	help
 	  This option enables Clang's Shadow Call Stack, which uses a
 	  shadow stack to protect function return addresses from being
-- 
2.26.1.301.g55bc3eb7cb9-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200421021453.198187-5-samitolvanen%40google.com.
