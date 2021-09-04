Return-Path: <clang-built-linux+bncBD4LX4523YGBBUHFZWEQMGQEZLWZQKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id E4C32400B79
	for <lists+clang-built-linux@lfdr.de>; Sat,  4 Sep 2021 15:21:22 +0200 (CEST)
Received: by mail-pf1-x43e.google.com with SMTP id o130-20020a62cd88000000b004053c6c1765sf1242778pfg.6
        for <lists+clang-built-linux@lfdr.de>; Sat, 04 Sep 2021 06:21:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630761681; cv=pass;
        d=google.com; s=arc-20160816;
        b=EmGQgH8CGmTfBS1ZVkzX61TKOigN3FZKX+orCo1wX3l7cNo4SdLat9M5/I1RYSzktj
         Kycae05S1t7UIgNRoa6pRIgG0X93iJNZ9gXLs34qzh+Kran9TdXFH9oq+Yc3Z07B7JDy
         MFU84Aq6vjMC+d0I6CuRFoCHkpJgyqrD1N25zHqj1FyNjuBABmDWeGvkhMWHdKdu8mpl
         WXmBx5TN9+J8uQX4+ohkpJrL1piMwgfLRrRq5x3v2W6w9wuIjy0PhVEju4cJLpoUys7c
         EhUhGLh6qnBNDM/52glNcl2hu2KDLZqlxlRUqnNaMEdQ2CX7y0pC4qRdwCOQwnX7bKVU
         A16g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=kRlAOPKRtVh4ivexN1fhm9rYUDc5kRnryJjbFEySRXQ=;
        b=jbSu4rDMy8OnoQ94E5836XTos8u/mB4IeT5155FG1u6stF9q6oz0DXfGPZhxCuaZsl
         IZRwBNjCJBHMQ1N0znP0y6lLjZbFe8h4kvMCC2nrD2NlQvkjqDOCSrtx1nsbYqtefqm+
         m14MS/N9DmiV4hNb14tv4XP7/6fqYiiibekKdP2vpgYElv0DxcwlLvJv2n9yiDxU+cUS
         faw4wDkvNVGjurVNwUNjSk7lFpbV5vez+iXUpkc4LDGYr1i+yuxBdq0acsJlVaSuftX3
         BBdVe3itJSnj+TOWWaUHVK02yPaDeU/cOdF8u8w3drngRg4fDu7WsIwECK79KIHqxGcN
         qhkA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kRlAOPKRtVh4ivexN1fhm9rYUDc5kRnryJjbFEySRXQ=;
        b=FSVRBC9Bsdsxd0zPuZvzTnsha2mTKy34y9PXghNxp1aK5eKJ751la9mrUn2euvxm2e
         VekaasdQvvH7LLfDIotu4UkTgBihlLq0HSl4WfNGumC3qxUedLNG2W1ahb/gzeJ/zFQi
         asXNKsRYx0I5ttdFG3tVx4kGczQRMWAkqDQPW2d2WJtWizC7sRRWWGrXiuqQAFpTLab3
         QBplVS1Wu2i7MSOivkBCgQAddpIHhbHijf16+nywKTwyoFMueQdWEMwXfX7weVair9hi
         1fOLrl2jBm1cevGHH4dNRErIik4a1WwSmKa5WWgphEVm86u5LZa54ExS0+pPqN50x1Ut
         gTTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kRlAOPKRtVh4ivexN1fhm9rYUDc5kRnryJjbFEySRXQ=;
        b=LIMgkSCGZR9Oxq/hlb6cq5PaKL6bIGFMhWiANUpzBlX9wFaTylJ/BHi5s+HYFnMGKm
         B1yBiGgCP+Ln10lGM0yJk/JXP0Luv8iFP0Gsxb8cPCcRyJn31dcM6jLAZG0sUbzw+/nZ
         Km59A9LtMqF4Pc7Z7oPSMiH+PD9K7fPIjMWnCdnJTQ9nzOvDQ0qQwsdxFMKGWBA5WtXI
         fwPyAxOlysSuYPe/+fUuSXSIIECG1HgIQfbdBU6pataeT462qCX4Dzjve8WEUfMqXpOt
         B9iHwq80dirY5/iohCz2s9qJIOTI+++KP8YNDtM2IMi88lHr9W4AWglWrXSUFyrWUVjR
         tVSg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532DRQ1gFk6zIjsYWZ/EhJ/zfuPV2w+2eIEdBkEmc9wep4dqFy4z
	acqwueMUMH/gzGp0uTXyQtg=
