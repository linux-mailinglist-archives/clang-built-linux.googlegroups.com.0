Return-Path: <clang-built-linux+bncBC2ORX645YPRB3HNTGBAMGQECJ536EI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id 79909331700
	for <lists+clang-built-linux@lfdr.de>; Mon,  8 Mar 2021 20:11:41 +0100 (CET)
Received: by mail-io1-xd38.google.com with SMTP id c4sf8350287ioq.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Mar 2021 11:11:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615230700; cv=pass;
        d=google.com; s=arc-20160816;
        b=NH37WJtjP7Q/H3MBdy5Xk7Hqg8WGTpAnEXqvkm+kCyfJsyWyLMqWIxIuDfAjMq101Z
         lZTWB/FL1uItoYZzsAHOUDNZXrX/8cnmbXH4zufC12ITEDpYmW2lO48/9wc+zuxC+UUN
         bwQeBP8dWP1UbH7SeK9K+EeBO61C4WFu6CEP5v7Go+4VYtwzvfu51XNN3+7l5usXXkI5
         QKrxerBQlY87Ol3Xas3AkqTi7MvC+ItqhnEnn+NAqvxcSTTyGL5HyJWj3Q2GxZ+yxw+4
         YVRDjhxAZ/XenWeSX2wOMsi3J9prsQiOXgHAzVC7YhEbrmGfWbM19k2E5X6Dw4dYIL9D
         RNpA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=oXCCJEEotaeAhQumWI/Es54CKVFQf2bmF+IvV4B59CA=;
        b=AA5zM8FfB6/LngziPp28DHT3pnS8fgtLkBUHHsAmqNKOQkyeMcrWhUz6qfMQj0h0KN
         EUvFeezyWpD1C7S64Z42TfKA2vs3G0oW0TVGW0eOL13pm/rvts5ptZqSoWdi/rfsUyhS
         +TRDaFCCJpAeVk8hM2SkOOvHiHUxz1T0HXz9ap5yTfFsiuej03qZnANKmlqbq8HP5v20
         VF1ZYM8eo7WjaNAVZz7I92KvMSFYsjGFIsL8ffqpULqKaZMDMdW4GM98NocfHtOLF0tw
         1yYY4pNKWm2kHiMrC2Rep1FxQmsPliVHF1cyG9aXA1pwBNMeGcha+wKz9MlIumIUqw5C
         jFsQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tFRWlYBz;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e2c as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oXCCJEEotaeAhQumWI/Es54CKVFQf2bmF+IvV4B59CA=;
        b=SZjCEqxPzFyOorjNcf0Y5vcTgowx4vyogls0TdFYFjLD69uvKxw3tETIdz9Fk4Rdms
         3ymUEXRjy9MOAKLKIVGxiflnNQCIlx58ZrDEHHVg3tZMy/sxspfaYk3QrO+7mGAUeSpV
         h50bVB3586QHzafyk3oLEN2mW1Q2q80T292v1X2IPTOhRfdChPHXRl6cupcXfUskXkoI
         o/QWGu8omYqeElro8ucsOSEzEf1jM89o9x6uVy0W6xWxA1ujgmzv08ZHmo6h9MCxvf/r
         fMgAqlXUvfgFe0uAHlBxToxUPsnU+xxX975oBr4Nd4qAaALbPLivJSg7uqW9BIE6vkr3
         nZ8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oXCCJEEotaeAhQumWI/Es54CKVFQf2bmF+IvV4B59CA=;
        b=WRe5cmucAKuyr7K+Bqu2SqgnoScl26/1atCiaykaays/rrgM5HBuAlg/jeGzGtk30U
         cWGO7l13ESrs0yibZndEO9vxN26wKngCkio7uYECWV3QYV+ouWxjBVRUaTFCpXEE1ryG
         ijImKc7PTCh5ePwhiyj3040Lfn7/b6uhDxoP/uKDJs0qORDRR+ZZVAekufpf5er2ZzEp
         lG8MiHWWJIYNzYlBIdmkoIvRsAcqlo8lwJ/BbbWeBIaDLj2MpfGyC/LCaNXSf0QSmIxk
         18NhZmWDO5QOTEvITE2qU7NZJRr9zKp9PKbb5PvyjajF4Gb6KPHaOtwzyDrCpz1GeGos
         Xp6Q==
X-Gm-Message-State: AOAM533KZ0Cqc2HZ7fTCBFAGRhvoNB/YCi0pafznihMpp45QsqFZ12J4
	XDhkmZD8s1NmRdByZEGYdvc=
X-Google-Smtp-Source: ABdhPJy6NbM3f9j6x/zPi0Aopj+v6YXU6dBbY6L+zcqLOHtnJ5SvnyvalesKBuG9mMcHqUzuRPPk4A==
X-Received: by 2002:a02:3ec7:: with SMTP id s190mr24948093jas.11.1615230700483;
        Mon, 08 Mar 2021 11:11:40 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:339e:: with SMTP id h30ls63649jav.0.gmail; Mon, 08
 Mar 2021 11:11:40 -0800 (PST)
