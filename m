Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBYPT4KAQMGQEOFYBN3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id 759EF325F9A
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Feb 2021 10:05:38 +0100 (CET)
Received: by mail-yb1-xb40.google.com with SMTP id v6sf9446614ybk.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Feb 2021 01:05:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614330337; cv=pass;
        d=google.com; s=arc-20160816;
        b=FQ33O8V9sFWmDVQNZJE/ziAQFM1Ted/32mE9/ZMavAZNdkaWv1ZOgXZu6SYcuAaxPZ
         2FpjkZfinnRLlmiaCLEQBpHYtyZhtpaxIMo+OzIy25u9bW7ehzBxXMPU062MGw9XqZD+
         91gfV23rkrNmv3vWiq+JpRh6oeqfioPh7Ze/20fJGTq1TxmzCndrXmrVO/1rhwKziSAu
         rI5NbnPSN1D6utKqv9SMbwIFmXwc1JNVxQ63Apa9zdbvboIQRSP8xngUUbuXyIpzb2Ik
         t+R5iiFTKhr3eoHcVsFZB2kyoTG6HyFcpjt+S5/pygYz9G6fLKTTGCdnnP/xNdOZiJBW
         aeew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=QpRbsFejHBBXtk4LCrN9WMSn2PWHc3cMfwR4f5rfyyE=;
        b=ngjKO020BS9eWh+rN661R+qwn4iiKwEyHzQXaOg/1D2aXcGoEYi8iPeJ4XMDBL+itf
         hAIaCzFzypfGvFL7EZdnn1ebqPxvSC1ZFjPOd4D60O9XF+7VqbmIHwCOCd+Yb9tM1POG
         LpVH7aNcERj1uPDrK8Ecwe7aEicMs5DQKwcblyjUPMhw3yx00gGezX3+wOb6QrsEYdF0
         /fXVEXoWRowRIDFPqr+DhlVFNXwPfN7Fe4APASiBCcXYMkjg/ze6QNyKLsu5UCJbOmUI
         gsHp1RyhlsWoUE48N+J044jHPY23JiVPbYYcKGPYSrY6e3/2mnWjawxxaYXoo5O8M5t0
         QdgA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oA7LpeV2;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::135 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QpRbsFejHBBXtk4LCrN9WMSn2PWHc3cMfwR4f5rfyyE=;
        b=q5Fl3Qs3LRsyngEq7SdMS4dnztTEjsAbjQuS8xan6uxs4JlV1Hk3aItMVNfrz4rz4w
         Mm3t7PK7b/38itgfeyfVNX7EE6a8yu45wFuHHj2f4YO44AD8rYXiwl1tEQQOqklcgF+i
         T+o7wjUJ9ir98OznbgsANkMJOn6eVKZcTo/j8to+0odR8d1t4M7FdGaFXQGF8WFDVqTJ
         tcY4FfkXgirDD/tKMR1WcrvHp4TYeYSbWgRtgZQvC9SHqnknI3faRyHzJC27ivNrJlZN
         VYa5Z1NPsH7tPKdbOkqAt7QB9MjSSuYPZgjkbpiFlBtvSCU0YWwh0H+D23cQwl3O30tK
         u0jQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QpRbsFejHBBXtk4LCrN9WMSn2PWHc3cMfwR4f5rfyyE=;
        b=CwWZIlQ/xF8Q+K+CTt4+MKuyj91SIdib9Jos4o8sf48Yb6naOYn/Dq3RY2kuMvh1TX
         r72leMpuTF9sntk1EUdTcebvx5uy3DVLassDZgsx/3lt+zhhpsGnYvM8Lv7I51BRynV+
         c1pMxMULG+RElKIlsp669T8/IEpTwofNpWRKoz1svAy2uJTtUIzu4cbd0FT8V7bIWiDl
         CILT91Tca/zZYL71WpCYApvzxjra5hjUlsJoTit7YTYQwXhVJU/WUh2uvE4nJc5nrRK0
         w+sh1Kl8UkBZlN4nsY6EKIcUGplvMy4Yn8mYLJOSQ90GvfzKJ+VBxXO9Q2GIBjjs/Tyu
         gp0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QpRbsFejHBBXtk4LCrN9WMSn2PWHc3cMfwR4f5rfyyE=;
        b=Fgxjl+v7abpKQ1fDd/WBbrfEzKMFTlE7CMFabciSgtoIeCFwY/6Qs0vrejm0jZru42
         SG72pXw+FTNHh3PLcC+b08adU0M75I2ADsgw8C0ZytGZxYzMqlVEwXMyEhYQoHH0q/qM
         u6eXoD1UHJA2hJoGzRppfHhm1YI+gRs+T8O10VV0+wLV94qOFQSmnbZJvg2uCk7+ddx1
         2kpHWuzm3/GNfo3IPNwEAT8a8Lqa6fIJBdL2hOErFGbzK225EsyK5T+fp9BKF4fIh04a
         fv+69yJJiHLDmj0Z0ZJj8KJaIIeA0fJ9P6YGFTQYBrwZAbBcQI59RQs/kbyYFpO0DeKm
         FsxQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532iZEVAzHnW0XGoyo6NWmSW3bvJQbsGvbTMV0UlnA2Z6YSRqiyO
	WcI+ZhTRRBh7IGKBqmpFdV0=
