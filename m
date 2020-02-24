Return-Path: <clang-built-linux+bncBCIO53XE7YHBB35O2HZAKGQERSEHWUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x937.google.com (mail-ua1-x937.google.com [IPv6:2607:f8b0:4864:20::937])
	by mail.lfdr.de (Postfix) with ESMTPS id 2382516B4C4
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 00:08:33 +0100 (CET)
Received: by mail-ua1-x937.google.com with SMTP id 71sf1612150uae.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 24 Feb 2020 15:08:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582585712; cv=pass;
        d=google.com; s=arc-20160816;
        b=F+MvPL9tNsLDsP2dKJMYsCjALzxdoiv98CydUiS7EZ3XxbElKnegu0waskevjuHuQY
         xXeq1M7CwAKuG3knTvxsRkypvzCheCOJkXC7PZMJkyStyOqMTJ/vSAazH/FQ/lM31+u7
         WKSl2KhkWOH2jLqCjCyVmkw1W1iqsJlnNkyIOwC5Fs8Tpfw2y34yQpAUR7xvbZbef4mr
         77yEvZ5UTcJ03xzXdCodYBIf9UivKeIqBN93aWMOaoT1T1g2bBWdUTw6wjm8X9I/nDT/
         NzDY05grXGjX85Mizv6rs+I5RTcME4fRSWnox+uDuqKYrJtUQ/DEmhUc9ncAmlE9dcdO
         ROkg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:date:from:sender:dkim-signature;
        bh=QY8YKI9jZ13FcLppWtZ3Tn+S5GOGtcQs4mzqEQtJjzM=;
        b=sKrDOajzPQmwiOesJMipQUDAIMCr6puesLx5+6DA/T0JwpQQAR5CHnKFg5J6YX8sjj
         Yck3ZyS48W3BA0SVORjh6CnGW9NbXvybagJHWyDUdANaaWKAJNdKjzZSnB6lKAd/iI+R
         4hiyTfezq+rCEeLDCHDMLdAI7txdN5kzMJTHjHbghru3GdC+BocOW9zu5l+/p+OQiH83
         uXX/wMvuYECoIR7KWGf8qDnnSH25+m81GQsyqM9Z0Gg7IMV5vmS60QjHFnX/wbWDsk3F
         JlKZS1Dk0FAXPUrj13/8BanVJLxgUg5C9exgRyy4HCdvU8lpWlMUERiKRFzw6IX4dwCH
         KZTQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZJQfuOa4;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QY8YKI9jZ13FcLppWtZ3Tn+S5GOGtcQs4mzqEQtJjzM=;
        b=VQQDzcluodW6QIN/jEMaaycIngaQPLbIAggigY27veZoPL3le5iGks9FtXxQVsdVU3
         0jsIiNMEZmGaaEf+9xj1IdAjw3vn3OIfPhJ/BEwPDNKMsCYiEpfyq4lEU1eYuMwKM870
         TBNJAlyyaI6rKW/CcV8MOxAvL3tC2ExNjMi+Ukq1KVtfFfqB6lnc4QZrmtIdlEwW6g89
         ZqfHz2XRDhfOGfzGk0V4JjJGyYiQnBPz6lxP5w4k4TuPc7sk4Amd+TXS4qUqYi+VdMlR
         XnFv/XDt/LDksScU/U9JKw/L5yf8WEKN8E9BMtutfXmu/EbtQ/R1Qz47/zjUPhgJ+3Sz
         jQ/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=QY8YKI9jZ13FcLppWtZ3Tn+S5GOGtcQs4mzqEQtJjzM=;
        b=AoSZpG4ZbvcnlCQlYcaMDuRaEBlYzqFMyz82Vu6qtL6MZ0m9moat82FB7XxAZWWiQA
         82EZFWZnZxq9WBm/n/cQPmitp2SAXKiz3J6q9B8tS6afy+OB57IyeJeW1jFAcb/BJRIW
         HFcTwgHgxfb/MXYKvod3yv0dk2IA4v8BKf3urijF/uuNFrpmTDb4H+wofDB2MwNAG+4S
         q98+lG9NMSmw7QfzlubxSVVA5NuSFCwlV63NX+T65YWQoRb/UYCdiG7JiCOrWi6QGD4x
         ovJX+184yfOjOVVfXKo3TtQQ0OqeobXYDrGG9hb5uBzdkN77h8kFSwoFBO9ju9MM8t5m
         bQVg==
