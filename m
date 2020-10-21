Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBX5KYL6AKGQEMYAJXDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id E06EF295342
	for <lists+clang-built-linux@lfdr.de>; Wed, 21 Oct 2020 22:09:04 +0200 (CEST)
Received: by mail-oi1-x238.google.com with SMTP id w192sf1516326oie.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 21 Oct 2020 13:09:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603310943; cv=pass;
        d=google.com; s=arc-20160816;
        b=OBi5RE+I4hMuYWreDnpXmr+zk492LsKWS6kL9Tax3cQbIyiBd3N4zjA0g3PamsxHum
         q3i8GhrZTrtwZjD3FY7J0sSRbsBuNJhC6DpaOyC4XUoyZJV6UnfZ5dIg0hkT041n31Vz
         jgXOOHj6d2GiaDheGCI5fWAsvfw1uVAsP90/AHaaryEHojg2WBsZe46NNf+D3ZY8Y21u
         xXNtt9CB3J0P5ZoltQwAbxrzoaMANnIOcidwpO6n07N0AHthN4/VFgSO9/MDYV/ngBfX
         lzcaKFffrsl8hvmy1IDAFb9sDHyunPTufrTQLGfMOJyMLsQ6bDG4dSSpCI1bAoR3Qsl7
         vUPw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=wuVpb7j9MsxFqeDRE1ur0VV+1eGVAfNDvFqVsl8CjHM=;
        b=lDEadGJNQb31lJI5DyZUPowB17ci5UybLfRHurIESm5l0mPNg3czaSvzbz525n/zZu
         ut9xixoVwIjWd4vdMBQWSmOapgiEwfdKdbpfhvr9IkJENqQQk5y8twBzPGTo7TY1D6I3
         +zQoGFghwwsMtF2i/kISsrELANwYmavVdFtBIjuLVtmBBsWrEN2m7it+qTq1F+2CqY5r
         V01ihsH66+iRal6wPLKXB10H93aTnmZvwy0Gj8elZq0BuspvoOY1FfumBkXs/GyehmVS
         BVZzp235jidbBLdyU/+eAvztBpoS3EzTa+JLRrSblYlGd9uRn5hKp1ScyTLkXzPoiStU
         2AWw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=kF5lPFe4;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wuVpb7j9MsxFqeDRE1ur0VV+1eGVAfNDvFqVsl8CjHM=;
        b=L7Ot+tuGR6hTp95ZvMaf2piFqljsCZCFRx8NfJawecX2aiuC41plLXVX/L8PLQFbMw
         rYPmfIwgY4TCwOye0vp5KL9uPDh1UluDfC+H97ciAyrYT0G7A7XOx/g+FPDdOeUigHMG
         zR5gKJiNM8LnS2kqo37RRJL3wUAYbF+chlvs1LEZ1fsKkHV7LVLP54L6V2l5M3wJRXXX
         KYMN7isUGhXsYWl6wZHmEEL3ait11GySRjFGG6vZqwGOJ0MomL1bIxkFL2gyCfMxcX4R
         fGvPEkkEqKw97gjv5Ue0t4Z5CIZmguF/yKdK873ZPOiVEIRfkLrX09IPFnTyCeV3BCPr
         dY2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wuVpb7j9MsxFqeDRE1ur0VV+1eGVAfNDvFqVsl8CjHM=;
        b=lIR/Nbrr/XUW4p+lwgHL+qV6fsg6mBTjUJl+gN1F7IMu2nz3GUYN8Cn+vN1L5utcVu
         i+k++N8LWAYHoDPU+Z8GwBWArH0dyQsj8dKI6w2SVjvFXRKssfDUOLLOcUnkYPA17JzB
         JOtpGUjjR3jezkYQH+y4CwZU3XODSztb1ZMiF9vEzKnpyad0+S//6aGWGYosZC7anD8/
         JPnyegZCHNgfA1aB27w5DZrb5OpWHk5bh9LEgtOaD8q9hX/xIUkR4rPJJaF/+ln0ewSl
         1IvzR5DxC7uTaYTlF6Lna9ddjj3o2FEigOP6+KdSLP/S5PnL9UdAUmyQiC7EwCjV20qW
         arFg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530LGOzoMNF2tB3kJDf9OHdL6FyZHHxHynwFcda6zoQMMRVidrkr
	3posLhba12aesKlodhG1voA=
X-Google-Smtp-Source: ABdhPJxB/wJ2L2xYAUB+nHsKz2mBfWb+bNMowN/EO2Jeslb2qGUHUVwgKm585tX4bMkkO/ya0iz6Fg==
X-Received: by 2002:a9d:6290:: with SMTP id x16mr2792613otk.35.1603310943555;
        Wed, 21 Oct 2020 13:09:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:2fc8:: with SMTP id p191ls61037oop.3.gmail; Wed, 21 Oct
 2020 13:09:03 -0700 (PDT)
