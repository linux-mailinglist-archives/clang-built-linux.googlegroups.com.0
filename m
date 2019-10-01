Return-Path: <clang-built-linux+bncBCSPV64IYUKBBBMJZ7WAKGQEOUY6PKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-f58.google.com (mail-wm1-f58.google.com [209.85.128.58])
	by mail.lfdr.de (Postfix) with ESMTPS id 81134C42A9
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Oct 2019 23:26:29 +0200 (CEST)
Received: by mail-wm1-f58.google.com with SMTP id k184sf1991713wmk.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Oct 2019 14:26:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569965189; cv=pass;
        d=google.com; s=arc-20160816;
        b=zFMIWkO4AUtNf3qd9hfIqacSY296oyIvdSHxEbk66m8MYNh6q83LGhKcsxJ7LYjqgO
         JN1FTKHpmSozpMy9gq9hrRAbkd/TCrsDgMZywl1d/ycI1e3NtHTMgL6M1cv+3WezdUMI
         63I425utoMRIp4HyUsSjd7FtbFPMTNtSfI8mCaRkd3oq79BUeo7kpOTf7zJPuaW+Fmsu
         7OH+3QlDJ3hdFH5UWZCosENdsFwLdbgA4RRcbOBmFZr8gJp0m95y52SIh1HPbYTQzLOf
         K1L3lugv9pE1NCUudWP2g9Kh1Z3u47pMkiOapBj2+1SfPzWTBJLoAx1g+TaEM8TGnEgC
         D5jQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:sender:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date;
        bh=JOODe6sUwH9jJCCX+TRJcRrvwBPEIDMfSVl3lx2+B+0=;
        b=Ruv8ef0n9tbH4otbNuPKaz61v6HCJ00yzHQTg4NOk7B96wGPR9iD/Zeossr78Zb2gi
         wOivNI+MoO7BZZlMdxdFKcY9nwJzl88UsjnXAgneR9st4i6BNXSyjE6CslU85rpbEmcU
         DiZhLsFvwBodxAGMztvHCrx7xXKUX4jUcNo714/1TcVs12QHu8GOdI2n4lM0uqvUSP/c
         7I74Jsv/tZwzbjt6sSeFLB5+QyMRj6gFSKSAnPKXRGOP8JtwP4CDm6Ssshrt7voKJnSx
         4t22VypiWRqaeZjaMfjQF3gzOgyzzDUW0DYq18QbROPS0ay72Mm6BHS1f7O2qhHUmef9
         lfvA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=oqC4bU90;
       spf=pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:3201:214:fdff:fe10:1be6 as permitted sender) smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent:sender:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JOODe6sUwH9jJCCX+TRJcRrvwBPEIDMfSVl3lx2+B+0=;
        b=Vst9m5PveXhbXd3c124hTFKpqU1tdWWJGkd90gu7W/G1a1OeQTwZqzEp/t7OYjR/oy
         AAJJLi5y8uCGaaLsz8hciy37UEXM+3UvTBuBeoO/jFe/oLimqbAwCxhBOlAA/dBsFQdd
         0eIq0g1t/DHhkZ9toQUZ76CyUBTZinw0MXJ2v0iRBI5hmnD1Jyom0/IKP4rRuIrmDE56
         uXCJ7Gk05xrC7QEcOUtM017EtUrp6GuH0ud9HpAZYVz985j83aTFflSs0fr1OfnLchin
         ZWM5C8ABBCsfd2zlWGbfsC9YJwxCP7koKMjVJgKUpdo4tXhjg4ehZ2H9qUoXATt3hoJa
         3JSw==
X-Gm-Message-State: APjAAAUHw3ZnUbVA1m5FtranrqVAh0ULObYNFlclqy9RQnHZi5XyemNg
	93QtWchfb09P4DAPdpxrOi8=
X-Google-Smtp-Source: APXvYqzm95cUw0NejPF7VyJ3iaTJDhnaLcOznFmtk2A72McQAOuvmu7u8AY2pTW0RCYe6MKRFk8HdA==
X-Received: by 2002:a7b:c247:: with SMTP id b7mr90442wmj.121.1569965189245;
        Tue, 01 Oct 2019 14:26:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:cf01:: with SMTP id l1ls84417wmg.0.gmail; Tue, 01 Oct
 2019 14:26:28 -0700 (PDT)
