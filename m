Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBXW64X4AKGQEJTDHFWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 67E9E22AD35
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jul 2020 13:07:11 +0200 (CEST)
Received: by mail-pl1-x63b.google.com with SMTP id f2sf3259754plt.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jul 2020 04:07:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595502430; cv=pass;
        d=google.com; s=arc-20160816;
        b=HWLLJIeL3BN0tDYFbicxlqzRaZoCnzlH1SPFlfCfTHPihspyrMcUmE1WiLv8sJhYup
         5+ydzVqo5iwkoD9oT4PeDO7lCYaUrH7WXCJOH4hjiMmEMRTFTX8AGWNIkkeT0epuHjTL
         Cq7aJqGqG4Pg9M47r1ixCgFDcr1p2cFCETMGthUeZfYrdVEN928s4MLaHbo1szG6aV74
         A8N/5NUBeEHvj9hDp728BNvILuFNH03Y5QiYUqtmqL7mVDU2AUU0DVfV2WwVX3TfoLKr
         BySzu1DsMKtMdXQ7tIecnqeCy0JwL4GpRg7bcWcXB3j8iLaE8FGlHdFk8RU7J7I22RZq
         xl9w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=u3TBMMxeHwb5fGNRl87K/WbYIKOU0Zd8DrfcYtORPVc=;
        b=GNhxCL38SvGNWR6SA4OZygl5bjl2GXzgVJkISzXfnQMc1Zx6pTcdZ5+kntVhh6xBhv
         mLNVaK3M7bWM6RiqDtDxq7Ypg3nKuBGzuDaGac9DUdCpXQ2/vJxTTPeHmtp6Uhq3dk/9
         /VhyWfS8DpOlDbSpLJyB35zLErW7fSYsCOyfrM93/Yid0rGCHtmpqlEsW6FxsJQK13Os
         GuzIZoQyIbrGM9+4b0idBiQ6y5zGUbJSRPM79PjEF85RLcGe9HrnOhRh7ne9uZVqu1VR
         Ohjm9untFh6ba/TJcZ914zviECtexNAnYDlxyHfiZUyoeOGjCN3FoUPfv0E6PHiLZpD7
         sPZA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ORZkjnuY;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::142 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=u3TBMMxeHwb5fGNRl87K/WbYIKOU0Zd8DrfcYtORPVc=;
        b=Itn6JFYeghFRtgdXRE8/u24nQ89SeHlmwXOYwcHp8sj8lUBIvrzdMbqS29cyiQpoYX
         p/C8Mt7AFOQ8Uj0+lGliZXu1XU+2ei9MMfF5ec/+D3lX1jnaCY25IbzsFoAe0qshRDdF
         NgdT/mNWjVqCF4BxQaQPlrJMjR/Z86LaEB6XAyXh0PHkFBC/J8t+Yo62xrmzEm9NH0vS
         iExaYU2TyC39bS1g7Sm4LRB6K5NgEnXUAIlnn8VMXRhvmBSddRaAeKhRyclPCw/abz/V
         75CgoQRmac3iI42o6ch4MDw6OJhVqGxCujxinyvSLfUP/a8xyBmiBOV3V9FjAOvJRd5h
         sS3g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=u3TBMMxeHwb5fGNRl87K/WbYIKOU0Zd8DrfcYtORPVc=;
        b=dAkMW89K+bgRvSssMxiOGiopSApgTpP5agTjhiX1bRKYkWUiWbo/vkBWijuq5ll+XT
         fF0h/yjvA0MtH47EJpUYQ4md1H4l2TTkgIpM773OEADb0EjNTn2bBUtMnrWgwQBzsVVR
         hs9V6yHAip7/Vi3Fy8p3L4xeTKMYeWGqgdHmTUTKsUKASmvF+u7ktvHAqMw3l+ggj4QZ
         2z57iQ4NYR/jowgej+5LtojsVrog2Q7K+G0xPc/2Ctrvg4Vu2yWvVwPYpKRxoSGRmaB5
         fhVotMwJMFDHj8R5CKw4FILAppCD7dmkfocGIackmDl/kveQ9ESLmGvbUVsaqUfaHZ1R
         EOGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=u3TBMMxeHwb5fGNRl87K/WbYIKOU0Zd8DrfcYtORPVc=;
        b=LziRqw+Gh8jrxRMxg9YhTrIMn5hGIVDEHo4JcVdpRpYH8laE5i309DUnE5b0RUkbGN
         hrkiNw0+pz4rQo28qxxMsZ94jrAe40j60hyOCJwCGwho54yXF6mwsFRMTr3C2GTsZoeH
         IK4ARDsBpcgHTyBsaZ9cRHRilSbJLC7tgCmMxTVJbXFlbt7wnvhuINxPvaU89nwz0F3I
         c+cS4znt6yiaMRmnTlh0mQ1VYzuzO9qAf1DxeU/UVdDywu+mAVZZmjBeChl9OKDH8lHX
         1SEisraeKUFnLf9dnWCzoflK23ZSnhqu3c12SSPFrOYId9C4+kL50VFIJZZGqkzXhMTl
         WgVw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532jzzRzFYW8QUns+d+ukiwnT1oHhurCu+nF2H5V+gZP/GDnnrTw
	R5KTYqutlq61I21qmxMBDsk=