X-Google-Smtp-Source: ABdhPJwxZfDsBBVgVniJQWXC9zvl9ap0LUfIE718GseasyOTUUCahbQoaYHmbqkJOq5yYUIG/lS9aA==
X-Received: by 2002:a17:903:30c4:b0:13a:8c8:a2b0 with SMTP id s4-20020a17090330c400b0013a08c8a2b0mr3292076plc.87.1630761681453;
        Sat, 04 Sep 2021 06:21:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:6252:: with SMTP id q18ls905470pgv.0.gmail; Sat, 04 Sep
 2021 06:21:19 -0700 (PDT)
X-Received: by 2002:a62:2c51:0:b029:329:932b:9484 with SMTP id s78-20020a622c510000b0290329932b9484mr3588165pfs.13.1630761679553;
        Sat, 04 Sep 2021 06:21:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630761679; cv=none;
        d=google.com; s=arc-20160816;
        b=Ag847BZ6iv/TK62jIQ7KGBthhI5WX9SLq5R+LY2W9fl5Zq3EtI8VpcRKqs94oL/iyP
         mHSS9vvNrR3/6q05sngglf2DqxWGq173ihJ8JkVp77fcpS1a7cUi1XHO41XxJypR4ZBT
         Htf7rJCXdL3Hw+a8UMnxoA5lribMuxrDT6UMqhcMf0sAqFUCr38DBbDjj7TXEQlHKnBl
         l0h++jfl+3Z4z4F+7e5JtxbJx286gyQM8Aakt2rCKsrtMPUwd6J0WKH4HFQelvUcwKDA
         n7GUZgCP1X8GmClLUSL6cT5f+zyGzzB9ze7AX5Az2dF5oLnsBOgpcVph52YqrJYHH8PZ
         CO6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date;
        bh=ErDeNNY+EQZDul2a5rUN6LsIcFgNdzSYITf+Hwk7jAk=;
        b=slaej6dnxlMu1adprB7DpdRbmyd68SrLYugBpE20XJMTT6AF6nCh2T9Txfv4K03YGb
         BeMXmPqiSYIoVLZhlL1VJ+Kb5fic2tZ+qRX/mGTK8BpT377ZxJm81cFpLVukwoAbKiFR
         itBH0p+lfg04vj61MqHPnEy30sCRZpNUV4HNlIylObF/1WVCH3VYMmFmVHt/p6s8NANP
         qfXqQzjZFnkes1+L8tWWB7wVemPf+aDouEWt96ddNBTNOvSmMFIvfeuQZiqmG66mxCZp
         CKiJbbraEHCQ1sL4sGPsddJMpcQWEPhGVkmZJ8faq2/qiiApnX7OSn0IRjIq7ArXyr3Z
         cUPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTP id n63si114415pfd.3.2021.09.04.06.21.18
        for <clang-built-linux@googlegroups.com>;
        Sat, 04 Sep 2021 06:21:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id 184DJCVJ031110;
	Sat, 4 Sep 2021 08:19:12 -0500
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id 184DJBeH031102;
	Sat, 4 Sep 2021 08:19:11 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Sat, 4 Sep 2021 08:19:11 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Florian Weimer <fweimer@redhat.com>
Cc: Nathan Chancellor <nathan@kernel.org>,
        Linus Torvalds <torvalds@linuxfoundation.org>,
        Masahiro Yamada <masahiroy@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        llvm@lists.linux.dev, linux-toolchains@vger.kernel.org
Subject: Re: [GIT PULL v2] Kbuild updates for v5.15-rc1
Message-ID: <20210904131911.GP1583@gate.crashing.org>
References: <CAK7LNAQ0Q6CdXaD-dVGj_e3O3JYs_crpejWKpXHYQJYxyk-1VQ@mail.gmail.com> <CAHk-=wgoX0pVqNMMOcrhq=nuOfoZB_3qihyHB3y1S8qo=MDs6w@mail.gmail.com> <3b461878-a4a0-2f84-e177-9daf8fe285e7@kernel.org> <878s0c4vng.fsf@oldenburg.str.redhat.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <878s0c4vng.fsf@oldenburg.str.redhat.com>
User-Agent: Mutt/1.4.2.3i
X-Original-Sender: segher@kernel.crashing.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as
 permitted sender) smtp.mailfrom=segher@kernel.crashing.org
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

