Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBSGVQP5AKGQEYYRAI3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id EF3D824E6C5
	for <lists+clang-built-linux@lfdr.de>; Sat, 22 Aug 2020 11:52:09 +0200 (CEST)
Received: by mail-oo1-xc3d.google.com with SMTP id s64sf2312117ooa.22
        for <lists+clang-built-linux@lfdr.de>; Sat, 22 Aug 2020 02:52:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598089929; cv=pass;
        d=google.com; s=arc-20160816;
        b=QyVB4yTWp/EOsHB+ukYcoDvJzO8z7h9jcxLGa4M7bg05SeghxfT/QTXLM03vj4BN2P
         b3b6iLlaResLRQ4/Vf5Fgp5k3UFbxyqDaXdmWHxU24QNZS5UHX9EkiKTG88Wa8taiPYV
         Evc6lbqL7h50DD/y4IAHPnfxiEH35zv7tKpDhS/iEk1xWTraaDuWpy96QcC3XxArjPa3
         nTybHH0fE5mfkQ6FwJmQrtkpEQQK3qcFb3kzZqx2gimXCjwUqutpZO7ukPdMlN6AVmjq
         4IVx1D9kebkMq7PwR0P3cCilOdAHtTcVBQi2rKW1PfuaVDYQ4TUZl8BOwSXPM4qfwAN3
         636g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=0q/ssEbtd0yxUlTpu95GbwIYqgQ4jWiGNiMM3uK/CsQ=;
        b=KabCumxNG33XMw2xB4W/OBlHx1ZiqVQrcIzJihNjvxMaNbhqpTer6ytiPM8RyT+qCC
         H8sLNEzFCLEH83ViLLEgq/Jae0X8xqyeMe0t00qKiNsi4WwhkV+Oo1PaJ/NaJxgz+7SV
         YU5dvJvPhVXyUwMzRX+JP9eMSpN3+9ui6dmyUI6nZuXU8fyd5020lbXJnwH2g1sdoSEm
         C4f1C+zS/RU3qAWqh/P4ZohaJPE/bbwappp5y+LaX0NAef297XEkzq2m3yiC63KXUJJU
         vLPaOonyZNMNnCbA2ze2PoWVOXiLXH84zw8WfLBf1KSk4iqSLNBL6tk9NKo0nWvLDcu1
         APdQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tpmBeUH9;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0q/ssEbtd0yxUlTpu95GbwIYqgQ4jWiGNiMM3uK/CsQ=;
        b=mctGDQx55m4nVENTgn4YEzyUDYLt2BB/koceY1h19dhIJcBD5P+Dx9DchrRekLynyg
         +fLClack4jCa5dk6HO0q2I4HrqBAA4d2raRp9gQmeXh3MB/AnL3ftjxET4814GiYiZ6h
         iDHvHU6X91qml8j5ruvDLh1ebod259CK2ddnQAu552FFB7uG0l50lr22jnWhxDyc6zzI
         YK8osvuEc10EYXeHYxVU6tWnWgV1prUXH0oOgOml3iD0j4qO2Uw6ggq2iRdpabPdqtQ7
         /+EPMHFGjSNV6U7pGfg5kS5JoGRTjLhwCnNOHUtZ+MoC6Q5KMHSYN3KnTSK1neRfTHxB
         sLAg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0q/ssEbtd0yxUlTpu95GbwIYqgQ4jWiGNiMM3uK/CsQ=;
        b=pY+ywKMJzoL9fhjCR1Yd8W8i6AwcgEFp1WVSzL3xHA8rIUDzAsKtfaFOaMdnyZTneE
         cThlsiRijxn0xDBBeLq309TCrECG4wmUWOcFy+WturlAzxI+bd2JVTBt2ZFriPu0xqYg
         1M8FkJ0s8Q9hb2t9vJYgKM49yGlMDfYkIA3dEXq/zrvmQ9IjX94oTkVEe0VMdndXEjt5
         XURhz+8GksPlXnJGo9ROWoN7wNLHF8F8mokZmb3//IsrCrWtWHbrgiWvG5oF8AgyOa1B
         hBM67MINtBK1KbS6y9Kv6Bqk7XEcwT34rkJuAya3GYMtNi0jNDGjRZO87KWMz1SmFzhk
         JpHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0q/ssEbtd0yxUlTpu95GbwIYqgQ4jWiGNiMM3uK/CsQ=;
        b=NZ4QpZdvophPFfvsK/IwKVDXDe/XZBw4e0C1sfmR5ZuUArr16AKo62J8za3xnduyO2
         c31unf0KZbDojZZpIS+RjKLex4Ihg4apR7ezs/wRx8DcsdOO+/QvojdxVifkgpzLoKSX
         YowjW7DMMynbuPFzDXidhXByCoOFoZ3wSEzODI8G+lBV/o6BXE9HfOi75at0zX2qWZjk
         /MgyzTEayAm0hop1+YytUQXvGBW7WJPMK1Q0Cq8/NDi6HLnArnliqZC9otCb55o4PRkV
         io4ooY3MwLASRtbkxgDxbNHQt3z1+Q+wEyBWcCVnDEsX419SW5VSe0gjkK0vVMA4y6bV
         VfOw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531yHvZO7hKDFSc/tNe7o+j29zyN1OaQvUUMHmQgm9gAcUa4guqt
	1Kq1P5/EK7E3OiD2QaFPf+U=
