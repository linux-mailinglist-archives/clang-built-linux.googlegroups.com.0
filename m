Return-Path: <clang-built-linux+bncBDYJPJO25UGBBA6A2H2QKGQENURYD6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id AEE0A1C9AEB
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 May 2020 21:22:44 +0200 (CEST)
Received: by mail-ot1-x33e.google.com with SMTP id s23sf3908256otq.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 May 2020 12:22:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588879363; cv=pass;
        d=google.com; s=arc-20160816;
        b=bcDE80zh6JCTGMV+7iZL3viY5K5IeWWx/dNHbVD2LxuDBQNRx+z9jcvoDzjrME+u+H
         3ykWH+cqQcqQL+ETrY4DMEMoLTfbtYfWJAFcT/SeEgsfiQuvf37eLrrUvz44yiYqapTT
         AaCHGy13PPHfYj0LUP2dyftxxC4/cO/oI7rSDUrDMrHOZA8BjgQBVSJeFQmNuEBSQpEf
         ahh3wB91rL/fRsnzlKy9FKIYD02rru8ekVI3MFYDzaBFehLTjIlxloj162jfKKtSPrIR
         kkKRF+h8cAHLK3zo9irr80biiwdr9tBGJD3pusUHdOhwnYhGz5m0glK+gj6OH3Zj1dxX
         q5sw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=heYMBgansE7dZghraHmnys4RW5tBjAAF0SVu5FSfkM8=;
        b=uXAlgf+t0L0DzGSx2Iwh8jyfSueE4q4njxrJqN4m5AeKujtinTqs2JQag7NGxAYbAw
         7dWNnPcg3UQhapQd/HRUvKwV9dIZgFWNVmKW6tHcgwyz7JkmuxTXuDIod8AuOiCEOHHs
         5dWTxtYmWRUUrTs+M+wOiWN2NR2NIFRMiTO4PBP6LBGyeLBJvcIOruVR92qpBSdl+xuq
         Yz3oGSPA0mnGlr6XdSWqrk2gT1Bgh6m5LDLN3Hxu1ck/BU/qqSWxspFlvy5Vt+cZ9+ME
         Oq2VTWBTDb7JUM0CtRh2k91rT70vmKRkznlEm6vYPQ9mYPHVld6gFIqBnk28cRFWzIE4
         NSBA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CVCWdnIe;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=heYMBgansE7dZghraHmnys4RW5tBjAAF0SVu5FSfkM8=;
        b=mKqErCjPwNzWxxar6r+ltVuNQak2HG48J0bThn5vOfnvKhYLza6umSd4EbeIGYs+g4
         RZ2rzp6i2nuhhXD7yoc2fe7d5QYWO+zMTtqgWd1ZqM+AtvckN+C2GocPP2WrILEpv3RX
         LoBhhnLKGXLKW1gP6OEHK2C1/21ldd90S7N7JlqGfu/K0fSdfy23FdwT/Upagf2BYIfB
         Cvpk7OoDZKSR7TrYyfdSx+PgiGkFxt52sQhdqX81DCGDe8PVQQAGi5pAFeRUmRty1gkJ
         TxirROHxcSEC8LdOXC/GCbQNbted4RcVWQoHeUAwt4LmpAv35vYBGQ9rasKWfVSzLszG
         ZKfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=heYMBgansE7dZghraHmnys4RW5tBjAAF0SVu5FSfkM8=;
        b=aPCaUAadh3S7rT09sSQh/iTlpgoNpT1UhRFi0J50CN8Hya9DjRrQi6A4efZ5W6OUNB
         2mcWI/CiDhQP2Jd5O064WsaLeD8G3XS4ZL6q6uiAkd4oYUkhonAONryaJvTXwhKSv9qH
         RnaH10YDH6PwFM59KStlAq+XaG1I7oAaEDE9DdqRJgOo1I8eLiUnjtVMrCscLKb/CZZk
         t1BY/2QmB1f0P8OMNi0dBJ9xCSsIfXPGTkITEyBZi+7cM4A61kkJBPhfCLvmEB1XlvJU
         v0lUT58SGFPhZ5wHarNuu+JdQdWNU7O4jLswe55mbr5sFq3n9YzS+C3TjlU7/nmmOIdz
         zHdQ==
X-Gm-Message-State: AGi0Pubjem6N5H0yiGxeC4Er5Q/dKs2H6gcMGbcgjUbDj0gKhVjno8R8
	va+eX8piMjoO8FnmO+Lk5V8=
X-Google-Smtp-Source: APiQypIS3/it8sw5P5r0cz5CwlTCf6zH95lfJnR+TaJ+b1X8c0WdQsJnOTkVKqNofQs1Ho7M7IZw4w==
X-Received: by 2002:aca:75c3:: with SMTP id q186mr7379510oic.41.1588879363186;
        Thu, 07 May 2020 12:22:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:3b24:: with SMTP id z33ls1675664otb.11.gmail; Thu, 07
 May 2020 12:22:42 -0700 (PDT)
