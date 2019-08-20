Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBHPP6DVAKGQEBIHBAUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id EA11396852
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Aug 2019 20:10:37 +0200 (CEST)
Received: by mail-lf1-x13c.google.com with SMTP id x24sf1516266lfq.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Aug 2019 11:10:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566324637; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZbosTp6I3bIlVo2D/Q1aix37UrijUKnTBP+sB68+jgTaLZBrWFKrHTuxnXgnD7DigR
         qaDXaevpw8DiID1+BgkDz2LhGfNdcnIptO9BXgeJIAsLPv+IuDeHOYS3+YJ3x5wnsSRq
         pv8GQWp8Lq6lAmuHZQGT/g3Z9A5lKG2Ml99OmqtvA/ZcxjxVuXwx22+jQtl5gefRwXW9
         y+RTaAwyyLkl8IDkmxDsyoaVTbFZJXruYLIozgh4hn+BlRuo+FXrFi4XRjwB/xz1aOwo
         p/DLfrI2niF3xju0EvF9kglsxT0uUm1ODTQKH80dtObkeprWUUcNEYWk1+1dc/u27ijU
         dCJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=rtOmhIW4e2g/XUx/geCjkqy9Oou3QT2Bc5UeJCvY9og=;
        b=aF6CT9aunu/vsFXrMOgvNOsalry1WzQgd8IimGfkOdQpY7vD2597EV5JRtZ/VgCKxw
         7LtkWad1DT8fAvDi2VDgHVXN73uDK4fzH5+F7mu6MFKQ0rXjnGjGLBxV2GupwLxDOYrH
         xMJSVVKHCP5j1/UFEqRVe83wCE5if6mW9YYK3XO/QP7ZoVODVlRmTdFBpvFY0Ys+Fit8
         mn9okAa7QpZgl9BI+pBip1FdxNdyIfHH1z8hYNtK11Oaf6cwflruxGTiiFG/Edie6xa5
         LZzK1MWEEWbGR6lFlFDgtSHLEOqWcx3Vc/HXA29deatYCIwbFZ0L2sHdBPmGDkZNt5Z6
         uktA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Nu5EnVyv;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rtOmhIW4e2g/XUx/geCjkqy9Oou3QT2Bc5UeJCvY9og=;
        b=ZEuovIGzavNMGuz3Ic57DoaJL9/deVjnckhgC/+sNboeA+CmIG1ua7BUkpFCrJhxn0
         z31JO3WpxYlKbK1x+s4XG8L8b9tdR6pud7LLXaCEA6LRwkh4CFj9nwVT31yvrUZt1NPb
         FWfoPw7jbiGnFu1+MIg2ZYSQ/TM+kqWKJ6bPls4IiNRrghhFkhzpyBhBNkdRasIFimPk
         Ie4XnBdV7LJi+OVjxafgucAL5JclZvZC6eTmTacwwcf+pRNTD1Xz4RKBFhDbiRBaV/wD
         QJ+cNdvwahue9l2+1hIYr/rUD0l7QCE73AYs0JH46HMyezYyb7aikja57w/QxASeBcqo
         XijA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rtOmhIW4e2g/XUx/geCjkqy9Oou3QT2Bc5UeJCvY9og=;
        b=A1Rlv09twBoxDOnbg64iZbhYOvzuCEsXZC3l9P4ITErh8jJgf120G1t14Zr4TZcc5F
         X82xtHlntOyuWGShAHjYRW3dUaTFb/E/exeL/BKeNF+PaJdQkrrpS9ALJ2kmxuDbA49r
         ayzd6miJVSzjdV5/F73VVlPajVa33z0+xKcA/iRhaqt2NMZKIfYS3Ubx+mAlUJczVXkT
         abppskajNXKVBl5ILdfHYQZifXvAjD3OeIFHF9cnxyx4aJuGYAaprD67XNBP0vCOq9bU
         uWl11PGlxoEJjLYmcWTnRRtY536EhIHtuYS74QZhSQ/ERu6G1saH4yjeMsVEMSUCOAf3
         UvfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=rtOmhIW4e2g/XUx/geCjkqy9Oou3QT2Bc5UeJCvY9og=;
        b=AZxqEVekhbd3kAKBMu5+roQxGIE2nqli5Q5vOsxxv5Y2MQ2z75owulBayAPiys+k6S
         VDfRlMpJACxc1zUFKNmbxqO8jUw/D5Fh2+G+gnvDO0lyhSRncO4klGtXHM4EK3F19RZR
         vwWUahKoYrZDgR1uhvj/YYfSuFB931q8UznEjJKOs37CnWrsvZ33i0v60p46iZR/dfvP
         Zsjyr/OVXgzk31L0s4AtvbQ/AplAPTQ8UVBClPnXA93cG5p9aEYZenV2c6FuwsWnKUlY
         9WqTYMHCtW4sp3W9SzjYc2o0767cP4zOS6snJdmWfq5LNnC1JnCcvlEmJeEbUKQE4Bxn
         6Ihw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU1lvanI2NO9GqbgrHS306xk8wb3xve3OM9IPhdD8Dny+6gb9tm
	1mp6MpXSpYbpEUtQnDfREqA=
