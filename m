Return-Path: <clang-built-linux+bncBCIO53XE7YHBBFXV2DZAKGQE2ZZLZVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A7C716B171
	for <lists+clang-built-linux@lfdr.de>; Mon, 24 Feb 2020 22:05:28 +0100 (CET)
Received: by mail-pl1-x639.google.com with SMTP id t12sf5845007plo.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 24 Feb 2020 13:05:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582578326; cv=pass;
        d=google.com; s=arc-20160816;
        b=QeiUAeZgGP9Wa+UF7K+LKV8gmJ4Wa+jWTBZThblM7mcB9kGI5UmqPMZurLnfAM4A9f
         V35Da5GxnNU/hEmO8Mr28by3eodKTKxoGWE9hnXSGn2B4YZwOnwlewNsH5yFPYUmmh0e
         zWDsLuGt0GyALWaPPbp2k7T/c0LdhwbQlIvfzrd6rLXBJ7/kqT56kOCAbBgFt8DRZ8+7
         P4ae/wf0toodC4dJAYJPCVvLJlrAXCCIqgfh1QnNTgP0rFypVZi3/AaK/47lj95RWIIv
         eh/R1kXdYh0DXzpUSKS1PF2OJo9qJlvF23pBvAPWMTXlKkBcdTSnw3t/b2FwdltqrOQt
         wWhg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:date:from:sender:dkim-signature;
        bh=TgcHF687bcR5KeiJsSKgX+bOxI7kCJpkRCK/rtDogso=;
        b=bDdz1T5v1Zr6HgGJcim6UEmwbaUAmRwZw5gw48lU6EOft5X3nmkWdJ7r5mb+1ai6yn
         2eLeG+cN2GemvvbMYnqdAu9yqwM74GW38DN5llcG4jOD7WeAdLhe3d+v4zrg1uXLF3as
         QQ8GF/OMS+jsKIom5KwxYrjXXlstiMQinqxG+CxM982KigaA3ULZZmgC98pqW2vKlQE5
         3ISjwxLe3Expbioq5N5cErvD7eTR1vJ+mRpRkYXL0e3qxDNaU7YuAonkUT8I/4wvisaU
         08JfchP6PVP/vZ1pcqIwVPjE4B8Yh8+K3RNzT2kihx9nvI3flmJTQ+7Q5aEkjEkM+F5F
         gvJg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WrMS23gO;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f43 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TgcHF687bcR5KeiJsSKgX+bOxI7kCJpkRCK/rtDogso=;
        b=ApUxuQqyDY5BQsKCdNmGfbPoFuchI2PsMpIL8BcGLLIMrFAWQ//0e1ExXjsMHMvXpV
         GbGHrreMt8By4t9xhQbFPaCojZNsvpdC8wP0hCiEiEsLjNppNX529x1gNh1zcRi53E37
         OMd1Vlc1R+NlJHHioE4Wwor9hRwL/rs3X1Pw2UIwKpku7c83e939rMTXtMix1mwmtp04
         isHKV2Y9oy5Irlc0ilZXxBuu3Uy+fdW65Cu7ySl6oY7L87PW+p8LJgpuNaGwBroVxX3j
         p5+DsGIHOMBu8K2g4yldq6JPGLP0S848WbRtCRyrZ1BJDar840ARbNqQ73ANpdN4UwTh
         sqIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=TgcHF687bcR5KeiJsSKgX+bOxI7kCJpkRCK/rtDogso=;
        b=Kk0e/TJQmRJjoOQ6cwvOzHiZRIkdc7dr7cYnR0LZRDBQPmpkijAWENpGG6wCn3+CqC
         PlQ5zcge9urFYmNO8CQIf119cvAkA3IVLOkfSPzn7YhS28GaU/RqU7U7U9oNJgULx5Jt
         SvnzKqz13aLfkLIRIgBoHJrhX5SCQ8nceieRNeIBXk9Lje9cawucHRuGngE+lcNcg9O8
         YZO1ge0k7K5Z1YfEu9wAKTruWzwO/hlS+7OvIVWc0uRZGAL6oP+K7ymGwubwLg719JWz
         QBtE1j0aMEMfe0ErhX/sMi3c/aUQhL7B2E51npmR2nOBHGLGBdoo0NYo7x+JqipE+BXU
         3XDw==
