Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBEMSQD5AKGQE5I3LXIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id EB40624DEDD
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 19:49:06 +0200 (CEST)
Received: by mail-pl1-x637.google.com with SMTP id j11sf1527334plj.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 10:49:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598032145; cv=pass;
        d=google.com; s=arc-20160816;
        b=xvZEyEQee2iMFsZRIf93RC06uZvPD7m2vdsauEH50Osx8P0C1TyF36MFOlxsjZzDum
         8pNz8L5OxWERemhM3vE+oJKGOJSoy6kjZFrW4t+vwVMwyIlBuWX+HtvCt9F93qIX44GO
         nlxIwyu9Ki+CKqATppV64qVWOfgxIZqy7KV9DR9Zigb1lvD2VR2xDCMM6yB/GpjumQoj
         AjmgTZriUK3X77kTEfHxG0FaMk1RHqQvoX5C74oV94qKu63uUL9CbEYcej54vwMaIiNS
         7Y4ZyQqTJRUF/LBansDQ5C6n/kjVc8NBJw1H+y3axjVn+X8T5sPZ2O8l0swpC5NjntnJ
         cWnA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Gbl2jUiX4gDVqq7WNtaXFzjKRiZ5YGefkFxFTdHTfg8=;
        b=FR8iCeryhHFoikRd6/y2bjyHKTWkLjqoYBmi9tKQK51gDLnU8zDyl0iT5+MHik/4ut
         wOxvtv03dAe0esB8SY1zN1RLb7x/Askz1ARJG06+q0mR7D4XrZodZm69ZEIeFSDRxmyx
         UnC8x1OQaLW/RiwcXdi6tGA1zXA/vVYDczeMOie2ccxN6uLUrX5S11cFVd4M7NSz19JM
         mxerGpIO729jqpPhFbOwNfgWIUv+l6vPmEjPXBAY4jxZm+G4IATVpOUBmACBY8vM2GyY
         9wA+b7vCih6ff3C1Dz4uyjsHIqrtK08TutYp5yJnJDe+bxhazYv/6PtgVYH/A7BPkbsT
         SDZw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=eCrDRDas;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Gbl2jUiX4gDVqq7WNtaXFzjKRiZ5YGefkFxFTdHTfg8=;
        b=g7n75g7S8HCOUeYkVTE0mklH8yz7L9lNxiHtMRP56BR2YOpcmemEaaOqdp1DJySbQk
         XSQco+bHBwmt+rWVjwIXjOfoLIg6Ho/ZnOyjz2rOQy6WtnglpZ9WqwXdw/Xnm+dYpFP/
         tphXBqajajl6nmd6VCw8oect8aewbg26awV0+AIaWmTD2LSEuM/wjniJU4cH6JTFyhhb
         0MXF4qhauTRBjgORG58fzXirxNO73BRMAT40R5ZGs7bPX8EaK5dpdyS5Fe+BLrKPpRta
         xFLLDY1g+8VE3ltHcyrTFZ+BGPCfp6qIJVKn7Uq0tXiDP0b+CnyKVVgPfpbHpcEZll6G
         WnOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Gbl2jUiX4gDVqq7WNtaXFzjKRiZ5YGefkFxFTdHTfg8=;
        b=YJoLyRIbXORQNfaki+IYOeGOqfzZdu1qiJRYieUc7VUGvJ/Y86IM+9q/SzkDKmqVxH
         NSbAmizdNj88mICX1dxdIpeAbNspIRzGWXfMfis55wlICHVcUA1SKRM7Kjn9FSzPf+e3
         VE6X7wBbd0Zd/9VvG0siAQkuSOSYk3H/SVGhpUItepWHgJGkuGns2a4XT8d/94sdhYH9
         8wklDD16Dk69oNUDW60ojlwK3VLnewM+zW8Hu8a1qNG8myAvLZla3yJTEepxPdAAP8lQ
         ZiGbj6GEtFPzCHvuArnLCE/OQgSow1vAapxZHWBN2jE/kUAMcTuRSw3HONg1soxHY3+2
         /H8w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530+04khguaRtjUmhzodaKgNuTcfH6bfG1ZTpacipcRDLxU9gfOj
	oVvTqvT+HzIpHj/m7JUQVc4=
