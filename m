Return-Path: <clang-built-linux+bncBCIO53XE7YHBBHFOXD4AKGQE3Z22SNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id EA71821FEAB
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 22:35:41 +0200 (CEST)
Received: by mail-pl1-x638.google.com with SMTP id x1sf24294pla.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 13:35:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594758940; cv=pass;
        d=google.com; s=arc-20160816;
        b=J8FrKZsOLO0hE9Nn2zPzdNXBvkjW1NqvEVBccoEQGNj86lvm6MMcd1FpoPcCtR1ewQ
         t6qBnEfwH7ehtLgYwsTHyTsxRl2d9Q36MpiEoz14EpYEE0tRsbMoafszvjZAdC5mb1LO
         BHRLvZOLcEbnf9qFY1pPHHlRFxMLq00o9Qs50ybNtPsKd687tFlm1RwcxgGrSEBwtRO2
         bszKH6plGppBzWUERnnvivXEDw4IOgFUYiHhM3CRQmZ8iciBEegw8nKivyDZcVqjmpVH
         8Z6s2g6R7+7l7CKqbxE7UulA/V4SK+1baFyvHchKF5nZw9lmbyxze0NIJa6obL625OIT
         zWEw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=Okw7f6P0a9Bx9BoGaE4rzAI7pjeObob/lslL5kNqY8M=;
        b=kWFttY9vWXnozAGUPKKfc+43OG6vySE/0GieL8sHVQL1EBPXZN+BQFCvr4cDkYGyKf
         bOBeRjM72ya+kehiNkERdniUk0m2N/GK3T+f1xlumds0K/vXqecjkO5GXTm8mbGbkGfA
         YYOhAhpQJ6vNv1wmG9u00KRYeIL9kd0xv+CMVBR9cyVyBGXvf0Q3xfp6dQrd/38NobCW
         C+Q3huPzdbXw8Zos9aD2CRtshOnIUThOLAL4+GcD2a1BvZgOTRLE9la+7m4O6iLwKthn
         sNo6Lyj6rYfvUcPwtSrKfWGzHxg79BgLnwrjB1td1EYxoQxuj69SoYBDdlwKiKVhYR0X
         Zz2Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=K9wTzPUi;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Okw7f6P0a9Bx9BoGaE4rzAI7pjeObob/lslL5kNqY8M=;
        b=ZRBvOC1f8SHGzNfdXGJPkj1Wl5hdmNODXtsXnNfigDq4pk5nhSBG6aDW2Q4A6ungwG
         citHJhxsskFHJC6ckt4b3ruu+za6ndDjm8WQkEbMwyEq7VYTR/IvZ5pC82Dgk3HN/T2a
         0tmPluH41+/SOvFVbfBoBTEqkwmKYODmJZKXfKX5CljffAmiWJLrIpTopJpESlaEoQLM
         v8LwviopzUASdu0lmGUnKCn+YOdhWz8m+WhyCfsG3J8BGisxPf1mEZKaVs9n4aTKI8pl
         psP3kbbG3mdDN0i/Xu57tOOIV8gHwXsAntKjlyJhieR3lM24D7/meBbi1b9nJsJNktpU
         ZZJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Okw7f6P0a9Bx9BoGaE4rzAI7pjeObob/lslL5kNqY8M=;
        b=AHe+tq6lW/c9iDa0tV9Veq0HuCZoHRR2St3HRE+r5qrctBdy5WoljzSttrx4BEspqO
         JwhHX89RMqift+g4ppcjT1BnbgWyObeZvxpJ9JRShqzb1ryjlQFQNrbhuR3qn5xuO2fq
         g6MRarIod/sdp66besK5KYPUuYHyQwsklt5QYlQcdJeGw5QKw5hDSVhwLDEBxDdY03tm
         8xvAwNo3S64tM1kirZqCTTJm22HJFW2MAdhhxkgF5X8EIUrk00m5YM0cl/5bn3DCaIAR
         SQ2GAHy/xmBLoDtfNrm1fxRBv0SckWOUV52att4OvWHnMkehF+HJZckn5Fogsn6SWPdE
         nxxw==
X-Gm-Message-State: AOAM532nWr4MxmPtGmGQBbu6SbevMzBrJYE4NK7HYy2ifdr7D7MeMvoR
	thjbFnNfYwB1CAY/8RIsTzc=
