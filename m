Return-Path: <clang-built-linux+bncBDYJPJO25UGBBZXKZ3WAKGQEWWYHUTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B70DC41B7
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Oct 2019 22:21:59 +0200 (CEST)
Received: by mail-ot1-x33e.google.com with SMTP id f26sf8507790otq.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Oct 2019 13:21:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569961318; cv=pass;
        d=google.com; s=arc-20160816;
        b=VyafiJjSeDH9YCiXfrc/hgMz5zJ3VtGdxi2jk7lkaL+EaXP0zfB+mIQw4wgrv+l1n0
         zHGwUMt0qGPFgluuMlIlJ5uwcq3/uHt9rJNQBDq5LG54F/ANj61/4jEL4CM36K5cR9Ei
         7zfBBgptxKKQ9x7fpqPYDUtxdga05/wt8B4jfFoWArESyrVOPSvLf55rDRcoe9bPujxk
         LLlFk8m9fwTmlNMXNj7zvHLni1/d8/A/yh/BXJbmOYZ0NwFIreq2LqQbf/XLAXF47z5H
         fFC8FxZMPGTWmxaOBQd2p/7qk1PUTg9+xAvd59rpGKb++AQfDrG8w7LB+bRHPVjxFD5e
         cljQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=EWutayct0VmPJT2G+AYukgPJZem3v+U3ukHK1Do7utA=;
        b=dT1Up2lddNH4uhXe/y7TgtDAVPbjOWqKQOvSa2uS2XhOyOH1lOf8mdHFZUDRS2nuSl
         ugqC2V0DjsUg26LlhvlVIgGQe2FH8ox8AYXr1MCcwcYFvMmUQFUhQGaSPINz/BeQoZ6W
         1i7cdoU/hO7+kKD9yBaiUU7iZFEOnRK94ozsgSMxC61O+tWRdg2hZeBKoVCNLV/u5u7y
         qtOD/v328xRtnIdWyimwL5gluVhjhd+76HCpV6489QqsTAtFVlKeZmRdWcJoNCsFuuFU
         L/rX64QthJyo/sLKw8vSagivsgZB7b7MqvzYDYsvoIzKSacFRks32hvTG06T0eSjOG6A
         j9KQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LxyFxDLx;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=EWutayct0VmPJT2G+AYukgPJZem3v+U3ukHK1Do7utA=;
        b=TBRgpHmq0ogLUgvz8c7h1Lw/Yuhha23Tiq498y5TqbM92lcypQOU5nGCaIQFdHdOhO
         GRh3vu4RfHbFYpEnlsY8ImdI5CmJPRigGo+B6w565wXU8iVDxUi2hqzh9cEBzYq7WOI6
         IljF9k+KME9MADGkgK250+mZsOt0tQ9UCMglHFtXijpZLF5rgg2Oh94VqNQOTJxAScrr
         /vL8kynmooH+XprDVs7o8WuqxzCiTotZI77yPobD6ItvCBWM0Bz726rJGf4GsecshmkM
         DGkIHxfsAQvBaoOJt1NHHzwyVohd4qfSFAHeW7JNtZrBNR0ge+HstGDHzhESQCou4Kkk
         PpyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EWutayct0VmPJT2G+AYukgPJZem3v+U3ukHK1Do7utA=;
        b=SRvkzaT7XrRaJ9+17aigzOdUbHRx8ioZEM5ImDVLBgILzcz6bIi+INzZzRSbO0g/Co
         xpgAaVyT0QAWLUZro8/RbFDVoPCYX/RMhtNHaKYEASbL68jrORgPsIMgOVNde/rITsxC
         Ekv5AaCQFRQlsEkPzK4JJSkU41/X4PUTNY+9D0iR0BfWZaIUelMNbjfgAnwGafU6RUSs
         Lc7Udrs4zgYPeLSyiANsYS5mYOgzvcaj5/CWSzt7cTDkBC2y1cyqflS6jxIuWo3UfTaR
         zV03AJ9Q96VqYHaSC3tkBoybu2qAiSzTjdZxnexX8V4zX2+zz/Yk+Gk6w5F8XGILXnti
         Ltig==
X-Gm-Message-State: APjAAAUDIKSRBy20e/z9VXwnZoPlxxACtDbbfSNbGg+PG8xbjukIKFyF
	MtHUDJmYhUOr0Zp0tmhlmXA=
X-Google-Smtp-Source: APXvYqykBn6spGZqhSimFzgOuOKYXPxi4h9ib9VQUd+VhZAP1GhjknIipYbIH5vLPWK/n0BNqArdvQ==
X-Received: by 2002:a9d:61cb:: with SMTP id h11mr3652981otk.184.1569961318150;
        Tue, 01 Oct 2019 13:21:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:53:: with SMTP id v19ls2166oic.13.gmail; Tue, 01
 Oct 2019 13:21:57 -0700 (PDT)
