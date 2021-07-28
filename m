Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBAVYQ6EAMGQEWZPA3JA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa39.google.com (mail-vk1-xa39.google.com [IPv6:2607:f8b0:4864:20::a39])
	by mail.lfdr.de (Postfix) with ESMTPS id C86593D98F8
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Jul 2021 00:36:51 +0200 (CEST)
Received: by mail-vk1-xa39.google.com with SMTP id e11-20020ac5c98b0000b029025d809b26dbsf414978vkm.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 15:36:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627511810; cv=pass;
        d=google.com; s=arc-20160816;
        b=EUbpolqDEUB2f+ueogY+RnuRmGXAP9lsSO8i6uFIR3Nr71YirkJtlN5gGy7tSoJRGO
         3qPTR6gve7hmpkbAfGDaKeQ6BPF+BTt8MibU5VdY0sqTPtNFBK/etzAS7kXyedrgIIIh
         TY/FFP4O72MkZEa9rUtJ4kcuEFnkc4ld9bkpoqiGfqy46RfF+8+PFErhHHxxaCtGSLHH
         OtYoiS/Y4lCENWZe0rPA+pc1xx9lFJE8hoSgYo5moIKNMBx5D6CqSbOFTwIz2rIYRwlQ
         2LHrDe/r5Oh9Yl3FaG01qfYNDVB/miIclp/LXMcSrRl5rvBe8Gr+W2Zz8hm/U9ve1J7c
         t8pQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=qu3JExI7q0NuINCojmL9r4UTftxea2E3CkTzNjx8BLg=;
        b=noxjAuvWEs9MZUA8/COueDEG3QPS6X15vCorOUXFAK7CcWfEhlpfYrpgqMNFn+skiz
         9arCFwtVIYOUCOF2WngF90K26nnF2e4w5EqpJC8MavXJgzkf+5+Ytfi6WBkbdGisGu7U
         8vitBB4kY3Xz9tXd4PybdqIfz2ASOQ7uVxtfqTgbnT1JGLx9R7p0bMfR71MdSsh86TLZ
         Am+/P8dOu7M7rgaSTkF9/ldF+BUixhak9URtYsJjdiyYdShcWaiIENHveAhmPr8FmE9f
         qkYMPLivKaLatWcJZoNo4Vjtr5SVqVswSzZ7Im4iuOM01p/PZKvUuezI+csCFSseDG7F
         sQKg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=UM02UuIi;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qu3JExI7q0NuINCojmL9r4UTftxea2E3CkTzNjx8BLg=;
        b=LKMm8GdrTFm3AL3mwbsIeZo6WJRghQ5Rn0IXhPNOyGpoWNDrYMszfGeRrtUnJ8RyYU
         H0WCVkVZ+DYSKi9pi+kbEAv2v7z5+6Sm6JEr/Ti6II+X3evldwNF+L4VrQCvO4F01O2N
         S2tGc1hcLuJArjkG+bhTYG+j5K+zWEOjXME8gyER8iPLA/6lJUH1N8034a5ULMS23v7R
         M9WYqIEhwbbQbGi0PLqHsbPu4XT5N9O3I5vymoxFSvcsJyMHm66GSyd9eGjcRNIH/iCq
         fFNm0jRBjcbXlCwT0JMTSfxiqJLNBFV9prQdoQFaCndOPM7mqu44+ZDsluL74gv0c8Px
         /w/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qu3JExI7q0NuINCojmL9r4UTftxea2E3CkTzNjx8BLg=;
        b=FCLgEw0kTiKJtvatT4OGpH0qMQyxOuYrdCgKUgvEOurQM1l4ip1JSkac9dIaKHB8Rw
         P8fJKe9KBfoZJl8kbhaQyFw73K9ZbxK0h30ZBZDjcA9e1HutEn+qWI+oCDbiUqY7GI3D
         BzGiOEo/nhYvR/XWFQbDwwCU/SfhF/29WqUrrhSG2iC/kvSB8ZfIjzbJxwwnQ0Ros8n4
         G715dZVqvDDrzA0efxUqOFZAjCTSgTi6ybhg5fdsbtfm8z9KVzNmpPLMYisLd987soh5
         C0MGrke+9uVETCHFmLpWvRyU+nqtvPsSuG750dZLZb2dTf3l54TmCsgEpv5JLplzaSuC
         jEoQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533g89JH/fLz/r4roIlUdV3ovnemFuaB6SRPY7Qaw/b7QtR0l4Ho
	e17/4KYPeOC4k5BbjbLNZDo=
