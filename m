Return-Path: <clang-built-linux+bncBCS6NPVSS4JBBJE5Q3XQKGQEWA4XTWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33f.google.com (mail-wm1-x33f.google.com [IPv6:2a00:1450:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E52A10DAF7
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 Nov 2019 22:33:25 +0100 (CET)
Received: by mail-wm1-x33f.google.com with SMTP id y133sf4623793wmd.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 Nov 2019 13:33:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575063204; cv=pass;
        d=google.com; s=arc-20160816;
        b=YBNp10w0E9ZnfsT0e0aEtfsBNgYteSpjx7e5xh7vHg2Ol3Mqa/U0wh2ugcumpXQgpm
         EO1iGebMxc7PcyuNEyo2gEt9HrZMK5viqNWaoynWCuviZ90yThTYdgZgxlHIUA0EC4dX
         drHMWqlTS+R9VjKSgE4VU90aFCKUGKPSI/KU/9akKIBaBPsdqWMofA7oaLR8/NcNM+nf
         hZgzt/kEXbOApkxA0qwA9GiQngXBJA6k8JuUWLQt7ZddKm7zicy3QO4gs8A25OwG4RJA
         m6msgI8IW30YIqzYgY9Je2inLWPWe05CBY/pCJNF/CJOpvgL5iU6W7jJ4wjD06kWOvD1
         QEkg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :message-id:in-reply-to:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=qVoj+StZniX3X9Ex2FzOqkxlcgRTYmTZd4jHuyraVAU=;
        b=L3lgohWI3eNyzovOrV6DxEUcWv2pRJutz+Qxm4ds7DExbxRINoBFmMuPkx9fuZQrd6
         N4bcqEOxwR1cw4/iGrqB/sNkk8vYnrgtyiJUiOY6B0bXFH6G3gdlEBZQw0bENcxFJ/9x
         VJPyoddoBVqGQaYeZPugTjMbJYHgoRC+wYlcMcGL6qkBURJw0pDnciqxV2RtiZ1ybJ4i
         cXSxeZIJqPKwT1ia0+pBtXH40HvBJ8dWg823Mg3I2AT0035V7+YiiZXsCde/guKPSYhF
         FB9SKveEzUtr69545hdtOtvOZDGqb0VHD8gt1vwuamfZ7AsqNclewMT57dQ3fPWqOc3x
         oCpg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@pobox.com header.s=sasl header.b=fJLIScTj;
       dkim=temperror (no key for signature) header.i=@fluxnic.net header.s=2016-12.pbsmtp header.b=pZw+3rec;
       spf=pass (google.com: domain of nico@fluxnic.net designates 173.228.157.52 as permitted sender) smtp.mailfrom=nico@fluxnic.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qVoj+StZniX3X9Ex2FzOqkxlcgRTYmTZd4jHuyraVAU=;
        b=aLA+U0EQcH4z3Mw3+Bcuigid6yiQG9KTyKZoD+ls9BJ+R0WiHexi2WcQTdesuw73yK
         p7aC/dUjkCkaT+zFvvzoj0oWozH5/efHk4+RKBRSdGhFEBz1REIxF4Pi0XH2qcSaEn+3
         A6LFHqph7yfU/7XM26/xrK0mDsQmCBINKnsRRkSIjPw1IxK1Ky5uC/lEZ9DJxe4TJD+S
         DE0PBK1gWVVoutngflp0JF1Dj2NGvQLmqoj2dU/Z8FyhG1apqA8iQXWthcqBvzFKM4Zu
         OwDOUkd/mo6JBc/GevTUFHMyWVKRgiwHsbPhs9oo5gDPnk3/GYjDg5y2HfUG5SPJ3N3j
         c9rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qVoj+StZniX3X9Ex2FzOqkxlcgRTYmTZd4jHuyraVAU=;
        b=Fday05CG9VY72m2Sw2v2/5EIdxNrsI8geNXT7da+QF9ED2KH6nAm4RqgBWZcX9vy4E
         lKuWpqG6sVgvAhV9HyiWNoJ7cbbOYsCnlPG+5yOh2PvJVTvCT4IA2zRHVNGjmuJLz7K7
         5cJNy9TkKDep/pYjq+mmXuTcyOaISrXhhawYsVqOG7yQadoCp9Ji+6Bm6spZfBWYdmmq
         l2o3708MpUyCFR5gl5IT3piBfirc/bh4o74kGWgM3UJTOTxqr3gvMcZHY0RGqo0guRA6
         Ai6dSiuWXszKMWtu6RlO5N4///lmwRt5o0TNGB5YuA7ZlmEN9nI+geKuQwWsKcN6ublX
         mjFA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWAg/8aXV8VSr8JUDoyjZO3OcbByCOdS96c3606uRv5ephgxvQ2
	3LqXejLKyXRixb6MhFKiiAk=
X-Google-Smtp-Source: APXvYqwnmAlqkhvU3h2GoQZ1f/xri8HsOKo6o4tKmNxVMtwUrOcQ7K04nCrLOAfdmIfFlzdvmP7ykg==
X-Received: by 2002:adf:806e:: with SMTP id 101mr4999559wrk.300.1575063204561;
        Fri, 29 Nov 2019 13:33:24 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:fc89:: with SMTP id g9ls3556571wrr.5.gmail; Fri, 29 Nov
 2019 13:33:23 -0800 (PST)
X-Received: by 2002:adf:f885:: with SMTP id u5mr6415104wrp.359.1575063203938;
        Fri, 29 Nov 2019 13:33:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575063203; cv=none;
        d=google.com; s=arc-20160816;
        b=pn+/Th9qngMFLXBN6eE6n17RZ7bKE58Taurh9I5u9CVxoB+wJhbx0kpDIMsAXbMZ0t
         1GyyVs+4GMOiYibiJuOwencq70PcwUUQ3FqSLFO3pk+W3MVp5/c9vVvD3VN+vy5HkPPJ
         HUscOkqWH0r3QiZ2E/fhlqz73hyOgI+cW/OQeu+Ci712MMaFNsaZD6fDv3iTxkTuRSgs
         karJF7GoOdczGl2ZkIQHfyrDz/+ieyP+zYbL4EGjchRtocCpHrTvKc5lMBTnk+ZUAyGv
         CGJOxtEJj0ZS18bFHdO1LI+n6UKw0lqEk3CJktIxLUUO6Sc15aGuloQv3JTeIWP1RZuj
         m7gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:dkim-signature:dkim-signature;
        bh=8aaF5zej6tJ/kT+FcYywJ/FW8GABcIsWhNT/LEpiUsE=;
        b=F/Vxa+Mnwry2PqTN/gyNoOUzAKGfs4Bs8Wgjkqi0qNnmUhXNMyAFaIhOgN9wVQ+zHD
         2wHUBI7w6rj8t5s55fS2CPJXvGtvM5eD+X75mI+7w4zxbvfLFFLS7op3IbJEZvERl+xy
         sAGSGBGKsIIaFoW1mrv4Hr1ItYLV4pvXEJ5msJomCDoc4h/pv3o2LV6hLu2rqgyjMKSI
         lGVDAlDXhaeMbw/oJtiu6knrIfIQhzqR0im4ofpGSmHZghf/IIHUjBhLiFWUtbZRzKIt
         5d6mj7OqpOJc4f8hLxqlvl5zNZQEeoxn4bDLwdjYsis9Cj+NOCYFkWmToc5Dv/y5c4Ae
         OZ1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pobox.com header.s=sasl header.b=fJLIScTj;
       dkim=temperror (no key for signature) header.i=@fluxnic.net header.s=2016-12.pbsmtp header.b=pZw+3rec;
       spf=pass (google.com: domain of nico@fluxnic.net designates 173.228.157.52 as permitted sender) smtp.mailfrom=nico@fluxnic.net
Received: from pb-smtp20.pobox.com (pb-smtp20.pobox.com. [173.228.157.52])
        by gmr-mx.google.com with ESMTPS id i1si980329wra.4.2019.11.29.13.33.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Nov 2019 13:33:23 -0800 (PST)
Received-SPF: pass (google.com: domain of nico@fluxnic.net designates 173.228.157.52 as permitted sender) client-ip=173.228.157.52;
Received: from pb-smtp20.pobox.com (unknown [127.0.0.1])
	by pb-smtp20.pobox.com (Postfix) with ESMTP id E7AA594B11;
	Fri, 29 Nov 2019 16:33:21 -0500 (EST)
	(envelope-from nico@fluxnic.net)
Received: from pb-smtp20.sea.icgroup.com (unknown [127.0.0.1])
	by pb-smtp20.pobox.com (Postfix) with ESMTP id CD3B694B10;
	Fri, 29 Nov 2019 16:33:21 -0500 (EST)
	(envelope-from nico@fluxnic.net)
Received: from yoda.home (unknown [24.203.50.76])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by pb-smtp20.pobox.com (Postfix) with ESMTPSA id C152294B0F;
	Fri, 29 Nov 2019 16:33:18 -0500 (EST)
	(envelope-from nico@fluxnic.net)
Received: from xanadu.home (xanadu.home [192.168.2.2])
	by yoda.home (Postfix) with ESMTPSA id E396D2DA01D7;
	Fri, 29 Nov 2019 16:33:16 -0500 (EST)
Date: Fri, 29 Nov 2019 16:33:16 -0500 (EST)
From: Nicolas Pitre <nico@fluxnic.net>
To: Nick Desaulniers <ndesaulniers@google.com>
cc: Russell King - ARM Linux <linux@armlinux.org.uk>, 
    clang-built-linux@googlegroups.com, manojgupta@google.com, 
    natechancellor@gmail.com, Kees Cook <keescook@chromium.org>, 
    stable@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
    linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm: explicitly place .fixup in .text
In-Reply-To: <20191122185522.20582-1-ndesaulniers@google.com>
Message-ID: <nycvar.YSQ.7.76.1911291614480.8537@knanqh.ubzr>
References: <20191122185522.20582-1-ndesaulniers@google.com>
User-Agent: Alpine 2.21 (LFD 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Pobox-Relay-ID: DC23B8F4-12EF-11EA-9534-B0405B776F7B-78420484!pb-smtp20.pobox.com
X-Original-Sender: nico@fluxnic.net
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@pobox.com header.s=sasl header.b=fJLIScTj;       dkim=temperror (no
 key for signature) header.i=@fluxnic.net header.s=2016-12.pbsmtp
 header.b=pZw+3rec;       spf=pass (google.com: domain of nico@fluxnic.net
 designates 173.228.157.52 as permitted sender) smtp.mailfrom=nico@fluxnic.net
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

On Fri, 22 Nov 2019, Nick Desaulniers wrote:

> From: Kees Cook <keescook@chromium.org>
> 
> There's an implicit dependency on the section ordering of the orphaned
> section .fixup that can break arm_copy_from_user if the linker places
> the .fixup section before the .text section. Since .fixup is not
> explicitly placed in the existing ARM linker scripts, the linker is free
> to order it anywhere with respect to the rest of the sections.
> 
> Multiple users from different distros (Raspbian, CrOS) reported kernel
> panics executing seccomp() syscall with Linux kernels linked with LLD.
> 
> Documentation/x86/exception-tables.rst alludes to the ordering
> dependency. The relevant quote:
> 
> ```
> NOTE:
> Due to the way that the exception table is built and needs to be ordered,
> only use exceptions for code in the .text section.  Any other section
> will cause the exception table to not be sorted correctly, and the
> exceptions will fail.
> 
> Things changed when 64-bit support was added to x86 Linux. Rather than
> double the size of the exception table by expanding the two entries
> from 32-bits to 64 bits, a clever trick was used to store addresses
> as relative offsets from the table itself. The assembly code changed
> from::
> 
>     .long 1b,3b
>   to:
>           .long (from) - .
>           .long (to) - .
> 
> and the C-code that uses these values converts back to absolute addresses
> like this::
> 
>         ex_insn_addr(const struct exception_table_entry *x)
>         {
>                 return (unsigned long)&x->insn + x->insn;
>         }
> ```
> 
> Since the addresses stored in the __ex_table are RELATIVE offsets and
> not ABSOLUTE addresses, ordering the fixup anywhere that's not
> immediately preceding .text causes the relative offset of the faulting
> instruction to be wrong, causing the wrong (or no) address of the fixup
> handler to looked up in __ex_table.

This explanation makes no sense.

The above is valid only when ARCH_HAS_RELATIVE_EXTABLE is defined. On 
ARM32 it is not, nor would it make sense to be.


Nicolas

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/nycvar.YSQ.7.76.1911291614480.8537%40knanqh.ubzr.
