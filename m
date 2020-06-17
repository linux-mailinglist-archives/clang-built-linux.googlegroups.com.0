Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBJ4XVD3QKGQERLQ3X2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 19B651FCD54
	for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 14:25:13 +0200 (CEST)
Received: by mail-pl1-x63f.google.com with SMTP id j12sf1366700pll.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 05:25:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592396711; cv=pass;
        d=google.com; s=arc-20160816;
        b=R5xc05HEXzTvP+97572DXbvPtScFoa+zWDhdnxeVIYLsAMw2tjqj/mlmWOBvTZvmYx
         wh2mRFsrvMIW2LwEYUf34sfLbh/FQ+Q6rTpTNOtfg1SsDze4/gbEnfJFrzeNqFDjNoKR
         CELpV6pw5lW75BjL2LrJsMsn8yZksAnkki2TI92zKGd3yDOUHTXtSGQR+27mGPojRTm2
         M8z3Es0wQ+xidYw+J5ojEi84Fl6pb5uDob4TPOBBmAwjcRd/MDHzaJiLeATwCQWpeyuf
         lOwvvgvH9H9F8UPdwuqEw1oiw293a7JeZGs1rjWU4LcWrXV6Z2qsteC6y3prAenc1iVY
         OQ4g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=thoBNexDsgFD0nHG1QyqmkTWJm6j3h4S2XaOw40K57o=;
        b=gCXtdN2JSrs3HdBcHgEnso01BEMhAUEyCE3qZLelmi0OsstLI/CT2aIAco5K0mTDdS
         mlHFsbi5mH46wYBRMu3I7hwP07v+dNKWvyl0NJ5Srq1Gz4aq0yZq7AcDWd8dvX00/Zls
         7LAk7BG1/+W4iDUmS8poD8Dd/GZfndmvYzDCLqwOmRibNEz4jYbdaW4Zvr2jvkEIT8qA
         uqamTR/10KWw4JFVpy0NftS32u2REwBCXmS1O6Oq5oSBPjnjqXDyYgGZSXs+SDXnX86A
         MJb4vsYAjHxL3AA17kPq/cozdOt6RWQbHNM3xecaU63dLZOtBUWt1sbRGdwBol3qf92Z
         QB2w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UBW646BT;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::142 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=thoBNexDsgFD0nHG1QyqmkTWJm6j3h4S2XaOw40K57o=;
        b=gE22+RLECX2CXXWNveYXvWZU0cTCF3L0BzWWZ7CnyYUJm+J6NZ/YI0P+nXr7PhJAEk
         yvFQkS3U0G02v9XtQfnk5CFmTp5rRa7PudpPjsYbbVGEVmrdO7lJ2YB7+vrq611oh7Wh
         jvaYVGteSpjW03B+PtotQvXbwYSX+FNnbq8GqRvK777K+PutVuRAOReDS2z3sTC05zob
         /zstoZS/s8ZcuYoSjThPmRf0Z13MhkYUq9BzAZvFt5I6+UmlG1hkrBCCW5tkaopxTy2t
         AKyCCxnhyrwGDRNVSGFs88M0a9vhARIIvkVPloQOEyK1bCHmrDbQbCFoEBkuzbp/MFfN
         VWCw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=thoBNexDsgFD0nHG1QyqmkTWJm6j3h4S2XaOw40K57o=;
        b=pBVCEH9bWiC3Fg7dRP2zqvpwBEX41LCOvNmvEE4pUVtUGC+GmLpOKPtDpJHidTyutv
         dTHeqVVfHkSyma7aD+hoKbpwp7AbsniidsRBxQ/lW1RGTy86teEk3aQk5J+yUgznO7LL
         6rLXoy7Sk0eNcJ6pKMN9P6Tx/tHhNTEAc3aoeBWKR1UbSi8GmE0tygi24R/TBe59D1lN
         vnT7yng7UHRNo7XhnLrm7f5eNNds5O6pY2VO7JNoS0D5i+3f3Jqt4pTcJK+yHSid4Csm
         E93W+TYjT7fUFAYAx8+hGe1D0hjDAb8ZNUUjyc6j55D6kJs4SY/iit3mQOvKX4nwN+1L
         f7+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=thoBNexDsgFD0nHG1QyqmkTWJm6j3h4S2XaOw40K57o=;
        b=R1ZSrsuZKIbSCx5gEMO0DGDPHsWxP/9QiRpEQLk/AcNjEn9Of+SrqabmZaEQTtwUlB
         E2ToItyxiWZSnaBRM2H7FGUpVj0ovnth0ICntKxLysEP1x6qknK+l27feXplveXKFtJC
         rwJRTjWFqrKOftc3ANhxWh0cCBKW9jH5gtv9No1/0WqVIslOZKgJktKn7luLUlEIoXkH
         Udt+VGfVtX/hWdpBKV2SDpZE070XZRSTFjgqaCpmFKFUuJ7i+LciIVEMv4y0eGJgB2PJ
         hNfvcXmpHE7W9bmT8iNuqa9WD2ZxrPKrDY66M5ehVFU1gXD1CxhymytNrrfAtFk+t2Sh
         r54g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531R3p6F+GjlF6AibE36jgR8BU+RbZ06vmmfyytQpfupLylnREUK
	Ijzva7MrFju0gP/zqYko0vE=
