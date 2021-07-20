Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBZ4H3KDQMGQEAZIJ3MI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E8C13CF5B0
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Jul 2021 10:06:00 +0200 (CEST)
Received: by mail-yb1-xb3a.google.com with SMTP id l16-20020a25cc100000b0290558245b7eabsf29260518ybf.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Jul 2021 01:06:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626768359; cv=pass;
        d=google.com; s=arc-20160816;
        b=pMCp8EOkI8kD2LRKNd8KZgFtjpEsR/d9vxQVXklcwTNpebDrdjvbit5FmcM57Wxq1y
         vpN2oNHXsLs0r4zUlw484yhV5SoVYaeYJeZufpm8khUJ8qtZlSYx34UHu0STNJsEOaz6
         UKaFMRhPpEaVQBxZxkYEasQOVgK0HzMY9E4iLvtaF18maW3eGlzixujwWqj/pXQBq74X
         YfJ2OJ7c4eU68iK+ttZffLrhDrLxc+2M8ZviVX3mYhS1N5U/C7+9owSghxCEIRDq12lA
         RZTIwb6SgOhiWL2iAGTEiHAOXX8SxZP88iQbAXdRR++dP56ACADgPR7LedfUjL5MWxLV
         h03Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=pyIuaEUAfW3AuErkaexP4NHyHanMJ3juUiQXckETF+U=;
        b=n6v7GrXblDPaA4otOBZ0C/3wILbagUfm1I49tHRgL6VnRdM4jmkWNyMzOfFLVh7KlY
         F2VJFCQpcpp4EOjcvhg9xF7Z/jtRiM4YgI0Us/p8hNUXjMhXYn2Fi6nAVqTiACA9n8ex
         kEJLWUolGBkYnFV4IifRDpgG6Q65D8GczJPxP96rwgj+7yPYecft2HkZSruwJaYX/ddv
         5mdmr3/syfCv6sXDyfa+78yoMTPD0dXINRUJRsUSaS4VezbRaYSxlCeTwMHxuGWy/T1D
         bGHaIu4pDo2WhHqqnMEnMtXTECiOFu3mnrRppqV1LNv6c1f6UaBoocAPs2i3VrEOlV62
         1CtA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=mrzdUsA3;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pyIuaEUAfW3AuErkaexP4NHyHanMJ3juUiQXckETF+U=;
        b=cx2tan8NcV+AGWi/tc2JLfxA57WCdMSShCpc08RLL7kxM3b9tSXGxOrY2tIRQpzNoQ
         LpaI5XZ5Rf2NrYr0b/s+tmPAp68Q00Q+ptamn6yrpXcNq/po82s6pJHg5+WaSJB0lfZG
         BAssEUMGQcAc5+sgcbEkPu6R90GdStkE609NcyDPCcUutciFiOb43r5eKb/9MjkquCfQ
         yyxDR1m6UC3TShQkTo57Gb9a2LB0rXDodvRuOOBcCGwn8JBI0s0wf0DXaI6+mAWJ0yKd
         IgOdAxU+aWNjJnAyj5E952aGNQU7Zve/I0RNjz0YJe0OlVG9qyW2PEIHJcW/n98cZMF9
         +jBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pyIuaEUAfW3AuErkaexP4NHyHanMJ3juUiQXckETF+U=;
        b=tt/50gPkZezThzg9Vu7MrQIWjpfcs2B5ulokw2dkeVfc0+Y4MyLD6E0lurDMzJnJKq
         ls9mcl3fMYvyXnnWxrezJbSooJ2xHrLqdbHV8CJdhV+uSGPn1+Lan3TaP86gxWVqdwwa
         GlUIzZiVCQiKFXUmdeF40BJpM/vcFmCEbRbrjm2tsl2FfO3EtCPm1sWBe0dx+EcQC+Pz
         Ug4FVo2CcCrJ98yVQzEh6EnyhQ0OZyyhpk9IvijL5B6CaEsuqKfulgWW58tccEfAqAsq
         OR+DAZNOat8YxmWAdsXcPD+OA0XVu3Hx5pob93YYl39HYXL5Q9rTHIikYhdL3+lew0b6
         sUuQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5322MI7Egz7k9kRUB4kmv1ZSGn5VTJ8qZ3QHvBS7O+oYLyL21kPa
	Jy+kMg/BFxBnhL6O3K0NXhI=