X-Google-Smtp-Source: ABdhPJxM85Jkbj0my6QZAsaLK9dw08p/n8BgMbqmkTW0GKeONQ9UAd+QmfMNeuyax+R1qFmtBhwAAw==
X-Received: by 2002:a25:2a84:: with SMTP id q126mr2868181ybq.167.1614330337344;
        Fri, 26 Feb 2021 01:05:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:820b:: with SMTP id q11ls1993833ybk.5.gmail; Fri, 26 Feb
 2021 01:05:36 -0800 (PST)
X-Received: by 2002:a25:abce:: with SMTP id v72mr3309167ybi.152.1614330336868;
        Fri, 26 Feb 2021 01:05:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614330336; cv=none;
        d=google.com; s=arc-20160816;
        b=f5Y4Dl4RWYhEaiGXi3Xi77RiPaVUItE+h7mr86rGg4QN1dw4+Hc8jdUI9Q08ul1D1S
         omN4+vGeyNFY6+UnUlBJY0KgXTgnzkQpn+cBL8tmE7XnQUQqJATa2rLs1q5jm1p7l+nN
         ENS0iCneHZQfIuRRIru4soOmDlnvjtrzOKvxZ10iB68qPvl9fcNOghNb9Cw9PcsUeIRb
         nVtgIzvinDs6olWb+wRRjpwipsFqAsKh373XwYpQKpkPkFcbKeMApRQy71/lsxP0jRip
         mho4embB9NKI3syeqkGiUD4oRcFCaDDHaJde4LQ0/ZG2h4JpeDGWca08IHiAcOdOnVDp
         nEVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=iJFcEa8Md91qPWXA3MXvjPfvCleZ0GnvsYYC4ySVP+o=;
        b=IGKfGuA7nP++ZtG7liFVlraZem4WiXEZ43vibWylPseMeBVNAEL7+vSbX70SNHlzWF
         MFgzLFIvFcls17XSMwHNUac8qBsos8NkqdmmrPmGMqwSH92TcOVQeaTbxb4Bt5P4+mRm
         yCrwq2vKSz5CI+yvsdUk6Rul0bKu45m5iPVRbW5WWT4hamaQM0tTr1IzryKRU6ZDHjUS
         dEW/gj+r2StzozF3SLHkS3HyVjkgVPRrUzG7cnjgM+VwZGEnKZkHT6bKNMUVXMhGLksR
         cgiOr8F6f4JXAYQoQrtwFtPu0n99yIv5avRx4M7ptZaZh1lOiITDYbxHzvxo7eRy5//G
         LelA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oA7LpeV2;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::135 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x135.google.com (mail-il1-x135.google.com. [2607:f8b0:4864:20::135])
        by gmr-mx.google.com with ESMTPS id e143si543607ybb.5.2021.02.26.01.05.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Feb 2021 01:05:36 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::135 as permitted sender) client-ip=2607:f8b0:4864:20::135;
