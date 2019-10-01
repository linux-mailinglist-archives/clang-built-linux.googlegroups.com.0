Return-Path: <clang-built-linux+bncBCSPV64IYUKBBIUYZ7WAKGQE5T55FZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-f59.google.com (mail-ed1-f59.google.com [209.85.208.59])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F212C4353
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Oct 2019 23:58:58 +0200 (CEST)
Received: by mail-ed1-f59.google.com with SMTP id 34sf9550130edf.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Oct 2019 14:58:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569967138; cv=pass;
        d=google.com; s=arc-20160816;
        b=pLrmnUGOzVJBC945gfZAlXmGUaNKFQDkYSCTmrbFXF+xKmxMe3RRE85NnqsJiguvto
         uPbIiuZK5eWpZNe4uGZ34utz2Zwx7j8HZ0KK+R0XjhSfWWBaRxf5xA/CYag0k6UOPcZH
         jCLCneWFB3v5Qfoh1cKZNeTGlLk6DeVi/ySF8hDNiGCsOlgTaN/2AQO1b8z+vXFpWNyd
         +4VNDYRwuLiS4bkavmn/H2JiAGzwbxNzpqvlRrvCjfFH6V8AdsfXf2en6zXaXUo66ns9
         3vaPPVjx7B8a03MJdzaCYfa6ZFmIMj6MtJkSDIaGAI3KnOjb9aAgiOoIrg3DXJj3NRxk
         JT2g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:sender:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date;
        bh=xBBMQD+2NXoU00y7mcmrFkiEhIMdMfWkwYmfstliE9w=;
        b=DsJf933/RPnc+d88PKK82AOYOyMJ8bNAI+o0aO6QRtWSWjp9Lm/LdWB8a1rqQW9yjK
         d6YvDd697/HYzkURmD73t5DCh5xJZRhS4yB2FNjLjCSTK3Ol9HrwZRES2eW240I+6VT+
         ++0cAcK7V/RrpNhF0brhQuZjI7RFEVvbcC80uR+OVmTxxjQ5aIrNZA1gb1FjFwQmlMMf
         S6GZ/WTza0v1AXA3I23ijne0PaMMap1pqXHIbVwCQraFODR+JBEMXNOTynm8I6+S7hR1
         7z1A9dKTDylLI2ZB1M58Ra8Zdw2d8VCTvbJDRpk1lcbb7kXYmNSdyw+GjbvTt64GgsjL
         9sNg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=0CbGVzaw;
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
        bh=xBBMQD+2NXoU00y7mcmrFkiEhIMdMfWkwYmfstliE9w=;
        b=S1S/FriDyl6QU9rcpig1BivY5CED3GtALoG3rXxr6uXbzgPhq8at39amcxco0P6wCQ
         U3/2SokgKK0vwqD766tqHrxVBArdfjqpqtSeFOnET3ZHS5XHUmaOEf40ONVUphuq9Bhl
         crEfX+LsfpkFYVR3CIB9CLbLU/3VEaigP53zfO+SkJ8lBwQ4A2FR/y1S5R7tNN10iDRz
         xTPyMRBKrAiVqM4cFyT6u29zhDByBHZduko9pcLkAkYfQ/4CNhvRT/BTuOtroTnrzrsJ
         aOqesY1yB1tlkyQgQkAEcV5PvWcGMFSj6pspf4QmZ/cNIhI9z+mqBtSnRRrV1B+B9cPQ
         +lbQ==
X-Gm-Message-State: APjAAAUpb9HRxhrOe1gIJO7ySrxnRd03LdGBik+1IR5s1U959yMW/TOt
	n4xe7jpqzr/Z7u1ZkrVrj7U=
X-Google-Smtp-Source: APXvYqxmPrsjMmK2C0V6ictGq6lxe9U0SffkPNXbe9wvOfzt5NRmLbhMvkM/E45qRMHj6CJ/jf7Ciw==
X-Received: by 2002:aa7:c657:: with SMTP id z23mr467514edr.234.1569967138418;
        Tue, 01 Oct 2019 14:58:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:ace6:: with SMTP id x93ls25277edc.6.gmail; Tue, 01 Oct
 2019 14:58:58 -0700 (PDT)
