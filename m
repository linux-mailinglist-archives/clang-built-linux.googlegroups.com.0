Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBEVHVD3QKGQEDHDFBQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id 899AB1FCDF6
	for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 14:58:59 +0200 (CEST)
Received: by mail-pj1-x1040.google.com with SMTP id nh9sf1446856pjb.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 05:58:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592398738; cv=pass;
        d=google.com; s=arc-20160816;
        b=InQUUqyjFV/DkVIorfrz2TVCNsHz9HCxB4f3hxl7M8ATNYRjlGA4ukBBfewsBjTR2u
         K6h6l3O352h6sTUJih69T+UO0lIviEKuo0Kxvx4DJ7GPTopXhXtrTH8Y2vdnjiIMhS8I
         bxiB4ppl4cpPJ7dpxIe8BIJuJVnfXAH0zSb6ljQSXBJNhoyTeUo88JVuAXUs40Cdo8tX
         60ejzSBn2OmVL5Z0SdkL0kptYbctXJqNkIBgoOE2Yu8rH95UqOzwmDeV42RnTxFhn2Sx
         CJe/UoZU+Jr2PqFLFMm2pShZjILrAt6lZMGWX+O2YNU0XadEm6adhA4gmk+SwDsBarGC
         mzbw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=Gv1E4+chNLi6AsCU52eOyc5wlZYcU86rRingZK2NKDc=;
        b=en1ymo9qtuNb+9mZQhNBZoX//vDp3COuIzNv1aHV2HiYrJ3OVYIQ+RqoxCItoVwl+d
         QDa3DQEuvk1fZN3+tsYdhUL/dn4qpOAsHL3wMAEIcXRbwI4x81T0bYPDTP13T5cx/y+b
         Ngx+bugqYdoGHsm5V/0tpnFtqi5DXuIxms6CE/xC+00WgkNbdYvTBZwaLDRTnW0XxEab
         FnY13bJkY+w9lL/kZ01D2nWHy5Nh1+7wXfsaTC5DSVsOfJ3eLR3/kHPZHcKw4kEWial3
         elTL8q4eLZDDNx2H8tl2RwVaQEb6LrVsSXeJXE6PzHefilaPIkY0L8eE/VULeztUa5OE
         oLpw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CdOm9mG4;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Gv1E4+chNLi6AsCU52eOyc5wlZYcU86rRingZK2NKDc=;
        b=Mzmj1Lp4cVo9V4N5Jmv+vcZ9VzeHcYCmndxRiUkRH12zxAkSfAfFJhKt9wSLMmAVww
         CDpJrZEque7+TjPhlMVo3NHuOrzxe9lk2iKkbG2Y3De1PDZdyf6L9JewrXWXfSJvvvC9
         FVBZCaQM8mL3+OOZ75QG70NMGi4vf7n6zY2BWX9DUtCURFK5eY3EtmIaL/AkvTSGRcKx
         wcwbUlJWRuZCkHP1Xo49MpcaomaTWTWwhHm256xFqyQ4u9wPa5R+i/uQWTlacVHuxZ/V
         UPm1k481IYchcRtpNFumAXylrCD+buSOSidrC3ANn9XoKQP6cQYbxqKkmjaULgfrM3Xy
         7aXA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Gv1E4+chNLi6AsCU52eOyc5wlZYcU86rRingZK2NKDc=;
        b=gNY4F2oN+L+0NT8H1d+4VLfa1bomAIzCBjIrdwJhsyopxf/KcWWt1Ad3mjD4h7zQia
         cm5MybwS40JkyRtm+iT9xAEMfoEsASa6W5/fm0rkrYRjaCt76M5T+t88CbfmjdpXVfQG
         k/5d5h0bjbFH7b+GRbt9FkoEUB0QUJVBHC/t9wey4RrKh+Pk2CX/6Ft82ZraC6UjuMh6
         nYSaNFcqbaV/v417RYZsrxnEZSnTdebH6tcyYKzrpzx5fOEb2hZHOfa88zNeGoDSH/qc
         1wcuEpTdZExrvZeqr558dEDOHykr59pdUX6jzXgJwabfMjJv+VHo79xX50XrqDGnn0vD
         XBKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Gv1E4+chNLi6AsCU52eOyc5wlZYcU86rRingZK2NKDc=;
        b=e7YkT2RO0mUhEwtd3FjlZ6uyevp7poEI2uyWYZbExBMhlsz9gnAqqby1Y77RrtAxkQ
         3pkfLtjSi/lxdqI9izC/6Txjc8gHV4wDsXaAOqm6UbtJTtfrZfF+mDSlMhCosBpHVna4
         T0jPUqloYCQIXRCauIOZCWzrixwl0Hqc+5uCkcbKEpBt2LWYdXEUB5gxfRY5LVvqllin
         0GAGLUGx5fs+G5T14vvYZo95/Eyu/lmOSLWW00O0tf7M/obQQFqhJXQEueAeREQhxWNI
         RNBNxjQwhvevq1qfDOmitCrq295X53frgipf4QWxIklYHzKjnXpnKavGVvP/D866ca0h
         fRdw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531wA+K30EW4MVPnuTGeeTTIlZmQoaHj3RcSJVCD9+pXGN/m6R8l
	vrqcf4S1Xk25WyYOSleLpuU=
