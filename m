Return-Path: <clang-built-linux+bncBDT2NE7U5UFRB7NS32DQMGQEYUCSAWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 4470F3D076B
	for <lists+clang-built-linux@lfdr.de>; Wed, 21 Jul 2021 05:50:23 +0200 (CEST)
Received: by mail-pg1-x538.google.com with SMTP id a6-20020a63e4060000b02902272a0052cdsf679750pgi.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Jul 2021 20:50:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626839422; cv=pass;
        d=google.com; s=arc-20160816;
        b=javJXUbWrN501n6vG0XpvdznXlOvR1hfOeEiF1k7hTfP8Y9XXkaOnkq09++vAavmmC
         UXiW+T0Yi7awNkPeVCn+f+ybSxvH3Pag3UXUmN1AK+URAPtYXBZUtdWVUI2uGUAIbm8m
         F+gfSRx+JF7hqN8FOzDMZeFLieb3PqB9s0duNW3QGeq4EusVEg0/77xAg+5yQrg4xToz
         7LLdkFFCuC0NFaL9QMg8lU1i0MndcuSrBYRjV15ttWLsDmUgaVRfSwv5bZG8uSEpFg2B
         jpVDz2qDB0RCa2ySL01q2NcbBmPWwMcGpjM00o8/up1eXFeX/YUfsviLFx9Tnh1JR/br
         YQng==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=NZ7surzpwbMMDVe6V9dmDDko7ujbVWjHd89ROi1nZ4U=;
        b=qw/Fs4WXQ5fvhveQlckuVzBoLOAdepiC34vfAxSMs7hMO9jxsY0zpee5q1NQXSIvI4
         JH5NVMVKIm5pYdcQfvOMe+aRYF3H7n60bzVcmKnbk+Gjket3ix/w0xI4hCWZ8E97VNIx
         JG38sdl+ZCEGlsVsncD4nDAiFyw05LyTHsQdOT0XObgXeWu0/5jnhrXL3whDNQoMI44n
         miHJxblG93Wo0glBTC5In0bl/pstzpQEnKQ6qoGcYU2vUyZqqgiYYr1yMRxxe6XK9gVQ
         pf5lxGCxLEvpo9/2PU/FUJBURrEU0WiEL6HnakPP0xYetVtzTkvN5VLdM0hS1AC08uZm
         M8cw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=x3gtbS9C;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NZ7surzpwbMMDVe6V9dmDDko7ujbVWjHd89ROi1nZ4U=;
        b=luVbVNqR58RCuZgu89o76O+2QgvSafxwbyISgLOFi2eyH9xCWL4gWyPqWVXW9bRiDH
         uR7shE03jjx2dh3IvRiVCH6hiQDJLEufPLpHp/hA4Q9ElvwJcv+a/EEgJv5EQQ2UGZPY
         +v+FLp64sdQNlS14KmWZgSrvOx0T3JIhCjy7YC6MWCLg4iNwbEJd5HvEMIPEI8cjhCif
         M64FFBPTp8sjFX047uouBQYUY7x5eKeDgm2XiRwpmO180rBeifTgeqXZL7x7O4ZTr3lB
         AyLjIltUk6RvvYtgdWtiLRTZZDJde0RS5KOm53XsqzdaC8YaojvtDv9v44DnVHQL0Ofa
         Ti7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NZ7surzpwbMMDVe6V9dmDDko7ujbVWjHd89ROi1nZ4U=;
        b=iSWSwd+Id1qkS5M8k9miQG5py6nSsVCenbrWtl1hwM8on5K/p++Cdpk8j7wvWmps51
         GdqZ3Ep8PYs41oY7XODbYaVzEEDixqtzJ/LrgmpnnRLaLq/Jdnl1r068zA24ZHuwW3V+
         mJtks2sVYfd/j5omUjIzdeonWvegkWbybhNSSn+5RhAXszStVAF91WXfHJfO2XIxytHu
         CkpnhxAb21xMHb0qtncsgwa7ZG3JewG+9sScFtS2FFsJTXUOM+5yRHPw3nRA1EziVJS/
         0t2FUzp1CY/EHdjL7wHkY7CaWleTDgkLTWJjvx5/eTClId/wjcMRt9p0Z7ncs35EQczg
         cqgQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531z2Qpk7mdqREXMLsqwVQDLht4GKMlqQAVVoQY5wK+tsRk9lae6
	ZdaPya2wbmqJ/GGcVHBlkWM=
