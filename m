Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBJFDVD3QKGQEJTNYJOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id B39BA1FCDB5
	for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 14:50:45 +0200 (CEST)
Received: by mail-pj1-x103f.google.com with SMTP id fa9sf1468263pjb.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 05:50:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592398244; cv=pass;
        d=google.com; s=arc-20160816;
        b=s95/EEibLqBEiAn6lJaTWrpcu0XxGAIcL1noogHbkm16UQQqcjSVOhs4gnpkTLoKd5
         1loCSQJtb8sui0ZDs1zKgdIuC7JHnyM2AqxYkq4OLMiE8250d+mqxA7fy8+eZDboMwes
         mz8YkLzKTe6xah2tG0VLoqeGLLq3K1CSQScr4LZRBTMoldG623/RP02V3G+M9qh4Evzf
         8oao/uWahn/7l8Wd1pBQ24xlh9zgZ5kMI0lkW/nmvEyyHQONanvZFvvk3QXrr6i8AJmU
         07+La7wwTjYz2hkJ07vwU9yAW9qxjqya4TRwlnZRUR6nLvZoLEK04uci5BYjpsJ1CvFb
         VHKw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=cH01qDGwXwGH9vv18uC5GjiFwKF06K63MEw5gh4I3rc=;
        b=og6zPXPCvMjYh0o7jipMMiDlzuocADfBVKz3M0v/73pBtQoFXhnHEWZ7OyTq4tJ//J
         vmWf6bg7V9MNLZR80J3XU87tsvxrF8KsSr+Ug7FfkJ2KpsRWMzfw8sndDlFMUCM3nfU1
         AcduimEDeq9begWvavynTROjRWFLLXPUHpH2RqH0LT8IAGhJ+Nkmjyp39yyVKsyGV4+X
         dfwQ1JObvbHrH+ni+6uY0FfFHWo1qtm5msPIz+CJC28JpHZ6HV8HfRWYzv4Jr0yuFPxy
         rlqZ08pmnUqRqV5IZJ8HmLRs/bZMv7IiPoHV5eW53byZedx5Gc51hZBMRZ1WoJc7XNlS
         KTDw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=o49qL1rL;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cH01qDGwXwGH9vv18uC5GjiFwKF06K63MEw5gh4I3rc=;
        b=RwVhPhI4GecZuegoNsygto9cFnMfnm8orVivWum5a4rr70CFXJ3dwHKQ6rKJDTDGsC
         44PcmoL0yLzyu2AQz5pLeNLvNOjZszbpIGFI1zJpVZzmCeIJsEcUMtRVuaxkhlEhRyn5
         p6LjYB9EOGlTvG4QzbnGIZT815emRuxbd1CZAhC2DKE5PLtG+hnLIRnlFk9yW4BEug0I
         vSWn918cp4R8SE8JKTrLgwLX/4Si4oiraAj3p+Xq86NmlbwB+jrz/KGOI/q3mHJuL1ZE
         Qo1Nr0GGmfx+BiWwKWddZ9MxFl73AZYdqq/cNbRXqRsMXU7IV3z1/mYWpHi7UyN9e3Zi
         WSFQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cH01qDGwXwGH9vv18uC5GjiFwKF06K63MEw5gh4I3rc=;
        b=nYzAamAmlX8pb1KU7lrMn+e288aDWhdnkc/SzvaJd4YPQN9dGoszT7AR6Heyli7W5e
         G86vKLzJGE0rjnW+p8EpSrCh6ChsNWWBbERVjArYh/QbviCy2SAJjWSQmM9VDnHcLx0v
         gbGDG43DPOQn1X5qbqLXScIRNoZpZE3CQFoRnM5OuwFN1g00+soMu41gm9QJ2+Vbl0SC
         6kAnqPSPcTahLF3+AnPRcOtiiY6aeZl6Tox3Ycemge8q5h3pEfPvTbTF7PNBZf/6RBgJ
         OgphMSMi8Yg+YbkTuCf2FANE6adgXUiINGEtrGa79f/igFlkPhx3z2IG/DMtm70XB3hj
         bUlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cH01qDGwXwGH9vv18uC5GjiFwKF06K63MEw5gh4I3rc=;
        b=jIbWyD+aj45AWUnVqGhQQoiwmEff0Iaxd7/goBI6CxNDlROVTZi7nthMvrUfX0eEsc
         EKtkJJhCKRJ5dYzflJ/n1UKB8ZJxO8l5lW/w0Eq7q2iuEdaOpdUA7uiT8IPXbHdp4e1y
         gJCKkaZqxnZ5b+qh8Y0/aPvXa2bIXSwF0/WkEvxMQd9GNr027fnc7558fkX/Q9AjEiHQ
         8GqHgBZelOkNwDkXHO/6a4TPwj7dqjGUsfuVo5Gena1i+bAk6PElkCa1KX03Bta1K/rZ
         J0f3a5GBd+CE2Obemhg/3D8FAqJtQ+UlBhU3OgBup6cc6nDl5jw1X2i5n2kPx8LaTXeW
         8OGg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530V8D7KiBmVGA9cyOyrkQi7UTClYsga2ggmKJUwt9g/EykCcewD
	E6xYyR9+rq62AnewRoPt4RA=
