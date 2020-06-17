Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB5WAU33QKGQECCC6U6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ED511FC55D
	for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 06:47:52 +0200 (CEST)
Received: by mail-il1-x13f.google.com with SMTP id x63sf677558ilk.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 16 Jun 2020 21:47:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592369271; cv=pass;
        d=google.com; s=arc-20160816;
        b=V1JPI/yHposiDTuHTMWMv7Ky6GUT/lwqz7/UeiICfT3kuxO20OtXF1/zPlmqlxyoH9
         +8WZmu/ZGR0whj9RK/q4Zn7DEFMrCqsQzByBv7tHj7GXUBgM6bhZegQfJ0R91nkU9l26
         18uEEQdlWMs/WLeKuU/fqMVc32PoOpkcE3QPxUkli0Sxm917HIumwt9EFGfOUgKogvt2
         3p7tMB6MYG9yqmms7CGmts09fJ0doG4lCx58scIK5vr1+5iCuGZEuSFQWFHaNMe3JQ6d
         /nF1aTUq9zsOGURd9hnolb1DXzZng05I5S6b8FOliFQKCHT7+RPt5e5uaTKlaqjFnWuT
         Sq5w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=y7zj3C0RTSOQYljlYMQgJhTdXIIGbo843WxE/CJrGUA=;
        b=h519cD9Kj5YdPihzMzMEc+tXSaUUrHOVCV96twQjQuyXL4eY8SmrpdwsmKiPTHSrSS
         TW9ESHxgEh5cDFFFXKzv3Yj86MjR1+R4QhdQJl3SK7YeN0gHHxDcoJigA2e2zwpp8nPw
         NzwMusQ2dvwK3wyyH4eaTiqmYZpvekwQT++Rqi9Fbzzv7lb/9A0F3ffYJujkx4UqFkIk
         7XGzMwrAa3rWEgXyCq52T4LnxGopuiO1LSt3YTM0/x2SdtT7YZIBdqzQFuC4ir7VEvW9
         nEWvDaXpHI2kXp9hmpnoT41Dl82Ocxf09DqAU5+eb+LUdj/AG5VnJG4FkjPgu/d8DJoF
         Wzyg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XU+xEhfU;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=y7zj3C0RTSOQYljlYMQgJhTdXIIGbo843WxE/CJrGUA=;
        b=ONFsVOAf2gNnzPkEUF0QKUqGm9WqhMA7oK2oKVGavurlerlgo50JRW4rNfQzYMIf8N
         fhppfrWvT+Y4hZpZZH9ISYWSckh2M0iUFYCV+iYA9DrS85lxM8r6+zaItkEgosOj/i1K
         rjIyVc66y2Nr8kVm8dCy6wAJAVP/uYpcoCiWWzFPdGa6wmTit3b0uqQc6jwrN4B66ORg
         wioCBmnXTCOcgaKe8LOvs4KsQ5d/UR8ZVqfoQF7bJh1JLRxzxn9ioK34OKykvfeuTffV
         NyCsesGWgOdbxxKimMLI33l/yh1ug0lPtOC5r3KlAFns9Uhx+vlZOsruj75nqquUlyRT
         vgPA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=y7zj3C0RTSOQYljlYMQgJhTdXIIGbo843WxE/CJrGUA=;
        b=sXDK7XHr174cJWfffrtrCPDeH/GtK7vTFWWAjKc74NefgINOO3wz/49U/mhn2mXmZv
         Srd2lh/hVKtB71GeHvV9c1R6fPR2CMcuBxl8p34cc2njPt8joUmi7D2//9xoCSSP/HEr
         n6C46TiqaUWX1VtOCYQd4eUP3W2asp3+qUA0vaCx+AHVsxoQl/ExwUkwrO01GoX9SAn9
         7lJXOolsHYkz1qS62C1Y/rxhuQs0xLNabeIjbR8GtNr20NBFVH6fWVYpTwlpEWhZVDfm
         b0P2vdeA6T4m8VILgvSaHp42nd50uDmF13bEU3z5VNa+DboGozfzk2OCk4GqlyczPtTn
         uERw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=y7zj3C0RTSOQYljlYMQgJhTdXIIGbo843WxE/CJrGUA=;
        b=kBg3unqFV/n1ljiPCWLky6enpCM4PmDpirlEck2nTzLwuW9xE49GuD0X6riuAMctdS
         7AfAhy2QP7q8e36C51fS5sIh5qTZFKWHQ6oaQhf6Tp/0KYVFqzdUBlRoB+x4s6x6aXSB
         Jaa8CWRTaoax/OXgumgtcSQPXhguZUx9QMulUUXN0/n4F/ZxIxmgGVYFYJwVIZDpG37o
         v9ouAdcVcq5bb/LYKxuZckRdwH45aTT0b6vKFFhwTzBS1EZ17aEI+PzfVaaJ3URzFBsT
         UvYLz0jEUFG4viFEIOkSLU5JBuTTfJSebV3M7HR/BA2na28zemEqgzjHF6JhTAwX34YM
         Wy8g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530pKYwL/Xv47r9XHF+TWtWkXksbh83qpzybGoEOcS3EmXqwnOHY
	w9L7PJOob4/IHv6mF7XRQnE=
