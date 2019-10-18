Return-Path: <clang-built-linux+bncBCU73AEHRQBBBIHBU7WQKGQEJ5U425Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F441DCC2C
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 19:04:34 +0200 (CEST)
Received: by mail-io1-xd3d.google.com with SMTP id o11sf9176947iop.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 10:04:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571418273; cv=pass;
        d=google.com; s=arc-20160816;
        b=SN9ZdHKkJg41Zcfxd8JrubyVqh0btUaUsIMVHmKOkMFRJilRAZn1lquGOeoWLToyyN
         WxDOrMTO+8Pe7gOjpqepQpps1rCTfH2waB112/2dPcr01X1F3JuwnH9bgt9E2tcO8TIC
         M2H0FRccFvbEdLgfygwRc3D9cRxFwZYF5q/XVrCEWzC0jysTN0tFO/MTJmunnM7nAQRP
         aphCtUM38CVTyWXChz2eO7USbBSqRuest/2QkEH1Lc0kOUZZHyzma/689nj0EDQ8rrS+
         CfBNk5sXNdA0NwmuCTMaKaAzyWj0+Sfl0FOiHMRvmrlur2haBB7o/UF5ya+hS2fI3BUV
         QL3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=bWwAksLj2TlRiFIqot7nxAhXis/NeZ3B4HH7i9Fk4ZE=;
        b=tZwm5n8dogzWYVrz6zy3VoKwAZqiyY1O295FHAValBypK0Lb2dFRxnsxupXd/M6cKk
         Hc4fufG1X3alOKVGCpEwIg7AGTcMTGPs3V7Qvgdab5wqd2f26L6RAqRZQQ0opeL13B3c
         ++VAjD/RBs7u5zSr+iIU9ffLrqw7Wuh0Apk/FPWgijUkiIJrM3u+PJKkOS2ZmlIcnmvI
         gS6aegIoj1G8HlSKaAK/QzY3BxNwpxhH7oB7JiwfqkEhVTW37zMPbdm+CCUG0wnXBECV
         pn0QcFyjDfcWIMFJAh9qp2AW7YqAce22ABPPZ/ITDH6/vwXGSymoXHcAi1dabr3679If
         UyHw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=7xbn=yl=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=7xBn=YL=goodmis.org=rostedt@kernel.org"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bWwAksLj2TlRiFIqot7nxAhXis/NeZ3B4HH7i9Fk4ZE=;
        b=MPnRZEsQLHiFWAOu2KIEqsnvHt0tD7UT3eqqpG114LsgTseYW4nMES06hvf85HWgeE
         dzjf6OLyipyeqecyyGQxYnjj4GBrvFRJH0XXhKADZdqJA2duTnWiYNEcn0xpkH24AqMm
         b/QbP50nqljdArXRlCyfJnhaP+AMto/PSPhQG2M+FJXXFnCSxCDNwS68FXbXX7+jifFA
         MlMF6qVJCGW8SGugXFRPcVZR35SIw+pvGP8mx4F7X2jUZpSK/4lOFktcsmT/lz0tYLyy
         BSI6pL+ZMDVhHuWcuTgs5EE02Gs7VkYcrbstNwjB0Fg7egaE8EemwlZ1hNn/psCTC4Ph
         vQWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bWwAksLj2TlRiFIqot7nxAhXis/NeZ3B4HH7i9Fk4ZE=;
        b=ADDA8ABRj5ZqVViqk5o24wGrwieGFixyTkPfEwVovdEVb4O0dejrnxB6Zph2Wpv0jN
         aatgF2vIEXf73+bkLSnhUN8OPf+qzgwOP31ZXH+OwRhGJwGeEK8c76H35QPlohNlqc1E
         BbVFI20DLg/kVDMTbMzXCe/IXBPudRtbB3LCFAwm+lDLYrpz7PdfMjGZhJ6ehcL1nsCN
         k/pZlBqYTX/ouC1ODsZEvGp1v5sLYIMGobFSTQjwQ8fwtUZFsofEzTMGCr94WjCaihwI
         x72M76sSj6nRyf+3dxiQhXjzq9QGbyETqgo7kRv1p9wYW1vaTvR+pxJLhy6qg82n6MoE
         2TzA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXL3zjAVKKRAvAKhDnTLCsIed+tiiAysWHCrJZzJXq9awLTTU/2
	5D2mkbxTh2B9yMu0DMArvkc=
X-Google-Smtp-Source: APXvYqza0RPReHcEfygxsa7OtRJ5JGdFENozgQFGXghtEzNBGVlFlWz9bUFt+4WsxpO5twP4a22s+w==
X-Received: by 2002:a02:e48:: with SMTP id 69mr10236780jae.17.1571418272818;
        Fri, 18 Oct 2019 10:04:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:b9c4:: with SMTP id j187ls1540932iof.5.gmail; Fri, 18
 Oct 2019 10:04:32 -0700 (PDT)