X-Received: by 2002:a05:6820:549:: with SMTP id n9mr3801842ooj.51.1603310943206;
        Wed, 21 Oct 2020 13:09:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603310943; cv=none;
        d=google.com; s=arc-20160816;
        b=dv+OUkL4DeorWqj7qrQDBnjoSRGBpE33ymHkdfQb5nPkhmbTH6HAj/2KXnuf+WPuGO
         AIQCS+eOXhIDp9hRy+RTvVGr7xZvdmDwkT97sgLBH5rWhFEGa4xoZunlrFXGfo9izjMK
         1Ur6iCP4XZh+QZK+7g9K8kCZoftyrDy9BI28nVA+WhFSCkY0pKCm20kSC0xUg6yGGjjB
         GSf2Fc/Rsnn3OWJNxq5XuuodghdEHyBNFXrqdklip7QZ9yBSttEuj6pg4ufrlUYrHO/J
         DgLyYb8DUbBIlmRo5vBZYzAzfK/6WSH8WXip6XMQP/mCJ3PqywJMxAc/7aeqdcMK9Qub
         nVyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=QmgTEKwAstprmqCLOa3+RIlsgOb3vaDpc+a/kqXMeho=;
        b=CEKdQWe9ZO3+SxbtIsf4ZlmwoqcaBsPmUf/WNF5TITpvKHs1t14lW2E0KGfP1ipSKV
         X7Ap33J3saOwDqoCEIQdsj3A77gx3xseHh97QIeyAan7+ptcqCbPf+Dw0OpRBLUYVzuZ
         lodPhMW93Z3x7VFbzQRLFa6DNDPleNCdSlUpfseAYubooqrDasYEP8WphpBYdqBugoEH
         yT1IHZLfMbDQUtdPsVV73EaDPnAqaOh+bl8w2u8PhD6fYz+bkaq2+FnFi3t7t4BsSdAC
         hcol2Pbtl/6FNrSLKNO2C62rpZTUzdAshtHU4gmZ5bk7e3IovcVK/XblcLtGHg07UYHD
         5inA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=kF5lPFe4;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id r6si458623oth.4.2020.10.21.13.09.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Oct 2020 13:09:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id o3so2135065pgr.11
        for <clang-built-linux@googlegroups.com>; Wed, 21 Oct 2020 13:09:03 -0700 (PDT)
X-Received: by 2002:aa7:95a6:0:b029:155:336c:3494 with SMTP id a6-20020aa795a60000b0290155336c3494mr4884846pfk.17.1603310942592;
        Wed, 21 Oct 2020 13:09:02 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id y10sm3344623pff.119.2020.10.21.13.09.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Oct 2020 13:09:01 -0700 (PDT)
Date: Wed, 21 Oct 2020 13:09:00 -0700
From: Kees Cook <keescook@chromium.org>
To: =?utf-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Cc: Ingo Molnar <mingo@kernel.org>, Stephen Rothwell <sfr@canb.auug.org.au>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Arnd Bergmann <arnd@arndb.de>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	linux-arch <linux-arch@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>, X86 ML <x86@kernel.org>
Subject: Re: [PATCH v2] vmlinux.lds.h: Keep .ctors.* with .ctors
Message-ID: <202010211304.60EF97AF2@keescook>
References: <20201005025720.2599682-1-keescook@chromium.org>
 <202010141603.49EA0CE@keescook>
 <CAFP8O3LvTkqUK3rp9Q17fmyN+xApZXA8Cs=MNvxrZ3SDCDRX3A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CAFP8O3LvTkqUK3rp9Q17fmyN+xApZXA8Cs=MNvxrZ3SDCDRX3A@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=kF5lPFe4;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Wed, Oct 14, 2020 at 09:53:39PM -0700, F=C4=81ng-ru=C3=AC S=C3=B2ng wrot=
e:
> On Wed, Oct 14, 2020 at 4:04 PM Kees Cook <keescook@chromium.org> wrote:
> > > index 5430febd34be..b83c00c63997 100644
> > > --- a/include/asm-generic/vmlinux.lds.h
> > > +++ b/include/asm-generic/vmlinux.lds.h
> > > @@ -684,6 +684,7 @@
> > >  #ifdef CONFIG_CONSTRUCTORS
> > >  #define KERNEL_CTORS()       . =3D ALIGN(8);                      \
> > >                       __ctors_start =3D .;                 \
> > > +                     KEEP(*(SORT(.ctors.*)))            \
> > >                       KEEP(*(.ctors))                    \
> > >                       KEEP(*(SORT(.init_array.*)))       \
> > >                       KEEP(*(.init_array))               \
> > > --
> > > 2.25.1
>=20
> I think it would be great to figure out why these .ctors.* .dtors.* are g=
enerated.

I haven't had the time to investigate. This patch keeps sfr's builds
from regressing, so we need at least this first.

> ~GCC 4.7 switched to default to .init_array/.fini_array if libc
> supports it. I have some refactoring in this area of Clang as well
> (e.g. https://reviews.llvm.org/D71393)
>=20
> And I am not sure SORT(.init_array.*) or SORT(.ctors.*) will work. The
> correct construct is SORT_BY_INIT_PRIORITY(.init_array.*)

The kernel doesn't seem to use the init_priority attribute at all. Are
you saying the cause of the .ctors.* names are a result of some internal
use of init_priority by the compiler here?

--=20
Kees Cook

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/202010211304.60EF97AF2%40keescook.
