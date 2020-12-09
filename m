Return-Path: <clang-built-linux+bncBAABBQ5NYL7AKGQEXZEMEAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x840.google.com (mail-qt1-x840.google.com [IPv6:2607:f8b0:4864:20::840])
	by mail.lfdr.de (Postfix) with ESMTPS id B43102D3E5D
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Dec 2020 10:20:04 +0100 (CET)
Received: by mail-qt1-x840.google.com with SMTP id n95sf766856qte.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Dec 2020 01:20:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607505603; cv=pass;
        d=google.com; s=arc-20160816;
        b=pxfJ6ZQK+nOohTQGtd9AaMhRJN0i7APOlwQFlrodX7ynLQ7Fl3AO+lMxRcDfbXxPYm
         e7A0lVRl/2N05e0wvJ95Dgkg/HvtQ7vnu4I+tC3o/cHIMtnDPCs7M1O5awT60/1nC+ya
         l3q3hJjGoNcIxcSfU7ZcL46gYBBFAL5P3P03fY6pCy/xIJXySepJOENvPDiNzK/8H7nu
         xAgqrH1PeXIryBX5AkyE1djAB8CJb4kJX/t0dri7I4jX+9xuaQJMZm9j0sE6KQysBwRs
         8tJpcChiFJ4OIdKN50avJrMhJXhWSYuEcBeWlkF54HIpn9Ar91APZhvYQ7wM50nQBId6
         p8dw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=oxWpLkTSkKSAxNkpih13Uot/j7EILUWjtsoWbzjk/O4=;
        b=yzYJHWr2m0cgYDxCvD+ecUrZcEPbtlQ0kPHn6+YCw7wQD34jTGXZvy3d4cXISQiawp
         G8ane6fiyADtRlWyx1+QbZK/TMJe5gC4S84CxocEmGxPhdJsChUbS8iH+Wv+pocdNCwr
         Q6VafY35CTyVqCG2gjlpAm14trCZ2REZIoG6g5DxhMWxwDqsXNIbFIwBqydnQT7A6HQD
         nOWEi3uD/DFuWe7ykRg48NGuJqCTho1WcuH3+IMiY9Ft7ZJcq7DTdNqABTv3zLTN13+t
         9qhqw3HmG5MRPIPNKZaKOGYJJkj+6Yk6e9fenNYKMpFb7GTg/aYdI6AWndBAvMBXDDMS
         mjng==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=mz1eKySb;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oxWpLkTSkKSAxNkpih13Uot/j7EILUWjtsoWbzjk/O4=;
        b=AowVT+aHbeTeJy5erNVKhjZ1/Z9lvtZSb0v0j+OxewxL5rEPrm8T8AQ9eCzyY2fqax
         wqW+akA2dyvfmFo/slOlMxIHpSqc7PZKaNvv82Wo47LBuqAMMy6Yfnipf4a4SnLIkKQv
         34DtPKw++1WpfU8EV6dEFvlHfeTTxau5SIvBAlj5a5c6ulnmPTHN+WaBgbaYOqefqhdd
         BXOP1bUwVC7pek4/oJbYjKr2KSTDOPgUH0xO5YOM+CmaKQ+TgwRmZtpMnwRBI6MP6hq0
         erHJpnQTdf0pOfFvRGI3E2ljXZxjX4k0kvAVDs96vnlsl0tUtljFSmRUpIOug5RURlxq
         DftQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oxWpLkTSkKSAxNkpih13Uot/j7EILUWjtsoWbzjk/O4=;
        b=oub/mvIqoios9jlH6aQObdIWi//i/gXzyaziP4T1R/SIMs6O8bNKaklLjcz7QF7+AJ
         CgSp2zLi+kvfTpGCCHZNmwHa1t8HntaPzTdioPh7Zk4mEM61keu6kb9savge+U56Xi7f
         mZnj3MZvcRAIYtHy0XOAN4xS7cQC+l6Lk4pSxiBAG3ZBjmNI6sz9+2wNaZrE8yw0drMS
         OrMg5hPwlzgDK7kvvHw7t3a0Ja6WuxeCs39Z6BEXdTfcNvOGl3vEupf9MbzQowzlRP2A
         hiCZdKSoN588sCuEvGjD3DtmOB0AJCbyT5vYOEDbpwH12+VNODl3ksXk6Srvz4wAJLIY
         VEwg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5332g4dQiJtHoXFgPoIgWPYWO8+6U5zJzi4XYJCm+mKcKyFs/Rme
	QXVMuLFJdLVVCQJTTiiEOHw=
X-Google-Smtp-Source: ABdhPJxKihtNjD2QhpzYJXCo2ELrK9E3y2nPjz0IIaNJdVXOQu93A+xt/+0DV1BIZpbwQkxRo0m4jg==
X-Received: by 2002:a37:a7d0:: with SMTP id q199mr1878776qke.217.1607505603685;
        Wed, 09 Dec 2020 01:20:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:4149:: with SMTP id e9ls428394qtm.5.gmail; Wed, 09 Dec
 2020 01:20:03 -0800 (PST)