X-Google-Smtp-Source: ABdhPJz2YE9OBNfueZd8ybHM8AThlmSyjafdkq+3oDRXTGxSVxw3oWc2JTOPXMLgpnzeSLshORQk9A==
X-Received: by 2002:a17:90a:191b:: with SMTP id 27mr8337338pjg.158.1592398738239;
        Wed, 17 Jun 2020 05:58:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:dd4d:: with SMTP id w74ls785462pff.4.gmail; Wed, 17 Jun
 2020 05:58:57 -0700 (PDT)
X-Received: by 2002:a63:fc0e:: with SMTP id j14mr6432707pgi.264.1592398737740;
        Wed, 17 Jun 2020 05:58:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592398737; cv=none;
        d=google.com; s=arc-20160816;
        b=FrIcj22MrSZRtgCT3ciYDvPvkJ2BOe7ES2tdHHuAIQ03mUA2nAR4j0CacU7PyxW2UF
         5PXN3JUaLbnwapsYn1rBntOfLkEY01FqMfCFW2dfc9JLY2/KQythS7FU1YLxlqMRBN3Z
         4HSnpt43bFeGT78H2LTdGYBXZKbr8UBxmWEm3ZC/jAtOBgGoRa2Kb6jkjQHQgtNQJg3E
         ZAWDMaGNcZMhWjxPlaP5z2ERIzY4OyBdvCwnUd6ZCyqU0aFSOOgwqs5KBNKc/sfqHDN8
         oiuY3ruREXhVbB7ujIMGojFDa1tBEjq1LJd67mlWrIh2wjQ8JsL295ulebPJz6joJ1I/
         AEJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=TL54wLSLCif8l0edsNKljpuMgeXOmroX/RRG8k14Db0=;
        b=xNdLyaiaqUKK/hBuoduJL8QpgnK2tVqyeBH/jN+i3dBA8mKButW/+iWXGe9qsxFlac
         JznA0jmUhD2YV866/4FtRHoGrfD4UnlPZM201kjS66Pz0JNq7KR0OlUiaoYtbtV5kmXa
         0/Vp7I3O0u/z1ncpn/YPaaHrYi1OfNYUe0QfxcDq0bWWakueFSZ0UUMOpgDrzGQFfi8P
         e2M+JH6QVVlp2iQdV3cBW2RDzs/5h9/pDFLg9uWVDLJ38aNujU0ddGPAYjzFmSZeUoTB
         EEzY1L/u3dT32FPvo5e9JLgHtAg/rqI3Q610lKz9Gc9a4im4hk/8Ow+1b11o+kKwErwm
         /t2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CdOm9mG4;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd44.google.com (mail-io1-xd44.google.com. [2607:f8b0:4864:20::d44])
        by gmr-mx.google.com with ESMTPS id h9si550163pls.2.2020.06.17.05.58.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Jun 2020 05:58:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) client-ip=2607:f8b0:4864:20::d44;
Received: by mail-io1-xd44.google.com with SMTP id r77so2611530ior.3
        for <clang-built-linux@googlegroups.com>; Wed, 17 Jun 2020 05:58:57 -0700 (PDT)
X-Received: by 2002:a05:6602:1616:: with SMTP id x22mr8495500iow.70.1592398736890;
 Wed, 17 Jun 2020 05:58:56 -0700 (PDT)
