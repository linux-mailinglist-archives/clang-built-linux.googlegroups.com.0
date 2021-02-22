Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBIN6Z6AQMGQEPSL3KCI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ECA7321D48
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Feb 2021 17:43:14 +0100 (CET)
Received: by mail-yb1-xb38.google.com with SMTP id v6sf17123808ybk.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Feb 2021 08:43:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614012193; cv=pass;
        d=google.com; s=arc-20160816;
        b=NiwP6ITWHtRsbe25lWIU9bAinAVF4NC9OMnodPdK1CsSJIZFV8TRLG5ifixHtgmzD0
         JDCOz9Mk9K6Jb/txKbtNVxjRe1ilCA3c4eo9IUfxEp8BAjO+n5Yt9QKAlKfvOcmIBj7m
         u2/JuTdBAeFvv+de5CLmAapsmIKusOqvrOPxT5f8dVfYCs9GrXqh7YF9mX58biypOWjt
         W4pGWPHyYoti50YVG7ySXipszqx/hosW9thhZHGSG5sTq+2PKMNHyua0X65MQJrDeoTc
         3JU6deeztyQcB+GYea1q7vwLZXxlAfCpzRutpK+SU+OBk3v8mLGCus2DdSCXuiQHtEWV
         jQDg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=3oKUx2JUZsGpPP1zoVXMKPqfNhkiBz/DWhKwnSwRyBU=;
        b=ZpNcvi4CwlUaHQCbhtRlQwb44D7vOeF0b9B5YDESRqTMS/nbc6tKGgvpCGSBSpRPoh
         1SnDo3XzUjuH4M1yiSEHpyXMig3sEIpWKD6ei869PeBNXKKKHF079HSViv+LREllzcTB
         7a8r0Luu7FDjTpdiX3u6WnInEvm5Qe9MBRe+/n4KnNk83Xt0hE3nxrz6mr2VN0eH3+or
         5RmJy50QR9L0YoQ4Yp0hFNS7S0xSFhKR5xRaM8nI6qWAJ2ESimSS7H5djCovSZEqVZah
         KH7FW8+Y6Zn4LAlpiCnidjBinTR28doYDuKERyj4NAdq9DMZli6Aepqd0ht13gwt0y8Q
         pLKQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=D9OvjGSb;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d31 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3oKUx2JUZsGpPP1zoVXMKPqfNhkiBz/DWhKwnSwRyBU=;
        b=BDU9dQv8eHPNZxQXqZLuR6aKkl/dv8V1VXuUH6eajYjq+CZfwZLA9XCQ9npfuF3neT
         Fcwt88mJT2AzYScwl92oukhvhD2LH5Y260sif9kIaicD+J7x00yztry9dQvv9BNwUPYv
         yfFDtxxalASjaC+B/tz9UhRavoxW8CWyll5wpFzsjZaWD3fHZ4sJuToVpcSJfl6PXwJo
         VbZR1p/cl2XNKBJJPb1fKsEbCyBLTXJfpombTFJ0fmaHwQHXpq5mv+r5jZLuI/A2NV7P
         UpE67yL28Jh9VT0wk0x+shkdwWkxJTXBPY5y8WUNDRv5TbRZIDZlEy+m1W8uvWp/DOlD
         0QwA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3oKUx2JUZsGpPP1zoVXMKPqfNhkiBz/DWhKwnSwRyBU=;
        b=kiV3gFbeQ/KBM6Odzw8/AvORS3vmpF8tCNwp5VNAHb5RSFocbFWFxk5++IJQPUlDvT
         dHhmYlghfq8+mR019/1H9TmGKDkSyykNU+IXUsP0v4mW2akDGcvvr8jvJ1flxGs9mDWr
         9NUQaA7ZAZrhRXxbTh7ahSP+drPnge2Ueym/2+1ZVBnXQKUzgvqEGhres0pj1BMrmtuf
         pSUje8o1gn34QCLrKM8WlCvX+QlVoKl2UdXxHGQngCY+ptdOWdYgSsJugtHMeh2Yho4G
         AbBlZ9TMoYmMSIPddmzXWvvRUF41rXo1/jx1G46UnVEJXV/5JWMa1B7Adv7JiUc+6vdw
         5+5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3oKUx2JUZsGpPP1zoVXMKPqfNhkiBz/DWhKwnSwRyBU=;
        b=AF9CgTUYf3zZKBsAIe2pwk2byEyYEIgtkXQfSZxFxmLyPWxl5JtP5g4gWAwPWtRnYM
         o8dEyUZcpfkG0hQfwHhDqiyg9obzdYOsH4AjOUmUDT7bjn9R4OhY7lwrACsHE3wEDOps
         fpnc+d4CS+gDVWH2aKZ8iS2joNp6K6SJ20Ku3KhJeDIeZNmRe0hoj6GeVsLgviPQtPf6
         jF/eiaZ3mU6Oo5SIpPHGrRlRgHsAlsc7oM/bq0gCwoaJ/f1wI0POlxBrgN2bL4ljW0lz
         ifPkK6sK7Xpm1jk4OF7xwl0gxyzmbWIm0+hB2uPLiX8Gr9PEwfkDoQ30eL3c81+BkZKV
         5Z6g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530bIeIpfDH5G4LK7KLkCTe1KwnjxokPFSTvfi6U/iz232WUxmsy
	DNPfBaEkdpDeDZXWCb+86oA=
