Return-Path: <clang-built-linux+bncBDYJPJO25UGBBFO2UT3QKGQEY2CVRFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AD981FC011
	for <lists+clang-built-linux@lfdr.de>; Tue, 16 Jun 2020 22:35:34 +0200 (CEST)
Received: by mail-pj1-x1040.google.com with SMTP id v3sf3105579pjy.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 16 Jun 2020 13:35:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592339733; cv=pass;
        d=google.com; s=arc-20160816;
        b=B9qTFfklhikNfPEJtJlDWpB+Bx8AqCVfqcEZhifpW/phGYo/vPGuWVcW65lWlpTEsR
         I5wGtasy8CwQUozku+2TSO1iJZVTyZkhNfYn27W24kPf9CAeiDeFs647/6c2fXbncWZy
         5eIrIQVUx5AjLVlnNw9FxsTxyi3St8HttRjFIYgARTPbrB6Y0w6UGJbR1+SUEVKbDtGy
         yjTMMbFbSVp0KuEOgZOaXaicHuZnej4L07S1z7YX3Bf9SllZhPcjzyqwz4UP0yDnaU07
         FY/Hr4n8Bk3gDgL76G8J+HIEAaVTPnCKXy+1KIkssTtOen0RnYvr3UNKORfY2lyflfsL
         sEeg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=QG0SB4HRpsykqkRC02c3COZT+zPJH3O3Q4YVBYSCiKM=;
        b=Y7Tc30DikbeJeLdgteT5p18RVY57SzHOjsgZWZYikd89Bm42nuPKoRELke1xHeuoh2
         vyVoUQ69Vd7LXJl1uDRbUWdMl/sWIPS/SBevI/6h1ClzOKy8dqVYgt8czoDuffFzUz/9
         a8Rwsjwe//SVYutc5PTe1OGlubz2UlOBbvDOOv7u77FR6AltKA+9dGSMjHAGXhBycnno
         kT60W1pLSxeIRIlUyUZ8IsSPh/b1Yj8399npf0prXiNsf0GQ2n4i+1dHHLgNS7YXmaIw
         N/aOKN83QiVh1TAw4CAX9gVDroxgtQbB7HwlCBT9swTlbiNridXTckz/sRxVxeTYz5gS
         C/zA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pUTk0zYR;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QG0SB4HRpsykqkRC02c3COZT+zPJH3O3Q4YVBYSCiKM=;
        b=qCRUGEFVu89K8OAhuF9tYcvTRIXlULIMJfSbu0s4m461e25IeA2D0l7bT54ZVT0+Ce
         ASyxsKOGe8iKdppQINIMk6Hh/FHkxXjL61EbwXcWE87VwaF2Wf5IRZMvGLqm2IKnVug3
         u+EUb4P9neIVpuAzEAheiOnvmUiCR1bXVPvJc7iWaOKx4T6D8SDCVOdvNsxj7ZvvPVcF
         17khnizTbtrfOLF+GX0anJWD1guATsjpEPn/oiccqxvKpXlXovQqLvexytZbwY1SG136
         xjKdy96aa1WWFhJ334dBBEHmpR6mSXTc0MQBu2ehmbKejfMiHnp9E0WcFqd89PjWZrfa
         En8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QG0SB4HRpsykqkRC02c3COZT+zPJH3O3Q4YVBYSCiKM=;
        b=nHuC8Q0slCmk+ZamlwkuJU8DR1hX+lH+uHn9eigyxBaxB1BOw111pBAwTsfEloqzca
         gZjQFDUeNCMoZPM3Rz6WjALIGESXWeVheaLOpOUyJ9FawlNCycxsCjs6ow+QVrujvfG/
         yHuoA5t4aCi1jwL17l/nraAJzmcO8OB1OLPlW+ZT+kh6a7WYgZXVt7yW1yKrdvi0yxy1
         KdfWix3+9C0avPBZ2EiiZq9R92kaQq3dLIgAsMPNHOjIajCR9GQiMDIO1Q8jugUwqo51
         pRalr9D5q8DAkYaDIYJSwBYyua7R6NATFLmnqDamm3M53cz4C8aBuLkGwcrxvsI1Izj2
         2szw==
