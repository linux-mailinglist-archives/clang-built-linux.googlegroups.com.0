Return-Path: <clang-built-linux+bncBDV37XP3XYDRBFPXV7VAKGQEJ7JBAKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id A4E6F85FEB
	for <lists+clang-built-linux@lfdr.de>; Thu,  8 Aug 2019 12:38:14 +0200 (CEST)
Received: by mail-lj1-x240.google.com with SMTP id h7sf18611739ljk.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Aug 2019 03:38:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565260694; cv=pass;
        d=google.com; s=arc-20160816;
        b=vIFcJLb2gkyFFk3YgEakUktv5ViZUr5DRfSjqsVYK5HKi+IbEntphWXDoEQHqXqFms
         QeVQt+FWwSyCc7X1s3CrAYdvYqfJvQ81lOFfuO5CneSKW1xyU1u0scKWpx/XpT2H8U2O
         LZtN226y10DFrxXheXY8uKDCvzcA/m1OUBIa6h+0Z3UOwTIfcI5EDlBDGpt7lp8T+U03
         rlhjumAFwOE8ON6ZToMb7yScQmux6dBoKSgVEOCzVvqCDbVCOhEoi/fOpuRYWYMQE6qN
         tWXCSd5COmfmGPq63M2IQfeULcd76j9SS8gOlyigdmNZLGoUMcngfwml7aLJ4eXwoPcV
         2lzw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=P9zUWIH+9b2XryQ30dx/dANInHCl4in26cdP4GSI51A=;
        b=scPnpnb8SP/Eopws/zh2y5YXQSzVX9ErC8eotDR0LDI/tWx3msWwRV4QTH78wIimVR
         aSM9z4a0/rnpCJCqBnMFiG/TxdjUw+jb5VNuJeytopc/z3ByMqoITPmiT/veQs7j+28x
         mAWgw9Vf6cJYZUaLG78QhSl8HKcq4/29sGwCNAosULYBVUMwisrB/WILZaPVY3qROMcD
         ZGxrkiT4VGvjY+J5wXziUStnwsKjUzpGDjm5r1TDnuh+HEnxBiK4iOtfGWJ04CGk21oH
         Kd+q98it1lpKO4U+XyYxF1BQK8QBeHFQTu9jCWMH5DD8pdIbKaq/sVSj8woK9JLZ8X0/
         NKwg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=P9zUWIH+9b2XryQ30dx/dANInHCl4in26cdP4GSI51A=;
        b=Sln9hTLhbPLVc9WK7lIIgvb/ecSAl7KMyk6h60bisnPbLSWLF+Oh+UHhgNlEOrD/br
         jMjZ/+wpHBFxIIwCRCkNkwZXcQxwRHSf58JzUeJq45OrMLUCpZ99jrJrKa35zBDkT2dK
         fVQIaBEV+fcCKQ5gegJoI7lQXCC1GVa11Vqa9vtfTHUmiVY0VKaT4F564JAvptTr/5PW
         PowESaOtf3W4DzyTgEIVMC3W5GCTZw4wUQfQt3kxkCZbf+LiS5sfBan3t3gEWJf4wYQM
         jt7fDUKocPy4fLm/SSP4GqoH0rQxjJRCIbxdHqdtzB1Ehqe5vGxRnSTApJKP8Grytu39
         GR5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=P9zUWIH+9b2XryQ30dx/dANInHCl4in26cdP4GSI51A=;
        b=llbh4/6peQYZTqlGAjFnAzhSuVtEykstZLYAcNPKrhacbznaBT/jxSjGRvxiPQUpdv
         9XFrNnnoshFq72NEU6+TfygFUNLcelFH3uhRFlzcO+9KtAFARdGNGScWGaQ9bYxO8lad
         oyjWfPdq7xXznfg3Et0tydSWdhHH2uvbLC7huHr7EF9VLiBiocOGwfuxeYzAdHyv2XbN
         6IB9uVpJAXkd4brzBCPXNTdrL23miEVxQip0INYVx9CwXzM6iwRvvsUFwc3WzvMWiadk
         ue3na/CBGUOmXtDj5hJ/jiEfXzKE/Bs9Aja5DEYVGPmDo+QPpR2niCXe3EceRkbMTgbe
         PQAw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW7mJm9XX2EhFNTwht9j45gVPNNTL0Y/UzPGZxjL35a/cMWopAO
	E7uXK1R5b70XBFPUqbhpyYk=
X-Google-Smtp-Source: APXvYqwGub3mnJZdmOcqDyEwJeLmX95p2E2n2w34G10psN28+bT61n8tOkjAUXSwGKA9VWrFJeJAfw==
X-Received: by 2002:a19:6d02:: with SMTP id i2mr8646203lfc.191.1565260694156;
        Thu, 08 Aug 2019 03:38:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9d0c:: with SMTP id t12ls10619030lji.12.gmail; Thu, 08
 Aug 2019 03:38:13 -0700 (PDT)
