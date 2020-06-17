Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB4UZU73QKGQEGW3K66Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id 500DE1FC7F5
	for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 09:57:39 +0200 (CEST)
Received: by mail-qk1-x73d.google.com with SMTP id d145sf1173838qkg.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 00:57:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592380658; cv=pass;
        d=google.com; s=arc-20160816;
        b=I+dAYbm6pejmk4XRmcA8MPj4igjlZhAywr6KgP7aXYlvroSd9OCTVfB8RRgp/tIfKv
         bBLvFqW//LGzkVQvlMuOnz8rP3pLG69b3z3Of+1iqYNuAR0zuyYm4+eoXT1poiMfJPmU
         9pNqhIWWL+JjK0oVALkmPf4W0+2eK5ZfEwmL15iByi3Nu1NFZn+Go+4784xTD0WlIhjI
         KI6EQgjCRll5rV42jeMh42/r628dyEY+Ch0saCjGYvRcwRf5qB5w0UL80jtCE8fDlecR
         QayFpV4QMytQaU2ORN8dK8a9ztf5+D5/ztRVNuMaDGUafADxNCBmYdhqWJNubeSkVfTs
         eT2Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=TZY5EcTbU6gWCFLBoLEfJVQtGgS4xoKbECwmGPG0Kvg=;
        b=RME41s7VZbZLx8INqIFawsX9cL3c8H06UA+GCPNYjXbKbw3vVquxIs7taDyO/RMXFv
         ueJZJmLhIVkfPezg+giKG2u9h5KRMSUGma2k8nEkdj5v2z+nB7pNfwtrSK4jcZa2Y9m8
         SxbBjEbkwzI1B9ihpy6e9fp/+r9SRLFXB/5W2VZaXbskfxWUq6rzclDYnQmWra10V/aw
         eo9dY7PI2v1EBrNmNyOf9LcVgLrnjQiRE8IIixxfyt5sQH3BWwiwWqGyjAHCodjFX5ef
         +rGhCLdeUfsOhN9qO3Q4uqMy9qKCYokYRJD931rcQeNA2tlZbtSBAy9atE9FNLSe/1rV
         L9jg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dDondnrz;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::144 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TZY5EcTbU6gWCFLBoLEfJVQtGgS4xoKbECwmGPG0Kvg=;
        b=BfWCtJ+Whl3sFreCWR7cXEMZIiWDBuYIOYpPkkB6JQOUFSVN9fW9sTx7kMF3Qgtlp2
         3Ntgfoe9q90Jnf1we0wb0VqHGGu8JnZqwFcc5q29X8Zm9pgvbEn3eR228dZzU4ieO49o
         rhpZpIJojbYZROTB5nCjxV+JUIBvKgdf+pWWH8J1abn0lKUbX6nQiZFZZfTd7fFZVqi5
         aIS1buJkM7qb0nvxzrKtTSAIiHJf04ReV8BEernyFMjUGZWew9DX3paDBz2PEHvz2pVn
         Y9Zjejs4ncsFH25T26AdurViQKR8W+8ZKS/QHde1GQ1rX0RXUJCgHaTMM7IfEhdjettu
         PmVA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TZY5EcTbU6gWCFLBoLEfJVQtGgS4xoKbECwmGPG0Kvg=;
        b=bnbWYJXYmY02RIGQcY0i3qX87c0OxEeTga2GTaOtXvWWoCOuR0lMyKvPHnhuqeXS+1
         o2Wjtxg4ttHC8UDOWXlt77krHgyXlflG/BB0ftaGUlUmwv6cnNV+tw+FkZCpq4dKots2
         0h1nFc2c/ooMbs9X5ipkcDNzq9z/JkNeWjaAjE5nEQc2wsxJ4SDja/Gdm8+CYLUSQezp
         6M+hKW/iPKf6EdN73exJc/cmAQPLEac+RrXy1UCy9lJzne/fCXNhW3sRBwWXaQ/zLKIU
         mnFXYst4J+1FWGH95ZH++6a3xhoh9dSCkZQL7OsIgMRBsUAxZ80nNFhPXv4byxVSNFgI
         Swtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TZY5EcTbU6gWCFLBoLEfJVQtGgS4xoKbECwmGPG0Kvg=;
        b=pcWy4gaadgXBFXwHb979UH3ChlueGdzRBqoyt4FnLtjTaNdWqkUrgWFezAoWIw/TBO
         O1EswXVi7vq3Dv6+2q09DC66E1BHDzZPMZDLu2fxw4jQpbCX2S6LhOZMWHtXgjvIkDNA
         cKODIKk51wUtaO+amxxBcPjk3EanDb7DRCYPLw7Sm/MOo4Km8bZ42CqiBHOsAOg+0jwh
         EOgNTK9lKdYDDWhJlg0B2Auz8YKRh5+CTJrAJI97wfxIKgRcybtgw89KMBCq2N6jxJHm
         +QQ9Z/Ei1h7DnrhQPZgz8nNhmIJ4oH0jvXXho2gBoU0NrjsDMiCVq3ScfzZRPbgGrxNR
         igcw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532dZX5bCJ5eL0UABNyOzbYOMmIDwKyYU6O075x9/BqVJQAKC7+o
	J5gEC/je3ilwBrZ78ubwrwQ=
