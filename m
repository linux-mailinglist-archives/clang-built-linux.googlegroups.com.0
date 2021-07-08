Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBDFETODQMGQEVLGB3ZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id DE7083BF859
	for <lists+clang-built-linux@lfdr.de>; Thu,  8 Jul 2021 12:23:09 +0200 (CEST)
Received: by mail-ot1-x33f.google.com with SMTP id n69-20020a9d204b0000b02904b27db9742fsf2548587ota.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Jul 2021 03:23:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625739789; cv=pass;
        d=google.com; s=arc-20160816;
        b=rgYAtXGjK503Sqr7PKlDUYbtN9vMz4lgBivXWO8J3NT49boeJAZ4yO6aelxv0AmANJ
         +4DcIKvygtV7XHj9FQ9zdstqdkXLXE6eZ4vJavialF7UDMaLM1cqNmTbM2gZsBUWC2qC
         vIqvX4JUIXYgQjrMGxHfBPEqB04OR7pvgH8MqFexFzajDfbGxxE2Cqz9xPgKdVzQR/pu
         ZUM8PhR6iHfsnX+pq/MdyRePj5/zs0r5GmxGrXPM3tPwnG328eazGry6X2KN/u6pjWQL
         fKi3hJAVKp0jJ/kVdYfLh/wL/fm4emXlbvVgoGpST0iHgIZdOKridhHuNpgs5ufvFGSm
         LGow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=YfETlL+Tn5qYwJE+zq3Hf2e/ClQJxToTlnuw3ioZNFo=;
        b=x0KYdwEJUPrqLOTgWhw02slbpl8xLpXIii/1YaNIUle+JZIK8vb8eBklkRbFl9Ig0+
         h+KM77Iie20FaUdguNcRgv1n1S13Yvv9q8jNE1UR1HS/hTFp+MG55oaEFhZkJ6IiF0mc
         jlKSiS696/ed7uPCnMJ24OZYgowlCqgqHIfNAC7Ojrs0gf/CX0y9MqQCy0C4kG7UJkIK
         HrJklrn/OJRDE+JWxyMUwH14uDLz9PsVgU+HtIE6cqeNR7qW0hPoisDHGSKS3qzxy2Cp
         xoxqpvW9nfoHFfWCo2yBTQUW766pctRchyGJGonZ+UCIyGOiOV57T17mPWg9k2tS1cZz
         ybiQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="uUd/VI3g";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YfETlL+Tn5qYwJE+zq3Hf2e/ClQJxToTlnuw3ioZNFo=;
        b=kKXxBlJyNEPahNs1/rb4OhHHwtCKM/cAU3XLoC5hyNbVlrA3Epy5ToojuqKKMkIN8W
         ZafjrNVN1xhgZCjP1SAt5hAWZSrR8QIRD6JDJ281pn7/gIWMmOzRtljFlLOZ1YRk/f16
         ZXwKKr8nXMtNq28AxD4BBjG/J1EOY/59UzuzKDskKqJD+vnfAqNxVvIWQ1/GdyPeiCJ7
         UOmgcCOM5QpGlVowN7COwxcLYFulEembp2IaF0fL1Bj/wJfyp8AD0XBq44FIIXIg8amL
         A+8YSF+4lIt5VniuOUEPJUFPyclZ7ceaAzvP6p90AE36ixwr4CmO5+UKazDWyxsFr1g1
         yJZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YfETlL+Tn5qYwJE+zq3Hf2e/ClQJxToTlnuw3ioZNFo=;
        b=QVXPoE5lJG1X3aTrtW9zh+9/h6CDOw8PIL/4hHIbJpU5cB6Kmxwu0mrdWOwx9UUniY
         hUV8B7zFn+wow65Y/jDpiT/LVsksf/JJtWkp54OKs5JZVAHsI+V/q0J8HmZYLbTyFQse
         HOQTHtME4ZEkZ04YVXK5W29qLkENNNFAGSAHFXUKerhUKjWPy9YbubQ0+YSipxZnzbCe
         JoXxoxu3jqgaFEqF4Ao1I0gWu8ZbpcLePPn7+Flf4sPKCNURvRetEKnxR7k3t2TueH09
         GotA2Y7mIhwTKs3ePr9sSvwc2sVRaYP1OxIG0WE8KhXH4pLpzi74qhO7QiLUmr9ee8Vq
         D0Tw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533V40ZbOKvn+cWgDBwYWQrMdrptOW7Dmdg5bmmCXvnNqR0HwGi2
	c9a2N9hoBqNpaSGqXXv0VTA=
