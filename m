Return-Path: <clang-built-linux+bncBDYJPJO25UGBBMOL46AAMGQE67NO7XA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83a.google.com (mail-qt1-x83a.google.com [IPv6:2607:f8b0:4864:20::83a])
	by mail.lfdr.de (Postfix) with ESMTPS id 1412530CFFB
	for <lists+clang-built-linux@lfdr.de>; Wed,  3 Feb 2021 00:52:18 +0100 (CET)
Received: by mail-qt1-x83a.google.com with SMTP id h8sf15667931qtj.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 02 Feb 2021 15:52:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612309937; cv=pass;
        d=google.com; s=arc-20160816;
        b=UQsuV1CbBc/CQiM6QatKVJvlL/u5117DVqhyVVWdjIeGHxSqKwYOw3dYHoYLWzGu6e
         cnTN5ImHqdN8cW0RyUMi/S5V5SeFdkYcr9hpHlRTOwHi+G+wQFvRIeVVunUg60TV1yTw
         aZm+0r3K9eWzsluFnw4Zkr2PYwQJvW9oCK2HD36QiuKs7AwoZqk/M/WwzqYLKQehR5Lw
         evbNgcw9kQ0JXEsBIxMdleNgO5djlPepOmX5ac09/1DJwgV54XZVpH8uL5POi7zWAC61
         SGCPkF+YhSbTIiWoHnlzaLPz6sW9RCeAxiedxLMwXn5oF2+dj/GJMlab+2i9eBedqmMk
         NQLw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=31nUmtHymWWJTeeLtcNLlefO8+i3HG/mJ15QUDF2aHM=;
        b=v/50MKJh4Z8ShrYIdZuQdFqeHCE8IBtkn7g7tO4uwmWv+7rp0DAx3XEHt99nSCr0ne
         dQfPPCOM/9Vzeqfk0z7FjuSeadZBgCBnUONOMbUky9s89vNiCWAJhnVLz0La+YAcpVrB
         QZ9l8xCcStj1oatUQYqQLKjs8QuZXmeJSSC5EFy8s0cEPtUg1o4i+cW+DDSHS2OJSMGd
         imZ/hdiDZyk2fqTAPk5JFMVn8fG8QOqafqLSaybwvwANZNo0Dwfkg0sWKEBnMsqa5Q05
         EL5TkMaFG43WkSzVr7zGpxDPSpz0sB2sUn+xY967EhIQ8d0GV5QiAAki+0lvzQZmvwpm
         1UJQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ez8LC3Ac;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::530 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=31nUmtHymWWJTeeLtcNLlefO8+i3HG/mJ15QUDF2aHM=;
        b=Kup0Vd121VzLF6wv5CvzQ1kmOk1UJTMH/faXx1IXcB2L6hyQ4kUn3SIUrcXhaZG8yc
         G12kC3cOkT5beRVJomsk3tAlIgmLuovv65KMeiPdF6oEfr5woZ4qs8eIT5LSSzw+lvaz
         Y2Y3TrNxUiSksJwZdiawSZTQcVPCZKGzdVaXlG7Rjeh9O8fydbWJsRvqxAoZnIQOmeja
         iFbtc1TiyOqqkKx9jBUP5/1f3EFiTZXuvoyVbGT9aH6S/eD+K0hhibr6Wk+JhLyg7Jpq
         capvrgODQRwSqEOcyJFJbNqoLzAAE9nOH9e8wsmY3o8sd8KEuWBDBntVK+PZm0/37j3q
         pmvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=31nUmtHymWWJTeeLtcNLlefO8+i3HG/mJ15QUDF2aHM=;
        b=cj5nowQglmE8dkG/OAKTmWuiOtkMXiWQNhy8/l+YcSOsfKMOCAU6HFWr8r08jO7aYK
         c1kwUAb4XV3hSvuCEtcAaziYc8E9g67cDbL5Sp3wtO13FVxDB65pl8MXq2pOOM1SIJSf
         l2CyWEuOMvK9QzkhkNbMb64StNy/DamfsoT1xstEhrOVDFqK2b1Y/awqcVM0n+O3mOKI
         YK3pgCgDUC051u+PoT2E/nFdUMfkMmDyFiGwbl6M9tH2f3f0YQYggC7DdFmIKlh/oGU9
         gzguAVd2mOdigOF099cZ0p8mDoxwnM720zxt90GsZR5V//QMAyeG3Ny0XZ9v4IRv9IPA
         kiVA==