Received: by mail-il1-x135.google.com with SMTP id o1so7398671ila.11
        for <clang-built-linux@googlegroups.com>; Fri, 26 Feb 2021 01:05:36 -0800 (PST)
X-Received: by 2002:a92:c145:: with SMTP id b5mr1599185ilh.186.1614330336411;
 Fri, 26 Feb 2021 01:05:36 -0800 (PST)
MIME-Version: 1.0
References: <20210225112122.2198845-1-arnd@kernel.org> <CA+icZUUDnKBxkfgOVYDdpA29GnLUTT22mqRNyxQeYmay044ejg@mail.gmail.com>
 <CAK8P3a1QmS6g3cHTR93wWPkKs8vaP6RJEb8nZbTMLX+xphLJRw@mail.gmail.com>
In-Reply-To: <CAK8P3a1QmS6g3cHTR93wWPkKs8vaP6RJEb8nZbTMLX+xphLJRw@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Fri, 26 Feb 2021 10:05:25 +0100
Message-ID: <CA+icZUW9Hzm_ZZtLiJu8pVeOmYJMOaXkV4Om_u4yZKYRVWNddA@mail.gmail.com>
Subject: Re: [PATCH] [RFC] arm64: enable HAVE_LD_DEAD_CODE_DATA_ELIMINATION
To: Arnd Bergmann <arnd@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Arnd Bergmann <arnd@arndb.de>, Kees Cook <keescook@chromium.org>, Mark Brown <broonie@kernel.org>, 
	Vincenzo Frascino <vincenzo.frascino@arm.com>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Kristina Martsenko <kristina.martsenko@arm.com>, Ionela Voinescu <ionela.voinescu@arm.com>, 
	Mark Rutland <mark.rutland@arm.com>, Andrew Scull <ascull@google.com>, 
	David Brazdil <dbrazdil@google.com>, Marc Zyngier <maz@kernel.org>, Ard Biesheuvel <ardb@kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=oA7LpeV2;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::135
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

On Fri, Feb 26, 2021 at 9:14 AM Arnd Bergmann <arnd@kernel.org> wrote:
>
> On Fri, Feb 26, 2021 at 1:36 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >
> > On Thu, Feb 25, 2021 at 12:21 PM Arnd Bergmann <arnd@kernel.org> wrote:
> > >
> > > From: Arnd Bergmann <arnd@arndb.de>
> > >
> > > When looking at kernel size optimizations, I found that arm64
> > > does not currently support HAVE_LD_DEAD_CODE_DATA_ELIMINATION,
> > > which enables the --gc-sections flag to the linker.
> > >
> > > I see that for a defconfig build with llvm, there are some
> > > notable improvements from enabling this, in particular when
> > > combined with the recently added CONFIG_LTO_CLANG_THIN
> > > and CONFIG_TRIM_UNUSED_KSYMS:
> > >
> > >    text    data     bss     dec     hex filename
> > > 16570322 10998617 506468 28075407 1ac658f defconfig/vmlinux
> > > 16318793 10569913 506468 27395174 1a20466 trim_defconfig/vmlinux
> > > 16281234 10984848 504291 27770373 1a7be05 gc_defconfig/vmlinux
> > > 16029705 10556880 504355 27090940 19d5ffc gc+trim_defconfig/vmlinux
> > > 17040142 11102945 504196 28647283 1b51f73 thinlto_defconfig/vmlinux
> > > 16788613 10663201 504196 27956010 1aa932a thinlto+trim_defconfig/vmlinux
> > > 16347062 11043384 502499 27892945 1a99cd1 gc+thinlto_defconfig/vmlinux
> > > 15759453 10532792 502395 26794640 198da90 gc+thinlto+trim_defconfig/vmlinux
> > >
> >
> > Thanks for the numbers.
> > Does CONFIG_TRIM_UNUSED_KSYMS=y have an impact to the build-time (and
> > disc-usage - negative way means longer/bigger)?
> > Do you have any build-time for the above numbers?
>
> They are in the mailing list archive I linked to:
>
> ==== defconfig ====
>      332.001786355 seconds time elapsed
>     8599.464163000 seconds user
>      676.919635000 seconds sys
> ==== trim_defconfig ====
>      448.378576012 seconds time elapsed
>    10735.489271000 seconds user
>      964.006504000 seconds sys
> ==== gc_defconfig ====
>      324.347492236 seconds time elapsed
>     8465.785800000 seconds user
>      614.899797000 seconds sys
> ==== gc+trim_defconfig ====
>      429.188875620 seconds time elapsed
>    10203.759658000 seconds user
>      871.307973000 seconds sys
> ==== thinlto_defconfig ====
>      389.793540200 seconds time elapsed
>     9491.665320000 seconds user
>      664.858109000 seconds sys
> ==== thinlto+trim_defconfig ====
>      580.431820561 seconds time elapsed
>    11429.515538000 seconds user
>     1056.985745000 seconds sys
> ==== gc+thinlto_defconfig ====
>      389.484364525 seconds time elapsed
>     9473.831980000 seconds user
>      675.057675000 seconds sys
> ==== gc+thinlto+trim_defconfig ====
>      580.824912807 seconds time elapsed
>    11433.650337000 seconds user
>     1049.845569000 seconds sys
>

