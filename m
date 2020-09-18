Return-Path: <clang-built-linux+bncBDYJPJO25UGBB3OCST5QKGQEBKNZBWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id 44FFC2707C6
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 23:06:54 +0200 (CEST)
Received: by mail-yb1-xb37.google.com with SMTP id b127sf6762348ybh.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 14:06:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600463213; cv=pass;
        d=google.com; s=arc-20160816;
        b=aLLrOhzRLr3fvagsmeQGJ4qrLCHDk2OKpEghz0BH/D9hUU1R8T4S0WRkGVeuNRtXhU
         BPe3k4HS9rAwcdXwu7oeHO6e6FoQknrL8rvRWTn8Y94xumLWVxy2nEQlpNi2djPZmY9Q
         6Rg0165woUfQU3RmBzqhf2kirAWzX4I6AzhzyW0EqQxKjRlzcCl/LUiBr3cLEWM0Bfkx
         FRrNpmlaa5PaZ4YccylaA/cl+1bjEIsCGG+a55ma04qPKrInKZn2E3CsVMmTTXNQ0m3S
         cOath+a1L2m1AHyVlESaoibCMwxUAIKQ6A9IUd6ujj19hPouEEOM4t+j8Gfvg9g+6HBf
         mtvQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=hvT802v01Fr/72D2cfyg3xyFNsPNHQLg7264amZ51J0=;
        b=YFs+BvyRx4LLkrVJ7xLtF+x5KIpB/SRXwsiKuOBHiSPOvd5EfcoeDgejzN53TbVpkj
         pfQE9U5tCE+uV2sYT8qzvqnynxy/7gVNE9Lx1210erTBtuTzZwnHA9B0DxQ7S6POjUWe
         OwA+E1+6aw0A3GReBNsioPUIb09PCQJ8ZdgD+5qk7C+wd5VMbv+jj1xEnORROtBY6HAZ
         5q3k8fWd4iAC1wAGjZUhiYETc61b6/lldXIxfJGcIxwsIZVtB7gyAEI6DyfuBuV592Ml
         RIs3G2VFio5HFHOxifBbXPnpACtPkOiJ7Lx+doYMW5/C4fRKITbda0pTcirWlZqC1WUD
         SbeA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=udkhQ9JU;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hvT802v01Fr/72D2cfyg3xyFNsPNHQLg7264amZ51J0=;
        b=SdTT4co5RYVIwti8eray1zaKucbqrXvPdKHr8fvk0AnacJOoois4h7YFcArfjkYuAA
         w7FMvzlihiQcgFXH2J0MnVrMR9gsHnDc/xbJF/cnOprvCB7XL/IzkOiSf4TSZctzzapE
         et3mKRPamf9t9w5h+Crv7ng1WVsq3WEBNWkrgd1HuDlFVs3jCGAsU7tdBwVFvFUmpG5X
         RPQ1w2K6Z0r7urI0FOO/EprnC3XthICHvGnrDcltOSrW7QyxePuSse5F09K+haAnxbn3
         H25JBHDXvuiQIMXn5lFS8ZajNWo2P0NoCKivdWdFVhTLjsQwRpSt8YdpkNwDhtuELknO
         miRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hvT802v01Fr/72D2cfyg3xyFNsPNHQLg7264amZ51J0=;
        b=VEezcVEhDlFV7bF+BXepuCY71wT8oHtGOscnhCy0RYZJsTiTTLYgGYyLxq8SsJSWiE
         guAAqRpP0VRTKxh2v6Hb9zKpvcmk1bCD1TcsHTfvv/LK2Tka+Y7+nPBUm54gPWXCLQdl
         Jl5P9hqoOMz4TpgQiUVRHoirBa+X2JxbmKZPgmMB1JozIiOTRB55tqVLfkWMBWKzXRut
         wp9aQ4KxyHrMim6YSaqpALfplCLIeiyYOly94/a3+/ETrkchMV8qBDSOYy3pTs5aemc+
         aVAxhV4ADjszrra7xOraOtiBdcAsSUyipRkENKuA46so3je5b1nJpdLKKY1xVHWIULE4
         FWYw==
X-Gm-Message-State: AOAM530R6FJLNqY2lBiv918dZQqA+ppm2mtBMlSGjRj92fpY1icMpCds
	mf+n2StYYv1hnpzrn2Clemc=
X-Google-Smtp-Source: ABdhPJwMNI786eq38IlbFuLsrAwNeHI0Mkm4r0iN9ww0BeVKaBWa4iwCxdRWxh5WSniyhqDpBXXtxw==
X-Received: by 2002:a25:d1d4:: with SMTP id i203mr10541910ybg.429.1600463213295;
        Fri, 18 Sep 2020 14:06:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:9005:: with SMTP id s5ls1358171ybl.4.gmail; Fri, 18 Sep
 2020 14:06:52 -0700 (PDT)