X-Received: by 2002:a5d:9c4b:: with SMTP id 11mr9686101iof.240.1571418272465;
        Fri, 18 Oct 2019 10:04:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571418272; cv=none;
        d=google.com; s=arc-20160816;
        b=rTior0TUhBtb+dkICPx9StFMNbzes8VBzIGB56U/kJ9MUStsk/KnwPqtK45Lca9X39
         SPhSaZqiHfCglcJX4obV1Qw+IFzUiHVGG50oYsC5UxAt4DExCYXLTjbhplcxIIR+gpfv
         AycxaNnqaeogXTOkOvDdYICse1QzIRrgEr5YhGhjD/1bJBlywqryjvAXKUp2ij8QDIa8
         ckxpNN27Pczw0j5gtdrwg3lOpjLd3Cq2pFSToM4oh5QONtF8DomyRurSh80bdQTR7xuZ
         XExNrAtQORepssRU9CM4H00g+f2SOcnj7+VaN/QDM30m5VucR8N/RVUkoXVpmDbawAFq
         bF7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date;
        bh=XQCGPf3acDW7TErdIHsn9zznPSFYi8TGFkpxCV6dihA=;
        b=NwPtFm9BYiAeah+OEuC5CeIMkYQDBdkwuN3FkudnV4Qd204i3jA4c+z4RbOk/tCdco
         Ro935r/CU6LWDj7/Z7Eclpi0Db+mstIDz84gakrEQMP6myO/86NieoeUuxJEKij0RB0q
         IJJ22QsKJJOL5sZ93K479IyfhADPvrwrfqN5dE77ILl275SmyxrOSQ0NITc4qFAlsIYK
         brPsbx/Ke2RASahy7oiBrnvkz4qwg/77YCnMgOLgpRuhOCbKqVM5/rHT41emyGYS55mv
         Z0HLi4pMGWMazToBlK0v9q8BpyVar+hXa4GvMlomC2d4nPWiJGaWS4AgxXfMz9wiDbbZ
         U/Mg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=7xbn=yl=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=7xBn=YL=goodmis.org=rostedt@kernel.org"
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f11si340175iok.4.2019.10.18.10.04.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 18 Oct 2019 10:04:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=7xbn=yl=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com [66.24.58.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D16F12064A;
	Fri, 18 Oct 2019 17:04:30 +0000 (UTC)
Date: Fri, 18 Oct 2019 13:04:29 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas
 <catalin.marinas@arm.com>, Ard Biesheuvel <ard.biesheuvel@linaro.org>, Dave
 Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, Laura
 Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, Nick
 Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com,
 kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Masami Hiramatsu <mhiramat@kernel.org>
Subject: Re: [PATCH 11/18] kprobes: disable kretprobes with SCS
Message-ID: <20191018130429.5df61f6b@gandalf.local.home>
In-Reply-To: <20191018161033.261971-12-samitolvanen@google.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
	<20191018161033.261971-12-samitolvanen@google.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: rostedt@goodmis.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of srs0=7xbn=yl=goodmis.org=rostedt@kernel.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=7xBn=YL=goodmis.org=rostedt@kernel.org"
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


[ Added Masami ]

On Fri, 18 Oct 2019 09:10:26 -0700
Sami Tolvanen <samitolvanen@google.com> wrote:

> With CONFIG_KRETPROBES, function return addresses are modified to
> redirect control flow to kretprobe_trampoline. This is incompatible with
> return address protection.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> ---
>  arch/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/Kconfig b/arch/Kconfig
> index a222adda8130..4646e3b34925 100644
> --- a/arch/Kconfig
> +++ b/arch/Kconfig
> @@ -171,7 +171,7 @@ config ARCH_USE_BUILTIN_BSWAP
>  
>  config KRETPROBES
>  	def_bool y
> -	depends on KPROBES && HAVE_KRETPROBES
> +	depends on KPROBES && HAVE_KRETPROBES && ROP_PROTECTION_NONE

Again, this belongs in the arch code.

-- Steve

>  
>  config USER_RETURN_NOTIFIER
>  	bool


diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 41a9b4257b72..65557d7e6b5e 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -166,7 +166,7 @@ config ARM64
 	select HAVE_STACKPROTECTOR
 	select HAVE_SYSCALL_TRACEPOINTS
 	select HAVE_KPROBES
-	select HAVE_KRETPROBES
+	select HAVE_KRETPROBES if ROP_PROTECTION_NONE
 	select HAVE_GENERIC_VDSO
 	select IOMMU_DMA if IOMMU_SUPPORT
 	select IRQ_DOMAIN

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191018130429.5df61f6b%40gandalf.local.home.
