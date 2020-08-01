Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBDP5SP4QKGQERFMATYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x137.google.com (mail-il1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CB2B12350A3
	for <lists+clang-built-linux@lfdr.de>; Sat,  1 Aug 2020 07:33:02 +0200 (CEST)
Received: by mail-il1-x137.google.com with SMTP id a17sf1407842ilb.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jul 2020 22:33:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596259981; cv=pass;
        d=google.com; s=arc-20160816;
        b=Qvv8uajJ34kJjJPbBUFRxiDOcpD6Tq8UA5yxowU+nrz/l3/7dWKiAdw+EFg6iD/e9/
         2YLrGfcqW+/wvWR3HOsGt4nz0WWZZROeSjMfJTeNXw3Btzt2FUXrLuq34BtXfl5u8MmH
         /loCq03cCMvJwomZg7GlKwM0C7gxrZplqweho1+04FfkfTthului3AS+WC1nhU5l3CYd
         GutZTKpXhcSFHTpOEsfzBxDjs/VDQ02/lNpOOoLKMDDDMoplQd1Co99f23Q+QG7knKBM
         GxVmmxBC2bK7i+eBMz8jtjNS/U5gvq5Tb5kacWps0rg8IKLxAJ1qQ7ibB7OqoFBefvOw
         fcMQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=QGwevosQMIaCoVTQ6K1I3j52qAjVoWM6QzSSB1+Jyoc=;
        b=WA03X2TrNITX+8MObpuWg58ThWU0E6hccExs4Vfvwjeg2C5P6phZV2eySrLMX5qdW0
         lJy9/wJOiB1QDRQF0N2KcYkC0kY8iBmCeXCWErDwXRhfXPanyJHdU4Wlgko/gS7+egzT
         Yf2+K9eanl6+lY7/3IuwSKozWZSPYDWdwfG9NFG34dLHDV3iAYRz2RkF+aczVpjGn3aO
         D1oZDOTcyXQW1QFMe8ejOxbj1rUWxslBeef/+d/Oddq37/MldEdttWZBxwj6R+U1x4qt
         o4sIfawrgVB5M088CUyLvPJzAdTWBs3tN7C4MnBY9xSt7vCvQ0Kz8+/13u8/1gJVzBqY
         orgg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=lsTcCKnk;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QGwevosQMIaCoVTQ6K1I3j52qAjVoWM6QzSSB1+Jyoc=;
        b=Jz+6l8GIkaS4RsXLrnNd9MtRrV6p03M6Nm4FMYcddqx5pwNs7jVSVDD6NUvAsf7P+V
         VbNVpDbD+NU2stHkDt+MyFxB8/Ry3TmrcjbnNwntGXO0Jb9kwXON052jqM74eg5mCJK1
         1XWMsbjpfa1effDNFddOj74edBK+zBm0Q7E4b8JzDmglnoEGy/8kfpb7VmGY0Drjp3Jh
         zJjM7J1rsgbEHivTcfaHqzeYV85iasxzzfxnDyDrkhV8BiFbQ0Cf0nPZ21Sh0qgku5hJ
         BjGKQJj06BLyvU7WFdAAtwWajriKHQ99XSvSk2fUaGo9+kZSctD5UqUQ47xwi7pWi1Xo
         wQmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=QGwevosQMIaCoVTQ6K1I3j52qAjVoWM6QzSSB1+Jyoc=;
        b=MeEtnn6iltGmCMR8vJQVTnsAePmC6S8ifHT339lU9YGADGAJOtyOdjgFyfICYLzrHX
         LcMbm7ALAMFFizHERkvDP9f/50wUVupXQwTASZj77oNTCkBSDR21kYkEUEKatwP0OORc
         EI57n9tEFfPk0LE/1mUeI2rNo8bSiAmAlx7nSF3JtjYjbept2Au/ucSCvt5qFEdA1c59
         u8XY+wWV1+gmrh3ZpUWA/EGU+mIF7G4MPWVb8K+nzY26cL3JKWGx8PGHxEtgJ/uzedDU
         1JCIa0r2mJPFtkeQueSo3fqwkB3G98E66uLhAzFFsnjpUhUZR6kYfY+GTuOyewTUVjqL
         2epw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532ddvjq5JAPdot7QnmuEiqTPl5rylPLJz2eLyY/ATaKB1PtKdEF
	TXvqZTddoNDc40OzsZs4Y8Y=
X-Google-Smtp-Source: ABdhPJzzZyghxKB7//y5WOFGSXFzf277bs5yWHI/aUsi34iLwGwQpNm4UNokllipI8u5fPsn5HBiJQ==
X-Received: by 2002:a6b:7e41:: with SMTP id k1mr6989872ioq.130.1596259981496;
        Fri, 31 Jul 2020 22:33:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:89d8:: with SMTP id w85ls3057928ilk.9.gmail; Fri, 31 Jul
 2020 22:33:01 -0700 (PDT)
X-Received: by 2002:a92:5e9c:: with SMTP id f28mr7568702ilg.167.1596259981237;
        Fri, 31 Jul 2020 22:33:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596259981; cv=none;
        d=google.com; s=arc-20160816;
        b=gMVG4Fbi61qXkkEKF4KZINrX/kgDQlbyyNDgRybSc73CPiCIX2avdeMF8FV5Ej/n/U
         lgyp1hCaVOLyO+A3BYwymenX0goQN3ufNFz8oSSUzM9SoG8+K2ZE5ttT2obJ4Dl98mrj
         vIlNXSTC4kqXuxp0aeucmEH7BSxpdIARoaj+DufyKmblx+15F6ft+ThaEE2acXi6EOlW
         yEhNB0DwvhaDG/S3mUegfmCf/ZWcWqDx/JeffOP2oyUL04B87KrgrIDjVyRwAI+DiyOs
         XiPNOjKe8UqqWln/T6S6AzYWODDnNFp15dYGVvrMlIkhFRYwswFPfIyqaVzBo3WC8TUb
         mmrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=gffroDgUnFtt8A2AavQiebLwAg263HkbnMzJiVCWfkA=;
        b=pq1J9R9vUDobnZM/RhnPD4BQcIuytJsrEcN2NMbbovfHZfvsGjxZTCv8X/Vxr8/LsV
         nUPJiQTRcjd4zg3doiT83Jsxq9ig7I244BZfGU0kD4bixJhv4+82utVYPuxrmfsnw+7i
         RRu29zzVwipoH0H5ho5bRfadlRBtZe77uSv4x+aE3pUKcO+o5OyEOOp/Sxg7K2DVv21j
         KETpnbBy978fvv6naP6FOEngV4izn58brIMDERpl7UBqhyGdWn1iHGCW2JlQjIf+rDXL
         PQL8eeiK/kpTE/TlSEhG+fpFCI43wV+sLhDF0N03AMIyGmKv2/t7YxAa65BCSp6FExzO
         2QoA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=lsTcCKnk;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id d2si511685ill.1.2020.07.31.22.33.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Jul 2020 22:33:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id b186so5198941pfb.9
        for <clang-built-linux@googlegroups.com>; Fri, 31 Jul 2020 22:33:01 -0700 (PDT)
X-Received: by 2002:a65:5604:: with SMTP id l4mr6920746pgs.268.1596259980678;
        Fri, 31 Jul 2020 22:33:00 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id y6sm12228821pfr.61.2020.07.31.22.32.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jul 2020 22:32:59 -0700 (PDT)
Date: Fri, 31 Jul 2020 22:32:58 -0700
From: Kees Cook <keescook@chromium.org>
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>, Borislav Petkov <bp@suse.de>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, x86@kernel.org,
	clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 29/36] x86/build: Enforce an empty .got.plt section
