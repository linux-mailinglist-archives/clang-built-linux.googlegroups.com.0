Return-Path: <clang-built-linux+bncBDDL3KWR4EBRBC7CV74QKGQETTP7QLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id D6E6523DA2E
	for <lists+clang-built-linux@lfdr.de>; Thu,  6 Aug 2020 14:01:16 +0200 (CEST)
Received: by mail-pg1-x53d.google.com with SMTP id z16sf33416617pgh.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 06 Aug 2020 05:01:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596715275; cv=pass;
        d=google.com; s=arc-20160816;
        b=hu+Z/KA8vy7FHGliKHrhSNsVPO9Fe6ltY0W/4/A30Pv7aqPzl0vUu5j3UvD3kTBewQ
         fLp1nQxZSlnLfzo2kE1SVk4nwu52/LhfByXQWydhJQeHEb1XmMsQM2rcuxCIg5+3P69f
         qYWRWsNZrRczrxmGkoSWrzky5eK5t1PDaYF/ufwZWaO65erRTQFPJzw5uXx5slRQ4uhy
         lZfIptPV7P3Ch/yU1Ay3i/DwXDwZDp6kbAYQM8Xq3ILo+IssUnxSAf+BT+1XH2pa6ydW
         fr+5OyMYgbOg63mkCgrDv3Nyb6vOoi/3AnCg0Me07Zl/nG+Nq7GRw156CFGp2ucbyaCu
         +5jQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=fYd5DfPMJDEV5l+dDW8pxQwb41wAzZvv0q96SDFE3uA=;
        b=UGww6UhjFrcatr/X/y0EWxjjrJrOD5nIFii/+Cde7wGKTIjYU64u9nc6b+E29kr2gD
         QQ59+uCoNRV6AtwamH3UPb9EuOUlSZg4b90Gfp/iUslKnM6g99edAu4WiNfe+ZBGZW6z
         IaGPPmI9o2BjBfzYBPY/xkR4PDFYNASqHptGAXASls7owx0c46B1c+mG9wHE9Rp8UctP
         rh1F2pN79FhqMsYdp1frn4EMT/c7F11BRzN3kM5MCslGHP+GqrPykfSFMQhmGp6fw6b0
         I4H7ulKFsZQqG2ACyjXmQui18qarziXh7wp+YLnDfzUxcPoxEMotDe1PY++2Cw5z4Fa+
         zY0g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=catalin.marinas@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fYd5DfPMJDEV5l+dDW8pxQwb41wAzZvv0q96SDFE3uA=;
        b=Fq9SxEvtiuk/1iEz9Bbj8LknVA0KpzUb7uGJ5ib586V1d1xqNQHQTEKXOfqTxwD2E+
         LUfRD4xVGw24HGUaEqT5DQDzfy/ePggSOSsLNoiKH+bY7yu44nFMhGbwfzHu6JWCqcfW
         3MtmdhAdrEzEbUviO6yTi8ud315cTzUPWr/fkdrM/zbRsTweAfGj6ZZKIIB00T9eFstr
         WPS22YOdFZLza3eQHvNiN73VU6XbiH74sd01EzEqoSjdtGu9ga4u0n9hyFj0USWWM2Wm
         7jTVYoZ5xMmxGKoQOKSzBg6YTHfffJ8zVpUUb1BSVbj+62s6KsupGrBfne3THMpmcMun
         EW3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=fYd5DfPMJDEV5l+dDW8pxQwb41wAzZvv0q96SDFE3uA=;
        b=boWBxrdNQQnQfh1YfVpryBUdBtYW5sPmMo7ClFAZTZ31aIOs0JiNKkZWfEZ3sczB2x
         wLhi8CH2T9Jlaz0SVvDjjkJHdc8tetDUS+hwBKLc4BZ/KVX60Qt/GeZhqD9WU05TXX1p
         9TVJ8r4cI06awV48Xu2gGwgAo3iW4AziWmJQqsK6epQPsm9XQDSe5EK5niIACrabGDjP
         23pK+R+j4SmCLTk11/ycDF27JgLvRu9ByS+lpW7FksobEORGdoQ9eKIE1sNfPk7rvd2N
         RaZIEzm94mZ7L9+1JGvFraZZYUCubcT+nQOlPnfFySD+ofDvuoTru6c1jY1jlaA1DIo0
         KUiw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Qhn7l0tu+vFXdoDBoZyonrlIozmw1SQaO//+jlMiJISmXKgDb
	CR5bmf5zOiK4cB2SSYk0hq4=
X-Google-Smtp-Source: ABdhPJy0pUoqlTz8FgxjAJbnS00JHzlw+BQlNZOHLDIEKzUGB8Eszvv2SPiruCwhXku1Vpce+6kL9A==
X-Received: by 2002:a05:6a00:1515:: with SMTP id q21mr7958432pfu.126.1596715275228;
        Thu, 06 Aug 2020 05:01:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:358b:: with SMTP id mm11ls2311558pjb.2.gmail; Thu,
 06 Aug 2020 05:01:14 -0700 (PDT)
