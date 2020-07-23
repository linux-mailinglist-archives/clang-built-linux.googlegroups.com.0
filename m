Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBLPP4X4AKGQELEBDFCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63e.google.com (mail-ej1-x63e.google.com [IPv6:2a00:1450:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B0F722ADEA
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jul 2020 13:42:37 +0200 (CEST)
Received: by mail-ej1-x63e.google.com with SMTP id a26sf2286106ejr.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jul 2020 04:42:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595504557; cv=pass;
        d=google.com; s=arc-20160816;
        b=xTMaYhs+n3Cgi95Ukv57StZe01z6oValgHsCx3O1r/bqKBs0MxTJUM4kAL/oRSdBRO
         gTZI3nAv26P5JSpT12XQd3TWJ/l7G9zZqGAx90wibrlhyKfaYNRV8u3CXTYt9HsFDkTE
         Vg7G8sSOhVXJI9It3cJEAVbYXSqLV5nRkdhWUsMouGhVD1ssjYpB6BqyfM9T1Vgwo98h
         MPDXwmq+DBBXsfzN89Jh6/bZZLYdo3Mfm0NrbEXtA3JD83Ur1l0T223yniyXyu0//7fJ
         vZfFkJuLCKPvZMCJctDIeRa/zVpDNz5rOQQ7bfyn74yIwGKzvtYhdseTwZwu4700nnVV
         bOmw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=PasoHeinFE/2N49Owy0Phd5YL38GcF0EikiK0mnGPLo=;
        b=y2tvFliduKLlHO2JKmsVTKmEzToVxSi36rTKI6CEjaclIEdnMAT0YLDaILe5jDiokj
         OJnpCg4BJWUTn+nRt4JQDNv3XHSi9BezZSGoSddM63XZNeNVj7fgZYLPKkO3M0eoVK39
         eJfDA5Kbr+adVwgGbh1m+wsWdxhIxWJ4K1x2Pj2wFX+VWFUSDbiN21f5MWJgEzh0gWd9
         q6BLExbaFb+GkNWLSoVnU+g/IMlbb26ueRKHcwXKYHrvjByaDP7DVCn+eZVf2qzZS6Mm
         WDd4BtQbjeL0gh/jQXwSTd15G+aEOsTOYKdSYog5vG0Ovx7KqXvEJZXSbjT+DKSfgoIE
         dKqw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.133 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PasoHeinFE/2N49Owy0Phd5YL38GcF0EikiK0mnGPLo=;
        b=SUPotcGlwQqRIEbeJBATuDNZp9aMGHeCAYY5aoofd7ALdJojdBZKlyESLZtOd+4LFc
         eGWL2AtXN5bSEtzsgQwmYRzRsZEIZhc08fX5Cj/pFgK5GUqtMAv6rVPt67wS6aLLeqqZ
         vr4g7MXGmZuFaCnae7DrM1kiBNBw/wG2qrv+hIMWiHLteLVeRRxfoQtFC0YIvnw5KLKc
         ZbfvMAMPbb0FjuXlQnAviu1x4IpM5taMpQLb3F68yZg2d90Y+hjvhBEVCTAP705LRvD/
         TdgPaBbMybYrV++q0lbdJO9wo3v8D58w6ILG3IAf+Hfl3Ton7QNc7EQzXdAa9jgotfTA
         a6ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PasoHeinFE/2N49Owy0Phd5YL38GcF0EikiK0mnGPLo=;
        b=VWXSkhgSOvXI3Waat4+e940/scdtXna8RsmPrh50LD5e76gXo4e6Gr1IHN+z+X8Pr4
         8sV/afY3q3veeEgb+RRrwA4EioT0eK26Co0vIpe/4g5AyxeuR3fyudwENE1YlLX5m877
         879T0tiVvQ9ZyPAl9+0aRbSHjIk1VGx6XJzg3jYRHyOmLy8o37WBRpJvKzWFxRA2HZtN
         p6/2ftx9eU0alhpo99BFdACgk0Hg7nD4IOgnm7TXSmAem22evgKkVjgmlvWnK1GV9fCl
         AK00yzcdQTcIZApaceaehdU+XESMjfiq9IbGfvoe3Wmtbg2cx9XKEnZh3GpLqvzgUlic
         6SHw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533AkrLZc6mG9IMN3hXg/Mczj9vd9ACTqlsHBhreJEJ9NYlde1WJ
	P98a9O7F677O2inwoqADXqA=
X-Google-Smtp-Source: ABdhPJzM1dpDrfxXubPKupuxTzHzFRxzbAFeB9840Q9FGIT03HpnnrGlVOd1ry2SML4ksompLz6wJQ==
X-Received: by 2002:a17:906:4d1:: with SMTP id g17mr3958588eja.78.1595504557092;
        Thu, 23 Jul 2020 04:42:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:1fd7:: with SMTP id e23ls2602628ejt.7.gmail; Thu, 23
 Jul 2020 04:42:36 -0700 (PDT)
X-Received: by 2002:a17:907:42d0:: with SMTP id nz24mr4079503ejb.135.1595504556519;
        Thu, 23 Jul 2020 04:42:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595504556; cv=none;
        d=google.com; s=arc-20160816;
        b=rL5dlTwhRyS4XYYp9xJkm8uVdHGvSVceOZPpv87pVBSUx88eYk34eZNp/Vqkocu0hs
         JRIjKC84vX0U4aeUZ5Y/ihoOU6Vep/Zw9pJgLxSmdjGw5New3lhLfTeyM32G5YAn53oU
         A9XEvLFh7+F/vsKff+Ti4uRmtUxy/GR1TBCr7WTihmQRZk+zFVYzEjH4QwAcCpDEXIQx
         s+axlj33EiMyl4nD+49nmGw4m2oUkCGwVxXzV61nDmUKRrc7mE5XF5KgRCIIfVErTvp5
         jbfC7z3lYZIzS45Aw4k/P3Rx2u++2aVLMD2HxK0IxgXe/vuadCYkqneoz2KIuLrjuwPJ
         yHuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=bv31YsuUpZZ34G3VvVwwpennM88QWhNA3bEChnWlat0=;
        b=GBwyAGNwlVOHdQS82RoQMpTUpC1pqwRyXHMuu23OHZsmpFe9E5MUfl00YY8TAQnxuw
         KEPjysvPsM3FMfmSIkaqLNuiBIOLbR2FhNBgN5iKOPp6cyIFJJfAcAG4OO22gf/l+b9i
         qXUEZJrc+2/HlLNMXHuwPbbeGZ169CcwnyOfm0+s/3V2/zqG+G+Bq/uImndz3pUx30h5
         sv8AicOcXU01/7VwcJgK+ZMDGfJYAZAOhIbj3JcWP2+fnzR8gO1doZ/R5Blqtv2Ze4pC
         TEUUXU/z0rgxlE4hZpGeYZPB3MY/Y3eH7IkyogcZSnJ2Z/7E5dHK6ALZdSreRUCBLTmG
         eEEg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.133 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.133])
        by gmr-mx.google.com with ESMTPS id q9si149049ejj.1.2020.07.23.04.42.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Jul 2020 04:42:36 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.133 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.133;