X-Google-Smtp-Source: ABdhPJxCu4Zuna1xajQdRmIP0ofPt1NkmR773ZrjxcuBxNW0Cj6uYhpFGFleOyAH1vi53iNMKMbcxQ==
X-Received: by 2002:a9d:2609:: with SMTP id a9mr4554051otb.142.1598089928828;
        Sat, 22 Aug 2020 02:52:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1dc3:: with SMTP id a3ls1040434otj.8.gmail; Sat, 22
 Aug 2020 02:52:08 -0700 (PDT)
X-Received: by 2002:a9d:21e4:: with SMTP id s91mr4915784otb.157.1598089928456;
        Sat, 22 Aug 2020 02:52:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598089928; cv=none;
        d=google.com; s=arc-20160816;
        b=yuG+Pu0BHcHVckhveUuNX3mSa8Z/QppNuVZj/jnS3KM0JN6f/kQYLkwRct3USoxZDW
         k1H8iYIl9OTytPeWainn31HqfvA8r/G3XMzxqiAIYXJYreMbGoO7rq+3FqMcuhOlbahP
         O39Iiqz94f7det63X2Fi41rxcfJVUL1QBa5+n5o7aDRwUusefNG6hrlB0rKw4wt2QQyg
         sOtdXd5Aq5aLaD15TpL62sqxIt+YE1+zP7PcQ8lljX77FcwRTCq+xXUm8oGy53KeXbaj
         q5nMtTaajA79raAMfMp+1O4YduDeZaHPbh9Rk+UcplaNCMNH/3CP21eqIZp8IqJg/XfM
         05Dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ZljvoDAY1lVA2RNn8qAajI471ARnBIi+QOuwiJFiRIc=;
        b=N8qPjCRcHa/hL6qgfH/mSnYv1pfLx/cihY9EnMIK1xId7m/qTIAYIbXBPIFz0DsyP6
         4QTiBSzSgEomk4JReeG4DbHUk1TvQNzwLx+v8Lgbgo/74mDA9GDUiuSGLtHM3hpy03Wc
         xgKI0BU5+M45X6rT5s9FJGD5KrKl1NWNIaGSHrL+NxlAvHsTJJzWScgQLVPIkKh22qHQ
         uO2MleKpCGiDsrotLS0IGFRTGU+vzmnFoBHPks4SAZ73ghRi+FZ5xeFQa4kaAyCZloIv
         cUYT+PYjlmhg77LIfeSJdZYIPTR/dS0qIvRPgY7Qdl7JQyhumbVPmE/Mm8Iy7AZJZILb
         V85A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tpmBeUH9;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com. [2607:f8b0:4864:20::241])
        by gmr-mx.google.com with ESMTPS id p10si347606ota.3.2020.08.22.02.52.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 22 Aug 2020 02:52:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) client-ip=2607:f8b0:4864:20::241;
Received: by mail-oi1-x241.google.com with SMTP id e6so3725869oii.4
        for <clang-built-linux@googlegroups.com>; Sat, 22 Aug 2020 02:52:08 -0700 (PDT)
X-Received: by 2002:aca:4e92:: with SMTP id c140mr4007319oib.70.1598089928170;
 Sat, 22 Aug 2020 02:52:08 -0700 (PDT)