X-Google-Smtp-Source: ABdhPJwoR+uzxvOBUeMAtgNfgxnDPtau5k60sObJOJryjRCXqe0JX49F4mfKwHMObjBsP4mOL12nfw==
X-Received: by 2002:a05:6a00:15ca:: with SMTP id o10mr5821645pfu.169.1594758940656;
        Tue, 14 Jul 2020 13:35:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:f450:: with SMTP id p16ls37434pgk.5.gmail; Tue, 14 Jul
 2020 13:35:40 -0700 (PDT)
X-Received: by 2002:a63:af50:: with SMTP id s16mr4948447pgo.365.1594758940120;
        Tue, 14 Jul 2020 13:35:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594758940; cv=none;
        d=google.com; s=arc-20160816;
        b=1FjrVsRlPUGDFBfEgzpMOg9Jv4AtwX4FIKxkG8z8W0J/6rLNWuhKI5cDikvgR1LhPw
         SZ/RU37aRZK3KzL51mN3fsXxKH5OmViG3xmdZMDtmfMjL4YOosR9bh890xP3Foo0VMBp
         mwCsAu5ojwYUdeztcmL3CjdD6vc31nO4KhjHJMh1C882lWP0SrCYYxFLqnvIdRUZ0LBB
         SdBxez48uw/K2GkXuw4akTE0mwKSbOm0R7zap9DqwEq5DDTV9Myt+N7RE8IQ/8sq1QKL
         UNo34AakYMt1AVklf9+52Xp0dB21ND17UIGM5LgaJ1/AseN080B0k6U6ZWmp0so+rwVd
         VOIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=ontnMwPVk3JI+fxLYQf4YU002R2JgbxcsAm8SNBm6RA=;
        b=sPUg8vVLHArGigWDQO4ZFNyhp3pdqp4qHPM6emG+FC/4e8OvRr/2EPhZNi14/FeSWL
         PwrftolXVlMYuOGYY3E34VF5oPdqo1vgk+k0LSeQngDbM7qijmxnGdYgWg6A9gutUMGd
         6BlpFStm0o2o078kPyCG+oDmJiIjWH8KUutssI29ozgsw/YDmYUAPnfu1vdGfJGcNozi
         TWXEqyCRGWKFqzNj3zAG2lttRQoP3OOSzadq46lCgLyqTJFis1FUzJ2jSJ0rYUIq7DHU
         UBSZ9+WRPOybNWRTeNpQO8VjRXm0DBqX335hcv267JQG3f9GeJ9y7WKV3G1h1TE/ngkj
         lkmQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=K9wTzPUi;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com. [2607:f8b0:4864:20::843])
        by gmr-mx.google.com with ESMTPS id i3si169843pjx.2.2020.07.14.13.35.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Jul 2020 13:35:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) client-ip=2607:f8b0:4864:20::843;
Received: by mail-qt1-x843.google.com with SMTP id e12so13937098qtr.9
        for <clang-built-linux@googlegroups.com>; Tue, 14 Jul 2020 13:35:40 -0700 (PDT)
X-Received: by 2002:ac8:311d:: with SMTP id g29mr6673218qtb.54.1594758939296;
        Tue, 14 Jul 2020 13:35:39 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id j203sm23121710qke.13.2020.07.14.13.35.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jul 2020 13:35:38 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Tue, 14 Jul 2020 16:35:37 -0400
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Arvind Sankar <nivedita@alum.mit.edu>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	"H. Peter Anvin" <hpa@zytor.com>, x86@kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Fangrui Song <maskray@google.com>, Dmitry Golovin <dima@golovin.in>,
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Daniel Kiper <daniel.kiper@oracle.com>,
	Kees Cook <keescook@chromium.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, "H . J . Lu" <hjl@sourceware.org>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 0/7] x86/boot: Remove runtime relocations from
 compressed kernel