X-Received: by 2002:a1c:9c96:: with SMTP id f144mr118776wme.96.1569965188777;
        Tue, 01 Oct 2019 14:26:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569965188; cv=none;
        d=google.com; s=arc-20160816;
        b=Jq3hfjUAUkPyKmUwrC0BtI/U10W8juYlSp0Fpw5EVeVVoWB7E4kD9F6CxAq5MZfGgP
         /fMEg/fE2xosHlANjj4EQCaiRVq9ByzaRKMej8jP3rbAg15WitV5K5LI+TO9xRJSQJqv
         XSolK966Qbj36kUy887Es95od9jGAzitgG0pzlqlO9xytLFAmgnMRQCPx1HYizutxCh6
         GWljtHoO2ieLe5dRhDzbpGCrGmlKqa+c2mBTCDzN0Ykad0GRtVFFGfi37LeMpDUeH8yh
         JM+cMG9Zybr5JzotWy4tW2NAOLL3zLqglo9teRUc4Q+u621rbj1/kZ1nI2QfDnrLbE3h
         qh9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=sender:user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=he2KQaLN15Ukf5d3JOb59B6IuidQ3MGDFSAF4GATnaE=;
        b=Y3SzLfDNAC/3byLkYC9CMqBSOC9X1nznliKxFHMKGhhujw7NDq27JGxwuqfq5pVx8u
         VXCQkES3XHs4D1l9v9i8TdqmP6V6K8B46MxQJLdO6BbEh8D/46NSsYSVag+qz4XNoNcs
         IdGVBcM32pxZgnjuHOpOI77EBesdpI0y1fWVVBf48tOGke8aqIiHwgw98yzMJ0S5Uqcv
         Woaj344cH1IKhwscLKJGoTe6uVQ/ulIoBg687fIeavE56gBwJc+9Iu4w+PPtJil3o3F+
         WLTAtjwq9LvHTEWw2t6Py8Xvy2Hfc3QY5w4XzkFZDVGmkrRI4Nl3v0ii/6+p6lZtIcoR
         luOg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=oqC4bU90;
       spf=pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:3201:214:fdff:fe10:1be6 as permitted sender) smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk. [2001:4d48:ad52:3201:214:fdff:fe10:1be6])
        by gmr-mx.google.com with ESMTPS id p12si243793wmg.0.2019.10.01.14.26.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Oct 2019 14:26:28 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:3201:214:fdff:fe10:1be6 as permitted sender) client-ip=2001:4d48:ad52:3201:214:fdff:fe10:1be6;
Received: from shell.armlinux.org.uk ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:46420)
	by pandora.armlinux.org.uk with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.90_1)
	(envelope-from <linux@armlinux.org.uk>)
	id 1iFPet-0004pL-7S; Tue, 01 Oct 2019 22:26:11 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1iFPeq-0008WV-Vu; Tue, 01 Oct 2019 22:26:09 +0100
Date: Tue, 1 Oct 2019 22:26:08 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Will Deacon <will@kernel.org>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
	Andrew Morton <akpm@linux-foundation.org>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	linux-arch <linux-arch@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Stefan Wahren <wahrenst@gmx.net>, Kees Cook <keescook@google.com>,
	Arnd Bergmann <arnd@arndb.de>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] compiler: enable CONFIG_OPTIMIZE_INLINING forcibly
