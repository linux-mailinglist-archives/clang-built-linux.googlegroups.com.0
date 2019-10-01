Return-Path: <clang-built-linux+bncBCSPV64IYUKBBYH4Z3WAKGQEI566XOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-f64.google.com (mail-ed1-f64.google.com [209.85.208.64])
	by mail.lfdr.de (Postfix) with ESMTPS id 55C57C422D
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Oct 2019 23:00:16 +0200 (CEST)
Received: by mail-ed1-f64.google.com with SMTP id y21sf9438115edr.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Oct 2019 14:00:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569963616; cv=pass;
        d=google.com; s=arc-20160816;
        b=lbIrHqFivkyiKlAsYK4D0Vt/RV3UtHT1ZZYCyamcunXq90AirE+GTf6oozXISTuWA7
         oMhuBMM+Ia0o2aGxQgHPEdMJ/c1pa45PMhmaLL1HQa+mcfnL3sWr16eIFJEI14AVo1WA
         sSr4R8Ul1A2pufA3jNTOcWZiHywb9IvBzpdpjTEhFpDHdSIZJO+afdbAui9LRKefFr3S
         o8hhEnzbJHiMS1+bVv027VLznuDYOQ2T9x4C9XL51K75JKRCfTvnPV7nzerjx6uEhUPb
         NyY6FWphwcE4llE++YBYIHx9Hq9i5YXtA6S7T+b3cNsxoM9SZ5zq0rfxbMrw2Nklfr8T
         /iMA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:sender:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date;
        bh=d4PANw1OP/5U5707J6th5p2eK+RkvQBCZFeeuaC9fzA=;
        b=sm1aVa/NVbPv/QHSK39IjrLEEW8cw+7McN11jekhQJVDqPACggOBdbkjJBYZ902/Kc
         OKvVYuR24u8vjWjgp6EwE8d1OXQULuOpBurokdi9W2RUFHcy7rDyU0uDAfVjLL4HOxBS
         2wu2S/FDqisaWueCT5IJBSETorwI/fdx/pisLie3SjJWQTjGh7/E0hX0rds9mrGj5TjN
         CFI/t7Izewh8SUGvAWAYYa4cse8RAoaLqiHdYrX7lD1576t4QLDDuaYbuLPOPsvvID6S
         E76YImTrZpB0BjVWi9BDS6jxeEiSSJo1khmHgn5+ofJwYMnBOwtfzIXZinW5dhFxrXS1
         jkfg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=Iag3wI95;
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
        bh=d4PANw1OP/5U5707J6th5p2eK+RkvQBCZFeeuaC9fzA=;
        b=BW9uYvnRglt5154KJp3Pb3gRzz97GYYECrfEkhiFBZeUOznorj8/OzO20Ac0pSYn+M
         A2ux1iPqBt+WLcCy8+QTJ8wk6pTa1bZJ9cERL3/779BzXeKWb0mNfBdxEkEgwHYUP3+C
         2fMa9vXeaMidGKK3qPBSJqko0TrWkMNitCz7rT+seHAL+D9Kj5joqbfmFh383Ebdrh+7
         LKKI7HrE75A+PxlxuZb1w/hYxvgU2obzSIJLAcpv4MIhsoo09tFdfaH1DUzed8SzXxol
         DzUJzfe8RDoibL85Y2clJt87S/KNf7iPL5RGHGK9nkGiIySzCOxJYi/Q1D83PzeIHAU7
         U1vQ==
X-Gm-Message-State: APjAAAUxV75xeEUD8jXEJkNZP48N0n1SinXLBB9FFZQUhSiy3mtWtnKC
	Ly51lpWaJWSKNcBSHLqb3hA=
X-Google-Smtp-Source: APXvYqw9jS7bGkpruf8zzI+7P0Qgyy0/LvPWdWzM4ktmD2Xr0c4qlf+eHRDr2tg573wkcYLKsg59qQ==
X-Received: by 2002:a17:907:20f1:: with SMTP id rh17mr93778ejb.110.1569963616096;
        Tue, 01 Oct 2019 14:00:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:a2d9:: with SMTP id by25ls3977953ejb.1.gmail; Tue,
 01 Oct 2019 14:00:15 -0700 (PDT)