Message-ID: <202007312231.60719F7C4@keescook>
References: <20200731230820.1742553-1-keescook@chromium.org>
 <20200731230820.1742553-30-keescook@chromium.org>
 <20200801021248.GB2700342@rani.riverdale.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200801021248.GB2700342@rani.riverdale.lan>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=lsTcCKnk;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Fri, Jul 31, 2020 at 10:12:48PM -0400, Arvind Sankar wrote:
> On Fri, Jul 31, 2020 at 04:08:13PM -0700, Kees Cook wrote:
> > The .got.plt section should always be zero (or filled only with the
> > linker-generated lazy dispatch entry). Enforce this with an assert and
> > mark the section as NOLOAD. This is more sensitive than just blindly
> > discarding the section.
> > 
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> > ---
> >  arch/x86/kernel/vmlinux.lds.S | 14 +++++++++++++-
> >  1 file changed, 13 insertions(+), 1 deletion(-)
> > 
> > diff --git a/arch/x86/kernel/vmlinux.lds.S b/arch/x86/kernel/vmlinux.lds.S
> > index 0cc035cb15f1..7faffe7414d6 100644
> > --- a/arch/x86/kernel/vmlinux.lds.S
> > +++ b/arch/x86/kernel/vmlinux.lds.S
> > @@ -414,8 +414,20 @@ SECTIONS
> >  	ELF_DETAILS
> >  
> >  	DISCARDS
> > -}
> >  
> > +	/*
> > +	 * Make sure that the .got.plt is either completely empty or it
> > +	 * contains only the lazy dispatch entries.
> > +	 */
> > +	.got.plt (NOLOAD) : { *(.got.plt) }
> > +	ASSERT(SIZEOF(.got.plt) == 0 ||
> > +#ifdef CONFIG_X86_64
> > +	       SIZEOF(.got.plt) == 0x18,
> > +#else
> > +	       SIZEOF(.got.plt) == 0xc,
> > +#endif
> > +	       "Unexpected GOT/PLT entries detected!")
> > +}
> >  
> >  #ifdef CONFIG_X86_32
> >  /*
> > -- 
> > 2.25.1
> > 
> 
> Is this actually needed? vmlinux is a position-dependent executable, and
> it doesn't get linked with any shared libraries, so it should never have
> a .got or .got.plt at all I think? Does it show up as an orphan without
> this?

When I switched from DISCARD to 0-assert, I tested all of these, but given
so many combinations, perhaps I made a mistake. I will double-check and
report back.

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202007312231.60719F7C4%40keescook.
