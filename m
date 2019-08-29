Return-Path: <clang-built-linux+bncBC3ZPIWN3EFBBOVMUDVQKGQEXJYHJKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x340.google.com (mail-wm1-x340.google.com [IPv6:2a00:1450:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 55DB2A235D
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 20:15:23 +0200 (CEST)
Received: by mail-wm1-x340.google.com with SMTP id r21sf2045754wme.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 11:15:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567102523; cv=pass;
        d=google.com; s=arc-20160816;
        b=cOeLbhftjJAjruJwWdQzcFcIcYAHkG8S+3AdtD70g5A5uimVc5+/Vb/ulzL1Kz2F5L
         cwJ4BFyJZIhBOO/xDURMil9WiLRpaCGECw5GOfA195Xk470EOf8jNcWIQn/jYqLZCuvy
         X4LxNj115KwikFY1cAaRCe+lKNaTh6FG73WZdE+eoHucOkXwNjkCkwklV4S5+Qh7ZxbE
         loImbdRUP/D7fgnCM5PkCQBp/ME2qrXiYzmDRtr0Xp6orHG1WgWiBwGRluUmMlOTqZO8
         VZ4SHkbIquosZ+axB+4rr7XuNfQPcXAmfMwLsF53lTk4pgZake/B+33Wz1W5UOOQ7Am9
         JgLw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=9sK7+p4+jSVEpsTYhE72xP2K70NRRDAn4mA8LIKT8V0=;
        b=0cO2k4/1aJulAmQVSIjWziBls40+XoaBjcrxuvoNdIIyU3SG+Jn0+4s3ZzySx/l3C8
         F9yOWKHkCJ9CXa6zFHDjL7rAmN/ZUOZIF9AdAmNdPhSyP1y7PeAsTl9OX8z+XNQoSh87
         8KV9+ytGpZwsMLLCc8D+3l4HF6BEkIus3A2nOgX70aw5n6hKyML02nn+s9nldZCxhPXM
         ygvn+7zALgzIOBcMbTZli/lUdHCdnrh8l2JAIRuQcHcwyJioXIMhDXWOi3SjJkVEKxlv
         W8WdlW8MoGZ7HudP1DTc6nP5x/fzr6W3QjxBcN8Zss3tJrTMINdN3UTbOxdYXvE5jd/G
         TaOQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=Q27etNQq;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9sK7+p4+jSVEpsTYhE72xP2K70NRRDAn4mA8LIKT8V0=;
        b=rjiwJqUGUp7GymrNi2YJG1cI50xqnN9KWY5aD141Wh3nPkBes7TlxyeO8GUbDkKF8M
         n4YKCoTvowCnLHCpiXmri5g0i/j3mcBOVwF2bAEt9AIITDuIgi9y3IdeCtjvLKsXf02C
         yiUtevs++OSRKAsGuwFpCsCikGaQXouXTJbsI1LmZpLKTQXvTiZhOrdYqrYuG34O35Tm
         s7obWoh2SMMHWpzM90+poK6ZOk5GUmJv2wolhA3L0xuaRXnuqzh+IXlAb3enbu1EogNq
         T0VCGEaRUBONHZxCbnro+RcHPsvFOAVtvNM3ce3goDxKLy2db4JxOyBReRj9h+Xt307w
         fhcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9sK7+p4+jSVEpsTYhE72xP2K70NRRDAn4mA8LIKT8V0=;
        b=RmO3i09xv4hBMD6Tkb5l1xGwr+o+X5wwMjMm1pZX3ttCWa9glQW3+K8Z8FEYjQIuGb
         Fju0FwYQjOge/XtxROzIO645Qq/Ocx4vuM5/77UHVdaubCBnrArVAC8H/fWahttoGXNe
         J8z5+91T6mG+GDvGQ3Zc3uNLFah2HEO0+ikJkfi7N5IUnsdF/ZfUWEeOTQRBgxaJPfmy
         BMDsnqOAQljkOp53GTIBjGmB6AyY6fgTxo3qskTtptYwIodTqhcacj8oLPdckXbMvJ31
         SHHotQwjtmPwePIjw8cLNhh93V0MLc1JEL47IIJfgK+lHoEJREtU8IDGOdsn06XmfmKA
         4G4A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUNUR6ZHtOONIR79HZjT7SFVAz9ewamismwjIDqoDOI0bJ42cGM
	zeN4KBm/cH0WBx4m0lE9Klo=
X-Google-Smtp-Source: APXvYqw1EDUm3IvSWKgLALgUlOf//Hveyswf0QU35OAAubLh7RBeAAe8XWCPRUyU9hgRUAxlQoTVOA==
X-Received: by 2002:a5d:610d:: with SMTP id v13mr13818463wrt.249.1567102523019;
        Thu, 29 Aug 2019 11:15:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c411:: with SMTP id k17ls1357052wmi.1.gmail; Thu, 29 Aug
 2019 11:15:22 -0700 (PDT)
X-Received: by 2002:a1c:eb06:: with SMTP id j6mr13906766wmh.76.1567102522457;
        Thu, 29 Aug 2019 11:15:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567102522; cv=none;
        d=google.com; s=arc-20160816;
        b=YpOM+LssQbLoT9Ahv9DVY3mIFpEnn+dF1N/Z4uLiK0zfE347SrYJDm/jBCTkeBn5iN
         8It+mXa7uB13dpZVNIDVpSSKeih6msEyZywdRJ0r7RVhEd+YeB3yg4avOMSJjxj8bxk5
         MVKBM9qGl7Iq1z3EpGpIxEJcdNW5R0nEKjGp7tPR2ziliJVTuPlnl1faE5MZf+e0SWes
         xbBNEIrbAJapWGS3tnzpBuZzXvmtfNzVmU283RofCLotBxmyQQhHKhVXaHFxSvkoY2yJ
         97abXL2wsT52V74tpssrPpmxW8EYRvYU3y7nkH+b7ZMgafdCuK+MU8qMX9PfOmnurjHF
         mJHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=sR4WCPDuQLUM49jwD7zWV6jQzPdEIbVdaFJBv2+v+F0=;
        b=uuuimq4cTkcplAVRGpZI3Fbv2N75FPlw6Dzua1B24jrMmlsq2ZG05s1FiW/Sqa0N0i
         t9F+jTql70iv2CxfjnRYiRKPNUNG4XtIx/WMUhXprxkTsw4YycDXda8ijsqc0Zqh3rzJ
         lIxfB+vcEwt/3bSw6hKPQGqCcRUuIG9j77o1oRkQ95NwiBZMYCgGS8cdwQXN/ByT+l63
         mZsUTLP26OVmbKaXFnTjIGiYqnZ/5+ESSDeriNcjQoeALSke97nZo5980u8tgiBd3nlZ
         mchyKz/z2YYmAUyLFbqCZ6XHH0QuV2xeCLbl4+iKk0Es2KBnKba3vpeR2Lp82BJSpSHJ
         3hzQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=Q27etNQq;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com. [2a00:1450:4864:20::143])
        by gmr-mx.google.com with ESMTPS id a10si146110wmm.2.2019.08.29.11.15.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Aug 2019 11:15:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::143 as permitted sender) client-ip=2a00:1450:4864:20::143;
