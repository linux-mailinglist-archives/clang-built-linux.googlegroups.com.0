Return-Path: <clang-built-linux+bncBDT2NE7U5UFRB7FU3X6AKGQEY5X2Q4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id B4933299A5E
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 00:23:42 +0100 (CET)
Received: by mail-pf1-x43c.google.com with SMTP id 62sf6516101pfv.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 16:23:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603754621; cv=pass;
        d=google.com; s=arc-20160816;
        b=h4qAzmHKUCFVf648jbZFer4HrJn96sBub9UbxxXvfOfNplpHMlLeKTlXvweJAw38oV
         qn2B9XntBy8B5iZNJF+XV0/mU7ZPWX9ITKH31g9lpKlHzJjWRVVaLMGqLFpjXnM5FFZq
         vds+/9iyy2dPraJMDCTm31xf1n9LunF3/vMt+JnWBopj4p704jplLu4W9EhGlu8xVfHN
         s8FgT+zKoBpCMuNwkrzzXzPwf+kqZG9c8FMZFdrZOVeHIMYOWVpZ/qqqKoYxUIhGtGT0
         2cBllQiS0rHJWUsHprD24q829o2rZkbzHacel6iDvyVLn8Y0VbkeNptAVXAzr4KuF/Yy
         2Gxg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=VNH9YADFs0SuiMLExCklOlxL5X3hUuAazMAlvU+olRw=;
        b=r4pHUboaeJILsWwMxy1ETy8s7D7UNRpeo0MoPaO4c8kF5j2qJikLd4ekQi2+WttROn
         pclZSS+lFArqoqsV3/nu4uJwckPHv9eOSau0fw2r3D/S/nFGMIJ6psyR2V/AwWKIv47A
         Dj7YDF4T9UZwgCFTN7ZMeoMGlV9yKNUi3ZxSiYm/9CwCLfsc/qY7pYo8+NY5xPDADZ72
         5T2xTxBNhFbyFYTQezLEy3WyDVe+jfhfVc9e1ieTeW1JArKwwcs1pdUSglhvxjdjkycW
         aVri78KOuFF5WSUmWpL8P982HZHOtfTxnWIVOe9KpjvqOHpijaTicPVRcnUgaijeFo6s
         pOOQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=mLJcQqGM;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VNH9YADFs0SuiMLExCklOlxL5X3hUuAazMAlvU+olRw=;
        b=qwhdzaqbArcOvmxtkWkH4cHeNRYFJfZeQYBqzQNNeJlaavb8iF7pzjTHmdxT7fP/1y
         8szDVVLJDIIL8OB7YnbHQjB1aSSYl0aGsc2zGfG0SVNyCxmbS1Oup43E2E3QqYn9cmYC
         F8ioTYS4ARzqi9MsgyXNAffpkeaIsuHjftTKsZ/gku4MS7SCR1lWSb33Q0oU6C3a36lT
         +0W7W0Oo7WB476iygalcDEDR2SU0CXw92NtYgFhs7qvxT0kBQ2cfwKZ9vNI70HeEuNjx
         1Yy0u0tyxkVjY0Ott09TZyM5VyWXAQ6FQaz3jmxIHDxpvnu26jifLZIaPZ2qVsnyfSQQ
         ELbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VNH9YADFs0SuiMLExCklOlxL5X3hUuAazMAlvU+olRw=;
        b=ANT+To9EILGGOUBoqMsXf0iMwe6djE+BsXPQCiPekWs4TF88n8PA8EIxkyJY1uQfG3
         8UIGRw3tZ71jirH3LcEg9Rw2f7HW8ciStP+S5NuTdMk9jCwOM3Y/P849WBozMJrOw8+9
         DkMIW4AV/H22yHSDrcmTR3ife1OZMhbGQ2bi5t+sp+K0QZCPSoxz7h/Fko7KlBQC1Epd
         9yxRjpUWASgu/Ny1xzBkzL4PhKXzrf/pP2mYpFhlMeJXt8enlAmTzOwgOB5FOV9rNWa8
         mSIw4fmDtYxga07bykPAoY2UEAJy5NIxho/x/1It5LjTgWbcqGfMCxGdfAivq/mfvkdc
         bk6g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531OWBmmQYOCZ4BFoUz4D/XV560Do1gHSTP1iHeZolpGdv9j4QYP
	onZiSLp/8EaoEBWvwcylaD8=
