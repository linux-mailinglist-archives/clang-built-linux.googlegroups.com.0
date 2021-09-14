Return-Path: <clang-built-linux+bncBDYJPJO25UGBBWEMQOFAMGQEYPVOGSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x639.google.com (mail-ej1-x639.google.com [IPv6:2a00:1450:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 022CD40B3F1
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 17:57:13 +0200 (CEST)
Received: by mail-ej1-x639.google.com with SMTP id ak17-20020a170906889100b005c5d1e5e707sf5602326ejc.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 08:57:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631635032; cv=pass;
        d=google.com; s=arc-20160816;
        b=PIfrjfcV4FMZL5//NRpdcRwabCMNXAJ6PbeOfxFYZg2IOmXZndR/1VK9UsBQGN1rq+
         3rRiEQ3xAB3IoiikQuGzm5Ot+Q8UuujJ5gScCE3yIVruhGeTDVNu3B+okjfNma5kebkN
         OppAkiL6SwLFw1XMDQ24Kv5WTA/RFammnSX77mU5NROxssvi/ztGqOwTJHoNi38LyLUf
         bemX/Zk5hib2hg5PAkJtezptdaSkk5LdrFIWECraZFvNoq9rg87qUGTxbwc2WiR0AAE9
         wF88JgH+VA/iUibKo8/CvefvmiMH+KXMyX9mI8oBjDi/FoClCou6j7ku0WasPLmw2Rjc
         iHNw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=zftU0WEEUeeMOVz5mZKWo4nDiZAZCQYwMBKjPjOhJc0=;
        b=eOYxvOM4BLPq4nhnu5/w2ZOo5uJThSh5WodMBlm8plwFAv6d9j4BBQuXSojzEQVFfb
         njSgba4igfac0Kkhj4nemyeEUWQ3irlu/UoqerBpArXf3ksAhE0aJl6wK2xxLimKt15D
         1iQTz0Ve/WRHADHZBIuNXcVtVwgkxPWRaBfu1u+biYuzGDN95cDvKa0s2vov2mjRSOfe
         gIzm07mhq9UtsJHtSDHvyOUZCCiPC+1L1ICRN6o1FBWQqP6So+vl6mY60n9qApKMhaTj
         NI0AcYLTC60xGiXNO8dKRCFyQ0slQJYJl1Y0hs7wowOFogNsOfJEX1o6EkH/B23NCLYc
         O8tw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b="aB8gBcd/";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zftU0WEEUeeMOVz5mZKWo4nDiZAZCQYwMBKjPjOhJc0=;
        b=qfHYOAB6ux3RfkessBjtxAZ+ekjM7MRibm8YR3IE33me9FzVFNX2IDLngy0azXGSI5
         yZbMki97Nae9UxAoRE5mDVnCl8e1/hu1TrAFwOsLwTXE7s2dhHHvN8wadHudOMTEkE+o
         8tDx9JFCp4pP7hLdtWhmYsm2uHhMvQaZ7EtorhGi2t+n4yqV3FbZSRuD+CxB1w7ZuVvJ
         vqD4m8rqYkx3+I1uDPxm85dCS+9p8Tx0HcHTCv7E3oAhoYbHFnmywGpjXOaTtnadbhE2
         gW+OuhjMJmEbcIQNpIlQdG2ixUB58DmS5OcqvCxPgarcl9tNV1zI3QL8Xflta6zTPwzM
         6iQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zftU0WEEUeeMOVz5mZKWo4nDiZAZCQYwMBKjPjOhJc0=;
        b=zhg1WdDYLHJRhPjJ16Utp2jOlRbes/cesXLjX4QCVG/NKhZDm8elBtIg9/94cQfzk9
         KOKQ92byjGwWTfuKK0+x/qejz9nADYRQBaMA7fjxycm47Su9rbm/MgrYeKxQLKd8IBGk
         b++HxcFJOfqMqrlTaEvW6JPRbmEc254RqXHyqK4UbEt+VkoC13dEjLthIpXEMkoGyUmM
         7bEPnC/xc05nA+Z6+OOi+xTRFU27MeRNxV7B+DnqrIrkoZd+M44769nSP5f7UT967aO4
         r/6cZvVQTqLQm/JqRAACtJpYNnuIYskA3b5jeuD8LXT+j7sQc2Mrjz5AGGZ0aQSDXNb1
         dYHw==
X-Gm-Message-State: AOAM5326piAR72E/eoZ80IDEIKg6masdGlt8iuBTkCPanYyqazmj9H2g
	zlnwxn6nzWbV4eoyi9xQdtU=
X-Google-Smtp-Source: ABdhPJyevEPiRZm1AFihvHJXQJc0qQSXu4bphJyj54jzOteMcr5V1AiQgHbWbL7bOlN5Kdf8H56ZDg==
X-Received: by 2002:a50:d0c8:: with SMTP id g8mr20597632edf.177.1631635032708;
        Tue, 14 Sep 2021 08:57:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:3513:: with SMTP id r19ls4940821eja.1.gmail; Tue, 14
 Sep 2021 08:57:11 -0700 (PDT)
X-Received: by 2002:a17:906:2f94:: with SMTP id w20mr20014089eji.14.1631635031743;
        Tue, 14 Sep 2021 08:57:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631635031; cv=none;
        d=google.com; s=arc-20160816;
        b=K5+GBLUmswWYsvRBECBUz50Iwdhv5QCMnIE+ozm6dX/phfjyrJNMx2gMPHItDlncob
         pNBM/GCajt9FzpytoxTAPIsWvxxgDbssigSA/Vi7DcJ0pIZLPc3VnAELMUOQa+z9Oqch
         5IR53bp3ev+SSDJWIpfs3OCK0cOqlw1HCB81Jz7asnmBmBzSNmuaUN9zmaCAL1DWjI5J
         2aYfvegid4Q8Nn7h7bX/7eGZIsktGB1r0Mw6aJQqGL+coRV2jxTdHt1k8EDzRk1YWaiP
         grTvuuYMRpidmNQ/OnRCz6x31YT/pOzR9inAxiWUXmmWFrYxDjdFCk4BKuDOnLIirV/n
         KdYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=/Q+A3/+/p0rNGdsRG+HmvqymIrQop8qQ2C5/+YL23yU=;
        b=P/NfHnHh7T6MeZRj4qH0nrP91OETktLh7mExYAYTgiAK02srSboYkeuR5snaqCR9UM
         A/SYzOjs1j9B0sLK0ej+ayTn6pWSSia/YEDUvE1rfeggw2WPIe5OHpbMXTs7dWpGtLjF
         +lxOURnOPXJfOWHCmfDwM/Je+8MMGCsqYE3H630zkbTNF7MCw9LxV+CXQDZlVDxSE1Jl
         dDqmqmod6idIJHdBBbfVNBJzjMRSjXGGaysrjuTvrT5EzbIt9YpUVRDgZIPCei6Igeqd
         ZcW3nz1XbGWgWB3o0/+TM+i1JO41y9IY7xZw+83Pzq+HONGUfkYCp7WyVdiSHVB+UmpB
         G4vg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b="aB8gBcd/";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com. [2a00:1450:4864:20::12c])
        by gmr-mx.google.com with ESMTPS id p21si396272edx.1.2021.09.14.08.57.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Sep 2021 08:57:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12c as permitted sender) client-ip=2a00:1450:4864:20::12c;
