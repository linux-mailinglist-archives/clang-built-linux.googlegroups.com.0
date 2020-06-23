Return-Path: <clang-built-linux+bncBDYJPJO25UGBBHFLZH3QKGQE7CFD4PI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DC3B205BAD
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 21:18:53 +0200 (CEST)
Received: by mail-pl1-x640.google.com with SMTP id i6sf5863plt.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 12:18:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592939932; cv=pass;
        d=google.com; s=arc-20160816;
        b=u0DfNotZdUkATRXZEDiLz/FzHMpNHFkvqB++Tq86Pgwxj/QCfkZGe4jzJKuDsPN95e
         MaRoETiJJeBWjtolTt8EsrxxVfudpRXiCR7+9pGmAfOrtu7idq68arey2WonPLvNvY0i
         pNKYg/vVIeZfv1I4gMiHSNd8xggigDYmuKfrqvrNZNRBQMHPTSpjMe/N0G6sy++/xaW2
         2T2E8j7fjxer0UEnCm+dqVH1djW2gCoGo2kpssjePZW5JVhxI7LEuYzkEQDw97uSH9Ve
         ToqPfUgjEro1qMRPiRf3FGXNt8LkD/5AJZWhLYNK9cwOLksQ4VYOs81/V68qEcGLhHpa
         wu8w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=rJWKjknVWc9HpEzzraQ8VoxwSq49P7vpI9EL/lyL8qU=;
        b=Vfe7eY+OCjpUI+9zFz+X5fI5vBZ43TFKMeBmEF4CLQm8NZokWYEktx4xBSAKB9yGmu
         /Ojjsgt9pQ7K4nLW54CZiX6TKDaC6xs0RbSHBNBVtfYaECNmoi6LAmXjr2ZPmIKXxgL5
         ncOy3qS4vTTZO+nT3yAgphR5lCKn/l/18VAUmFCmZbPMFJYBtiQ/X/yJocbNAqQu59ON
         iAJCUpckFwINlzPqWUfApj9fDNSVwBP11QRcgJjyoyhRYBShFKRNVLZxjQ0xjE2tKNPT
         7SbQYkKSyvH7XTTNmE7UEq3o00ChBmo6qCquw/I8kef4n4SU4ItSQmLtWbXlBhPLeJYA
         POOw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MWwQozrA;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rJWKjknVWc9HpEzzraQ8VoxwSq49P7vpI9EL/lyL8qU=;
        b=JXx5+kCnHESVDPb5iG9ttanFLrJ25w5CfK3xOmueyMK/7+qYocPM6THaplftUAcxj9
         806ekBqndGJ4Pi77UuD5s+7N2W0CJ4ESeoxmDXsLVFiC1Il59k83YX+4qpHUCwv2/6Jm
         px8sL0VrfZyOTwyCtsQlqP/bzH9ohm7t6oB9G7cHAilntuSvWbD0pLALp3na53Xwphok
         du9JWJ1MfvswA6v2m+JXC2cLNN+iORuPvr9/AF5SzPNmiOn88nnFVSiy36bErE328dwR
         NtNbu2mCfrUDxMbvFYdB7VeNbtywEJEfqy4Tw8uX0G35kC8YvrJgryG9GeIM57GycRiv
         zE2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rJWKjknVWc9HpEzzraQ8VoxwSq49P7vpI9EL/lyL8qU=;
        b=JOOPc5XDngOd/VxPGjlLliqBPhNv/B8a+n/qDjLf5OgSDeMmeHMSc1h8nhGHiLa9BW
         vTbwjPPyYO0u158c6JNuCc3yxkHXTLLcd/IFkgkU4RY/+/xx7ZpuxhQA88hxuUdszNQC
         SfVTEWrgVWte5UIm7bQTcSohTKcoZo1Xjq83ETcF8bAWon68Q5wpukSmYSeaRwBuS+d4
         LA+UG8qhpdpXpv+POoyEWzLrfMB5bog/nLK43tc1hmeeWikFmQ0ofex8w46ExC74iRCZ
         wHkPxmDRpH4Se6dZAow0LyiXVIIyeWvA6xOUIrp9PH7NyRZ5Ob7DGCoa2/M0z9P++CLP
         Yd9w==
X-Gm-Message-State: AOAM532pYuw9t8ar/BCnptF8zBkF15ROxFmdNm8lbGdt3Vi13yfKmYaG
	KwiULfX4l/Kliabts7Rz6Ds=
X-Google-Smtp-Source: ABdhPJym9oX2/IJxgV2GtujH3nl7DpHj4+IuGqtz74bdxrz7MG8K7//oId9U1NwM0HvjhLozq8LNUw==
X-Received: by 2002:a63:6643:: with SMTP id a64mr15746351pgc.246.1592939932245;
        Tue, 23 Jun 2020 12:18:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:c253:: with SMTP id d19ls1680474pjx.2.gmail; Tue, 23
 Jun 2020 12:18:51 -0700 (PDT)
