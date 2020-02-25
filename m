Return-Path: <clang-built-linux+bncBC2ORX645YPRB3NX2XZAKGQEVELKCRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc39.google.com (mail-yw1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id 2331916ECAE
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 18:39:59 +0100 (CET)
Received: by mail-yw1-xc39.google.com with SMTP id q128sf12846626ywb.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 09:39:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582652398; cv=pass;
        d=google.com; s=arc-20160816;
        b=0+HueE0ujz1omEBXMdQe8yEtrjW/VmwCh51VVirtxyB16iOCoJBMEKRhMtr3juWlCm
         Xd1S6NudRJdBCHvWqLTB7KzdIg/OoAQx6gDYvN8EjNe5uqq5pFp/lcpUi5JS0rkMD1ah
         0yhRh7CWgOdofLIK8GMuJLYDhVxvFxRTiLZoHZ34TolnGyIzAYAWlYlbFyq6OQ08S9HP
         U/9oec6BS1VP52LDP5XDdjo3Hd5+Un4u+OoUp+Btwi8IMeQMPorEZeRXx2Avk9wElB0E
         0ce3FVHD9zbYzW77dFBC7NK3aOLAW3xrAC9nmnQGn6kP90hhy860u0+hofkUDj+OLZoO
         /S1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=O4MDFufz5wHE2yWIlmrRMkLiQUXExJujXBROBvkoiIo=;
        b=mpCAa8nhzD2L81XyTyr96ERr6/REdNw1gjjI2qmOyp77kZk4UYcRBf6CR3HqOK+nod
         hc9twDNF8B9Gz1ce2k0TzPQB3Tdk/WpZ+3z4FpSzd4stJ9dwgBW9pDQwoIPgsFkG7kZ+
         GW7ntu+Y/Prai6eBljCGoUtHPzBzwNT0EC7RGgMZw9Pidm5nodKcQLHF7LdG2x27cVKf
         xc/LMXJgQ0yyEWbDCKBNMA8B5F8erFUzByj1k67ge7jDB+rzqwXw3Eotydh8U3oGTzeo
         YOep9RWkwWGH11UDEaUxJTLslHqVlpDJ/Lj7vXDq8H36zJcjcJT7u1cSK9ddDh5//Qh/
         cHNQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rcZDangc;
       spf=pass (google.com: domain of 37vtvxgwkapimugcnifpuhyhaiiafy.wig@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=37VtVXgwKAPImUgcnifpUhYhaiiafY.Wig@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=O4MDFufz5wHE2yWIlmrRMkLiQUXExJujXBROBvkoiIo=;
        b=LfHorZSZKOXUr5Y2AT2UomCLeZ5fuft2SYjLN1DJLnMm7AjVDGhunpNWPzzmK37t0q
         OvzcnTckJciwR7gOWGpFbNZjdmRy2ve3HvWAAhTRkZe7FjjrbN9w1U2y6CjCJvQ+7TSU
         RnW8i3auj+5lQzxpvNLM5dmTpkOkw8k47q4xul/J7GNeJf3hDD9pBn/Mtsqggp6G75ss
         aybsrNS0Uj1pb/iUWeH4WcgP5/lbTqXJz2mYvcYm+ONhX3lne/NuBI08VLqpapgBOstT
         8TbvNYp2YHrNXJBTLyR6cAC61tJzSXpP4Mp1ydKxdCMg1O46yDw7m9b5zBjr0iwLFDou
         QWFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=O4MDFufz5wHE2yWIlmrRMkLiQUXExJujXBROBvkoiIo=;
        b=dDqi41kaaspCCFKPboNLMrqL7LXCxQBi2acKjEwCaMtV8I9/wPX3hTYHxX26jr9aad
         19ckWeQKfrVvirde73ltGYUPXaynke2bobIjFq3u/f+XhFCUn+I3gzEPtGACrA8FnsBh
         wdioaKbKgdrgAhP7WmLlJZQFQYjU6Uo9nnxBQyHc1vif6uHPAk3pS4xWVsq0AOa9MVQC
         4cys/yeXpRIG7GlRyatAQiRWa1h/pJDKVHZi+zE35JxF9FXZ2BKprKaktExg7/MVXtqd
         Nou5r1DvTAzUaSQqcy5KvwJ8MRnzSQpWWj979Jo5GYYGUaFk7+x59Y02aGqGy3u2dMPt
         ornw==
X-Gm-Message-State: APjAAAXKtmW7OlmfzAQkjxI/ODW05io3K3QvHrVZWpKLXYBVgcOEkNVz
	Ry6jNuUfkzP8VMBazt9GstI=
X-Google-Smtp-Source: APXvYqzVEwFa0T3ccxNxxcY4UeHMbhd+0OtObXtdIMy1DcFt5J6sdAMxvKJQL+WQUSVB73Gb6VS5Lg==
X-Received: by 2002:a25:ca8d:: with SMTP id a135mr466113ybg.143.1582652398023;
        Tue, 25 Feb 2020 09:39:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:69c1:: with SMTP id e184ls41122ybc.1.gmail; Tue, 25 Feb
 2020 09:39:57 -0800 (PST)
X-Received: by 2002:a25:2541:: with SMTP id l62mr481074ybl.294.1582652397704;
        Tue, 25 Feb 2020 09:39:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582652397; cv=none;
        d=google.com; s=arc-20160816;
        b=seXO0NdXHd5T/ob4nzyFPaTWLiPIiERyIRIaW/+H0l7L4Wvk2sLBo7IjRsRpBt38/O
         lDhIQ2fRYEV7Rh2o4EwuiiyD9csIUD4MEo8l4r08X1vnq3v3Rdi1Tb75whbvMBzMlgLT
         MPb+OYPaZvfOOmIZCAZyQcMOa5DT4Wbs7YJa5osSd/jDoDSXAOEgusFpx1q2cZsda6NE
         FiuBcG/rM8rVh58+KY61PDmNOB8B7zZKmG9JVsBssi808PL6zOg7thyVQ0pw5N+vS25T
         m+ju0BL2e5QzK/hLktD7H1Okg6MLs4CAQDcFonasTf1EKGtibg0SxPszaHWGJpuGs7Ez
         2vwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=euAiLk7SvDA/PnGZzpLLTI9flOv+YzdznFtW1y3XFgk=;
        b=j9ZqPBHTsKzDpJWYtFKzsXjm8DdoNw5MZG3NwXFMLUOZvCSN94reFG7G+BBcI9ECcr
         qFgsCn8IjNS6IKETzkdVm2wABtBvmbblw1q+pcAXHlb2sJbF4gmQSyWSCIOK0BvkfQRD
         XIlMCzZwXPGr0uxtxG4fKuCqP72hHWPDcpS53YMuCZJqgnKlPfTkBDBJqtSn9NRBYfGJ
         z0/9qNzBcoZsBxnUZ4DcO+sD3caGzJVbRQWMOYbMTaNPtuUoIDFt3qGDB2wwayzHADfW
         ac1dqrZbE8GDpK7RDjCH1fG/KzsxJkI2EVQqS9CLjsHyGWTZtvDbmNS9tlezbTO2uutZ
         ukjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rcZDangc;
       spf=pass (google.com: domain of 37vtvxgwkapimugcnifpuhyhaiiafy.wig@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=37VtVXgwKAPImUgcnifpUhYhaiiafY.Wig@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x74a.google.com (mail-qk1-x74a.google.com. [2607:f8b0:4864:20::74a])
        by gmr-mx.google.com with ESMTPS id u71si17710ywe.1.2020.02.25.09.39.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Feb 2020 09:39:57 -0800 (PST)
Received-SPF: pass (google.com: domain of 37vtvxgwkapimugcnifpuhyhaiiafy.wig@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) client-ip=2607:f8b0:4864:20::74a;
Received: by mail-qk1-x74a.google.com with SMTP id e11so15870382qkl.8
        for <clang-built-linux@googlegroups.com>; Tue, 25 Feb 2020 09:39:57 -0800 (PST)
X-Received: by 2002:ac8:3aa6:: with SMTP id x35mr39983775qte.38.1582652397221;
 Tue, 25 Feb 2020 09:39:57 -0800 (PST)
Date: Tue, 25 Feb 2020 09:39:25 -0800
In-Reply-To: <20200225173933.74818-1-samitolvanen@google.com>
Message-Id: <20200225173933.74818-5-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20200225173933.74818-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
Subject: [PATCH v9 04/12] scs: disable when function graph tracing is enabled
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	James Morse <james.morse@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
	Masami Hiramatsu <mhiramat@kernel.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
	Mark Rutland <mark.rutland@arm.com>
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
 header.i=@google.com header.s=20161025 header.b=rcZDangc;       spf=pass
 (google.com: domain of 37vtvxgwkapimugcnifpuhyhaiiafy.wig@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=37VtVXgwKAPImUgcnifpUhYhaiiafY.Wig@flex--samitolvanen.bounces.google.com;
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
index a67fa78c92e7..d53ade0950a5 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -535,6 +535,7 @@ config ARCH_SUPPORTS_SHADOW_CALL_STACK
 
 config SHADOW_CALL_STACK
 	bool "Clang Shadow Call Stack"
+	depends on DYNAMIC_FTRACE_WITH_REGS || !FUNCTION_GRAPH_TRACER
 	depends on ARCH_SUPPORTS_SHADOW_CALL_STACK
 	help
 	  This option enables Clang's Shadow Call Stack, which uses a
-- 
2.25.0.265.gbab2e86ba0-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200225173933.74818-5-samitolvanen%40google.com.
