Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBFH6SP4QKGQEJFBGCHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 542D42350AB
	for <lists+clang-built-linux@lfdr.de>; Sat,  1 Aug 2020 07:35:18 +0200 (CEST)
Received: by mail-pl1-x638.google.com with SMTP id a8sf23784597plm.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jul 2020 22:35:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596260117; cv=pass;
        d=google.com; s=arc-20160816;
        b=N9BfTaHA6mL7NXYVoOYQ1769a6Ecf+0Aej6YOyhE7R8BIfxqPQvxTDn5krBjgcRnUe
         hwI2OUH+JLQI+IF12IAFxXHuZhi86Wp9TmFiqrRHaw+9thB5h0dzcPCcRWUNmR8Kc3Xc
         ARxUdmc0yDl2Si/5MIoUvpVJ+WD51PTfU3TBOS9ffAo0CjWDODd7QNi7bqzNAvLlYXt8
         GJ08ODeap1fueylrR+tefd7LM3G2LOSazT3nPlgqRmaTw3qzWTZJO+EO55jSAzn/95Pj
         aSlunStVrw0T4t4MW94P18Rt/fhfBEJ+gpdcX/LwdDMGpTakKTGMSIdqagcVRSDzBtDo
         iJdw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=MMUxynPMBwh2DZOY0SNtEmuZqXyv/ywSF/8bS0D7JgQ=;
        b=rQ5xoT5SyZ817KYl8ksb53CZou2M3ObnJCq27GbAtnWzlobTFFgg2jYQn5eAj5upEz
         LvrVF0NyzLIFhl0/gGHWH+5m3/DR0PEBe7JyYz3brePelt/gY8MxMpwHWxGXZLhhPBLT
         4wdWOGGNluoKmn075asUwP/3AieW6B0DnZPCn24OrfeJ8Z4saqNFYQy1vf/foU4A7W2v
         5xl/+nM+e9U1HBU/RatTrGGeRRAkwxaP//KtCEwmh6MWRcjp2uTvrwnaRAOBSXZvpyPx
         ppHOrd1puF6LLxVZEBHYi6baXaTqSJacayUOJNmmHhLrj/CRmHJ7PF3YZtenlD9skjz0
         TPBA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=cFCUN8WX;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MMUxynPMBwh2DZOY0SNtEmuZqXyv/ywSF/8bS0D7JgQ=;
        b=ilqGrg5lqK5hLoSmpLt2kEcXLOCyYnTisEIMSmel2ghRViCPUvy4ci87lQofuYcLbE
         jm/bGRe+CC2Hv1g4yeXM1m30RaVLOqCzoz2ZDqcAMODM/HvRzpO9TDObcah/C/Vp3y6V
         nOGIdctIViI8U9MemyleZY/i1L9lWS96fEOamyea5WUyedwWtUqokncuQPJugGsOCowC
         QvE66Xfu1lbd9c30lHNhMvRuZHnQwIMxYw1T0YmHVnHho32jlhMLyB5OG4dCbHm2DWLr
         RoIDiuWropHm10g/o4POu7v2bViXf/nVvRracswnAax79bG43MX5Zp8FaMy6DYy47oub
         aZ6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=MMUxynPMBwh2DZOY0SNtEmuZqXyv/ywSF/8bS0D7JgQ=;
        b=KV6HlDJ1MdTLhUiWu2eYdyEZ5Q0km8Mrzx+9Z/Q6G/q0sQIppXO6Q5QZJGuK0M2EKF
         iWGwYCT8wkw6JCbAWrOoJrg1lDwNlFcv2fYaDt139S9xyDc10Jzv6BRpGuMZiPS7J5xI
         syaZUTurUHK1DgFdSxOZVkGoYdcn3/za4nQyEbuwzWNyUVyapW77Mqlonyrs44LCnlAc
         6nkIVxG5/07khXIEq3qe4vBZUfPdGKa/p24JdYQubTJqSr2XCtKehryD1xrH/0A48oGh
         O/iZY8TzKOBhCwnzJvhSkbF4oAAOsZ+z/wxJZTRUx7PGrHZU1mM/0Z3dlBLX92bQmKw7
         ej2Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530vvOCR3CAfAyyLnYBazXA01N5rcIbrs2gFFfbqn3EGP8YCmKh9
	/gssxtK3c0ZuYINNHSK8DaQ=