X-Received: by 2002:a17:90b:3612:: with SMTP id ml18mr25900474pjb.153.1592939931835;
        Tue, 23 Jun 2020 12:18:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592939931; cv=none;
        d=google.com; s=arc-20160816;
        b=DO9I1kRDMczHa4FdAKiOVytdjGNyzBqqojGomkn43ttXDVHKvXs7RXIVZMn4eE+OH1
         x0gqJ2p2KBJEeyz0u0T1seeSXeYFLsbLtlODhSC9fwTqQ5KuF8n2V456O43H1TduqpLh
         hhNQUiwoUsI1RnmoIdaGXQfYB5Ap8laEVvOPeIhxY5hX6dsl9MLFCD4khUdGtclLUDqh
         xgsGCdeA8vALf3Mq2bajmsyBfqjoySqAyWRgQzDY3X6yR/7Se+b1WkmMfjcVkvuiE1+T
         3b6BRQCF7Y1iQXHYnj17a5qGgdfrIfQrMNB4mLACnRB1w4Xhk40dMpLeVWURdYFLx8SI
         eH8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=JfKvbarsGZfb2E+mqEclhl4xXUNIs4ydQ/HWpkkQqp0=;
        b=vrJqi+Kc/umitAU6/ziYjLW/ch0hr8xoGLwn14Q3/ubB9iJVJl+co7pvz+J4rl80jP
         xsy/J+wW1lHvSzktfOiy5i+32m4obRKS0U6SHuVs4aZzRAPZVPREWlAKLujVJrgYvs96
         0OljLzwMxIw2xi10XQp3pNUIHl8y2YlnTAUuex/l3/3b3224Vk6Yz7XVDnUb7x61xFIJ
         XAk+4cQR3Tg3sKUH+nUN2Uk5Y1JLi+EY+/iI6WA0R1CIYKm/1w82Cjpu+S/pC4Qd8OfN
         fwvdXHaQjGZd5xFN+j6WRomxJtG5dTxQgt9IbmVbUf+6XouNhCs1332Zs3sSPxm3XKwv
         MWlw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MWwQozrA;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id f3si1089789pgg.3.2020.06.23.12.18.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jun 2020 12:18:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id 136so940081pfv.3
        for <clang-built-linux@googlegroups.com>; Tue, 23 Jun 2020 12:18:51 -0700 (PDT)
X-Received: by 2002:a63:5644:: with SMTP id g4mr17857821pgm.381.1592939931153;
 Tue, 23 Jun 2020 12:18:51 -0700 (PDT)
MIME-Version: 1.0
References: <20200622205815.2988115-1-keescook@chromium.org>
 <20200622205815.2988115-3-keescook@chromium.org> <20200623145218.GC4336@willie-the-truck>
 <CAMj1kXEPe10EY1uE1vberVMXv9sx4ZRHgmssOypYm5ya5G9KoA@mail.gmail.com>
In-Reply-To: <CAMj1kXEPe10EY1uE1vberVMXv9sx4ZRHgmssOypYm5ya5G9KoA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 23 Jun 2020 12:18:40 -0700
Message-ID: <CAKwvOdkeW6Ynvkcg0bd9Q9A-9tT=B6bfwO=mDHt9j9E2=sgj-A@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] arm64/build: Warn on orphan section placement
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Will Deacon <will@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Catalin Marinas <catalin.marinas@arm.com>, Mark Rutland <mark.rutland@arm.com>, 
	Arnd Bergmann <arnd@arndb.de>, Peter Collingbourne <pcc@google.com>, James Morse <james.morse@arm.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=MWwQozrA;       spf=pass
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

On Tue, Jun 23, 2020 at 7:59 AM Ard Biesheuvel <ardb@kernel.org> wrote:
>
> On Tue, 23 Jun 2020 at 16:52, Will Deacon <will@kernel.org> wrote:
> >
> > On Mon, Jun 22, 2020 at 01:58:15PM -0700, Kees Cook wrote:
> > > We don't want to depend on the linker's orphan section placement
> > > heuristics as these can vary between linkers, and may change between
> > > versions. All sections need to be explicitly named in the linker
> > > script.
> > >
> > > Explicitly include debug sections when they're present. Add .eh_frame*
> > > to discard as it seems that these are still generated even though
> > > -fno-asynchronous-unwind-tables is being specified. Add .plt and
> > > .data.rel.ro to discards as they are not actually used. Add .got.plt
> > > to the image as it does appear to be mapped near .data. Finally enable
> > > orphan section warnings.
> >
> > Can you elaborate a bit on what .got.plt is being used for, please? I
> > wonder if there's an interaction with an erratum workaround in the linker
> > or something.
> >
>
> .got.plt is not used at all, but it has three magic entries at the
> start that the dynamic linker uses for lazy dispatch, so it turns up
> as a non-empty section of 0x18 bytes.

Interesting; is there a way to dump those entries? `--dynamic-reloc`
flag to objdump? (I suspect the answer might be hexdump...)

> We should be able to discard it afaict, but given that it does not
> actually take up any space, it doesn't really matter either way.

True, but I would prefer to explicitly discard it if we know we're not
using it, that way something explicitly breaks if someone tries to
make use of it in the future.  Then we can consider not discarding it,
only if necessary.  Modules on arm64 use .got.plt, IIRC? But they have
their own linker script so irrelevant I guess.

> > > --- a/arch/arm64/kernel/vmlinux.lds.S
> > > +++ b/arch/arm64/kernel/vmlinux.lds.S
> > > @@ -94,7 +94,8 @@ SECTIONS
> > >       /DISCARD/ : {
> > >               *(.interp .dynamic)
> > >               *(.dynsym .dynstr .hash .gnu.hash)
> > > -             *(.eh_frame)
> > > +             *(.plt) *(.data.rel.ro)
> > > +             *(.eh_frame) *(.init.eh_frame)
> >
> > Do we need to include .eh_frame_hdr here too?
> >
>
> It would be better to build with -fno-unwind-tables, in which case
> these sections should not even exist.

Interesting, so we have -fno-asynchronous-unwind-tables and
-fno-unwind-tables.  Is your suggestion for -fno-unwind-tables a
global KBUILD_CFLAG (vs limited to a particular arch)?  Interestingly,
there a few users of -fasynchronous-unwind-tables in the kernel.
vdso's make sense, I think, less sure about the rest.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkeW6Ynvkcg0bd9Q9A-9tT%3DB6bfwO%3DmDHt9j9E2%3Dsgj-A%40mail.gmail.com.