X-Google-Smtp-Source: ABdhPJx2BFfCtxSFPgqv9VoskA4tKNalB/zbyvzrQxkcNXqeIW137w2qOmzGWNdNECePREGYsn+g9w==
X-Received: by 2002:a62:80cc:: with SMTP id j195mr6613046pfd.138.1592398244365;
        Wed, 17 Jun 2020 05:50:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:bc4a:: with SMTP id t10ls882794plz.4.gmail; Wed, 17
 Jun 2020 05:50:44 -0700 (PDT)
X-Received: by 2002:a17:90a:25cc:: with SMTP id k70mr8511227pje.174.1592398243925;
        Wed, 17 Jun 2020 05:50:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592398243; cv=none;
        d=google.com; s=arc-20160816;
        b=SmCJSIAkjxxkSGG/nGUJLBrL7KRlAWtbyGBpV7ydNxJCv09VGpAr/WqNClLgNjgQtH
         LzMMm8b4h16hC2Mx0Df8CN7clv73vCSz4BaACYphEx9pFw8xJmS6yEqJMiXZn65nUN42
         yialSvPFWscP6dDvKMmIg4wp5Lbxo286RA0PzUimC92S446ah6tFp9sJShzkoUvCt8LG
         lIHDHvCd50n0jA4L/+eJqm0qjOa70aerqE9Fr3gyM40xHzoeTyYVa9tB1t80sT7xSxUG
         3Y3Llxs5gIORF8ygbzVbE9cBcXIWPrnhr1jdkrN8i0GntHLm2r2pOmaSZxSpZX8Q2hcC
         4o6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=g8P4pWbwIbcYbmu5BQB7+3k6TrnpByNkNVZTZ5nUgrE=;
        b=kABpwaelzJgouoGPOwrRNZKR5TOUNcKHs0wNp/f1xhs6kTpiIfwJm2tcFvurDfwRS3
         81KpGXCHkXHQkxuf7eKCf8MQbUsXezeq2URSBaMJjy4oOqVZjCQXnRJnMMdqgv/B1YH+
         LcbLZDIgNWCJOD/yJ3fAt8ASkWJQ34m4cFP4j8wcmDwdMJ7n4UM0OnIYRuaLI2vqQu/r
         jNjSqwElkME+3q/SFlVxyT4k4exLRQPilm16xieQPk9qgCglkhCrT/h5vPjoGt70k2PU
         myKBPnf020lZAfqRBSBl6omjK7WuO4BQK/6TF13o6Ik1k4F3WlUGF34s9vkan6Y4Hywj
         ILWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=o49qL1rL;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd44.google.com (mail-io1-xd44.google.com. [2607:f8b0:4864:20::d44])
        by gmr-mx.google.com with ESMTPS id p9si1040384plr.1.2020.06.17.05.50.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Jun 2020 05:50:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) client-ip=2607:f8b0:4864:20::d44;