Received: by mail-lf1-x12c.google.com with SMTP id x27so29867134lfu.5
        for <clang-built-linux@googlegroups.com>; Tue, 14 Sep 2021 08:57:11 -0700 (PDT)
X-Received: by 2002:ac2:4c46:: with SMTP id o6mr13446582lfk.240.1631635030807;
 Tue, 14 Sep 2021 08:57:10 -0700 (PDT)
MIME-Version: 1.0
References: <20210913213415.527306-1-paul@crapouillou.net>
In-Reply-To: <20210913213415.527306-1-paul@crapouillou.net>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 14 Sep 2021 08:56:59 -0700
Message-ID: <CAKwvOdknN5O2gDUXwLwQDhxJc15foagrfW=+u+6vtxKVHmwDOQ@mail.gmail.com>
Subject: Re: [PATCH v2] MIPS: Avoid macro redefinitions
To: Paul Cercueil <paul@crapouillou.net>
Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>, Huacai Chen <chenhuacai@kernel.org>, 
	Jiaxun Yang <jiaxun.yang@flygoat.com>, Tiezhu Yang <yangtiezhu@loongson.cn>, 
	linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org, list@opendingux.net, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20210112 header.b="aB8gBcd/";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12c
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

 On Mon, Sep 13, 2021 at 2:34 PM Paul Cercueil <paul@crapouillou.net> wrote:
>
> To be able to compile the kernel with LTO, the assembler macros cannot
> be declared in the global scope, or the compiler will complain about
> redefined macros.
>
> Update the code so that macros are defined then undefined when they are
> used.
>
> Note that virt support was added in 2.24 and xpa in 2.25. So we still
> need the TOOLCHAIN defines for them.
>
> Signed-off-by: Paul Cercueil <paul@crapouillou.net>
> ---
>
> Notes:
>     v2: Removed commented undef line

Hi Paul, thanks for the v2. I think the point of the #undef was that
the _IFC_REG doesn't make sense outside of this header, so they
probably did not want to pollute the namespace for preprocessor
defines.  As such, I think it should actually stay, not be removed (or
commented out).