X-Gm-Message-State: APjAAAU1ONw9qDJ1PUNEt8GaTZkPO36F0zyOa50t2nEiCGHMRV2oAR0b
	nTdDoPCHDNRjbk3af0Z5tsk=
X-Google-Smtp-Source: APXvYqwlgJYZAIxZEZHWK97C89XyopgCev1A98+OnzBZ9etZL4bRmkQQT21QIsURAjWhcgZwoGoJLw==
X-Received: by 2002:a05:6102:310c:: with SMTP id e12mr28863514vsh.226.1582585712096;
        Mon, 24 Feb 2020 15:08:32 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f316:: with SMTP id p22ls1252014vsf.6.gmail; Mon, 24 Feb
 2020 15:08:31 -0800 (PST)
X-Received: by 2002:a67:b303:: with SMTP id a3mr29110502vsm.141.1582585711671;
        Mon, 24 Feb 2020 15:08:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582585711; cv=none;
        d=google.com; s=arc-20160816;
        b=Duan6qLX0zcrW1Ij+vRgQEPxXSRfl0fG7xo1FRipq/ac/5lFAJPksAh4nMDN4O+yRr
         EF47YNshOw/Z11vE7nNs41uwWlM1R9ojOFRb1sRww1Q2SJ63jKtlBYgdujYxoC3smd3G
         pgmoQg8UmdFGIAjgvxebGnWcVWqYbc13FLpyOo5TcIULvzIVMqLdTGxVCetnZv1gUsSh
         XNvLSfckV74MiuULHrXE4b7F/y1BiddihyNo/BV7anlSPlswxIy5WumvLa7bVyYQlHt9
         B/zMZecuMSteAqEEG+ctZH1dQue9L69EO7wl+YJQCSR0CMH0Sx798+MGKbC90QsBcniT
         lKuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:date:from:sender:dkim-signature;
        bh=K/3B2abZ2PBE11q9O8trcN53LJz/Y46vhRJiFNVlNjE=;
        b=H3W2WTTj2UVPblbD591T3ma33FT6nmzLpWtLnLKIwq8pI474xZs/h2aTWID1MRroXY
         1XjT3Z6M2YYdqxgudlK225QtIzi6gEg+E1mizO5fFUgcDV5Jxm2DJFSLKH9A7/F5Izsf
         5LsVP8/kjF5iORiw1KuhEJgjbnvzZu1D/6fcOyoJ0PbTYSOERG7v6bcb+FNonqWDk1eY
         iw3o60w9wO0cZmEOwYDolbpup7th+cN5aI7GvkNaKjZVDDpTBLMNjUVP2c9Xwaoj5itx
         TBwf+1k2+H7Kghe+zbKsBC0jCn6k/ozCV0Q9AkpQKmj3UQwFaIBOBPKqdePqRkJCEtf1
         EDLQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZJQfuOa4;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com. [2607:f8b0:4864:20::741])
        by gmr-mx.google.com with ESMTPS id w4si806499vse.2.2020.02.24.15.08.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Feb 2020 15:08:31 -0800 (PST)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) client-ip=2607:f8b0:4864:20::741;
Received: by mail-qk1-x741.google.com with SMTP id u124so10260958qkh.13
        for <clang-built-linux@googlegroups.com>; Mon, 24 Feb 2020 15:08:31 -0800 (PST)