X-Google-Smtp-Source: ABdhPJypl71YQ6AEMxdvnNKy70+brtyj6UwMw9ea4k5DRNBTjhKhGJChtoGkZZVq23JX0oFY7aeunA==
X-Received: by 2002:a17:90a:7802:: with SMTP id w2mr23138109pjk.160.1603754621040;
        Mon, 26 Oct 2020 16:23:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8b8a:: with SMTP id ay10ls5048823plb.6.gmail; Mon,
 26 Oct 2020 16:23:40 -0700 (PDT)
X-Received: by 2002:a17:90a:498d:: with SMTP id d13mr23375589pjh.100.1603754620405;
        Mon, 26 Oct 2020 16:23:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603754620; cv=none;
        d=google.com; s=arc-20160816;
        b=hA2PjNbqSQf+DFrDFlFcqbfTvzaV0ZosJe3BUVpKHHooPBgRuKYLtHgwBvZOBMhVM4
         N0zBI3wnH3XRh/2KJXZ99/aAjCmYh4UKlC9iq5h6e7mDq4x2XZW4HOghOD9/SB/dYEod
         BTSjF1PcUU44moSMUMR6dUh+Djak195QKmUUBPMtCymz/8XC467JJJD6pM2FjlW5oIlG
         OoRaNEd5fA+OxppAMKWPKv3tuBYFRQjr/lCscY6elmjaUkKp0VfK3JhTip0Rxe/1biWb
         5fJmrx1v/UBGZvJxv94t68QcnzrZhZ5E+E/cl1CAIKzQRMWKytuifVaT1AM20kwg0UDF
         EhCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=kUhFWI4WsYDgPcCkl7UnZNZiYWnYQ9Bwztn+54+tYPg=;
        b=fqqZLhlEN7X2uDLEiJJFBRHcETp45Z2JRgl3upGowi2f9xZ2pGo56MGWQOudUfnHQ5
         icVXHdD4L9FgKRBef3VkKLQ2vYB8b8kjpxeeRv5uoSlN40jHocGUikTt65BQpFpDUW/7
         0fbq2igPyimYb2Wx4Z53sj2+hINlmFE4LM4g1HhZMq185mGZOnDiQq0YWoEWMQTSyw4I
         ollhzNiXtDUlufaVToND1BhyzOJT3vJeZIPfnHVldVcWgPF3Eroi5QYt9huMkytPZNnQ
         7aCj1eILFTvAt/7HFThbUT0AEjWet8SyXhAikhFPnHMWCXbckUDRsFjvDHaSA8oK05cO
         zHRw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=mLJcQqGM;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-05.nifty.com (conssluserg-05.nifty.com. [210.131.2.90])
        by gmr-mx.google.com with ESMTPS id x24si647050pll.5.2020.10.26.16.23.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2020 16:23:40 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) client-ip=210.131.2.90;
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175]) (authenticated)
	by conssluserg-05.nifty.com with ESMTP id 09QNNCXc006489
	for <clang-built-linux@googlegroups.com>; Tue, 27 Oct 2020 08:23:13 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com 09QNNCXc006489
X-Nifty-SrcIP: [209.85.210.175]
Received: by mail-pf1-f175.google.com with SMTP id b3so3731137pfo.2
        for <clang-built-linux@googlegroups.com>; Mon, 26 Oct 2020 16:23:13 -0700 (PDT)
X-Received: by 2002:a62:ac08:0:b029:163:ecb1:ea2b with SMTP id
 v8-20020a62ac080000b0290163ecb1ea2bmr162391pfe.63.1603754592351; Mon, 26 Oct
 2020 16:23:12 -0700 (PDT)
MIME-Version: 1.0
References: <patch.git-ef02981ce9bc.your-ad-here.call-01603453662-ext-3714@work.hours>
 <20201023181805.GA3852821@ubuntu-m3-large-x86>
In-Reply-To: <20201023181805.GA3852821@ubuntu-m3-large-x86>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 27 Oct 2020 08:22:35 +0900
X-Gmail-Original-Message-ID: <CAK7LNATuqqbd5MKWsFhOEAaGby6LZizSqAOVKX7+o-NiZ=ehcw@mail.gmail.com>
Message-ID: <CAK7LNATuqqbd5MKWsFhOEAaGby6LZizSqAOVKX7+o-NiZ=ehcw@mail.gmail.com>
Subject: Re: [PATCH] kbuild: remove unused OBJSIZE
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Vasily Gorbik <gor@linux.ibm.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Michal Marek <michal.lkml@markovi.net>,
        Jonathan Corbet <corbet@lwn.net>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=mLJcQqGM;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Sat, Oct 24, 2020 at 3:18 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Fri, Oct 23, 2020 at 01:57:32PM +0200, Vasily Gorbik wrote:
> > The "size" tool has been solely used by s390 to enforce .bss section usage
> > restrictions in early startup code. Since commit 980d5f9ab36b ("s390/boot:
> > enable .bss section for compressed kernel") and commit 2e83e0eb85ca
> > ("s390: clean .bss before running uncompressed kernel") these restrictions
> > have been lifted for the decompressor and uncompressed kernel and the
> > size tool is now unused.
> >
> > Signed-off-by: Vasily Gorbik <gor@linux.ibm.com>
>
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

Applied to linux-kbuild. Thanks.


>
> Thanks for the patch!
>
> > ---
> >  Documentation/kbuild/llvm.rst | 5 ++---
> >  Makefile                      | 4 +---
> >  2 files changed, 3 insertions(+), 6 deletions(-)
> >
> > diff --git a/Documentation/kbuild/llvm.rst b/Documentation/kbuild/llvm.rst
> > index cf3ca236d2cc..21c847890d03 100644
> > --- a/Documentation/kbuild/llvm.rst
> > +++ b/Documentation/kbuild/llvm.rst
> > @@ -57,9 +57,8 @@ to enable them. ::
> >  They can be enabled individually. The full list of the parameters: ::
> >
> >       make CC=clang LD=ld.lld AR=llvm-ar NM=llvm-nm STRIP=llvm-strip \
> > -       OBJCOPY=llvm-objcopy OBJDUMP=llvm-objdump OBJSIZE=llvm-size \
> > -       READELF=llvm-readelf HOSTCC=clang HOSTCXX=clang++ HOSTAR=llvm-ar \
> > -       HOSTLD=ld.lld
> > +       OBJCOPY=llvm-objcopy OBJDUMP=llvm-objdump READELF=llvm-readelf \
> > +       HOSTCC=clang HOSTCXX=clang++ HOSTAR=llvm-ar HOSTLD=ld.lld
> >
> >  Currently, the integrated assembler is disabled by default. You can pass
> >  ``LLVM_IAS=1`` to enable it.
> > diff --git a/Makefile b/Makefile
> > index d35a59f98e83..d2123c2c829a 100644
> > --- a/Makefile
> > +++ b/Makefile
> > @@ -433,7 +433,6 @@ NM                = llvm-nm
> >  OBJCOPY              = llvm-objcopy
> >  OBJDUMP              = llvm-objdump
> >  READELF              = llvm-readelf
> > -OBJSIZE              = llvm-size
> >  STRIP                = llvm-strip
> >  else
> >  CC           = $(CROSS_COMPILE)gcc
> > @@ -443,7 +442,6 @@ NM                = $(CROSS_COMPILE)nm
> >  OBJCOPY              = $(CROSS_COMPILE)objcopy
> >  OBJDUMP              = $(CROSS_COMPILE)objdump
> >  READELF              = $(CROSS_COMPILE)readelf
> > -OBJSIZE              = $(CROSS_COMPILE)size
> >  STRIP                = $(CROSS_COMPILE)strip
> >  endif
> >  PAHOLE               = pahole
> > @@ -509,7 +507,7 @@ KBUILD_LDFLAGS :=
> >  CLANG_FLAGS :=
> >
> >  export ARCH SRCARCH CONFIG_SHELL BASH HOSTCC KBUILD_HOSTCFLAGS CROSS_COMPILE LD CC
> > -export CPP AR NM STRIP OBJCOPY OBJDUMP OBJSIZE READELF PAHOLE RESOLVE_BTFIDS LEX YACC AWK INSTALLKERNEL
> > +export CPP AR NM STRIP OBJCOPY OBJDUMP READELF PAHOLE RESOLVE_BTFIDS LEX YACC AWK INSTALLKERNEL
> >  export PERL PYTHON PYTHON3 CHECK CHECKFLAGS MAKE UTS_MACHINE HOSTCXX
> >  export KGZIP KBZIP2 KLZOP LZMA LZ4 XZ ZSTD
> >  export KBUILD_HOSTCXXFLAGS KBUILD_HOSTLDFLAGS KBUILD_HOSTLDLIBS LDFLAGS_MODULE
> > --
> > 2.25.4
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201023181805.GA3852821%40ubuntu-m3-large-x86.



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNATuqqbd5MKWsFhOEAaGby6LZizSqAOVKX7%2Bo-NiZ%3Dehcw%40mail.gmail.com.