X-Google-Smtp-Source: ABdhPJw29dpshFFsunVAHx6ehBLHtHUHpPdoA+Ez210m/LQpk2d653y/s123cee4DFOod/AXWsy4Jw==
X-Received: by 2002:a6b:f919:: with SMTP id j25mr6119787iog.185.1592369270820;
        Tue, 16 Jun 2020 21:47:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:1350:: with SMTP id u16ls103753jad.8.gmail; Tue, 16
 Jun 2020 21:47:50 -0700 (PDT)
X-Received: by 2002:a02:6a1a:: with SMTP id l26mr29550867jac.66.1592369270291;
        Tue, 16 Jun 2020 21:47:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592369270; cv=none;
        d=google.com; s=arc-20160816;
        b=YxfUfDt0bF82C5Tx21EglRNtS9hwERUFSKooiVzgOeX0wK5Nyf2Fj43xYlVScyhvy+
         DYsqqGG3CKVpPCaRO9xaEU+PwcnBmF9L+rN/vjS71/lFBssksuGdPBKGdgACm7tM2HNb
         3xygM3bnE7/ciI9myK75kuSPAgfWVrCGevMP6M/GUIAx5Klr2z2Z7ligWODaycd8QwcS
         ovf2flYQvz8a7vPdSTLYOlcHVnRBVrWKPDZnL7ZYddE3fxo4ZHhwvVycZ/4+QfYKLlJQ
         txZHzKIyEVCwxSDrBWwIa2djF4DkXDj/y34PrMXbdayMlwrX/JC1vmK+W44ym37+b/2u
         fSKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ohMtgHNHdMwzQpgfCtKlTVNX1i5ceb9VHvepUup8PbM=;
        b=jtEqbMzihuaqKCY+XvYLyoPTuYF6XFAQ60wIESt2KJVNtIiSf2l23X5mUmgf2hg4Dv
         tBjBKgFnw/58pnyPG2j2yVd9/XoOJq1oh1nIJUVwv8vOwzWmIwAfWnl32JMQsg30Xkkf
         f3q++vAauWTM+bkhlLUAuEbVuiyh5Kr1weSu3FNyEX+oduGx8AyE+69RIW6Rs2Wat90W
         IykUV6gIjqFLE30cV2RjhLMRxTngkmG4kKCeDPeT5wpFt9itVWL82N2c9ub5hzz19Rn1
         TD6I/a7IBUcq+G9QE+RySnjlWraHahuZxIMfY5BNUTcolVI1Vfp1iCWVRovEvZY0DcFS
         UWdw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XU+xEhfU;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd43.google.com (mail-io1-xd43.google.com. [2607:f8b0:4864:20::d43])
        by gmr-mx.google.com with ESMTPS id i20si79424iow.2.2020.06.16.21.47.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Jun 2020 21:47:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) client-ip=2607:f8b0:4864:20::d43;
Received: by mail-io1-xd43.google.com with SMTP id r77so1308617ior.3
        for <clang-built-linux@googlegroups.com>; Tue, 16 Jun 2020 21:47:50 -0700 (PDT)
X-Received: by 2002:a02:6641:: with SMTP id l1mr29733903jaf.23.1592369269999;
 Tue, 16 Jun 2020 21:47:49 -0700 (PDT)
MIME-Version: 1.0
References: <CA+icZUUWh=NzBwAa3hff6yOxY0ZirKmzOLz=a2eZUbW_cD5ECg@mail.gmail.com>
 <20200616173207.GA1497519@rani.riverdale.lan> <CAKwvOd=XH47E4GzKGw_LLVXzskJ_Z8=jf2k=ebG-o7nXFAqzjg@mail.gmail.com>