X-Received: by 2002:a50:ec81:: with SMTP id e1mr432983edr.107.1569967137999;
        Tue, 01 Oct 2019 14:58:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569967137; cv=none;
        d=google.com; s=arc-20160816;
        b=y0iv9eFtbmGsmwPq0gmb1fvOpo3hjSqWDKtdPPTMerqf27ZfVuYUnxqWJ2WImL0fIh
         eASiqi57xj8Jz6fc1ZKDdPhBaIZFOYHFzXcG4y5aBNbw9T8z9UdghZux33b8p16QhR7u
         cWJ9o5lSsyx+c0Jpw8+mBCISIXna+BHmJFFsQcuMaW3TM5su2eIrxhwlk8eTHYmX+21a
         xoAg11HSR6fzA9xJGsJicd4wjy5i1k1XSFvEC9XxJbNj6kbCdIKBgBBzjZbnY4nsI03X
         S8zEJOj5Myg+Xekb/JzsKWaIWuo4ucBp/UAdNnS9Bd7I4JVUMBvZnBLpJ2PGHDLSN6mE
         jVNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=sender:user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=Exk+Gmz2dV80jT3PJWsusPiReJ0a0LJ3sfaKxNGSGAs=;
        b=EBwX92RVzRpYItjoMvkiEIXDv197VArLAWICpHTEYFbBFyDI7R+JSeLkBgcJkIi076
         ruPpF+uvE/s0yUHm86ct0XOq3nQ8vtfewS+V7aMO+2XMBCLs0pktjesyDOd0GgipxINr
         84mRg6LOjd4UzSWoNYYzLlCcF3TqiYTyWUHLe7XMJX5Ft1FGniYwAn0cOo2X8HYJcIBM
         jF3b5g27rQqEUCAnnQtcJg4CwdihuKV/ZQ+9LFN4mJzT4DpUDyRWp1yNJDL4wxpg7B3h
         1JxVR1rdnpvH/QM9RtmarzqL6cj9xgyiu8KK2W3ANYCOv4xkv14SEl9jrIxKmNesw4H9
         Uj/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=0CbGVzaw;
       spf=pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:3201:214:fdff:fe10:1be6 as permitted sender) smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk. [2001:4d48:ad52:3201:214:fdff:fe10:1be6])
        by gmr-mx.google.com with ESMTPS id d27si1224646ejt.1.2019.10.01.14.58.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Oct 2019 14:58:57 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:3201:214:fdff:fe10:1be6 as permitted sender) client-ip=2001:4d48:ad52:3201:214:fdff:fe10:1be6;
Received: from shell.armlinux.org.uk ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:46432)
	by pandora.armlinux.org.uk with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.90_1)
	(envelope-from <linux@armlinux.org.uk>)
	id 1iFQAB-0004y6-9i; Tue, 01 Oct 2019 22:58:34 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1iFQA7-000068-VG; Tue, 01 Oct 2019 22:58:27 +0100
Date: Tue, 1 Oct 2019 22:58:27 +0100
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
Message-ID: <20191001215827.GP25745@shell.armlinux.org.uk>
References: <CAKwvOdk0h2A6=fb7Yepf+oKbZfq_tqwpGq8EBmHVu1j4mo-a-A@mail.gmail.com>
 <20191001170142.x66orounxuln7zs3@willie-the-truck>
 <CAKwvOdnFJqipp+G5xLDRBcOrQRcvMQmn+n8fufWyzyt2QL_QkA@mail.gmail.com>
 <20191001175512.GK25745@shell.armlinux.org.uk>
 <CAKwvOdmw_xmTGZLeK8-+Q4nUpjs-UypJjHWks-3jHA670Dxa1A@mail.gmail.com>
 <20191001181438.GL25745@shell.armlinux.org.uk>
 <CAKwvOdmBnBVU7F-a6DqPU6QM-BRc8LNn6YRmhTsuGLauCWKUOg@mail.gmail.com>
 <20191001205938.GM25745@shell.armlinux.org.uk>
 <20191001212608.GN25745@shell.armlinux.org.uk>
 <CAKwvOdmkmdM14BNurK3WwyG3Qc5wOFeajMtQ1D+na9mLfkim+w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CAKwvOdmkmdM14BNurK3WwyG3Qc5wOFeajMtQ1D+na9mLfkim+w@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-Original-Sender: linux@armlinux.org.uk
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass (test
 mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=0CbGVzaw;
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

On Tue, Oct 01, 2019 at 02:32:54PM -0700, Nick Desaulniers wrote:
> On Tue, Oct 1, 2019 at 2:26 PM Russell King - ARM Linux admin
> <linux@armlinux.org.uk> wrote:
> >
> > On Tue, Oct 01, 2019 at 09:59:38PM +0100, Russell King - ARM Linux admi=
n wrote:
> > > On Tue, Oct 01, 2019 at 01:21:44PM -0700, Nick Desaulniers wrote:
> > > > On Tue, Oct 1, 2019 at 11:14 AM Russell King - ARM Linux admin
> > > > <linux@armlinux.org.uk> wrote:
> > > > >
> > > > > The whole "let's make inline not really mean inline" is nothing m=
ore
> > > > > than a band-aid to the overuse (and abuse) of "inline".
> > > >
> > > > Let's triple check the ISO C11 draft spec just to be sure:
> > > > =C2=A7 6.7.4.6: A function declared with an inline function specifi=
er is an
> > > > inline function. Making a
> > > > function an inline function suggests that calls to the function be =
as
> > > > fast as possible.
> > > > The extent to which such suggestions are effective is
> > > > implementation-defined. 139)
> > > > 139) For example, an implementation might never perform inline
> > > > substitution, or might only perform inline
> > > > substitutions to calls in the scope of an inline declaration.
> > > > =C2=A7 J.3.8 [Undefined Behavior] Hints: The extent to which sugges=
tions
> > > > made by using the inline function specifier are effective (6.7.4).
> > > >
> > > > My translation:
> > > > "Please don't assume inline means anything."
> > > >
> > > > For the unspecified GNU C extension __attribute__((always_inline)),=
 it