X-Google-Smtp-Source: ABdhPJw73z6PappwgjuNqNBcCvYcQwuzYHaBAUtq5UxfeexBBKG1Zg213Kad0WcgaBROYw/inxCFGg==
X-Received: by 2002:a67:6853:: with SMTP id d80mr2293290vsc.13.1627511810742;
        Wed, 28 Jul 2021 15:36:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:8c84:: with SMTP id o126ls292707vkd.5.gmail; Wed, 28 Jul
 2021 15:36:50 -0700 (PDT)
X-Received: by 2002:ac5:c7bb:: with SMTP id d27mr2080949vkn.9.1627511810134;
        Wed, 28 Jul 2021 15:36:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627511810; cv=none;
        d=google.com; s=arc-20160816;
        b=j3srggZbq5QSMMZpiqYSap6QQg6ygCF7SX3HHZPTZiIMGYHR0HgCCkxzc3gPw/DzDy
         o0OsmjNHEaT13nqzHCZft1Nd54Bo8G0ciGUb9IqckHMYtYfnTTGXvTglAPtCbpVuLH0Z
         EzJkhIcFHwgirELWLuLhVUfKfk+6/ZxzeIEdWPL8IOmPku6DyXshvZHgZG0eLN9q5AIp
         gYW+luV2p2pVSxYSDyFRf6m+lpXbuvyZYAbggTKMVIUBW3TtVGduH8Pxi3Fdnavy+n5x
         OmFMulN8TSrZKtKpGt+ddXJobQdQcXbQeDxPOUN7vs+ISe6j7yywPSC3xrJfEmUJlVi1
         jVNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=TmY7u99GvKGaIrLNACsThniYgzMQ+Eus0lMGKUzW6R4=;
        b=xAQFVjiDS0xcHLAfDEWnfZ7qF/pQsUTzkq1o2oLkvVFYI7cTtk/loThpCn+4nMXNPt
         9qq1+J00j9UnLu8tYxokhlNRp3NU4VK2D0/vuhecETU6Dkc/S/mq68cPUye/t6pURIZg
         9ZQIXMwBIE37GXuxPdw6JD4VQMXQqpON5vIHFo+uB8Z6CuLKP3GDBZoEtynvM2CndS5B
         GMWUu1owvqIAsS24quTq/0zzcXmYpp+f78t+jybog1GGaQzLbwTudCRQWzq7prtdnlDG
         gZ4PIZCnyPdtUgArlCK3llpOzbwDQGxu4Abe/dwOO21t7BIlNv8xDpsGi0HLXb/r2lVE
         A8FA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=UM02UuIi;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-02.nifty.com (conssluserg-02.nifty.com. [210.131.2.81])
        by gmr-mx.google.com with ESMTPS id m22si90003vkf.3.2021.07.28.15.36.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Jul 2021 15:36:50 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) client-ip=210.131.2.81;
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51]) (authenticated)
	by conssluserg-02.nifty.com with ESMTP id 16SMaScu012160
	for <clang-built-linux@googlegroups.com>; Thu, 29 Jul 2021 07:36:28 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com 16SMaScu012160
X-Nifty-SrcIP: [209.85.216.51]
Received: by mail-pj1-f51.google.com with SMTP id j1so7369362pjv.3
        for <clang-built-linux@googlegroups.com>; Wed, 28 Jul 2021 15:36:28 -0700 (PDT)
X-Received: by 2002:a17:90a:c506:: with SMTP id k6mr11696072pjt.198.1627511787958;
 Wed, 28 Jul 2021 15:36:27 -0700 (PDT)
MIME-Version: 1.0
References: <20210708232522.3118208-1-ndesaulniers@google.com>
 <20210708232522.3118208-3-ndesaulniers@google.com> <CAK7LNARye5Opc0AdXpn+DHB7hTaphoRSCUWxJgXu+sjuNjWUCg@mail.gmail.com>
 <0636b417-15bb-3f65-39f7-148d94fe22db@kernel.org> <CAK7LNAQtw-ZR0D4quHAqT_6rkMjgkjJhWG8EY7H4T1=PwUMgVw@mail.gmail.com>
 <CAKwvOdkENUWd7OgJO=dNiYjH6D1aJ0puBgs4W7uuYO9xQiAiNg@mail.gmail.com>