X-Google-Smtp-Source: ABdhPJxXMA/+Rq15vvjdBnpNmebMCEFUdHYA8VsVKhj9CqdEQQK/XoddxoC7vC10Izab4GOipDyXaA==
X-Received: by 2002:a9d:7982:: with SMTP id h2mr9453583otm.354.1625739788849;
        Thu, 08 Jul 2021 03:23:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:4c4:: with SMTP id a4ls749995oie.5.gmail; Thu, 08
 Jul 2021 03:23:08 -0700 (PDT)
X-Received: by 2002:aca:6284:: with SMTP id w126mr21806426oib.20.1625739788444;
        Thu, 08 Jul 2021 03:23:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625739788; cv=none;
        d=google.com; s=arc-20160816;
        b=ui+RescRg9Z1y8O7+hFuGMPg2kNZWVEUsDrrCPTB4+ZXnba+prJCJjTRDtYWEjUrbp
         poX8IIsjDPe2IhzAN+8OAlBAgoAjsFBK7tS3m8rWLvIPNMp3DQ1j7qjKdiCYuBWbMtMa
         XGA3x5vKS6OpBhK7gzaj8x5Bi+eJUvJwrNR11KOlAQjTkRfUXNO9VjOaDhmxogJ7SPhA
         umDONJAHbzcNOU93w2JfHjf1gCNlgc04XYDBvCaehyN1WeJTDSlcxo5mtfT1uFFVZh/1
         mbw7Z+Xmc1zbGomHsJTkgfxRrYubvAeJpYcN7iO5ZtEZr1Olz8se8B5BGcFT5SJ38sYe
         YgeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=x3iwjkRslUVXVzynqv9DkfAuhFvPu/NJ3gSa6NASYJE=;
        b=hfh3RYhdxqCEC4tzH6seHUBv9cOT8S5i4OfzV9s3ZY5IgxpvZNaoBLR8rbI3ENKzqU
         giL9wyLK4Jn0bAdNWreVUQk1op8vNxHkXv2qPOIiyY36kMvs2eNfwgwXEt9Jej/qiit5
         /huEKxC2LX3bO7hBDAnWn7mC6IDgsO7eT0EF2sNlig3ztpRwCSy799eA/unVRzAvNGWq
         EQxmvgnRzKtX59paHMBjjVWLP8FpYkt6DsO1DdvV79rLTU7JQlOBFXueQ8Xsfs5JqIjk
         i9HpPoT1W5tcJCM9To3IOQOSmvbJ3txJj/fYNl425NMABvUNo5qFtqNrVRmnvmOyg3m7
         JMrw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="uUd/VI3g";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-05.nifty.com (conssluserg-05.nifty.com. [210.131.2.90])
        by gmr-mx.google.com with ESMTPS id k24si134144otn.3.2021.07.08.03.23.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Jul 2021 03:23:08 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) client-ip=210.131.2.90;
Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com [209.85.215.178]) (authenticated)
	by conssluserg-05.nifty.com with ESMTP id 168AMb1i000636
	for <clang-built-linux@googlegroups.com>; Thu, 8 Jul 2021 19:22:37 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com 168AMb1i000636
