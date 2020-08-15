Return-Path: <clang-built-linux+bncBDYJPJO25UGBBHMY4H4QKGQE372TP3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 304762451D2
	for <lists+clang-built-linux@lfdr.de>; Sat, 15 Aug 2020 22:57:03 +0200 (CEST)
Received: by mail-pg1-x538.google.com with SMTP id x15sf7698691pgx.17
        for <lists+clang-built-linux@lfdr.de>; Sat, 15 Aug 2020 13:57:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597525021; cv=pass;
        d=google.com; s=arc-20160816;
        b=tfh8dh//mxNsC+Jq+NXQfxGSia/UxqMvTUUzeLnMFsAXr8QcvdOEdHwNMt+2mS/6zA
         m4vzLX4dKmMmhCdkgbdxpvsAt6bmYyN0P56ChXbV5JGLSfBTn8ldH7sOJcgcyqj9YysB
         EbHT2OEvxppcIQzp9V1xs9yBTOtcw2CsDasLWwMtBGdVddmwgGBv/C1eZcaqdJ2+jxN8
         rF4PZhbZHo3y7bnB+PpUtxygvxw0gAHD1ldV3VycI+/4S+UsqMzSawcXuIhG+L5LMOEy
         LdRms0yYfSNsIVINuPnYwbOE8ew+lmcmIjVB7uxvrltM5rnJkIoAyKPpjEBanMUCDCkp
         snMA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=LuYK9EgpMJiddtgqueoXal0H7kVZxq1STqbaBQsANJ8=;
        b=Yz2SlV6kFVPPkw7Kc24ydeWm2MrJ7lpUYc8TSzyRQChJ2bhh8GGVyizEKovm/+Bvhi
         1ulEO/Nw0UxCA/fYfy8u9b8VSzTq9PS8Spq3OAHyiHEsBsdu0JrcP+Xxj51E8opMu4iX
         F5coRyfi/YXADaK5Y00QHYx/sGL5W2z8edKgENd8B1c6TN2eGH97SKHyUZjK0UKJG47W
         fDB+7lz9Js+kW3OdhOSS19Wpux6+cucARc+ZO3n+N3Mwfa937EDbMxZr3xgvf0Voiiv4
         pY9L99uJtGCKHDQsMDCzhbxXhZPv2HBpf4EquB9g2cKY3IPVZz8GkeZ4/TrW6GTT/C4b
         eYHw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ALUgM3Fc;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LuYK9EgpMJiddtgqueoXal0H7kVZxq1STqbaBQsANJ8=;
        b=J5sM1gB+BThxvXxn1o6nl53wrR5uVSMAPFf4UJtSZJC4P7j6mWgA42J7Px/s4hhWbn
         mYDN79HJI3zhr3sn8NPUMuhbLbvvgEINy5cJf2qIucXYO24Y7mh1Hb8ii7m+unCtik9V
         1/IeFObqQsd/6ceV/jFNfAJcy3Bsxn3lsBaE2dQLzUT1/2pVci+6AYh7TDUgNsnol/AB
         rUwvj4ih2rDd5qiVaOPb5QDkBAJWA+5daHNm2qsXjlyHOxAB84XzYZQ8NUZUlbGbXo2k
         7lLuGVE+GUp0IApSjhTrcj3K8d4M0lqqfbPpQrBl1viH3PZsvr2EsKnWvGmK3Hb291zH
         OUfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LuYK9EgpMJiddtgqueoXal0H7kVZxq1STqbaBQsANJ8=;
        b=E3/jcxyz7bNCxfjZqWOdO/kAwa7Yqv/Z+qAomKSLjoEiVznWX6gpoSOObEmebtc1II
         nTZDC2FVYzvz/S5RMB7mAUIZH6OuKLriX7JqSeHdfgSDYbJzXjnL+oTU+/xNGXD+Vdxb
         dZAjIB/CSSvzHTtXT1iVVAeW9iKpIud8aoaP6dzRNsF0eE5Iml7J7DSsuXb3xOcZiQM3
         4El7CXy0NEx4zDyaPV0FWK2BCX+wf04jMpqVWrPJX0t4BPNozGsWayFaH2/fo78pseXM
         As6FW/5STiFlHBtFHE9fCxu8BiitcmlHUcXETBgN+H2JHfeAYh09GPaYN0YQt1IzPUvZ
         Y/zg==
X-Gm-Message-State: AOAM532lqK1GnaCrjXZESpKRcn7vvJWnXeMRU65uQE2O+9t7980Uuh2f
	9AhPyVLLVwMpIkn0UYOwMhI=
