Return-Path: <clang-built-linux+bncBC2ORX645YPRBDEI4L2AKGQEPWKJZDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 0757B1ACCF4
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Apr 2020 18:13:02 +0200 (CEST)
Received: by mail-pl1-x63c.google.com with SMTP id y21sf3165124plr.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Apr 2020 09:13:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587053580; cv=pass;
        d=google.com; s=arc-20160816;
        b=Vp0Cj8Y7WYLYammxGevsvdS1OgGKGeDyv5sRevdNP8tx1SAITwOK0NKg81sWb5LjjW
         ylVDE4UvFiwJYvStufV00F6eONYOO3r+LLiX2FHhPImSbfW2B90tvYi3WNnUhQY8Q9QO
         0+38nbCVjNcDy0nHjFpHZq7w6XkGohQmbfQBLgvVYO0x22V/5L25j/r8Ci3dMoQfPEY8
         VtJL4doQ8zRZUzh6dTp6rfd3hy+qxh1XwABojxZt8n6G3auQF2K9RIbZaEGMeGO//9t6
         VrEzjpkTjkp3YyVeGcSsRYaDp95khxCa1vnmu5FgVu5ReqEbT8mLaUrxKaw6S7RM6V7w
         4sIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=U+I1GaJa2T/e5RlPdVmMEJwm7LnFYa/4aY5MoDExi5k=;
        b=odWlHxOpxQlVsu8spTm7AVR63fnzq+R6NZMmg9kU7Z+Eq0UGLZzeWqtdAvPAgVsi/i
         4O6FQ7ePLbgXZ3nvMbX3dZkyqSXWQQa6XSxPVViRIxOQmK3WgchChDrTFUU7222m/cS0
         mMN3abUTWCsECPrQXp5XaroOaHnHJKkXldp3bsirKqvfhC60QtrPkr3y8HtTkTazcVF9
         o9CGosjY6O4IuBCEyva32t+xk4wVMMf6y0xR0fxCrxUs+wsDPXP/a127tCzORINRmJAc
         wrzUX8prMIhsMjIPoX/nq5bIXLt97/1kON+nGuCfg+uFviRdNThn8TDVrVeaarKnOdBW
         Jp9w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LLB6uGgi;
       spf=pass (google.com: domain of 3c4syxgwkahagoawhczjobsbuccuzs.qca@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3C4SYXgwKAHAgOaWhcZjObSbUccUZS.Qca@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=U+I1GaJa2T/e5RlPdVmMEJwm7LnFYa/4aY5MoDExi5k=;
        b=sRvVMi9ZBWpJKq0k20okUmQIgXTT9WvRgYDJY+Xuyq9oCBOoe3Rs1Eva2p6v6c0USa
         BC5WuQPKZ5e5WPWHYMcGDwcYU0BQxcpkhAyZ4lKJRSWGh0pSYre/ssuJbgliJLURQpjb
         vI0RJxx/hpETLTAXD3Co/fsEWIHMGAZqE4Oq0CfEUFYYq0ae87BJHtSPCEB1T8omzIc6
         9vH+QeCB0S+zPJUgyZd+HSlyptcio/XbUd/U0OAEzKQ7mjgwxSNnY5YuCd8y+ieh51pS
         zzxPI1/ELijOnsnp6M6yp1uL0Nw2NHxWHQEp7CIV3SQZIyKufqQj7VUnB3P51NEpBHtR
         fX8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=U+I1GaJa2T/e5RlPdVmMEJwm7LnFYa/4aY5MoDExi5k=;
        b=dAURR5mYtqcxs1+7sAWPe7tnQaxb/2EPiuuhQMVWeUAwxgUYXx4J+QvD2ocSpUr9M5
         Wmudf63yZ7DwC01ZyExrmTj9K/dfQMH1TK14whObA1fQDvFUbBgqQ8ZCC4ibMGReiNjG
         5imuJoGZTUzmQ6H731EXiT6AZDYNMCwHQmk204drO8dAfce2NzaPI5jh+NcdKik9Uo5Q
         475FS3bQLYCEZSHVdA7pDIIcjArwB+gcg8eKsOx77Ftgj3w4jMN6LvBijAlRPBG8ZoR8
         8jOu56hIfMPHIw0sgCvXqfykkejvNqMy7/H1nfu9NHBr/tlxKNl1hScLywdk6w0Z68gM
         whtg==
X-Gm-Message-State: AGi0PuY05sZtlxbVjtPZ5uSSeP+MXa7mT9XGqwWiJZIftWkCPu3ML/Gh
	wFvNdKKf/2/bjDFLQpfjEqE=
X-Google-Smtp-Source: APiQypLhQY4+TK7ueoA7iUrI65EyO1sAjhe2wowVFNMNrAx3LAMxdfS2Km+2JXhcS+DbQjytob1YiQ==
X-Received: by 2002:a17:902:7616:: with SMTP id k22mr9776601pll.39.1587053580318;
        Thu, 16 Apr 2020 09:13:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:a5ca:: with SMTP id t10ls9381486plq.3.gmail; Thu, 16
 Apr 2020 09:12:59 -0700 (PDT)
X-Received: by 2002:a17:90a:cc2:: with SMTP id 2mr6195467pjt.33.1587053579872;
        Thu, 16 Apr 2020 09:12:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587053579; cv=none;
        d=google.com; s=arc-20160816;
        b=vN07RtsVRYzndLuFn5SoOtVDXScqEeHTouqWjkyM4uwlGDLei3SKoEE3XOWbofojvP
         8KLfp/Y58ll6v4FpKYKtmy1e7GcO29L+++8yVBtyb/gIe0VHu9FK9kRE8tVwtshRCPPy
         nEvTxPgMab0JKYeOBygyvxcreE55Zgevp7CnaJXrgL8PeDwgqip06OCLHPqxF3QY6i6z
         R1XnDc5A7kVqD2Kl0am+ZX94SgGRYib9c7FeZt6c23Ha4Xk702iFQ2ASaPF3KRpHBeD3
         r/05v/azp7nhtv+EpJfLqMMa8Ud1c/ZK/ZzZmy0CgbcUBdAgu8yQTrFY43icZG8ZFhJj
         aGHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=v+FpjDALSMEE3YToTyyoSh5dhgN0urRtPwHsB1+RBqo=;
        b=z472KiKfK00v+UnI4DPb2FBxQ5XNfvXJ83YViyXLlMz/W7qsT6JQjlsOXTD9+Wn3wG
         9usCuUVz5+5aarM9SnUbC11zX11K9WGro86ss1MvwjMBm8AZZm7w94e/Xx26xXKUPTRD
         FdJnpxpHeypX4eoABGSFS9TwTTYVw+SQsOj7xiV7qt8LKnC0iqpvQxZ3cYxZAALYCR2O
         cT/p3g8QTaSXaZX44kiwEW8WCHYxiMSq/s2PjCuD+fzOYWkerP3W2FEr1bkIclxoSgWf
         GnUx4a3648YsrS2v2VL256J4kby76rBIqfZjvvju5b5SP2LhN+RG7VntFMDGNHMiE+ke
         2ocw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LLB6uGgi;
       spf=pass (google.com: domain of 3c4syxgwkahagoawhczjobsbuccuzs.qca@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3C4SYXgwKAHAgOaWhcZjObSbUccUZS.Qca@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com. [2607:f8b0:4864:20::44a])
        by gmr-mx.google.com with ESMTPS id np5si88692pjb.2.2020.04.16.09.12.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Apr 2020 09:12:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3c4syxgwkahagoawhczjobsbuccuzs.qca@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) client-ip=2607:f8b0:4864:20::44a;