On Sat, Sep 04, 2021 at 10:01:07AM +0200, Florian Weimer wrote:
> * Nathan Chancellor:
> > We set up the linux-toolchains mailing list after Plumbers 2020 to
> > have a common place that kernel developers can bring issues and
> > discussion to both clang and GCC folks. I am not sure who exactly from
> > the GCC world is subscribed but I have added it now to see.
>=20
> Someone said that they =E2=80=9Cagree with the reasoning=E2=80=9D, but th=
e original
> patch does not provide one.  It looks like it's about preventing the use
> of compiler-supplied header files, but even that doesn't really answer
> the question: why?
>=20
> Especially since some parts of the kernel actually need some of those
> header files.

Let me quote the original mail (I had to dig it out of the archives as
well, no nice threading, too lazy, sorry):

> On Thu, Sep 2, 2021 at 4:31 PM Masahiro Yamada <masahiroy@kernel.org> wro=
te:
> >
> > I fixed the warnings observed in the previous PR.
>=20
> Ok, let's try it again.
>=20
> >  - Add <linux/stdarg.h> to the kernel source instead of borrowing
> >    <stdarg.h> from the compiler.
>=20
> So I certainly agree with the reasoning, but this worries me a bit.
>=20
> stdarg is truly intimately an internal compiler file, in ways that
> stddef (to pick another example) isn't.
>=20
> Yeah, yeah, offsetof() is "kind of compiler internal", and we end up
> using __compiler_offsetof(), but in the absence of that we *can* just
> do it by hand. So offsetof() really is one of those things where we
> can just do our own version if some compiler is being difficult.
>=20
> But va_start and friends absolutely *must* match the exact compiler versi=
on.
>=20
> It does look like both gcc and clang have just standardized on using
> __builtin_xyz for all the different stdarg things, and so I approve of
> what that <linux/stdarg.h> ended up looking like.
>=20
> But at the same time, it does make me go "ok, this is a big new
> assumption that we've consciously avoided for a long time".
>=20
> Nick is already on the cc here for other reasons, but let's add the
> clang-built list and Nathan explicitly. Because this basically
> codifies that
>=20
>     typedef __builtin_va_list va_list;
>     #define va_start(v, l)  __builtin_va_start(v, l)
>     #define va_end(v)       __builtin_va_end(v)
>     #define va_arg(v, T)    __builtin_va_arg(v, T)
>     #define va_copy(d, s)   __builtin_va_copy(d, s)
>=20
> being the way all the supported compilers work.
>=20
> Did people talk to any gcc maintainers too? We don't have the same
> kind of "gcc kernel people" list or contacts. The above builtins have
> been the case for a long long time for gcc, so I don't think it's
> wrong or likely to change, but I think it would be a good thing to
> just make compiler people aware of how we're now relying on that
> explicitly.
>=20
> (Side note: Linux using the compiler <stdarg.h> goes so far back that
> it very much predates all those nice builtins. I still have memories
> of <stdarg.h> being a collection of nasty per-architecture messes back
> in the bad old days. So I'm actually happy we can do this now, but
> there most definitely was a time when we really really had to use the
> compiler-provided stdarg.h).
>=20
>                 Linus

<stdarg.h> is a header that any C implementation is required to provide
to give some certain functionality (one type and four macros, in this
case, mentioned above).  No implementation is allowed to put anything in
those headers that can conflict with anything in user code or in some
implementation's internals, and I haven't heard of any implementation
breaking in that way for decades, there is absolutely no reason not to
use <stdarg.h>.

It is one of the few headers required from freestanding implementations
even (and <stddef.h> is another for that matter: the full list is
<float.h>, <iso646.h>, <limits.h>, <stdalign.h>, <stdarg.h>,
<stdbool.h>, <stddef.h>, <stdint.h>, and <stdnoreturn.h>).

I recommend using this.  It is what it is for.  It works in all
compilers.  Not using it is not writing in C.


Segher

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210904131911.GP1583%40gate.crashing.org.
