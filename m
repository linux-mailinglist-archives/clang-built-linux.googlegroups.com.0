Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBVOH66CAMGQE5HDC6UY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73e.google.com (mail-qk1-x73e.google.com [IPv6:2607:f8b0:4864:20::73e])
	by mail.lfdr.de (Postfix) with ESMTPS id 3952A380217
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 04:43:36 +0200 (CEST)
Received: by mail-qk1-x73e.google.com with SMTP id s4-20020a3790040000b02902fa7aa987e8sf7868728qkd.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 13 May 2021 19:43:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620960214; cv=pass;
        d=google.com; s=arc-20160816;
        b=Jf8Z1Oj5COExkLLnhzXcCTlKkEeGDUI4SPisC/I9zvhqgYxYuNg/TAzIQFb/a7Fmey
         G8R5iFblSQ+GHY9idW0AKI8JxCOrRX1F4eYqRYfRGwLdoyivRZP/5kZTUnE11HFogFBt
         Kv6haoVP9Jq8obBMMmqOG8vwNMgulBF8VVSVCrdZ18x5UtBitawQnoipA1FjSXjMHUk9
         QnKzGYCVJFnDFzyUFu8rva3nOMIsG/BlKbOiD9pMXzurmFkqie0ziKDOlUFdR1OJ1KFm
         LpMIAw8/hH5tTEg2VAc5so2dmPwpysaEXuVUVuIIpug6SeouVMACfo5mqRhLJ30dDyGf
         W9xQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=u8RJ27ugeggKypr5z98XAqkkL9FdGDqK283wff7cPzY=;
        b=G9+rziFD+ufa1VWBqHww6u39xxPrTNbU/Mg1AckXNDKgxKsgetJL+ynLrpPJFdVew3
         sE9x6cLPhGrdzjRuZJ6d2eF+a1FYVe6XE68UOlQ/3ZmoKwp3NewyQ+5wC/uUP+gB19nt
         RhTGCHHHXNsjh8dPU6DLHSt663ya2Eg/X8NCLK1P62HDPQ+pTcfeCa2kV1inYXL2HtA4
         0u+h3lrcXHhEwEnIAzw/U8EkpDuyNNmDCqP6KefHbRPyIpWNx35y6DUQWbtOhvakM/2D
         bU30QYI80SwlBwA5HSKzXr0hQdyi8RNH9c+mQokfmwTo1gViFVCCl90uX+tSOYHuCBH9
         PzUw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=gx32ilFS;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=u8RJ27ugeggKypr5z98XAqkkL9FdGDqK283wff7cPzY=;
        b=baJKnR00XhqZOLre/P/56+OGkvbTE8Qs1Ht07BU1tLHmqZA25RGsuX1tgo8PMnAUXQ
         Ix6/TcoTcXrq/ff41sutuEYvY1HkBMaD9ipsouWUvMwHNOQdIhyO0+qHN1B3CFkET3ob
         8fpD4Z18FpK4z2BWwpasmySzU56s4JvIww5SPq1eHaVsE1NVIWflXLrPEU4dFtS9kXL3
         IcTLf8AJnYNMPoM/rKwRvX4jphEL0Gmp/tyMj/YR6v+BEPGHHVGiy/oY1LroxGcoOsQ/
         BSUySUOvG+v/MTcktdR6Aka22IORgO16q93/obwoGJe7yxB/d+YutMeKlyeXTGdc7mzQ
         AIJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=u8RJ27ugeggKypr5z98XAqkkL9FdGDqK283wff7cPzY=;
        b=gHJWuK/DUUjnM4JtOCXU/TGDF6Tf3FL9Iv3F1NFCpteDLKFXCWIh3XNqcBSIcTuO1w
         c+1IpQDEymsssaXBlovkFLnHLpCxDN8O387tfKGE6uxFBG229+nS90eTXNqdHqrsqTX2
         mS7t3FIhvMJ01FiYI4DciB8tt1J6Gp3hjQ3RETZOGJ5j6hC1aCwyInQJ4ui+yi4gUD4o
         8su3Bb7kI05I+tco/e7GLmWw4uJYVgpFE0OE+KL1MaUWYfBtaFl0fXLJop9oNDnk3+Ov
         k+kOnJP+uTJN7dScr7ldlJ6EnOe9CIrjoAxdJYcxOOAcgabzvn8HengAu/4ie2Wo5AKf
         sz+w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533O0ThKLT3R6DVUmMS3l2Sv7BkenO8UKyl79TjWDL4tJXGf5x9A
	CQtEBuRXCAyrzbCoXKyVyGo=