In-Reply-To: <CAKwvOd=XH47E4GzKGw_LLVXzskJ_Z8=jf2k=ebG-o7nXFAqzjg@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 17 Jun 2020 06:47:38 +0200
Message-ID: <CA+icZUWm8SRiNLGsu+SXszOSOge2yfvkaBGTXLPKLTKKtFFuDQ@mail.gmail.com>
Subject: Re: LLVM/Clang: Integrated assembler: DWARF version 4 and passing
 assembler option
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Arvind Sankar <nivedita@alum.mit.edu>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Masahiro Yamada <masahiroy@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=XU+xEhfU;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d43
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, Jun 16, 2020 at 10:35 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Tue, Jun 16, 2020 at 10:32 AM Arvind Sankar <nivedita@alum.mit.edu> wrote:
> >
> > On Tue, Jun 16, 2020 at 01:21:46PM +0200, Sedat Dilek wrote:
> > > Hi Arvind,
> > >
> > > when experimenting with LLVM_IAS=1 (and later using LLVM tools via
> > > LLVM=1) I saw that we need DWARF version 4 for debug.
> > >
> > > In [4] I saw you simplified the kbuild info detection for
> > > CONFIG_DEBUG_INFO_COMPRESSED=y.
> > >
> > > As I know you are working in the x86/boot/build area I wanted to
> > > kindly ask what do you think of these changes:
> > >
> > > [ kbuild: Silence dwarf-2 warning when LLVM_IAS=1 ]
> >
> > Cc clang-built-linux/Yamada-san.
> >
> > I'm by no means an expert at this stuff :) I've only been contributing
> > to the kernel for a few months and am learning as I go.
> >
> > Regarding these changes, for gcc I would say that given we invoke the
> > gcc driver for assembler files, KBUILD_AFLAGS could just be
> > -g/-gsplit-dwarf, and additionally -gdwarf-4 if DEBUG_INFO_DWARF4 is
> > configured, i.e.  basically just do KBUILD_AFLAGS += $(DEBUG_CFLAGS)
> > once DEBUG_CFLAGS have been fully set (maybe excepting the -f options,
> > though those don't appear to cause any errors even if passed for
> > assembler input).
> >
> > Eg, right now it appears that assembler files don't have split dwo
> > output with gcc, only C files do.
> >
> > I would assume that should also work for clang and allow clang to invoke
> > its built-in assembler with whatever flags it thinks are appropriate,
> > and hence should avoid the problems you get now?
>
> I have a patch that cleans this up as part of adding support for
> -gdwarf-5, please sit tight and keep an eye out for that. (I'll try to
> remember to cc folks)
>

Please CC me, thanks.

- Sedat -

> >
> > >
> > > --- a/Makefile
> > > +++ b/Makefile
> > > @@ -803,8 +803,10 @@ DEBUG_CFLAGS       += -gsplit-dwarf
> > >  else
> > >  DEBUG_CFLAGS   += -g
> > >  endif
> > > +ifndef LLVM_IAS
> > >  KBUILD_AFLAGS  += -Wa,-gdwarf-2
> > >  endif
> > > +endif
> > >  ifdef CONFIG_DEBUG_INFO_DWARF4
> > >  DEBUG_CFLAGS   += -gdwarf-4
> > >  endif
> > >
> > > [ kbuild: Add dwarf-4 assembler option when LLVM_IAS=1 ]
> > >
> > > diff --git a/Makefile b/Makefile
> > > index 4d796ce78888..c3bc1ff0d900 100644
> > > --- a/Makefile
> > > +++ b/Makefile
> > > @@ -809,6 +809,9 @@ endif
> > >  endif
> > >  ifdef CONFIG_DEBUG_INFO_DWARF4
> > >  DEBUG_CFLAGS   += -gdwarf-4
> > > +ifdef LLVM_IAS
> > > +KBUILD_AFLAGS  += -Wa,-gdwarf-4
> > > +endif
> > >  endif
> > >
> > > Does passing  "-Wa,-gdwarf-4" makes sense here or is mandatory?
> > > Is indendent of CONFIG_DEBUG_INFO_DWARF4=y even?
> > >
> > > Thanks in advance.
> > >
> > > Regards,
> > > - Sedat -
> > >
> > > [1] https://github.com/ClangBuiltLinux/linux/issues/1049
> > > [2] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/kbuild/llvm.rst#n47
> > > [3] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/kbuild/llvm.rst#n62
> > > [4] https://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-kbuild.git/commit/?h=fixes&id=7b16994437c7359832dd51d66c5c387995a91438
> >
> > --
> > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200616173207.GA1497519%40rani.riverdale.lan.
>
>
>
> --
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUWm8SRiNLGsu%2BSXszOSOge2yfvkaBGTXLPKLTKKtFFuDQ%40mail.gmail.com.