Received: by mail-io1-xd44.google.com with SMTP id p20so2515803iop.11
        for <clang-built-linux@googlegroups.com>; Wed, 17 Jun 2020 05:50:43 -0700 (PDT)
X-Received: by 2002:a02:37d4:: with SMTP id r203mr31442780jar.121.1592398243218;
 Wed, 17 Jun 2020 05:50:43 -0700 (PDT)
MIME-Version: 1.0
References: <CA+icZUUWh=NzBwAa3hff6yOxY0ZirKmzOLz=a2eZUbW_cD5ECg@mail.gmail.com>
 <20200616173207.GA1497519@rani.riverdale.lan> <CAKwvOd=XH47E4GzKGw_LLVXzskJ_Z8=jf2k=ebG-o7nXFAqzjg@mail.gmail.com>
 <CA+icZUWm8SRiNLGsu+SXszOSOge2yfvkaBGTXLPKLTKKtFFuDQ@mail.gmail.com>
 <20200617062109.woy2uyefdplw3pst@google.com> <CA+icZUXRUF5vCStZ8GYwC0mMOH2kh3Ce3oguu-oocVR9EhzCbQ@mail.gmail.com>
 <CA+icZUVdZL5ka8FuiR74A0aiQVfEcdGoO4-2BYizRBp9k5SGLQ@mail.gmail.com>
In-Reply-To: <CA+icZUVdZL5ka8FuiR74A0aiQVfEcdGoO4-2BYizRBp9k5SGLQ@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 17 Jun 2020 14:50:30 +0200
Message-ID: <CA+icZUWceOpR-vwOi-Q2eLFRNOujfBw9zZ9h31OZ+bB4RzCHoA@mail.gmail.com>
Subject: Re: LLVM/Clang: Integrated assembler: DWARF version 4 and passing
 assembler option
To: Fangrui Song <maskray@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Arvind Sankar <nivedita@alum.mit.edu>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Masahiro Yamada <masahiroy@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=o49qL1rL;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d44
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