X-Gm-Message-State: AOAM5330iGsHDciDLPMTKABZ6EEZZkRXvAES2z1dV9ZqrvZiJxfsSJDr
	iPZoAH2boynw68TT+XSal/s=
X-Google-Smtp-Source: ABdhPJy93DlrjQDR/MtKptrrM5/E9Y05yX7ESB5jGYv2tX0A8Hj4vUgvOiFPAW5qhWnHuPxexE4wew==
X-Received: by 2002:a05:6214:1341:: with SMTP id b1mr558366qvw.57.1612309937162;
        Tue, 02 Feb 2021 15:52:17 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:1001:: with SMTP id z1ls167781qti.4.gmail; Tue, 02 Feb
 2021 15:52:16 -0800 (PST)
X-Received: by 2002:ac8:5a01:: with SMTP id n1mr327194qta.107.1612309936769;
        Tue, 02 Feb 2021 15:52:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612309936; cv=none;
        d=google.com; s=arc-20160816;
        b=LWGN+d156NA1MYKVBjCCF0qlFlDaStImRrmzVB9ZX6tVZXnJuIau1zVbB3tHtAfEQe
         +NZv4PxnJ0TCPZ8sXocRWnD4frr6PBuKLCC5ZC8KJJqY9FdPnugPlua08CDkuv2jTIYK
         SM+6XiUDQ5rArIP0jfFTe5kikK04ebn5DCmD7wHDBUSe/A5Q0uJ0/P57cqflPYdPs0ha
         ay8+TiRw1P1p7oNLT+bZOU8M2Juub6h/BaV9vh+7CX6XeKHb4PiiuBr4XWjK774+U5Sc
         0fz7X+Pr8e4wax/bte+Bcqd4/aceaowEIC6S1gw4dK82jVoC3HjdZA7HK/aNBwTxE6OQ
         o5Pw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=lvyHIYmrAMfcUjU2HzXYuSfOiDXorFLduwgI7Bqj73I=;
        b=PmeRlFcot8EHknzDFhiC94YdrMduBzriHGi+U8fGlgr7FSzVRqINueCnVhRoEEtw/G
         GOVBlvkFBBZfoVvjK2XsN0zCG/povegAEtx6i4Fcvc9CKjJ1nGx6Lvg1TtXKR1z+p5Vj
         5IZLqu9unogV78fjH0JgAJTVmsvC51k0HY165UQejAwu4heu8/2UoX1oGmDMql1q+TXU
         iflhALlFuMCoVL9KxiAcVI30I6GDOijbNy9ANHqlcHza1OSFriIiOmAfblg+3FRWGcKl
         IqusKDalVEM11cgr8vjUyrMyc+qfqv3K+arSrH8TvV8QYRmIzueq6gxfIneiUmWjpmI3
         eYFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ez8LC3Ac;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::530 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com. [2607:f8b0:4864:20::530])
        by gmr-mx.google.com with ESMTPS id h123si22482qkf.6.2021.02.02.15.52.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Feb 2021 15:52:16 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::530 as permitted sender) client-ip=2607:f8b0:4864:20::530;
Received: by mail-pg1-x530.google.com with SMTP id r38so15988867pgk.13
        for <clang-built-linux@googlegroups.com>; Tue, 02 Feb 2021 15:52:16 -0800 (PST)