Message-ID: <20200714203537.GD902932@rani.riverdale.lan>
References: <CA+icZUXSPfybFtzQB3wKn9spQmEPnQu_iGPWkRisAmRQbJLWXA@mail.gmail.com>
 <20200714141550.GA329060@rani.riverdale.lan>
 <CA+icZUU88wYmyycthW7AQUZ72HGa9RWPZmxVS5Gm6UW=6ES9kA@mail.gmail.com>
 <CA+icZUWHdsk9+wkTZOdDghM7pRZyk2vHgxpYx62vPooqohzbYw@mail.gmail.com>
 <20200714192956.GA689174@rani.riverdale.lan>
 <CA+icZUXoZzhUMRsVVexazd=oFK4vKa1KJN5=_KXz+fcYxcA4Rw@mail.gmail.com>
 <CA+icZUXBggJtwtWmyXEwgu1WztrcTiLrZCW1_QqSw2SiThOkfQ@mail.gmail.com>
 <20200714202100.GB902932@rani.riverdale.lan>
 <CA+icZUVcyAfXqyAQp+bjb0bx5z2Q0Bfyt899AxJASXY-GCRCrA@mail.gmail.com>
 <CA+icZUUtcQhzO=1KToJyhL0-kWFvV6Ow49u_28Ez9AhvkVjWEw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+icZUUtcQhzO=1KToJyhL0-kWFvV6Ow49u_28Ez9AhvkVjWEw@mail.gmail.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=K9wTzPUi;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::843
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

On Tue, Jul 14, 2020 at 10:27:25PM +0200, Sedat Dilek wrote:
> On Tue, Jul 14, 2020 at 10:24 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >
> > On Tue, Jul 14, 2020 at 10:21 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
> > >
> > > On Tue, Jul 14, 2020 at 10:08:04PM +0200, Sedat Dilek wrote:
> > > > > >
> > > > > > In any case, I think the right fix here would be to add -pie and
> > > > > > --no-dynamic-linker to LDFLAGS_vmlinux instead of KBUILD_LDFLAGS.
> > > > >
> > > > > Hmm, you might be right with moving to LDFLAGS_vmlinux.
> > > > >
> > > >
> > > > We will need the "ifndef CONFIG_LD_IS_LLD" as -r and -pie cannot be
> > > > used together.
> > > > Is that the or not the fact when moving to LDFLAGS_vmlinux?
> > >
> > > LDFLAGS_vmlinux will only be used to link boot/compressed/vmlinux,
> > > whereas KBUILD_LDFLAGS is used for all linker invocations, and in
> > > particular the little link to do the modversions stuff ends up using it.
> > >
> > > So once we move -pie --no-dynamic-linker to the more correct
> > > LDFLAGS_vmlinux and/or stop modversions running, we'll be fine. Being
> > > able to use -pie with lld is one of the goals of this series.
> > >
> >
> > OK, I am doing a new full kernel build with:
> >
> > $ git diff arch/x86/boot/compressed/Makefile
> > diff --git a/arch/x86/boot/compressed/Makefile
> > b/arch/x86/boot/compressed/Makefile
> > index 789d5d14d8b0..056a738e47c6 100644
> > --- a/arch/x86/boot/compressed/Makefile
> > +++ b/arch/x86/boot/compressed/Makefile
> > @@ -51,7 +51,7 @@ UBSAN_SANITIZE :=n
> >  KBUILD_LDFLAGS := -m elf_$(UTS_MACHINE)
> >  # Compressed kernel should be built as PIE since it may be loaded at any
> >  # address by the bootloader.
> > -KBUILD_LDFLAGS += -pie $(call ld-option, --no-dynamic-linker)
> > +LDFLAGS_vmlinux += -pie $(call ld-option, --no-dynamic-linker)
> >  LDFLAGS_vmlinux := -T
> >
> >  hostprogs      := mkpiggy
> >
> > - Sedat -
> 
> Not my day - today.
> 
> $ git diff arch/x86/boot/compressed/Makefile
> diff --git a/arch/x86/boot/compressed/Makefile
> b/arch/x86/boot/compressed/Makefile
> index 789d5d14d8b0..9784ed37a5d7 100644
> --- a/arch/x86/boot/compressed/Makefile
> +++ b/arch/x86/boot/compressed/Makefile
> @@ -51,8 +51,8 @@ UBSAN_SANITIZE :=n
>  KBUILD_LDFLAGS := -m elf_$(UTS_MACHINE)
>  # Compressed kernel should be built as PIE since it may be loaded at any
>  # address by the bootloader.
> -KBUILD_LDFLAGS += -pie $(call ld-option, --no-dynamic-linker)
>  LDFLAGS_vmlinux := -T
> +LDFLAGS_vmlinux += -pie $(call ld-option, --no-dynamic-linker)
> 
>  hostprogs      := mkpiggy
>  HOST_EXTRACFLAGS += -I$(srctree)/tools/include
> 
> - Sedat -

Nope -- -T needs to be last, since it's (trickily) put together with the
first prerequisite $(obj)/vmlinux.lds.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200714203537.GD902932%40rani.riverdale.lan.