X-Google-Smtp-Source: APXvYqys1XtxJ+1qwJCZoNgSHmuIHXj6ig0mBLlTee54LmKgaHK9jZ9293vJj45TDCxm93Qz4Rxxkg==
X-Received: by 2002:ac2:42c3:: with SMTP id n3mr8358370lfl.117.1566324637504;
        Tue, 20 Aug 2019 11:10:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:67:: with SMTP id i7ls1777928lfo.4.gmail; Tue, 20
 Aug 2019 11:10:36 -0700 (PDT)
X-Received: by 2002:ac2:4c86:: with SMTP id d6mr4196075lfl.3.1566324636907;
        Tue, 20 Aug 2019 11:10:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566324636; cv=none;
        d=google.com; s=arc-20160816;
        b=sH1yMDPNrtHdH3Y79w7GQAQ4jt0bZ2grqX7NwsmJDNNMoKrD52oIxTUtfO85zAd2nT
         J0bp4uymwf3oOXMpJKHZl0zhbUSvqxBcyF8oxzjA5MEE7Pw/YyiTbyoI+sxuf+ISC/UC
         nPL+XZ/W52pu+MKAysBMZxIYuB7/zxwFuGjnKbaQfecV3ONik8KjHnkxYoZH9srAWedh
         oY7+fjQjJ49LyMy0SDaV2xbOp0doER18B3EJwG+pSBGrhI+zQVmCGVpkAgIaQUMxGc4g
         360SBhMx9e2EEnffjsns5EVL9FvahF9Gnat8fWYBIH+R1IbJ+9UO5p0y3vUwn5iyhP6l
         jb/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=EmGLytRWZ15TLXlQuLBHmfyxWjyz6pmB4CTdSfJ7HZA=;
        b=Tivz/0hK3hBgGrKXk8Ik+6Fka9spUOrRhBXKWe0eD0eX0rGutjWtlLtkFLoIW7fO2z
         DuHQJTdq6inQ+mUrQgSPKPSATGTSDmoZQC+NEZF5AHjeIcPCfCUSPyJGzSZ77HeA5Wij
         Y9sxA/EDdV20jjcbwDkWPvJYFQvNuIuVipZ1izFXYqOLpaGBtr6jTWfHunzD5Td7QtLh
         dAbUlQW+pbmTZN5V2fVVvMwsT+ms4ZFQEf2oLiJU4iRUeh2bB+jECYsNwPE71KhW0hbu
         FxgvovFzWglzcVp9IySRH14X3k15+ajE+wVa43GnrqGr6XL/dSMMJEoddNQqpyZUxs3M
         PGbw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Nu5EnVyv;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id c12si566379lji.0.2019.08.20.11.10.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Aug 2019 11:10:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Received: by mail-wr1-x444.google.com with SMTP id s18so13370859wrn.1
        for <clang-built-linux@googlegroups.com>; Tue, 20 Aug 2019 11:10:36 -0700 (PDT)
X-Received: by 2002:adf:fa01:: with SMTP id m1mr35687841wrr.254.1566324636121;
        Tue, 20 Aug 2019 11:10:36 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id j20sm44581194wre.65.2019.08.20.11.10.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Aug 2019 11:10:35 -0700 (PDT)
Date: Tue, 20 Aug 2019 11:10:34 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Guenter Roeck <groeck@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Doug Anderson <dianders@google.com>,
	Matthias Kaehlcke <mka@google.com>,
	kbuild test robot <lkp@intel.com>, kbuild@01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [chrome-os:chromeos-4.4 34/35] arch/x86/kernel/irqinit.c:157:2:
 warning: if statement has empty body