X-Received: by 2002:a65:4201:: with SMTP id c1mr590436pgq.10.1612309935701;
 Tue, 02 Feb 2021 15:52:15 -0800 (PST)
MIME-Version: 1.0
References: <20210120173800.1660730-13-jthierry@redhat.com>
 <20210127221557.1119744-1-ndesaulniers@google.com> <20210127232651.rj3mo7c2oqh4ytsr@treble>
 <CAKwvOdkOeENcM5X7X926sv2Xmtko=_nOPeKZ2+51s13CW1QAjw@mail.gmail.com>
 <20210201214423.dhsma73k7ccscovm@treble> <CAKwvOdmgNPSpY2oPHFr8EKGXYJbm7K9gySKFgyn4FERa9nTXmw@mail.gmail.com>
 <20210202000203.rk7lh5mx4aflgkwr@treble> <CAKwvOd=R_ELec5Q3+oe9zuYXrwSGfLkqomAPOTr=UH=SZPtKUw@mail.gmail.com>
 <20210202233636.nvbl6wivgnhacbvg@treble>
In-Reply-To: <20210202233636.nvbl6wivgnhacbvg@treble>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 2 Feb 2021 15:52:04 -0800
Message-ID: <CAKwvOdnr5LcVbv2=2h+j8-ekvoB6PezmSOWhPzZdMaDG6eniag@mail.gmail.com>
Subject: Re: [RFC PATCH 12/17] gcc-plugins: objtool: Add plugin to detect
 switch table on arm64
To: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Julien Thierry <jthierry@redhat.com>, Ard Biesheuvel <ardb@kernel.org>, 
	Mark Brown <broonie@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Kees Cook <keescook@chromium.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	linux-efi <linux-efi@vger.kernel.org>, linux-hardening@vger.kernel.org, 
	LKML <linux-kernel@vger.kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Peter Zijlstra <peterz@infradead.org>, raphael.gault@arm.com, Will Deacon <will@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Bill Wendling <morbo@google.com>, 
	Pete Swain <swine@google.com>, Yonghyun Hwang <yonghyun@google.com>, live-patching@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ez8LC3Ac;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::530
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

On Tue, Feb 2, 2021 at 3:36 PM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
>
> On Tue, Feb 02, 2021 at 02:33:38PM -0800, Nick Desaulniers wrote:
> > On Mon, Feb 1, 2021 at 4:02 PM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
> > >
> > > On Mon, Feb 01, 2021 at 03:17:40PM -0800, Nick Desaulniers wrote:
> > > And yes, objtool has been pretty good at finding compiler bugs, so the
> > > more coverage the better.
> > > > The idea of rebuilding control flow from binary analysis and using
> > > > that to find codegen bugs is a really cool idea (novel, even? idk),
> > > > and I wish we had some analog for userspace binaries that could
> > > > perform similar checks.
> > >
> > > Objtool is generic in many ways -- in fact I recently heard from a PhD
> > > candidate who used it successfully on another kernel for an ORC
> > > unwinder.
> >
> > That's pretty cool!  Reuse outside the initial context is always a
> > good sign that something was designed right.
>
> So basically you're saying objtool is both useful and well-designed.  I
> will quote you on that!

Haha, all I'm saying is that while I'm not proud that it did find bugs
in LLVM (and I do have existing bugs found by it to fix on my plate),
I don't see who else or how else those would have been spotted, and I
can appreciate that.  I think the tools given to us are broken (by
design, perhaps), so anything that can help us spot issues might help
our code live longer than we do.

I also think that there's room for improvement and experimentation in
debug info formats, though there is currently a proliferation to
support.  Live patching and eBPF seem to have some functional overlap
IIUC, strengths/weaknesses, and their own unique debug info formats to
go with it.  Supporting each one does require some level of toolchain
support or coordination (or complexity, even).
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnr5LcVbv2%3D2h%2Bj8-ekvoB6PezmSOWhPzZdMaDG6eniag%40mail.gmail.com.
