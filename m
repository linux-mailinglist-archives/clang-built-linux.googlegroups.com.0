Return-Path: <clang-built-linux+bncBDYJPJO25UGBB5UKVT4QKGQELW7TKQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 646B823CF2A
	for <lists+clang-built-linux@lfdr.de>; Wed,  5 Aug 2020 21:16:08 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id g6sf9629641pfi.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 05 Aug 2020 12:16:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596654966; cv=pass;
        d=google.com; s=arc-20160816;
        b=TKWPdGCqlmShmJwO9KghPlRYYel7DMhxrRnxoQotfIHntIcujCtiIuwpaBvKbbCnql
         qP3GBnf0qRI1asP/ajdyMzntKvE76GQb1aDOFJdK7hmT6Belk8645IrdVWP9gd0P6Rr/
         ylSby/+Sgvp3sE11VMHWklpa2jMDVbSHMG9brONKvZQbhxvjSG1u+vtN2f4OSwUH1cus
         P8a/1m7UQpFpcv69j7P5yINPk9WfuIMVuz4Q6DAroO9NcZW4EUt3PXSJledWaMgvEPCy
         lFwWTuCK9cYp8cir34pEhNu0NMYUxIlGQPpSaLgmoNf+J7MskTy4wy6PoM8BPhMwrLqs
         XAVw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=GeratM+hSI0wHxdS5gLMEGNIAiMwdcMmLM1Zd/MGBjU=;
        b=frt/0OWKfmH2G0PhH3Tbdm0rwonU6LCdXcmRHrQyivHlOGnB61R98M+BYUaMIUV+HN
         1KBjd6LsI9rYn6LUZBVrbuWn2nGvy7J98sR1M9RD8S+dJJNlyNXaw80XDgv0iz8SbodT
         f03uhxqvlaa4fEXQobyiXOiTLMWHc0UNHQDF+nfFq2uvS/14GaVz22PHrc0c8Omv61j7
         KulPFgQlyLjDfofcbJj3HaNVL8Ff0H6+4C4X7vum0QtI15cpe+pjpfKcWw+euAeEyjZt
         yL/f7fP+GDrxfIsjiZO6jfj3DGBQbHZ3fcxIZDh9qu6sT4AFsHst4w9qaAKhAKPBnjXc
         GE2g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=k7zDMfTF;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GeratM+hSI0wHxdS5gLMEGNIAiMwdcMmLM1Zd/MGBjU=;
        b=rz5jlePUvQDWODYPBiwgdBy2Zvb6BYJck9anDk2pfY2po+HOPZE/64TYDyyRkCftpl
         Vp4N4HS2ReRV/hgBP/LMkTm19BHZgPL2QmZwdt/sOyMpHhcf656eQdkRKtTOLLSuz704
         7Iz/47ruGfY2LZJaJZHNQUDm96gAOHOu4k37ObpfZCCCG2sUEQOU+UrOE6SRtEDTyRRz
         EO5hlZd4ejQV5u/1QoeafMt4/TjjnYp9XYBRf5TGofGhnlL9NN3gq0A5BwSwYM4zK3GY
         RJ+pgwTf+Z0RqGMTaUz+yPUB1z2aeLokEkewI5jiuT6bR7TfdytZHgGMy26kHRvXFpvB
         /ang==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GeratM+hSI0wHxdS5gLMEGNIAiMwdcMmLM1Zd/MGBjU=;
        b=uahiTgTii6SbarSPOp+ZnURMAF/7zUW5ZKW7bRLsvExCUI7Vx8b5tjg1XocLT6KZis
         b7ADUi/GehZCIY3SlnlMrntYumuLxZ2WpO4lsBRNk4Lur+cxk/9rVOZxY+kFdLRXg+ja
         kAm7PmupG7eftTaTBrzd+tQbiYPfBxJbKkpmSFRYZkm2U8Iq3lI4JI5vp3JmsYC4EVYL
         ycqauk2bRKXBll3Jcn+NVnjBjHvZ0dC6chpPjsePIA1Xhbmv3y3M7OIvBa7kdZ7TPexD
         peIVU06GWpQ2tlGdOnIPNSQGJxjOVJUeWAvmLkY7HVzjdD4SKc2aWzAAHGBa2rSzOY/V
         Q3Aw==
X-Gm-Message-State: AOAM533/FltSTixKS5kfAuqKdgxxfiJ5DmTz+Oz/UDGljCMXt/jU5Qkx
	zRcWVrYcY/VPikVMs6CdUtg=
X-Google-Smtp-Source: ABdhPJzdkRSNQmKWxZ81VOzAT+RW3W01madVcRFj9bHL/v17fy7/g2+XnEQYB+hSZw0xE/PMAdg23Q==
X-Received: by 2002:a17:902:9f82:: with SMTP id g2mr4523773plq.254.1596654966516;
        Wed, 05 Aug 2020 12:16:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:2c11:: with SMTP id s17ls1156842pfs.9.gmail; Wed, 05 Aug
 2020 12:16:06 -0700 (PDT)