X-Received: by 2002:a17:906:1853:: with SMTP id w19mr81305eje.232.1569963615616;
        Tue, 01 Oct 2019 14:00:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569963615; cv=none;
        d=google.com; s=arc-20160816;
        b=wSls2aWF1i80GA+mZP5Pi2oEaHrcnTqlfHn41XErC1cdT0etY9ItHIjF9ozIEZeYDU
         qhM4Al9HsUmqzv0bsrIJHsiFWJ0I+K1VzZFInDWYoD2hUJYrtjVSuOWJLsAfi6QdE0M5
         YbRtibCpGW9+8BrbstwX4V2yhHctNCsCWVoUsCoNLhV2TQ+gJxEYHd0fLfICejuPRBbm
         KwRudLdZLy18Wii+eBaBzowoXi9Sp6eM/RlfuLFhT2EDWotlDdMRULzF8RJ0eTqa11Zf
         kAN3kvjNJgMZ8qdsFSisvrsYdJ7n19Fng9bMLmHTktiLhhFFvqpt942yCbHU0933cLW4
         j31Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=sender:user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=OvremvH5B8AyvNHHwXgBILQ+CF0VODoow+40l4kJHXI=;
        b=qcy3jN9chm9fEvzaIoGg4ksMBauHa/gLCopUn213GnBMcOSASDGp2MPJ7vscxXr36b
         WRnFlJQQzd7SxjSBl1xcvpPujAenko3G669OJM0h52jrvaWKUlcqz90zvNuIJCrVKEOS
         XzrJLZnfsgi7hcqKWM/SSIdwhGdQexzLG/Q57QtVEE9PNXl6qUZ2x+A6P6lTdNtCO9cj
         hQYE9MRMXD5WEGBsmkerY5QKAviEPC2KBMtdre9a8IaxfMOFG9CGqoiCudB8cVSZnddK
         ZrJIihnJyLzQ04nXxlHrVp16kG5Dk0KCDFBd81p+G1lwZpNZjvpUgq+42j7QTZ0WNwBb
         ToSA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=Iag3wI95;
       spf=pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:3201:214:fdff:fe10:1be6 as permitted sender) smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk. [2001:4d48:ad52:3201:214:fdff:fe10:1be6])
        by gmr-mx.google.com with ESMTPS id y11si1055107edq.1.2019.10.01.14.00.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Oct 2019 14:00:15 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:3201:214:fdff:fe10:1be6 as permitted sender) client-ip=2001:4d48:ad52:3201:214:fdff:fe10:1be6;
Received: from shell.armlinux.org.uk ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:46410)
	by pandora.armlinux.org.uk with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.90_1)
	(envelope-from <linux@armlinux.org.uk>)
	id 1iFPFI-0004dA-85; Tue, 01 Oct 2019 21:59:44 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1iFPFC-0008V1-KP; Tue, 01 Oct 2019 21:59:38 +0100
