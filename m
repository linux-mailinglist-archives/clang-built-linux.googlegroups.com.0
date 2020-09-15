Return-Path: <clang-built-linux+bncBDYJPJO25UGBBYFWQT5QKGQEJPJHK3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E98826AE1A
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 21:52:02 +0200 (CEST)
Received: by mail-pl1-x63f.google.com with SMTP id x11sf1885847pll.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 12:52:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600199520; cv=pass;
        d=google.com; s=arc-20160816;
        b=0c/gYGW66ZmAXuKkw1wnHqfgKrab8497vUg5Pz+f1AqzCwuxYyZTSTISW22YKd1LvU
         gYZVEv31uouZnlvgO/BV4AHLeqUGi8KJCxUH8X7WYgXF0HOuutRNF5j8cEHDISfo1/Tx
         d5yIrTc8sjelTx2SBtgHxNFLaeZfTFyTKNniUqIqhbYqHoqlpwEsVCR5ZUPzeAfH6oNf
         OXG7NYqGVdrs936vxyvTZmjWWX5XljnwSKD62KJwj7NGWaLSH4s8+N4YHNbL9jYAM0dd
         sSqHCCWIMwPO1Qxlbj6hF5i1DHHqDfj6e1+exOvqLXR/BpsIbUWWQ62kFaRTSbb1pSKv
         ruMg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=EUMpAhZjUSdfKPYxK8JvzULOLRl/QbJ0ack3ZlOu7Ls=;
        b=d/D8AsVML5L1YsN0Kg/hCEMk+KLSPLcY5TV4SGlfd6M1YDhvlsTI0+MkEbHvYn1T0/
         kV358JZMu9bFu5IcKWtVXMvcn9oo9AIyLl8FZudl30P+1lHkmmoHWT+2dLzoA25wK+KF
         N0JyZA7DkuTV2Ro3I7OtzCAYkHDYDbdwPx6a2CswgVecWcXfXgnawdAxcJ9idc2IUj+z
         +8sr3bGDrktmkCHQntor/azFUjiE3St/IEQ+nlTF1ERoDZ4GvjbTUoyn2jSwCilOgr74
         cZfNAK9tHZl7ZudZKLTM/279RBeh8mjLOTCX0j5mN7fHyTLXj5KcK7pjpkgcK2zMud6h
         irSA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CSaEWUa8;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EUMpAhZjUSdfKPYxK8JvzULOLRl/QbJ0ack3ZlOu7Ls=;
        b=cxyGx7h98bm1zeF9hi+U+x+KY4zLIgqdp1wgZlNWfB8rCwl+uEFDL/b0DY/TVTRndI
         kLVHtbqTLll2eeZF94O8A53gbisuXkiSvJpgkAyPlXb8NV2RnWFZSExRHZEiuhiZTFuv
         tqhE1WecR0dzNz4f3TBP8NDZm3zT5fnf222ineFnObqwDKxS6jKZ6Z/8jfDAXqbb8XeP
         GNwVYiO7xmK2Vl+zXuZT5xgHKGhyzDtaxATAgjXCh4zDbnZSR90Zw7ddCIId11+rSGVs
         JRzmTgyOMkr24il/34ZaJIw/qp9W/62j4N3t4oZWqek2wVBuQqbFlZzyUJP30/JG1O5J
         acIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EUMpAhZjUSdfKPYxK8JvzULOLRl/QbJ0ack3ZlOu7Ls=;
        b=h/cNDUfRzPGQnTk9b78F7bRw7dBbEOtiu/vRhaAeGu9B+YlyaNpvhq/gE6vhWIBP0A
         LLkT0DEkUgrAxsKEv8L80ry6K0TaUKDrqiPm7zHoB3fdk8/5oLFz07UTb3UqOFj9/X7C
         6iDOGXwDPU3ipjIZqTsOgBSS/TLC4A7TV13paRWqO5Y0oInrTMWksAdU3SOD0Yt82fHR
         GF5gSMY9vQCeq1YUgvo9/xlU7HQp95XXQ2YBG+Q1BYfbYQ8Vg4gPK2aLsKLlc9sg3I1o
         OxrY/lQNT30QR1HIHOFDtciTviirbDTzogbhWhGjcPBuESKdgoaQEVB2I0v7xMgWM6Tj
         kr8Q==
X-Gm-Message-State: AOAM5335NEHHBu+p9yGvTCM1x/zjGLg/2aiysv5Ch4XEhV/ukc8b+XrY
	wUvkHm2JI+ZOOOaKpeG2vz8=
X-Google-Smtp-Source: ABdhPJwa5v5rs/ivWXgxJ67gORgIyT7cNJYach2BIvtpGpfNWbrIVx7Z4ydUNuba3aoZVEml0r+ugg==
X-Received: by 2002:aa7:8812:0:b029:13c:1611:6537 with SMTP id c18-20020aa788120000b029013c16116537mr19366043pfo.9.1600199520502;
        Tue, 15 Sep 2020 12:52:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:bc89:: with SMTP id x9ls65334pjr.1.canary-gmail;
 Tue, 15 Sep 2020 12:52:00 -0700 (PDT)
