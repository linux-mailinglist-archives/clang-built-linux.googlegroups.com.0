Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBFFAZL2QKGQEGFOU5MY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x539.google.com (mail-ed1-x539.google.com [IPv6:2a00:1450:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 2093F1C6E4C
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 May 2020 12:23:17 +0200 (CEST)
Received: by mail-ed1-x539.google.com with SMTP id m5sf318509edv.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 May 2020 03:23:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588760597; cv=pass;
        d=google.com; s=arc-20160816;
        b=Jrs6VO5J9GDoYMIUG+u6Qx1Nbw68HZbyVFzt37PqBr14I4fi8n8xuLJboQ6REoAIzT
         L1paATUoRf4iPUa2dhPydnEIb9L6jZiRrsdZHDBTqsNddMnCR2+33jBLFZkxjC/R9gj1
         lkkwlnrGJ9NIxZU9up3pCs6uocxeEud10bxKY67qq7U+m2d10BG5ZgJPZIvT4mLmkxB1
         UsCJfYucnj4SgjxED8mMn/No1W90XOiQlFxzI/y/8LEtt1MUliHNV6drhMln4DgNZNeU
         zy0qC+/6K0ECfCG4lG87up0lCfjoCim9/c5XyuF9gEUuA065EdvbNO94B5IVw0g8TiDo
         sIEQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=zITIyA6U208ylxfwM9TX/KkPGpyITlutasZY2A4nx44=;
        b=DupM7s8DmSTKCk8ei3B2bFs6EXhzSws/lzizPIdnVulRriHUBmrSOlDt51trMgNFua
         fLdip1nKnx1Gd7lBGt7DazHBtcVUzGhiq/XMG5qJgg1GVibvybIMcClSSvsRb8wi+F9Q
         WfFP4tdN3zFkGcjQsOZadK3PVSu8CISQ8lKYJRI+R7U+tdHuLly7+vFWpgoB7Qo8r5Ja
         tg0AJCSiJdCrR5zTPvKGEMiCx4oS6s6uoiWZjIyXB+fhPeJTHbeCmHtsLUA5bQ1+xkV8
         oRJxVhr7N2jBZb5Fn5OagsA9ySlfJ41fhObiBdqSI4qET6tNgR1ieoF6LvTdc34dH4gc
         2yRA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.75 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zITIyA6U208ylxfwM9TX/KkPGpyITlutasZY2A4nx44=;
        b=nyb04k2GCjnXhCegk7CObzsGVIxtlq7VHvoCDoC5ZNlqfheSciEJPO/BJlpArx7KZk
         Q874QLB01pGcSonOaXrHELx6r0O1OPJtZH06hOIbykAkYdfx7w2uC99qtamWFSDNOx1l
         1nkqDH7FwsvUBFduV6h8Fn3cHVwDCo65CbAI/YNrOfBj4K/G/jHfG2JASaCmdGkMn0s6
         4InuWivUlyXJDXCDIkwWctU88NJiRg7WE5YcJyX/WMxd/7FN4kU0FB7zPjlyc+lEaHz7
         Y0tndN8RLp8AvPa0Fucap6fKoM8DTjK0dGniapJ77bRndDUdPmbs8H6hnjqZmaqLi3SD
         PeTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zITIyA6U208ylxfwM9TX/KkPGpyITlutasZY2A4nx44=;
        b=Zqp42Nj7jvRWeOi3Wj0z2nwoAR1VkKWWrEDltCgpqOHigAAcs9bSJ57w1BPHPjaA2n
         d4V7Dcf7ZeaaaeppjWAVeqyPvTKHW/0fLh0hNcECGb1rzcvKm8AMcJWVQhJMd+HyVoly
         IAVL1EzibZ4MB1NZv5RhLb+R2dqRa3WtWQDM/SEd8VJi2hrdRYdOEq0PVdhDqzvZMfR8
         sspjQ/KIhyPJWbnXNvFgz4eqWz65S2z6XMn6yu9Z56o+BgRq/tpJ0/DgHgG8kX4M6mKU
         czaVizwYiNSZvEVkp/TO/dyWYiLjYKKctm3qo8Dcfdi3DB8C0Iz4u4VCp5XfpXZMqV/R
         7q4A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubA+jO9izbc+IOS4qTui8hURLGAbVnW/F2sq4znJX6lhldHuR2n
	zKXObol/IuSuXWo1gzvDJTQ=
X-Google-Smtp-Source: APiQypJTwJJ02SfGnp6lKCHqc3/8EjT3rE3M2eV3k1idU1WMaP5idI5aqDwLrMbxAFv5IGoOUCRfkg==
X-Received: by 2002:a17:906:1186:: with SMTP id n6mr6448069eja.45.1588760596831;
        Wed, 06 May 2020 03:23:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:ca0c:: with SMTP id y12ls443751eds.7.gmail; Wed, 06 May
 2020 03:23:16 -0700 (PDT)
X-Received: by 2002:a05:6402:286:: with SMTP id l6mr6243488edv.134.1588760596342;
        Wed, 06 May 2020 03:23:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588760596; cv=none;
        d=google.com; s=arc-20160816;
        b=cGS01pnbXV+VxJBmleEA2pFUo2ID88DxJ3lPGuD9NFgAEwxtN1H8h5xNKEpowP4zJT
         TknU+0t2NJcqo0AtEGY5p77cIreWJTQxHQbEMA39+aC9axkxVrU+vzzTpyTXsjwcjWin
         GxqbZWuy0RG73xSaFK9v4TIKOhZhFiEP42FjiziNMtgQwTKQ/sOGtgcsfERegg08gPqR
         Faxg3tFvn7YLWUEIyXWQ+nPWju+TX4vj2VCusYKPMo88d0BCFzjg9tKKt4VYQnUsht41
         e1YrS2VbZz91wiatW8vd6brOLDykTiMxs1xrb7CE5l3pMm52qYvO6RSR7Vce31PV81/x
         E1pA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=SbIWR3SErpHRrKzfxuoJeMiKhIiouyJcOJIG4Y8Ut5g=;
        b=HYiIb1s/8J5kgv8xQL/+C3f2/k9D0GZE23G6yBncni4J05zzSzECbV6DULiwS2uuFO
         kcTxdyuykba736zFIgMnl6N27eKpFgtVHCTL72znwiJC91TlV5zk+7GsO8HucO4mWsmG
         JKGuN/LPfI9qKWzlvkyeI60Xm5HpY+AkoAacOp2HvDB7e4PBCtNkShyP2RH7KDEmkQZd
         jVL7iuXYCOWBes4bo95za8qK5ho1N7OPEJsmQgTI/tShXW0gcvyOOcsYzalFv1qMD5Tv
         uVCUTTikYyU80W+xMZ1df9oXXeGrrHTNhfccsFC2U+mgxA1vMDc2mdBR3lYYG9N2gPeE
         FV2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.75 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [217.72.192.75])
        by gmr-mx.google.com with ESMTPS id i2si75291edn.2.2020.05.06.03.23.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 May 2020 03:23:16 -0700 (PDT)
Received-SPF: neutral (google.com: 217.72.192.75 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=217.72.192.75;
Received: from mail-qt1-f175.google.com ([209.85.160.175]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MqrsF-1ik2IE35Vp-00mvpz for <clang-built-linux@googlegroups.com>; Wed, 06
 May 2020 12:23:15 +0200
Received: by mail-qt1-f175.google.com with SMTP id h26so856758qtu.8
        for <clang-built-linux@googlegroups.com>; Wed, 06 May 2020 03:23:15 -0700 (PDT)
X-Received: by 2002:ac8:2bce:: with SMTP id n14mr7247646qtn.18.1588760594548;
 Wed, 06 May 2020 03:23:14 -0700 (PDT)
MIME-Version: 1.0
References: <20200505141257.707945-1-arnd@arndb.de> <20200505142556.GF82823@C02TD0UTHF1T.local>
 <20200505194243.5bfc6ec6@blackhole> <20200506034523.GA564255@ubuntu-s3-xlarge-x86>
In-Reply-To: <20200506034523.GA564255@ubuntu-s3-xlarge-x86>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 6 May 2020 12:22:58 +0200
X-Gmail-Original-Message-ID: <CAK8P3a24EiEvGAenL0FdgGakmwWi=giReOJuiisnzkgC_SuhZg@mail.gmail.com>
Message-ID: <CAK8P3a24EiEvGAenL0FdgGakmwWi=giReOJuiisnzkgC_SuhZg@mail.gmail.com>
Subject: Re: [PATCH] arm64: disable patchable function entry on big-endian
 clang builds
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Torsten Duwe <duwe@lst.de>, Mark Rutland <mark.rutland@arm.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Ard Biesheuvel <ardb@kernel.org>, Amit Daniel Kachhap <amit.kachhap@arm.com>, Torsten Duwe <duwe@suse.de>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, AKASHI Takahiro <takahiro.akashi@linaro.org>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, Julien Thierry <jthierry@redhat.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Marc Zyngier <maz@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Alexandre Ghiti <alex@ghiti.fr>, 
	Kristina Martsenko <kristina.martsenko@arm.com>, Ionela Voinescu <ionela.voinescu@arm.com>, 
	Steve Capper <steve.capper@arm.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Fangrui Song <maskray@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:esK7nMAoPtK70OGXBBbTYWHG8PA/6QqKfKqJE7oSsT1ZlQHHDfL
 npcHxsPyzAZIZ4ObJMMJP1/hamswUxz7uMCS+GNEh71589qn9PMb/Vhdb2vkw/yVGef1Qoq
 /sOv+FBiMAfyIJHR2ovYeY1UMh8pKB8ErTdrAiQRtDa636o/V7dZIb5PS9m3FSSKnL86zrM
 1RWBUEvgU+NpzOpiajCYA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Ukqv3XIh2gg=:b+FeIIJVykB2LHpDZN8EIU
 Nb1vUOnERM3KgG9poNccEjqAwehMnAkeoKhJoaWAodHwY052VwOme04ajl3a2K6wiehkKZalN
 NawPoIf2XPGY+2/sDSVIrYhwE/SAD7GnrEajhonGji9GmNXH/F6iLwr1yX3iYuVmoDZFNQDke
 xwdtbXy9Pmg73CEJn0LGallwt4s8qP3SR52ge5/kHxWL0Xq3EDexbDpmr6ZXoYl3qS9bUtxP0
 1HPpJMlkLozevPEkwHR/2dkkvHdXVLKYBtYXGE2kaBbr5UjyRSnJS4b1GM9nQvzFeG6xG1H6h
 u8mKSyGcdR+aGFPxkKDJDPTttUwOdOel+uxiFGfjg48VIsc64zpzC6LO6s0kO9ityYsqeMtP6
 C6tqFbrwEFmTsWre3brW1c1oKJ9YC2H3Rtg7MIwq2luRXCFnwJf/hn85azAmHlXXAT0TpA3oi
 ilgyYa9FqfSo222A3uAkUexO45N1N7cOG4GA5mLwnl3ORrd1z/A1uLPdyubgSrrOao29EVhjm
 jXmd/DSJHlHYXhiRcQM5wAl3KM/5vUe9YOzH1G07goWzeHUQsPvfBlQCdxzWTBlULw3JOAVIZ
 H6rV/pRaSiFT4qJYGg1K7errOwYDBdBr/wo9pmOIRkzbGrf2RQleEwJJ2ZEwmUjkoFPkqDCn0
 MEM9hm54ijBCOX94uPXBrTRq5ArIMbmWk6I+64b8E2jewIgBrLxCmk/vltukb7QU1VK0RzoFn
 4efzBgvrQZ+y8DuGo7+bD5gAPrbH/N8Oo+SZeQ+2VoAmvw4IHBk/wAfUODeczNcoXQfhCwSoL
 nzV4wum+CBm9I+1H7jATGnj4UyvlR06B6/Oi5klmBjTsGnKGMw=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 217.72.192.75 is neither permitted nor denied by best guess
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

On Wed, May 6, 2020 at 5:45 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
> On Tue, May 05, 2020 at 07:42:43PM +0200, Torsten Duwe wrote:
> > On Tue, 5 May 2020 15:25:56 +0100 Mark Rutland <mark.rutland@arm.com> wrote:
> > > On Tue, May 05, 2020 at 04:12:36PM +0200, Arnd Bergmann wrote:
> > > This practically rules out a BE distro kernel with things like PAC,
> > > which isn't ideal.
>
> To be fair, are there big endian AArch64 distros?
>
> https://wiki.debian.org/Arm64Port: "There is also a big-endian version
> of the architecture/ABI: aarch64_be-linux-gnu but we're not supporting
> that in Debian (so there is no corresponding Debian architecture name)
> and hopefully will never have to. Nevertheless you might want to check
> for this by way of completeness in upstream code."
>
> OpenSUSE and Fedora don't appear to have support for big endian.

I don't think any of the binary distros ship big endian ARM64. There are
a couple of users that tend to build everything from source using Yocto
or similar embedded distros, but as far as I can tell this is getting less
common over time as applications get ported to be compatible with
big-endian, or get phased out and replaced by code running on regular
little-endian systems.

The users we see today are likely in telco, military or aerospace
settings (While earth is mostly little-endian these days, space is
definitely big-endian) that got ported from big-endian hardware, but
often with a high degree of customization and long service life.

My policy for Arm specific kernel code submissions is generally that
it should be written so it can work on either big-endian or little-endian
using the available abstractions (just like any architecture independent
code), but I don't normally expect it to be tested on big endian.

There are some important examples of code that just doesn't work
on big-endian because it's far too hard, e.g. the UEFI runtime services.
That is also ok, if anyone really needs it, they can do the work.

> > I suggest to get a quote from clang folks first about their schedule and
> > regarded importance of patchable-function-entries on BE, and leave it as
> > is: broken on certain clang configurations. It's not the kernel's fault.
>
> We can file an upstream PR (https://bugs.llvm.org) to talk about this
> (although I've CC'd Fangrui) but you would rather the kernel fail to
> work properly than prevent the user from being able to select that
> option? Why even have the "select" or "depends on" keyword then?

I definitely want all randconfig kernels to build without warnings,
and I agree with you that making it just fail at build time is not
a good solution.

> That said, I do think we should hold off on this patch until we hear
> from the LLVM developers.

+1

      Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a24EiEvGAenL0FdgGakmwWi%3DgiReOJuiisnzkgC_SuhZg%40mail.gmail.com.
