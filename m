Return-Path: <clang-built-linux+bncBDYJPJO25UGBBF54VH3QKGQEN5V4J4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D9641FD431
	for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 20:16:57 +0200 (CEST)
Received: by mail-pj1-x1040.google.com with SMTP id v3sf2129384pjy.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 11:16:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592417815; cv=pass;
        d=google.com; s=arc-20160816;
        b=w9DWjyDPwRFohgwxEmW4SKMKdeh0cNwaXkEhyvw8YSs4bwkNWk4gkAeOGtPzGg1P4P
         dVCVcPA14wQ3aYf+Kn9+6yOrIXTZbotElexOf/0Xpa9re3E5QvPeBGNK2haGMkhvnCnB
         FfW3FSV1LlY3HiIMDh9+yrueA+Cp9YV3L9/6wTrBz3Rcm/3ZeX0tsixBwGf0YfBU0Y8R
         dInugp+krBg8MM23x3db21UU7t2F0n4QILM0DXqq7WAd1jYsTUZ0JAiA+P9MfxI8NR8O
         jlW3DFQsSnpxyYw3Y8JxrdNxco9gD1KLwgTbxgUxvd2B1uJtmZRRhJwU4LQN2SyBAElF
         XeaA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=wr2uEMmhrLVzyovXGY6nai2GfPt34qzdj/eYkpWvOOU=;
        b=zqGhrIp+w7Z5P9086eneTS3HIEqRH27H7cJKKz73zmLAWiqu2cA7IiNX4KI+VP/TRE
         VHYEEIg82XkvloR4m4In3+E6AfTPrQupOo1ROfUdAJGjYD5bX44HTh+97SLD7ZG5AKhl
         fRBQMjOQSlvFtFRPFhFf0UKwx88gpGl5ng2LLHyhCHtmatMcDvSiZsKSU0ksekfe2Ugg
         qgL0lz9Zs3/uTigS2b+kThKs1dewq97iW7ydkQ+7+H23jaZdZvvTCnf/bTDVpIZnKQom
         wF1aRriWr3Pm4InIoSoIbzJC9h4TLk81HCUprLsVZHnnHMPl6922CEx5dm/ef7jZOWPU
         m1cQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gMJvLtSi;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wr2uEMmhrLVzyovXGY6nai2GfPt34qzdj/eYkpWvOOU=;
        b=PHhUiGRc793ezFJE9bMfwKsGy1BNRnhVDQ7IUIFoPSGX5KKDdCPIAubBCwLIb1KRzU
         Wv6EoEBycbSnZOw2oSpGxPLkNAO4u0EnFEL/+CE8rWBqw0cLHdZ/6cjkhZIc9581Oqyx
         huqW+VpYKX+/zeEaBhwUQ1ygyOLgwPvcpxluIwdOWQtWy0rFoF7MspFjnjqkrCDjfhhF
         5YDRuniBnDCP0/gnnsK8WZqKEJKIOgL/21UT6zeBXukdzC23izo99w2SaTEcjX0scLNQ
         H/ur57FYzr1ZwBval1gysDo1P1z5KDGB4v6QzFJ8sE/GhTOcVJmzxsYTC5zlEdqm4fDe
         BgAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wr2uEMmhrLVzyovXGY6nai2GfPt34qzdj/eYkpWvOOU=;
        b=f3CHvnWAOeM7mzu0R7+Cd9ONwPrppPRcsjl4yJBE1h39RjLG4swarNFBimX+WJQXmA
         mgSS/KaJ3cIEpYn7CaDGSGSE1i/iiRbpwyRNf7ZtUji+Bi2jzxL5FQUk2pil/OlpWuj3
         1snBVPM2xHNQ5UXw4cv+BfIHIQveiWN09KospwbOEUwOt7Y7I8fBep8gn7Llu32TDs+y
         aNy8Dskz3obOWex1tzZHZnYQ6ixJKzZLKWaP0/H0XamyIS3XQPQR7SUihCicS2CeqKBq
         v8oNeXqSX94Q9kfLfALVf4nwJrtmkeD0tUVRCPZmoYylGK53gHOJw2E5dBCYi8Hxs7dQ
         8gng==
X-Gm-Message-State: AOAM530wF/HeunnU3humfTLBOunJadWFWL/bHjaKnUaFhnwOpLnggdwi
	AwE454OtOPyRg/NGOKrVk1c=
X-Google-Smtp-Source: ABdhPJyWjBDv0yQRKvfD5c6CvgEjLf+p5MAZepBUtmY2QD/8xxnPvymtVZya4gUoVr0EBS0RFKbBtA==
X-Received: by 2002:a63:d958:: with SMTP id e24mr104277pgj.348.1592417815294;
        Wed, 17 Jun 2020 11:16:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:7143:: with SMTP id g3ls1269067pjs.1.gmail; Wed, 17
 Jun 2020 11:16:54 -0700 (PDT)