X-Google-Smtp-Source: ABdhPJypolwE7qN+saKdBHaQm+oHTD4s0snrckK9RIS7XhuPu8rvruwQ5DSonvrmgFHjjj8WCVtr3Q==
X-Received: by 2002:a17:90a:db87:: with SMTP id h7mr7551848pjv.51.1596260116702;
        Fri, 31 Jul 2020 22:35:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:442:: with SMTP id 60ls4558457ple.4.gmail; Fri, 31
 Jul 2020 22:35:16 -0700 (PDT)
X-Received: by 2002:a17:902:a418:: with SMTP id p24mr6749584plq.55.1596260116266;
        Fri, 31 Jul 2020 22:35:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596260116; cv=none;
        d=google.com; s=arc-20160816;
        b=T4/TIt9ookEnIgtdkz0/zpkxLi0N9Skq1Z8z3HwJJQioICtWVN4ObwXhPqrddNReUS
         spjYm992TUPXNv04Fc05pppQloCStJyToiaHbfrYyXvNF8gtaUGRbRwJGn0JdJPKH3mv
         M+9N1nBJCBaqODqemN5UHLF1NQJHqZ0KBniDCiJRl03NSQ5n6PY0hN1dRM3fryjRSxsI
         zpx7mY2VyEOGyaaQyEGgF2UmvossiC0g4QTbYaNWGh/TCORzPAeLEocJ4W+PDlFi2EaU
         4CzuOa7b8Fkv4D4eFDCrIh/YMj6+9wC9wvwvztPg2NWHLnmB4kHmbK2YQEdI4Ar/9k2W
         yfBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=sBcnbrjbFajVyHxfld/Fszj/ZWv73cYyddExdUQ2/uM=;
        b=WyYN3xcy5HnKGecxcu7OyrBKyZHq/x81YjN5Ex1YoREZNf3O5CDz3Z6X7jUEtVJcwh
         fUXOVKVC3jK06EHEb3lKm62EvY6rXMbNYUATHq+8QxAie7Fjjf8BNkcZS/dxptclzLd3
         rEoH233h+EAi9+vcJtmWw5aojUc0vJY9Ahs5yDMwP1+C3z5bzLgAYTjMBSEFRBpj+orZ
         hJIUTfNoqmr0TxB8Be/rD1OO+sn2YfDXmcY1Yc7RXwB2ETnjTBj+QWyTDXWotKfRgMX3
         lL6HXi4uE08c6tvjfvAX4d98LmxTkg3RLy0yN/euJUpsslxS1NomsZU0h2SvBZzciGNO
         xjxg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=cFCUN8WX;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id lw11si106662pjb.1.2020.07.31.22.35.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Jul 2020 22:35:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id u185so15495054pfu.1
        for <clang-built-linux@googlegroups.com>; Fri, 31 Jul 2020 22:35:16 -0700 (PDT)
X-Received: by 2002:a62:164a:: with SMTP id 71mr6825401pfw.266.1596260115966;
        Fri, 31 Jul 2020 22:35:15 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id i21sm12412582pfa.18.2020.07.31.22.35.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jul 2020 22:35:15 -0700 (PDT)
Date: Fri, 31 Jul 2020 22:35:14 -0700
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
Subject: Re: [PATCH v5 32/36] x86/boot/compressed: Reorganize zero-size
 section asserts
Message-ID: <202007312233.1BA0E2EFC@keescook>
References: <20200731230820.1742553-1-keescook@chromium.org>
 <20200731230820.1742553-33-keescook@chromium.org>
 <20200801014755.GA2700342@rani.riverdale.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200801014755.GA2700342@rani.riverdale.lan>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=cFCUN8WX;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444
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