MIME-Version: 1.0
References: <CA+icZUUWh=NzBwAa3hff6yOxY0ZirKmzOLz=a2eZUbW_cD5ECg@mail.gmail.com>
 <20200616173207.GA1497519@rani.riverdale.lan> <CAKwvOd=XH47E4GzKGw_LLVXzskJ_Z8=jf2k=ebG-o7nXFAqzjg@mail.gmail.com>
 <CA+icZUWm8SRiNLGsu+SXszOSOge2yfvkaBGTXLPKLTKKtFFuDQ@mail.gmail.com>
 <20200617062109.woy2uyefdplw3pst@google.com> <CA+icZUXRUF5vCStZ8GYwC0mMOH2kh3Ce3oguu-oocVR9EhzCbQ@mail.gmail.com>
 <CA+icZUVdZL5ka8FuiR74A0aiQVfEcdGoO4-2BYizRBp9k5SGLQ@mail.gmail.com> <CA+icZUWceOpR-vwOi-Q2eLFRNOujfBw9zZ9h31OZ+bB4RzCHoA@mail.gmail.com>
In-Reply-To: <CA+icZUWceOpR-vwOi-Q2eLFRNOujfBw9zZ9h31OZ+bB4RzCHoA@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 17 Jun 2020 14:58:44 +0200
Message-ID: <CA+icZUXacdF8Fvd=8mz9wS3C_Am5n_yoE42DKc0X3L3ywfKRQw@mail.gmail.com>
Subject: Re: LLVM/Clang: Integrated assembler: DWARF version 4 and passing
 assembler option
To: Fangrui Song <maskray@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Arvind Sankar <nivedita@alum.mit.edu>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Masahiro Yamada <masahiroy@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=CdOm9mG4;       spf=pass
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

