Return-Path: <clang-built-linux+bncBDYJPJO25UGBBPOSQ2EAMGQEF7JFGLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x639.google.com (mail-ej1-x639.google.com [IPv6:2a00:1450:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C9F13D95AF
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 21:00:14 +0200 (CEST)
Received: by mail-ej1-x639.google.com with SMTP id kf3-20020a17090776c3b0290536d9b62eb6sf1162246ejc.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 12:00:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627498814; cv=pass;
        d=google.com; s=arc-20160816;
        b=m3n7VTSbvt8mHduVC0prwvt8761R2mU+T9WnpKpkEvzO5hyEdlF4bGnVityZvBeX0Z
         0gru8qqIYXpboiaau0ByaHmg8NXInEjahQzqE970Jx5CYynd9+kQMCCAWZBG5gwHhBYM
         DwqiJdoMGRaRRgMt281XxvMk06uGgjhHCNplJN4+PnwqLax6oAk8jxDIMGye06bvI6Oo
         P7VqrNQ7ZhyJ2CMH/C98jek6BMdKeaoAGdqwibIOSOq18ijYRZW28nI5Qkw7HxYsB8Nt
         sShsTE139CM8IahToMsgBi6g5l2A/sQmJwSQWZJg3Ej3eCOr6UJBwioQB3LWoEm/iAyT
         XdBA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=SbqS4o2q2cruLwi83pEtBzV4yM+l+kbheOUpGfwshBo=;
        b=M0m6d6z6DBIqdPMPmyyIwxQ3IX+7Vhqid3tH8dbm6qQdaKjr9GzthBHadl9XEfTuff
         kQ6TBPNukS3yuZWV+EehMYsnTO5SbJvWZqN9HYMkSJj48Xf8yS8G9w3OvBDG0TfSxsQ4
         jnGs1qeu0RAgTc2B3x/K3IaDPNKgjBJm2hAP5nCEOGZD/nnMKwUryfBa10ECrdaP4WDQ
         OlybQUwYsT8cyHnnzPgC/s2YssVhA5fVR3k44AWdwZUcimFCfY7BgwaT6N3BlCcpcs+2
         9zUE2Rs8+46xwsrUJq6+5J+j5f4loMkEaw7KwcpviKcJM/dk2jedARU7fgEJSusOMnBH
         vzkw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DasNgrs7;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SbqS4o2q2cruLwi83pEtBzV4yM+l+kbheOUpGfwshBo=;
        b=IN0hmGUpaC38AmBxsBsA/eNtAxWeRTxKOQuCGy5DylQy3eTMTrrihJ4g9lzMrMddc+
         nnGjeT8ahV4z3Yv8hRXrYFe48uyB/RhM8aLPE0MSk7w0bv8bcWCY1YVi4iuoWZbakWON
         zYv7uAlDMraXNr0YSemGkwVfuT/AGz9KkTm3YxkSPMTzOP6gOrwDOLofOkhdms1i89lP
         egEP9aezX/xb6zcH2hRflr43kw+KGpC284eHlyhh4BxH51DXHj4Cv9Bz9bmS9FfzBlMm
         mjMcO77nxi/il6mYSumd4ZSkzPf8774SPElL6DhMKyZv+aU2gaIsiz16EsmQXHD00xxj
         Jx3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SbqS4o2q2cruLwi83pEtBzV4yM+l+kbheOUpGfwshBo=;
        b=TtsjHvEhuScMveSbdgT53/wahf6ez+ICc1dSz9g1kZYs7hZ7Pz4jrGa/J52CpzntUN
         RkAqbxLgwS6XcvfXmBls3vpagdjrArb+PxrF+zqSR6Fnza4Dp/zjdl8w3JQMuO+EF9QF
         QPV426uqISP2n1Vijd5xbxczoiTpcdeYNnGVoxqz0+L/eBfa4fgs6BNsBQtZB/FH/N9G
         1dDUJFzqpZeh8gBAn0DC9eXvjQK9Lnj6FTaVfoqOZoh5Fry7V+hwhncK+pVBnPL9Ea3c
         lWbvHpNxUtxdnLpurzm6HbVVyHPH6FWtRDN+2oaatbqZvQPUti2RpXzz9g6iTcO4pCsa
         yX0Q==
X-Gm-Message-State: AOAM533ywTeViu46nbyNEvbBULzdyuHJO0C67r1qRl/+Lo/NlRTI07r5
	ts+AIZ7+TQRqvZPzExbC+l8=
X-Google-Smtp-Source: ABdhPJxkPC4ESHCzKiZDJMXygU3+6iZDjoI8tnG4GlWFvs+KFjNVEAmEC17fBJ/fBBzszxkp/63+oA==
X-Received: by 2002:a05:6402:220d:: with SMTP id cq13mr1565758edb.318.1627498813909;
        Wed, 28 Jul 2021 12:00:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:fd13:: with SMTP id i19ls4202600eds.2.gmail; Wed, 28 Jul
 2021 12:00:13 -0700 (PDT)
X-Received: by 2002:a05:6402:10cc:: with SMTP id p12mr1551591edu.328.1627498812979;
        Wed, 28 Jul 2021 12:00:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627498812; cv=none;
        d=google.com; s=arc-20160816;
        b=tP0tvrdyLq66oYz2YVEyP/jXWgVAyisKyfU739GNw9M3BFQmnLzEsfN1b9B41Stebv
         IIgPhw+zasGnDDuPcWPjdXsIWyYZuljUpkjcnfoHRnEbY8HwaxnEuVuecIpCvNskZIEE
         TFvi3Fmk0r0VxKAUODez9vra6Ey210/oQB9MR2d5TzWtI3jSTCTw+4smnBZbmjiSPWMD
         h+cRdFOEWCESCb/tKTBsQZ5TM8k06dzEoU6bX9PHTvgc36yXwRw2jYhlQGltz9we5Ae7
         4lD/33reR7EIqOU98r1s/40XD02O0G6CZ9U6HVUAXeeGb0IZ0R99LMK7OlhuCxlZXT7F
         yDsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=IHfSHdJMp1ac7+FtC9uOY9CbIvUOsDtm7pUymTGrBto=;
        b=q+fUzNULsQG9WfeFJLgdtibcyZA4W0EONf6KTTk+n3yTvzyzA/o2R4zTQicAcNwGAA
         vxJtC+CX3/z9OS54kRU9o4KpgYReFZlLSjoXID/gMrdGqwCXUxKKgiFNvXYQ8hkL5CAH
         UB/ER6f0UA4e6wtlgmJ4TZFqYhe7bPQ6skZkUXIDxeFc6tAPdO4uPJ+EbsHzdzIjI0rK
         ePi4F9YqZRE+U9CaYowlfHXdxRk/MeLWYVcNlpod6i+8V8k4T7O1wmoVfcm//DRsS5LJ
         zm1SG/R3KGkPDDN2hVeL0gbBBiPI1D9t4aLOu4j9txJUl+rKYpFoUdeteyFXDCbbgm9G
         R1GQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DasNgrs7;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com. [2a00:1450:4864:20::22e])
        by gmr-mx.google.com with ESMTPS id s18si27917ejo.1.2021.07.28.12.00.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Jul 2021 12:00:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22e as permitted sender) client-ip=2a00:1450:4864:20::22e;