> > > > seems to me like it's meant more for performing inlining (an
> > > > optimization) at -O0.  Whether the compiler warns or not seems like=
 a
> > > > nice side effect, but provides no strong guarantee otherwise.
> > > >
> > > > I'm sorry that so much code may have been written with that
> > > > assumption, and I'm sorry to be the bearer of bad news, but this is=
n't
> > > > a recent change.  If code was written under false assumptions, it
> > > > should be rewritten. Sorry.
> > >
> > > You may quote C11, but that is not relevent.  The kernel is coded to
> > > gnu89 standard - see the -std=3Dgnu89 flag.
> >
> > There's more to this and why C11 is entirely irrelevant.  The "inline"
> > you see in our headers is not the compiler keyword that you find in
> > various C standards, it is a macro that gets expanded to either:
> >
> > #define inline inline __attribute__((__always_inline__)) __gnu_inline \
> >         __maybe_unused notrace
> >
> > or
> >
> > #define inline inline                                    __gnu_inline \
> >         __maybe_unused notrace
> >
> > __gnu_inline is defined as:
> >
> > #define __gnu_inline                    __attribute__((__gnu_inline__))
> >
> > So this attaches the gnu_inline attribute to the function:
> >
> > `gnu_inline'
> >      This attribute should be used with a function that is also declare=
d
> >      with the `inline' keyword.  It directs GCC to treat the function
> >      as if it were defined in gnu90 mode even when compiling in C99 or
> >      gnu99 mode.
> > ...
> >      Since ISO C99 specifies a different semantics for `inline', this
> >      function attribute is provided as a transition measure and as a
> >      useful feature in its own right.  This attribute is available in
> >      GCC 4.1.3 and later.  It is available if either of the
> >      preprocessor macros `__GNUC_GNU_INLINE__' or
> >      `__GNUC_STDC_INLINE__' are defined.  *Note An Inline Function is
> >      As Fast As a Macro: Inline.
> >
> > which is quite clear that C99 semantics do not apply to _this_ inline.
> > The manual goes on to explain:
> >
> >  GCC implements three different semantics of declaring a function
> > inline.  One is available with `-std=3Dgnu89' or `-fgnu89-inline' or wh=
en
> > `gnu_inline' attribute is present on all inline declarations, another
> > when `-std=3Dc99', `-std=3Dc11', `-std=3Dgnu99' or `-std=3Dgnu11' (with=
out
> > `-fgnu89-inline'), and the third is used when compiling C++.
>=20
> (I wrote the kernel patch for gnu_inline; it only comes into play when
> `inline` appears on a function *also defined as `extern`*).

From what I can tell reading the GCC manual, the patch adding
gnu_inline should have no effect.  Maybe it was written before
-std=3Dgnu89 was in use by the kernel makefiles?

> > I'd suggest gnu90 mode is pretty similar to gnu89 mode, and as we build
> > the kernel in gnu89 mode, that is the inlining definition that is
> > appropriate.
> >
> > When it comes to __always_inline, the GCC manual is the definitive
> > reference, since we use the GCC attribute for that:
> >
> > #define __always_inline                 inline __attribute__((__always_=
inline__))
> >
> > and I've already quoted what the GCC manual says for always_inline.
> >
> > Arguing about what the C11 spec says about inlining when we aren't
> > using C11 dialect in the kernel, but are using GCC features, does
> > not move the discussion on.
> >
> > Thanks anyway, maybe it will become relevent in the future if we
> > decide to move to C11.
>=20
> It's not like the semantics of inline are better specified by an older
> standard, or changed (The only real semantic change involving `inline`
> between ISO C90 and ISO C99 has to do with whether `extern inline`
> emits the function with external linkage as you noted).  But that's
> irrelevant to the discussion.).  I quoted C11 because ctrl+f doesn't
> work for the C90 ISO spec pdf.  C90 spec doesn't even have a section
> on Function Specifiers.  From what I can tell, `inline` wasn't
> specified until ISO C99.
>=20
> GNU modes are often modifiers off of ISO C bases; gnu89 corresponds to
> ISO C90.  They may permit the use of features from newer ISO C specs
> and GNU C extensions without warning under -Wpedantic.  There aren't a
> whole lot of semantic differences, at least that I'm aware of.

Right, so GCC had inlining support before ISO C added it (which I
distinctly remember, I've been involved in Linux since 1994.)

Unless ISO C based their definition in some way off GCC's
implementation, I still don't see how quoting ISO C documents
helps this discussion when it's the GCC feature that we're using.

And none of this is relevent anyway if we use the GCC
always_inline extension *which is obviously the right way to
resolve this instance*.

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
clang-built-linux/20191001215827.GP25745%40shell.armlinux.org.uk.