On Fri, Jul 31, 2020 at 09:47:55PM -0400, Arvind Sankar wrote:
> On Fri, Jul 31, 2020 at 04:08:16PM -0700, Kees Cook wrote:
> > For readability, move the zero-sized sections to the end after DISCARDS
> > and mark them NOLOAD for good measure.
> > 
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> > ---
> >  arch/x86/boot/compressed/vmlinux.lds.S | 42 +++++++++++++++-----------
> >  1 file changed, 25 insertions(+), 17 deletions(-)
> > 
> > diff --git a/arch/x86/boot/compressed/vmlinux.lds.S b/arch/x86/boot/compressed/vmlinux.lds.S
> > index 3c2ee9a5bf43..42dea70a5091 100644
> > --- a/arch/x86/boot/compressed/vmlinux.lds.S
> > +++ b/arch/x86/boot/compressed/vmlinux.lds.S
> > @@ -42,18 +42,16 @@ SECTIONS
> >  		*(.rodata.*)
> >  		_erodata = . ;
> >  	}
> > -	.rel.dyn : {
> > -		*(.rel.*)
> > -	}
> > -	.rela.dyn : {
> > -		*(.rela.*)
> > -	}
> > -	.got : {
> > -		*(.got)
> > -	}
> >  	.got.plt : {
> >  		*(.got.plt)
> >  	}
> > +	ASSERT(SIZEOF(.got.plt) == 0 ||
> > +#ifdef CONFIG_X86_64
> > +	       SIZEOF(.got.plt) == 0x18,
> > +#else
> > +	       SIZEOF(.got.plt) == 0xc,
> > +#endif
> > +	       "Unexpected GOT/PLT entries detected!")
> >  
> >  	.data :	{
> >  		_data = . ;
> > @@ -85,13 +83,23 @@ SECTIONS
> >  	ELF_DETAILS
> >  
> >  	DISCARDS
> > -}
> >  
> > -ASSERT(SIZEOF(.got) == 0, "Unexpected GOT entries detected!")
> > -#ifdef CONFIG_X86_64
> > -ASSERT(SIZEOF(.got.plt) == 0 || SIZEOF(.got.plt) == 0x18, "Unexpected GOT/PLT entries detected!")
> > -#else
> > -ASSERT(SIZEOF(.got.plt) == 0 || SIZEOF(.got.plt) == 0xc, "Unexpected GOT/PLT entries detected!")
> > -#endif
> > +	/*
> > +	 * Sections that should stay zero sized, which is safer to
> > +	 * explicitly check instead of blindly discarding.
> > +	 */
> > +	.got (NOLOAD) : {
> > +		*(.got)
> > +	}
> > +	ASSERT(SIZEOF(.got) == 0, "Unexpected GOT entries detected!")
> >  
> > -ASSERT(SIZEOF(.rel.dyn) == 0 && SIZEOF(.rela.dyn) == 0, "Unexpected run-time relocations detected!")
> > +	/* ld.lld does not like .rel* sections being made "NOLOAD". */
> > +	.rel.dyn : {
> > +		*(.rel.*)
> > +	}
> > +	ASSERT(SIZEOF(.rel.dyn) == 0, "Unexpected run-time relocations (.rel) detected!")
> > +	.rela.dyn : {
> > +		*(.rela.*)
> > +	}
> > +	ASSERT(SIZEOF(.rela.dyn) == 0, "Unexpected run-time relocations (.rela) detected!")
> > +}
> > -- 
> > 2.25.1
> > 
> 
> There's no point in marking zero-size sections NOLOAD -- if the ASSERT's
> passed, they won't be present in the file at all anyway.

I did not find that universally true. I found some sections be written
out with a 0 size. Some I could remove from disk with NOLOAD, others did
not like that so much.

> The only section for which there might be a point is .got.plt, which is
> non-empty on 32-bit, and only if it is first moved to the end. That
> saves a few bytes.

What do you mean about "only if it is first moved to the end"? Would it
be zero-sized if it was closer to .text?

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202007312233.1BA0E2EFC%40keescook.