X-Google-Smtp-Source: ABdhPJz9P8+EXGKPaNsZVkn5DycVY7gIB4B5bbc3nNIs/XgLET2D3S25UqMemPY1i4sDvSdRJ0PnVg==
X-Received: by 2002:a25:fc1d:: with SMTP id v29mr34831726ybd.472.1614012193499;
        Mon, 22 Feb 2021 08:43:13 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:b5cb:: with SMTP id d11ls8589949ybg.5.gmail; Mon, 22 Feb
 2021 08:43:13 -0800 (PST)
X-Received: by 2002:a25:9982:: with SMTP id p2mr4218272ybo.457.1614012193073;
        Mon, 22 Feb 2021 08:43:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614012193; cv=none;
        d=google.com; s=arc-20160816;
        b=BpdwRPNYVuTtKA8h5S2QY+80ceS5kjJiNhJOGlLGIQ1eWD1PGM4bwmi7nynb41QPN1
         gwPy9Pe5CcKkfumnv5sTC87PDSJhmy07GUUJbOBRFdZEtuTI1RmGD8eVCPUHe14Rm5/s
         V4TkBywL9heliV02XULckJJHKRLhMi8rhSk79qjY4UZ3I7nOR8mU0TxEYKHSi1Q3ZawG
         PzdoCgdRCmHsWFl3zr3f8s2D2AP9ovGWlUlIZ7HVPBxa62keiofjuoTEWwBSgIauPZVm
         Pa6BjqsKsLKXinucQ5oNeEXiAMWneyysWAFN455EOyfWS/Cj6KnwJnjkuc9caNE7WVkZ
         ndDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=pMONngvvuyffvAM1oBHinIVMZdGYRmB5h1Te5Fms+io=;
        b=IBw7J+Cx7jywQ/klgf9vYVKkKfCu19s8iaPIWGr0RW5KVxcM6ntolYmZNJ1ukefoF3
         QXaQXGj7caDl4ymMMYDpEOeVSzgdEDmTsQWSUsIhtVqjnmRk1K1vgKxK7AHbF5EU1KN0
         DQsfOb/KBxxFKKC3zPU3Hr4vw9Y1p+5lWzYQgdD1oNEfX34y74kSdVSQOX7dklZZH0jR
         R9JytfEOwLNQt46pG1CeN6TCxhbDrT33Oow7XKczoe5LODwuOhy/WnHHkEv0tGiR42kA
         /1tt5yw3dRSfH/TYLQ/BerVju+JKWFopaXBE1gQRts7adgHSZ8IDyDweUQg8obWtHuuD
         5Ghw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=D9OvjGSb;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d31 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd31.google.com (mail-io1-xd31.google.com. [2607:f8b0:4864:20::d31])
        by gmr-mx.google.com with ESMTPS id k6si818358ybt.4.2021.02.22.08.43.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Feb 2021 08:43:13 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d31 as permitted sender) client-ip=2607:f8b0:4864:20::d31;