X-Gm-Message-State: APjAAAV6PyBRxNH2z/OGg6J8WXexUaSFCPYEbbpYWZx9OOST02rwSdO1
	Dp6WBsRQ+4u0ZLUvy+QHzpU=
X-Google-Smtp-Source: APXvYqwJ56QVzfSNh083YpuM9BKViQ6gb9I7yKf79YBoFhqpsirG/VmjXAzgfMKmmJnirgfAmzYAWA==
X-Received: by 2002:a17:90a:a416:: with SMTP id y22mr1137455pjp.114.1582578326374;
        Mon, 24 Feb 2020 13:05:26 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:bb88:: with SMTP id m8ls3569222pls.6.gmail; Mon, 24
 Feb 2020 13:05:25 -0800 (PST)
X-Received: by 2002:a17:90a:8d81:: with SMTP id d1mr1104421pjo.63.1582578325810;
        Mon, 24 Feb 2020 13:05:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582578325; cv=none;
        d=google.com; s=arc-20160816;
        b=1GSlb3wybBE8UWJ6fTe/eKA66Ajg6LrY87mqsDcXBeKNvGzTCQqxiypCvVYDiW7b/d
         D/Va311DrQqQJRvN0oMiBDkYNgb9lipWWUPqcuFLUt+5aHeVV/OldSD31J4j4JBdbk8d
         KcH94RdPUmr0mfMqgAj9s1QQVOIkaEJoWOk1ouoHTS0D7uGs3PAqIFHw9OQLyjHdFS6Y
         AqOvG5SLXinrWLZakRHNZTgLeDCoVE2Itsy6POpA0QLcj/4njyg/lakpALJBUHWsvnNe
         E4dWe0Wx5ZVQRViA+7mn88E42NGGxZZKOIt+ZRMoudEEFDfzyBKn6CDhqiHHEN+RsuMY
         gGEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:date:from:sender:dkim-signature;
        bh=cSmpO0UrVcE+2EXGicwP6bV9bb5FnRrk6s8yuew8veA=;
        b=ku/4jpBWOjW9iZkTyVamkuNeGBzEzJbmhQ7F6Oa0d8QqC1RsXoJ/0Y9y90N6szp/Vt
         cW/PFC27wHeVlWlOQE6ubCfVKxa7DEa6k1mb0q31+Re1hfm0Pqa1eiEcrUgCcaper9PJ
         elnaHDvW7B+VOfFxFCZEuSKcx5DQEkTPT+5U+TRd9rqfcIsEkVNPgeJsLxEUX6cfwfNj
         pMIqi86DfBvLCzp7R5LHfrK5Vi4LkM5nuwoM7amATEwft/9suH7E/UnDz50d+JWevef8
         d/l6GjmDfSmugEemys5Qq91V83eLUtswmg1SJZLC+97hTHgmikHJZXWCGQKC7cJlqM21
         0cEA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WrMS23gO;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f43 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qv1-xf43.google.com (mail-qv1-xf43.google.com. [2607:f8b0:4864:20::f43])
        by gmr-mx.google.com with ESMTPS id q19si468425pgt.0.2020.02.24.13.05.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Feb 2020 13:05:25 -0800 (PST)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f43 as permitted sender) client-ip=2607:f8b0:4864:20::f43;
Received: by mail-qv1-xf43.google.com with SMTP id g6so4759809qvy.5
        for <clang-built-linux@googlegroups.com>; Mon, 24 Feb 2020 13:05:25 -0800 (PST)