X-Google-Smtp-Source: ABdhPJwi2I/8VD6f/CNzvM6TCz6tHEtylDVOf8IYUwzpVjm+49vVmXIV9bcGy4OqcFQyZTnteBMyMA==
X-Received: by 2002:a05:620a:13cc:: with SMTP id g12mr24909412qkl.473.1592380658173;
        Wed, 17 Jun 2020 00:57:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:f105:: with SMTP id k5ls659462qkg.3.gmail; Wed, 17 Jun
 2020 00:57:37 -0700 (PDT)
X-Received: by 2002:a37:6191:: with SMTP id v139mr2193564qkb.213.1592380657756;
        Wed, 17 Jun 2020 00:57:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592380657; cv=none;
        d=google.com; s=arc-20160816;
        b=en6mT5D9lomWgNotyPurfMWqbMCiynk0t4WUqEoKancGUW4aKvXCyZu+wfEQU4jS16
         GavqbXAYw2eJQNwuH+WfVlzqpWrxfsZXBBtOAI72Ynof/03NLfAK/q5RQvi8EOiQ2+C0
         2MT+fSYRnyaaQeafHQo2vW3ach4ZYE2Ph5j4jzVUoePGtL6UxmSQN2MjbF5j5tPN8t3R
         yY0WmHS9sObq0+Ef2qTRpQQ7rARF5oVPfxkulr4g/rZRs1RyJucNTWJm132iAvBNzDjB
         asawVealOFY4XAp3Kp88slyO7enGM58cvnJo2bhMil2WX10H8fBtNRtX8UTBJL1ff1jS
         YU5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=0bdUFXEIrgYqjef4zzfm7OqJIMUGtArnPxzCjPWEbwA=;
        b=X0xlRfAk717P+v02ubiT53utGAOFGSlhxtvto+Eo31ZFxFf84R2+fb2HMsxQn/nMcZ
         pTD+Roh8eh5ahr6s2lrZscBonSrXRj1IymDV3DzOzqpuUlK9KRRcJtlWARQZmEtdGJ0h
         pgdN7pmDCJaJBGJEF+KWe7BA5r+fpwHF9NSOYEDPEpA8tRtNjTTtoAglBIXfoMRNckbX
         FT9HF7tHl1PUCBkO/VUlOg883zIpLxl06/dAz7bxuaMTzgqtNQGRMxlb2wf6z+XPlZIi
         w0gNS/aXzLpTWScLi5tiFXpB8qHgh6JIaAvXuV+8ThnZy3QcrE6t7oO0dB8uk6g77mJi
         0TXg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dDondnrz;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::144 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x144.google.com (mail-il1-x144.google.com. [2607:f8b0:4864:20::144])
        by gmr-mx.google.com with ESMTPS id p45si1227472qtk.2.2020.06.17.00.57.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Jun 2020 00:57:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::144 as permitted sender) client-ip=2607:f8b0:4864:20::144;
Received: by mail-il1-x144.google.com with SMTP id a13so1266536ilh.3
        for <clang-built-linux@googlegroups.com>; Wed, 17 Jun 2020 00:57:37 -0700 (PDT)
X-Received: by 2002:a92:1904:: with SMTP id 4mr6960604ilz.212.1592380657188;
 Wed, 17 Jun 2020 00:57:37 -0700 (PDT)