X-Nifty-SrcIP: [209.85.215.178]
Received: by mail-pg1-f178.google.com with SMTP id 37so5490788pgq.0
        for <clang-built-linux@googlegroups.com>; Thu, 08 Jul 2021 03:22:37 -0700 (PDT)
X-Received: by 2002:a05:6a00:c3:b029:327:f2ea:d869 with SMTP id
 e3-20020a056a0000c3b0290327f2ead869mr1588588pfj.63.1625739756737; Thu, 08 Jul
 2021 03:22:36 -0700 (PDT)
MIME-Version: 1.0
References: <20210707224310.1403944-1-ndesaulniers@google.com> <20210707224310.1403944-3-ndesaulniers@google.com>
In-Reply-To: <20210707224310.1403944-3-ndesaulniers@google.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Thu, 8 Jul 2021 19:21:59 +0900
X-Gmail-Original-Message-ID: <CAK7LNAR66iE0w4bjpMVEz6W==mnc59MEnRWm1MXrqApP0aE4Qw@mail.gmail.com>
Message-ID: <CAK7LNAR66iE0w4bjpMVEz6W==mnc59MEnRWm1MXrqApP0aE4Qw@mail.gmail.com>
Subject: Re: [PATCH 2/2] Makefile: drop CROSS_COMPILE for LLVM=1 LLVM_IAS=1
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Miguel Ojeda <ojeda@kernel.org>, Fangrui Song <maskray@google.com>,
        Michal Marek <michal.lkml@markovi.net>,
        Arnd Bergmann <arnd@kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Nathan Chancellor <nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b="uUd/VI3g";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org
 does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Thu, Jul 8, 2021 at 7:43 AM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> We get constant feedback that the command line invocation of make is too
> long. CROSS_COMPILE is helpful when a toolchain has a prefix of the
> target triple, or is an absolute path outside of $PATH, but it's mostly
> redundant for a given ARCH.
>
> If CROSS_COMPILE is not set, simply set --target= for CLANG_FLAGS,
> KBUILD_CFLAGS, and KBUILD_AFLAGS based on $ARCH.
>
> Previously, we'd cross compile via:
> $ ARCH=arm64 CROSS_COMPILE=aarch64-linxu-gnu make LLVM=1 LLVM_IAS=1
> Now:
> $ ARCH=arm64 make LLVM=1 LLVM_IAS=1
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/1399
> Suggested-by: Arnd Bergmann <arnd@kernel.org>
> Suggested-by: Nathan Chancellor <nathan@kernel.org>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
> Changes RFC -> v1:
> * Rebase onto linux-kbuild/for-next
> * Keep full target triples since missing the gnueabi suffix messes up
>   32b ARM. Drop Fangrui's sugguested by tag. Update commit message to
>   drop references to arm64.
> * Flush out TODOS.
> * Add note about -EL/-EB, -m32/-m64.
> * Add note to Documentation/.
>
>  Documentation/kbuild/llvm.rst |  5 +++++
>  scripts/Makefile.clang        | 38 +++++++++++++++++++++++++++++++++--
>  2 files changed, 41 insertions(+), 2 deletions(-)








When I was considering a similar idea, my plan was
to implement this in Kconfig instead of in Makefile
because that will pass the compiler information
in one direction (only from Kconfig to Kbuild), but
that is not so important. We can change it later
if needed.

I did not complete it because I was investigating
some issues (especially [3] below), but maybe
that is something we don't care about.

Can you address [2] below at least?
If we do not have any concern, I can merge it.
It is likely so because people are only discussing
"We want to omit omit CROSS_COMPILE".







[1] explicit target triple for native builds

The default target of my distro clang
is x86_64-pc-linux-gnu.

$ clang --version
Ubuntu clang version 11.0.0-2
Target: x86_64-pc-linux-gnu
Thread model: posix
InstalledDir: /usr/bin

So, previously, the kernel was built with
implied --target=x86_64-pc-linux-gnu.