X-Received: by 2002:a9d:2aa9:: with SMTP id e38mr12166022otb.162.1588879362765;
        Thu, 07 May 2020 12:22:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588879362; cv=none;
        d=google.com; s=arc-20160816;
        b=Ajzi/bfOWw2QifmE9SvA8aegKe0QvZ6uOy96RMQU5DwW9X5i2+AgBBf3s3qVJ4kHIN
         KTHYM1aik1Wm5DD3cZLZSjqusxPfsEjlWYMqJQJc5XKMLgpDohtW5TX0lGPtAIfvP1iH
         istlZFy+kBdxluUZyyFunuvbxN0w26TkG4tcoGKYsXjTEV338Ej5ZYHCmEhFHMRs3HVv
         c5DLkxFbVunw2/sGhFmKr5zaEqw55V/Crwcy0Lposs7KFpvNMOh8RkkfBdYx3ggbtu/f
         fnwEENXEP1mOorzfvykeAwC92XtfCAiFgRTZ4dhVr8LPkTpFTqaInTnrruo4EXOzAtlw
         JWOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=zCmfLDT8Xg7KPWdKGsHrM2wJdMC2w066YnMbUyG6BXw=;
        b=O6QHup22NlJgYys0+QQ4bn/LtjyVSf8586klBgIebRS5mmp+duPNIuOGv+zBwSyy+o
         HamQf+IAJnifI4PY/nNp8J9ruGFOYvJnwsnpP0LE0L+e3K0fz94lVE4aNlp93MjVYAhP
         HFn8olkNa6jtON+2g4S7+9CftoUeHHtUDfZDKpOWdpYdJvJPTQteZr6jRF4jIetrn6z6
         o6abIQ+NJNKGCKBBEDXtdWMe5vgRjxhlEQsS1oJ7WP/HilT8Ha6XDoPW+UfYkdAOduG+
         PliI2JdiMgTIYOJEWC8iJqBCAeLQpqrQgqIoMJ6Xst/Q2DScnUheI/lcsbuvKsJbtOre
         ypPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CVCWdnIe;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id w196si692673oif.4.2020.05.07.12.22.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 May 2020 12:22:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id s20so2465301plp.6
        for <clang-built-linux@googlegroups.com>; Thu, 07 May 2020 12:22:42 -0700 (PDT)
X-Received: by 2002:a17:902:eb54:: with SMTP id i20mr12412963pli.179.1588879361657;
 Thu, 07 May 2020 12:22:41 -0700 (PDT)
MIME-Version: 1.0
References: <20200505174423.199985-1-ndesaulniers@google.com> <CAMzpN2idWF2_4wtPebM2B2HVyksknr9hAqK8HJi_vjQ06bgu2g@mail.gmail.com>
In-Reply-To: <CAMzpN2idWF2_4wtPebM2B2HVyksknr9hAqK8HJi_vjQ06bgu2g@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 7 May 2020 12:22:30 -0700
Message-ID: <CAKwvOdkBaxyOiO8+_cdBenkOj5cqcn9OhThOLmbt1uMyTW1P6g@mail.gmail.com>
Subject: Re: [PATCH] x86: bitops: fix build regression
To: Brian Gerst <brgerst@gmail.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	Sedat Dilek <sedat.dilek@gmail.com>, stable <stable@vger.kernel.org>, 
	Jesse Brandeburg <jesse.brandeburg@intel.com>, "kernelci . org bot" <bot@kernelci.org>, 
	Andy Shevchenko <andriy.shevchenko@intel.com>, Ilie Halip <ilie.halip@gmail.com>, 
	"the arch/x86 maintainers" <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, Marco Elver <elver@google.com>, 
	"Paul E. McKenney" <paulmck@kernel.org>, "Peter Zijlstra (Intel)" <peterz@infradead.org>, 
	Daniel Axtens <dja@axtens.net>, Masahiro Yamada <yamada.masahiro@socionext.com>, 
	Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=CVCWdnIe;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644
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

On Wed, May 6, 2020 at 11:18 PM Brian Gerst <brgerst@gmail.com> wrote:
>
> I think a better fix would be to make CONST_MASK() return a u8 value
> rather than have to cast on every use.
>
> Also I question the need for the "q" constraint.  It was added in
> commit 437a0a54 as a workaround for GCC 3.4.4.  Now that the minimum
> GCC version is 4.6, is this still necessary?

TL;DR yes

ah, thanks for the git archeology, it's useful.  I don't think this is
a compiler bug however, just the compiler being more strict that the
`b` suffix on `orb` requires a 8b register operand.  For 32b x86, `q`
asm constraint is required, because not all GPR's had lower 8b
register aliases, as Arnd found and HPA noted as well.

I like your suggested change to CONST_MASK, and will send that in a bit.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkBaxyOiO8%2B_cdBenkOj5cqcn9OhThOLmbt1uMyTW1P6g%40mail.gmail.com.
