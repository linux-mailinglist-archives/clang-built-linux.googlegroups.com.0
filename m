Return-Path: <clang-built-linux+bncBDYJPJO25UGBBEHB27UQKGQE4TRDEEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id EC2B5706A4
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jul 2019 19:21:21 +0200 (CEST)
Received: by mail-io1-xd39.google.com with SMTP id z19sf44228149ioi.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jul 2019 10:21:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563816080; cv=pass;
        d=google.com; s=arc-20160816;
        b=rR4YI2cE5K2NDRP1mxSeesoVHkCIJF6xZ+uHV6kRazTN5TnWqXlz98Am/kq4mX0jSI
         bJpom7rITg4scin3TGi4v+He2yeX6MwjsTxbQDVEm4nPNIUSplTeAKk2zzaliWPXKrKS
         3sGiXqdyR3grF6v7bR9gRWUFs6jLFIRn6l0s/lgxXH+HqdHijygVl4uqkTAWqdon0Kja
         +9b9++s8XB7/nu4r2Hvotqgs+iyMSyCdZZzaHNBUO5xKxqfEUyp8R1H6pv2kaGUF1iTk
         4nnRzvs7kPo9Oj8uprvABBtwBw9YA6TjPWqzAHLeJnKosYvA7nySGkfc01+cCLUjlYMK
         zBZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=uPVSjrUyt3LTWhXeNr/r/buv+iyUYotmp1v4NWo5L50=;
        b=voxTqOIFSj5bF7hZuojys/KR8nvQULkxcrRRx33pXznDS34wNtz98MnVor7rJ1/IEU
         2vHpZb9tH2HYrEYpjWKpWKkEF2t3lPSDjhILbJrTf83VyNYlKl2bTS6fhJiH8p7TpkMo
         fynCtn/CoLlTRwIUgPM47/5TNgKKgmrMFQpCQx/dF2KC0df+0WYeh003KfjhI68GK/6M
         CnBwmxg0l5cBt41poI9ygDhL/qsaZZdwe84Y7ESoewzz03ZJt4HtxtiDvAYfg99Uoem8
         H0tviwZx/bJOS8i5IL8shsVJrNn3GIUWAQBeepdXKzTIVNqRil+Pqi//B1UQB1NwhSIA
         unUw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FaSizBSw;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uPVSjrUyt3LTWhXeNr/r/buv+iyUYotmp1v4NWo5L50=;
        b=G2ovwXE6XNTjN3fzgVSuEemebqwE8cSDqKHn9kCsHe+9fSMAwBRKAe8UsD8aOf+mkv
         24goUJjudi1/UFR/nuTkmcsUFUl/fI7KAaZMDq0/9zSsjwkt2unLYGlGkkru9x7xCDir
         IiLXDinQsXw65/pOndnXqy8Ki4s5K3cOaXQBJ7bPFvHdRNSwZhKMsHDc+qUSv+8jk290
         Ek0bLJ3cKNi2dDpix8N5VS+iO3sJHRGRV/tKbVIRN6Ga3BN1p9c2sRoqbO1tf1SN4PGj
         rA2uKBzkXObEkSh27kDJwSUHA9XLhN4jheRCAJqKoOCOOigRcLz1wlZ347ng1He1bUVZ
         vQ/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uPVSjrUyt3LTWhXeNr/r/buv+iyUYotmp1v4NWo5L50=;
        b=DSbe5fczNddBkpsKY/hHfPhPqTURuEDB1LcOpERKf0sg1mct1ycZpYaFv2F0MWyDRA
         NfwoYCioMMQxvjtcm5MGUPWbb+aXg/8DXcOhLcI3/y/CCodpOHwqtoUCEApZucBkO/pD
         8N/QyWpJlITmbSYOEkdOFlYl8N1EXInF69HQnI435MuHez880jya94DlDIjoH7ndywsb
         af751hHmf4xgQyX4mPYa0jEOXp2VHiaeNtV0Im2I7l55l5PWyKWSaguAX443S3zaybYP
         SC2ZCDGVys1rSvQ7Dv3oI9xHktau/AsRswjAiV/rLOT4hxvNcNv8QyELbT/QfuipPRks
         y/8w==
X-Gm-Message-State: APjAAAUyo5OFDp7/TVOhpXM8MXbWMQGljDbww2kxlI+xKA1/BHcfPlD5
	iXux+iXbQ67r6BAN3tjLQBU=
X-Google-Smtp-Source: APXvYqyDT9oYpArQ5tbkjECtQJ6n6tv4McZblV1DABK7oyDvf49lvyC/ULub8UToKwSt6Ddo8PFNPg==
X-Received: by 2002:a02:13c3:: with SMTP id 186mr72694783jaz.30.1563816080545;
        Mon, 22 Jul 2019 10:21:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:6303:: with SMTP id p3ls10353057iog.11.gmail; Mon, 22
 Jul 2019 10:21:20 -0700 (PDT)