X-Google-Smtp-Source: ABdhPJxckqOMXOGUOeF6x6PS4ghxH6S2XCDsUxiRckXq/X69TwHq0gbyOeCOPl6eAEubvk6O98+BQQ==
X-Received: by 2002:a17:90b:a45:: with SMTP id gw5mr6976432pjb.80.1597525021304;
        Sat, 15 Aug 2020 13:57:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:bb8f:: with SMTP id m15ls5049063pls.5.gmail; Sat, 15
 Aug 2020 13:57:00 -0700 (PDT)
X-Received: by 2002:a17:902:780f:: with SMTP id p15mr6524096pll.56.1597525020842;
        Sat, 15 Aug 2020 13:57:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597525020; cv=none;
        d=google.com; s=arc-20160816;
        b=eutz/3s6Bu3+GbCTJ9jIvmKDu8+2npDyaV3pNZ6A4rDDschAfr4tvkEEgQK/l2y6Fu
         N6WZgqWyojFsjqDbjB1l2iENLsYIwxuvjq7bR6gyIwVogYpFnHEeFvstfODekdY19omZ
         191K/pAf/L2S63viT1Y6VXiG8qa5rWHob+XqB3EDMWRODv4J4DxrV2pgQZfEAP6ZdYeR
         1A7dz/TtExJ6EVl10bZ9ur9YT2jtVgiVSwLf6b99TExOTLKDcIT573Ht+4gV4c4CgCJz
         nUQZMNqAvp2Be7DGC6vVLkd37zlDtCYD9oe1ff6KBu6NU+/Q82sH8Mb/GYuGL1g9J9H5
         Ky5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=UtBjDqPvO0XxPgS4w2mz5FIgUERc0EMLvaI4Ab10ZQQ=;
        b=F9wgJSQOKVyVpLsdGExROJvvUZuLkcOQ4DdGFmSf3Ly7LPbJu3Da0xESEQ/V+oQ5Ww
         sIM9g/D0+ab+Ewm2oOuS88XCIcaAQ5+JBSISDVR26Eq8vHOmTDbuBOg5BmApHKFrKUqg
         mI9YjpXWtf/lx4a1LR2pZqKkHBxZkHDib7H1Tyr9Me43DiuTeNs2mQNcQMBWB8PcAwTL
         3hUjmN4Cky57ZLXR5mFYYkJr0RFlE0qIOg5agODwLZK1bPpHSEPNu+omwniZMyh8uJG6
         c/UcqSwC6FnGIc/9SYAXpN+a0pAnxEPgonn4uw035u/YkNTezUD2ZuPHI17nzM34n/Ph
         rK5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ALUgM3Fc;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id t13si684645plr.0.2020.08.15.13.57.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 15 Aug 2020 13:57:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id k18so6213947pfp.7
        for <clang-built-linux@googlegroups.com>; Sat, 15 Aug 2020 13:57:00 -0700 (PDT)
X-Received: by 2002:a62:8303:: with SMTP id h3mr6288262pfe.169.1597525020265;
 Sat, 15 Aug 2020 13:57:00 -0700 (PDT)
MIME-Version: 1.0
References: <20200812004158.GA1447296@rani.riverdale.lan> <20200812004308.1448603-1-nivedita@alum.mit.edu>
 <CA+icZUVdTT1Vz8ACckj-SQyKi+HxJyttM52s6HUtCDLFCKbFgQ@mail.gmail.com>
In-Reply-To: <CA+icZUVdTT1Vz8ACckj-SQyKi+HxJyttM52s6HUtCDLFCKbFgQ@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Sat, 15 Aug 2020 13:56:49 -0700
Message-ID: <CAKwvOdmHxsLzou=6WN698LOGq9ahWUmztAHfUYYAUcgpH1FGRA@mail.gmail.com>
Subject: Re: [PATCH v2] x86/boot/compressed: Disable relocation relaxation
To: Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, Thomas Gleixner <tglx@linutronix.de>
Cc: Arvind Sankar <nivedita@alum.mit.edu>, Fangrui Song <maskray@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, e5ten.arch@gmail.com, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Ard Biesheuvel <ardb@kernel.org>, Kees Cook <keescook@chromium.org>, 
	LKML <linux-kernel@vger.kernel.org>, "# 3.4.x" <stable@vger.kernel.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ALUgM3Fc;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444
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

Hi Ingo,
I saw you picked up Arvind's other series into x86/boot.  Would you
mind please including this, as well?  Our CI is quite red for x86...

EOM