Date: Tue, 1 Oct 2019 21:59:38 +0100
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
Message-ID: <20191001205938.GM25745@shell.armlinux.org.uk>
References: <20190930121803.n34i63scet2ec7ll@willie-the-truck>
 <CAKwvOdnqn=0LndrX+mUrtSAQqoT1JWRMOJCA5t3e=S=T7zkcCQ@mail.gmail.com>
 <20191001092823.z4zhlbwvtwnlotwc@willie-the-truck>
 <CAKwvOdk0h2A6=fb7Yepf+oKbZfq_tqwpGq8EBmHVu1j4mo-a-A@mail.gmail.com>
 <20191001170142.x66orounxuln7zs3@willie-the-truck>
 <CAKwvOdnFJqipp+G5xLDRBcOrQRcvMQmn+n8fufWyzyt2QL_QkA@mail.gmail.com>
 <20191001175512.GK25745@shell.armlinux.org.uk>
 <CAKwvOdmw_xmTGZLeK8-+Q4nUpjs-UypJjHWks-3jHA670Dxa1A@mail.gmail.com>
 <20191001181438.GL25745@shell.armlinux.org.uk>
 <CAKwvOdmBnBVU7F-a6DqPU6QM-BRc8LNn6YRmhTsuGLauCWKUOg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CAKwvOdmBnBVU7F-a6DqPU6QM-BRc8LNn6YRmhTsuGLauCWKUOg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-Original-Sender: linux@armlinux.org.uk
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass (test
 mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=Iag3wI95;
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

On Tue, Oct 01, 2019 at 01:21:44PM -0700, Nick Desaulniers wrote:
> On Tue, Oct 1, 2019 at 11:14 AM Russell King - ARM Linux admin
> <linux@armlinux.org.uk> wrote:
> >
> > On Tue, Oct 01, 2019 at 11:00:11AM -0700, Nick Desaulniers wrote:
> > > On Tue, Oct 1, 2019 at 10:55 AM Russell King - ARM Linux admin
> > > <linux@armlinux.org.uk> wrote:
> > > >
> > > > On Tue, Oct 01, 2019 at 10:44:43AM -0700, Nick Desaulniers wrote:
> > > > > I apologize; I don't mean to be difficult.  I would just like to =
avoid
> > > > > surprises when code written with the assumption that it will be
> > > > > inlined is not.  It sounds like we found one issue in arm32 and o=
ne in
> > > > > arm64 related to outlining.  If we fix those two cases, I think w=
e're
> > > > > close to proceeding with Masahiro's cleanup, which I view as a go=
od
> > > > > thing for the health of the Linux kernel codebase.
> > > >
> > > > Except, using the C preprocessor for this turns the arm32 code into
> > > > yuck:
> > > >
> > > > 1. We'd need to turn get_domain() and set_domain() into multi-line
> > > >    preprocessor macro definitions, using the GCC ({ }) extension
> > > >    so that get_domain() can return a value.
> > > >
> > > > 2. uaccess_save_and_enable() and uaccess_restore() also need to
> > > >    become preprocessor macro definitions too.
> > > >
> > > > So, we end up with multiple levels of nested preprocessor macros.
> > > > When something goes wrong, the compiler warning/error message is
> > > > going to be utterly _horrid_.
> > >
> > > That's why I preferred V1 of Masahiro's patch, that fixed the inline
> > > asm not to make use of caller saved registers before calling a
> > > function that might not be inlined.
> >
> > ... which I objected to based on the fact that this uaccess stuff is
> > supposed to add protection against the kernel being fooled into
> > accessing userspace when it shouldn't.  The whole intention there is
> > that [sg]et_domain(), and uaccess_*() are _always_ inlined as close
> > as possible to the call site of the accessor touching userspace.
>=20
> Then use the C preprocessor to force the inlining.  I'm sorry it's not
> as pretty as static inline functions.
>=20
> >
> > Moving it before the assignments mean that the compiler is then free
> > to issue memory loads/stores to load up those registers, which is
> > exactly what we want to avoid.
> >
> >
> > In any case, I violently disagree with the idea that stuff we have
> > in header files should be permitted not to be inlined because we
> > have soo much that is marked inline.
>=20
> So there's a very important subtly here.  There's:
> 1. code that adds `inline` cause "oh maybe it would be nice to inline
> this, but if it isn't no big deal"
> 2. code that if not inlined is somehow not correct.
> 3. avoid ODR violations via `static inline`
>=20
> I'll posit that "we have soo much that is marked inline [is
> predominantly case 1 or 3, not case 2]."  Case 2 is a code smell, and
> requires extra scrutiny.
>=20
> > Having it moved out of line,
> > and essentially the same function code appearing in multiple C files
> > is really not an improvement over the current situation with excessive
> > use of inlining.  Anyone who has looked at the code resulting from
> > dma_map_single() will know exactly what I'm talking about, which is
> > way in excess of the few instructions we have for the uaccess_* stuff
> > here.
> >
> > The right approach is to move stuff out of line - and by that, I
> > mean _actually_ move the damn code, so that different compilation
> > units can use the same instructions, and thereby gain from the
> > whole point of an instruction cache.
>=20
> And be marked __attribute__((noinline)), otherwise might be inlined via L=
TO.
>=20
> >
> > The whole "let's make inline not really mean inline" is nothing more
> > than a band-aid to the overuse (and abuse) of "inline".
>=20
> Let's triple check the ISO C11 draft spec just to be sure:
> =C2=A7 6.7.4.6: A function declared with an inline function specifier is =
an
> inline function. Making a
> function an inline function suggests that calls to the function be as
> fast as possible.
> The extent to which such suggestions are effective is
> implementation-defined. 139)
> 139) For example, an implementation might never perform inline
> substitution, or might only perform inline
> substitutions to calls in the scope of an inline declaration.
> =C2=A7 J.3.8 [Undefined Behavior] Hints: The extent to which suggestions
> made by using the inline function specifier are effective (6.7.4).
>=20
> My translation:
> "Please don't assume inline means anything."
>=20
> For the unspecified GNU C extension __attribute__((always_inline)), it
> seems to me like it's meant more for performing inlining (an
> optimization) at -O0.  Whether the compiler warns or not seems like a
> nice side effect, but provides no strong guarantee otherwise.
>=20
> I'm sorry that so much code may have been written with that
> assumption, and I'm sorry to be the bearer of bad news, but this isn't
> a recent change.  If code was written under false assumptions, it
> should be rewritten. Sorry.

You may quote C11, but that is not relevent.  The kernel is coded to
gnu89 standard - see the -std=3Dgnu89 flag.

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
clang-built-linux/20191001205938.GM25745%40shell.armlinux.org.uk.
