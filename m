Return-Path: <clang-built-linux+bncBCIO53XE7YHBBJND2HZAKGQESK6D3GI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id 752E616B46A
	for <lists+clang-built-linux@lfdr.de>; Mon, 24 Feb 2020 23:43:50 +0100 (CET)
Received: by mail-pj1-x103b.google.com with SMTP id w4sf629183pjt.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 24 Feb 2020 14:43:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582584229; cv=pass;
        d=google.com; s=arc-20160816;
        b=YL40zQirntU7QC7e5Qf9OMwki73iC2uZX3p3iyGv6HggPHGD4GuSZu3i7c4yj1/O4E
         CCykFlUlVICZf+MhLqh8Vnb87x8NRraNb56UnBraSlLZAZ8xmGTQ6j3sQ6/brSg8RPtj
         GhdDCSkcWwsjKIBWrjUZxNwTeaynrigK5XA2EeSITfsOz+VKGftXQIG0T34HQrK3LlSe
         d+VwQN3W7vCOLDx2rl0UnX/qgORjBHL4g/cKqkL1wJFFel+hkRQ7LDIeZ5/LYepLJWdr
         EY+gPvPijWmRHshQTAupZdxZ9HtuVLxOt/ZIFcX1okCpouBrFTVq10a55zkJpM721CsQ
         DSqg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:date:from:sender:dkim-signature;
        bh=AH925rtJ2Kk6QVHlepDjmxH5VJ581bu9jnxg7ItUBGA=;
        b=SZm9W+yIg90vB17v6yluju2hMMrPyXHKfAWNIQBQkmeUwJ2WRwjrq5eeeUtK+TvPUN
         FTcuw0JlqkOFija25rppt4wf8me4H6zn4ONzGjlKVTfmoAczsnHDvPDYjonjQRjePEHW
         ZnQ144W8VEgnRytNW8bRZkaaSfspDpyt3vuRCAKA7SBP9xt+3uLTTQgnuY9SRMpg0DoC
         mK/RNEBugdO+bMsYctpSrEnEzQ9nw/2jI6+JjXHg+H7Xf89ZCWGD1vi47PmZTNtVX8FC
         fpxDb6faviPG8tMO/yy7v206P85EM1ebV1ohx8AeA8/bwQUr5mzxNqK2v3K4EqJ0yL6N
         VttA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=U5wcAY78;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AH925rtJ2Kk6QVHlepDjmxH5VJ581bu9jnxg7ItUBGA=;
        b=a0dCZSYIFlgiiPgwVffl1CMNdZ+PJG5EW3l8C7QYFeBF0w6YEfWIpUpTdr28JWCykJ
         C7PqzZujSfDveNLl4PJbDfEzaiIUjdQh+F7y3tny+NMSFUuJZeEu/SwA7+z6FGMto2O+
         RjtugUdvApEx6GRQaoAgLN6mIQvF7JgzcbTqiHeq5pDdwrR9Nl8JUTW+ft4fr4Xe8DIK
         CrDzfXAj39lVOBckZ5gfANm3dFJaekV0pzDLiXxSAbYp9ZnVJP/80BI0v6VtyXHvfRab
         ejaPEnbcRC8XB4zxM1M0ubJKZcRgFvoa27XYmdcUnJRIiRvMKs05zS5pV/e6qr9dZnib
         3YkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=AH925rtJ2Kk6QVHlepDjmxH5VJ581bu9jnxg7ItUBGA=;
        b=loekfdyGKLgbMtmCL0keUcd4IkV5G1DqyE/7DQmXsuGcKEXl0GJ/FymgJ9isDQRIli
         n2P4q7gzaYpS529FQWbEuEQSI4Q61VP3Bjtxj8QXiGlChjacd3GhIPgWKZO/3Rw3X3Yh
         9rX875Jrnf8Xx8zuLSXxERsPNZB3YtQZjezYeM6ZPG+xF/qLbw1LS/yQHXcA4MDXysUK
         EAW1PLNTxHdQ1vnl5MmNHzsUM8usr1LLFOYXyCuJOOBrA5m9lv2xiG0W5NIiGYWeg/ah
         CFCPKjSen31cQLjXfkBCLCRkQSSlvGQ92oZnFyAWYNwsM3APT1ZT4TTvmjvQW2h/l8kz
         nwmw==
X-Gm-Message-State: APjAAAUVJa2W/L0mk3J8Npc5QauQnC+32XhkxzD8lym/GvP+Rt8e2yNd
	zxGsugA0S+wY1lILE9wV1sA=
X-Google-Smtp-Source: APXvYqyMfYxnsZVWjEdYIbOEH8mIbLDGM0yjPKtUeRt5QFFVCnGNKcLP7csZw5SQo3bPdDh8SAwgvg==
X-Received: by 2002:a17:902:8bc9:: with SMTP id r9mr50762515plo.48.1582584229120;
        Mon, 24 Feb 2020 14:43:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:2a1:: with SMTP id q1ls3530667pfs.9.gmail; Mon, 24
 Feb 2020 14:43:47 -0800 (PST)