X-Google-Smtp-Source: ABdhPJy+RG0O1DrLF69uQyPgojY9EBitJFuplAU56i/oR+GbxsQ15ftLV9XLhlKUlxm6U1yDZKFPaQ==
X-Received: by 2002:a17:902:c213:b029:12a:fb53:35cb with SMTP id 19-20020a170902c213b029012afb5335cbmr26231239pll.49.1626839421898;
        Tue, 20 Jul 2021 20:50:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:1796:: with SMTP id s22ls411355pfg.7.gmail; Tue, 20
 Jul 2021 20:50:21 -0700 (PDT)
X-Received: by 2002:a65:4244:: with SMTP id d4mr34284362pgq.83.1626839421280;
        Tue, 20 Jul 2021 20:50:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626839421; cv=none;
        d=google.com; s=arc-20160816;
        b=nXckRCrct6ENF3yYiJqNsYkp+y566nDqmaahitkPpkmEQx2+pj5M8+XLIQ6z6ZtckS
         ptrdZQvgKZ8g5Mtqbpb6FYfF+rLWS0g7/GQ+HGkkH9Dr9RtpzmTjNuxyfmpV79fP6Pef
         VCA0QOxdyfpXoKGz6NVk3HZidXh1XYQtnBYCIMSuEQo94p4XdIAI9+kGKc3otX847abR
         kZmNtsH0DAtB55v9688d6BHPjbXU8LjuANiv762cHCVNhHvvAKoZTWyegsbeMQ8TunBM
         uog2lg4WdH+1erRcbPDFPdPGooPKq29CO+Shky1/n9T8mQluOWY0DE0qYlqZ4jD0e6uO
         oYpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=Oyv9f08xmDX0jvPZDK70b1NpsOtopIHrNBvL4PB/YEc=;
        b=GW+BPU20BqQJBPW3oChkTSCQT88/ebHWPo6l/1E0MYWXb/YhNIo8P/6ikoXrgVJlTU
         wIYp6b/7MccH7ck7cv73n7/GIubhYWN17hFj/jhqTN/V/LshaHSjgZAXkKLbBKTZH0RF
         /C7Y8EH7cxLiBI8G9S3yac31PbwtAErxU8HabXx+kRIaspO2CMjTh+uo9aW03jrOEX6c
         xusqSdgzGw4EXsrNjdjw4XNt6pJqu1+rKqjTtxfNnhld8iPDL55Mlki6GeBOxhLVRIDM
         nIo/d8cuh7h6VgoOIhP15OIrgKyI3zjh8P8IfwzBjc6EYubMoPGKGX4+EJRTchTWfFR8
         lMew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=x3gtbS9C;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-01.nifty.com (conssluserg-01.nifty.com. [210.131.2.80])
        by gmr-mx.google.com with ESMTPS id o2si502658pjj.1.2021.07.20.20.50.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Jul 2021 20:50:21 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) client-ip=210.131.2.80;
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174]) (authenticated)
	by conssluserg-01.nifty.com with ESMTP id 16L3o479005460
	for <clang-built-linux@googlegroups.com>; Wed, 21 Jul 2021 12:50:04 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com 16L3o479005460
X-Nifty-SrcIP: [209.85.210.174]
Received: by mail-pf1-f174.google.com with SMTP id a127so1203048pfa.10
        for <clang-built-linux@googlegroups.com>; Tue, 20 Jul 2021 20:50:04 -0700 (PDT)
X-Received: by 2002:a05:6a00:26d0:b029:32d:7d40:5859 with SMTP id
 p16-20020a056a0026d0b029032d7d405859mr33943479pfw.76.1626839404005; Tue, 20
 Jul 2021 20:50:04 -0700 (PDT)
MIME-Version: 1.0
References: <20210708232522.3118208-1-ndesaulniers@google.com>
 <20210708232522.3118208-3-ndesaulniers@google.com> <CAK7LNARye5Opc0AdXpn+DHB7hTaphoRSCUWxJgXu+sjuNjWUCg@mail.gmail.com>
 <0636b417-15bb-3f65-39f7-148d94fe22db@kernel.org>
In-Reply-To: <0636b417-15bb-3f65-39f7-148d94fe22db@kernel.org>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 21 Jul 2021 12:49:26 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQtw-ZR0D4quHAqT_6rkMjgkjJhWG8EY7H4T1=PwUMgVw@mail.gmail.com>
Message-ID: <CAK7LNAQtw-ZR0D4quHAqT_6rkMjgkjJhWG8EY7H4T1=PwUMgVw@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] Makefile: infer CROSS_COMPILE from SRCARCH for
 LLVM=1 LLVM_IAS=1