X-Received: by 2002:a17:90a:b107:: with SMTP id z7mr8365604pjq.4.1596715274580;
        Thu, 06 Aug 2020 05:01:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596715274; cv=none;
        d=google.com; s=arc-20160816;
        b=FgFH8TsET9OFOPfC8KHq5hoy03XC1rHLfWa6N1R2GRtHwk8xbbS8lrvRpdKUmW1PYF
         AmHdgSsvMEERSL0Pu/v3WXki20RkCnbaYgLkVrFZHCQ13Y5rL5CkHbZo/kJbE+nn5cAY
         MyzwI630gtUl/SJ+VO4F+JRxI/ai5N2vmeN1fEQ3keyO+rVIP3WkJYulsQ7aUzl8onuu
         2vHCMVzidt2gwYG5GVMWbscaeO9mrd50Oiu3y4WwT+/YsIsE/Zl7zd0NWHhdzsnaYrlB
         xk0v6nzuH43/McrBXaVZHXQlokviA6i7z4c/97BEfhqbQMnFa5DqJizQe9QsJGXLSUfm
         w0OA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=TieUErr7jXEAKZP6QYPxuzpjZJBSeXZWlKQDS6A07kk=;
        b=z+oe+tfFt4WzK9bEMYCjHwmsI5+P3b24VY1UWYPz9FYqpKlkh48VAY9CLf9byzxDNJ
         FhQh/8lr0L7LRr30iILotACYGnCZNTnbJj0nUU2SyqedvuXaZDhy8TIcQd7N0lggOjby
         1/VnlEw4ykylcSU5YywgO4cz1b2M0WEpaFnoDeElp9+x4Tne+Ed4pnY6acKHSWS9v5mE
         51eRlwLVVcNUcJvDz/23EaMumJ/6ULjCdGnjiOLXGkU9rqa8zb1Fub+e77B/5MWNbxMJ
         CQBKHFhc1XTc3DlhTn6shIE3HGgLRJ71uNi1PKcOpaEpo8ZGmDgVw5AaMiwdCv3v8/Oy
         og2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=catalin.marinas@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id x18si243633pgx.2.2020.08.06.05.01.14
        for <clang-built-linux@googlegroups.com>;
        Thu, 06 Aug 2020 05:01:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9D8001FB;
	Thu,  6 Aug 2020 05:01:13 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1D4243F99C;
	Thu,  6 Aug 2020 05:01:12 -0700 (PDT)
Date: Thu, 6 Aug 2020 13:01:09 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Will Deacon <will@kernel.org>, Zhenyu Ye <yezhenyu2@huawei.com>,
	Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <maz@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Kees Cook <keescook@chromium.org>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] arm64: tlb: fix ARM64_TLB_RANGE with LLVM's integrated
 assembler
Message-ID: <20200806120109.GD23785@gaia>
References: <20200805181920.4013059-1-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200805181920.4013059-1-samitolvanen@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: catalin.marinas@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=catalin.marinas@arm.com
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

On Wed, Aug 05, 2020 at 11:19:20AM -0700, Sami Tolvanen wrote:
> diff --git a/arch/arm64/include/asm/tlbflush.h b/arch/arm64/include/asm/tlbflush.h
> index d493174415db..66c2aab5e9cb 100644
> --- a/arch/arm64/include/asm/tlbflush.h
> +++ b/arch/arm64/include/asm/tlbflush.h
> @@ -16,6 +16,16 @@
>  #include <asm/cputype.h>
>  #include <asm/mmu.h>
>  
> +/*
> + * Enable ARMv8.4-TLBI instructions with ARM64_TLB_RANGE. Note that binutils
> + * doesn't support .arch_extension tlb-rmi, so use .arch armv8.4-a instead.
> + */
> +#ifdef CONFIG_ARM64_TLB_RANGE
> +#define __TLBI_PREAMBLE	".arch armv8.4-a\n"
> +#else
> +#define __TLBI_PREAMBLE
> +#endif
> +
>  /*
>   * Raw TLBI operations.
>   *
> @@ -28,14 +38,16 @@
>   * not. The macros handles invoking the asm with or without the
>   * register argument as appropriate.
>   */
> -#define __TLBI_0(op, arg) asm ("tlbi " #op "\n"				       \
> +#define __TLBI_0(op, arg) asm (__TLBI_PREAMBLE				       \
> +			       "tlbi " #op "\n"				       \
>  		   ALTERNATIVE("nop\n			nop",		       \
>  			       "dsb ish\n		tlbi " #op,	       \
>  			       ARM64_WORKAROUND_REPEAT_TLBI,		       \
>  			       CONFIG_ARM64_WORKAROUND_REPEAT_TLBI)	       \
>  			    : : )
>  
> -#define __TLBI_1(op, arg) asm ("tlbi " #op ", %0\n"			       \
> +#define __TLBI_1(op, arg) asm (__TLBI_PREAMBLE				       \
> +			       "tlbi " #op ", %0\n"			       \
>  		   ALTERNATIVE("nop\n			nop",		       \
>  			       "dsb ish\n		tlbi " #op ", %0",     \
>  			       ARM64_WORKAROUND_REPEAT_TLBI,		       \

A potential problem here is that for gas (not sure about the integrated
assembler), .arch overrides any other .arch. So if we end up with two
preambles included in the same generated .S files in the future, it will
lead to some random behaviour.

Does the LLVM integrated assembler have the same behaviour on .arch
overriding a prior .arch?

Maybe a better solution is for all inline asm on arm64 to have a
standard preamble which is the maximum supported architecture version.
We can add individual .arch_extension as those are not overriding.

-- 
Catalin

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200806120109.GD23785%40gaia.