Thanks for the numbers Arnd.

> So HAVE_LD_DEAD_CODE_DATA_ELIMINATION is a small improvement
> on build time (since it can spend less time linking), while
> CONFIG_TRIM_UNUSED_KSYMS slows it down quite a bit. Combining
> CONFIG_TRIM_UNUSED_KSYMS with CONFIG_THINLTO is really
> slow because here most of the time is spent in the final link (especially
> when you have many CPU cores to do the earlier bits quickly), but then
> it does the link twice.
>

My first pre-v5.12-rc1 kernel-build was with Clang-ThinLTO enabled.
But with the next ones I jumped to Sami's Clang-CFI.

> > BTW, is CONFIG_LD_DEAD_CODE_DATA_ELIMINATION=y setable for x86 (64bit)?
> > ( Did not look or check for it. )
>
> No, in mainline, HAVE_LD_DEAD_CODE_DATA_ELIMINATION is currently
> only selected on MIPS and PowerPC. I only sent experimental patches to
> enable it on arm64 and m68k, but have not tried booting them. If you
> select the symbol on x86, you should see similar results.
>

OK, i see:

$ git grep HAVE_LD_DEAD_CODE_DATA_ELIMINATION arch/mips/
arch/mips/Kconfig:      select HAVE_LD_DEAD_CODE_DATA_ELIMINATION

$ git grep HAVE_LD_DEAD_CODE_DATA_ELIMINATION arch/powerpc/
arch/powerpc/Kconfig:   select HAVE_LD_DEAD_CODE_DATA_ELIMINATION

So, I need to add this to arch/x86/Kconfig.

You happen to know if changes to arch/x86/kernel/vmlinux.lds.S
(sections) are needed?

Last question:
The last days I see a lot of fixes touching inlining with LLVM/Clang v13-git.
What git tag are you using?
What are your experiences?
Pending patches (kernel-side)?

I use:
$ /opt/llvm-toolchain/bin/clang --version
dileks clang version 13.0.0 (https://github.com/llvm/llvm-project.git
c465429f286f50e52a8d2b3b39f38344f3381cce)
Target: x86_64-unknown-linux-gnu
Thread model: posix
InstalledDir: /opt/llvm-toolchain/bin

My LLVM toolchain is ThinLTO+PGO optimized for Linux-kernel builds.

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUW9Hzm_ZZtLiJu8pVeOmYJMOaXkV4Om_u4yZKYRVWNddA%40mail.gmail.com.