X-Gm-Message-State: AOAM530ueBS1drd/9Hc6/R8N3BedmMbf8wC8BMSEtHB50Pn942Qh3YCo
	hvX8jLNdkIkS/JpE2gd+Nrs=
X-Google-Smtp-Source: ABdhPJyRwec7/5yvkdSj/+mRsY3lrqcGxDKkdjdJFzf5Kte/CcqBXoCc9fDAvUahmD02GIiJhYsH9Q==
X-Received: by 2002:a17:90a:f485:: with SMTP id bx5mr4636000pjb.77.1592339733210;
        Tue, 16 Jun 2020 13:35:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:730d:: with SMTP id o13ls2097028pgc.1.gmail; Tue, 16 Jun
 2020 13:35:32 -0700 (PDT)
X-Received: by 2002:a62:8811:: with SMTP id l17mr3592672pfd.72.1592339732757;
        Tue, 16 Jun 2020 13:35:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592339732; cv=none;
        d=google.com; s=arc-20160816;
        b=jQbFvtNsWvp8Lq177GlvzGarTg5SC21+cwl0YNOmjlsYuxAVNePfL3vNJx840pVywf
         1k7w1DMdeK+M3Kgr+MB9+yaCnUksZb8FTQTsUT8wTlRJc0HYGDsQKTSG9YeHxqy2WJN5
         B8kQkfDxr+zvz24kz8zGTsbzYhtQSomvRbSLhRz0nqWaffALKa0frJuORSPhCBLc/x4S
         MexWej/YIppVJtqbi7LPtdyP2AYnrRPJmbBXWnVf9tNqDxv/MbGDNsaf6sJBOimL8obU
         SVqZ7D7z3PoxhoGdfWreoj71/786EIJKMAXWOYgMC8NYe28P7AMsJC5z5LiE/BVS1KZl
         Y+pQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=lwM+ZtJPPn5sfgSNVzMSTy1Dd0KSJttNW2qFz8u5TSw=;
        b=S0jhHjWysMOlhSX1vRFwNfqWGrfKq+SC18tlfQnpHBh1zUjI6Aguo8EGvXkQEpl7Wh
         pyXFVScQYH2KCTRUIBApK+quIGZVNvt9uphigzWc7x/S56gbuqWM9mR3Z8uY39X8iAJ1
         R/OIXdshGvuatQGqGj9EXinPYDA9lIMj1Hlk9hCC3ovT41k8wjWQNWbkzw5fdm9EtkiN
         yHuEiIQ3BO6IFAIFQVolOd0IFjBnSAT31KD991g6gBttICzk7huwRKb7HNMuj2vjKe8x
         JtHPjz0mn+Dhio+W9zHpgfMiMG9gapDXbZw4K8kBum82ylPerRwkAeqeKQ4R2jzloPfJ
         c51w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pUTk0zYR;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id mt8si163553pjb.2.2020.06.16.13.35.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Jun 2020 13:35:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id r18so82410pgk.11
        for <clang-built-linux@googlegroups.com>; Tue, 16 Jun 2020 13:35:32 -0700 (PDT)
X-Received: by 2002:aa7:9abc:: with SMTP id x28mr3614666pfi.39.1592339732172;
 Tue, 16 Jun 2020 13:35:32 -0700 (PDT)
MIME-Version: 1.0
References: <CA+icZUUWh=NzBwAa3hff6yOxY0ZirKmzOLz=a2eZUbW_cD5ECg@mail.gmail.com>
 <20200616173207.GA1497519@rani.riverdale.lan>
In-Reply-To: <20200616173207.GA1497519@rani.riverdale.lan>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 16 Jun 2020 13:35:20 -0700
Message-ID: <CAKwvOd=XH47E4GzKGw_LLVXzskJ_Z8=jf2k=ebG-o7nXFAqzjg@mail.gmail.com>
Subject: Re: LLVM/Clang: Integrated assembler: DWARF version 4 and passing
 assembler option
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Sedat Dilek <sedat.dilek@gmail.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Masahiro Yamada <masahiroy@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=pUTk0zYR;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544
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