X-Received: by 2002:a02:971a:: with SMTP id x26mr24710508jai.61.1615230700124;
        Mon, 08 Mar 2021 11:11:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615230700; cv=none;
        d=google.com; s=arc-20160816;
        b=PKzICyOI5CqeqQUOlALrtxlc09BnP6si9rYHLwG1ioXHalR8AxmpQ7ExhMhhtNxnoX
         uGdJy2nZaz1Dd2z6KPA6gMjdpFCAeu/3NEE3gEttTnA/b/cDPiaN9thPsQS5CIwXoOm3
         xWXqduDzlsW6ahLCZj3lLAJ7GUWEi0V587uR4F5XXRKA7JeA0m/EN/rLPGanGOGrtlke
         RkjVpjyXT/gTIONeY5h2HLftxVRfuBbyd9t0vZCsOfCHfwhU/X1D24ATnZ8EBW/zvueV
         vZ43DFq2+ziXJm/BOkHYFlsiQ/0FNl+N57YJjD7jimmnyYD+5tf2vdLDjNX5dNUAxyhq
         o6eQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=i+YqN6/BonSiVeAMXE6BrX07AcSfEu2bZuI4K6dyeGs=;
        b=p5WbUb28Ekpht0/S+mibAEdA1km/5amJbT0RmTCBeR/6ewRQ/HWwPFosX0bwmh2eKV
         Nra8Ay26fMAuqU/x1Uexjf8MMvdqOqcHlNgQj8GwVGc5c0WLdII643CLE6fdkOBD4fay
         ABxdSMQLdgYTctByj61I3QYKjfc5F1dDgmCubmcSXCqDyG7Tvb0jiysZOOoBxpMMm5ob
         cye8RnkonCpNYDtFx94/QOAD6l0wdm25gsV0KZIZtV87P7jSeR+QZ9guz684ky+ahxUH
         8olhllZglEjpuoyqfW7SO34E7MmeNriHTEX3t3qOPeHewURe7xcFL1HssPp0Mv9JNi8Q
         tXIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tFRWlYBz;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e2c as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vs1-xe2c.google.com (mail-vs1-xe2c.google.com. [2607:f8b0:4864:20::e2c])
        by gmr-mx.google.com with ESMTPS id y8si672105iom.1.2021.03.08.11.11.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Mar 2021 11:11:40 -0800 (PST)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e2c as permitted sender) client-ip=2607:f8b0:4864:20::e2c;
Received: by mail-vs1-xe2c.google.com with SMTP id p24so5422275vsj.13
        for <clang-built-linux@googlegroups.com>; Mon, 08 Mar 2021 11:11:40 -0800 (PST)
X-Received: by 2002:a67:5ec1:: with SMTP id s184mr13870317vsb.36.1615230699312;
 Mon, 08 Mar 2021 11:11:39 -0800 (PST)
MIME-Version: 1.0
References: <20210303183333.46543-1-masahiroy@kernel.org> <CAKwvOdkhZGv_q9vgDdYY44OrbzmMD_E+GL3SyOk-jQ0kdXtMzg@mail.gmail.com>
In-Reply-To: <CAKwvOdkhZGv_q9vgDdYY44OrbzmMD_E+GL3SyOk-jQ0kdXtMzg@mail.gmail.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 8 Mar 2021 11:11:28 -0800
Message-ID: <CABCJKudmzK=AhtMpZt6X3BDG7NHmf9C6ncEt9JJAv+uto14qXQ@mail.gmail.com>
Subject: Re: [PATCH 1/4] kbuild: remove LLVM=1 test from HAS_LTO_CLANG
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Nathan Chancellor <nathan@kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=tFRWlYBz;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e2c
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Wed, Mar 3, 2021 at 12:47 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> + Sami
>
> On Wed, Mar 3, 2021 at 10:34 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >
> > This guarding is wrong. As Documentation/kbuild/llvm.rst notes, LLVM=1
> > switches the default of tools, but you can still override CC, LD, etc.
> > individually.
> >
> > BTW, LLVM is not 1/0 flag. If LLVM is not passed in, it is empty.
>
> Do we have the same problem with LLVM_IAS?  LGTM otherwise, but wanted
> to check that before signing off.
>
> (Also, the rest of the patches in this series seem more related to
> DWARFv5 cleanups; this patch seems orthogonal while those are a
> visible progression).
>
> >
> > Non-zero return code is all treated as failure anyway.
> >
> > So, $(success,test $(LLVM) -eq 1) and $(success,test "$(LLVM)" = 1)
> > works equivalently in the sense that both are expanded to 'n' if LLVM
> > is not given. The difference is that the former internally fails due
> > to syntax error.
> >
> >   $ test ${LLVM} -eq 1
> >   bash: test: -eq: unary operator expected
> >   $ echo $?
> >   2
> >
> >   $ test "${LLVM}" -eq 1
> >   bash: test: : integer expression expected
> >   $ echo $?
> >   2
> >
> >   $ test "${LLVM}" = 1
> >   echo $?
> >   1
> >
> >   $ test -n "${LLVM}"
> >   $ echo $?
> >   1
> >
> > Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> > ---
> >
> >  arch/Kconfig | 1 -
> >  1 file changed, 1 deletion(-)
> >
> > diff --git a/arch/Kconfig b/arch/Kconfig
> > index 2bb30673d8e6..2af10ebe5ed0 100644
> > --- a/arch/Kconfig
> > +++ b/arch/Kconfig
> > @@ -632,7 +632,6 @@ config HAS_LTO_CLANG
> >         def_bool y
> >         # Clang >= 11: https://github.com/ClangBuiltLinux/linux/issues/510
> >         depends on CC_IS_CLANG && CLANG_VERSION >= 110000 && LD_IS_LLD
> > -       depends on $(success,test $(LLVM) -eq 1)
>
> IIRC, we needed some other LLVM utilities like llvm-nm and llvm-ar,
> which are checked below. So I guess we can still support CC=clang
> AR=llvm-ar NM=llvm-nm, and this check is redundant.

I'm fine with removing the check, but the idea here was to just make
it slightly harder for people to accidentally use a mismatched
toolchain, even though checking for LLVM=1 doesn't stop them from
doing so anyway. But yes, the only LLVM tools required in addition to
the compiler and the linker are llvm-ar and llvm-nm.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKudmzK%3DAhtMpZt6X3BDG7NHmf9C6ncEt9JJAv%2Buto14qXQ%40mail.gmail.com.