MIME-Version: 1.0
References: <CA+icZUUWh=NzBwAa3hff6yOxY0ZirKmzOLz=a2eZUbW_cD5ECg@mail.gmail.com>
 <20200616173207.GA1497519@rani.riverdale.lan> <CAKwvOd=XH47E4GzKGw_LLVXzskJ_Z8=jf2k=ebG-o7nXFAqzjg@mail.gmail.com>
 <CA+icZUWm8SRiNLGsu+SXszOSOge2yfvkaBGTXLPKLTKKtFFuDQ@mail.gmail.com> <20200617062109.woy2uyefdplw3pst@google.com>
In-Reply-To: <20200617062109.woy2uyefdplw3pst@google.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 17 Jun 2020 09:57:25 +0200
Message-ID: <CA+icZUX-Qx46YmFDN+zo30TUMwXe8fDShhmjenRSbkj184dhhw@mail.gmail.com>
Subject: Re: LLVM/Clang: Integrated assembler: DWARF version 4 and passing
 assembler option
To: Fangrui Song <maskray@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Arvind Sankar <nivedita@alum.mit.edu>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Masahiro Yamada <masahiroy@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=dDondnrz;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::144
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

On Wed, Jun 17, 2020 at 8:21 AM Fangrui Song <maskray@google.com> wrote:
>
> I have only subscribed to clang-built-linux@ so I might miss some
> context. Just wanted to clarify what -Wa,-gdwarf-5 does
>
> On 2020-06-17, Sedat Dilek wrote:
> >On Tue, Jun 16, 2020 at 10:35 PM Nick Desaulniers
> ><ndesaulniers@google.com> wrote:
> >>
> >> On Tue, Jun 16, 2020 at 10:32 AM Arvind Sankar <nivedita@alum.mit.edu> wrote:
> >> >
> >> > On Tue, Jun 16, 2020 at 01:21:46PM +0200, Sedat Dilek wrote:
> >> > > Hi Arvind,
> >> > >
> >> > > when experimenting with LLVM_IAS=1 (and later using LLVM tools via
> >> > > LLVM=1) I saw that we need DWARF version 4 for debug.
> >> > >
> >> > > In [4] I saw you simplified the kbuild info detection for
> >> > > CONFIG_DEBUG_INFO_COMPRESSED=y.
> >> > >
> >> > > As I know you are working in the x86/boot/build area I wanted to
> >> > > kindly ask what do you think of these changes:
> >> > >
> >> > > [ kbuild: Silence dwarf-2 warning when LLVM_IAS=1 ]
> >> >
> >> > Cc clang-built-linux/Yamada-san.
> >> >
> >> > I'm by no means an expert at this stuff :) I've only been contributing
> >> > to the kernel for a few months and am learning as I go.
> >> >
> >> > Regarding these changes, for gcc I would say that given we invoke the
> >> > gcc driver for assembler files, KBUILD_AFLAGS could just be
> >> > -g/-gsplit-dwarf, and additionally -gdwarf-4 if DEBUG_INFO_DWARF4 is
> >> > configured, i.e.  basically just do KBUILD_AFLAGS += $(DEBUG_CFLAGS)
> >> > once DEBUG_CFLAGS have been fully set (maybe excepting the -f options,
> >> > though those don't appear to cause any errors even if passed for
> >> > assembler input).
> >> >
> >> > Eg, right now it appears that assembler files don't have split dwo
> >> > output with gcc, only C files do.
> >> >
> >> > I would assume that should also work for clang and allow clang to invoke
> >> > its built-in assembler with whatever flags it thinks are appropriate,
> >> > and hence should avoid the problems you get now?
> >>
> >> I have a patch that cleans this up as part of adding support for
> >> -gdwarf-5, please sit tight and keep an eye out for that. (I'll try to
> >> remember to cc folks)
> >>
> >
> >Please CC me, thanks.
> >
> >- Sedat -
> >
> >> >
> >> > >
> >> > > --- a/Makefile
> >> > > +++ b/Makefile
> >> > > @@ -803,8 +803,10 @@ DEBUG_CFLAGS       += -gsplit-dwarf
> >> > >  else
> >> > >  DEBUG_CFLAGS   += -g
> >> > >  endif
> >> > > +ifndef LLVM_IAS
> >> > >  KBUILD_AFLAGS  += -Wa,-gdwarf-2
> >> > >  endif
> >> > > +endif
> >> > >  ifdef CONFIG_DEBUG_INFO_DWARF4
> >> > >  DEBUG_CFLAGS   += -gdwarf-4
> >> > >  endif
> >> > >
> >> > > [ kbuild: Add dwarf-4 assembler option when LLVM_IAS=1 ]
> >> > >
> >> > > diff --git a/Makefile b/Makefile
> >> > > index 4d796ce78888..c3bc1ff0d900 100644
> >> > > --- a/Makefile
> >> > > +++ b/Makefile
> >> > > @@ -809,6 +809,9 @@ endif
> >> > >  endif
> >> > >  ifdef CONFIG_DEBUG_INFO_DWARF4
> >> > >  DEBUG_CFLAGS   += -gdwarf-4
> >> > > +ifdef LLVM_IAS
> >> > > +KBUILD_AFLAGS  += -Wa,-gdwarf-4
> >> > > +endif
> >> > >  endif
> >> > >
> >> > > Does passing  "-Wa,-gdwarf-4" makes sense here or is mandatory?
> >> > > Is indendent of CONFIG_DEBUG_INFO_DWARF4=y even?
> >> > >
> >> > > Thanks in advance.
> >> > >
> >> > > Regards,
> >> > > - Sedat -
>
> -Wa,-gdwarf-4 tells the compiler driver to pass -gdwarf-4 to the
> assembler (most common: GNU as, clang integrated assembly).
>
> In GNU as, as -g a.s does very little:
>
> 0x0000000b: DW_TAG_compile_unit
>                DW_AT_stmt_list   (0x00000000)
>                DW_AT_low_pc      (0x0000000000000000)
>                DW_AT_high_pc     (0x000000000000000b)
>                DW_AT_name        ("a.s")
>                DW_AT_comp_dir    ("/tmp/c")
>                DW_AT_producer    ("GNU AS 2.34")
>                DW_AT_language    (DW_LANG_Mips_Assembler)
>
> Basically it just tells the debugger an address range corresponds to a.s
>
> clang integrated assembly additionally synthesizes DW_TAG_label:
>
> 0x0000000b: DW_TAG_compile_unit
>                DW_AT_stmt_list   (0x00000000)
>                DW_AT_low_pc      (0x0000000000000000)
>                DW_AT_high_pc     (0x000000000000000b)
>                DW_AT_name        ("a.s")
>                DW_AT_comp_dir    ("/tmp/c")
>                DW_AT_producer    ("clang version 11.0.0 ")
>                DW_AT_language    (DW_LANG_Mips_Assembler)
>
> 0x00000043:   DW_TAG_label
>                  DW_AT_name      ("foo")
>                  DW_AT_decl_file ("/tmp/c/a.s")
>                  DW_AT_decl_line (6)
>                  DW_AT_low_pc    (0x0000000000000000)
>
> It emits a bit more, but DW_TAG_label may not be useful. gdb knows the line number of 'foo' by
> searching the address of 'foo' (from symbol table) in .debug_line
>
> The DWARF version of assembly files matters very little.
>

Thanks for the explanations.

Does `KBUILD_AFLAGS  += -Wa,-gdwarf-4` can "fool" (in sense of
irritate) the integrated assembler.
Do you recommend to drop that line from the top-level Makefile in the
Linux-kernel?

BTW, when we talk of "integrated assembler" it is "Clang's integrated
assembler" or "LLVM integrated assembler"?

- Sedat -

> >> > > [1] https://github.com/ClangBuiltLinux/linux/issues/1049
> >> > > [2] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/kbuild/llvm.rst#n47
> >> > > [3] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/kbuild/llvm.rst#n62
> >> > > [4] https://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-kbuild.git/commit/?h=fixes&id=7b16994437c7359832dd51d66c5c387995a91438
> >> >
> >> > --
> >> > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> >> > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> >> > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200616173207.GA1497519%40rani.riverdale.lan.
> >>
> >>
> >>
> >> --
> >> Thanks,
> >> ~Nick Desaulniers
> >
> >--
> >You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> >To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> >To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUWm8SRiNLGsu%2BSXszOSOge2yfvkaBGTXLPKLTKKtFFuDQ%40mail.gmail.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUX-Qx46YmFDN%2Bzo30TUMwXe8fDShhmjenRSbkj184dhhw%40mail.gmail.com.