X-Received: by 2002:a25:bd41:: with SMTP id p1mr20271954ybm.475.1600463212822;
        Fri, 18 Sep 2020 14:06:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600463212; cv=none;
        d=google.com; s=arc-20160816;
        b=EbCz6OF+Skl9yj0vFNh0J5hfmXuOvz+DzWTV8vhvkW69/cCJdy0ndC2Q04GFpfKBkM
         1XRY40KybGV8zzHcj7gutxCmxnzWs/1SH1cgcecpqaZoPlcXitmLdXBpAUNpS14GKaIA
         vWzJD2iALTChjS/j9dpJ0+nGwYX6cv5D42/2pXAFM7I5Td48rgHMKghLC7Sb/8nPcX9t
         qd71jkCD6Z01KFHUD7Qqx/ZVLiVCd5fHxK35+j6qbwsYq2bfeF7+JAcTphZJJyw79Yvd
         g7vwkJ2bhvxw5ZL/nhNG6v08KJwPUuVrmcpAlDZxknZzlKXLyFvzMZNTNuAiKa+TsA0q
         Rg+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=n3/trMYxvoOh6hxMkstnG+j5yeJdNnsdtZ9F9ako3WM=;
        b=DCi8dnjPMfWPDiViZZJ0eUAxaMO68Zy7/MFP7iJyYKxAgUZDuj6uii508j3iO3AF4M
         ZB7HN+A3g1amrKIKiCFwZ6ytG0aK2mEBNyJAK1M7KbOqpGa0ysVvaMFtUxmn8RwP5yt9
         rQyxhAQGwYm0R/EM+4ZUQP9Co7WkSg1glE730NXalTvkvEyQD6N19ZMRf6Io4Drf1FuE
         nNoTY0XcpJqwrPBnej4Uk4doPvjE4z+vpNNQTR4JVBRiNrWpqw0WtbQkS1Qf6pl7nxRP
         en2XWzwTgWJSD/VDcx7N+ls7UsQ8fM8MibNm97XiGaB50wm2PGEWK4JoVi5bLWNoAyZF
         gWjQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=udkhQ9JU;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id s69si267727ybc.4.2020.09.18.14.06.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2020 14:06:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id fa1so3828153pjb.0
        for <clang-built-linux@googlegroups.com>; Fri, 18 Sep 2020 14:06:52 -0700 (PDT)
X-Received: by 2002:a17:902:ed11:b029:d1:f385:f4e7 with SMTP id
 b17-20020a170902ed11b02900d1f385f4e7mr11944535pld.56.1600463211751; Fri, 18
 Sep 2020 14:06:51 -0700 (PDT)
MIME-Version: 1.0
References: <20200914095706.3985-1-ardb@kernel.org> <CAKwvOdmSXm7cV3hB_Yp=DD0RwwDHtPzzDBU8Xj5kBREn3xqYdA@mail.gmail.com>
 <CAMj1kXGuFFUyT48EYvzFmjCP4QZi_Sk_GpBrBCaHjP7HKLhjBA@mail.gmail.com>
 <CAKwvOdmkNgi_+kfauTSLwtpVChipW851_KGJG+gBbhwRxJJORA@mail.gmail.com>
 <CAMj1kXHTkP7-8xscGZGXN_0Sq=BCSnt3zWqkcm8xdO11xmditA@mail.gmail.com>
 <CAKwvOd=G2Rr3StUJ=oWu1L4b5y615m+uYNW-Y5sis13uqBvrYQ@mail.gmail.com>
 <CAMj1kXHEpPc0MSoMrCxEkyb44AkLM2NJJGtOXLpr6kxBHS0vfA@mail.gmail.com>
 <CAKwvOd=Sq3XOquw4ACEi+cYCQp0-LW-JXoecFt+yy+jtmtuhiQ@mail.gmail.com>
 <CAMj1kXG9WBZb9WYCCng7CkJ+v8X=xHVhih274iuXMd5ua2nKPg@mail.gmail.com>
 <CAKwvOd=8QUQK6hCQaAGjX6o_jz_vgFewW6v+SPHZ7ZKi9LYcYw@mail.gmail.com> <CAMj1kXEM=bW6DdPDDeFOWi47O6JOu_czui9Y2BJfjiVdQ1CvOw@mail.gmail.com>