X-Google-Smtp-Source: ABdhPJwa9wY3vRkYHWnmUwdiY/KKEKqbBh6YK9PvnBuuVhjfMm6sTVHnsC+1EnoIAxkFqZrdKbqPqw==
X-Received: by 2002:a17:90a:17ad:: with SMTP id q42mr602566pja.31.1595502430119;
        Thu, 23 Jul 2020 04:07:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:8a16:: with SMTP id w22ls2091550pjn.1.canary-gmail;
 Thu, 23 Jul 2020 04:07:09 -0700 (PDT)
X-Received: by 2002:a17:902:d90e:: with SMTP id c14mr3450084plz.335.1595502429670;
        Thu, 23 Jul 2020 04:07:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595502429; cv=none;
        d=google.com; s=arc-20160816;
        b=VDm4SCZMYGd31kQEQuNOcwO9Y1EpSBn7iMHh/5weeK+48wnRmX77yZ83/6QCUVL1pg
         nJM9dDWWTAxiHuyVyOclMdoQ2MMz0eXStQLhYkfGHmCreCdyeP7e01If14nlBpWFqhPJ
         XdoGE9Fd/ZDJ4JzqycWHrwIKyJLDtsz4bON7TXEBt8p+GIGtlV9Rk00On8Xx8qSN37eM
         DXpCMv8ZtwdeBGrGGApem7aGI+1j4YgHVILxAiargZXEGQVeqkc2DflyTLpgsuo++QgE
         ibZv9u7jAsv9SyS6ACOB95M0JgDWNhCcrodO4Dnl9iAtD9KR1lhAvrjbjXl7Du1gkSTT
         Q/fQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Sqy+aq4JnS7ssbugNgHH00morzlsP1wwcaAtIFalZkc=;
        b=L+SLGLd5ahZjyHzDcuXqWhn+kTJUhivnEEviv7ah23oROxl8x5Z/0VuJgLEkNfnguy
         g6l7h0lm1ucR+bAjGb4VQ2qOL5XBVgevi9SADE36tmePZojQokRVsn1XIMwO6wGbL9m6
         2N+WYjxVr+JVhRvAqmieK4MBvDeB2PzGtEMhepL1K7tP0MwTgGvsN/WteN1zH3KjAZq6
         OGDyhx6ca5cbLEKG5tTCk+RoLaO2bqBgZVdqGtEZ0XycTuzBqVceL92Ze4+akb/u3Zfq
         0M5xZXShtMQAYBmAfr7Vka85FqV3Pz6hi9CYvMxHN8+Uk+AFszl+Mol997SJg0GRX47g
         GCWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ORZkjnuY;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::142 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x142.google.com (mail-il1-x142.google.com. [2607:f8b0:4864:20::142])
        by gmr-mx.google.com with ESMTPS id d16si48911pgk.2.2020.07.23.04.07.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Jul 2020 04:07:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::142 as permitted sender) client-ip=2607:f8b0:4864:20::142;
Received: by mail-il1-x142.google.com with SMTP id t18so3983275ilh.2
        for <clang-built-linux@googlegroups.com>; Thu, 23 Jul 2020 04:07:09 -0700 (PDT)
X-Received: by 2002:a92:290a:: with SMTP id l10mr4696067ilg.204.1595502428893;
 Thu, 23 Jul 2020 04:07:08 -0700 (PDT)
MIME-Version: 1.0
References: <20200720204925.3654302-1-ndesaulniers@google.com>
 <20200720204925.3654302-12-ndesaulniers@google.com> <87365izj7i.fsf@nanos.tec.linutronix.de>
 <87zh7qy4i4.fsf@nanos.tec.linutronix.de>