X-Google-Smtp-Source: ABdhPJz0rNq3SYi4jfbHPIoMXdsekIKzQw8avkw4NAnLVEnNFo9nGJQ9lFa2ycjRHDNdN4VF5czQYw==
X-Received: by 2002:a25:8b86:: with SMTP id j6mr35156501ybl.470.1626768359211;
        Tue, 20 Jul 2021 01:05:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:4053:: with SMTP id n80ls2301301yba.11.gmail; Tue, 20
 Jul 2021 01:05:58 -0700 (PDT)
X-Received: by 2002:a05:6902:4f2:: with SMTP id w18mr29780770ybs.6.1626768358751;
        Tue, 20 Jul 2021 01:05:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626768358; cv=none;
        d=google.com; s=arc-20160816;
        b=Gn9ZJwEGeCbY/KGM+YkbSLR7KdM82lGph9f3O7cu+n0wmwAuIekd6A58GZ4lxoz/cb
         G+qupW8UlJRHZAgXFLxYGWRyxL/eIlkR3rk6YQbPvfw+ms9UeCQ+KuEugqibTbY2MBwa
         E65ljVjo6SyAGKkgFTK2sp5rXI1wrOYcpXhYlHZEDRs8XGrMNuCF2AY+1aoKVx/Dk2lD
         S/YAl2uWDN1+J0BEsEkXPqtOBUN5ewFRQfrwaFFGlY8asbMbGz7uHtLTnHvcLx0a/+5+
         eFuXgzIMXt2kCtE9kWP/JkUXWGBN0FO9wpvU4qt/ZUbZtDrRY8fmLzWsm7Lz5S17Zvu7
         EJuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=tW4cmCGAAsT+oeAelhZJnVPmEjCboZT3XEV//GSWizc=;
        b=mtKOgfN3XwuCb4ThllM5dgy9n5xpCpozt4WU1tP6tOFOqFecAcfBuNmvH4i+ldaZhY
         KBPN/FSpt0eJIT1V2qurTVsmFLYYnKyKo22pc7OObhrzl1+hLX8BigslRQg2GmGzjTGk
         +qv5WGuFFocgvt+pe6wPwWcNPa0emnjyCNZrw7vydzGE0k02pZvElvgWM/kEfDZERJQM
         iFBM4gsaWEwNaRUVLTjmLEK94rQh4Uf7ofOpD9idcu3AZI8XRZPr0i5JD4twB4o5Gwx7
         f1P+8rVUdQ0n2lmVxDSYLPfgS/UkE7AVYNCmNK1w58Q6gw0L8VeiXgqX9FW6wapoMH07
         GSPw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=mrzdUsA3;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-03.nifty.com (conssluserg-03.nifty.com. [210.131.2.82])
        by gmr-mx.google.com with ESMTPS id s17si2663283ybk.2.2021.07.20.01.05.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Jul 2021 01:05:58 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) client-ip=210.131.2.82;
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47]) (authenticated)
	by conssluserg-03.nifty.com with ESMTP id 16K85adw000849
	for <clang-built-linux@googlegroups.com>; Tue, 20 Jul 2021 17:05:36 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com 16K85adw000849
X-Nifty-SrcIP: [209.85.216.47]
Received: by mail-pj1-f47.google.com with SMTP id p14-20020a17090ad30eb02901731c776526so1442646pju.4
        for <clang-built-linux@googlegroups.com>; Tue, 20 Jul 2021 01:05:36 -0700 (PDT)
X-Received: by 2002:a17:90a:c506:: with SMTP id k6mr34598471pjt.198.1626768335780;
 Tue, 20 Jul 2021 01:05:35 -0700 (PDT)
MIME-Version: 1.0
References: <20210708232522.3118208-1-ndesaulniers@google.com> <20210708232522.3118208-3-ndesaulniers@google.com>
In-Reply-To: <20210708232522.3118208-3-ndesaulniers@google.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 20 Jul 2021 17:04:58 +0900
X-Gmail-Original-Message-ID: <CAK7LNARye5Opc0AdXpn+DHB7hTaphoRSCUWxJgXu+sjuNjWUCg@mail.gmail.com>
Message-ID: <CAK7LNARye5Opc0AdXpn+DHB7hTaphoRSCUWxJgXu+sjuNjWUCg@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] Makefile: infer CROSS_COMPILE from SRCARCH for
 LLVM=1 LLVM_IAS=1
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Miguel Ojeda <ojeda@kernel.org>, Fangrui Song <maskray@google.com>,
        Michal Marek <michal.lkml@markovi.net>,
        Arnd Bergmann <arnd@kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        Christoph Hellwig <hch@infradead.org>,
        Linus Torvalds <torvalds@linux-foundation.org>,
        Nathan Chancellor <nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=mrzdUsA3;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Fri, Jul 9, 2021 at 8:25 AM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> We get constant feedback that the command line invocation of make is too