X-Received: by 2002:a62:7785:: with SMTP id s127mr4664782pfc.196.1596654966066;
        Wed, 05 Aug 2020 12:16:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596654966; cv=none;
        d=google.com; s=arc-20160816;
        b=KvXRp6wjVybNvpY//heljb0RNIV2SfM7VIjLYv81js0L7cTg+iPVmLbDTLfzwIt9nt
         gbOJnkkD19GSz4eOpuo7bAeGmaRDrMPhTibr6BSVUSouZ4GmDT4mzgwAbj4nV22IYdMD
         5YMWmQrsUewMEX103TREdQua5IhWkC9FhlkAHjszFDQ9/zLWr5m3h1iopBnZTR2eVGm/
         msenk6tv/5GbMK6O5cr8hRkyHveTLqYFdnXnUn+ZPRvhLRr0xNehxfC/p8Xez7cmv6ui
         JZxvEL+4888RxfewjdtrKSEcr3h0JjmjUp7am3hCsHHlUKT0BaYQ7w1k81QVXHUsYZJQ
         vQTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=fkmFyG52wjJPsFo+KzVqJsJKl7IJxS/xx3YOl+eRHzM=;
        b=f2uLZzu1nOMndkS4e74XbzaNFfBvLG+PkBheC1JxCf/8gkwpbq0oap3iIOZNoKKgeE
         8QW+l/URsyRl/+ihnvN6WaIKiPwGdaGM2yDZXN1agnl6WE9hK1VqRWoTpKXP6i19M6TZ
         opz+RZZykF9xNSPJoGzleHu4IJMIOWCEi/v/0c7UXZ4Z1gNeezFSH80AqWaxptkEurzG
         mbsuqM6M8ct3aFLeImZ4zpF4wM7thpM9/aILvL7Wd5OZmvro6coES+4GlXL/vPZQUy8r
         yanTykjD5YXY5MEhDCIVQyD1zTEBqubg/+9SIwodoSleUCSbDT5F2Laeyh7mQkOSMs8R
         WgvQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=k7zDMfTF;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id t75si153769pfc.3.2020.08.05.12.16.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Aug 2020 12:16:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id ha11so4953027pjb.1
        for <clang-built-linux@googlegroups.com>; Wed, 05 Aug 2020 12:16:06 -0700 (PDT)
X-Received: by 2002:a17:90a:fc98:: with SMTP id ci24mr4860374pjb.101.1596654965300;
 Wed, 05 Aug 2020 12:16:05 -0700 (PDT)
MIME-Version: 1.0
References: <20200805181920.4013059-1-samitolvanen@google.com>
In-Reply-To: <20200805181920.4013059-1-samitolvanen@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 5 Aug 2020 12:15:54 -0700
Message-ID: <CAKwvOdncvJbxphoDFdWTeiMnuu4pDie9xCxA-dC=__CK9p1KBw@mail.gmail.com>
Subject: Re: [PATCH] arm64: tlb: fix ARM64_TLB_RANGE with LLVM's integrated assembler
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Zhenyu Ye <yezhenyu2@huawei.com>, Mark Rutland <mark.rutland@arm.com>, 
	Marc Zyngier <maz@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Kees Cook <keescook@chromium.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=k7zDMfTF;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Wed, Aug 5, 2020 at 11:19 AM Sami Tolvanen <samitolvanen@google.com> wrote:
>
> Commit 7c78f67e9bd9 ("arm64: enable tlbi range instructions") breaks
> LLVM's integrated assembler, because -Wa,-march is only passed to
> external assemblers and therefore, the new instructions are not enabled
> when IAS is used.
>
> As binutils doesn't support .arch_extension tlb-rmi, this change adds
> .arch armv8.4-a to __TLBI_0 and __TLBI_1 to fix the issue with both LLVM
> IAS and binutils.
>
> Fixes: 7c78f67e9bd9 ("arm64: enable tlbi range instructions")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1106
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

I've filed https://sourceware.org/bugzilla/show_bug.cgi?id=26339 to
discuss more with ARM binutils devs about some of the compat issues
around these assembler directives.

> ---
>  arch/arm64/include/asm/tlbflush.h | 16 ++++++++++++++--
>  1 file changed, 14 insertions(+), 2 deletions(-)
>
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
> +#define __TLBI_PREAMBLE        ".arch armv8.4-a\n"
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
> -#define __TLBI_0(op, arg) asm ("tlbi " #op "\n"                                       \
> +#define __TLBI_0(op, arg) asm (__TLBI_PREAMBLE                                \
> +                              "tlbi " #op "\n"                                \
>                    ALTERNATIVE("nop\n                   nop",                  \
>                                "dsb ish\n               tlbi " #op,            \
>                                ARM64_WORKAROUND_REPEAT_TLBI,                   \
>                                CONFIG_ARM64_WORKAROUND_REPEAT_TLBI)            \
>                             : : )
>
> -#define __TLBI_1(op, arg) asm ("tlbi " #op ", %0\n"                           \
> +#define __TLBI_1(op, arg) asm (__TLBI_PREAMBLE                                \
> +                              "tlbi " #op ", %0\n"                            \
>                    ALTERNATIVE("nop\n                   nop",                  \
>                                "dsb ish\n               tlbi " #op ", %0",     \
>                                ARM64_WORKAROUND_REPEAT_TLBI,                   \
>
> base-commit: 4834ce9d8e074bb7ae197632e0708219b9f389b5
> --
> 2.28.0.163.g6104cc2f0b6-goog
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdncvJbxphoDFdWTeiMnuu4pDie9xCxA-dC%3D__CK9p1KBw%40mail.gmail.com.