To: Nathan Chancellor <nathan@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
        Miguel Ojeda <ojeda@kernel.org>, Fangrui Song <maskray@google.com>,
        Michal Marek <michal.lkml@markovi.net>,
        Arnd Bergmann <arnd@kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        Christoph Hellwig <hch@infradead.org>,
        Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=x3gtbS9C;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Wed, Jul 21, 2021 at 2:30 AM Nathan Chancellor <nathan@kernel.org> wrote:
>
> On 7/20/2021 1:04 AM, Masahiro Yamada wrote:
> > On Fri, Jul 9, 2021 at 8:25 AM 'Nick Desaulniers' via Clang Built
> > Linux <clang-built-linux@googlegroups.com> wrote:
> >>
> >> We get constant feedback that the command line invocation of make is too
> >> long. CROSS_COMPILE is helpful when a toolchain has a prefix of the
> >> target triple, or is an absolute path outside of $PATH, but it's mostly
> >> redundant for a given SRCARCH. SRCARCH itself is derived from ARCH
> >> (normalized for a few different targets).
> >>
> >> If CROSS_COMPILE is not set, simply set --target= for CLANG_FLAGS,
> >> KBUILD_CFLAGS, and KBUILD_AFLAGS based on $SRCARCH.
> >>
> >> Previously, we'd cross compile via:
> >> $ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make LLVM=1 LLVM_IAS=1
> >> Now:
> >> $ ARCH=arm64 make LLVM=1 LLVM_IAS=1
> >>
> >> For native builds (not involving cross compilation) we now explicitly
> >> specify a target triple rather than rely on the implicit host triple.
> >>
> >> Link: https://github.com/ClangBuiltLinux/linux/issues/1399
> >> Suggested-by: Arnd Bergmann <arnd@kernel.org>
> >> Suggested-by: Nathan Chancellor <nathan@kernel.org>
> >> Suggested-by: Masahiro Yamada <masahiroy@kernel.org>
> >> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> >> ---
> >> Changes v1 -> v2:
> >> * Fix typos in commit message as per Geert and Masahiro.
> >> * Use SRCARCH instead of ARCH, simplifying x86 handling, as per
> >>    Masahiro. Add his sugguested by tag.
> >> * change commit oneline from 'drop' to 'infer.'
> >> * Add detail about explicit host --target and relationship of ARCH to
> >>    SRCARCH, as per Masahiro.
> >>
> >> Changes RFC -> v1:
> >> * Rebase onto linux-kbuild/for-next
> >> * Keep full target triples since missing the gnueabi suffix messes up
> >>    32b ARM. Drop Fangrui's sugguested by tag. Update commit message to
> >>    drop references to arm64.
> >> * Flush out TODOS.
> >> * Add note about -EL/-EB, -m32/-m64.
> >> * Add note to Documentation/.
> >>
> >>   Documentation/kbuild/llvm.rst |  5 +++++
> >>   scripts/Makefile.clang        | 34 ++++++++++++++++++++++++++++++++--
> >>   2 files changed, 37 insertions(+), 2 deletions(-)
> >>
> >> diff --git a/Documentation/kbuild/llvm.rst b/Documentation/kbuild/llvm.rst
> >> index b18401d2ba82..80c63dd9a6d1 100644
> >> --- a/Documentation/kbuild/llvm.rst
> >> +++ b/Documentation/kbuild/llvm.rst
> >> @@ -46,6 +46,11 @@ example: ::
> >>
> >>          clang --target=aarch64-linux-gnu foo.c
> >>
> >> +When both ``LLVM=1`` and ``LLVM_IAS=1`` are used, ``CROSS_COMPILE`` becomes
> >> +unnecessary and can be inferred from ``ARCH``. Example: ::
> >> +
> >> +       ARCH=arm64 make LLVM=1 LLVM_IAS=1
> >> +
> >>   LLVM Utilities
> >>   --------------
> >>
> >> diff --git a/scripts/Makefile.clang b/scripts/Makefile.clang
> >> index 297932e973d4..956603f56724 100644
> >> --- a/scripts/Makefile.clang
> >> +++ b/scripts/Makefile.clang
> >> @@ -1,6 +1,36 @@
> >> -ifneq ($(CROSS_COMPILE),)
> >> +# Individual arch/{arch}/Makfiles should use -EL/-EB to set intended endianness
> >> +# and -m32/-m64 to set word size based on Kconfigs instead of relying on the
> >> +# target triple.
> >> +ifeq ($(CROSS_COMPILE),)
> >> +ifneq ($(LLVM),)
> >
> >
> > Do you need to check $(LLVM) ?
> >
> >
> > LLVM=1 is a convenient switch to change all the
> > defaults, but yet you can flip each tool individually.
> >
> > Instead of LLVM=1, you still should be able to
> > get the equivalent setups by:
> >
> >
> >    make CC=clang LD=ld.lld AR=llvm-ar OBJCOPY=llvm-objcopy ...
> >
> >
> > The --target option is passed to only
> > KBUILD_CFLAGS and KBUILD_AFLAGS.
> >
> > So, when we talk about --target=,
> > we only care about whether $(CC) is Clang.
> > Not caring about $(AR), $(LD), or $(OBJCOPY).
> >
> >
> > scripts/Makefile.clang is already guarded by:
> >
> > ifneq ($(findstring clang,$(CC_VERSION_TEXT)),
>
> $ make ARCH=arm64 CC=clang LLVM_IAS=1
>
> will use the right compiler and assembler but none of the other binary
> tools because '--prefix=' will not be set so CROSS_COMPILE needs to be
> specified still, which defeats the purpose of this whole change. This
> patch is designed to work for the "normal" case of saying "I want to use
> all of the LLVM tools", not "I want to use clang by itself".


I disagree.

LLVM=1 is a shorthand.



make LLVM=1 LLVM_IAS=1

  should be equivalent to:

make CC=clang LD=ld.lld AR=llvm-ar NM=llvm-nm STRIP=llvm-strip \
  OBJCOPY=llvm-objcopy OBJDUMP=llvm-objdump READELF=llvm-readelf \
  HOSTCC=clang HOSTCXX=clang++ HOSTAR=llvm-ar HOSTLD=ld.lld \
  LLVM_IAS=1



We do not care about the origin of CC=clang,
whether it came from LLVM=1 or every tool was explicitly,
individually specified.



ifneq ($(LLVM),) is a garbage code
that checks a pointless thing.







> >> +ifeq ($(LLVM_IAS),1)
> >> +ifeq ($(SRCARCH),arm)
> >> +CLANG_FLAGS    += --target=arm-linux-gnueabi
> >> +else ifeq ($(SRCARCH),arm64)
> >> +CLANG_FLAGS    += --target=aarch64-linux-gnu
> >> +else ifeq ($(SRCARCH),hexagon)
> >> +CLANG_FLAGS    += --target=hexagon-linux-gnu
> >> +else ifeq ($(SRCARCH),m68k)
> >> +CLANG_FLAGS    += --target=m68k-linux-gnu
> >> +else ifeq ($(SRCARCH),mips)
> >> +CLANG_FLAGS    += --target=mipsel-linux-gnu
> >> +else ifeq ($(SRCARCH),powerpc)
> >> +CLANG_FLAGS    += --target=powerpc64le-linux-gnu
> >> +else ifeq ($(SRCARCH),riscv)
> >> +CLANG_FLAGS    += --target=riscv64-linux-gnu
> >> +else ifeq ($(SRCARCH),s390)
> >> +CLANG_FLAGS    += --target=s390x-linux-gnu
> >> +else ifeq ($(SRCARCH),x86)
> >> +CLANG_FLAGS    += --target=x86_64-linux-gnu
> >> +else
> >> +$(error Specify CROSS_COMPILE or add '--target=' option to scripts/Makefile.clang)
> >> +endif # SRCARCH
> >> +endif # LLVM_IAS
> >> +endif # LLVM
> >> +else
> >>   CLANG_FLAGS    += --target=$(notdir $(CROSS_COMPILE:%-=%))
> >> -endif
> >> +endif # CROSS_COMPILE
> >> +
> >>   ifeq ($(LLVM_IAS),1)
> >>   CLANG_FLAGS    += -integrated-as
> >>   else
> >> --
> >> 2.32.0.93.g670b81a890-goog
> >>
> >> --
> >> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> >> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> >> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210708232522.3118208-3-ndesaulniers%40google.com.
> >
> >
> >



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAQtw-ZR0D4quHAqT_6rkMjgkjJhWG8EY7H4T1%3DPwUMgVw%40mail.gmail.com.