On Sat, Aug 15, 2020 at 8:49 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Wed, Aug 12, 2020 at 2:43 AM Arvind Sankar <nivedita@alum.mit.edu> wrote:
> >
> > The x86-64 psABI [0] specifies special relocation types
> > (R_X86_64_[REX_]GOTPCRELX) for indirection through the Global Offset
> > Table, semantically equivalent to R_X86_64_GOTPCREL, which the linker
> > can take advantage of for optimization (relaxation) at link time. This
> > is supported by LLD and binutils versions 2.26 onwards.
> >
> > The compressed kernel is position-independent code, however, when using
> > LLD or binutils versions before 2.27, it must be linked without the -pie
> > option. In this case, the linker may optimize certain instructions into
> > a non-position-independent form, by converting foo@GOTPCREL(%rip) to $foo.
> >
> > This potential issue has been present with LLD and binutils-2.26 for a
> > long time, but it has never manifested itself before now:
> > - LLD and binutils-2.26 only relax
> >         movq    foo@GOTPCREL(%rip), %reg
> >   to
> >         leaq    foo(%rip), %reg
> >   which is still position-independent, rather than
> >         mov     $foo, %reg
> >   which is permitted by the psABI when -pie is not enabled.
> > - gcc happens to only generate GOTPCREL relocations on mov instructions.
> > - clang does generate GOTPCREL relocations on non-mov instructions, but
> >   when building the compressed kernel, it uses its integrated assembler
> >   (due to the redefinition of KBUILD_CFLAGS dropping -no-integrated-as),
> >   which has so far defaulted to not generating the GOTPCRELX
> >   relocations.
> >
> > Nick Desaulniers reports [1,2]:
> >   A recent change [3] to a default value of configuration variable
> >   (ENABLE_X86_RELAX_RELOCATIONS OFF -> ON) in LLVM now causes Clang's
> >   integrated assembler to emit R_X86_64_GOTPCRELX/R_X86_64_REX_GOTPCRELX
> >   relocations. LLD will relax instructions with these relocations based
> >   on whether the image is being linked as position independent or not.
> >   When not, then LLD will relax these instructions to use absolute
> >   addressing mode (R_RELAX_GOT_PC_NOPIC). This causes kernels built with
> >   Clang and linked with LLD to fail to boot.
> >
> > Patch series [4] is a solution to allow the compressed kernel to be
> > linked with -pie unconditionally, but even if merged is unlikely to be
> > backported. As a simple solution that can be applied to stable as well,
> > prevent the assembler from generating the relaxed relocation types using
> > the -mrelax-relocations=no option. For ease of backporting, do this
> > unconditionally.
> >
> > [0] https://gitlab.com/x86-psABIs/x86-64-ABI/-/blob/master/x86-64-ABI/linker-optimization.tex#L65
> > [1] https://lore.kernel.org/lkml/20200807194100.3570838-1-ndesaulniers@google.com/
> > [2] https://github.com/ClangBuiltLinux/linux/issues/1121
> > [3] https://reviews.llvm.org/rGc41a18cf61790fc898dcda1055c3efbf442c14c0
> > [4] https://lore.kernel.org/lkml/20200731202738.2577854-1-nivedita@alum.mit.edu/
> >
> > Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
> > Reported-by: Nick Desaulniers <ndesaulniers@google.com>
> > Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> > Tested-by: Nick Desaulniers <ndesaulniers@google.com>
> > Cc: stable@vger.kernel.org
> > Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
>
> Thanks for the patch.
>
> Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
>
> - Sedat -
>
> [1] https://github.com/ClangBuiltLinux/linux/issues/1120#issuecomment-674409705
>
> > ---
> >  arch/x86/boot/compressed/Makefile | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/arch/x86/boot/compressed/Makefile b/arch/x86/boot/compressed/Makefile
> > index 3962f592633d..ff7894f39e0e 100644
> > --- a/arch/x86/boot/compressed/Makefile
> > +++ b/arch/x86/boot/compressed/Makefile
> > @@ -43,6 +43,8 @@ KBUILD_CFLAGS += -Wno-pointer-sign
> >  KBUILD_CFLAGS += $(call cc-option,-fmacro-prefix-map=$(srctree)/=)
> >  KBUILD_CFLAGS += -fno-asynchronous-unwind-tables
> >  KBUILD_CFLAGS += -D__DISABLE_EXPORTS
> > +# Disable relocation relaxation in case the link is not PIE.
> > +KBUILD_CFLAGS += $(call as-option,-Wa$(comma)-mrelax-relocations=no)
> >
> >  KBUILD_AFLAGS  := $(KBUILD_CFLAGS) -D__ASSEMBLY__
> >  GCOV_PROFILE := n
> > --
> > 2.26.2
> >
> > --
> > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200812004308.1448603-1-nivedita%40alum.mit.edu.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmHxsLzou%3D6WN698LOGq9ahWUmztAHfUYYAUcgpH1FGRA%40mail.gmail.com.