Message-ID: <20191001212608.GN25745@shell.armlinux.org.uk>
References: <CAKwvOdnqn=0LndrX+mUrtSAQqoT1JWRMOJCA5t3e=S=T7zkcCQ@mail.gmail.com>
 <20191001092823.z4zhlbwvtwnlotwc@willie-the-truck>
 <CAKwvOdk0h2A6=fb7Yepf+oKbZfq_tqwpGq8EBmHVu1j4mo-a-A@mail.gmail.com>
 <20191001170142.x66orounxuln7zs3@willie-the-truck>
 <CAKwvOdnFJqipp+G5xLDRBcOrQRcvMQmn+n8fufWyzyt2QL_QkA@mail.gmail.com>
 <20191001175512.GK25745@shell.armlinux.org.uk>
 <CAKwvOdmw_xmTGZLeK8-+Q4nUpjs-UypJjHWks-3jHA670Dxa1A@mail.gmail.com>
 <20191001181438.GL25745@shell.armlinux.org.uk>
 <CAKwvOdmBnBVU7F-a6DqPU6QM-BRc8LNn6YRmhTsuGLauCWKUOg@mail.gmail.com>
 <20191001205938.GM25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20191001205938.GM25745@shell.armlinux.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-Original-Sender: linux@armlinux.org.uk
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass (test
 mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=oqC4bU90;
       spf=pass (google.com: best guess record for domain of
 linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates
 2001:4d48:ad52:3201:214:fdff:fe10:1be6 as permitted sender)
 smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
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

On Tue, Oct 01, 2019 at 09:59:38PM +0100, Russell King - ARM Linux admin wr=
ote:
> On Tue, Oct 01, 2019 at 01:21:44PM -0700, Nick Desaulniers wrote:
> > On Tue, Oct 1, 2019 at 11:14 AM Russell King - ARM Linux admin
> > <linux@armlinux.org.uk> wrote:
> > >
> > > On Tue, Oct 01, 2019 at 11:00:11AM -0700, Nick Desaulniers wrote:
> > > > On Tue, Oct 1, 2019 at 10:55 AM Russell King - ARM Linux admin
> > > > <linux@armlinux.org.uk> wrote:
> > > > >
> > > > > On Tue, Oct 01, 2019 at 10:44:43AM -0700, Nick Desaulniers wrote:
> > > > > > I apologize; I don't mean to be difficult.  I would just like t=
o avoid
> > > > > > surprises when code written with the assumption that it will be
> > > > > > inlined is not.  It sounds like we found one issue in arm32 and=
 one in
> > > > > > arm64 related to outlining.  If we fix those two cases, I think=
 we're
> > > > > > close to proceeding with Masahiro's cleanup, which I view as a =
good
> > > > > > thing for the health of the Linux kernel codebase.
> > > > >
> > > > > Except, using the C preprocessor for this turns the arm32 code in=
to
> > > > > yuck:
> > > > >
> > > > > 1. We'd need to turn get_domain() and set_domain() into multi-lin=
e
> > > > >    preprocessor macro definitions, using the GCC ({ }) extension
> > > > >    so that get_domain() can return a value.
> > > > >
> > > > > 2. uaccess_save_and_enable() and uaccess_restore() also need to
> > > > >    become preprocessor macro definitions too.
> > > > >
> > > > > So, we end up with multiple levels of nested preprocessor macros.
> > > > > When something goes wrong, the compiler warning/error message is
> > > > > going to be utterly _horrid_.
> > > >
> > > > That's why I preferred V1 of Masahiro's patch, that fixed the inlin=
e
> > > > asm not to make use of caller saved registers before calling a
> > > > function that might not be inlined.
> > >
> > > ... which I objected to based on the fact that this uaccess stuff is
> > > supposed to add protection against the kernel being fooled into
> > > accessing userspace when it shouldn't.  The whole intention there is
> > > that [sg]et_domain(), and uaccess_*() are _always_ inlined as close
> > > as possible to the call site of the accessor touching userspace.
> >=20
> > Then use the C preprocessor to force the inlining.  I'm sorry it's not
> > as pretty as static inline functions.
> >=20
> > >
> > > Moving it before the assignments mean that the compiler is then free
> > > to issue memory loads/stores to load up those registers, which is
> > > exactly what we want to avoid.
> > >
> > >
> > > In any case, I violently disagree with the idea that stuff we have
> > > in header files should be permitted not to be inlined because we
> > > have soo much that is marked inline.
> >=20
> > So there's a very important subtly here.  There's:
> > 1. code that adds `inline` cause "oh maybe it would be nice to inline
> > this, but if it isn't no big deal"
> > 2. code that if not inlined is somehow not correct.
> > 3. avoid ODR violations via `static inline`
> >=20
> > I'll posit that "we have soo much that is marked inline [is
> > predominantly case 1 or 3, not case 2]."  Case 2 is a code smell, and
> > requires extra scrutiny.
> >=20
> > > Having it moved out of line,
> > > and essentially the same function code appearing in multiple C files
> > > is really not an improvement over the current situation with excessiv=
e
> > > use of inlining.  Anyone who has looked at the code resulting from
> > > dma_map_single() will know exactly what I'm talking about, which is
> > > way in excess of the few instructions we have for the uaccess_* stuff
> > > here.
> > >
> > > The right approach is to move stuff out of line - and by that, I
> > > mean _actually_ move the damn code, so that different compilation
> > > units can use the same instructions, and thereby gain from the
> > > whole point of an instruction cache.
> >=20
> > And be marked __attribute__((noinline)), otherwise might be inlined via=
 LTO.