X-Received: by 2002:a17:902:8c84:: with SMTP id t4mr262278plo.315.1592417814848;
        Wed, 17 Jun 2020 11:16:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592417814; cv=none;
        d=google.com; s=arc-20160816;
        b=VnZg3/doVp9wCovteGzCTMWhJSCo4iRzxg9Lo/hgmDZJWNE6zRgcVMZI0HSaAuKVAq
         0yuY7rOKkIJ3gmznCT9gfic0n6VqXibv4lwYuiHuM+zylf8kUC/u4w9pKHVkbFpWivjw
         GvqfBdLwtzpqwRukDpgT8AnCRes1r57dOjIFysh+63mXjofKj61IpvtDKU7S2tFRWafI
         j/+T+pRTw+5PMjVf7Op+I73NmuirtM8lYrwpbN6RkoKkDP3k2JJee84fXnVTvcV2Cmbn
         v4BWp3+3d/76uEJi4YKZzRfaUiM2XoSF3r55ldOQtQ49SeyRnNIgJ193mm7pITIlxUMO
         VYog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=9iHpdxTSsJV8Zk3XZ13SNgoX2KXs00CS5Ze28gN8oq4=;
        b=cBS013FnNfpyGnOqGtJeDzt71nSWhrlA/dH+wKbnFNy56jAf2/ulKB2FKJnS6IvFUN
         u/JS+qr+/sfWLXvKdaIjWjw8zudAYURJapuyQ8UwlScfxZs57RhN7dXegaxt5xfWz6Uf
         3XSr+SntbhhGf0ZyMzTjsr4gNiJCFMmqlfQvEv9SVp9JJPTxZziiYXgs9TFxAdsPNWu4
         8hyR+Qrha244stAVxknShIOrWvFPTfSpwg6jtLRygcbM4BTFPuzrg+05LU6hY66qouuq
         kWbHmCf2ht65ezTHRgrivzI/v2D8aazdY1BAyk577HMpb1Qs8aLOuFgVtnhdKj4Z1BSe
         xgZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gMJvLtSi;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id v197si47237pfc.0.2020.06.17.11.16.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Jun 2020 11:16:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id h185so1543271pfg.2
        for <clang-built-linux@googlegroups.com>; Wed, 17 Jun 2020 11:16:54 -0700 (PDT)
X-Received: by 2002:a05:6a00:15ca:: with SMTP id o10mr247pfu.169.1592417814250;
 Wed, 17 Jun 2020 11:16:54 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1590079968.git.christophe.leroy@csgroup.eu>
 <8c593895e2cb57d232d85ce4d8c3a1aa7f0869cc.1590079968.git.christophe.leroy@csgroup.eu>
 <20200616002720.GA1307277@ubuntu-n2-xlarge-x86> <68503e5e-7456-b81c-e43d-27cb331a4b72@xilinx.com>
 <20200616181630.GA3403678@ubuntu-n2-xlarge-x86> <50fb2dd6-4e8f-a550-6eda-073beb86f2ff@xilinx.com>
 <87bllidmk4.fsf@mpe.ellerman.id.au> <878sgmdmcv.fsf@mpe.ellerman.id.au>
In-Reply-To: <878sgmdmcv.fsf@mpe.ellerman.id.au>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 17 Jun 2020 11:16:42 -0700
Message-ID: <CAKwvOdnkcjLGay0jdQ77kHTmKhE56F9jvzh01XWwEE8rjbhLAA@mail.gmail.com>
Subject: Re: [PATCH v5 01/13] powerpc: Remove Xilinx PPC405/PPC440 support
To: Michael Ellerman <mpe@ellerman.id.au>
Cc: Michal Simek <michal.simek@xilinx.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	Christophe Leroy <christophe.leroy@csgroup.eu>, 
	Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>, 
	Arnd Bergmann <arnd@arndb.de>, linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=gMJvLtSi;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444
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

On Wed, Jun 17, 2020 at 3:20 AM Michael Ellerman <mpe@ellerman.id.au> wrote:
>
> Michael Ellerman <mpe@ellerman.id.au> writes:
> > Michal Simek <michal.simek@xilinx.com> writes:
> <snip>
>
> >> Or if bamboo requires uImage to be built by default you can do it via
> >> Kconfig.
> >>
> >> diff --git a/arch/powerpc/platforms/44x/Kconfig
> >> b/arch/powerpc/platforms/44x/Kconfig
> >> index 39e93d23fb38..300864d7b8c9 100644
> >> --- a/arch/powerpc/platforms/44x/Kconfig
> >> +++ b/arch/powerpc/platforms/44x/Kconfig
> >> @@ -13,6 +13,7 @@ config BAMBOO
> >>         select PPC44x_SIMPLE
> >>         select 440EP
> >>         select FORCE_PCI
> >> +       select DEFAULT_UIMAGE
> >>         help
> >>           This option enables support for the IBM PPC440EP evaluation board.
> >
> > Who knows what the actual bamboo board used. But I'd be happy to take a
> > SOB'ed patch to do the above, because these days the qemu emulation is
> > much more likely to be used than the actual board.
>
> I just went to see why my CI boot of 44x didn't catch this, and it's
> because I don't use the uImage, I just boot the vmlinux directly:
>
>   $ qemu-system-ppc -M bamboo -m 128m -display none -kernel build~/vmlinux -append "console=ttyS0" -display none -nodefaults -serial mon:stdio
>   Linux version 5.8.0-rc1-00118-g69119673bd50 (michael@alpine1-p1) (gcc (Ubuntu 9.3.0-10ubuntu2) 9.3.0, GNU ld (GNU Binutils for Ubuntu) 2.34) #4 Wed Jun 17 20:19:22 AEST 2020
>   Using PowerPC 44x Platform machine description
>   ioremap() called early from find_legacy_serial_ports+0x690/0x770. Use early_ioremap() instead
>   printk: bootconsole [udbg0] enabled
>
>
> So that's probably the simplest solution?

If the uImage or zImage self decompresses, I would prefer to test that as well.

> That means previously arch/powerpc/boot/zImage was just a hardlink to
> the uImage:

It sounds like we can just boot the zImage, or is that no longer
created with the uImage?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnkcjLGay0jdQ77kHTmKhE56F9jvzh01XWwEE8rjbhLAA%40mail.gmail.com.
