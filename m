Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBPVAVD3QKGQEUXJ22ZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id F0C911FCD9D
	for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 14:44:47 +0200 (CEST)
Received: by mail-pg1-x53e.google.com with SMTP id i1sf642222pgn.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 05:44:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592397886; cv=pass;
        d=google.com; s=arc-20160816;
        b=f15ohCsy/DFq+P2Q9KW+wBtBbkpTwFLbI5o5yVlzMfma9AQJN7L/3mZ6stV6eO+9G8
         BoBrHE4szKv8FTdxxSOQDrZcg2L985LrqKmYQVPz4g8vIEAKhehZetufD49xI64gGwFv
         nTjCHftLWbW2FeS/8VEZe9uEVA/E+sqobMkpLzHGe4ViUIsQgB6RMVG+NF7/FFa/bFvA
         J4WZOXSm9XSZTLU1HZAdidEcxi5WUlVdLMH2Hu35lcrE75wrBn0w6xtP2y7gUeTj/3Fy
         fJZ3EB/ddDbAI30YK8oc9EX9emGFUMowGEIZH+WLF85J00tdiijU02fMQAGrrYSxuSEr
         2kuQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=0YFnmrlkgmNzExqiNGBk2xyVq3CmfbU7N5b+8Lst+b0=;
        b=tiXEk7mlPAOw0/ohUik/Rk7vMe9A49Pmm2fUrVMX8NFlZnPk8XQDgBIQBTz/zRskTi
         Szmo4du6aDDzteX5xVJN2PVtvm7WglNsgQuSyBlEd67kvZ4SuMWt8sAEopTlqwDwJdJX
         +waCleBu+RayOKBriR3x6PSpF3rBfhlQe2XEVOIc0IeDgfBl2+IRFdogGX4AD/IWiB1s
         c5+t6MCsSS9SRo5nZWgab+bSKTxnBTGXoK0rK8nynTYxsuTTYSO2TKrtvkaAWJVQ9/kr
         xrrOr8pRb9WqQUkCWSc0VxCslWvlWxR5XwNDT+4Qd5PfW2cUw8AqynU9SW9EGwRMK+ja
         Uybg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Hgnh4tmr;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0YFnmrlkgmNzExqiNGBk2xyVq3CmfbU7N5b+8Lst+b0=;
        b=rRwEH6GDPEXdxJTKZZBxdTQS+fgjGHAm9Zs+Zjy+OP9ssBgdQU1rNGhS7l64WAORym
         GkBK/OqMrhT22MMD1hUMMTUBByU21K7Aaz0LHFcua00s/KS4ivCEcTtLnCxBp9W2jMSR
         gTRpWyH8Nm5mxtV982B9TtovBW04W2HFxjMkzvYEiNyiWnUOCDDW8ovkS+p248X1/ohG
         S2Ct7ImXXoH7An11FpeWyx6APBkIs4HgrO0pjsz3mBuzbr+vwH2r2uLvx7fjbwYBtJc8
         4aJHALveyD/pf3pCs3T15Pz/1nJV2lABplVcBmuhMAa+C94jZ6PLCWMw1XHKdIvkc5JN
         B/rQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0YFnmrlkgmNzExqiNGBk2xyVq3CmfbU7N5b+8Lst+b0=;
        b=nPP+MMYu9aEx4siUpHKEY7US0i+IxFqzMRWTmyQIM4kR9WchPm2AJhX108MzE+iXbL
         GS8qf07XwwS7L3/KOEQe+t8X4KuRetnYkrG/CKclimw5t4+ekAaDq2b0O5qNjjoCz57i
         o/HvwCcofax0oCA5C35y0xhn0LGwyqjSfNGPwyiZokMtx2BOAswVZ0KrxeFTNpwb5yAO
         cxAct0xHAXzbazo8yU2MRtX7Azx1RR28rhRtXiOSu7bCEMUwvYu2knYUdSsLpBR4CCaw
         5aKczofDU1KxMUeCsTFRfwHHvZwyDF+J4Sf4eznLPKnxsGf4GDEW/CrQFlks4AvnFUgF
         KVPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0YFnmrlkgmNzExqiNGBk2xyVq3CmfbU7N5b+8Lst+b0=;
        b=AEvL96y9KydRFXu8JEih/hnf0hdkR/WmF++pDtgzt2YKRD1yGWRXr5hCaoQLv5fZD2
         pu01zX1R1MZ3NhcIBt9AE0OCicd99L+ZE3qI6F69vs7MyqdI13eqHN0hcMXhQbZKr7Ow
         7NsV7TyoNrwQmr0FmStHnAT/AOliQCYMVVH+6ZdPDG3zMT1+aQupJasKR9Pdqow7GJvB
         Iu9jhvQfXG6pzxyidbtns88WJlh3mCzr16j3L7PKD+6viBrWJskuuHp99NhUQt0lzIy8
         wJy/QRlIoU1plBKyNcDLHP6abAiPSsqrzpU3e4+HyIDq4xKd4PWvP9rqqc6O79lR5Kbk
         YSeQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5311WtoB8ft2fEypqFJMgvGM9NT2DYvRrtHno1z02UQ8DxqE1FHf
	ngx0m/XCydV6OniFL23ZI+A=
