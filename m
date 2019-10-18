Return-Path: <clang-built-linux+bncBCU73AEHRQBBB267U7WQKGQE3PGDB4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3f.google.com (mail-vk1-xa3f.google.com [IPv6:2607:f8b0:4864:20::a3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F18CDCC1D
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 19:01:32 +0200 (CEST)
Received: by mail-vk1-xa3f.google.com with SMTP id w1sf2626958vkd.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 10:01:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571418091; cv=pass;
        d=google.com; s=arc-20160816;
        b=ajjTPvcGxCMsT76oHpiN7hulMIZobxjzhonHM3Kd6ogOfRYKqRrBYTH9g5RJ82A0mP
         pY0OfebMY3CkdUL8DwEGGAhJIwDSBoSbMdpNXV7MC7Rm2L39fRrA+vB1k866eo8S92Mb
         /aLZZ3sEablJYQFf6G02YW3I12lLFOmb3omIer8+9tYXwwuk/yEQR/cFGHMhMGdmxWjd
         Xrp2N647SQ6MU75NNd4BMxugahSRMk/QvKMmKY+NjgUwNuV3fUD49raNlnnjUCU9qRxc
         42chKuQnaOTXBfISIAaMIxqhEKs0qfSqeeyWlluI1vZuhIPLjofB859qnyyMvRHux8jI
         AKpw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=k6uqMBYNwK4+XODABQCl72FutKXqv0ahgwHrl175hpk=;
        b=yFByx0LOZuvcs9lG6fmQrER3Vd2/AZBpZsmvcWF/Cdkc7ddGcAGam0EPBx4OWEnWaU
         cEqKH6Qm4A7vs1f8ehZj4Iny1X5zLo4I3bl7LJVCrKjz49VdtaTjSK6GbM5IeSwok5sf
         oMrWKBg45Bhqvomxnubj4ZEOPBeKdrGDdB28CwUDE2r2G1X0TPvcDPr9lu5sxGbhaLfZ
         1QkT17x+J93z6wg76WUUZeJ49HwCm3+sbaC5WFZ4n9J2AEbRlDnVTMXirxMgHt0CcmsO
         +Q6W8OrCCuUa4sXM1cDJkSIS5u4+PIRx98IVuHhCh2tgfWjnXOwhX6h69kzs3EhP0OJd
         9M1w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=7xbn=yl=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=7xBn=YL=goodmis.org=rostedt@kernel.org"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k6uqMBYNwK4+XODABQCl72FutKXqv0ahgwHrl175hpk=;
        b=ntTZu9pSgaGhQfyRrbgM7nh1+mWcej3kb04H0qoehI0dR3IQfj0Yrr+pmSC8U+6BOr
         Fl1TqBZbGCgeoCQS9MA7+Brisw804LpEnZRgSp73/bSesnopN/R7YIWB/UiEAwL+PjcB
         EBKIhcEdaLrY5a+AEpuy4WAkt1AOjaeBQCIGD7yZKH6w4zkX6E5hKJYxp7JoAUwxJef9
         BUZhSMBJvOezvoHejBYyY6w5887SJvfGpzfTU2MGfsULCXLMacXZQD/KaQX663Q2oM8K
         78oI02PZUmp2mCDCi/NiONBHXgUbxodRTxX4AO3IBVnSgas7zytYaOe4edhb2fTjuvF6
         p47A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k6uqMBYNwK4+XODABQCl72FutKXqv0ahgwHrl175hpk=;
        b=nc+14Qv26cQzoPtNm2t0vodd7zqTmHszU8FACaYEG7A0wFP5v6fbC/tIkkRNr507QM
         FWaGTSjKefNwox7jWJQJeHUPfsdQSJayJCLET0nlx7qZg3OvkKFPUyq8uTkELhkpm0Wi
         xtOWC1PLn9/J6LO05hr7kVRxvGlFp4erIEZ6+vRNEnzjT3KRq7IUrUELuppdCysxR1bW
         P1Vc22/VYKhrtGwLx8aS5yA13Nel28Eer6RiqnO4+NBnfo90Z2YNrGbGm7TFwia0w5kg
         eVNMUMrgBRbskqXeT2pn0oMldlQ6xWsmwIANeb2BvleIYKx+tPEaUaB7y9S6vJcCiyhp
         YWAg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWe/2PMzrKUnoNEmbYcMxxG4oVqB2OSV5yGV7uPpUkpcr5Ul1s9
	zRfgJV2/GU9Z+Lk2UevpPc8=
X-Google-Smtp-Source: APXvYqwBhw02WULsq4HQcB/g+369zF1u9T1WnTbFX/iPRaYcKRAS3gePGfJhSllrGowyYE7XDzqF4g==
X-Received: by 2002:a1f:a8c8:: with SMTP id r191mr6029499vke.35.1571418091563;
        Fri, 18 Oct 2019 10:01:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:2b2:: with SMTP id 47ls352338uah.9.gmail; Fri, 18 Oct
 2019 10:01:31 -0700 (PDT)
X-Received: by 2002:ab0:59a7:: with SMTP id g36mr6080113uad.54.1571418091231;
        Fri, 18 Oct 2019 10:01:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571418091; cv=none;
        d=google.com; s=arc-20160816;
        b=CP7Hdsh/XCKce8z/oAyABbKSRF0Nt/Ijd2kCn5KEF6IpZlJ2iFWiNaksihx9FV/sZ9
         3Igkt2VfZQEmJFBlCYgdw+arVcAMrKfxFahB7ZkYtM1syI/c+rtM3/DQ81p6MDuPGKAt
         22oBnbr9UdnW8mUQn40qpWu3hoAl60rrPIWIwFPBuLZpkqGUsUGZyQyXo2NmRDiCC9/R
         5C64+7+stagpsE3/Zcoo91D5nbKn7SoXHS0OgTCos0Zq649269EYwcUM2kYSUDUff4va
         z3rrnt9UiQe86IYLKTSerM4PvfnTwvkzvipKbxrBfZpBndHer8qW+W9SAgy7QUlCNFGS
         o/EQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date;
        bh=Hx2SzILeXgiqO3pLwp/64t8irHIiTsmo94AMK/QfRvw=;
        b=GzBKjrr5UNgwCHWDADBKT9o0DpA6r6gpJUNmqyHclmc7TOsVL/mVNCD9wrePyELs2c
         LTiUQ8II5arfQMPGcFH1rEgbiiErvL7fP6D4bRFE+qLs2DUpAGn3tMVpfQLxBrCCrjNA
         ZVw0LOX1uSF1gmAzvOUt1NSFY0oeKmWu/moMylbXAipnMPzeQjw9qHTsBsAej34I7E4O
         thub1a7H9aIW0aO+vgcLYC84/Tf5nhZrDISmNbn587fS8ATR2zgUsv2ljE4N9WahiMXM
         UqDBXXWUjRDyWBaO18GL+U9pHM2asbN5lrpOozGAcQcoX7leAVCPajU86mGDOhmLI++j
         txrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=7xbn=yl=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=7xBn=YL=goodmis.org=rostedt@kernel.org"
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u196si411483vkb.1.2019.10.18.10.01.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 18 Oct 2019 10:01:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=7xbn=yl=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com [66.24.58.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 1DA092064A;
	Fri, 18 Oct 2019 17:01:29 +0000 (UTC)
Date: Fri, 18 Oct 2019 13:01:27 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas
 <catalin.marinas@arm.com>, Ard Biesheuvel <ard.biesheuvel@linaro.org>, Dave
 Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, Laura
 Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, Nick
 Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com,
 kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 09/18] trace: disable function graph tracing with SCS
Message-ID: <20191018130127.23746ff2@gandalf.local.home>
In-Reply-To: <20191018161033.261971-10-samitolvanen@google.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
	<20191018161033.261971-10-samitolvanen@google.com>
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

On Fri, 18 Oct 2019 09:10:24 -0700
Sami Tolvanen <samitolvanen@google.com> wrote:

> With CONFIG_FUNCTION_GRAPH_TRACER, function return addresses are
> modified in ftrace_graph_caller and prepare_ftrace_return to redirect
> control flow to ftrace_return_to_handler. This is incompatible with
> return address protection.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> ---
>  kernel/trace/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/kernel/trace/Kconfig b/kernel/trace/Kconfig
> index e08527f50d2a..b7e5e3bfa0f4 100644
> --- a/kernel/trace/Kconfig
> +++ b/kernel/trace/Kconfig
> @@ -161,6 +161,7 @@ config FUNCTION_GRAPH_TRACER
>  	depends on HAVE_FUNCTION_GRAPH_TRACER
>  	depends on FUNCTION_TRACER
>  	depends on !X86_32 || !CC_OPTIMIZE_FOR_SIZE
> +	depends on ROP_PROTECTION_NONE

NAK, Put this in the arch code.

>  	default y
>  	help
>  	  Enable the kernel to trace a function at both its return

-- Steve


diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 41a9b4257b72..d68339987604 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -149,7 +149,7 @@ config ARM64
 	select HAVE_FTRACE_MCOUNT_RECORD
 	select HAVE_FUNCTION_TRACER
 	select HAVE_FUNCTION_ERROR_INJECTION
-	select HAVE_FUNCTION_GRAPH_TRACER
+	select HAVE_FUNCTION_GRAPH_TRACER if ROP_PROTECTION_NONE
 	select HAVE_GCC_PLUGINS
 	select HAVE_HW_BREAKPOINT if PERF_EVENTS
 	select HAVE_IRQ_TIME_ACCOUNTING

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191018130127.23746ff2%40gandalf.local.home.