> long. CROSS_COMPILE is helpful when a toolchain has a prefix of the
> target triple, or is an absolute path outside of $PATH, but it's mostly
> redundant for a given SRCARCH. SRCARCH itself is derived from ARCH
> (normalized for a few different targets).
>
> If CROSS_COMPILE is not set, simply set --target= for CLANG_FLAGS,
> KBUILD_CFLAGS, and KBUILD_AFLAGS based on $SRCARCH.
>
> Previously, we'd cross compile via:
> $ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make LLVM=1 LLVM_IAS=1
> Now:
> $ ARCH=arm64 make LLVM=1 LLVM_IAS=1
>
> For native builds (not involving cross compilation) we now explicitly
> specify a target triple rather than rely on the implicit host triple.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/1399
> Suggested-by: Arnd Bergmann <arnd@kernel.org>
> Suggested-by: Nathan Chancellor <nathan@kernel.org>
> Suggested-by: Masahiro Yamada <masahiroy@kernel.org>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
> Changes v1 -> v2:
> * Fix typos in commit message as per Geert and Masahiro.
> * Use SRCARCH instead of ARCH, simplifying x86 handling, as per
>   Masahiro. Add his sugguested by tag.
> * change commit oneline from 'drop' to 'infer.'
> * Add detail about explicit host --target and relationship of ARCH to
>   SRCARCH, as per Masahiro.
>
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
>  scripts/Makefile.clang        | 34 ++++++++++++++++++++++++++++++++--
>  2 files changed, 37 insertions(+), 2 deletions(-)
>
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
> index 297932e973d4..956603f56724 100644
> --- a/scripts/Makefile.clang
> +++ b/scripts/Makefile.clang
> @@ -1,6 +1,36 @@
> -ifneq ($(CROSS_COMPILE),)
> +# Individual arch/{arch}/Makfiles should use -EL/-EB to set intended endianness
> +# and -m32/-m64 to set word size based on Kconfigs instead of relying on the
> +# target triple.
> +ifeq ($(CROSS_COMPILE),)
> +ifneq ($(LLVM),)


Do you need to check $(LLVM) ?


LLVM=1 is a convenient switch to change all the
defaults, but yet you can flip each tool individually.

Instead of LLVM=1, you still should be able to
get the equivalent setups by:


  make CC=clang LD=ld.lld AR=llvm-ar OBJCOPY=llvm-objcopy ...


The --target option is passed to only
KBUILD_CFLAGS and KBUILD_AFLAGS.

So, when we talk about --target=,
we only care about whether $(CC) is Clang.
Not caring about $(AR), $(LD), or $(OBJCOPY).


scripts/Makefile.clang is already guarded by:

ifneq ($(findstring clang,$(CC_VERSION_TEXT)),









> +ifeq ($(LLVM_IAS),1)
> +ifeq ($(SRCARCH),arm)
> +CLANG_FLAGS    += --target=arm-linux-gnueabi
> +else ifeq ($(SRCARCH),arm64)
> +CLANG_FLAGS    += --target=aarch64-linux-gnu
> +else ifeq ($(SRCARCH),hexagon)
> +CLANG_FLAGS    += --target=hexagon-linux-gnu
> +else ifeq ($(SRCARCH),m68k)
> +CLANG_FLAGS    += --target=m68k-linux-gnu
> +else ifeq ($(SRCARCH),mips)
> +CLANG_FLAGS    += --target=mipsel-linux-gnu
> +else ifeq ($(SRCARCH),powerpc)
> +CLANG_FLAGS    += --target=powerpc64le-linux-gnu
> +else ifeq ($(SRCARCH),riscv)
> +CLANG_FLAGS    += --target=riscv64-linux-gnu
> +else ifeq ($(SRCARCH),s390)
> +CLANG_FLAGS    += --target=s390x-linux-gnu
> +else ifeq ($(SRCARCH),x86)
> +CLANG_FLAGS    += --target=x86_64-linux-gnu
> +else
> +$(error Specify CROSS_COMPILE or add '--target=' option to scripts/Makefile.clang)
> +endif # SRCARCH
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210708232522.3118208-3-ndesaulniers%40google.com.



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNARye5Opc0AdXpn%2BDHB7hTaphoRSCUWxJgXu%2BsjuNjWUCg%40mail.gmail.com.