X-Received: by 2002:a37:40d2:: with SMTP id n201mr53037062qka.211.1582585711270;
        Mon, 24 Feb 2020 15:08:31 -0800 (PST)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id z18sm2813397qki.8.2020.02.24.15.08.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Feb 2020 15:08:31 -0800 (PST)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Mon, 24 Feb 2020 18:08:29 -0500
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
Message-ID: <20200224230829.GA586317@rani.riverdale.lan>
References: <20200222074254.GB11284@zn.tnic>
 <20200222162225.GA3326744@rani.riverdale.lan>
 <CAKwvOdnvMS21s9gLp5nUpDAOu=c7-iWYuKTeFUq+PMhsJOKUgw@mail.gmail.com>
 <alpine.LSU.2.21.2002241319150.12812@wotan.suse.de>
 <CAKwvOd=nCAyXtng1N-fvNYa=-NGD0yu+Rm6io9F1gs0FieatwA@mail.gmail.com>
 <20200224212828.xvxl3mklpvlrdtiw@google.com>
 <20200224214845.GC409112@rani.riverdale.lan>
 <20200224221703.eqql5hrx4ccngwa5@google.com>
 <20200224224343.GA572699@rani.riverdale.lan>
 <20200224225059.2scjklfi4g7wwdkp@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200224225059.2scjklfi4g7wwdkp@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ZJQfuOa4;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::741
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

On Mon, Feb 24, 2020 at 02:50:59PM -0800, Fangrui Song wrote:
> On 2020-02-24, Arvind Sankar wrote:
> >On Mon, Feb 24, 2020 at 02:17:03PM -0800, Fangrui Song wrote:
> >> On 2020-02-24, Arvind Sankar wrote:
> >> >On Mon, Feb 24, 2020 at 01:28:28PM -0800, Fangrui Song wrote:
> >> >> Hi Michael, please see my other reply on this thread: https://lkml.org/lkml/2020/2/24/47
> >> >>
> >> >> Synthesized sections can be matched as well. For example, SECTIONS { .pltfoo : { *(.plt) }} can rename the output section .plt to .pltfoo
> >> >> It seems that in GNU ld, the synthesized section is associated with the
> >> >> original object file, so it can be written as:
> >> >>
> >> >>    SECTIONS { .pltfoo : { a.o(.plt) }}
> >> >>
> >> >> In lld, you need a wildcard to match the synthesized section *(.plt)
> >> >>
> >> >> .rela.dyn is another example.
> >> >>
> >> >
> >> >With the BFD toolchain, file matching doesn't actually seem to work at
> >> >least for .rela.dyn. I've tried playing around with it in the past and
> >> >if you try to use file-matching to capture relocations from a particular
> >> >input file, it just doesn't work sensibly.
> >>
> >> I think most things are working in GNU ld...
> >>
> >> /* a.x */
> >> SECTIONS {
> >>    .rela.pltfoo : { a.o(.rela.plt) }  /* *(.rela.plt) with lld */
> >>    .rela.dynfoo : { a.o(.rela.data) } /* *(.rela.dyn) with lld */
> >> }
> >
> >The file matching doesn't do anything sensible. If you split your .data
> >section out into b.s, and update the linker script so it filters for
> >b.o(.rela.data), .rela.dynfoo doesn't get created, instead the default
> >.rela.dyn will contains the .data section relocation. If you keep the
> >filter as a.o(.rela.data), you get .rela.dynfoo, even though a.o doesn't
> >actually contain any .rela.data section any more.
> 
> I raised the examples to support my viewpoint "synthesized sections can
> be matched, as well as input sections."
> 
> If there is really a need (rare, not recommended) to rename output
> sections only consisting of synthesized sections (e.g. .plt .rela.dyn),
> for linker portability, it is better using a wildcard for the input
> filename pattern.

Yep, you have to use * for the filename. My comment was only addressing
the fact that this part isn't accurate:

> >> >> It seems that in GNU ld, the synthesized section is associated with the
> >> >> original object file, so it can be written as:

I can't make head or tail of how GNU ld decides what file to associate
with the synthesized sections.

Also, even section name matching doesn't work with all synthesized
sections -- it's not possible to match .strtab or .shstrtab with GNU ld
in order to rename them, in addition to not being able to discard them,
while that does work with LLD.

> 
> As another example, SECTIONS { /DISCARD/ : { *(.rela.*) } } discards synthesized .rela.*
> 
> >>
> >> % cat <<e > a.s
> >>   .globl foo
> >>   foo:
> >>     call bar
> >>   .data
> >>   .quad quz
> >> e
> >> % as a.s -o a.o
> >> % ld.bfd -T a.x a.o -shared -o a.so

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200224230829.GA586317%40rani.riverdale.lan.