X-Received: by 2002:ac8:5750:: with SMTP id 16mr1993117qtx.305.1607505603353;
        Wed, 09 Dec 2020 01:20:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607505603; cv=none;
        d=google.com; s=arc-20160816;
        b=EfsuRAbRTvi5EChuM74jgj0kITm6Jsx8b3hwiCywiZcv7zNn0zI7E2dIwPWkRxMe9I
         ilaS8gQyDlt56u/oTRWMYun719qGsdL7dZrp3zKq+UhwIpj/s8gFYcnUKHwCXEQvK3qL
         MyQGJJcQxtY1rmLwzONUMMgVYBCbVEzKi9hFZdscPRiZWIL3UdwCR2hHmrTjNZoI4/4T
         j8EFdvp047nSQDZ6ardhzMQm2pLTSBf1fwYSYB9E6e+aJ4xl+kgDNPylRM+xQM864BFk
         gYVXsc1yj41UP6VrhbIA4BOMdP2cNg0MyGoAUP13r6SQDgjybV1c/dl5gBkVTDlJ6BDa
         3VTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=86xfmvFvYqlrPjwRFmrWx8NgV1Rx7ELcbSDrfs5hYFk=;
        b=HUwmhN9aCtjzVHfU5szHt3ZpiUCTQxe+KRtB5bcWe8bTIrtkz39iu1uPw/sA8ocoI1
         OTFZqawtqaP1b7W+Y2rzM1764tDlh8f9+P1S2abngt4WTQ4mTTYBQb/KS7zz1vRwXYqd
         0ZR7YmpW1SajkOeVXWcM3fDTMv5sBsfJZaoGEa8D5CVh0vn/yAW90ty7lj/HyEs4my3W
         S9676/uwkwV5LpO0/fAYAJqpDWGYU4DVlI12wutrw8UBH7qohBUPy70VMdlw0xLLK8iA
         5bE5WnoEb9yOEhsIAoIm1hIvDQ7E9Wqo4w6oUD8dcFU8IEsEqC7KW8104rWMEk47cvw7
         HPvw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=mz1eKySb;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n18si70015qkk.7.2020.12.09.01.20.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 09 Dec 2020 01:20:03 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
X-Received: by 2002:aca:44d:: with SMTP id 74mr1104225oie.4.1607505601280;
 Wed, 09 Dec 2020 01:20:01 -0800 (PST)
MIME-Version: 1.0
References: <20201201213707.541432-1-samitolvanen@google.com>
 <CAK8P3a1WEAo2SEgKUEs3SB7n7QeeHa0=cx_nO==rDK0jjDArow@mail.gmail.com>
 <CABCJKueCHo2RYfx_A21m+=d1gQLR9QsOOxCsHFeicCqyHkb-Kg@mail.gmail.com> <20201209045554.fxlzrmxknakl2gdr@google.com>
In-Reply-To: <20201209045554.fxlzrmxknakl2gdr@google.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Wed, 9 Dec 2020 10:19:44 +0100
X-Gmail-Original-Message-ID: <CAK8P3a1p8yKMKXB1cUpy-5PjehJGPX0SPNEx4VsMmqgOeR6fZg@mail.gmail.com>
Message-ID: <CAK8P3a1p8yKMKXB1cUpy-5PjehJGPX0SPNEx4VsMmqgOeR6fZg@mail.gmail.com>
Subject: Re: [PATCH v8 00/16] Add support for Clang LTO
To: Fangrui Song <maskray@google.com>
Cc: Sami Tolvanen <samitolvanen@google.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Steven Rostedt <rostedt@goodmis.org>, Will Deacon <will@kernel.org>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, linux-pci <linux-pci@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=mz1eKySb;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Wed, Dec 9, 2020 at 5:56 AM 'Fangrui Song' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
> On 2020-12-08, 'Sami Tolvanen' via Clang Built Linux wrote:
> >On Tue, Dec 8, 2020 at 4:15 AM Arnd Bergmann <arnd@kernel.org> wrote:
> >> So far I have
> >> not managed to get a working build out of it, the main problem so far being
> >> that it is really slow to build because the link stage only uses one CPU.
> >> These are the other issues I've seen so far:
>
> ld.lld ThinLTO uses the number of (physical cores enabled by affinity) by default.

Ah, I see.  Do you know if it's also possible to do something like
-flto=jobserver
to integrate better with the kernel build system?

I tend to run multiple builds under a top-level makefile with 'make
-j30' in order
to use 30 of the 32 threads and leave the scheduling to jobserver instead of
the kernel. If the linker itself is multithreaded but the jobserver
thinks it is a
single thread, could end up with 30 concurrent linkers each trying to use
16 cores.

> >> - CONFIG_CPU_BIG_ENDIAN doesn't seem to work with lld, and LTO
> >>   doesn't work with ld.bfd.
> >>   I've added a CPU_LITTLE_ENDIAN dependency to
> >>   ARCH_SUPPORTS_LTO_CLANG{,THIN}
> >
> >Ah, good point. I'll fix this in v9.
>
> Full/Thin LTO should work with GNU ld and gold with LLVMgold.so built from
> llvm-project (https://llvm.org/docs/GoldPlugin.html ). You'll need to make sure
> that LLVMgold.so is newer than clang. (Newer clang may introduce bitcode
> attributes which are unrecognizable by older LLVMgold.so/ld.lld)

The current patch series requires LLD:

config HAS_LTO_CLANG
       def_bool y
       depends on CC_IS_CLANG && CLANG_VERSION >= 110000 && LD_IS_LLD

Is this something we should change then, or try to keep it simple with the
current approach, leaving LTO disabled for big-endian builds and hosts without
a working lld?

       Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a1p8yKMKXB1cUpy-5PjehJGPX0SPNEx4VsMmqgOeR6fZg%40mail.gmail.com.