On Wed, Jun 17, 2020 at 2:44 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Wed, Jun 17, 2020 at 2:24 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >
> > On Wed, Jun 17, 2020 at 8:21 AM Fangrui Song <maskray@google.com> wrote:
> > >
> > > I have only subscribed to clang-built-linux@ so I might miss some
> > > context. Just wanted to clarify what -Wa,-gdwarf-5 does
> > >
> > > On 2020-06-17, Sedat Dilek wrote:
> > > >On Tue, Jun 16, 2020 at 10:35 PM Nick Desaulniers
> > > ><ndesaulniers@google.com> wrote:
> > > >>
> > > >> On Tue, Jun 16, 2020 at 10:32 AM Arvind Sankar <nivedita@alum.mit.edu> wrote:
> > > >> >
> > > >> > On Tue, Jun 16, 2020 at 01:21:46PM +0200, Sedat Dilek wrote:
> > > >> > > Hi Arvind,
> > > >> > >
> > > >> > > when experimenting with LLVM_IAS=1 (and later using LLVM tools via
> > > >> > > LLVM=1) I saw that we need DWARF version 4 for debug.
> > > >> > >
> > > >> > > In [4] I saw you simplified the kbuild info detection for
> > > >> > > CONFIG_DEBUG_INFO_COMPRESSED=y.
> > > >> > >
> > > >> > > As I know you are working in the x86/boot/build area I wanted to
> > > >> > > kindly ask what do you think of these changes:
> > > >> > >
> > > >> > > [ kbuild: Silence dwarf-2 warning when LLVM_IAS=1 ]
> > > >> >
> > > >> > Cc clang-built-linux/Yamada-san.
> > > >> >
> > > >> > I'm by no means an expert at this stuff :) I've only been contributing
> > > >> > to the kernel for a few months and am learning as I go.
> > > >> >
> > > >> > Regarding these changes, for gcc I would say that given we invoke the
> > > >> > gcc driver for assembler files, KBUILD_AFLAGS could just be
> > > >> > -g/-gsplit-dwarf, and additionally -gdwarf-4 if DEBUG_INFO_DWARF4 is
> > > >> > configured, i.e.  basically just do KBUILD_AFLAGS += $(DEBUG_CFLAGS)
> > > >> > once DEBUG_CFLAGS have been fully set (maybe excepting the -f options,
> > > >> > though those don't appear to cause any errors even if passed for
> > > >> > assembler input).
> > > >> >
> > > >> > Eg, right now it appears that assembler files don't have split dwo
> > > >> > output with gcc, only C files do.
> > > >> >
> > > >> > I would assume that should also work for clang and allow clang to invoke
> > > >> > its built-in assembler with whatever flags it thinks are appropriate,
> > > >> > and hence should avoid the problems you get now?
> > > >>
> > > >> I have a patch that cleans this up as part of adding support for
> > > >> -gdwarf-5, please sit tight and keep an eye out for that. (I'll try to
> > > >> remember to cc folks)
> > > >>
> > > >
> > > >Please CC me, thanks.
> > > >
> > > >- Sedat -
> > > >
> > > >> >
> > > >> > >
> > > >> > > --- a/Makefile
> > > >> > > +++ b/Makefile
> > > >> > > @@ -803,8 +803,10 @@ DEBUG_CFLAGS       += -gsplit-dwarf
> > > >> > >  else
> > > >> > >  DEBUG_CFLAGS   += -g
> > > >> > >  endif
> > > >> > > +ifndef LLVM_IAS
> > > >> > >  KBUILD_AFLAGS  += -Wa,-gdwarf-2
> > > >> > >  endif
> > > >> > > +endif
> > > >> > >  ifdef CONFIG_DEBUG_INFO_DWARF4
> > > >> > >  DEBUG_CFLAGS   += -gdwarf-4
> > > >> > >  endif
> > > >> > >
> > > >> > > [ kbuild: Add dwarf-4 assembler option when LLVM_IAS=1 ]
> > > >> > >
> > > >> > > diff --git a/Makefile b/Makefile
> > > >> > > index 4d796ce78888..c3bc1ff0d900 100644
> > > >> > > --- a/Makefile
> > > >> > > +++ b/Makefile
> > > >> > > @@ -809,6 +809,9 @@ endif
> > > >> > >  endif
> > > >> > >  ifdef CONFIG_DEBUG_INFO_DWARF4
> > > >> > >  DEBUG_CFLAGS   += -gdwarf-4
> > > >> > > +ifdef LLVM_IAS
> > > >> > > +KBUILD_AFLAGS  += -Wa,-gdwarf-4
> > > >> > > +endif
> > > >> > >  endif
> > > >> > >
> > > >> > > Does passing  "-Wa,-gdwarf-4" makes sense here or is mandatory?
> > > >> > > Is indendent of CONFIG_DEBUG_INFO_DWARF4=y even?
> > > >> > >
> > > >> > > Thanks in advance.
> > > >> > >
> > > >> > > Regards,
> > > >> > > - Sedat -
> > >
> > > -Wa,-gdwarf-4 tells the compiler driver to pass -gdwarf-4 to the
> > > assembler (most common: GNU as, clang integrated assembly).
> > >
> > > In GNU as, as -g a.s does very little:
> > >
> > > 0x0000000b: DW_TAG_compile_unit
> > >                DW_AT_stmt_list   (0x00000000)
> > >                DW_AT_low_pc      (0x0000000000000000)
> > >                DW_AT_high_pc     (0x000000000000000b)
> > >                DW_AT_name        ("a.s")
> > >                DW_AT_comp_dir    ("/tmp/c")
> > >                DW_AT_producer    ("GNU AS 2.34")
> > >                DW_AT_language    (DW_LANG_Mips_Assembler)
> > >
> > > Basically it just tells the debugger an address range corresponds to a.s
> > >
> > > clang integrated assembly additionally synthesizes DW_TAG_label:
> > >
> > > 0x0000000b: DW_TAG_compile_unit
> > >                DW_AT_stmt_list   (0x00000000)
> > >                DW_AT_low_pc      (0x0000000000000000)
> > >                DW_AT_high_pc     (0x000000000000000b)
> > >                DW_AT_name        ("a.s")
> > >                DW_AT_comp_dir    ("/tmp/c")
> > >                DW_AT_producer    ("clang version 11.0.0 ")
> > >                DW_AT_language    (DW_LANG_Mips_Assembler)
> > >
> > > 0x00000043:   DW_TAG_label
> > >                  DW_AT_name      ("foo")
> > >                  DW_AT_decl_file ("/tmp/c/a.s")
> > >                  DW_AT_decl_line (6)
> > >                  DW_AT_low_pc    (0x0000000000000000)
> > >
> > > It emits a bit more, but DW_TAG_label may not be useful. gdb knows the line number of 'foo' by
> > > searching the address of 'foo' (from symbol table) in .debug_line
> > >
> >
> > Unsure how to produce that DW_TAG lines with IAS.
> >
> > So, I used llvm-objdump and llvm-readelf:
> >
> > $ llvm-objdump --syms arch/x86/crypto/aes_ctrby8_avx-x86_64.o
> >
> > arch/x86/crypto/aes_ctrby8_avx-x86_64.o:        file format elf64-x86-64
> >
> > SYMBOL TABLE:
> > 0000000000000000 l    d  .text  0000000000000000 .text
> > 0000000000000000 l    d  .data  0000000000000000 .data
> > 0000000000000000 l    d  .bss   0000000000000000 .bss
> > 0000000000000000 l    d  .rodata        0000000000000000 .rodata
> > 0000000000000000 l       .rodata        0000000000000000 byteswap_const
> > 0000000000000010 l       .rodata        0000000000000000 ddq_low_msk
> > 0000000000000020 l       .rodata        0000000000000000 ddq_high_add_1
> > 0000000000000030 l       .rodata        0000000000000000 ddq_add_1
> > 0000000000000040 l       .rodata        0000000000000000 ddq_add_2
> > 0000000000000050 l       .rodata        0000000000000000 ddq_add_3
> > 0000000000000060 l       .rodata        0000000000000000 ddq_add_4
> > 0000000000000070 l       .rodata        0000000000000000 ddq_add_5
> > 0000000000000080 l       .rodata        0000000000000000 ddq_add_6
> > 0000000000000090 l       .rodata        0000000000000000 ddq_add_7
> > 00000000000000a0 l       .rodata        0000000000000000 ddq_add_8
> > 0000000000000008 l       *ABS*  0000000000000000 by
> > 0000000000000000 l       *ABS*  0000000000000000 load_keys
> > 0000000000000003 l       *ABS*  0000000000000000 klen
> > 0000000000000008 l       *ABS*  0000000000000000 i
> > 00000000000000a0 l       .rodata        0000000000000000 var_ddq_add
> > 0000000000000007 l       *ABS*  0000000000000000 j
> > 0000000000000000 l    d  .debug_info    0000000000000000 .debug_info
> > 0000000000000000 l    d  .debug_abbrev  0000000000000000 .debug_abbrev
> > 0000000000000000 l    d  .debug_line    0000000000000000 .debug_line
> > 0000000000000000 l    d  .debug_str     0000000000000000 .debug_str
> > 0000000000000000 l    d  .debug_aranges 0000000000000000 .debug_aranges
> > 0000000000000000 g     F .text  0000000000001245 aes_ctr_enc_128_avx_by8
> > 0000000000001250 g     F .text  0000000000001432 aes_ctr_enc_192_avx_by8
> > 0000000000002690 g     F .text  0000000000001622 aes_ctr_enc_256_avx_by8
> >
> > $ llvm-readelf -p .debug_line arch/x86/crypto/aes_ctrby8_avx-x86_64.o
> > String dump of section '.debug_line':
> > [     0] e
> > [     4] .
> > [     6] >
> > [     a] .....
> > [    10] ....
> > [    17] .
> > [    1a] .arch/x86/crypto
> > [    2c] aes_ctrby8_avx-x86_64.S
> > [    44] .
> > [    49] ..
> > [    53] ........$.....(...,
> > [    67] ..
> >
> > $ llvm-readelf -p .debug_str arch/x86/crypto/aes_ctrby8_avx-x86_64.o
> > String dump of section '.debug_str':
> > [     0] arch/x86/crypto/aes_ctrby8_avx-x86_64.S
> > [    28] /home/dileks/src/linux-kernel/git
> > [    4a] GNU AS 2.34
> >
> > Here, I build with...
> >
> > make CC=clang-11 HOSTCC=clang-11 LD=ld.lld-11 HOSTLD=ld.lld-11
> > OBJDUMP=llvm-objdump LLVM_IAS=1 ...
> >
> > ...means I use GNU/as which is true.
> >
> > $ which as
> > /usr/bin/as
> >
> > $ as --version
> > GNU assembler (GNU Binutils for Debian) 2.34
> > Copyright (C) 2020 Free Software Foundation, Inc.
> > This program is free software; you may redistribute it under the terms of
> > the GNU General Public License version 3 or later.
> > This program has absolutely no warranty.
> > This assembler was configured for a target of `x86_64-linux-gnu
> >
>
> Hmm, DWARF version 2?
>
> $ llvm-dwarfdump arch/x86/crypto/aes_ctrby8_avx-x86_64.o | head -5
> arch/x86/crypto/aes_ctrby8_avx-x86_64.o:        file format elf64-x86-64
>
> .debug_info contents:
> 0x00000000: Compile Unit: length = 0x0000002a version = 0x0002
> abbr_offset = 0x0000 addr_size = 0x08 (next unit at 0x0000002e)
>
> Build-log says:
>
> clang-11 -Wp,-MD,arch/x86/crypto/.aes_ctrby8_avx-x86_64.o.d -nostdinc
> -isystem /home/dileks/src/llvm-toolchain/install/lib/clang/11.0.0/include
> -I./arch/x86/include -I./arch/x86/include/generated  -I./include
> -I./arch/x86/include/uapi -I./arch/x86/include/generated/uapi
> -I./include/uapi -I./include/generated/uapi -include
> ./include/linux/kconfig.h -D__KERNEL__ -Qunused-arguments
> -D__ASSEMBLY__ -fno-PIE -Werror=unknown-warning-option -m64
> -Wa,-gdwarf-4 -gz=zlib -DCC_USING_FENTRY -no-integrated-as  -DMODULE
> -c -o arch/x86/crypto/aes_ctrby8_avx-x86_64.o
> arch/x86/crypto/aes_ctrby8_avx-x86_64.S
>
> Here I see "-Wa,-gdwarf-4" is passed.
>

OK, I see this with "-no-integrated-as" assembler-option workaround.

- Sedat -

>
> >
> > > The DWARF version of assembly files matters very little.
> > >
> > > >> > > [1] https://github.com/ClangBuiltLinux/linux/issues/1049
> > > >> > > [2] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/kbuild/llvm.rst#n47
> > > >> > > [3] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/kbuild/llvm.rst#n62
> > > >> > > [4] https://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-kbuild.git/commit/?h=fixes&id=7b16994437c7359832dd51d66c5c387995a91438
> > > >> >
> > > >> > --
> > > >> > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > > >> > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > > >> > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200616173207.GA1497519%40rani.riverdale.lan.
> > > >>
> > > >>
> > > >>
> > > >> --
> > > >> Thanks,
> > > >> ~Nick Desaulniers
> > > >
> > > >--
> > > >You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > > >To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > > >To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUWm8SRiNLGsu%2BSXszOSOge2yfvkaBGTXLPKLTKKtFFuDQ%40mail.gmail.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUWceOpR-vwOi-Q2eLFRNOujfBw9zZ9h31OZ%2BbB4RzCHoA%40mail.gmail.com.