In-Reply-To: <CAKwvOdkENUWd7OgJO=dNiYjH6D1aJ0puBgs4W7uuYO9xQiAiNg@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Thu, 29 Jul 2021 07:35:50 +0900
X-Gmail-Original-Message-ID: <CAK7LNARrwpk5s8FDFoRbGqx2mzUk8xM9TBNnH3SepFPoijkBAA@mail.gmail.com>
Message-ID: <CAK7LNARrwpk5s8FDFoRbGqx2mzUk8xM9TBNnH3SepFPoijkBAA@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] Makefile: infer CROSS_COMPILE from SRCARCH for
 LLVM=1 LLVM_IAS=1
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <nathan@kernel.org>, Miguel Ojeda <ojeda@kernel.org>,
        Fangrui Song <maskray@google.com>,
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
 header.i=@nifty.com header.s=dec2015msa header.b=UM02UuIi;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Thu, Jul 29, 2021 at 4:00 AM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> On Tue, Jul 20, 2021 at 8:50 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >
> > On Wed, Jul 21, 2021 at 2:30 AM Nathan Chancellor <nathan@kernel.org> wrote:
> > >
> > > On 7/20/2021 1:04 AM, Masahiro Yamada wrote:
> > > > On Fri, Jul 9, 2021 at 8:25 AM 'Nick Desaulniers' via Clang Built
> > > > Linux <clang-built-linux@googlegroups.com> wrote:
> > > >>
> > > >> diff --git a/scripts/Makefile.clang b/scripts/Makefile.clang
> > > >> index 297932e973d4..956603f56724 100644
> > > >> --- a/scripts/Makefile.clang
> > > >> +++ b/scripts/Makefile.clang
> > > >> @@ -1,6 +1,36 @@
> > > >> -ifneq ($(CROSS_COMPILE),)
> > > >> +# Individual arch/{arch}/Makfiles should use -EL/-EB to set intended endianness
> > > >> +# and -m32/-m64 to set word size based on Kconfigs instead of relying on the
> > > >> +# target triple.
> > > >> +ifeq ($(CROSS_COMPILE),)
> > > >> +ifneq ($(LLVM),)
> > > >
> > > >
> > > > Do you need to check $(LLVM) ?
> > > >
> > > >
> > > > LLVM=1 is a convenient switch to change all the
> > > > defaults, but yet you can flip each tool individually.
> > > >
> > > > Instead of LLVM=1, you still should be able to
> > > > get the equivalent setups by:
> > > >
> > > >
> > > >    make CC=clang LD=ld.lld AR=llvm-ar OBJCOPY=llvm-objcopy ...
> > > >
> > > >
> > > > The --target option is passed to only
> > > > KBUILD_CFLAGS and KBUILD_AFLAGS.
> > > >
> > > > So, when we talk about --target=,
> > > > we only care about whether $(CC) is Clang.
> > > > Not caring about $(AR), $(LD), or $(OBJCOPY).
> > > >
> > > >
> > > > scripts/Makefile.clang is already guarded by:
> > > >
> > > > ifneq ($(findstring clang,$(CC_VERSION_TEXT)),
> > >
> > > $ make ARCH=arm64 CC=clang LLVM_IAS=1
> > >
> > > will use the right compiler and assembler but none of the other binary
> > > tools because '--prefix=' will not be set so CROSS_COMPILE needs to be
> > > specified still, which defeats the purpose of this whole change. This
> > > patch is designed to work for the "normal" case of saying "I want to use
> > > all of the LLVM tools", not "I want to use clang by itself".
> >
> >
> > I disagree.
> >
> > LLVM=1 is a shorthand.
> >
> >
> >
> > make LLVM=1 LLVM_IAS=1
> >
> >   should be equivalent to:
> >
> > make CC=clang LD=ld.lld AR=llvm-ar NM=llvm-nm STRIP=llvm-strip \
> >   OBJCOPY=llvm-objcopy OBJDUMP=llvm-objdump READELF=llvm-readelf \
> >   HOSTCC=clang HOSTCXX=clang++ HOSTAR=llvm-ar HOSTLD=ld.lld \
> >   LLVM_IAS=1
> >
> >
> >
> > We do not care about the origin of CC=clang,
> > whether it came from LLVM=1 or every tool was explicitly,
> > individually specified.
> >
> >
> >
> > ifneq ($(LLVM),) is a garbage code
> > that checks a pointless thing.
>
> Masahiro,
> Nathan is correct.  Test for yourself; if you apply these two patches,
> then apply:
>
> diff --git a/scripts/Makefile.clang b/scripts/Makefile.clang
> index 956603f56724..a1b46811bdc6 100644
> --- a/scripts/Makefile.clang
> +++ b/scripts/Makefile.clang
> @@ -2,7 +2,6 @@
>  # and -m32/-m64 to set word size based on Kconfigs instead of relying on the
>  # target triple.
>  ifeq ($(CROSS_COMPILE),)
> -ifneq ($(LLVM),)
>  ifeq ($(LLVM_IAS),1)
>  ifeq ($(SRCARCH),arm)
>  CLANG_FLAGS    += --target=arm-linux-gnueabi
> @@ -26,7 +25,6 @@ else
>  $(error Specify CROSS_COMPILE or add '--target=' option to
> scripts/Makefile.clang)
>  endif # SRCARCH
>  endif # LLVM_IAS
> -endif # LLVM
>  else
>  CLANG_FLAGS    += --target=$(notdir $(CROSS_COMPILE:%-=%))
>  endif # CROSS_COMPILE
>
> Then build as Nathan specified:
> $ ARCH=arm64 make CC=clang LLVM_IAS=1 -j72 defconfig all


Yes, LD is set to GNU ld, which is only for x86.

$ ARCH=arm64  make  CC=clang LLVM_IAS=1  LD=ld.lld \
   OBJCOPY=llvm-objcopy STRIP=llvm-strip \
    -j72 defconfig all

worked for me.



It is true that the most common use-case would be
LLVM=1 LLVM_IAS=1, but as I said, there is no good
reason to prevent this feature from working when
CC, LD, etc. are specified individually.







> ...
> arch/arm64/Makefile:25: ld does not support --fix-cortex-a53-843419;
> kernel may be susceptible to erratum
> ...
>   LD      arch/arm64/kernel/vdso/vdso.so.dbg
> ld: unrecognised emulation mode: aarch64linux
> Supported emulations: elf_x86_64 elf32_x86_64 elf_i386 elf_iamcu
> elf_l1om elf_k1om i386pep i386pe
> make[1]: *** [arch/arm64/kernel/vdso/Makefile:56:
> arch/arm64/kernel/vdso/vdso.so.dbg] Error 1
> make: *** [arch/arm64/Makefile:193: vdso_prepare] Error 2
>
> Nathan referred to --prefix, but in this failure, because
> CROSS_COMPILE was never set, the top level Makefile set LD to:
>  452 LD    = $(CROSS_COMPILE)ld
> in this case `ld` in my path was my host x86 linker, which is not
> correct for a cross compilation of arm64 target.
>
> Perhaps we can somehow support "implicit CROSS_COMPILE" with just
> CC=clang, and not LLVM=1, but I think it would be inflexible to
> hardcode such target triple prefixes.  What if someone has
> arm-linux-gnueabi-as but not arm-linux-gnueabihf-as installed?  That's
> the point of CROSS_COMPILE in my opinion to provide such flexibility
> at the cost of additional command line verbosity.
>
> For the common case of LLVM=1 though, this series is a simplification.
> If users want to specify CC=clang, then they MUST use CROSS_COMPILE
> when cross compiling.
>
> Please review the current approach and see if there's more I can
> improve in a v3; otherwise I still think this series is good to go.
> --
> Thanks,
> ~Nick Desaulniers
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkENUWd7OgJO%3DdNiYjH6D1aJ0puBgs4W7uuYO9xQiAiNg%40mail.gmail.com.



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNARrwpk5s8FDFoRbGqx2mzUk8xM9TBNnH3SepFPoijkBAA%40mail.gmail.com.