Received: by mail-lf1-x143.google.com with SMTP id u29so3265991lfk.7
        for <clang-built-linux@googlegroups.com>; Thu, 29 Aug 2019 11:15:22 -0700 (PDT)
X-Received: by 2002:ac2:4309:: with SMTP id l9mr6948759lfh.65.1567102521400;
        Thu, 29 Aug 2019 11:15:21 -0700 (PDT)
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com. [209.85.208.182])
        by smtp.gmail.com with ESMTPSA id 134sm492415lfk.70.2019.08.29.11.15.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Aug 2019 11:15:20 -0700 (PDT)
Received: by mail-lj1-f182.google.com with SMTP id z17so4006592ljz.0
        for <clang-built-linux@googlegroups.com>; Thu, 29 Aug 2019 11:15:20 -0700 (PDT)
X-Received: by 2002:a2e:8ed5:: with SMTP id e21mr6415604ljl.156.1567102520069;
 Thu, 29 Aug 2019 11:15:20 -0700 (PDT)
MIME-Version: 1.0
References: <20190829083233.24162-1-linux@rasmusvillemoes.dk> <CAKwvOdnUXiX_cAUTSpqgYJTUERoRF-=3LfaydvwBWC6HtzfEdg@mail.gmail.com>
In-Reply-To: <CAKwvOdnUXiX_cAUTSpqgYJTUERoRF-=3LfaydvwBWC6HtzfEdg@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, 29 Aug 2019 11:15:04 -0700
X-Gmail-Original-Message-ID: <CAHk-=wgZ7Ge8QUkkSZLCfJBsHRsre65DkfTyZ2Kt5VPwa=dkuA@mail.gmail.com>
Message-ID: <CAHk-=wgZ7Ge8QUkkSZLCfJBsHRsre65DkfTyZ2Kt5VPwa=dkuA@mail.gmail.com>
Subject: Re: [RFC PATCH 0/5] make use of gcc 9's "asm inline()"
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Rasmus Villemoes <linux@rasmusvillemoes.dk>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Ingo Molnar <mingo@redhat.com>, Thomas Gleixner <tglx@linutronix.de>, "H. Peter Anvin" <hpa@zytor.com>, 
	Nadav Amit <namit@vmware.com>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Joe Perches <joe@perches.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: torvalds@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=google header.b=Q27etNQq;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates
 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
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

On Thu, Aug 29, 2019 at 10:36 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> I'm curious what "the size of the asm" means, and how it differs
> precisely from "how many instructions GCC thinks it is."  I would
> think those are one and the same?  Or maybe "the size of the asm"
> means the size in bytes when assembled to machine code, as opposed to
> the count of assembly instructions?

The problem is that we do different sections in the inline asm, and
the instruction counts are completely bogus as a result.

The actual instruction in the code stream may be just a single
instruction. But the out-of-line sections can be multiple instructions
and/or a data section that contains exception information.

So we want the asm inlined, because the _inline_ part (and the hot
instruction) is small, even though the asm technically maybe generates
many more bytes of additional data.

The worst offenders for this tend to be

 - various exception tables for user accesses etc

 - "alternatives" where we list two or more different asm alternatives
and then pick the right one at boot time depending on CPU ID flags

 - "BUG_ON()" instructions where there's a "ud2" instruction and
various data annotations going with it

so gcc may be "technically correct" that the inline asm statement
contains ten instructions or more, but the actual instruction _code_
footprint in the asm is likely just a single instruction or two.

The statement counting is also completely off by the fact that some of
the "statements" are assembler directives (ie the
".pushsection"/".popsection" lines etc). So some of it is that the
instruction counting is off, but the largest part is that it's just
not relevant to the code footprint in that function.

Un-inlining a function because it contains a single inline asm
instruction is not productive. Yes, it might result in a smaller
binary over-all (because all those other non-code sections do take up
some space), but it actually results in a bigger code footprint.

              Linus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHk-%3DwgZ7Ge8QUkkSZLCfJBsHRsre65DkfTyZ2Kt5VPwa%3DdkuA%40mail.gmail.com.