X-Google-Smtp-Source: ABdhPJxAbuicuidaoiFl40gwTkOvXZCgTbqABatDg0hukhZ1mJ93fOKr2zSnuT0wu352FP8uk6PzOQ==
X-Received: by 2002:a17:902:748c:: with SMTP id h12mr834480pll.316.1598032145672;
        Fri, 21 Aug 2020 10:49:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:f158:: with SMTP id o24ls931368pgk.4.gmail; Fri, 21 Aug
 2020 10:49:05 -0700 (PDT)
X-Received: by 2002:a63:1848:: with SMTP id 8mr3096961pgy.347.1598032145156;
        Fri, 21 Aug 2020 10:49:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598032145; cv=none;
        d=google.com; s=arc-20160816;
        b=FCdiaOB30dvWMM4tFPUviDdwtILPvcDrqPYcCrHf558NDtbzbJylhRn+tOIBN6hlqR
         EHAk41H8+3PnvPcb/HNZhDbx6L9U9rGbJt2TAT9d7I+VgdhM/PnTC2+W9cgNiyN8osn2
         kvzR3FHZkYrSC/6wlpJGSxsevefzahi3iITcDck4qSgJY2Hfcz3bv5H4bp3adyR8fglI
         l4Am/ubdHCMCXDMrKAwy/LEd/YbK++crrNdhB9icl96Sb4v/2kL5f0g7yNrgFD97f4vl
         BreC3QOCcLYDfaJxGqgCJWpeHCCh9eHeM11EPX1wr7ysd7HqdTlPIANMEe8v4egmlWcH
         mOAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=/GMuE4utOPjO8y1lqv+OxzSdgWvuN+Qw8CbwkSqlnRQ=;
        b=CQqoL1bIIQ0xFCMVyUGdXpRPZSbxOqkfe9zvPAGv0ns+nDZULXwZpI/k/g7DIoo48H
         rvuo+Pr/pURciBjnsPb374G+Xi7NnDwqTjfGJF5iA+0ucuTO8in/KjNRr3WHMAI/kXuz
         X8b3y1DIa4FcJXAIm4MamMR2K5fkxJOiDX7k+opXNu5LAIjqaVIXJplSTWIml7vXetj9
         ovXtXxGgvVjh1/YcNpUn8tKhntzPdCqr5laagwfgcmDRfesF4aM1ruzSmK1YecksSdVM
         ASYJvairFU6haB2Bes+z85kv2Tk8cKnHyhCR89cw1vKxGSa59dpFHv5jatg9HZTSYqm8
         W0rQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=eCrDRDas;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id i18si129586pju.2.2020.08.21.10.49.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Aug 2020 10:49:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id 189so1328362pgg.13
        for <clang-built-linux@googlegroups.com>; Fri, 21 Aug 2020 10:49:05 -0700 (PDT)
X-Received: by 2002:a63:cf03:: with SMTP id j3mr3144186pgg.14.1598032144842;
        Fri, 21 Aug 2020 10:49:04 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id c10sm3107533pfc.62.2020.08.21.10.49.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Aug 2020 10:49:03 -0700 (PDT)
Date: Fri, 21 Aug 2020 10:49:02 -0700
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
Message-ID: <202008211047.9088D8571C@keescook>
References: <20200731230820.1742553-1-keescook@chromium.org>
 <20200731230820.1742553-30-keescook@chromium.org>
 <20200801021248.GB2700342@rani.riverdale.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200801021248.GB2700342@rani.riverdale.lan>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=eCrDRDas;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544
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

Yup, I see this:

/usr/bin/ld.bfd: warning: orphan section `.got.plt' from `arch/x86/kernel/head_64.o' being placed in section `.got.plt'


-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202008211047.9088D8571C%40keescook.