In-Reply-To: <87zh7qy4i4.fsf@nanos.tec.linutronix.de>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Thu, 23 Jul 2020 13:06:57 +0200
Message-ID: <CA+icZUVz0opOb0LihLvPvKM-t0Y=pcUWDyb+u-L_UVnnbPh1rQ@mail.gmail.com>
Subject: Re: [PATCH v3 11/11] x86: support i386 with Clang
To: Thomas Gleixner <tglx@linutronix.de>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Ingo Molnar <mingo@redhat.com>, 
	Borislav Petkov <bp@alien8.de>, Dennis Zhou <dennis@kernel.org>, Tejun Heo <tj@kernel.org>, 
	Christoph Lameter <cl@linux.com>, x86@kernel.org, "H. Peter Anvin" <hpa@zytor.com>, 
	Al Viro <viro@zeniv.linux.org.uk>, Andrew Morton <akpm@linux-foundation.org>, 
	Peter Zijlstra <peterz@infradead.org>, linux-kernel@vger.kernel.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Arnd Bergmann <arnd@arndb.de>, 
	David Woodhouse <dwmw2@infradead.org>, Dmitry Golovin <dima@golovin.in>, 
	Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ORZkjnuY;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::142
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

On Thu, Jul 23, 2020 at 11:17 AM Thomas Gleixner <tglx@linutronix.de> wrote:
>
> Thomas Gleixner <tglx@linutronix.de> writes:
> > Nick Desaulniers <ndesaulniers@google.com> writes:
> >
> > I'm glad I looked myself at this.
> >
> >> We also don't want to swap the use of "=q" with "=r". For 64b, it
> >> doesn't matter. For 32b, it's possible that a 32b register without a 8b
> >> lower alias (i.e. ESI, EDI, EBP) is selected which the assembler will
> >> then reject.
> >
> > The above is really garbage.
> >
> > We don't want? It's simply not possible to do so, because ...
> >
> > 64b,32b,8b. For heavens sake is it too much asked to write a changelog
> > with understandable wording instead of ambiguous abbreviations?
> >
> > There is no maximum character limit for changelogs.
>
> Gah. Hit send too fast.
>
> >> With this, Clang can finally build an i386 defconfig.
>
> With what? I can't find anything which explains the solution at the
> conceptual level. Sigh.
>

Hi,

I have applied this patch-series v3 but some basics of "i386" usage
are not clear to me when I wanted to test it and give some feedback.

[1] is the original place in CBL where this was reported and I have
commented on this.

Beyond some old cruft in i386_defconfig like non-existent
"CONFIG_CRYPTO_AES_586" I have some fundamental questions:

What means "ARCH=i386" and where it is used (for)?

I can do:

$ ARCH=x86 make V=1 -j3 $MAKE_OPTS i386_defconfig
$ make V=1 -j3 $MAKE_OPTS i386_defconfig

...which results in the same .config.

Whereas when I do:

$ ARCH=i386 make V=1 -j3 $MAKE_OPTS i386_defconfig

...drops CONFIG_64BIT line entirely.

But "# CONFIG_64BIT is not set" is explicitly set in
arch/x86/configs/i386_defconfig but gets dropped.

Unsure if above is the same like:
$ ARCH=i386 make V=1 -j3 $MAKE_OPTS defconfig

When generating via "make ... i386_defconfig" modern gcc-9 and and a
snapshot version of clang-11 build both with:

$ ARCH=x86 make V=1 -j3 $MAKE_OPTS
... -march=i686 -mtune=generic ...

Checking generated .config reveals:

CONFIG_M686=y

So, I guess modern compilers do at least support "i686" as lowest CPU?

Doing some grep+ping:

$ git grep "ARCH=i386"
Documentation/kbuild/headers_install.rst:  make headers_install
ARCH=i386 INSTALL_HDR_PATH=/usr
tools/testing/ktest/examples/crosstests.conf:MAKE_CMD = make ARCH=i386
tools/testing/ktest/sample.conf:#MAKE_CMD = CC=i386-gcc AS=i386-as
make ARCH=i386

i386-gcc / i386-as - someone uses that?

Again my question (I did not do a diff):

$ make headers_install ARCH=i386 INSTALL_HDR_PATH=/usr
$ make headers_install ARCH=x86 INSTALL_HDR_PATH=/usr

...should generate the same?

To come back to "i386" again:

$ git grep i386 | grep ARCH

...reveals in top-level Makefile [2]:

376: # Additional ARCH settings for x86
377: ifeq ($(ARCH),i386)
378:        SRCARCH := x86

For me this means:

ARCH=i386 make ...
ARCH=x86 make ...

...should result in the same .config, but for what reason CONFIG_64BIT
is dropped when "ARCH=i386" is used.

Coming to a conclusion:

Nick D. says:
> I usually test with make ... i386_defconfig.

Can you enlighten a bit?

Of course, I can send a patch to remove the "CONFIG_CRYPTO_AES_586=y"
line from i386_defconfig.

Thanks.

Regards,
- Sedat -

[1] https://github.com/ClangBuiltLinux/linux/issues/194
[2] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Makefile#n376

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVz0opOb0LihLvPvKM-t0Y%3DpcUWDyb%2Bu-L_UVnnbPh1rQ%40mail.gmail.com.