X-Google-Smtp-Source: ABdhPJykirD/+39PJLypPdh/p40ieD1IAn+a3y0C6rttBgWSK08PPDR4z+rzQSQI3o38CRfvcdrsZw==
X-Received: by 2002:a62:7c15:: with SMTP id x21mr6926715pfc.189.1592397886533;
        Wed, 17 Jun 2020 05:44:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:718c:: with SMTP id i12ls980610pjk.1.canary-gmail;
 Wed, 17 Jun 2020 05:44:46 -0700 (PDT)
X-Received: by 2002:a17:90b:430f:: with SMTP id ih15mr7635048pjb.61.1592397886080;
        Wed, 17 Jun 2020 05:44:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592397886; cv=none;
        d=google.com; s=arc-20160816;
        b=W17P+36lch3zjSm6F3ok0vTb/qNZfl09jpHVadJKwOaKqhChMipuVqqIOqyrvym5e1
         McsqzVIw5jTcNuto1f7JYYrkZGHmCsABTtmCUDUDF4Ri78l2eQeYLnkgCmJ3ejchB5Of
         zs9l/wuK9aMaIK7p5hK93Pnj0GB+35zAdsnTcN8pEbUCeNE7BjnyqwMuSJ1lnaxbj7ey
         lIQEZOlX9zEwD0clFCa9QI6t5FHAHg/581EjqT8aIHfBgbige1fYz1TTvW9JyDFSWpyp
         OALpDhwbDz/y7XfzlBaE4cusV8mQ5pocEwnL3XN3HERJByDdR2bmsExU9GenpQkYB4Yb
         NPQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=CvL3TOdO1p2gNJEButOXYiRT3aE3LfJIHri+wPN8W54=;
        b=xN4KwLKsIUcGBW2F9a0aHwzMsWNvLacQ+c/tzBJg/k7nnhHHoqBJhMqF5ABDw6SRoU
         ySLzW16/JVHr9IS3AlMxF+Vz2Tnk9VHbLOsqEigkSp2SmNpY/QBHLB6YatxKBrwJHnvk
         dB4soscGb3DqKMcNB9k7USTeS2+z8ho9FucAE3+PAvYMM3dc4ciGukdh7Mu90/uZYCej
         7d9rhxVdPWuguRtlc+gkNVCQ5E5khQyyRFJcjc6EtbJu4tyd33Bt/yPwQx2/N6aV7vvB
         XGNYr+LXYnA7QwbwIfYPrzVplDuYwDHHPimT0lVgwkyoSehjovtanFlvLZG5xsQOJo6Z
         iDzQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Hgnh4tmr;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd44.google.com (mail-io1-xd44.google.com. [2607:f8b0:4864:20::d44])
        by gmr-mx.google.com with ESMTPS id j3si212303pjy.1.2020.06.17.05.44.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Jun 2020 05:44:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) client-ip=2607:f8b0:4864:20::d44;
Received: by mail-io1-xd44.google.com with SMTP id t9so2480707ioj.13
        for <clang-built-linux@googlegroups.com>; Wed, 17 Jun 2020 05:44:46 -0700 (PDT)
X-Received: by 2002:a02:37d4:: with SMTP id r203mr31421737jar.121.1592397885408;
 Wed, 17 Jun 2020 05:44:45 -0700 (PDT)
MIME-Version: 1.0
References: <CA+icZUUWh=NzBwAa3hff6yOxY0ZirKmzOLz=a2eZUbW_cD5ECg@mail.gmail.com>
 <20200616173207.GA1497519@rani.riverdale.lan> <CAKwvOd=XH47E4GzKGw_LLVXzskJ_Z8=jf2k=ebG-o7nXFAqzjg@mail.gmail.com>
 <CA+icZUWm8SRiNLGsu+SXszOSOge2yfvkaBGTXLPKLTKKtFFuDQ@mail.gmail.com>
 <20200617062109.woy2uyefdplw3pst@google.com> <CA+icZUXRUF5vCStZ8GYwC0mMOH2kh3Ce3oguu-oocVR9EhzCbQ@mail.gmail.com>