>
>  arch/mips/include/asm/ginvt.h                 |  11 +-
>  .../asm/mach-loongson64/loongson_regs.h       |  12 ++
>  arch/mips/include/asm/mipsregs.h              | 190 +++++++++++-------
>  arch/mips/include/asm/msa.h                   |  34 +++-
>  4 files changed, 155 insertions(+), 92 deletions(-)
>
> diff --git a/arch/mips/include/asm/ginvt.h b/arch/mips/include/asm/ginvt.h
> index 6eb7c2b94dc7..87b2974ffc53 100644
> --- a/arch/mips/include/asm/ginvt.h
> +++ b/arch/mips/include/asm/ginvt.h
> @@ -12,11 +12,13 @@ enum ginvt_type {
>
>  #ifdef TOOLCHAIN_SUPPORTS_GINV
>  # define _ASM_SET_GINV ".set   ginv\n"
> +# define _ASM_UNSET_GINV
>  #else
> -_ASM_MACRO_1R1I(ginvt, rs, type,
> -               _ASM_INSN_IF_MIPS(0x7c0000bd | (__rs << 21) | (\\type << 8))
> -               _ASM_INSN32_IF_MM(0x0000717c | (__rs << 16) | (\\type << 9)));
> -# define _ASM_SET_GINV
> +# define _ASM_SET_GINV                                                 \
> +       _ASM_MACRO_1R1I(ginvt, rs, type,                                \
> +                       _ASM_INSN_IF_MIPS(0x7c0000bd | (__rs << 21) | (\\type << 8))    \
> +                       _ASM_INSN32_IF_MM(0x0000717c | (__rs << 16) | (\\type << 9)))
> +# define _ASM_UNSET_GINV ".purgem ginvt\n"
>  #endif
>
>  static __always_inline void ginvt(unsigned long addr, enum ginvt_type type)
> @@ -25,6 +27,7 @@ static __always_inline void ginvt(unsigned long addr, enum ginvt_type type)
>                 ".set   push\n"
>                 _ASM_SET_GINV
>                 "       ginvt   %0, %1\n"
> +               _ASM_UNSET_GINV
>                 ".set   pop"
>                 : /* no outputs */
>                 : "r"(addr), "i"(type)
> diff --git a/arch/mips/include/asm/mach-loongson64/loongson_regs.h b/arch/mips/include/asm/mach-loongson64/loongson_regs.h
> index 165993514762..b5be7511f6cd 100644
> --- a/arch/mips/include/asm/mach-loongson64/loongson_regs.h
> +++ b/arch/mips/include/asm/mach-loongson64/loongson_regs.h
> @@ -21,8 +21,10 @@ static inline u32 read_cpucfg(u32 reg)
>         u32 __res;
>
>         __asm__ __volatile__(
> +               _ASM_SET_PARSE_R
>                 "parse_r __res,%0\n\t"
>                 "parse_r reg,%1\n\t"
> +               _ASM_UNSET_PARSE_R
>                 ".insn \n\t"
>                 ".word (0xc8080118 | (reg << 21) | (__res << 11))\n\t"
>                 :"=r"(__res)
> @@ -143,8 +145,10 @@ static inline u32 csr_readl(u32 reg)
>
>         /* RDCSR reg, val */
>         __asm__ __volatile__(
> +               _ASM_SET_PARSE_R
>                 "parse_r __res,%0\n\t"
>                 "parse_r reg,%1\n\t"
> +               _ASM_UNSET_PARSE_R
>                 ".insn \n\t"
>                 ".word (0xc8000118 | (reg << 21) | (__res << 11))\n\t"
>                 :"=r"(__res)
> @@ -160,8 +164,10 @@ static inline u64 csr_readq(u32 reg)
>
>         /* DRDCSR reg, val */
>         __asm__ __volatile__(
> +               _ASM_SET_PARSE_R
>                 "parse_r __res,%0\n\t"
>                 "parse_r reg,%1\n\t"
> +               _ASM_UNSET_PARSE_R
>                 ".insn \n\t"
>                 ".word (0xc8020118 | (reg << 21) | (__res << 11))\n\t"
>                 :"=r"(__res)
> @@ -175,8 +181,10 @@ static inline void csr_writel(u32 val, u32 reg)
>  {
>         /* WRCSR reg, val */
>         __asm__ __volatile__(
> +               _ASM_SET_PARSE_R
>                 "parse_r reg,%0\n\t"
>                 "parse_r val,%1\n\t"
> +               _ASM_UNSET_PARSE_R
>                 ".insn \n\t"
>                 ".word (0xc8010118 | (reg << 21) | (val << 11))\n\t"
>                 :
> @@ -189,8 +197,10 @@ static inline void csr_writeq(u64 val, u32 reg)
>  {
>         /* DWRCSR reg, val */
>         __asm__ __volatile__(
> +               _ASM_SET_PARSE_R
>                 "parse_r reg,%0\n\t"
>                 "parse_r val,%1\n\t"
> +               _ASM_UNSET_PARSE_R
>                 ".insn \n\t"
>                 ".word (0xc8030118 | (reg << 21) | (val << 11))\n\t"
>                 :
> @@ -243,8 +253,10 @@ static inline u64 drdtime(void)
>         u64 val = 0;
>
>         __asm__ __volatile__(
> +               _ASM_SET_PARSE_R
>                 "parse_r rID,%0\n\t"
>                 "parse_r val,%1\n\t"
> +               _ASM_UNSET_PARSE_R
>                 ".insn \n\t"
>                 ".word (0xc8090118 | (rID << 21) | (val << 11))\n\t"
>                 :"=r"(rID),"=r"(val)
> diff --git a/arch/mips/include/asm/mipsregs.h b/arch/mips/include/asm/mipsregs.h
> index acdf8c69220b..2616353b940c 100644
> --- a/arch/mips/include/asm/mipsregs.h
> +++ b/arch/mips/include/asm/mipsregs.h
> @@ -1297,22 +1297,22 @@ static inline int mm_insn_16bit(u16 insn)
>         "\\var  = " #n "\n\t"                   \
>         ".endif\n\t"
>
> -__asm__(".macro        parse_r var r\n\t"
> -       "\\var  = -1\n\t"
> -       _IFC_REG(0)  _IFC_REG(1)  _IFC_REG(2)  _IFC_REG(3)
> -       _IFC_REG(4)  _IFC_REG(5)  _IFC_REG(6)  _IFC_REG(7)
> -       _IFC_REG(8)  _IFC_REG(9)  _IFC_REG(10) _IFC_REG(11)
> -       _IFC_REG(12) _IFC_REG(13) _IFC_REG(14) _IFC_REG(15)
> -       _IFC_REG(16) _IFC_REG(17) _IFC_REG(18) _IFC_REG(19)
> -       _IFC_REG(20) _IFC_REG(21) _IFC_REG(22) _IFC_REG(23)
> -       _IFC_REG(24) _IFC_REG(25) _IFC_REG(26) _IFC_REG(27)
> -       _IFC_REG(28) _IFC_REG(29) _IFC_REG(30) _IFC_REG(31)
> -       ".iflt  \\var\n\t"
> -       ".error \"Unable to parse register name \\r\"\n\t"
> -       ".endif\n\t"
> -       ".endm");
> -
> -#undef _IFC_REG

^ ie. I don't think we want to remove this undef.

> +#define _ASM_SET_PARSE_R                                               \
> +       ".macro parse_r var r\n\t"                                      \
> +       "\\var  = -1\n\t"                                               \
> +       _IFC_REG(0)  _IFC_REG(1)  _IFC_REG(2)  _IFC_REG(3)              \
> +       _IFC_REG(4)  _IFC_REG(5)  _IFC_REG(6)  _IFC_REG(7)              \
> +       _IFC_REG(8)  _IFC_REG(9)  _IFC_REG(10) _IFC_REG(11)             \
> +       _IFC_REG(12) _IFC_REG(13) _IFC_REG(14) _IFC_REG(15)             \
> +       _IFC_REG(16) _IFC_REG(17) _IFC_REG(18) _IFC_REG(19)             \
> +       _IFC_REG(20) _IFC_REG(21) _IFC_REG(22) _IFC_REG(23)             \
> +       _IFC_REG(24) _IFC_REG(25) _IFC_REG(26) _IFC_REG(27)             \
> +       _IFC_REG(28) _IFC_REG(29) _IFC_REG(30) _IFC_REG(31)             \
> +       ".iflt  \\var\n\t"                                              \
> +       ".error \"Unable to parse register name \\r\"\n\t"              \
> +       ".endif\n\t"                                                    \
> +       ".endm\n\t"
> +#define _ASM_UNSET_PARSE_R ".purgem parse_r\n\t"
>
>  /*
>   * C macros for generating assembler macros for common instruction formats.
> @@ -1322,43 +1322,45 @@ __asm__(".macro parse_r var r\n\t"
>   * the ENC encodings.
>   */
>
> -/* Instructions with no operands */
> -#define _ASM_MACRO_0(OP, ENC)                                          \
> -       __asm__(".macro " #OP "\n\t"                                    \
> -               ENC                                                     \
> -               ".endm")
> -
>  /* Instructions with 1 register operand & 1 immediate operand */
>  #define _ASM_MACRO_1R1I(OP, R1, I2, ENC)                               \
> -       __asm__(".macro " #OP " " #R1 ", " #I2 "\n\t"                   \
> +               ".macro " #OP " " #R1 ", " #I2 "\n\t"                   \
> +               _ASM_SET_PARSE_R                                        \
>                 "parse_r __" #R1 ", \\" #R1 "\n\t"                      \
>                 ENC                                                     \
> -               ".endm")
> +               _ASM_UNSET_PARSE_R                                      \
> +               ".endm\n\t"
>
>  /* Instructions with 2 register operands */
>  #define _ASM_MACRO_2R(OP, R1, R2, ENC)                                 \
> -       __asm__(".macro " #OP " " #R1 ", " #R2 "\n\t"                   \
> +               ".macro " #OP " " #R1 ", " #R2 "\n\t"                   \
> +               _ASM_SET_PARSE_R                                        \
>                 "parse_r __" #R1 ", \\" #R1 "\n\t"                      \
>                 "parse_r __" #R2 ", \\" #R2 "\n\t"                      \
>                 ENC                                                     \
> -               ".endm")
> +               _ASM_UNSET_PARSE_R                                      \
> +               ".endm\n\t"
>
>  /* Instructions with 3 register operands */
>  #define _ASM_MACRO_3R(OP, R1, R2, R3, ENC)                             \
> -       __asm__(".macro " #OP " " #R1 ", " #R2 ", " #R3 "\n\t"          \
> +               ".macro " #OP " " #R1 ", " #R2 ", " #R3 "\n\t"          \
> +               _ASM_SET_PARSE_R                                        \
>                 "parse_r __" #R1 ", \\" #R1 "\n\t"                      \
>                 "parse_r __" #R2 ", \\" #R2 "\n\t"                      \
>                 "parse_r __" #R3 ", \\" #R3 "\n\t"                      \
>                 ENC                                                     \
> -               ".endm")
> +               _ASM_UNSET_PARSE_R                                      \
> +               ".endm\n\t"
>
>  /* Instructions with 2 register operands and 1 optional select operand */
>  #define _ASM_MACRO_2R_1S(OP, R1, R2, SEL3, ENC)                                \
> -       __asm__(".macro " #OP " " #R1 ", " #R2 ", " #SEL3 " = 0\n\t"    \
> +               ".macro " #OP " " #R1 ", " #R2 ", " #SEL3 " = 0\n\t"    \
> +               _ASM_SET_PARSE_R                                        \
>                 "parse_r __" #R1 ", \\" #R1 "\n\t"                      \
>                 "parse_r __" #R2 ", \\" #R2 "\n\t"                      \
>                 ENC                                                     \
> -               ".endm")
> +               _ASM_UNSET_PARSE_R                                      \
> +               ".endm\n\t"
>
>  /*
>   * TLB Invalidate Flush
> @@ -1618,15 +1620,21 @@ do {                                                                    \
>  } while (0)
>
>  #ifndef TOOLCHAIN_SUPPORTS_XPA
> -_ASM_MACRO_2R_1S(mfhc0, rt, rs, sel,
> -       _ASM_INSN_IF_MIPS(0x40400000 | __rt << 16 | __rs << 11 | \\sel)
> -       _ASM_INSN32_IF_MM(0x000000f4 | __rt << 21 | __rs << 16 | \\sel << 11));
> -_ASM_MACRO_2R_1S(mthc0, rt, rd, sel,
> -       _ASM_INSN_IF_MIPS(0x40c00000 | __rt << 16 | __rd << 11 | \\sel)
> -       _ASM_INSN32_IF_MM(0x000002f4 | __rt << 21 | __rd << 16 | \\sel << 11));
> -#define _ASM_SET_XPA ""
> +#define _ASM_SET_MFHC0                                                 \
> +       _ASM_MACRO_2R_1S(mfhc0, rt, rs, sel,                            \
> +                        _ASM_INSN_IF_MIPS(0x40400000 | __rt << 16 | __rs << 11 | \\sel)        \
> +                        _ASM_INSN32_IF_MM(0x000000f4 | __rt << 21 | __rs << 16 | \\sel << 11))
> +#define _ASM_UNSET_MFHC0 ".purgem mfhc0\n\t"
> +#define _ASM_SET_MTHC0                                                 \
> +       _ASM_MACRO_2R_1S(mthc0, rt, rd, sel,                            \
> +                        _ASM_INSN_IF_MIPS(0x40c00000 | __rt << 16 | __rd << 11 | \\sel)        \
> +                        _ASM_INSN32_IF_MM(0x000002f4 | __rt << 21 | __rd << 16 | \\sel << 11))
> +#define _ASM_UNSET_MTHC0 ".purgem mthc0\n\t"
>  #else  /* !TOOLCHAIN_SUPPORTS_XPA */
> -#define _ASM_SET_XPA ".set\txpa\n\t"
> +#define _ASM_SET_MFHC0 ".set\txpa\n\t"
> +#define _ASM_SET_MTHC0 ".set\txpa\n\t"
> +#define _ASM_UNSET_MFHC0
> +#define _ASM_UNSET_MTHC0
>  #endif
>
>  #define __readx_32bit_c0_register(source, sel)                         \
> @@ -1636,8 +1644,9 @@ _ASM_MACRO_2R_1S(mthc0, rt, rd, sel,
>         __asm__ __volatile__(                                           \
>         "       .set    push                                    \n"     \
>         "       .set    mips32r2                                \n"     \
> -       _ASM_SET_XPA                                                    \
> +       _ASM_SET_MFHC0                                                  \
>         "       mfhc0   %0, " #source ", %1                     \n"     \
> +       _ASM_UNSET_MFHC0                                                \
>         "       .set    pop                                     \n"     \
>         : "=r" (__res)                                                  \
>         : "i" (sel));                                                   \
> @@ -1649,8 +1658,9 @@ do {                                                                      \
>         __asm__ __volatile__(                                           \
>         "       .set    push                                    \n"     \
>         "       .set    mips32r2                                \n"     \
> -       _ASM_SET_XPA                                                    \
> +       _ASM_SET_MTHC0                                                  \
>         "       mthc0   %z0, " #register ", %1                  \n"     \
> +       _ASM_UNSET_MTHC0                                                \
>         "       .set    pop                                     \n"     \
>         :                                                               \
>         : "Jr" (value), "i" (sel));                                     \
> @@ -2046,31 +2056,58 @@ do {                                                                    \
>   */
>
>  #ifndef TOOLCHAIN_SUPPORTS_VIRT
> -_ASM_MACRO_2R_1S(mfgc0, rt, rs, sel,
> -       _ASM_INSN_IF_MIPS(0x40600000 | __rt << 16 | __rs << 11 | \\sel)
> -       _ASM_INSN32_IF_MM(0x000004fc | __rt << 21 | __rs << 16 | \\sel << 11));
> -_ASM_MACRO_2R_1S(dmfgc0, rt, rs, sel,
> -       _ASM_INSN_IF_MIPS(0x40600100 | __rt << 16 | __rs << 11 | \\sel)
> -       _ASM_INSN32_IF_MM(0x580004fc | __rt << 21 | __rs << 16 | \\sel << 11));
> -_ASM_MACRO_2R_1S(mtgc0, rt, rd, sel,
> -       _ASM_INSN_IF_MIPS(0x40600200 | __rt << 16 | __rd << 11 | \\sel)
> -       _ASM_INSN32_IF_MM(0x000006fc | __rt << 21 | __rd << 16 | \\sel << 11));
> -_ASM_MACRO_2R_1S(dmtgc0, rt, rd, sel,
> -       _ASM_INSN_IF_MIPS(0x40600300 | __rt << 16 | __rd << 11 | \\sel)
> -       _ASM_INSN32_IF_MM(0x580006fc | __rt << 21 | __rd << 16 | \\sel << 11));
> -_ASM_MACRO_0(tlbgp,    _ASM_INSN_IF_MIPS(0x42000010)
> -                      _ASM_INSN32_IF_MM(0x0000017c));
> -_ASM_MACRO_0(tlbgr,    _ASM_INSN_IF_MIPS(0x42000009)
> -                      _ASM_INSN32_IF_MM(0x0000117c));
> -_ASM_MACRO_0(tlbgwi,   _ASM_INSN_IF_MIPS(0x4200000a)
> -                      _ASM_INSN32_IF_MM(0x0000217c));
> -_ASM_MACRO_0(tlbgwr,   _ASM_INSN_IF_MIPS(0x4200000e)
> -                      _ASM_INSN32_IF_MM(0x0000317c));
> -_ASM_MACRO_0(tlbginvf, _ASM_INSN_IF_MIPS(0x4200000c)
> -                      _ASM_INSN32_IF_MM(0x0000517c));
> -#define _ASM_SET_VIRT ""
> +#define _ASM_SET_MFGC0                                                 \
> +       _ASM_MACRO_2R_1S(mfgc0, rt, rs, sel,                            \
> +                        _ASM_INSN_IF_MIPS(0x40600000 | __rt << 16 | __rs << 11 | \\sel)        \
> +                        _ASM_INSN32_IF_MM(0x000004fc | __rt << 21 | __rs << 16 | \\sel << 11))
> +#define _ASM_UNSET_MFGC0 ".purgem mfgc0\n\t"
> +#define _ASM_SET_DMFGC0                                                        \
> +       _ASM_MACRO_2R_1S(dmfgc0, rt, rs, sel,                           \
> +                        _ASM_INSN_IF_MIPS(0x40600100 | __rt << 16 | __rs << 11 | \\sel)        \
> +                        _ASM_INSN32_IF_MM(0x580004fc | __rt << 21 | __rs << 16 | \\sel << 11))
> +#define _ASM_UNSET_DMFGC0 ".purgem dmfgc0\n\t"
> +#define _ASM_SET_MTGC0                                                 \
> +       _ASM_MACRO_2R_1S(mtgc0, rt, rd, sel,                            \
> +                        _ASM_INSN_IF_MIPS(0x40600200 | __rt << 16 | __rd << 11 | \\sel)        \
> +                        _ASM_INSN32_IF_MM(0x000006fc | __rt << 21 | __rd << 16 | \\sel << 11))
> +#define _ASM_UNSET_MTGC0 ".purgem mtgc0\n\t"
> +#define _ASM_SET_DMTGC0                                                        \
> +       _ASM_MACRO_2R_1S(dmtgc0, rt, rd, sel,                           \
> +                        _ASM_INSN_IF_MIPS(0x40600300 | __rt << 16 | __rd << 11 | \\sel)        \
> +                        _ASM_INSN32_IF_MM(0x580006fc | __rt << 21 | __rd << 16 | \\sel << 11))
> +#define _ASM_UNSET_DMTGC0 ".purgem dmtgc0\n\t"
> +
> +#define __tlbgp()                                                      \
> +               _ASM_INSN_IF_MIPS(0x42000010)                           \
> +               _ASM_INSN32_IF_MM(0x0000017c)
> +#define __tlbgr()                                                      \
> +               _ASM_INSN_IF_MIPS(0x42000009)                           \
> +               _ASM_INSN32_IF_MM(0x0000117c)
> +#define __tlbgwi()                                                     \
> +               _ASM_INSN_IF_MIPS(0x4200000a)                           \
> +               _ASM_INSN32_IF_MM(0x0000217c)
> +#define __tlbgwr()                                                     \
> +               _ASM_INSN_IF_MIPS(0x4200000e)                           \
> +               _ASM_INSN32_IF_MM(0x0000317c)
> +#define __tlbginvf()                                                   \
> +               _ASM_INSN_IF_MIPS(0x4200000c)                           \
> +               _ASM_INSN32_IF_MM(0x0000517c)
>  #else  /* !TOOLCHAIN_SUPPORTS_VIRT */
>  #define _ASM_SET_VIRT ".set\tvirt\n\t"
> +#define _ASM_SET_MFGC0 _ASM_SET_VIRT
> +#define _ASM_SET_DMFGC0        _ASM_SET_VIRT
> +#define _ASM_SET_MTGC0 _ASM_SET_VIRT
> +#define _ASM_SET_DMTGC0        _ASM_SET_VIRT
> +#define _ASM_UNSET_MFGC0
> +#define _ASM_UNSET_DMFGC0
> +#define _ASM_UNSET_MTGC0
> +#define _ASM_UNSET_DMTGC0
> +
> +#define __tlbgp()      _ASM_SET_VIRT "tlbgp\n\t"
> +#define __tlbgr()      _ASM_SET_VIRT "tlbgr\n\t"
> +#define __tlbgwi()     _ASM_SET_VIRT "tlbgwi\n\t"
> +#define __tlbgwr()     _ASM_SET_VIRT "tlbgwr\n\t"
> +#define __tlbginvf()   _ASM_SET_VIRT "tlbginvf\n\t"
>  #endif
>
>  #define __read_32bit_gc0_register(source, sel)                         \
> @@ -2078,8 +2115,9 @@ _ASM_MACRO_0(tlbginvf, _ASM_INSN_IF_MIPS(0x4200000c)
>         __asm__ __volatile__(                                           \
>                 ".set\tpush\n\t"                                        \
>                 ".set\tmips32r5\n\t"                                    \
> -               _ASM_SET_VIRT                                           \
> +               _ASM_SET_MFGC0                                          \
>                 "mfgc0\t%0, " #source ", %1\n\t"                        \
> +               _ASM_UNSET_MFGC0                                        \
>                 ".set\tpop"                                             \
>                 : "=r" (__res)                                          \
>                 : "i" (sel));                                           \
> @@ -2091,8 +2129,9 @@ _ASM_MACRO_0(tlbginvf, _ASM_INSN_IF_MIPS(0x4200000c)
>         __asm__ __volatile__(                                           \
>                 ".set\tpush\n\t"                                        \
>                 ".set\tmips64r5\n\t"                                    \
> -               _ASM_SET_VIRT                                           \
> +               _ASM_SET_DMFGC0                                         \
>                 "dmfgc0\t%0, " #source ", %1\n\t"                       \
> +               _ASM_UNSET_DMFGC0                                       \
>                 ".set\tpop"                                             \
>                 : "=r" (__res)                                          \
>                 : "i" (sel));                                           \
> @@ -2104,8 +2143,9 @@ do {                                                                      \
>         __asm__ __volatile__(                                           \
>                 ".set\tpush\n\t"                                        \
>                 ".set\tmips32r5\n\t"                                    \
> -               _ASM_SET_VIRT                                           \
> +               _ASM_SET_MTGC0                                          \
>                 "mtgc0\t%z0, " #register ", %1\n\t"                     \
> +               _ASM_UNSET_MTGC0                                        \
>                 ".set\tpop"                                             \
>                 : : "Jr" ((unsigned int)(value)),                       \
>                     "i" (sel));                                         \
> @@ -2116,8 +2156,9 @@ do {                                                                      \
>         __asm__ __volatile__(                                           \
>                 ".set\tpush\n\t"                                        \
>                 ".set\tmips64r5\n\t"                                    \
> -               _ASM_SET_VIRT                                           \
> +               _ASM_SET_DMTGC0                                         \
>                 "dmtgc0\t%z0, " #register ", %1\n\t"                    \
> +               _ASM_UNSET_DMTGC0                                       \
>                 ".set\tpop"                                             \
>                 : : "Jr" (value),                                       \
>                     "i" (sel));                                         \
> @@ -2788,8 +2829,7 @@ static inline void guest_tlb_probe(void)
>         __asm__ __volatile__(
>                 ".set push\n\t"
>                 ".set noreorder\n\t"
> -               _ASM_SET_VIRT
> -               "tlbgp\n\t"
> +               __tlbgp()
>                 ".set pop");
>  }
>
> @@ -2798,8 +2838,7 @@ static inline void guest_tlb_read(void)
>         __asm__ __volatile__(
>                 ".set push\n\t"
>                 ".set noreorder\n\t"
> -               _ASM_SET_VIRT
> -               "tlbgr\n\t"
> +               __tlbgr()
>                 ".set pop");
>  }
>
> @@ -2808,8 +2847,7 @@ static inline void guest_tlb_write_indexed(void)
>         __asm__ __volatile__(
>                 ".set push\n\t"
>                 ".set noreorder\n\t"
> -               _ASM_SET_VIRT
> -               "tlbgwi\n\t"
> +               __tlbgwi()
>                 ".set pop");
>  }
>
> @@ -2818,8 +2856,7 @@ static inline void guest_tlb_write_random(void)
>         __asm__ __volatile__(
>                 ".set push\n\t"
>                 ".set noreorder\n\t"
> -               _ASM_SET_VIRT
> -               "tlbgwr\n\t"
> +               __tlbgwr()
>                 ".set pop");
>  }
>
> @@ -2831,8 +2868,7 @@ static inline void guest_tlbinvf(void)
>         __asm__ __volatile__(
>                 ".set push\n\t"
>                 ".set noreorder\n\t"
> -               _ASM_SET_VIRT
> -               "tlbginvf\n\t"
> +               __tlbginvf()
>                 ".set pop");
>  }
>
> diff --git a/arch/mips/include/asm/msa.h b/arch/mips/include/asm/msa.h
> index e0a3dd52334d..236a49ee2e3e 100644
> --- a/arch/mips/include/asm/msa.h
> +++ b/arch/mips/include/asm/msa.h
> @@ -162,16 +162,26 @@ static inline void init_msa_upper(void)
>   * to allow compilation with toolchains that do not support MSA. Once all
>   * toolchains in use support MSA these can be removed.
>   */
> -_ASM_MACRO_2R(cfcmsa, rd, cs,
> -       _ASM_INSN_IF_MIPS(0x787e0019 | __cs << 11 | __rd << 6)
> -       _ASM_INSN32_IF_MM(0x587e0016 | __cs << 11 | __rd << 6));
> -_ASM_MACRO_2R(ctcmsa, cd, rs,
> -       _ASM_INSN_IF_MIPS(0x783e0019 | __rs << 11 | __cd << 6)
> -       _ASM_INSN32_IF_MM(0x583e0016 | __rs << 11 | __cd << 6));
> -#define _ASM_SET_MSA ""
> +
> +#define _ASM_SET_CFCMSA                                                        \
> +       _ASM_MACRO_2R(cfcmsa, rd, cs,                                   \
> +                     _ASM_INSN_IF_MIPS(0x787e0019 | __cs << 11 | __rd << 6)    \
> +                     _ASM_INSN32_IF_MM(0x587e0016 | __cs << 11 | __rd << 6))
> +#define _ASM_UNSET_CFCMSA ".purgem cfcmsa\n\t"
> +#define _ASM_SET_CTCMSA                                                        \
> +       _ASM_MACRO_2R(ctcmsa, cd, rs,                                   \
> +                     _ASM_INSN_IF_MIPS(0x783e0019 | __rs << 11 | __cd << 6)    \
> +                     _ASM_INSN32_IF_MM(0x583e0016 | __rs << 11 | __cd << 6))
> +#define _ASM_UNSET_CTCMSA ".purgem ctcmsa\n\t"
>  #else /* TOOLCHAIN_SUPPORTS_MSA */
> -#define _ASM_SET_MSA ".set\tfp=64\n\t"                         \
> -                    ".set\tmsa\n\t"
> +#define _ASM_SET_CFCMSA                                                \
> +               ".set\tfp=64\n\t"                               \
> +               ".set\tmsa\n\t"
> +#define _ASM_UNSET_CFCMSA
> +#define _ASM_SET_CTCMSA                                                \
> +               ".set\tfp=64\n\t"                               \
> +               ".set\tmsa\n\t"
> +#define _ASM_UNSET_CTCMSA
>  #endif
>
>  #define __BUILD_MSA_CTL_REG(name, cs)                          \
> @@ -180,8 +190,9 @@ static inline unsigned int read_msa_##name(void)            \
>         unsigned int reg;                                       \
>         __asm__ __volatile__(                                   \
>         "       .set    push\n"                                 \
> -       _ASM_SET_MSA                                            \
> +       _ASM_SET_CFCMSA                                         \
>         "       cfcmsa  %0, $" #cs "\n"                         \
> +       _ASM_UNSET_CFCMSA                                       \
>         "       .set    pop\n"                                  \
>         : "=r"(reg));                                           \
>         return reg;                                             \
> @@ -191,8 +202,9 @@ static inline void write_msa_##name(unsigned int val)               \
>  {                                                              \
>         __asm__ __volatile__(                                   \
>         "       .set    push\n"                                 \
> -       _ASM_SET_MSA                                            \
> +       _ASM_SET_CTCMSA                                         \
>         "       ctcmsa  $" #cs ", %0\n"                         \
> +       _ASM_UNSET_CTCMSA                                       \
>         "       .set    pop\n"                                  \
>         : : "r"(val));                                          \
>  }
> --
> 2.33.0
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdknN5O2gDUXwLwQDhxJc15foagrfW%3D%2Bu%2B6vtxKVHmwDOQ%40mail.gmail.com.