Received: by mail-io1-xd31.google.com with SMTP id k17so6072406ioc.5
        for <clang-built-linux@googlegroups.com>; Mon, 22 Feb 2021 08:43:13 -0800 (PST)
X-Received: by 2002:a5e:c10b:: with SMTP id v11mr16261489iol.75.1614012192564;
 Mon, 22 Feb 2021 08:43:12 -0800 (PST)
MIME-Version: 1.0
References: <CA+G9fYtNOZ-G_RTq_Uedy-7wkFog2q+OWNbWd--eL+i2-OQ7NA@mail.gmail.com>
 <CA+icZUVdpyNC=e8Cdg2bXaKdQGgkY1Te-OEXE7jaKARw0KKrCw@mail.gmail.com> <CA+G9fYvGgR82mwC9Kk6fKR6Cb53u02MQJffBBZ+bTp2nNxHL7A@mail.gmail.com>
In-Reply-To: <CA+G9fYvGgR82mwC9Kk6fKR6Cb53u02MQJffBBZ+bTp2nNxHL7A@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Mon, 22 Feb 2021 17:43:07 +0100
Message-ID: <CA+icZUX6y_cPa1ev3RGbq2P8-PfthzZYJUbP3W_9du=GBLQXdA@mail.gmail.com>
Subject: Re: clang-12: i386: Unsupported relocation type: R_386_PLT32 (4)
To: Naresh Kamboju <naresh.kamboju@linaro.org>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, 
	open list <linux-kernel@vger.kernel.org>, x86-ml <x86@kernel.org>, 
	lkft-triage@lists.linaro.org, Nathan Chancellor <natechancellor@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <nathan@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Fangrui Song <maskray@google.com>, 
	Arnd Bergmann <arnd@arndb.de>, linux-stable <stable@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=D9OvjGSb;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d31
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

On Mon, Feb 22, 2021 at 5:30 PM Naresh Kamboju
<naresh.kamboju@linaro.org> wrote:
>
> On Mon, 22 Feb 2021 at 21:44, Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >
> > On Mon, Feb 22, 2021 at 5:08 PM Naresh Kamboju
> > <naresh.kamboju@linaro.org> wrote:
> > >
> > > While building i386 configs on stable-rc 5.10, stable-rc 5.11 branch
> > > and mainline
> > > with clang-12 these following warnings and errors were noticed.
> > >
> >
> > Hi Naresh,
> >
> > Please see commit bb73d07148c405c293e576b40af37737faf23a6a
> > ("x86/build: Treat R_386_PLT32 relocation as R_386_PC32").
> > Recently accepted into Linus Git tree.
>
> Can this be backported / cherry-picked into stable-rc 5.10 and stable-rc 5.11 ?
>

I have this one in my custom patchset (even though I only build x86-64).

Makes sense to have it in Linux v5.10.y LTS and Linux v5.11.y and
maybe other linux-stable releases.

The usual way to get a fix into linux-stable is to contact Greg and
Sasha - the Linux-stable maintainers and ask for inclusion.
See "STABLE BRANCH" in MAINTAINERS.
But we have also LLVM/Clang maintainers (see [2]).
Cannot say if you address LLVM/Clang maintainers first... and they
help or what is the recommended/ideal way.

- Sedat -