In-Reply-To: <CA+icZUXRUF5vCStZ8GYwC0mMOH2kh3Ce3oguu-oocVR9EhzCbQ@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 17 Jun 2020 14:44:33 +0200
Message-ID: <CA+icZUVdZL5ka8FuiR74A0aiQVfEcdGoO4-2BYizRBp9k5SGLQ@mail.gmail.com>
Subject: Re: LLVM/Clang: Integrated assembler: DWARF version 4 and passing
 assembler option
To: Fangrui Song <maskray@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Arvind Sankar <nivedita@alum.mit.edu>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Masahiro Yamada <masahiroy@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Hgnh4tmr;       spf=pass
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

On Wed, Jun 17, 2020 at 2:24 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Wed, Jun 17, 2020 at 8:21 AM Fangrui Song <maskray@google.com> wrote:
> >
> > I have only subscribed to clang-built-linux@ so I might miss some
> > context. Just wanted to clarify what -Wa,-gdwarf-5 does
> >
> > On 2020-06-17, Sedat Dilek wrote:
> > >On Tue, Jun 16, 2020 at 10:35 PM Nick Desaulniers
> > ><ndesaulniers@google.com> wrote:
> > >>
> > >> On Tue, Jun 16, 2020 at 10:32 AM Arvind Sankar <nivedita@alum.mit.edu> wrote:
> > >> >
> > >> > On Tue, Jun 16, 2020 at 01:21:46PM +0200, Sedat Dilek wrote:
> > >> > > Hi Arvind,
> > >> > >
> > >> > > when experimenting with LLVM_IAS=1 (and later using LLVM tools via
> > >> > > LLVM=1) I saw that we need DWARF version 4 for debug.
> > >> > >
> > >> > > In [4] I saw you simplified the kbuild info detection for
> > >> > > CONFIG_DEBUG_INFO_COMPRESSED=y.
> > >> > >
> > >> > > As I know you are working in the x86/boot/build area I wanted to
> > >> > > kindly ask what do you think of these changes:
> > >> > >
> > >> > > [ kbuild: Silence dwarf-2 warning when LLVM_IAS=1 ]
> > >> >
> > >> > Cc clang-built-linux/Yamada-san.
> > >> >
> > >> > I'm by no means an expert at this stuff :) I've only been contributing
> > >> > to the kernel for a few months and am learning as I go.
> > >> >
> > >> > Regarding these changes, for gcc I would say that given we invoke the
> > >> > gcc driver for assembler files, KBUILD_AFLAGS could just be
> > >> > -g/-gsplit-dwarf, and additionally -gdwarf-4 if DEBUG_INFO_DWARF4 is
> > >> > configured, i.e.  basically just do KBUILD_AFLAGS += $(DEBUG_CFLAGS)
> > >> > once DEBUG_CFLAGS have been fully set (maybe excepting the -f options,
> > >> > though those don't appear to cause any errors even if passed for
> > >> > assembler input).
> > >> >
> > >> > Eg, right now it appears that assembler files don't have split dwo
> > >> > output with gcc, only C files do.
> > >> >
> > >> > I would assume that should also work for clang and allow clang to invoke
> > >> > its built-in assembler with whatever flags it thinks are appropriate,
> > >> > and hence should avoid the problems you get now?
> > >>
> > >> I have a patch that cleans this up as part of adding support for
> > >> -gdwarf-5, please sit tight and keep an eye out for that. (I'll try to
> > >> remember to cc folks)
> > >>
> > >
> > >Please CC me, thanks.
> > >
> > >- Sedat -
> > >
> > >> >
> > >> > >
> > >> > > --- a/Makefile
> > >> > > +++ b/Makefile
> > >> > > @@ -803,8 +803,10 @@ DEBUG_CFLAGS       += -gsplit-dwarf
> > >> > >  else
> > >> > >  DEBUG_CFLAGS   += -g
> > >> > >  endif
> > >> > > +ifndef LLVM_IAS
> > >> > >  KBUILD_AFLAGS  += -Wa,-gdwarf-2
> > >> > >  endif
> > >> > > +endif
> > >> > >  ifdef CONFIG_DEBUG_INFO_DWARF4
> > >> > >  DEBUG_CFLAGS   += -gdwarf-4
> > >> > >  endif
> > >> > >
> > >> > > [ kbuild: Add dwarf-4 assembler option when LLVM_IAS=1 ]
> > >> > >
> > >> > > diff --git a/Makefile b/Makefile
> > >> > > index 4d796ce78888..c3bc1ff0d900 100644
> > >> > > --- a/Makefile
> > >> > > +++ b/Makefile
> > >> > > @@ -809,6 +809,9 @@ endif
> > >> > >  endif
> > >> > >  ifdef CONFIG_DEBUG_INFO_DWARF4
> > >> > >  DEBUG_CFLAGS   += -gdwarf-4
> > >> > > +ifdef LLVM_IAS
> > >> > > +KBUILD_AFLAGS  += -Wa,-gdwarf-4
> > >> > > +endif
> > >> > >  endif
> > >> > >
> > >> > > Does passing  "-Wa,-gdwarf-4" makes sense here or is mandatory?
> > >> > > Is indendent of CONFIG_DEBUG_INFO_DWARF4=y even?
> > >> > >
> > >> > > Thanks in advance.
> > >> > >
> > >> > > Regards,
> > >> > > - Sedat -
> >
> > -Wa,-gdwarf-4 tells the compiler driver to pass -gdwarf-4 to the
> > assembler (most common: GNU as, clang integrated assembly).
> >
> > In GNU as, as -g a.s does very little:
> >
> > 0x0000000b: DW_TAG_compile_unit
> >                DW_AT_stmt_list   (0x00000000)
> >                DW_AT_low_pc      (0x0000000000000000)
> >                DW_AT_high_pc     (0x000000000000000b)
> >                DW_AT_name        ("a.s")
> >                DW_AT_comp_dir    ("/tmp/c")
> >                DW_AT_producer    ("GNU AS 2.34")
> >                DW_AT_language    (DW_LANG_Mips_Assembler)
> >
> > Basically it just tells the debugger an address range corresponds to a.s
> >
> > clang integrated assembly additionally synthesizes DW_TAG_label:
> >
> > 0x0000000b: DW_TAG_compile_unit
> >                DW_AT_stmt_list   (0x00000000)
> >                DW_AT_low_pc      (0x0000000000000000)
> >                DW_AT_high_pc     (0x000000000000000b)
> >                DW_AT_name        ("a.s")
> >                DW_AT_comp_dir    ("/tmp/c")
> >                DW_AT_producer    ("clang version 11.0.0 ")
> >                DW_AT_language    (DW_LANG_Mips_Assembler)
> >
> > 0x00000043:   DW_TAG_label
> >                  DW_AT_name      ("foo")
> >                  DW_AT_decl_file ("/tmp/c/a.s")
> >                  DW_AT_decl_line (6)
> >                  DW_AT_low_pc    (0x0000000000000000)
> >
> > It emits a bit more, but DW_TAG_label may not be useful. gdb knows the line number of 'foo' by
> > searching the address of 'foo' (from symbol table) in .debug_line
> >
>
> Unsure how to produce that DW_TAG lines with IAS.
>
> So, I used llvm-objdump and llvm-readelf:
>
> $ llvm-objdump --syms arch/x86/crypto/aes_ctrby8_avx-x86_64.o
>
> arch/x86/crypto/aes_ctrby8_avx-x86_64.o:        file format elf64-x86-64
>
> SYMBOL TABLE:
> 0000000000000000 l    d  .text  0000000000000000 .text
> 0000000000000000 l    d  .data  0000000000000000 .data
> 0000000000000000 l    d  .bss   0000000000000000 .bss
> 0000000000000000 l    d  .rodata        0000000000000000 .rodata
> 0000000000000000 l       .rodata        0000000000000000 byteswap_const
> 0000000000000010 l       .rodata        0000000000000000 ddq_low_msk
> 0000000000000020 l       .rodata        0000000000000000 ddq_high_add_1
> 0000000000000030 l       .rodata        0000000000000000 ddq_add_1
> 0000000000000040 l       .rodata        0000000000000000 ddq_add_2
> 0000000000000050 l       .rodata        0000000000000000 ddq_add_3
> 0000000000000060 l       .rodata        0000000000000000 ddq_add_4
> 0000000000000070 l       .rodata        0000000000000000 ddq_add_5
> 0000000000000080 l       .rodata        0000000000000000 ddq_add_6
> 0000000000000090 l       .rodata        0000000000000000 ddq_add_7
> 00000000000000a0 l       .rodata        0000000000000000 ddq_add_8
> 0000000000000008 l       *ABS*  0000000000000000 by
> 0000000000000000 l       *ABS*  0000000000000000 load_keys
> 0000000000000003 l       *ABS*  0000000000000000 klen
> 0000000000000008 l       *ABS*  0000000000000000 i
> 00000000000000a0 l       .rodata        0000000000000000 var_ddq_add
> 0000000000000007 l       *ABS*  0000000000000000 j
> 0000000000000000 l    d  .debug_info    0000000000000000 .debug_info
> 0000000000000000 l    d  .debug_abbrev  0000000000000000 .debug_abbrev
> 0000000000000000 l    d  .debug_line    0000000000000000 .debug_line
> 0000000000000000 l    d  .debug_str     0000000000000000 .debug_str
> 0000000000000000 l    d  .debug_aranges 0000000000000000 .debug_aranges
> 0000000000000000 g     F .text  0000000000001245 aes_ctr_enc_128_avx_by8
> 0000000000001250 g     F .text  0000000000001432 aes_ctr_enc_192_avx_by8
> 0000000000002690 g     F .text  0000000000001622 aes_ctr_enc_256_avx_by8
>
> $ llvm-readelf -p .debug_line arch/x86/crypto/aes_ctrby8_avx-x86_64.o
> String dump of section '.debug_line':
> [     0] e
> [     4] .
> [     6] >
> [     a] .....
> [    10] ....
> [    17] .
> [    1a] .arch/x86/crypto
> [    2c] aes_ctrby8_avx-x86_64.S
> [    44] .
> [    49] ..
> [    53] ........$.....(...,
> [    67] ..
>
> $ llvm-readelf -p .debug_str arch/x86/crypto/aes_ctrby8_avx-x86_64.o
> String dump of section '.debug_str':
> [     0] arch/x86/crypto/aes_ctrby8_avx-x86_64.S
> [    28] /home/dileks/src/linux-kernel/git
> [    4a] GNU AS 2.34
>
> Here, I build with...
>
> make CC=clang-11 HOSTCC=clang-11 LD=ld.lld-11 HOSTLD=ld.lld-11
> OBJDUMP=llvm-objdump LLVM_IAS=1 ...
>
> ...means I use GNU/as which is true.
>
> $ which as
> /usr/bin/as
>
> $ as --version
> GNU assembler (GNU Binutils for Debian) 2.34
> Copyright (C) 2020 Free Software Foundation, Inc.
> This program is free software; you may redistribute it under the terms of
> the GNU General Public License version 3 or later.
> This program has absolutely no warranty.
> This assembler was configured for a target of `x86_64-linux-gnu
>

Hmm, DWARF version 2?

$ llvm-dwarfdump arch/x86/crypto/aes_ctrby8_avx-x86_64.o | head -5
arch/x86/crypto/aes_ctrby8_avx-x86_64.o:        file format elf64-x86-64

.debug_info contents:
0x00000000: Compile Unit: length = 0x0000002a version = 0x0002
abbr_offset = 0x0000 addr_size = 0x08 (next unit at 0x0000002e)

Build-log says:

clang-11 -Wp,-MD,arch/x86/crypto/.aes_ctrby8_avx-x86_64.o.d -nostdinc
-isystem /home/dileks/src/llvm-toolchain/install/lib/clang/11.0.0/include
-I./arch/x86/include -I./arch/x86/include/generated  -I./include
-I./arch/x86/include/uapi -I./arch/x86/include/generated/uapi
-I./include/uapi -I./include/generated/uapi -include
./include/linux/kconfig.h -D__KERNEL__ -Qunused-arguments
-D__ASSEMBLY__ -fno-PIE -Werror=unknown-warning-option -m64
-Wa,-gdwarf-4 -gz=zlib -DCC_USING_FENTRY -no-integrated-as  -DMODULE
-c -o arch/x86/crypto/aes_ctrby8_avx-x86_64.o
arch/x86/crypto/aes_ctrby8_avx-x86_64.S

Here I see "-Wa,-gdwarf-4" is passed.

Any idea?

- Sedat -

>
> > The DWARF version of assembly files matters very little.
> >
> > >> > > [1] https://github.com/ClangBuiltLinux/linux/issues/1049
> > >> > > [2] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/kbuild/llvm.rst#n47
> > >> > > [3] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/kbuild/llvm.rst#n62
> > >> > > [4] https://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-kbuild.git/commit/?h=fixes&id=7b16994437c7359832dd51d66c5c387995a91438
> > >> >
> > >> > --
> > >> > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > >> > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > >> > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200616173207.GA1497519%40rani.riverdale.lan.
> > >>
> > >>
> > >>
> > >> --
> > >> Thanks,
> > >> ~Nick Desaulniers
> > >
> > >--
> > >You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > >To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > >To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUWm8SRiNLGsu%2BSXszOSOge2yfvkaBGTXLPKLTKKtFFuDQ%40mail.gmail.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVdZL5ka8FuiR74A0aiQVfEcdGoO4-2BYizRBp9k5SGLQ%40mail.gmail.com.