X-Received: by 2002:a2e:9950:: with SMTP id r16mr8003403ljj.173.1565260693158;
        Thu, 08 Aug 2019 03:38:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565260693; cv=none;
        d=google.com; s=arc-20160816;
        b=uUJggV+6Yqc3iY1MopwgcLpFFA10A3s+MkW+3yyPtR1LCKCMsPKiyl3vq2tuGVw9Jo
         ayOvRdmcRYxQFYYALrEpokdg5/UudwTxMit1C1I70v7P+egLEBH+CXq/SkXW3OjFmMVh
         hkJSJ+FudAnsDj5SWh9jmKHdDt8uHWNGplCxSFF5vVuWSEi5K8crj5cVp6SsIMk1QZ5n
         NWoKKQ/zyQkmddwsEw5/D+kWEgfdiebNAZFkivVKnoGBeTVtTn7q9tErJYMpMCWPFyoi
         jCGKfZOeZTxWas9l94VwD37mH+3zQHwK+KjAowcknhalaJeDHBDstvv+wlx/12QR0aOK
         0bdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=7dCNm4phfF0TCgIhQVHd3wVNsgWgWRN4rx3Ih+CvYTE=;
        b=FDjLaajNiHBMNE06IiU5ttP4yCLrxLqx2nb3ejPHjWXukuYtUEJmOa/MynnaxzPmdj
         BFapPP8oSdbQXzbeHeXxRZx4bBDFmuuVqo7e5JDpRSgEMvh3FXJeOo/pXelWmiPTKWy8
         TmGwjbIJyw/MwgLLQPEGUDT9Ky4V7E8g8ntGrfE5QOkHc0pi3xN6Yn1IcGExty/dHu+P
         m0EZGZGva/Qi34QUkMNzVReute4vye9PYLRvYNktZhrB++c6jhP9FhwNu38DornEdVy1
         c/9yjtpdQsZWldcZIVloMnBszJSOw9IponzxFBSsAO3uoMtGWX/+sO+U77u5nwqwWX/C
         EPHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id s14si5813190ljg.4.2019.08.08.03.38.12
        for <clang-built-linux@googlegroups.com>;
        Thu, 08 Aug 2019 03:38:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C465028;
	Thu,  8 Aug 2019 03:38:11 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D9D2F3F694;
	Thu,  8 Aug 2019 03:38:10 -0700 (PDT)
Date: Thu, 8 Aug 2019 11:38:08 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Qian Cai <cai@lca.pw>
Cc: will@kernel.org, catalin.marinas@arm.com,
	linux-arm-kernel@lists.infradead.org,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64/cache: silence -Woverride-init warnings
Message-ID: <20190808103808.GC46901@lakrids.cambridge.arm.com>
References: <20190808032916.879-1-cai@lca.pw>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190808032916.879-1-cai@lca.pw>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-Original-Sender: mark.rutland@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=mark.rutland@arm.com
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

On Wed, Aug 07, 2019 at 11:29:16PM -0400, Qian Cai wrote:
> The commit 155433cb365e ("arm64: cache: Remove support for ASID-tagged
> VIVT I-caches") introduced some compiation warnings from GCC (and
> Clang) with -Winitializer-overrides),
> 
> arch/arm64/kernel/cpuinfo.c:38:26: warning: initialized field
> overwritten [-Woverride-init]
> [ICACHE_POLICY_VIPT]  = "VIPT",
>                         ^~~~~~
> arch/arm64/kernel/cpuinfo.c:38:26: note: (near initialization for
> 'icache_policy_str[2]')
> arch/arm64/kernel/cpuinfo.c:39:26: warning: initialized field
> overwritten [-Woverride-init]
> [ICACHE_POLICY_PIPT]  = "PIPT",
>                         ^~~~~~
> arch/arm64/kernel/cpuinfo.c:39:26: note: (near initialization for
> 'icache_policy_str[3]')
> arch/arm64/kernel/cpuinfo.c:40:27: warning: initialized field
> overwritten [-Woverride-init]
> [ICACHE_POLICY_VPIPT]  = "VPIPT",
>                          ^~~~~~~
> arch/arm64/kernel/cpuinfo.c:40:27: note: (near initialization for
> 'icache_policy_str[0]')
> 
> because it initializes icache_policy_str[0 ... 3] twice. Since
> arm64 developers are keen to keep the style of initializing a static
> array with a non-zero pattern first, just disable those warnings for
> both GCC and Clang of this file.
> 
> Fixes: 155433cb365e ("arm64: cache: Remove support for ASID-tagged VIVT I-caches")
> Signed-off-by: Qian Cai <cai@lca.pw>

This is _not_ a fix, and should not require backporting to stable trees.

What about all the other instances that we have in mainline?

I really don't think that we need to go down this road; we're just going
to end up adding this to every file that happens to include a header
using this scheme...

Please just turn this off by default for clang.

If we want to enable this, we need a mechanism to permit overridable
assignments as we use range initializers for.

Thanks,
Mark.

> ---
>  arch/arm64/kernel/Makefile | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/arch/arm64/kernel/Makefile b/arch/arm64/kernel/Makefile
> index 478491f07b4f..397ed5f7be1e 100644
> --- a/arch/arm64/kernel/Makefile
> +++ b/arch/arm64/kernel/Makefile
> @@ -11,6 +11,9 @@ CFLAGS_REMOVE_ftrace.o = $(CC_FLAGS_FTRACE)
>  CFLAGS_REMOVE_insn.o = $(CC_FLAGS_FTRACE)
>  CFLAGS_REMOVE_return_address.o = $(CC_FLAGS_FTRACE)
>  
> +CFLAGS_cpuinfo.o += $(call cc-disable-warning, override-init)
> +CFLAGS_cpuinfo.o += $(call cc-disable-warning, initializer-overrides)
> +
>  # Object file lists.
>  obj-y			:= debug-monitors.o entry.o irq.o fpsimd.o		\
>  			   entry-fpsimd.o process.o ptrace.o setup.o signal.o	\
> -- 
> 2.20.1 (Apple Git-117)
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190808103808.GC46901%40lakrids.cambridge.arm.com.