[1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/MAINTAINERS/?h=v5.11#n16828
[2] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/MAINTAINERS/?h=v5.11#n4306

> >
> > [1] says:
> >
> > Further info for the more interested:
> >
> >   https://github.com/ClangBuiltLinux/linux/issues/1210
> >   https://sourceware.org/bugzilla/show_bug.cgi?id=27169
> >   https://github.com/llvm/llvm-project/commit/a084c0388e2a59b9556f2de0083333232da3f1d6
> >
> > Hope that helps.
> >
> > - Sedat -
> >
> > [1] https://git.kernel.org/linus/bb73d07148c405c293e576b40af37737faf23a6a
> >
> > > make --silent --keep-going --jobs=8
> > > O=/home/tuxbuild/.cache/tuxmake/builds/1/tmp ARCH=i386
> > > CROSS_COMPILE=i686-linux-gnu- 'HOSTCC=sccache clang' 'CC=sccache
> > > clang'
> > >
> > > drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:2586:9: warning: shift
> > > count >= width of type [-Wshift-count-overflow]
> > >
> > >         return hweight64(VDBOX_MASK(&i915->gt));
> > >                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > > include/asm-generic/bitops/const_hweight.h:29:49: note: expanded from
> > > macro 'hweight64'
> > > #define hweight64(w) (__builtin_constant_p(w) ? __const_hweight64(w) :
> > > __arch_hweight64(w))
> > >                                                 ^~~~~~~~~~~~~~~~~~~~
> > > include/asm-generic/bitops/const_hweight.h:21:76: note: expanded from
> > > macro '__const_hweight64'
> > > #define __const_hweight64(w) (__const_hweight32(w) +
> > > __const_hweight32((w) >> 32))
> > >                                                                            ^  ~~
> > > include/asm-generic/bitops/const_hweight.h:20:49: note: expanded from
> > > macro '__const_hweight32'
> > > #define __const_hweight32(w) (__const_hweight16(w) +
> > > __const_hweight16((w) >> 16))
> > >                                                 ^
> > > include/asm-generic/bitops/const_hweight.h:19:48: note: expanded from
> > > macro '__const_hweight16'
> > > #define __const_hweight16(w) (__const_hweight8(w)  +
> > > __const_hweight8((w)  >> 8 ))
> > >                                                ^
> > > include/asm-generic/bitops/const_hweight.h:10:9: note: expanded from
> > > macro '__const_hweight8'
> > >          ((!!((w) & (1ULL << 0))) +     \
> > >                ^
> > > drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:2586:9: warning: shift
> > > count >= width of type [-Wshift-count-overflow]
> > >         return hweight64(VDBOX_MASK(&i915->gt));
> > >                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > > <trim>
> > >
> > > 32 warnings generated.
> > > Unsupported relocation type: R_386_PLT32 (4)
> > > make[3]: *** [arch/x86/boot/compressed/Makefile:116:
> > > arch/x86/boot/compressed/vmlinux.relocs] Error 1
> > > make[3]: *** Deleting file 'arch/x86/boot/compressed/vmlinux.relocs'
> > > make[3]: Target 'arch/x86/boot/compressed/vmlinux' not remade because of errors.
> > >
> > > Reported-by: Naresh Kamboju <naresh.kamboju@linaro.org>
> > >
> > > Steps to reproduce:
> > > ---------------------------
> > > # TuxMake is a command line tool and Python library that provides
> > > # portable and repeatable Linux kernel builds across a variety of
> > > # architectures, toolchains, kernel configurations, and make targets.
> > > #
> > > # TuxMake supports the concept of runtimes.
> > > # See https://docs.tuxmake.org/runtimes/, for that to work it requires
> > > # that you install podman or docker on your system.
> > > #
> > > # To install tuxmake on your system globally:
> > > # sudo pip3 install -U tuxmake
> > > #
> > > # See https://docs.tuxmake.org/ for complete documentation.
> > >
> > > tuxmake --runtime podman --target-arch i386 --toolchain clang-12
> > > --kconfig defconfig  --kconfig-add
> > > https://builds.tuxbuild.com/1opxSKxZuRowPsiOsSJ0IoUOXOt/config
> > >
> > > --
> > > Linaro LKFT
> > > https://lkft.linaro.org
>
> - Naresh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUX6y_cPa1ev3RGbq2P8-PfthzZYJUbP3W_9du%3DGBLQXdA%40mail.gmail.com.