X-Google-Smtp-Source: ABdhPJyFeJmTS0cXSAvrLBZHtkcOc7vnpU7FoOXaryhTq8OVuwNKHU6pesMnA+F+aWkOfI48oHx5bw==
X-Received: by 2002:a17:902:9891:: with SMTP id s17mr1471211plp.202.1592396711713;
        Wed, 17 Jun 2020 05:25:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:3c0d:: with SMTP id j13ls597925pga.8.gmail; Wed, 17 Jun
 2020 05:25:11 -0700 (PDT)
X-Received: by 2002:a63:3f42:: with SMTP id m63mr513464pga.310.1592396711241;
        Wed, 17 Jun 2020 05:25:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592396711; cv=none;
        d=google.com; s=arc-20160816;
        b=Q+1LUlkrOlWxmLif4S4TFHkdqQlJACm0Pew9N9QOpKZL974yKwUC0nvXfDP4i8eGXy
         xEnTjg6dYxcIj+uUVcJgh7NmIsHljFjqzGkhUpkPoDgy70/vXE8PZQ5XVGE4vUEOoiy3
         5VqbMw6YCLsuE5HPY+NsBmuh5spxenOSMiN6WiRRyJmnuPEJJFgPRwzEuI+aZykuLI/a
         0CEpTdJex8VfQf7ghYoNZm2tOrQjT/cQJA0y1RfxcRgvmLvgURoaoqojdOzRdAsLsuwK
         owtGJZEPHoFixuJ02Nc+piapnqp/7Z1pGElejFgXx4mf+xs4blwu7dPDgeyGm59YGsSK
         WOkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=A2DymzET+nrcOgSq+zbqFVxpyldj8sdXNOblUKq7SMM=;
        b=dKqAQpaGNsFEWe71BiYWKuoRg8iFfEgA4y+UqSQjlCSggJ8uw7BmAsfZkaSe06AHSo
         WKL3f88g9bFeHH4YBtrQzBjhvVt7yY8HM48goxBM1YyzI8f3FtghpENZx64puhyTs901
         upeUfP9I6uqfdZyqi3PSay1Y+hsTA+HzipLpd0RBigP5ELRlDxbT98US6joW+LddWMHJ
         CIEnNkdaLCl+wHIYQGZUhIhKhcOk0H91eHlptcJVkV6TBc3Wh5L/yPx3b2K7/DOCQ5B1
         MhbZ9k7CjgG2GMS+WDwKmVm1m98tsTLyZAWjalkOEXJGZK1Z+aSaqUmftg/4lga73IDh
         Fx6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UBW646BT;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::142 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x142.google.com (mail-il1-x142.google.com. [2607:f8b0:4864:20::142])
        by gmr-mx.google.com with ESMTPS id l9si223449pjw.2.2020.06.17.05.25.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Jun 2020 05:25:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::142 as permitted sender) client-ip=2607:f8b0:4864:20::142;
Received: by mail-il1-x142.google.com with SMTP id b5so1910320iln.5
        for <clang-built-linux@googlegroups.com>; Wed, 17 Jun 2020 05:25:11 -0700 (PDT)
X-Received: by 2002:a92:498d:: with SMTP id k13mr8298393ilg.226.1592396710510;
 Wed, 17 Jun 2020 05:25:10 -0700 (PDT)
MIME-Version: 1.0
References: <CA+icZUUWh=NzBwAa3hff6yOxY0ZirKmzOLz=a2eZUbW_cD5ECg@mail.gmail.com>
 <20200616173207.GA1497519@rani.riverdale.lan> <CAKwvOd=XH47E4GzKGw_LLVXzskJ_Z8=jf2k=ebG-o7nXFAqzjg@mail.gmail.com>
 <CA+icZUWm8SRiNLGsu+SXszOSOge2yfvkaBGTXLPKLTKKtFFuDQ@mail.gmail.com> <20200617062109.woy2uyefdplw3pst@google.com>