X-Received: by 2002:aca:4bc4:: with SMTP id y187mr5387315oia.80.1569961317803;
        Tue, 01 Oct 2019 13:21:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569961317; cv=none;
        d=google.com; s=arc-20160816;
        b=EmrqWmb2CPG/q9jKOXTUYN6bbOmKLiOanzOrfWCO4SdYjC/JOcoZ18L2gGHwCgKESv
         pUIQ/T4qGkQn0lT+eH9+uwh41QtVcn/x1ZcpVR08ptSZI+2cGpiDlG6BxPcgam95IAAi
         7PCdNoR4LfK4zUxjoUr3lMGZNPeo4+XQPLWcxaYZGgNWLVfG4pCnKuAdiY2X6IrL5dXN
         v6Wpip27DTj3vOAO6sQRq9IsU5N3KgTAZpQwAapCfMjMlWa+x0Sp9k0bpz9XxPVZFOkV
         JZE4njM9u/NdfTBmoBlBqblIDEK2tnVm9XPzTnlGuXDREoLjvoiB67oFp+2OWlrFG3BH
         EAeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=O3nprpczOYxtdd8ScPY3MhrdWBir8yiSGFH+vgNdqwU=;
        b=TOVgYeq4cKm3UXsX7pWdEit4sMOywmx9JDvj2nFeEdvb7pXADtOIWyunX4TpIc9V4J
         ETUIZC1ORO3EINt0a7HD9RdvEO5UJvdxCcMPzwjv07hGVV3h9a3fx+L6AasFDItnmAIL
         IL3nJ0OIEZsrI79NwIChweOY10txxFfs6f4hbkKgUq0m8bWxIl1VoCc9bzeEY4JtkQOs
         TgWeGkCqJL6BXBNUGiecHHb09KMIj7TWBUPlVXaI5vFXfsXoDlgF7c5wIrgLxitXYq9M
         zsE/uyC2RYLACOWS4aN5TDFMldNWpcYcDAlO9m/Ne3YO0DRGu+tVWc2WWltr9xGv5pfU
         kpvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LxyFxDLx;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id n63si911402oib.3.2019.10.01.13.21.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Oct 2019 13:21:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id y72so8869309pfb.12
        for <clang-built-linux@googlegroups.com>; Tue, 01 Oct 2019 13:21:57 -0700 (PDT)
X-Received: by 2002:a63:7153:: with SMTP id b19mr31503598pgn.10.1569961316418;
 Tue, 01 Oct 2019 13:21:56 -0700 (PDT)
MIME-Version: 1.0
References: <20190930112636.vx2qxo4hdysvxibl@willie-the-truck>
 <CAK7LNASQZ82KSOrQW7+Wq1vFDCg2__maBEAPMLqUDqZMLuj1rA@mail.gmail.com>
 <20190930121803.n34i63scet2ec7ll@willie-the-truck> <CAKwvOdnqn=0LndrX+mUrtSAQqoT1JWRMOJCA5t3e=S=T7zkcCQ@mail.gmail.com>
 <20191001092823.z4zhlbwvtwnlotwc@willie-the-truck> <CAKwvOdk0h2A6=fb7Yepf+oKbZfq_tqwpGq8EBmHVu1j4mo-a-A@mail.gmail.com>
 <20191001170142.x66orounxuln7zs3@willie-the-truck> <CAKwvOdnFJqipp+G5xLDRBcOrQRcvMQmn+n8fufWyzyt2QL_QkA@mail.gmail.com>
 <20191001175512.GK25745@shell.armlinux.org.uk> <CAKwvOdmw_xmTGZLeK8-+Q4nUpjs-UypJjHWks-3jHA670Dxa1A@mail.gmail.com>
 <20191001181438.GL25745@shell.armlinux.org.uk>
In-Reply-To: <20191001181438.GL25745@shell.armlinux.org.uk>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 1 Oct 2019 13:21:44 -0700
Message-ID: <CAKwvOdmBnBVU7F-a6DqPU6QM-BRc8LNn6YRmhTsuGLauCWKUOg@mail.gmail.com>
Subject: Re: [PATCH] compiler: enable CONFIG_OPTIMIZE_INLINING forcibly
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Cc: Will Deacon <will@kernel.org>, Masahiro Yamada <yamada.masahiro@socionext.com>, 
	Linus Torvalds <torvalds@linux-foundation.org>, 
	Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, Andrew Morton <akpm@linux-foundation.org>, 
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, linux-arch <linux-arch@vger.kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Stefan Wahren <wahrenst@gmx.net>, Kees Cook <keescook@google.com>, Arnd Bergmann <arnd@arndb.de>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=LxyFxDLx;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441
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