X-Received: by 2002:a17:902:8bc2:b029:d0:cbe1:e7a6 with SMTP id r2-20020a1709028bc2b02900d0cbe1e7a6mr20520057plo.23.1600199519952;
        Tue, 15 Sep 2020 12:51:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600199519; cv=none;
        d=google.com; s=arc-20160816;
        b=a4SUx39F72hLw3pC+5x0X1vt6OkSyzUM2/NRse/y/IGL6UwwsnMF5SptjGSFgMKTBl
         eIj7zuilxIGld5nGgGJEQdwdsY80QKKgyJY3gMSbp4Ke57Sub/xWYesFGKE04Snb2rBf
         K+lhGa1XeV+oRD7ybUdnYHnKGmLfg7U6HiGc/QX8eDX8aEBT182+6Df71ToRkt4Y+okA
         9vvHjC07Qdfu4HQUb7W/x2xrae310fZdDErovKi5tWroX2x11Ox8MvnZqp1UoQE0S1iU
         tWPQPHYac/zaPEFdXmx+9BXvAY5lHW/flufxwTglbB5bHWwANqdFk+xLVeWl8ToYmKU+
         WxfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=TI2xLec+fHn8OciSaj91CFEPuyI3CYj5LnJd/mX8Q9c=;
        b=rBVNVFF8CIHmrXZSZeZPQAJzWatrpx9jn1qOdlqL1RootZ96xT0oQvD151+lCYTv5z
         9lgijASe7GduEcXJYqyu3p6bc08h3wfm2+PgFbsMNamOJAXcMck7ZCU0SVcQwDHvMfPO
         AMMoza9MuRp3Pk6GyrtaPSoCoPcRCz73JM1DOLmdjhf2AclvCyBtMkq3C/LdbE9SUh7A
         2g5hy0XbBSCRLKnQX7wsQp2y3wErVyC/he/JqkQmIKexjKjDc4AukDwqG9xHoGTr0H5I
         1+rVKGwTgooFRMp9afWgqMW0RToo0OqjrwKruXQlide6oVcoBdanuc1FiwcJ8ttZLfI7
         hA2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CSaEWUa8;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id a199si1007018pfd.1.2020.09.15.12.51.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Sep 2020 12:51:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id fa1so350080pjb.0
        for <clang-built-linux@googlegroups.com>; Tue, 15 Sep 2020 12:51:59 -0700 (PDT)
X-Received: by 2002:a17:90b:698:: with SMTP id m24mr883485pjz.32.1600199519432;
 Tue, 15 Sep 2020 12:51:59 -0700 (PDT)
MIME-Version: 1.0
References: <20200915172658.1432732-1-rkir@google.com> <20200915174643.GT14436@zn.tnic>
 <CAKwvOdm9bQmL=gZypkosH0MG=S28=jJ6wZiTMCNP6=Z+NfN1AA@mail.gmail.com> <20200915182530.GV14436@zn.tnic>
In-Reply-To: <20200915182530.GV14436@zn.tnic>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 15 Sep 2020 12:51:47 -0700
Message-ID: <CAKwvOdkKk1KuAFDoWNLnMUi3_JnV7atDFnvS7CdkgNXnNg0p1g@mail.gmail.com>
Subject: Re: [PATCH] arch: x86: power: cpu: init %gs before
 __restore_processor_state (clang)
To: Borislav Petkov <bp@alien8.de>
Cc: Roman Kiryanov <rkir@google.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Pavel Machek <pavel@ucw.cz>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, linux-pm@vger.kernel.org, 
	Greg KH <gregkh@linuxfoundation.org>, Alistair Delva <adelva@google.com>, 
	Haitao Shan <hshan@google.com>, lkml <linux-kernel@vger.kernel.org>, 
	Sami Tolvanen <samitolvanen@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, =?UTF-8?Q?Martin_Li=C5=A1ka?= <mliska@suse.cz>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=CSaEWUa8;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042
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

On Tue, Sep 15, 2020 at 11:25 AM Borislav Petkov <bp@alien8.de> wrote:
>
> On Tue, Sep 15, 2020 at 11:00:30AM -0700, Nick Desaulniers wrote:
> > This is exactly the same code from __restore_processor_state.
>
> No, this patch is adding
>
> #ifdef __clang__
>
> and I don't like the sprinkling around of those compiler-specific
> workarounds which we have to carry forward forever or at least until
> that compiler version is deprecated. We already carry fixes for broken
> hardware, broken BIOSes, broken peripherals,... can you follow the
> progression? :)

I agree; I also would not have sent the patch though.  Until LTO has
landed upstream, this is definitely somewhat self inflicted.  This was
only debugged last week; even with a compiler fix in hand today, it
still takes time to ship that compiler and qualify it; for other folks
on tighter timelines, I can understand why the patch was sent, and do
genuinely appreciate the effort to participate more upstream which I'm
trying to encourage more of throughout the company (we're in a lot of
technical debt kernel-wise; and I'm not referring to Android...a story
over beers perhaps, or ask Greg).  It's just that this isn't really
appropriate since it works around a bug in a non-upstream feature, and
will go away once we fix the toolchain.

>
> So your argument about testing unreleased compilers in the other thread
> makes a lot of sense so that stuff like that can be fixed in time, and
> in the compiler, where it belongs (that is, *if* it belongs there).

It would be much nicer if we had the flexibility to disable stack
protectors per function, rather than per translation unit.  I'm going
to encourage you to encourage your favorite compile vendor ("write to
your senator") to support the function attribute
__attribute__((no_stack_protector)) so that one day, we can use that
to stop shipping crap like a9a3ed1eff360 ("x86: Fix early boot crash
on gcc-10, third try").  Having had that, we could have used a nicer
workaround until the toolchain was fixed (and one day revert
a9a3ed1eff360, and d0a8d9378d16, and probably more hacks in the
kernel).  And the case that's causing the compiler bug in question is
something all compiler vendors will need to consider in their
implementations.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkKk1KuAFDoWNLnMUi3_JnV7atDFnvS7CdkgNXnNg0p1g%40mail.gmail.com.