> >=20
> > >
> > > The whole "let's make inline not really mean inline" is nothing more
> > > than a band-aid to the overuse (and abuse) of "inline".
> >=20
> > Let's triple check the ISO C11 draft spec just to be sure:
> > =C2=A7 6.7.4.6: A function declared with an inline function specifier i=
s an
> > inline function. Making a
> > function an inline function suggests that calls to the function be as
> > fast as possible.
> > The extent to which such suggestions are effective is
> > implementation-defined. 139)
> > 139) For example, an implementation might never perform inline
> > substitution, or might only perform inline
> > substitutions to calls in the scope of an inline declaration.
> > =C2=A7 J.3.8 [Undefined Behavior] Hints: The extent to which suggestion=
s
> > made by using the inline function specifier are effective (6.7.4).
> >=20
> > My translation:
> > "Please don't assume inline means anything."
> >=20
> > For the unspecified GNU C extension __attribute__((always_inline)), it
> > seems to me like it's meant more for performing inlining (an
> > optimization) at -O0.  Whether the compiler warns or not seems like a
> > nice side effect, but provides no strong guarantee otherwise.
> >=20
> > I'm sorry that so much code may have been written with that
> > assumption, and I'm sorry to be the bearer of bad news, but this isn't
> > a recent change.  If code was written under false assumptions, it
> > should be rewritten. Sorry.
>=20
> You may quote C11, but that is not relevent.  The kernel is coded to
> gnu89 standard - see the -std=3Dgnu89 flag.

There's more to this and why C11 is entirely irrelevant.  The "inline"
you see in our headers is not the compiler keyword that you find in
various C standards, it is a macro that gets expanded to either:

#define inline inline __attribute__((__always_inline__)) __gnu_inline \
        __maybe_unused notrace

or

#define inline inline                                    __gnu_inline \
        __maybe_unused notrace

__gnu_inline is defined as:

#define __gnu_inline                    __attribute__((__gnu_inline__))

So this attaches the gnu_inline attribute to the function:

`gnu_inline'
     This attribute should be used with a function that is also declared
     with the `inline' keyword.  It directs GCC to treat the function
     as if it were defined in gnu90 mode even when compiling in C99 or
     gnu99 mode.
...
     Since ISO C99 specifies a different semantics for `inline', this
     function attribute is provided as a transition measure and as a
     useful feature in its own right.  This attribute is available in
     GCC 4.1.3 and later.  It is available if either of the
     preprocessor macros `__GNUC_GNU_INLINE__' or
     `__GNUC_STDC_INLINE__' are defined.  *Note An Inline Function is
     As Fast As a Macro: Inline.

which is quite clear that C99 semantics do not apply to _this_ inline.
The manual goes on to explain:

 GCC implements three different semantics of declaring a function
inline.  One is available with `-std=3Dgnu89' or `-fgnu89-inline' or when
`gnu_inline' attribute is present on all inline declarations, another
when `-std=3Dc99', `-std=3Dc11', `-std=3Dgnu99' or `-std=3Dgnu11' (without
`-fgnu89-inline'), and the third is used when compiling C++.

I'd suggest gnu90 mode is pretty similar to gnu89 mode, and as we build
the kernel in gnu89 mode, that is the inlining definition that is
appropriate.

When it comes to __always_inline, the GCC manual is the definitive
reference, since we use the GCC attribute for that:

#define __always_inline                 inline __attribute__((__always_inli=
ne__))

and I've already quoted what the GCC manual says for always_inline.

Arguing about what the C11 spec says about inlining when we aren't
using C11 dialect in the kernel, but are using GCC features, does
not move the discussion on.

Thanks anyway, maybe it will become relevent in the future if we
decide to move to C11.

--=20
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps =
up
According to speedtest.net: 11.9Mbps down 500kbps up

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20191001212608.GN25745%40shell.armlinux.org.uk.