Received: by mail-lj1-x22e.google.com with SMTP id q2so4310235ljq.5
        for <clang-built-linux@googlegroups.com>; Wed, 28 Jul 2021 12:00:12 -0700 (PDT)
X-Received: by 2002:a05:651c:329:: with SMTP id b9mr731525ljp.116.1627498812284;
 Wed, 28 Jul 2021 12:00:12 -0700 (PDT)
MIME-Version: 1.0
References: <20210708232522.3118208-1-ndesaulniers@google.com>
 <20210708232522.3118208-3-ndesaulniers@google.com> <CAK7LNARye5Opc0AdXpn+DHB7hTaphoRSCUWxJgXu+sjuNjWUCg@mail.gmail.com>
 <0636b417-15bb-3f65-39f7-148d94fe22db@kernel.org> <CAK7LNAQtw-ZR0D4quHAqT_6rkMjgkjJhWG8EY7H4T1=PwUMgVw@mail.gmail.com>
In-Reply-To: <CAK7LNAQtw-ZR0D4quHAqT_6rkMjgkjJhWG8EY7H4T1=PwUMgVw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 28 Jul 2021 11:59:59 -0700
Message-ID: <CAKwvOdkENUWd7OgJO=dNiYjH6D1aJ0puBgs4W7uuYO9xQiAiNg@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] Makefile: infer CROSS_COMPILE from SRCARCH for
 LLVM=1 LLVM_IAS=1
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Nathan Chancellor <nathan@kernel.org>, Miguel Ojeda <ojeda@kernel.org>, 
	Fangrui Song <maskray@google.com>, Michal Marek <michal.lkml@markovi.net>, 
	Arnd Bergmann <arnd@kernel.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Geert Uytterhoeven <geert@linux-m68k.org>, Christoph Hellwig <hch@infradead.org>, 
	Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=DasNgrs7;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22e
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