Received: by mail-pf1-x44a.google.com with SMTP id z18so2429748pfg.20
        for <clang-built-linux@googlegroups.com>; Thu, 16 Apr 2020 09:12:59 -0700 (PDT)
X-Received: by 2002:a17:90a:8989:: with SMTP id v9mr6124346pjn.119.1587053579583;
 Thu, 16 Apr 2020 09:12:59 -0700 (PDT)
Date: Thu, 16 Apr 2020 09:12:37 -0700
In-Reply-To: <20200416161245.148813-1-samitolvanen@google.com>
Message-Id: <20200416161245.148813-5-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20200416161245.148813-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.1.301.g55bc3eb7cb9-goog
Subject: [PATCH v11 04/12] scs: disable when function graph tracing is enabled
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
 header.i=@google.com header.s=20161025 header.b=LLB6uGgi;       spf=pass
 (google.com: domain of 3c4syxgwkahagoawhczjobsbuccuzs.qca@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3C4SYXgwKAHAgOaWhcZjObSbUccUZS.Qca@flex--samitolvanen.bounces.google.com;
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
index 691a552c2cc3..c53cb9025ad2 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -542,6 +542,7 @@ config ARCH_SUPPORTS_SHADOW_CALL_STACK
 
 config SHADOW_CALL_STACK
 	bool "Clang Shadow Call Stack"
+	depends on DYNAMIC_FTRACE_WITH_REGS || !FUNCTION_GRAPH_TRACER
 	depends on ARCH_SUPPORTS_SHADOW_CALL_STACK
 	help
 	  This option enables Clang's Shadow Call Stack, which uses a
-- 
2.26.1.301.g55bc3eb7cb9-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200416161245.148813-5-samitolvanen%40google.com.