X-Google-Smtp-Source: ABdhPJyb3RfHbUIlMlAdG9Ugl3LLSX31H1Po4ESvvoWSH8TAfULj5dxw37FtFo3e7inTn2elskHOJg==
X-Received: by 2002:a05:622a:1044:: with SMTP id f4mr25731162qte.181.1620960213877;
        Thu, 13 May 2021 19:43:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:5f44:: with SMTP id t65ls5108160qkb.0.gmail; Thu, 13 May
 2021 19:43:33 -0700 (PDT)
X-Received: by 2002:a37:6606:: with SMTP id a6mr38271190qkc.444.1620960213481;
        Thu, 13 May 2021 19:43:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620960213; cv=none;
        d=google.com; s=arc-20160816;
        b=q0cTSgZlvM7RtfDR0Azdfsy6JQbIar9me2VPAfakLJH8HqwMWbKfuFIRsyP4nx6dzB
         SgwpEm4D3cbDplDQUL71S8u2ctMSMzlrHXzIjf1L5z0RtiLiQWg5Hbv0D1e8Ul/IA/C8
         JkWsE5FWjWUG1LixxbVaMdyfT3IPG9Wu0x9qV3N1NDx8DkMwNWjA0pSur/BERTmFKbbY
         F81vzbO2bg2POmEIfuTm8bWfBLLSaN+/NqbklSbNOO4ZyHSKLlvIoXPgZKlRoInpBruX
         YyRY/a2P3U+DttPN0qIfkapPePjxNWLWC/WYN0M6cNvMrV1uouUH3m5L7Kcyzoxah3jv
         PZdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=DVvuxt/F2VXaZ9qg0AYDMtDw08pty3tYij5WhoLhi5g=;
        b=uSi3WGn7MVWkFGUR0fhfhCnZjmiorZbiPit0yZN52jqucsOLIkXN58W/cHi5D5yA7W
         2IAEz2HgegygiidbOcX/PHC2CnaGGJctPSL8j0RRfSBi2n0qswhwkyeCQCqfewY/3r19
         3vSQ9HOWSy97X/BzQ/I6eXIdPwJO5zu1wLgFpB11LSZS044u814Byh3DDce+UPkTdSk6
         M69YiA9E+5Ey3EqXQt91muAN8EW3HFR/C9wm0fDTiafkTV5UVSojnkSvcae0VevFc+HU
         WU//n+Q0cmGKw1qTgV6OFOPNKZnyFul7YDiSTRoNvWgZGbOD/q++usKU+Imhxyn/U2zS
         tzmQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=gx32ilFS;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-01.nifty.com (conssluserg-01.nifty.com. [210.131.2.80])
        by gmr-mx.google.com with ESMTPS id h62si459746qkc.3.2021.05.13.19.43.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 13 May 2021 19:43:33 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) client-ip=210.131.2.80;
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com [209.85.215.180]) (authenticated)
	by conssluserg-01.nifty.com with ESMTP id 14E2hAhw030901
	for <clang-built-linux@googlegroups.com>; Fri, 14 May 2021 11:43:10 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com 14E2hAhw030901
X-Nifty-SrcIP: [209.85.215.180]
Received: by mail-pg1-f180.google.com with SMTP id t193so10575515pgb.4
        for <clang-built-linux@googlegroups.com>; Thu, 13 May 2021 19:43:10 -0700 (PDT)
X-Received: by 2002:a63:a547:: with SMTP id r7mr44000108pgu.7.1620960189536;
 Thu, 13 May 2021 19:43:09 -0700 (PDT)