X-Received: by 2002:a63:1e5e:: with SMTP id p30mr58718149pgm.112.1582584227241;
        Mon, 24 Feb 2020 14:43:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582584227; cv=none;
        d=google.com; s=arc-20160816;
        b=gp0xIQ2V/VcMDgRk2DtJm1tzv7VtrYdRe5s+yF4hl82eDUnAfyLGOw+c7z3ltxfW6E
         BThKN6k4ZSzy6DEYNfNf1AkPG+vV98GzaEfJN0Vd/c27mafMnVuD1UDJliaxLff0bcyD
         lGgCTXiEqCL61siD9o0xhVL3JEn943osto/KgrLlqfB670VjPwZ8YVjCsQ+XfQYPVnJM
         OYyB+PbRxVQjV/2ekaBjz95tibbw/89ptsfIN5Q/KU7ijgjZxobx4E4G8KhzlFs8U/ME
         P9iquCra5MHhCrE4rtotXSDuGz2jbAir6D/wCykvNATx0HgrDkNPxWbDUOvcbumeYw4w
         DIqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:date:from:sender:dkim-signature;
        bh=2fqwSDzA0qJPpkXoUfayaMO91DSowAScYmB2Y++l/a8=;
        b=E3rn8TBAxeM0OqW2f4HpVhPyuukQy4H875SOEd4woJoFuh54DDInm1cI5EUYndE29m
         Mn2Z5A+lJMW+oYwhe6EDnhYsM2vDGcF/xj/USNt7KaRW4xn874kgpnTAFU9cl4riGpig
         x7RRHlp+HXTzFVkaYic0TjfwdwanRj+uAK4Y/uYwj+FAbdLllsjjOweLAKTgPcT2AoqL
         aQXtMv4aJe45GXCq87wQfJklcClbwCwK2sAn7K5VI4wPNXB9/6OgcDNXxlNkUMtDXU+X
         4SiDIxgWX9aRCoDV3nO2YLkLi2JQ5ivKFzso3TaSbZ5xDEeHdRD/5xFU5yVzaBo44SWp
         /GIw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=U5wcAY78;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com. [2607:f8b0:4864:20::841])
        by gmr-mx.google.com with ESMTPS id y13si786546plp.0.2020.02.24.14.43.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Feb 2020 14:43:47 -0800 (PST)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) client-ip=2607:f8b0:4864:20::841;
Received: by mail-qt1-x841.google.com with SMTP id v25so7738273qto.7
        for <clang-built-linux@googlegroups.com>; Mon, 24 Feb 2020 14:43:47 -0800 (PST)
X-Received: by 2002:ac8:1b59:: with SMTP id p25mr51970654qtk.336.1582584226324;
        Mon, 24 Feb 2020 14:43:46 -0800 (PST)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id g17sm6599084qtq.29.2020.02.24.14.43.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Feb 2020 14:43:45 -0800 (PST)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Mon, 24 Feb 2020 17:43:44 -0500
To: Fangrui Song <maskray@google.com>
Cc: Arvind Sankar <nivedita@alum.mit.edu>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Michael Matz <matz@suse.de>, Borislav Petkov <bp@alien8.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH 2/2] x86/boot/compressed: Remove unnecessary sections
 from bzImage
Message-ID: <20200224224343.GA572699@rani.riverdale.lan>
References: <20200222070218.GA27571@ubuntu-m2-xlarge-x86>
 <20200222072144.asqaxlv364s6ezbv@google.com>
 <20200222074254.GB11284@zn.tnic>
 <20200222162225.GA3326744@rani.riverdale.lan>
 <CAKwvOdnvMS21s9gLp5nUpDAOu=c7-iWYuKTeFUq+PMhsJOKUgw@mail.gmail.com>
 <alpine.LSU.2.21.2002241319150.12812@wotan.suse.de>
 <CAKwvOd=nCAyXtng1N-fvNYa=-NGD0yu+Rm6io9F1gs0FieatwA@mail.gmail.com>
 <20200224212828.xvxl3mklpvlrdtiw@google.com>
 <20200224214845.GC409112@rani.riverdale.lan>
 <20200224221703.eqql5hrx4ccngwa5@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200224221703.eqql5hrx4ccngwa5@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=U5wcAY78;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::841
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Mon, Feb 24, 2020 at 02:17:03PM -0800, Fangrui Song wrote:
> On 2020-02-24, Arvind Sankar wrote:
> >On Mon, Feb 24, 2020 at 01:28:28PM -0800, Fangrui Song wrote:
> >> Hi Michael, please see my other reply on this thread: https://lkml.org/lkml/2020/2/24/47
> >>
> >> Synthesized sections can be matched as well. For example, SECTIONS { .pltfoo : { *(.plt) }} can rename the output section .plt to .pltfoo
> >> It seems that in GNU ld, the synthesized section is associated with the
> >> original object file, so it can be written as:
> >>
> >>    SECTIONS { .pltfoo : { a.o(.plt) }}
> >>
> >> In lld, you need a wildcard to match the synthesized section *(.plt)
> >>
> >> .rela.dyn is another example.
> >>
> >
> >With the BFD toolchain, file matching doesn't actually seem to work at
> >least for .rela.dyn. I've tried playing around with it in the past and
> >if you try to use file-matching to capture relocations from a particular
> >input file, it just doesn't work sensibly.
> 
> I think most things are working in GNU ld...
> 
> /* a.x */
> SECTIONS {
>    .rela.pltfoo : { a.o(.rela.plt) }  /* *(.rela.plt) with lld */
>    .rela.dynfoo : { a.o(.rela.data) } /* *(.rela.dyn) with lld */
> }

The file matching doesn't do anything sensible. If you split your .data
section out into b.s, and update the linker script so it filters for
b.o(.rela.data), .rela.dynfoo doesn't get created, instead the default
.rela.dyn will contains the .data section relocation. If you keep the
filter as a.o(.rela.data), you get .rela.dynfoo, even though a.o doesn't
actually contain any .rela.data section any more.

> 
> % cat <<e > a.s
>   .globl foo
>   foo:
>     call bar
>   .data
>   .quad quz
> e
> % as a.s -o a.o
> % ld.bfd -T a.x a.o -shared -o a.so

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200224224343.GA572699%40rani.riverdale.lan.