In-Reply-To: <CAMj1kXEM=bW6DdPDDeFOWi47O6JOu_czui9Y2BJfjiVdQ1CvOw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 18 Sep 2020 14:06:40 -0700
Message-ID: <CAKwvOdnrKcvJpomHPt_SCjQSW3iBOLFE=7hf0L1H3X1rW6GkQQ@mail.gmail.com>
Subject: Re: [PATCH 00/12] ARM: use adr_l/ldr_l macros for PC-relative references
To: Ard Biesheuvel <ardb@kernel.org>
Cc: linux-efi <linux-efi@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, Russell King <linux@armlinux.org.uk>, 
	Linus Walleij <linus.walleij@linaro.org>, Nicolas Pitre <nico@fluxnic.net>, 
	Stefan Agner <stefan@agner.ch>, Peter Smith <Peter.Smith@arm.com>, Marc Zyngier <maz@kernel.org>, 
	Will Deacon <will@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Jian Cai <jiancai@google.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	Masahiro Yamada <masahiroy@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=udkhQ9JU;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043
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

On Fri, Sep 18, 2020 at 1:44 PM Ard Biesheuvel <ardb@kernel.org> wrote:
>
> On Fri, 18 Sep 2020 at 22:03, Nick Desaulniers <ndesaulniers@google.com> wrote:
> >
> > On Wed, Sep 16, 2020 at 11:01 PM Ard Biesheuvel <ardb@kernel.org> wrote:
> > >
> > > On Thu, 17 Sep 2020 at 00:25, Nick Desaulniers <ndesaulniers@google.com> wrote:
> > > > Also, it looks like the GCC build of milbeaut_m10v_defconfig fails to
> > > > boot for me in QEMU; so maybe not just a Clang bug (or maybe, more
> > > > than one bug).  (or maybe one of my command line params to QEMU is
> > > > wrong).
> > > >
> > >
> > > I understand that this is actually an existing issue in -next, but in
> > > general, why would you expect to be able to boot
> > > milbeaut_m10v_defconfig on anything other than a Milbeaut MV10
> > > machine?
> >
> > We've been booting other configs in QEMU for a few years now, so I
> > don't see why yet another config would hurt.  Maybe there's some
> > hardware dependency, but I guess we'd find that out trying to boot it
> > in QEMU.  If it boots in QEMU, I guess not booting on metal wasn't so
> > bad?  Maybe this is considered an antipattern, but you can see how if
> > we've been getting away with it for years then that would lead to such
> > expectations.
> >
> > > (whatever it is) Or does QEMU emulate a milbeaut machine?
> >
> > $ qemu-system-arm -machine help
> >
> > doesn't print anything that looks like it, on initial glance.  Looks
> > like a socionext part:
> > https://www.socionext.com/en/pr/sn_pr20170105_01e.pdf
> >
> > > If
> > > not, better to stick with configs that are intended to boot on the
> > > QEMU machine emulation that you are using.
> >
> > I can see in our CI that we've been building+boot testing
> > multi_v5_defconfig, aspeed_g5_defconfig, and multi_v7_defconfig for a
> > while now without specifying any machine.  Is there a preferred
> > machine we should be using for those?  (It looks like qemu supports
> > ast2500-evb and ast2600-evb; is ARM1176 and ARMv6 core? Is that what
> > aspeed_g5 uses? Why is virt versioned? Ahhhh!!!!)
> >
>
> Milbeaut's serial output is on a "socionext,milbeaut-usio-uart" UART,
> and its defconfig does not include drivers for the PL011 or 8250/16550
> UARTs that you typically find on other boards. So how on earth would
> you expect to get any output at all if QEMU does not emulate this
> exact machine?

breakpoints in panic()/printk(), lx-dmesg in GDB via
CONFIG_GDB_SCRIPTS=y generally works. :^)

I guess one thing I don't understand is how to check what UART or what
the name of the tty device would be.  I can grep for
"socionext,milbeaut-usio-uart" and see where it's defined, but I never
would have/still don't know how to find that. Please teach me how to
fish.  I understand the point of DT, and see

arch/arm/boot/dts/milbeaut-m10v.dtsi
76:                     compatible = "socionext,milbeaut-usio-uart";

but the comment about ttyUSI0 is confusing to me; that identifier
doesn't appear anywhere else in the kernel sources.

I generally have the same problem trying to run Pixel kernels in QEMU;
I don't understand how to determine which serial driver is being used,
and what the tty device would be named.  So I just enable the PLO11
driver.

Only last week I found that trying to use a shell as init without any
serial output can result in the shell exiting, panicking the kernel,
which doesn't print over serial...goose chase...

> In general, if you use QEMU/mach-virt, the only defconfigs you should
> reasonably be testing are the ones that contain CONFIG_ARCH_VIRT=y.

Looks like then that would only be multi_v7_defconfig.  How do we
continue to verify we can boot ARMv6 or ARMv5 under virtualization?
There are such machines in QEMU, but then no defconfigs in the kernel.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnrKcvJpomHPt_SCjQSW3iBOLFE%3D7hf0L1H3X1rW6GkQQ%40mail.gmail.com.