Message-ID: <20190820181034.GC9420@archlinux-threadripper>
References: <201908151845.xO92AhOS%lkp@intel.com>
 <20190815201931.GC119104@archlinux-threadripper>
 <CAKwvOdmngsGmO8B3H9L7CGZBVvSpiXtnCi_KUW4r7A8VSFZ3pg@mail.gmail.com>
 <CABXOdTdHNA1oLtSr4V2a+dxn45mb_5YW5HmnBd13Kg3Re8UjrA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CABXOdTdHNA1oLtSr4V2a+dxn45mb_5YW5HmnBd13Kg3Re8UjrA@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Nu5EnVyv;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, Aug 20, 2019 at 10:51:18AM -0700, Guenter Roeck wrote:
> On Tue, Aug 20, 2019 at 9:47 AM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > + Doug, MKA, Guenter
> >
> > On Thu, Aug 15, 2019 at 1:19 PM Nathan Chancellor
> > <natechancellor@gmail.com> wrote:
> > >
> > > On Thu, Aug 15, 2019 at 06:09:51PM +0800, kbuild test robot wrote:
> > > > CC: kbuild-all@01.org
> > > > BCC: philip.li@intel.com
> > > > TO: cros-kernel-buildreports@googlegroups.com
> > > >
> > > > tree:   https://chromium.googlesource.com/chromiumos/third_party/kernel chromeos-4.4
> > > > head:   5a6016061c6229a93ab01182469242faac59f3ba
> > > > commit: 2e62e34f0efe804c7e229ab9ea6b259510a404b1 [34/35] UPSTREAM: include/asm-generic/bug.h: fix "cut here" for WARN_ON for __WARN_TAINT architectures
> > > > config: x86_64-allnoconfig (attached as .config)
> > > > compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> > > > reproduce:
> > > >         git checkout 2e62e34f0efe804c7e229ab9ea6b259510a404b1
> > > >         # save the attached .config to linux build tree
> > > >         make ARCH=x86_64
> > > >
> > > > If you fix the issue, kindly add following tag
> > > > Reported-by: kbuild test robot <lkp@intel.com>
> > > >
> > > > All warnings (new ones prefixed by >>):
> > > >
> > > > >> arch/x86/kernel/irqinit.c:157:2: warning: if statement has empty body [-Wempty-body]
> > > >            alloc_intr_gate(ERROR_APIC_VECTOR, error_interrupt);
> > > >            ^
> > > >    arch/x86/include/asm/desc.h:396:3: note: expanded from macro 'alloc_intr_gate'
> > > >                    set_intr_gate(n, addr);                         \
> > > >                    ^
> > > >    arch/x86/include/asm/desc.h:373:3: note: expanded from macro 'set_intr_gate'
> > > >                    set_intr_gate_notrace(n, addr);                         \
> > > >                    ^
> > > >    arch/x86/include/asm/desc.h:366:3: note: expanded from macro 'set_intr_gate_notrace'
> > > >                    BUG_ON((unsigned)n > 0xFF);                             \
> > > >                    ^
> > > >    include/asm-generic/bug.h:157:47: note: expanded from macro 'BUG_ON'
> > > >    #define BUG_ON(condition) do { if (condition) ; } while (0)
> > > >                                                  ^
> > > >    arch/x86/kernel/irqinit.c:157:2: note: put the semicolon on a separate line to silence this warning
> > > >    arch/x86/include/asm/desc.h:396:3: note: expanded from macro 'alloc_intr_gate'
> > > >                    set_intr_gate(n, addr);                         \
> > > >                    ^
> > > >    arch/x86/include/asm/desc.h:373:3: note: expanded from macro 'set_intr_gate'
> > > >                    set_intr_gate_notrace(n, addr);                         \
> > > >                    ^
> > > >    arch/x86/include/asm/desc.h:366:3: note: expanded from macro 'set_intr_gate_notrace'
> > > >                    BUG_ON((unsigned)n > 0xFF);                             \
> > > >                    ^
> > > >    include/asm-generic/bug.h:157:47: note: expanded from macro 'BUG_ON'
> > > >    #define BUG_ON(condition) do { if (condition) ; } while (0)
> 
> That code has been there forever, and isn't really Chrome OS specific.
> Upstream behavior was changed in 2015 with commit 3c047057d120
> ("asm-generic: default BUG_ON(x) to if(x)BUG()"). Should we ask for
> that patch to be applied to linux-4.4.y ?
> 
> Guenter

I made a comment about this when commit 173a3efd3edb ("bug.h: work
around GCC PR82365 in BUG()") was backported to linux-4.4.y:

https://groups.google.com/d/msg/clang-built-linux/6Sx3mjI_A0o/9NCZ8yT5CQAJ

Looks like that commit never got picked up so we should probably request
that it get added.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190820181034.GC9420%40archlinux-threadripper.