On Tue, Jun 16, 2020 at 10:32 AM Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> On Tue, Jun 16, 2020 at 01:21:46PM +0200, Sedat Dilek wrote:
> > Hi Arvind,
> >
> > when experimenting with LLVM_IAS=1 (and later using LLVM tools via
> > LLVM=1) I saw that we need DWARF version 4 for debug.
> >
> > In [4] I saw you simplified the kbuild info detection for
> > CONFIG_DEBUG_INFO_COMPRESSED=y.
> >
> > As I know you are working in the x86/boot/build area I wanted to
> > kindly ask what do you think of these changes:
> >
> > [ kbuild: Silence dwarf-2 warning when LLVM_IAS=1 ]
>
> Cc clang-built-linux/Yamada-san.
>
> I'm by no means an expert at this stuff :) I've only been contributing
> to the kernel for a few months and am learning as I go.
>
> Regarding these changes, for gcc I would say that given we invoke the
> gcc driver for assembler files, KBUILD_AFLAGS could just be
> -g/-gsplit-dwarf, and additionally -gdwarf-4 if DEBUG_INFO_DWARF4 is
> configured, i.e.  basically just do KBUILD_AFLAGS += $(DEBUG_CFLAGS)
> once DEBUG_CFLAGS have been fully set (maybe excepting the -f options,
> though those don't appear to cause any errors even if passed for
> assembler input).
>
> Eg, right now it appears that assembler files don't have split dwo
> output with gcc, only C files do.
>
> I would assume that should also work for clang and allow clang to invoke
> its built-in assembler with whatever flags it thinks are appropriate,
> and hence should avoid the problems you get now?

I have a patch that cleans this up as part of adding support for
-gdwarf-5, please sit tight and keep an eye out for that. (I'll try to
remember to cc folks)

>
> >
> > --- a/Makefile
> > +++ b/Makefile
> > @@ -803,8 +803,10 @@ DEBUG_CFLAGS       += -gsplit-dwarf
> >  else
> >  DEBUG_CFLAGS   += -g
> >  endif
> > +ifndef LLVM_IAS
> >  KBUILD_AFLAGS  += -Wa,-gdwarf-2
> >  endif
> > +endif
> >  ifdef CONFIG_DEBUG_INFO_DWARF4
> >  DEBUG_CFLAGS   += -gdwarf-4
> >  endif
> >
> > [ kbuild: Add dwarf-4 assembler option when LLVM_IAS=1 ]
> >
> > diff --git a/Makefile b/Makefile
> > index 4d796ce78888..c3bc1ff0d900 100644
> > --- a/Makefile
> > +++ b/Makefile
> > @@ -809,6 +809,9 @@ endif
> >  endif
> >  ifdef CONFIG_DEBUG_INFO_DWARF4
> >  DEBUG_CFLAGS   += -gdwarf-4
> > +ifdef LLVM_IAS
> > +KBUILD_AFLAGS  += -Wa,-gdwarf-4
> > +endif
> >  endif
> >
> > Does passing  "-Wa,-gdwarf-4" makes sense here or is mandatory?
> > Is indendent of CONFIG_DEBUG_INFO_DWARF4=y even?
> >
> > Thanks in advance.
> >
> > Regards,
> > - Sedat -
> >
> > [1] https://github.com/ClangBuiltLinux/linux/issues/1049
> > [2] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/kbuild/llvm.rst#n47
> > [3] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/kbuild/llvm.rst#n62
> > [4] https://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-kbuild.git/commit/?h=fixes&id=7b16994437c7359832dd51d66c5c387995a91438
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200616173207.GA1497519%40rani.riverdale.lan.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DXH47E4GzKGw_LLVXzskJ_Z8%3Djf2k%3DebG-o7nXFAqzjg%40mail.gmail.com.