MIME-Version: 1.0
References: <87h7t6tpye.fsf@nanos.tec.linutronix.de> <20200813173701.GC4295@paulmck-ThinkPad-P72>
 <20200813180933.GA532283@rani.riverdale.lan> <875z9dioll.fsf@nanos.tec.linutronix.de>
 <20200820130641.GA536306@rani.riverdale.lan> <87zh6ohm03.fsf@nanos.tec.linutronix.de>
 <20200821230435.GA56974@rani.riverdale.lan> <CAKwvOdkoB+fT9tt7vgg1R6J-NEr77EWP5X8nFat_L-HvEzWGzA@mail.gmail.com>
 <87eenzqzmr.fsf@nanos.tec.linutronix.de> <20200822035552.GA104886@rani.riverdale.lan>
 <20200822084133.GL28786@gate.crashing.org> <CA+icZUVf9a8LC2Mf0cFymYQfALWs6bVfR1v1nRbxKaLAyU6NkQ@mail.gmail.com>
In-Reply-To: <CA+icZUVf9a8LC2Mf0cFymYQfALWs6bVfR1v1nRbxKaLAyU6NkQ@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Sat, 22 Aug 2020 11:51:56 +0200
Message-ID: <CA+icZUWGHo3mkN4=ZYeU37p8KJhxTXS5QKcAvq_HaqTHmFkw2g@mail.gmail.com>
Subject: Re: [PATCH] x86: work around clang IAS bug referencing __force_order
To: Segher Boessenkool <segher@kernel.crashing.org>
Cc: Arvind Sankar <nivedita@alum.mit.edu>, Thomas Gleixner <tglx@linutronix.de>, 
	Nick Desaulniers <ndesaulniers@google.com>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Ingo Molnar <mingo@redhat.com>, Arnd Bergmann <arnd@arndb.de>, Borislav Petkov <bp@alien8.de>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, 
	"Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>, 
	Zhenzhong Duan <zhenzhong.duan@oracle.com>, Kees Cook <keescook@chromium.org>, 
	Peter Zijlstra <peterz@infradead.org>, Juergen Gross <jgross@suse.com>, 
	Andy Lutomirski <luto@kernel.org>, Andrew Cooper <andrew.cooper3@citrix.com>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Will Deacon <will@kernel.org>, 
	Linus Torvalds <torvalds@linux-foundation.org>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=tpmBeUH9;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::241
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Sat, Aug 22, 2020 at 11:23 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Sat, Aug 22, 2020 at 10:42 AM Segher Boessenkool
> <segher@kernel.crashing.org> wrote:
> >
> > Hi Arvind,
> >
> > On Fri, Aug 21, 2020 at 11:55:52PM -0400, Arvind Sankar wrote:
> > > Cc Segher.
> > >
> > > Segher, we were looking at gcc PR82602, where IRA could reorder volatile
> > > asm's (reported on ARM). The fix was backported to gcc-6.
> >
> > I know ;-)
> >
> > > Do you know if
> > > there is any reason the problem couldn't occur on x86 on older gcc
> > > without the fix?
> >
> > No, I see no particular reason, at least GCC 5 seems vulnerable.  (The
> > GCC 5 release branch was closed at the time this bug report was made,
> > already).  There is no reason I see why it would work on x86 but fail
> > elsewhere, either.
> >
>
> [1] says:
>
> Current Minimal Requirements
> ...
> ====================== ===============  ========================================
>         Program        Minimal version       Command to check the version
> ====================== ===============  ========================================
> GNU C                  4.9              gcc --version
>
> - Sedat -
>
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/process/changes.rst#n32

[ CC Miguel Ojeda (Compiler Attributes maintainer) ]

There exist gcc-4.8 and gcc-4.9 for Debian/jessie where EOL was June
30, 2020 (see [1] and [2]).

In the latest available version "4.9.2-10+deb8u1" I see no PR82602 was
backported (see [3] and [4]).

I am asking myself who is using such ancient compilers?
Recently, I threw away GCC-8 from my Debian system.

If this is a real problem with GCC version <= 5, so can this be moved
to a GCC specific include header-file?
Thinking of include/linux/compiler-gcc.h or
include/linux/compiler_types.h with a GCC-VERSION check?

Thoughts?

- Sedat -

P.S.: Yesterday, I built with dropping __force_order entirely and LLVM
toolchain v11.0.0-rc2 on Debian/unstable AMD64 on top of recent Linux
v5.9-rc1+.

[1] https://packages.debian.org/search?keywords=gcc-4
[2] https://wiki.debian.org/LTS
[3] https://sources.debian.org/src/gcc-4.9/
[4] https://sources.debian.org/src/gcc-4.9/4.9.2-10+deb8u1/debian/patches/

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUWGHo3mkN4%3DZYeU37p8KJhxTXS5QKcAvq_HaqTHmFkw2g%40mail.gmail.com.
