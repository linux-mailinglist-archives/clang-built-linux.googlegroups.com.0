Return-Path: <clang-built-linux+bncBC2ORX645YPRBNUYRDXAKGQERVCXNBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 03249F0A91
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Nov 2019 00:56:40 +0100 (CET)
Received: by mail-il1-x13d.google.com with SMTP id n81sf19982076ili.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 Nov 2019 15:56:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1572998199; cv=pass;
        d=google.com; s=arc-20160816;
        b=vU1XjXUpPjItrTfdgUf4X1BtE2bS7mpd8Ihzo1SdOS6ZxQVAvdy9767rOJZs42bGiD
         b132zskyR8Nx7ov1P+cxGueRx6888rnjSmv3H87bo9BcVqzafmbGzLTqFWLFGqPPnJj2
         GxJP317aXbWHKN7Cmi2iATZH96CtJ4/FhsH+159anhb9sxLozuhBnaumjJIKRPoKy+AC
         55bWPXTXYJqAG9pgaW8iOZIzypIQIQvtjsR6Jc6w3VyFwEroWdrtb8mTqyL9xKvrXzcn
         zeVzEpmHF8/bGbgptymfMGe+b1G2QYLykrEPXGcHrs8dS323LoJ1nPztCHvAHVrSWJF8
         iivw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=C33JsY0buR7cjD7CBceS9kppuES2twZoTJDCnksnyMc=;
        b=0LkVAKG2hrjbC/oiJZbEECE/NhOCj7Zs5w0gW7A9KBJL6EMYB2PniEhROvzQ1JK+ca
         pqYHiRHZlDkFQ1nR8V/sIXXir5xAfSaceMUWSV6IA00N3Op2/nUyzR0sGBbTCThS4HWK
         Awj7xVmfZWZ9dz/ALygpBc99w3dfIV9IM7rdl3OakzCI0+uOtW5q5+qpDPsEZCEjk9VS
         57B1jHH72icPKWQfGP5l0CQOmgNlXsKyH4D7s0XKTuwYLmVesEPlJbLNt8o61bGzELn6
         a3jXF7SKD8kQKl5bijmNIXp++r0M3lCxXyef9ih/2hQf1rtYLlZIhDV7bfZvRgatQ2PX
         7HUg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MkeBlqOT;
       spf=pass (google.com: domain of 3nqzcxqwkaeo4myu50x7mzqzs00sxq.o0y@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3NQzCXQwKAEo4myu50x7mzqzs00sxq.o0y@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=C33JsY0buR7cjD7CBceS9kppuES2twZoTJDCnksnyMc=;
        b=Wt5fsF/q0YfV+VGsas46xyNwiSkPcrA2t724SeQYtePs81fa70oQXr0+mlNBiw7aqG
         WVBOnVF3UXj8+xBDTrXk01WLHhA169l/cs/xyavGa5tTafWJh0snMGne70amcdxWNap7
         7wtDYErNyCCOFGIZWxOPTyn6TTriSBPdY9F2vQZ3afUAFaU3CRgmZdEfIwpK2zHsslvu
         qf9h+h8oLFffvcML0xNaLI0nBBzwJPlgz387HLQAByeb+f3LjaAlDK1VTIZ3U/AJho5e
         Q2HDcnFVzW6qb/fRsSDlFRwKPwVr0bVsCk8ldfjIMcZjNU36zuI6/feLuVT8+GC5VTvm
         o4ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=C33JsY0buR7cjD7CBceS9kppuES2twZoTJDCnksnyMc=;
        b=RcEO8N5PZWgqJD0G2HgEu3rP95N4SqdVNVvQ6wreH7hnD8YrdHEWW1C8ZGB+W+mgSD
         LUCWMRxdZYOpWmjESpNlZfygDvpkWLtVUQ04Xgd1ftYxaidsosBr4wff2eEAHK0+OoT0
         oKoPb8HzC8s6OMlpKxejXw1D2jxO3YU8Z0+x1rB3MRortnW8CmXRjYyZpMQf6ZrijHsD
         YhEe4JtI2Ig//YZ7NAbjrNAMp0yZ1kL6fprqbjRYtmLL1HLXvAayuy1RIWp8/tGie/jZ
         WYJpLSjHtBHuHLb0uXDR6dlKcPOXtfWtulTp88NpJy+tognt0JGWWLEdTsOO0OFXC8ah
         vC9A==
X-Gm-Message-State: APjAAAX1ZzzAKztv5Xp/wfG7M1/EOi03XSDl6McOxjbi89yjjRxxucc+
	OfHQeuaYLTGN5NkbWwXodjc=
X-Google-Smtp-Source: APXvYqzq7rnmCaRgYSlmFhAeBLbBo1vWPGQ+mT2vvNp7rYl+WmxMQrLCpwGcc+Fuxq/q/dfvsEjuig==
X-Received: by 2002:a92:7f0f:: with SMTP id a15mr36773960ild.275.1572998198944;
        Tue, 05 Nov 2019 15:56:38 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:9145:: with SMTP id y5ls36344ioq.11.gmail; Tue, 05 Nov
 2019 15:56:38 -0800 (PST)
X-Received: by 2002:a6b:908a:: with SMTP id s132mr31294499iod.118.1572998198474;
        Tue, 05 Nov 2019 15:56:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572998198; cv=none;
        d=google.com; s=arc-20160816;
        b=yII8vSZMUIhCsl5IS1fE9cSFcuzctFMEHCmZH2jk0qr4cioG9a2EEKoSmck5xcUBWE
         YSly3aM/QiwfQG4iRtAe5CWSZD8fGtazL+MKw3bPhJn7O+ubS9wGREfsKMZ9x7flyy6O
         QSzTiEvmUDgA0gOHGbZPfOQ8B5XLWKrzyGewomqLyi7ncV5KM3B9sfyj3ogqHQY4XCFB
         dEPbCwQQVBthMmZpjdATS+Z1etG/PGDXJVz5unS0qFLAw1CZcvfaRvXiFWhzyJu8XvHJ
         YXWzQZm3sDmUF/sX2DamXN0NsrEHuByx7iVkoVQfZkKFcSBsNRK64CdFjfCmVICgUCZj
         rrHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=m4cUlF+6BFA5FNFSy/SkP+A5WQosIpsKOuqRDiNS4Fs=;
        b=UWE+VK6RindlJeK0OXPXshayocJD42KVRAI2N1CKvfut8dvXvWrsdS0DpKRjVM/xEN
         7giaduueCN+MiP44sv/urwYvho/QGq6EIxvnUUm9/RQnaSgq84YE9j30qQ1nzErNt0OX
         ot0n+2z5V8dY7yFKQRn5uW1emGi4koSDFUTQesD2rQMrpsPXlm+lnzwAD4SKteoKGhLo
         kSDIdZDf3xIbHWO00JucIsQNYvrpE7Ibq0xnzx4xbls9qHXWgAdrSI3fdEFlaatV8//D
         XwIsL9vfNWhqJNbT+Ni3PN/c+47s3U3IAliZp9/qyw/qO+JS0F9BLGc7Ncgqsv9gMYJ2
         EcLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MkeBlqOT;
       spf=pass (google.com: domain of 3nqzcxqwkaeo4myu50x7mzqzs00sxq.o0y@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3NQzCXQwKAEo4myu50x7mzqzs00sxq.o0y@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com. [2607:f8b0:4864:20::44a])
        by gmr-mx.google.com with ESMTPS id z130si1039046iof.5.2019.11.05.15.56.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Nov 2019 15:56:38 -0800 (PST)
Received-SPF: pass (google.com: domain of 3nqzcxqwkaeo4myu50x7mzqzs00sxq.o0y@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) client-ip=2607:f8b0:4864:20::44a;
Received: by mail-pf1-x44a.google.com with SMTP id i11so11161341pfk.9
        for <clang-built-linux@googlegroups.com>; Tue, 05 Nov 2019 15:56:38 -0800 (PST)
X-Received: by 2002:a63:c40e:: with SMTP id h14mr39330366pgd.254.1572998197596;
 Tue, 05 Nov 2019 15:56:37 -0800 (PST)
Date: Tue,  5 Nov 2019 15:56:02 -0800
In-Reply-To: <20191105235608.107702-1-samitolvanen@google.com>
Message-Id: <20191105235608.107702-9-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191105235608.107702-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
Subject: [PATCH v5 08/14] arm64: disable function graph tracing with SCS
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <maz@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=MkeBlqOT;       spf=pass
 (google.com: domain of 3nqzcxqwkaeo4myu50x7mzqzs00sxq.o0y@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3NQzCXQwKAEo4myu50x7mzqzs00sxq.o0y@flex--samitolvanen.bounces.google.com;
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
infrastructure), for now let's disable the graph tracer when SCS is
enabled.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 arch/arm64/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 3f047afb982c..8cda176dad9a 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -148,7 +148,7 @@ config ARM64
 	select HAVE_FTRACE_MCOUNT_RECORD
 	select HAVE_FUNCTION_TRACER
 	select HAVE_FUNCTION_ERROR_INJECTION
-	select HAVE_FUNCTION_GRAPH_TRACER
+	select HAVE_FUNCTION_GRAPH_TRACER if !SHADOW_CALL_STACK
 	select HAVE_GCC_PLUGINS
 	select HAVE_HW_BREAKPOINT if PERF_EVENTS
 	select HAVE_IRQ_TIME_ACCOUNTING
-- 
2.24.0.rc1.363.gb1bccd3e3d-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191105235608.107702-9-samitolvanen%40google.com.