On Tue, Jul 20, 2021 at 8:50 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> On Wed, Jul 21, 2021 at 2:30 AM Nathan Chancellor <nathan@kernel.org> wrote:
> >
> > On 7/20/2021 1:04 AM, Masahiro Yamada wrote:
> > > On Fri, Jul 9, 2021 at 8:25 AM 'Nick Desaulniers' via Clang Built
> > > Linux <clang-built-linux@googlegroups.com> wrote:
> > >>
> > >> diff --git a/scripts/Makefile.clang b/scripts/Makefile.clang
> > >> index 297932e973d4..956603f56724 100644
> > >> --- a/scripts/Makefile.clang
> > >> +++ b/scripts/Makefile.clang
> > >> @@ -1,6 +1,36 @@
> > >> -ifneq ($(CROSS_COMPILE),)
> > >> +# Individual arch/{arch}/Makfiles should use -EL/-EB to set intended endianness
> > >> +# and -m32/-m64 to set word size based on Kconfigs instead of relying on the
> > >> +# target triple.
> > >> +ifeq ($(CROSS_COMPILE),)
> > >> +ifneq ($(LLVM),)
> > >
> > >
> > > Do you need to check $(LLVM) ?
> > >
> > >
> > > LLVM=1 is a convenient switch to change all the
> > > defaults, but yet you can flip each tool individually.
> > >
> > > Instead of LLVM=1, you still should be able to
> > > get the equivalent setups by:
> > >
> > >
> > >    make CC=clang LD=ld.lld AR=llvm-ar OBJCOPY=llvm-objcopy ...
> > >
> > >
> > > The --target option is passed to only
> > > KBUILD_CFLAGS and KBUILD_AFLAGS.
> > >
> > > So, when we talk about --target=,
> > > we only care about whether $(CC) is Clang.
> > > Not caring about $(AR), $(LD), or $(OBJCOPY).
> > >
> > >
> > > scripts/Makefile.clang is already guarded by:
> > >
> > > ifneq ($(findstring clang,$(CC_VERSION_TEXT)),
> >
> > $ make ARCH=arm64 CC=clang LLVM_IAS=1
> >
> > will use the right compiler and assembler but none of the other binary
> > tools because '--prefix=' will not be set so CROSS_COMPILE needs to be
> > specified still, which defeats the purpose of this whole change. This
> > patch is designed to work for the "normal" case of saying "I want to use
> > all of the LLVM tools", not "I want to use clang by itself".
>
>
> I disagree.
>
> LLVM=1 is a shorthand.
>
>
>
> make LLVM=1 LLVM_IAS=1
>
>   should be equivalent to:
>
> make CC=clang LD=ld.lld AR=llvm-ar NM=llvm-nm STRIP=llvm-strip \
>   OBJCOPY=llvm-objcopy OBJDUMP=llvm-objdump READELF=llvm-readelf \
>   HOSTCC=clang HOSTCXX=clang++ HOSTAR=llvm-ar HOSTLD=ld.lld \
>   LLVM_IAS=1
>
>
>
> We do not care about the origin of CC=clang,
> whether it came from LLVM=1 or every tool was explicitly,
> individually specified.
>
>
>
> ifneq ($(LLVM),) is a garbage code
> that checks a pointless thing.

Masahiro,
Nathan is correct.  Test for yourself; if you apply these two patches,
then apply:

diff --git a/scripts/Makefile.clang b/scripts/Makefile.clang
index 956603f56724..a1b46811bdc6 100644
--- a/scripts/Makefile.clang
+++ b/scripts/Makefile.clang
@@ -2,7 +2,6 @@
 # and -m32/-m64 to set word size based on Kconfigs instead of relying on the
 # target triple.
 ifeq ($(CROSS_COMPILE),)
-ifneq ($(LLVM),)
 ifeq ($(LLVM_IAS),1)
 ifeq ($(SRCARCH),arm)
 CLANG_FLAGS    += --target=arm-linux-gnueabi
@@ -26,7 +25,6 @@ else
 $(error Specify CROSS_COMPILE or add '--target=' option to
scripts/Makefile.clang)
 endif # SRCARCH
 endif # LLVM_IAS
-endif # LLVM
 else
 CLANG_FLAGS    += --target=$(notdir $(CROSS_COMPILE:%-=%))
 endif # CROSS_COMPILE

Then build as Nathan specified:
$ ARCH=arm64 make CC=clang LLVM_IAS=1 -j72 defconfig all
...
arch/arm64/Makefile:25: ld does not support --fix-cortex-a53-843419;
kernel may be susceptible to erratum
...
  LD      arch/arm64/kernel/vdso/vdso.so.dbg
ld: unrecognised emulation mode: aarch64linux
Supported emulations: elf_x86_64 elf32_x86_64 elf_i386 elf_iamcu
elf_l1om elf_k1om i386pep i386pe
make[1]: *** [arch/arm64/kernel/vdso/Makefile:56:
arch/arm64/kernel/vdso/vdso.so.dbg] Error 1
make: *** [arch/arm64/Makefile:193: vdso_prepare] Error 2

Nathan referred to --prefix, but in this failure, because
CROSS_COMPILE was never set, the top level Makefile set LD to:
 452 LD    = $(CROSS_COMPILE)ld
in this case `ld` in my path was my host x86 linker, which is not
correct for a cross compilation of arm64 target.

Perhaps we can somehow support "implicit CROSS_COMPILE" with just
CC=clang, and not LLVM=1, but I think it would be inflexible to
hardcode such target triple prefixes.  What if someone has
arm-linux-gnueabi-as but not arm-linux-gnueabihf-as installed?  That's
the point of CROSS_COMPILE in my opinion to provide such flexibility
at the cost of additional command line verbosity.

For the common case of LLVM=1 though, this series is a simplification.
If users want to specify CC=clang, then they MUST use CROSS_COMPILE
when cross compiling.

Please review the current approach and see if there's more I can
improve in a v3; otherwise I still think this series is good to go.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkENUWd7OgJO%3DdNiYjH6D1aJ0puBgs4W7uuYO9xQiAiNg%40mail.gmail.com.