X-Received: by 2002:a0c:9d4f:: with SMTP id n15mr47503323qvf.194.1582578324649;
        Mon, 24 Feb 2020 13:05:24 -0800 (PST)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id a141sm6489195qkb.50.2020.02.24.13.05.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Feb 2020 13:05:24 -0800 (PST)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Mon, 24 Feb 2020 16:05:22 -0500
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Arvind Sankar <nivedita@alum.mit.edu>, Borislav Petkov <bp@alien8.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Michael Matz <matz@suse.de>, Fangrui Song <maskray@google.com>,
	Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH 1/2] arch/x86: Use -fno-asynchronous-unwind-tables to
 suppress .eh_frame sections
Message-ID: <20200224210522.GA409112@rani.riverdale.lan>
References: <20200222235709.GA3786197@rani.riverdale.lan>
 <20200223193715.83729-2-nivedita@alum.mit.edu>
 <CAKwvOdniNba30cUX9QAZdVPg2MhjVETVgrvUUzwaHF70Dr3PrQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdniNba30cUX9QAZdVPg2MhjVETVgrvUUzwaHF70Dr3PrQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=WrMS23gO;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f43
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Mon, Feb 24, 2020 at 12:33:49PM -0800, Nick Desaulniers wrote:
> On Sun, Feb 23, 2020 at 11:37 AM Arvind Sankar <nivedita@alum.mit.edu> wrote:
> >
> > While discussing a patch to discard .eh_frame from the compressed
> > vmlinux using the linker script, Fangrui Song pointed out [1] that these
> > sections shouldn't exist in the first place because arch/x86/Makefile
> > uses -fno-asynchronous-unwind-tables.
> 
> Another benefit is that -fno-asynchronous-unwind-tables may help
> reduce the size of .text!
> https://stackoverflow.com/a/26302715/1027966

Hm I don't see any change in .text size.
> > diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
> > index 98a81576213d..a1140c4ee478 100644
> > --- a/drivers/firmware/efi/libstub/Makefile
> > +++ b/drivers/firmware/efi/libstub/Makefile
> > @@ -12,7 +12,8 @@ cflags-$(CONFIG_X86)          += -m$(BITS) -D__KERNEL__ -O2 \
> >                                    -mno-mmx -mno-sse -fshort-wchar \
> >                                    -Wno-pointer-sign \
> >                                    $(call cc-disable-warning, address-of-packed-member) \
> > -                                  $(call cc-disable-warning, gnu)
> > +                                  $(call cc-disable-warning, gnu) \
> > +                                  -fno-asynchronous-unwind-tables
> 
> I think we want to add this flag a little lower, line 27 has:
> 
> KBUILD_CFLAGS     := $(cflags-y) -DDISABLE_BRANCH_PROFILING \
> 
> so the `cflags-y` variable you modify in this hunk will only set
> -fno-asynchronous-unwind-tables for CONFIG_X86, which I don't think is
> intentional.  Though when I run

It is intentional -- the other case is that we're building for ARM,
which only filters out the regular KBUILD_CFLAGS, so adding the flag for
it should not be necessary. The cflags for ARM are constructed by
manipulating KBUILD_CFLAGS. Besides it may or may not want unwind
tables. 32-bit ARM appears to have an option to enable -funwind-tables.

> 
> $ llvm-readelf -S drivers/firmware/efi/libstub/lib.a | grep eh_frame
> 
> after doing an x86_64 defconfig, I don't get any hits. Do you observe
> .eh_frame sections on any of these objects in this dir? (I'm fine
> adding it to be safe, but I'm curious why I'm not seeing any
> .eh_frame)
> 

You mean before this patch, right? I see hits on every .o file in there
(compiling with gcc 9.2.0).

> >
> >  # arm64 uses the full KBUILD_CFLAGS so it's necessary to explicitly
> >  # disable the stackleak plugin
> > --
> > 2.24.1
> >
> 
> 
> -- 
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200224210522.GA409112%40rani.riverdale.lan.