X-Received: by 2002:a6b:ea0f:: with SMTP id m15mr68913505ioc.300.1563816080289;
        Mon, 22 Jul 2019 10:21:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563816080; cv=none;
        d=google.com; s=arc-20160816;
        b=KIrQRV3llrOReyOXoW2TgM2wDThFl4Omb8lJxUKdqocx2hRyCE/TFLDeocjVU2bUZF
         Erle0Plj2UhdRTzfWcK2uzOvX7QRpcBYeMR/oNErStOuGuD8mW4Y8M5lAvLtLXtaco8d
         b1FAyvUxa/QACjUv1e87KbnAyDGkhcArY4EhBtv7obrVEXR4TRmmSifyzcrPZgZ/niMO
         /0+tp3gFfoa45L0+Fct/TBPxYaE6JIsEH4Zacffz7fgVSRXwPwCu5uGIFXhcmdpU70Rw
         G6MVaR9xUhUzZ7Ozl+Bj7psBJabdpj0gM55tM/FthBqq32Xje+CTSM5sNWMBtfsocgEM
         63cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=QHj3tGcPiL8tws64cl/tkaZMAUCPhqkGn8EZKKJS20U=;
        b=fr3bgtNhYsev/vuLH1nJ2xHI9EZ/KCOaONC2bzNq6LtMSieM2J61A3GlddmScBxVRQ
         BsXqW3s+6e6nBxJDfck8CG70Wbtj3FKabwC8IZuGCELBH6blL2wefZk+9DNdFhLsHe3O
         5PhXTD8i1bgMbftUHP0vJrPvk6VZ8iQUpdg9zf+8AHY2N+Q7ebigm34uvc8M8867aGOj
         4XP3NF5f16iaWhqnxfDaPYVH8y8FX5It/6baoXzzYGbdMBZmyPW3uY/Vw822qZb7sULF
         3SaZYBDiwJDNNJOJqNDm6vAgvq77GGrv5HvBxJDWll1dBpIynjrS8pVwMRZh5qKfR+4M
         j2EQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FaSizBSw;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id t12si1478040iol.0.2019.07.22.10.21.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Jul 2019 10:21:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id t16so17670433pfe.11
        for <clang-built-linux@googlegroups.com>; Mon, 22 Jul 2019 10:21:20 -0700 (PDT)
X-Received: by 2002:a63:2cd1:: with SMTP id s200mr68567574pgs.10.1563816079099;
 Mon, 22 Jul 2019 10:21:19 -0700 (PDT)
MIME-Version: 1.0
References: <45hnfp6SlLz9sP0@ozlabs.org> <20190708191416.GA21442@archlinux-threadripper>
 <a5864549-40c3-badd-8c41-d5b7bf3c4f3c@c-s.fr> <20190709064952.GA40851@archlinux-threadripper>
 <20190719032456.GA14108@archlinux-threadripper> <20190719152303.GA20882@gate.crashing.org>
 <20190719160455.GA12420@archlinux-threadripper> <20190721075846.GA97701@archlinux-threadripper>
 <20190721180150.GN20882@gate.crashing.org> <20190722024140.GA55142@archlinux-threadripper>
 <20190722061940.GZ20882@gate.crashing.org>
In-Reply-To: <20190722061940.GZ20882@gate.crashing.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 22 Jul 2019 10:21:07 -0700
Message-ID: <CAKwvOd=KRVsFkT8dLFoitky9OF8tKmbn00-OPi6kBygyx4QwHg@mail.gmail.com>
Subject: Re: [PATCH v2] powerpc: slightly improve cache helpers
To: Segher Boessenkool <segher@kernel.crashing.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Christophe Leroy <christophe.leroy@c-s.fr>, 
	Michael Ellerman <mpe@ellerman.id.au>, Benjamin Herrenschmidt <benh@kernel.crashing.org>, 
	Paul Mackerras <paulus@samba.org>, linuxppc-dev@lists.ozlabs.org, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=FaSizBSw;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443
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

On Sun, Jul 21, 2019 at 11:19 PM Segher Boessenkool
<segher@kernel.crashing.org> wrote:
>
> On Sun, Jul 21, 2019 at 07:41:40PM -0700, Nathan Chancellor wrote:
> > Hi Segher,
> >
> > On Sun, Jul 21, 2019 at 01:01:50PM -0500, Segher Boessenkool wrote:
> > > On Sun, Jul 21, 2019 at 12:58:46AM -0700, Nathan Chancellor wrote:
> > > > 0000017c clear_user_page:
> > > >      17c: 94 21 ff f0                     stwu 1, -16(1)
> > > >      180: 38 80 00 80                     li 4, 128
> > > >      184: 38 63 ff e0                     addi 3, 3, -32
> > > >      188: 7c 89 03 a6                     mtctr 4
> > > >      18c: 38 81 00 0f                     addi 4, 1, 15
> > > >      190: 8c c3 00 20                     lbzu 6, 32(3)
> > > >      194: 98 c1 00 0f                     stb 6, 15(1)
> > > >      198: 7c 00 27 ec                     dcbz 0, 4
> > > >      19c: 42 00 ff f4                     bdnz .+65524
> > >
> > > Uh, yeah, well, I have no idea what clang tried here, but that won't
> > > work.  It's copying a byte from each target cache line to the stack,
> > > and then does clears the cache line containing that byte on the stack.
> > >
> > > I *guess* this is about "Z" and not about "%y", but you'll have to ask
> > > the clang people.
> > >
> > > Or it may be that they do not treat inline asm operands as lvalues
> > > properly?  That rings some bells.  Yeah that looks like it.
>
> The code is
>   __asm__ __volatile__ ("dcbz %y0" : : "Z"(*(u8 *)addr) : "memory");
>
> so yeah it looks like clang took that  *(u8 *)addr  as rvalue, and
> stored that in stack, and then used *that* as memory.

What's the %y modifier supposed to mean here?  addr is in the list of
inputs, so what's wrong with using it as an rvalue?

>
> Maybe clang simply does not not to treat "Z" the same as "m"?  (And "Y"
> and "Q" and "es" and a whole bunch of "w*", what about those?)

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DKRVsFkT8dLFoitky9OF8tKmbn00-OPi6kBygyx4QwHg%40mail.gmail.com.