MIME-Version: 1.0
References: <20210513115904.519912-1-aik@ozlabs.ru> <dedc7262-2956-37b2-ebfd-ae8eb9b56716@kernel.org>
In-Reply-To: <dedc7262-2956-37b2-ebfd-ae8eb9b56716@kernel.org>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Fri, 14 May 2021 11:42:32 +0900
X-Gmail-Original-Message-ID: <CAK7LNASFhRE=1EBj9AoTMMEd2YJdu7bCxARAGJfZ7aXcBrMAUw@mail.gmail.com>
Message-ID: <CAK7LNASFhRE=1EBj9AoTMMEd2YJdu7bCxARAGJfZ7aXcBrMAUw@mail.gmail.com>
Subject: Re: [PATCH kernel v3] powerpc/makefile: Do not redefine $(CPP) for preprocessor
To: Nathan Chancellor <nathan@kernel.org>
Cc: Alexey Kardashevskiy <aik@ozlabs.ru>,
        linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Michal Marek <michal.lkml@markovi.net>,
        Michael Ellerman <mpe@ellerman.id.au>,
        Segher Boessenkool <segher@kernel.crashing.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=gx32ilFS;       spf=softfail
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

On Fri, May 14, 2021 at 3:59 AM Nathan Chancellor <nathan@kernel.org> wrote:
>
> On 5/13/2021 4:59 AM, Alexey Kardashevskiy wrote:
> > The $(CPP) (do only preprocessing) macro is already defined in Makefile.
> > However POWERPC redefines it and adds $(KBUILD_CFLAGS) which results
> > in flags duplication. Which is not a big deal by itself except for
> > the flags which depend on other flags and the compiler checks them
> > as it parses the command line.
> >
> > Specifically, scripts/Makefile.build:304 generates ksyms for .S files.
> > If clang+llvm+sanitizer are enabled, this results in
> >
> > -emit-llvm-bc -fno-lto -flto -fvisibility=hidden \
> >   -fsanitize=cfi-mfcall -fno-lto  ...
> >
> > in the clang command line and triggers error:

I do not know how to reproduce this for powerpc.
Currently, only x86 and arm64 select
ARCH_SUPPORTS_LTO_CLANG.

Is this a fix for a potential issue?