With this patch, --target=x86_64-linux-gnu will be
explicitly specified.

The same applies to native-builds of other architectures.
For example, when a user builds the arm64 kernel on
an arm64 server, --target=aarch64-linux-gnu is
explicitly forced.

I guess, this is a good direction because the produced
code will be more deterministic, irrespective of the
Clang's configuration.



[2] 32/64-bit configuration is toggled in Kconfig time.

Initially, you submitted only arm64. Maybe, it was intentional
since arm64 is the simplest case.

In the kernel tree, arch/arm and arch/arm64 are very special
cases where 32-bit and 64-bit are separated by directory.

Some of the other architectures are bi-arch, and
32-bit/64-bit is specified by CONFIG_64BIT in Kconfig time.

When Makefiles are being parsed, we actually do not know
whether the user is planning to configure the kernel
for 32-bit or 64-bit because CONFIG_64BIT is not
specified at this point.

ARCH=x86 + CONFIG_64BIT=y
will build the x86_64 kernel, and
ARCH=x86 + CONFIG_64BIT=n
will build the i386 kernel.


Then, you may wonder

  else ifeq ($(ARCH),x86)
  CLANG_FLAGS    += --target=x86_64-linux-gnu

... works?

Yes, it does fortunately.

-m32/-m64 takes precedence over the
{x86_64,i386} part of the target triple.

As far as I tested,

      clang --target=x86_64-linux-gnu -m32

produced i386 code.

Interestingly,

    clang --target=i386-linux-gnu  -m64

produced x86_64 code.


We must rely on this behavior of Clang because
--target (which is contained in CLANG_FLAGS)
must be specified before the Kconfig time.
Then, a user can toggle CONFIG_64BIT any time
from menuconfig etc.

With this in mind, using $(ARCH) as if-else
switches is pointless.
$(SRCARCH) is the only meaningful input.


  else ifeq ($(ARCH),i386)
  CLANG_FLAGS    += --target=i686-linux-gnu
  else ifeq ($(ARCH),x86)
  CLANG_FLAGS    += --target=x86_64-linux-gnu
  else ifeq ($(ARCH),x86_64)
  CLANG_FLAGS    += --target=x86_64-linux-gnu

should be replaced with:

  else ifeq ($(SRCARCH),x86_64)
  CLANG_FLAGS    += --target=x86_64-linux-gnu


Some architectures are not only bi-arch, but also bi-endian.


You hardcoded 64bit little endian for ppc:

   else ifeq ($(ARCH),powerpc)
   CLANG_FLAGS    += --target=powerpc64le-linux-gnu


But, we must rely on the fact that

   clang  --target=powerpc64le-linux-gnu -mbig-endian -m32

produces big-endian 32-bit code.

This makes the "64le" part meaningless.


This should be noted. Otherwise it is difficult
to understand why --target=x86_64-linux-gnu works fine
with building the i386 kernel.



[3] User-space compilation

This does not matter to the kernel itself, but
Kbuild compiles some userspace programs for
the target architecture.
See the samples/ directory for example.

Another example is net/bpfilter/Makefile, which
embeds the user mode helper when
CONFIG_BPFILTER_UMH=y.

For this purpose, Kconfig checks if $(CC) is
capable of linking the userspace.
(CONFIG_CC_CAN_LINK).

When cross-building with Clang, I cannot see
CONFIG_CC_CAN_LINK set.

If we care about CONFIG_CC_CAN_LINK, probably,
--sysroot or something should be set according to:

https://clang.llvm.org/docs/CrossCompilation.html

This is an existing issue, but I have no time
for looking into this.

On debian systems, sysroot for cross-compilation
are located in /usr/aarch64-linux-gnu,
/usr/arm-linux-gnueabi, /usr/arm-linux-gnueabihf,
/usr/i686-linux-gnu/ etc. but I do not know if it
is the same across distros.