In-Reply-To: <20200617062109.woy2uyefdplw3pst@google.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 17 Jun 2020 14:24:58 +0200
Message-ID: <CA+icZUXRUF5vCStZ8GYwC0mMOH2kh3Ce3oguu-oocVR9EhzCbQ@mail.gmail.com>
Subject: Re: LLVM/Clang: Integrated assembler: DWARF version 4 and passing
 assembler option
To: Fangrui Song <maskray@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Arvind Sankar <nivedita@alum.mit.edu>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Masahiro Yamada <masahiroy@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=UBW646BT;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::142
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

Unsure how to produce that DW_TAG lines with IAS.

So, I used llvm-objdump and llvm-readelf:

$ llvm-objdump --syms arch/x86/crypto/aes_ctrby8_avx-x86_64.o

arch/x86/crypto/aes_ctrby8_avx-x86_64.o:        file format elf64-x86-64

SYMBOL TABLE:
0000000000000000 l    d  .text  0000000000000000 .text
0000000000000000 l    d  .data  0000000000000000 .data
0000000000000000 l    d  .bss   0000000000000000 .bss
0000000000000000 l    d  .rodata        0000000000000000 .rodata
0000000000000000 l       .rodata        0000000000000000 byteswap_const
0000000000000010 l       .rodata        0000000000000000 ddq_low_msk
0000000000000020 l       .rodata        0000000000000000 ddq_high_add_1
0000000000000030 l       .rodata        0000000000000000 ddq_add_1
0000000000000040 l       .rodata        0000000000000000 ddq_add_2
0000000000000050 l       .rodata        0000000000000000 ddq_add_3
0000000000000060 l       .rodata        0000000000000000 ddq_add_4
0000000000000070 l       .rodata        0000000000000000 ddq_add_5
0000000000000080 l       .rodata        0000000000000000 ddq_add_6
0000000000000090 l       .rodata        0000000000000000 ddq_add_7
00000000000000a0 l       .rodata        0000000000000000 ddq_add_8
0000000000000008 l       *ABS*  0000000000000000 by
0000000000000000 l       *ABS*  0000000000000000 load_keys
0000000000000003 l       *ABS*  0000000000000000 klen
0000000000000008 l       *ABS*  0000000000000000 i
00000000000000a0 l       .rodata        0000000000000000 var_ddq_add
0000000000000007 l       *ABS*  0000000000000000 j
0000000000000000 l    d  .debug_info    0000000000000000 .debug_info
0000000000000000 l    d  .debug_abbrev  0000000000000000 .debug_abbrev
0000000000000000 l    d  .debug_line    0000000000000000 .debug_line
0000000000000000 l    d  .debug_str     0000000000000000 .debug_str
0000000000000000 l    d  .debug_aranges 0000000000000000 .debug_aranges
0000000000000000 g     F .text  0000000000001245 aes_ctr_enc_128_avx_by8
0000000000001250 g     F .text  0000000000001432 aes_ctr_enc_192_avx_by8
0000000000002690 g     F .text  0000000000001622 aes_ctr_enc_256_avx_by8

$ llvm-readelf -p .debug_line arch/x86/crypto/aes_ctrby8_avx-x86_64.o
String dump of section '.debug_line':
[     0] e
[     4] .
[     6] >
[     a] .....
[    10] ....
[    17] .
[    1a] .arch/x86/crypto
[    2c] aes_ctrby8_avx-x86_64.S
[    44] .
[    49] ..
[    53] ........$.....(...,
[    67] ..

$ llvm-readelf -p .debug_str arch/x86/crypto/aes_ctrby8_avx-x86_64.o
String dump of section '.debug_str':
[     0] arch/x86/crypto/aes_ctrby8_avx-x86_64.S
[    28] /home/dileks/src/linux-kernel/git
[    4a] GNU AS 2.34

Here, I build with...

make CC=clang-11 HOSTCC=clang-11 LD=ld.lld-11 HOSTLD=ld.lld-11
OBJDUMP=llvm-objdump LLVM_IAS=1 ...

...means I use GNU/as which is true.

$ which as
/usr/bin/as

$ as --version
GNU assembler (GNU Binutils for Debian) 2.34
Copyright (C) 2020 Free Software Foundation, Inc.
This program is free software; you may redistribute it under the terms of
the GNU General Public License version 3 or later.
This program has absolutely no warranty.
This assembler was configured for a target of `x86_64-linux-gnu

- Sedat -

> The DWARF version of assembly files matters very little.
>
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUXRUF5vCStZ8GYwC0mMOH2kh3Ce3oguu-oocVR9EhzCbQ%40mail.gmail.com.