Received: from mail-qt1-f176.google.com ([209.85.160.176]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MGxYh-1k3C363dmF-00E3NN for <clang-built-linux@googlegroups.com>; Thu, 23
 Jul 2020 13:42:36 +0200
Received: by mail-qt1-f176.google.com with SMTP id d27so4117791qtg.4
        for <clang-built-linux@googlegroups.com>; Thu, 23 Jul 2020 04:42:35 -0700 (PDT)
X-Received: by 2002:aed:33e7:: with SMTP id v94mr1585679qtd.18.1595504554703;
 Thu, 23 Jul 2020 04:42:34 -0700 (PDT)
MIME-Version: 1.0
References: <20200720204925.3654302-1-ndesaulniers@google.com>
 <20200720204925.3654302-12-ndesaulniers@google.com> <87365izj7i.fsf@nanos.tec.linutronix.de>
 <87zh7qy4i4.fsf@nanos.tec.linutronix.de> <CA+icZUVz0opOb0LihLvPvKM-t0Y=pcUWDyb+u-L_UVnnbPh1rQ@mail.gmail.com>
In-Reply-To: <CA+icZUVz0opOb0LihLvPvKM-t0Y=pcUWDyb+u-L_UVnnbPh1rQ@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 23 Jul 2020 13:42:16 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3Ms1uvLcbhmbsU+-u11BCrXPaU5Dro=P9LjAG7CYm8ww@mail.gmail.com>
Message-ID: <CAK8P3a3Ms1uvLcbhmbsU+-u11BCrXPaU5Dro=P9LjAG7CYm8ww@mail.gmail.com>
Subject: Re: [PATCH v3 11/11] x86: support i386 with Clang
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Nick Desaulniers <ndesaulniers@google.com>, 
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, Dennis Zhou <dennis@kernel.org>, 
	Tejun Heo <tj@kernel.org>, Christoph Lameter <cl@linux.com>, "the arch/x86 maintainers" <x86@kernel.org>, 
	"H. Peter Anvin" <hpa@zytor.com>, Al Viro <viro@zeniv.linux.org.uk>, 
	Andrew Morton <akpm@linux-foundation.org>, Peter Zijlstra <peterz@infradead.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, David Woodhouse <dwmw2@infradead.org>, 
	Dmitry Golovin <dima@golovin.in>, Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:4mh5oMPAfZSLtKzEaHm1TFHEhWtYzdtrRYVOfR46hRWpCh8TEO2
 4dTBma9yED5CXx8TLRipRYCI7bJHMVZ6Ri6jK5sx27G4oQFQ1DDGC0Ahjh8M8OLeHljb8lF
 u5Dlks+3YFKICKFjHvpNPHLJtbIb/nFgcTbVtdJi3zFmYcsvukaitUqQCzOeHByChtZRTc4
 ypiKEoqNgwoIJlP2IWIJw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:8HIYJphdyL8=:Ko783RzXbf3RV8oGbHpp6Z
 Hxngfb9RfShUG2TrfDAXSv7tv+yNdmNlwfmRXu4k9hRq+hUrnvDbCHRUzWOeH1PAzujoSM6Mn
 TNXalOVNR+qracGJQB6vwgdy+27qrZZ1/KFp8y2aqbIOiedjegfKirUMMg7iwFLOec89AVm4m
 NONanfdc1wl8oGR8B4GV6F0ZXLMY/nE8PYLqnq1xAbBHpCqWZD4998IURi7FdZzzU9QgbPw+l
 zWxDNv0Lr5uqWg7a1shsuL5JF9bwHgnLQ767bXzYxJ7aFkGcPx6SlnAakVu1F2H8yBL/wzonq
 DnOWE/LhHhy5zB/xabkjwHoeA4wOJJMsyUZAFxEfb7zbrI2HRpUeEEG9gEiKz4Ax5mzruMSF2
 z4hpP/Bp4jP8t4SANHDwgDn/bsR97KuIWhRUMQIvPGn1EjlfkOLWQve2lK1A7/KeDvEsP0FdQ
 gfcAveXaYJqL7HK0tEdPHsT0nZgHtHbpYXQ3V8/P8z4cTyEYVwJ1SILrCEw13If93N3AKg9cD
 lUe17AzZeT6YrvUMRQKBRYVSEopfSkwcWRIDgM859pNVNTL/G9fQljWUSYQDkq5nwCduPOeRh
 bWRW9ZSNk2q8+vuCagh6CdPdJoCrHuC899hCudOR1Bkq5aKgAhJGTOLtreyYykBKhKGFHRqFr
 2Zex7kzJ7/OXRcHYq/HSdBG3ydE2I9iCEc0f7e9VYxWky0NyoEhOhkMuUU3pwRS/CL+oXbCeh
 m+H9XG4aKE6ijlilf+8Ctv7xvCsjWK8gmk7KqbgWF4L94K2LR87jI3flzm6dqaF8DBaT8BWv+
 NYRxRhwTqCt0o6nIxc3MpkRBWZuYPhTnAE3bKEHFzORQloPNhrZ4TGurf2ja9hjV/IVPtOFDE
 7GmPLf2VAjBWzFObdD2Ccr6yweYw2MRd8+Xglb9tIHTN/kpd7w5Q/wIYqiUYiWRJsTgNG9giz
 lhfELlKk7h5THy268AZYdxLzYAs4q9wA82nuHq5elJ68KpT0ePwKB
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.126.133 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

On Thu, Jul 23, 2020 at 1:07 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> On Thu, Jul 23, 2020 at 11:17 AM Thomas Gleixner <tglx@linutronix.de> wrote:
> > Thomas Gleixner <tglx@linutronix.de> writes:
>
> I have applied this patch-series v3 but some basics of "i386" usage
> are not clear to me when I wanted to test it and give some feedback.
>
> [1] is the original place in CBL where this was reported and I have
> commented on this.
>
> Beyond some old cruft in i386_defconfig like non-existent
> "CONFIG_CRYPTO_AES_586" I have some fundamental questions:
>
> What means "ARCH=i386" and where it is used (for)?
>
> I can do:
>
> $ ARCH=x86 make V=1 -j3 $MAKE_OPTS i386_defconfig
> $ make V=1 -j3 $MAKE_OPTS i386_defconfig
>
> ...which results in the same .config.
>
> Whereas when I do:
>
> $ ARCH=i386 make V=1 -j3 $MAKE_OPTS i386_defconfig
>
> ...drops CONFIG_64BIT line entirely.
>
> But "# CONFIG_64BIT is not set" is explicitly set in
> arch/x86/configs/i386_defconfig but gets dropped.
>
> Unsure if above is the same like:
> $ ARCH=i386 make V=1 -j3 $MAKE_OPTS defconfig

The logic was introduced when arch/i386 and arch/x86_64 got
merged into arch/x86, to stay compatible with the original behavior
that would produce a 32-bit or 64-bit kernel depending on which
machine you are running on.

There are probably not a lot of people building kernels on 32-bit
machines any more (real 32-bit machines are really slow compared
to modern ones, and 64-bit machines running 32-bit distros usually
want a 64-bit kernel), so it could in theory be changed.

It will certainly break someone's workflow though, so nobody has
proposed actually changing it so far.

> When generating via "make ... i386_defconfig" modern gcc-9 and and a
> snapshot version of clang-11 build both with:
>
> $ ARCH=x86 make V=1 -j3 $MAKE_OPTS
> ... -march=i686 -mtune=generic ...
>
> Checking generated .config reveals:
>
> CONFIG_M686=y
>
> So, I guess modern compilers do at least support "i686" as lowest CPU?

i686 compiler support goes back to the 1990s, and the kernel now
requires at least gcc-4.9 from 2014, so yes.

> Nick D. says:
> > I usually test with make ... i386_defconfig.
>
> Can you enlighten a bit?
>
> Of course, I can send a patch to remove the "CONFIG_CRYPTO_AES_586=y"
> line from i386_defconfig.

The "i386" in i386_defconfig is just a synonym for x86-32, it does not
imply a particular CPU generation. The original i386 is no longer supported,
i486sx (barely) is and in practice most 32-bit Linux code gets compiled
for some variant of i586 or i686 variant but run on 64-bit hardware.

      Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a3Ms1uvLcbhmbsU%2B-u11BCrXPaU5Dro%3DP9LjAG7CYm8ww%40mail.gmail.com.