> > clang-13: error: invalid argument '-fsanitize=cfi-mfcall' only allowed with '-flto'
> >
> > This removes unnecessary CPP redefinition. Which works fine as in most
> > place KBUILD_CFLAGS is passed to $CPP except
> > arch/powerpc/kernel/vdso64/vdso(32|64).lds. To fix vdso, this does:
> > 1. add -m(big|little)-endian to $CPP
> > 2. add target to $KBUILD_CPPFLAGS as otherwise clang ignores -m(big|little)-endian if
> > the building platform does not support big endian (such as x86).
> >
> > Signed-off-by: Alexey Kardashevskiy <aik@ozlabs.ru>
> > ---
> > Changes:
> > v3:
> > * moved vdso cleanup in a separate patch
> > * only add target to KBUILD_CPPFLAGS for CLANG
> >
> > v2:
> > * fix KBUILD_CPPFLAGS
> > * add CLANG_FLAGS to CPPFLAGS
> > ---
> >   Makefile              | 1 +
> >   arch/powerpc/Makefile | 3 ++-
> >   2 files changed, 3 insertions(+), 1 deletion(-)
> >
> > diff --git a/Makefile b/Makefile
> > index 15b6476d0f89..5b545bef7653 100644
> > --- a/Makefile
> > +++ b/Makefile
> > @@ -576,6 +576,7 @@ CC_VERSION_TEXT = $(subst $(pound),,$(shell $(CC) --version 2>/dev/null | head -
> >   ifneq ($(findstring clang,$(CC_VERSION_TEXT)),)
> >   ifneq ($(CROSS_COMPILE),)
> >   CLANG_FLAGS += --target=$(notdir $(CROSS_COMPILE:%-=%))
> > +KBUILD_CPPFLAGS      += --target=$(notdir $(CROSS_COMPILE:%-=%))
>
> You can avoid the duplication here by just doing:
>
> KBUILD_CPPFLAGS += $(CLANG_FLAGS)
>
> I am still not super happy about the flag duplication but I am not sure
> I can think of a better solution. If KBUILD_CPPFLAGS are always included
> when building .o files, maybe we should just add $(CLANG_FLAGS) to
> KBUILD_CPPFLAGS instead of KBUILD_CFLAGS?

Hmm, I think including --target=* in CPP flags is sensible,
but not all CLANG_FLAGS are CPP flags.
At least, -(no)-integrated-as is not a CPP flag.

We could introduce a separate CLANG_CPP_FLAGS, but
it would require more code changes...

So, I do not have a strong opinion either way.



BTW, another approach might be to modify the linker script.


In my best guess, the reason why powerpc adding the endian flag to CPP
is this line in arch/powerpc/kernel/vdso64/vdso64.lds.S

#ifdef __LITTLE_ENDIAN__
OUTPUT_FORMAT("elf64-powerpcle", "elf64-powerpcle", "elf64-powerpcle")
#else
OUTPUT_FORMAT("elf64-powerpc", "elf64-powerpc", "elf64-powerpc")
#endif


You can use the CONFIG option to check the endian-ness.

#ifdef CONFIG_CPU_BIG_ENDIAN
OUTPUT_FORMAT("elf64-powerpc", "elf64-powerpc", "elf64-powerpc")
#else
OUTPUT_FORMAT("elf64-powerpcle", "elf64-powerpcle", "elf64-powerpcle")
#endif


All the big endian arches define CONFIG_CPU_BIG_ENDIAN.
(but not all little endian arches define CONFIG_CPU_LITTLE_ENDIAN)


So,
#ifdef CONFIG_CPU_BIG_ENDIAN
   < big endian code >
#else
  < little endian code >
#endif

works for all architectures.


Only the exception is you cannot replace the one in uapi headers.
  arch/powerpc/include/uapi/asm/byteorder.h: #ifdef __LITTLE_ENDIAN__
since it is exported to userspace, where CONFIG options are not available.



BTW, various flags are historically used.

 -  CONFIG_CPU_BIG_ENDIAN   /  CONFIG_CPU_LITTLE_ENDIAN
 -  __BIG_ENDIAN   / __LITTLE_ENDIAN
 -  __LITTLE_ENDIAN__     (powerpc only)



__LITTLE_ENDIAN__  is defined by powerpc gcc and clang.

My experiments...


[1] powerpc-linux-gnu-gcc    -> __BIG_ENDIAN__ is defined

masahiro@grover:~$ echo | powerpc-linux-gnu-gcc -E  -dM -x c - | grep ENDIAN
#define __ORDER_LITTLE_ENDIAN__ 1234
#define __BIG_ENDIAN__ 1
#define __FLOAT_WORD_ORDER__ __ORDER_BIG_ENDIAN__
#define __ORDER_PDP_ENDIAN__ 3412
#define _BIG_ENDIAN 1
#define __BYTE_ORDER__ __ORDER_BIG_ENDIAN__
#define __VEC_ELEMENT_REG_ORDER__ __ORDER_BIG_ENDIAN__
#define __ORDER_BIG_ENDIAN__ 4321


[2] powerpc-linux-gnu-gcc + -mlittle-endian    -> __LITTLE_ENDIAN__ is defined

masahiro@grover:~$ echo | powerpc-linux-gnu-gcc  -E  -dM   -x c -
-mlittle-endian  | grep ENDIAN
#define __ORDER_LITTLE_ENDIAN__ 1234
#define _LITTLE_ENDIAN 1
#define __FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__
#define __ORDER_PDP_ENDIAN__ 3412
#define __LITTLE_ENDIAN__ 1
#define __BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__
#define __VEC_ELEMENT_REG_ORDER__ __ORDER_LITTLE_ENDIAN__
#define __ORDER_BIG_ENDIAN__ 4321


[3] other arch gcc    -> neither of them is defined

masahiro@grover:~$ echo | gcc -E  -dM   -x c -  | grep ENDIAN
#define __ORDER_LITTLE_ENDIAN__ 1234
#define __FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__
#define __ORDER_PDP_ENDIAN__ 3412
#define __ORDER_BIG_ENDIAN__ 4321
#define __BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__

masahiro@grover:~$ echo | arm-linux-gnueabihf-gcc   -E  -dM   -x c -
-mlittle-endian  | grep ENDIAN
#define __ORDER_LITTLE_ENDIAN__ 1234
#define __FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__
#define __ORDER_PDP_ENDIAN__ 3412
#define __BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__
#define __ORDER_BIG_ENDIAN__ 4321

masahiro@grover:~$ echo | arm-linux-gnueabihf-gcc   -E  -dM   -x c -
-mbig-endian  | grep ENDIAN
#define __ORDER_LITTLE_ENDIAN__ 1234
#define __FLOAT_WORD_ORDER__ __ORDER_BIG_ENDIAN__
#define __ORDER_PDP_ENDIAN__ 3412
#define __ARM_BIG_ENDIAN 1
#define __BYTE_ORDER__ __ORDER_BIG_ENDIAN__
#define __ORDER_BIG_ENDIAN__ 4321


[4] Clang  --target=powerpc-linux-gnu      -> __BIG_ENDIAN__ is defined

masahiro@grover:~$ echo |  ~/tools/clang-latest/bin/clang -E
--target=powerpc-linux-gnu -dM -x c -    | grep ENDIAN
#define _BIG_ENDIAN 1
#define __BIG_ENDIAN__ 1
#define __BYTE_ORDER__ __ORDER_BIG_ENDIAN__
#define __ORDER_BIG_ENDIAN__ 4321
#define __ORDER_LITTLE_ENDIAN__ 1234
#define __ORDER_PDP_ENDIAN__ 3412



[5] very recent Clang understands --target=powerpcle-linux-gnu     -->
__LITTLE_ENDIAN__ is defined

masahiro@grover:~$ echo |  ~/tools/clang-latest/bin/clang -E
--target=powerpcle-linux-gnu -dM -x c -   | grep ENDIAN
#define _LITTLE_ENDIAN 1
#define __BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__
#define __LITTLE_ENDIAN__ 1
#define __ORDER_BIG_ENDIAN__ 4321
#define __ORDER_LITTLE_ENDIAN__ 1234
#define __ORDER_PDP_ENDIAN__ 3412


[6] very recent Clang, --target=powerpc-linux-gnu  + -mlittle-endian
 --> __LITTLE_ENDIAN__ is defined

masahiro@grover:~$ echo |  ~/tools/clang-latest/bin/clang -E
--target=powerpc-linux-gnu -dM -x c -  -mlittle-endian  | grep ENDIAN
#define _LITTLE_ENDIAN 1
#define __BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__
#define __LITTLE_ENDIAN__ 1
#define __ORDER_BIG_ENDIAN__ 4321
#define __ORDER_LITTLE_ENDIAN__ 1234
#define __ORDER_PDP_ENDIAN__ 3412




[7] Clang, target with little endian only ,   -mbig-endian is ignored
masahiro@grover:~$ echo |  clang -E   -dM -x c -    | grep ENDIAN
#define __BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__
#define __LITTLE_ENDIAN__ 1
#define __ORDER_BIG_ENDIAN__ 4321
#define __ORDER_LITTLE_ENDIAN__ 1234
#define __ORDER_PDP_ENDIAN__ 3412
masahiro@grover:~$ echo |  clang -E   -dM -x c -  -mbig-endian  | grep ENDIAN
#define __BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__
#define __LITTLE_ENDIAN__ 1
#define __ORDER_BIG_ENDIAN__ 4321
#define __ORDER_LITTLE_ENDIAN__ 1234
#define __ORDER_PDP_ENDIAN__ 3412


--
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNASFhRE%3D1EBj9AoTMMEd2YJdu7bCxARAGJfZ7aXcBrMAUw%40mail.gmail.com.