[4] What is the best target if we hard-code it?

Currently, we require the correct CROSS_COMPILE
is provided by users.

The target might impact the performance
or the ABI.
It was difficult for me to define
which one is better than another.

For example for ARCH=arm, which is better
--target=arm-linux-gnueabi or
--target=arm-lnux-gnueabihf or
something we don't care about?







> diff --git a/Documentation/kbuild/llvm.rst b/Documentation/kbuild/llvm.rst
> index b18401d2ba82..80c63dd9a6d1 100644
> --- a/Documentation/kbuild/llvm.rst
> +++ b/Documentation/kbuild/llvm.rst
> @@ -46,6 +46,11 @@ example: ::
>
>         clang --target=aarch64-linux-gnu foo.c
>
> +When both ``LLVM=1`` and ``LLVM_IAS=1`` are used, ``CROSS_COMPILE`` becomes
> +unnecessary and can be inferred from ``ARCH``. Example: ::
> +
> +       ARCH=arm64 make LLVM=1 LLVM_IAS=1
> +
>  LLVM Utilities
>  --------------
>
> diff --git a/scripts/Makefile.clang b/scripts/Makefile.clang
> index 297932e973d4..a79088797a50 100644
> --- a/scripts/Makefile.clang
> +++ b/scripts/Makefile.clang
> @@ -1,6 +1,40 @@
> -ifneq ($(CROSS_COMPILE),)
> +# Individual arch/{arch}/Makfiles should use -EL/-EB to set intended endianness
> +# and -m32/-m64 to set word size based on Kconfigs instead of relying on the
> +# target triple.
> +ifeq ($(CROSS_COMPILE),)
> +ifneq ($(LLVM),)
> +ifeq ($(LLVM_IAS),1)
> +ifeq ($(ARCH),arm)
> +CLANG_FLAGS    += --target=arm-linux-gnueabi
> +else ifeq ($(ARCH),arm64)
> +CLANG_FLAGS    += --target=aarch64-linux-gnu
> +else ifeq ($(ARCH),hexagon)
> +CLANG_FLAGS    += --target=hexagon-linux-gnu
> +else ifeq ($(ARCH),i386)
> +CLANG_FLAGS    += --target=i686-linux-gnu
> +else ifeq ($(ARCH),m68k)
> +CLANG_FLAGS    += --target=m68k-linux-gnu
> +else ifeq ($(ARCH),mips)
> +CLANG_FLAGS    += --target=mipsel-linux-gnu
> +else ifeq ($(ARCH),powerpc)
> +CLANG_FLAGS    += --target=powerpc64le-linux-gnu
> +else ifeq ($(ARCH),riscv)
> +CLANG_FLAGS    += --target=riscv64-linux-gnu
> +else ifeq ($(ARCH),s390)
> +CLANG_FLAGS    += --target=s390x-linux-gnu
> +else ifeq ($(ARCH),x86)
> +CLANG_FLAGS    += --target=x86_64-linux-gnu
> +else ifeq ($(ARCH),x86_64)
> +CLANG_FLAGS    += --target=x86_64-linux-gnu
> +else
> +$(error Specify CROSS_COMPILE or add '--target=' option to scripts/Makefile.clang)
> +endif # ARCH
> +endif # LLVM_IAS
> +endif # LLVM
> +else
>  CLANG_FLAGS    += --target=$(notdir $(CROSS_COMPILE:%-=%))
> -endif
> +endif # CROSS_COMPILE
> +
>  ifeq ($(LLVM_IAS),1)
>  CLANG_FLAGS    += -integrated-as
>  else
> --
> 2.32.0.93.g670b81a890-goog
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210707224310.1403944-3-ndesaulniers%40google.com.



--
Best Regards

Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAR66iE0w4bjpMVEz6W%3D%3Dmnc59MEnRWm1MXrqApP0aE4Qw%40mail.gmail.com.