On Tue, Oct 1, 2019 at 11:14 AM Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> On Tue, Oct 01, 2019 at 11:00:11AM -0700, Nick Desaulniers wrote:
> > On Tue, Oct 1, 2019 at 10:55 AM Russell King - ARM Linux admin
> > <linux@armlinux.org.uk> wrote:
> > >
> > > On Tue, Oct 01, 2019 at 10:44:43AM -0700, Nick Desaulniers wrote:
> > > > I apologize; I don't mean to be difficult.  I would just like to av=
oid
> > > > surprises when code written with the assumption that it will be
> > > > inlined is not.  It sounds like we found one issue in arm32 and one=
 in
> > > > arm64 related to outlining.  If we fix those two cases, I think we'=
re
> > > > close to proceeding with Masahiro's cleanup, which I view as a good
> > > > thing for the health of the Linux kernel codebase.
> > >
> > > Except, using the C preprocessor for this turns the arm32 code into
> > > yuck:
> > >
> > > 1. We'd need to turn get_domain() and set_domain() into multi-line
> > >    preprocessor macro definitions, using the GCC ({ }) extension
> > >    so that get_domain() can return a value.
> > >
> > > 2. uaccess_save_and_enable() and uaccess_restore() also need to
> > >    become preprocessor macro definitions too.
> > >
> > > So, we end up with multiple levels of nested preprocessor macros.
> > > When something goes wrong, the compiler warning/error message is
> > > going to be utterly _horrid_.
> >
> > That's why I preferred V1 of Masahiro's patch, that fixed the inline
> > asm not to make use of caller saved registers before calling a
> > function that might not be inlined.
>
> ... which I objected to based on the fact that this uaccess stuff is
> supposed to add protection against the kernel being fooled into
> accessing userspace when it shouldn't.  The whole intention there is
> that [sg]et_domain(), and uaccess_*() are _always_ inlined as close
> as possible to the call site of the accessor touching userspace.

Then use the C preprocessor to force the inlining.  I'm sorry it's not
as pretty as static inline functions.

>
> Moving it before the assignments mean that the compiler is then free
> to issue memory loads/stores to load up those registers, which is
> exactly what we want to avoid.
>
>
> In any case, I violently disagree with the idea that stuff we have
> in header files should be permitted not to be inlined because we
> have soo much that is marked inline.

So there's a very important subtly here.  There's:
1. code that adds `inline` cause "oh maybe it would be nice to inline
this, but if it isn't no big deal"
2. code that if not inlined is somehow not correct.
3. avoid ODR violations via `static inline`

I'll posit that "we have soo much that is marked inline [is
predominantly case 1 or 3, not case 2]."  Case 2 is a code smell, and
requires extra scrutiny.

> Having it moved out of line,
> and essentially the same function code appearing in multiple C files
> is really not an improvement over the current situation with excessive
> use of inlining.  Anyone who has looked at the code resulting from
> dma_map_single() will know exactly what I'm talking about, which is
> way in excess of the few instructions we have for the uaccess_* stuff
> here.
>
> The right approach is to move stuff out of line - and by that, I
> mean _actually_ move the damn code, so that different compilation
> units can use the same instructions, and thereby gain from the
> whole point of an instruction cache.

And be marked __attribute__((noinline)), otherwise might be inlined via LTO=
.

>
> The whole "let's make inline not really mean inline" is nothing more
> than a band-aid to the overuse (and abuse) of "inline".

Let's triple check the ISO C11 draft spec just to be sure:
=C2=A7 6.7.4.6: A function declared with an inline function specifier is an
inline function. Making a
function an inline function suggests that calls to the function be as
fast as possible.
The extent to which such suggestions are effective is
implementation-defined. 139)
139) For example, an implementation might never perform inline
substitution, or might only perform inline
substitutions to calls in the scope of an inline declaration.
=C2=A7 J.3.8 [Undefined Behavior] Hints: The extent to which suggestions
made by using the inline function specifier are effective (6.7.4).

My translation:
"Please don't assume inline means anything."

For the unspecified GNU C extension __attribute__((always_inline)), it
seems to me like it's meant more for performing inlining (an
optimization) at -O0.  Whether the compiler warns or not seems like a
nice side effect, but provides no strong guarantee otherwise.

I'm sorry that so much code may have been written with that
assumption, and I'm sorry to be the bearer of bad news, but this isn't
a recent change.  If code was written under false assumptions, it
should be rewritten. Sorry.
--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdmBnBVU7F-a6DqPU6QM-BRc8LNn6YRmhTsuGLauCWKUOg%40mai=
l.gmail.com.