On Wed, Jun 17, 2020 at 2:50 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Wed, Jun 17, 2020 at 2:44 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >
> > On Wed, Jun 17, 2020 at 2:24 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > >
> > > On Wed, Jun 17, 2020 at 8:21 AM Fangrui Song <maskray@google.com> wrote:
> > > >
> > > > I have only subscribed to clang-built-linux@ so I might miss some
> > > > context. Just wanted to clarify what -Wa,-gdwarf-5 does
> > > >
> > > > On 2020-06-17, Sedat Dilek wrote:
> > > > >On Tue, Jun 16, 2020 at 10:35 PM Nick Desaulniers
> > > > ><ndesaulniers@google.com> wrote:
> > > > >>
> > > > >> On Tue, Jun 16, 2020 at 10:32 AM Arvind Sankar <nivedita@alum.mit.edu> wrote:
> > > > >> >
> > > > >> > On Tue, Jun 16, 2020 at 01:21:46PM +0200, Sedat Dilek wrote:
> > > > >> > > Hi Arvind,
> > > > >> > >
> > > > >> > > when experimenting with LLVM_IAS=1 (and later using LLVM tools via
> > > > >> > > LLVM=1) I saw that we need DWARF version 4 for debug.
> > > > >> > >
> > > > >> > > In [4] I saw you simplified the kbuild info detection for
> > > > >> > > CONFIG_DEBUG_INFO_COMPRESSED=y.
> > > > >> > >
> > > > >> > > As I know you are working in the x86/boot/build area I wanted to
> > > > >> > > kindly ask what do you think of these changes:
> > > > >> > >
> > > > >> > > [ kbuild: Silence dwarf-2 warning when LLVM_IAS=1 ]
> > > > >> >
> > > > >> > Cc clang-built-linux/Yamada-san.
> > > > >> >
> > > > >> > I'm by no means an expert at this stuff :) I've only been contributing
> > > > >> > to the kernel for a few months and am learning as I go.
> > > > >> >
> > > > >> > Regarding these changes, for gcc I would say that given we invoke the
> > > > >> > gcc driver for assembler files, KBUILD_AFLAGS could just be
> > > > >> > -g/-gsplit-dwarf, and additionally -gdwarf-4 if DEBUG_INFO_DWARF4 is
> > > > >> > configured, i.e.  basically just do KBUILD_AFLAGS += $(DEBUG_CFLAGS)
> > > > >> > once DEBUG_CFLAGS have been fully set (maybe excepting the -f options,
> > > > >> > though those don't appear to cause any errors even if passed for
> > > > >> > assembler input).
> > > > >> >
> > > > >> > Eg, right now it appears that assembler files don't have split dwo
> > > > >> > output with gcc, only C files do.
> > > > >> >
> > > > >> > I would assume that should also work for clang and allow clang to invoke
> > > > >> > its built-in assembler with whatever flags it thinks are appropriate,
> > > > >> > and hence should avoid the problems you get now?
> > > > >>
> > > > >> I have a patch that cleans this up as part of adding support for
> > > > >> -gdwarf-5, please sit tight and keep an eye out for that. (I'll try to
> > > > >> remember to cc folks)
> > > > >>
> > > > >
> > > > >Please CC me, thanks.
> > > > >
> > > > >- Sedat -
> > > > >
> > > > >> >
> > > > >> > >
> > > > >> > > --- a/Makefile
> > > > >> > > +++ b/Makefile
> > > > >> > > @@ -803,8 +803,10 @@ DEBUG_CFLAGS       += -gsplit-dwarf
> > > > >> > >  else
> > > > >> > >  DEBUG_CFLAGS   += -g
> > > > >> > >  endif
> > > > >> > > +ifndef LLVM_IAS
> > > > >> > >  KBUILD_AFLAGS  += -Wa,-gdwarf-2
> > > > >> > >  endif
> > > > >> > > +endif
> > > > >> > >  ifdef CONFIG_DEBUG_INFO_DWARF4
> > > > >> > >  DEBUG_CFLAGS   += -gdwarf-4
> > > > >> > >  endif
> > > > >> > >
> > > > >> > > [ kbuild: Add dwarf-4 assembler option when LLVM_IAS=1 ]
> > > > >> > >
> > > > >> > > diff --git a/Makefile b/Makefile
> > > > >> > > index 4d796ce78888..c3bc1ff0d900 100644
> > > > >> > > --- a/Makefile
> > > > >> > > +++ b/Makefile
> > > > >> > > @@ -809,6 +809,9 @@ endif
> > > > >> > >  endif
> > > > >> > >  ifdef CONFIG_DEBUG_INFO_DWARF4
> > > > >> > >  DEBUG_CFLAGS   += -gdwarf-4
> > > > >> > > +ifdef LLVM_IAS
> > > > >> > > +KBUILD_AFLAGS  += -Wa,-gdwarf-4
> > > > >> > > +endif
> > > > >> > >  endif
> > > > >> > >
> > > > >> > > Does passing  "-Wa,-gdwarf-4" makes sense here or is mandatory?
> > > > >> > > Is indendent of CONFIG_DEBUG_INFO_DWARF4=y even?
> > > > >> > >
> > > > >> > > Thanks in advance.
> > > > >> > >
> > > > >> > > Regards,
> > > > >> > > - Sedat -
> > > >
> > > > -Wa,-gdwarf-4 tells the compiler driver to pass -gdwarf-4 to the
> > > > assembler (most common: GNU as, clang integrated assembly).
> > > >
> > > > In GNU as, as -g a.s does very little:
> > > >
> > > > 0x0000000b: DW_TAG_compile_unit
> > > >                DW_AT_stmt_list   (0x00000000)
> > > >                DW_AT_low_pc      (0x0000000000000000)
> > > >                DW_AT_high_pc     (0x000000000000000b)
> > > >                DW_AT_name        ("a.s")
> > > >                DW_AT_comp_dir    ("/tmp/c")
> > > >                DW_AT_producer    ("GNU AS 2.34")
> > > >                DW_AT_language    (DW_LANG_Mips_Assembler)
> > > >
> > > > Basically it just tells the debugger an address range corresponds to a.s
> > > >
> > > > clang integrated assembly additionally synthesizes DW_TAG_label:
> > > >
> > > > 0x0000000b: DW_TAG_compile_unit
> > > >                DW_AT_stmt_list   (0x00000000)
> > > >                DW_AT_low_pc      (0x0000000000000000)
> > > >                DW_AT_high_pc     (0x000000000000000b)
> > > >                DW_AT_name        ("a.s")
> > > >                DW_AT_comp_dir    ("/tmp/c")
> > > >                DW_AT_producer    ("clang version 11.0.0 ")
> > > >                DW_AT_language    (DW_LANG_Mips_Assembler)
> > > >
> > > > 0x00000043:   DW_TAG_label
> > > >                  DW_AT_name      ("foo")
> > > >                  DW_AT_decl_file ("/tmp/c/a.s")
> > > >                  DW_AT_decl_line (6)
> > > >                  DW_AT_low_pc    (0x0000000000000000)
> > > >
> > > > It emits a bit more, but DW_TAG_label may not be useful. gdb knows the line number of 'foo' by
> > > > searching the address of 'foo' (from symbol table) in .debug_line
> > > >
> > >
> > > Unsure how to produce that DW_TAG lines with IAS.
> > >
> > > So, I used llvm-objdump and llvm-readelf:
> > >
> > > $ llvm-objdump --syms arch/x86/crypto/aes_ctrby8_avx-x86_64.o
> > >
> > > arch/x86/crypto/aes_ctrby8_avx-x86_64.o:        file format elf64-x86-64
> > >
> > > SYMBOL TABLE:
> > > 0000000000000000 l    d  .text  0000000000000000 .text
> > > 0000000000000000 l    d  .data  0000000000000000 .data
> > > 0000000000000000 l    d  .bss   0000000000000000 .bss
> > > 0000000000000000 l    d  .rodata        0000000000000000 .rodata
> > > 0000000000000000 l       .rodata        0000000000000000 byteswap_const
> > > 0000000000000010 l       .rodata        0000000000000000 ddq_low_msk
> > > 0000000000000020 l       .rodata        0000000000000000 ddq_high_add_1
> > > 0000000000000030 l       .rodata        0000000000000000 ddq_add_1
> > > 0000000000000040 l       .rodata        0000000000000000 ddq_add_2
> > > 0000000000000050 l       .rodata        0000000000000000 ddq_add_3
> > > 0000000000000060 l       .rodata        0000000000000000 ddq_add_4
> > > 0000000000000070 l       .rodata        0000000000000000 ddq_add_5
> > > 0000000000000080 l       .rodata        0000000000000000 ddq_add_6
> > > 0000000000000090 l       .rodata        0000000000000000 ddq_add_7
> > > 00000000000000a0 l       .rodata        0000000000000000 ddq_add_8
> > > 0000000000000008 l       *ABS*  0000000000000000 by
> > > 0000000000000000 l       *ABS*  0000000000000000 load_keys
> > > 0000000000000003 l       *ABS*  0000000000000000 klen
> > > 0000000000000008 l       *ABS*  0000000000000000 i
> > > 00000000000000a0 l       .rodata        0000000000000000 var_ddq_add
> > > 0000000000000007 l       *ABS*  0000000000000000 j
> > > 0000000000000000 l    d  .debug_info    0000000000000000 .debug_info
> > > 0000000000000000 l    d  .debug_abbrev  0000000000000000 .debug_abbrev
> > > 0000000000000000 l    d  .debug_line    0000000000000000 .debug_line
> > > 0000000000000000 l    d  .debug_str     0000000000000000 .debug_str
> > > 0000000000000000 l    d  .debug_aranges 0000000000000000 .debug_aranges
> > > 0000000000000000 g     F .text  0000000000001245 aes_ctr_enc_128_avx_by8
> > > 0000000000001250 g     F .text  0000000000001432 aes_ctr_enc_192_avx_by8
> > > 0000000000002690 g     F .text  0000000000001622 aes_ctr_enc_256_avx_by8
> > >
> > > $ llvm-readelf -p .debug_line arch/x86/crypto/aes_ctrby8_avx-x86_64.o
> > > String dump of section '.debug_line':
> > > [     0] e
> > > [     4] .
> > > [     6] >
> > > [     a] .....
> > > [    10] ....
> > > [    17] .
> > > [    1a] .arch/x86/crypto
> > > [    2c] aes_ctrby8_avx-x86_64.S
> > > [    44] .
> > > [    49] ..
> > > [    53] ........$.....(...,
> > > [    67] ..
> > >
> > > $ llvm-readelf -p .debug_str arch/x86/crypto/aes_ctrby8_avx-x86_64.o
> > > String dump of section '.debug_str':
> > > [     0] arch/x86/crypto/aes_ctrby8_avx-x86_64.S
> > > [    28] /home/dileks/src/linux-kernel/git
> > > [    4a] GNU AS 2.34
> > >
> > > Here, I build with...
> > >
> > > make CC=clang-11 HOSTCC=clang-11 LD=ld.lld-11 HOSTLD=ld.lld-11
> > > OBJDUMP=llvm-objdump LLVM_IAS=1 ...
> > >
> > > ...means I use GNU/as which is true.
> > >
> > > $ which as
> > > /usr/bin/as
> > >
> > > $ as --version
> > > GNU assembler (GNU Binutils for Debian) 2.34
> > > Copyright (C) 2020 Free Software Foundation, Inc.
> > > This program is free software; you may redistribute it under the terms of
> > > the GNU General Public License version 3 or later.
> > > This program has absolutely no warranty.
> > > This assembler was configured for a target of `x86_64-linux-gnu
> > >
> >
> > Hmm, DWARF version 2?
> >
> > $ llvm-dwarfdump arch/x86/crypto/aes_ctrby8_avx-x86_64.o | head -5
> > arch/x86/crypto/aes_ctrby8_avx-x86_64.o:        file format elf64-x86-64
> >
> > .debug_info contents:
> > 0x00000000: Compile Unit: length = 0x0000002a version = 0x0002
> > abbr_offset = 0x0000 addr_size = 0x08 (next unit at 0x0000002e)
> >
> > Build-log says:
> >
> > clang-11 -Wp,-MD,arch/x86/crypto/.aes_ctrby8_avx-x86_64.o.d -nostdinc
> > -isystem /home/dileks/src/llvm-toolchain/install/lib/clang/11.0.0/include
> > -I./arch/x86/include -I./arch/x86/include/generated  -I./include
> > -I./arch/x86/include/uapi -I./arch/x86/include/generated/uapi
> > -I./include/uapi -I./include/generated/uapi -include
> > ./include/linux/kconfig.h -D__KERNEL__ -Qunused-arguments
> > -D__ASSEMBLY__ -fno-PIE -Werror=unknown-warning-option -m64
> > -Wa,-gdwarf-4 -gz=zlib -DCC_USING_FENTRY -no-integrated-as  -DMODULE
> > -c -o arch/x86/crypto/aes_ctrby8_avx-x86_64.o
> > arch/x86/crypto/aes_ctrby8_avx-x86_64.S
> >
> > Here I see "-Wa,-gdwarf-4" is passed.
> >
>
> OK, I see this with "-no-integrated-as" assembler-option workaround.
>

Interesting:

File "aesni-intel_asm.o" was built with IAS and I see DWARF version 4:

$ llvm-dwarfdump arch/x86/crypto/aesni-intel_asm.o | head -5
arch/x86/crypto/aesni-intel_asm.o:      file format elf64-x86-64

.debug_info contents:
0x00000000: Compile Unit: length = 0x00002ad3 version = 0x0004
abbr_offset = 0x0000 addr_size = 0x08 (next unit at 0x00002ad7)

Building with "-no-integrated-as" and GNU/as as AS cannot benefit of
DWARF version 4.
I guess my GNU/as has no support for it.

- Sedat -
>
> >
> > >
> > > > The DWARF version of assembly files matters very little.
> > > >
> > > > >> > > [1] https://github.com/ClangBuiltLinux/linux/issues/1049
> > > > >> > > [2] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/kbuild/llvm.rst#n47
> > > > >> > > [3] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/kbuild/llvm.rst#n62
> > > > >> > > [4] https://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-kbuild.git/commit/?h=fixes&id=7b16994437c7359832dd51d66c5c387995a91438
> > > > >> >
> > > > >> > --
> > > > >> > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > > > >> > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > > > >> > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200616173207.GA1497519%40rani.riverdale.lan.
> > > > >>
> > > > >>
> > > > >>
> > > > >> --
> > > > >> Thanks,
> > > > >> ~Nick Desaulniers
> > > > >
> > > > >--
> > > > >You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > > > >To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > > > >To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUWm8SRiNLGsu%2BSXszOSOge2yfvkaBGTXLPKLTKKtFFuDQ%40mail.gmail.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUXacdF8Fvd%3D8mz9wS3C_Am5n_yoE42DKc0X3L3ywfKRQw%40mail.gmail.com.
