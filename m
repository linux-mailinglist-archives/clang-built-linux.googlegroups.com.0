Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBQ76SP4QKGQEINIFYAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3f.google.com (mail-oo1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id D6DE82350AE
	for <lists+clang-built-linux@lfdr.de>; Sat,  1 Aug 2020 07:36:04 +0200 (CEST)
Received: by mail-oo1-xc3f.google.com with SMTP id x16sf1753698ooc.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jul 2020 22:36:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596260163; cv=pass;
        d=google.com; s=arc-20160816;
        b=cM+JFt+5u7vNP53NYEgsqQsKik6Cvr/uJ+cOC8GEWxyQnCLOrn604UY1tF6ynkpk21
         EHNhEAlv3WUEBe5yMJ/ZWvzzpTAuk8T6dQW7+k2zPQ9gZCGmlRIBExlKL0o+pMDlO03U
         +97RXxKpda8yZGeS3TnnBOyL9nQw1CUpFXlopbj1hj5XxzyrxIxGZAitOQ/n6yQGk+g/
         qRLllxwkjZZc37jOMGb7HWpxE/g/ET0VFberaE4/V145J+ZHYzyV/vjfmb896O7qMZta
         iKgmtNiaIcK4sVoqHAa/GZ2pgVCz/Zs+oNIRgXOpPPXvHrWqKhZWywI19QALproKPwB/
         YHXQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=JTi428ahCIYXWgZIbxgZLjI3I0ADBvf217vqzArfs0A=;
        b=qEvE/51AH2sJjJ7+6vR6lta4N3+u7daeUQUItMr7hk0apbltnJDJ47w0EtvUXgZGhZ
         lWA/7XrOEAOUKhAbbyzlYj8Dt0WNioESalaRd3rPiNVqKZflP8Q5sc7tf36ZQ7fJ961x
         VjEAfNH8XX8A64e69VAzEQFMqeGjbgLRLxmnc8sbgE3kPXjFTAvTGj3GX2Xo2cwyQ8Gq
         DdXNjMbqP/eDQv2ohGzaham0xNhHg0TelBaiTSxIiWEg9gAa7omusgHBMD2O+h9Go3eE
         45f9G3Ob5rYBz1NGGg/1iiS0EQSM/F3PywzBvbUoji+I1VG58+NJur9T2Bes9pXftzjQ
         TVbA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="fM/bL01w";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JTi428ahCIYXWgZIbxgZLjI3I0ADBvf217vqzArfs0A=;
        b=QYlPk9q+sxAusO5U2WjFAgXF7v+6f9yBvFjOIuWZq8GmPLVMjszoHbkSL8KEc2sWnm
         xCok0I+UEGCUQXHgdlDuQPCtd/Mr5+LkcRjRGVBEPUazpQxf4tLeStWp0zCMvSJQlgzM
         BXzmkYGGiQq1YzsJKYRjgB5pYpr1hkSD9EfwAlXVU5h+NrFhuE2447eGL2arxwvLx0rC
         7gyfiR51UAx4CrGddgHhURSqEh7sMGANH77Okr75MFAygx3nPkKQXEBPGyErjbckXNFu
         AewBCgvk5VCCp+W69g5TTEP/SZmu5YWw76BsE5R3l9WCPvkc26zFFNgLcLZql5rMr/l8
         +Kxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=JTi428ahCIYXWgZIbxgZLjI3I0ADBvf217vqzArfs0A=;
        b=t6bggG3nrxgOZa/uQL4kGqfdI4ru7Rg/DebHEXDm+/vLd5VlMuN4P95KX/NEoivMrp
         +y2ItjcF0D1IOUeLadmG03t6pKxsVxpySoA/hJgfw3+BMbyu8f8LfGMnVNcWxbPrlZzW
         Tc/FV2tlXTLHRok4AS8TVmg6Vf+BB02Ecgl3Pb4J1aC9EHijX1IILx93TaBvcbq2DL2x
         lEA/ksatxARhj2Is+6+9me34Wl7InxVg7cUD+HwCy4fLJ0s5CQRcTzEEj7Q27m4IvNVG
         gkIh/22BnmL418eZiD/4bCEwa7tMv2JGTkIfHVxpedMnbLGR/ntRk1/XeW+E15sYl/LT
         ccWg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531qVvcJEzVIh2EoSaiT4BDzWe4+WPLONeNd96SWDwhuI67X2scm
	wE9f38acJNGNkirdT5ZPrLc=
X-Google-Smtp-Source: ABdhPJzM5DOhREPYSCfF3p0dGgZh+H7W1DUI9idxnFtITwrLIBXnrTTu2O8Ihj4EwUvl0EngKPsHQw==
X-Received: by 2002:a05:6830:11c4:: with SMTP id v4mr4128957otq.265.1596260163305;
        Fri, 31 Jul 2020 22:36:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:4f0b:: with SMTP id c11ls635745oob.8.gmail; Fri, 31 Jul
 2020 22:36:03 -0700 (PDT)
X-Received: by 2002:a4a:e5d9:: with SMTP id r25mr5949758oov.90.1596260163041;
        Fri, 31 Jul 2020 22:36:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596260163; cv=none;
        d=google.com; s=arc-20160816;
        b=PSg9LHd/s5rOqE7eG3Pppte9fzhfLQPd0X4oq/7hwbmzqlqivWes+V5TJKCf1siHuS
         AP3prIKHUJL3RBA5uJe7G34IKztAkvbgDKp5fVp8dYR9tBaqqPoqb3wStTkIROIfT9bv
         y9dLNmJVtK4tdGmTWkwNhX5Y6A6YYmVOzixErSEY8X49yhJ1Nq/lDSZToWqeEvEdyP0W
         aXf1fhPDPkbHwgwvAGCD5VIm8NIMVXwB3Rzb8g/sHJr+TtmyX6hhKQRq+3b7BejIR5gG
         L0CoCOPipJ4sb5o6+ytPbtPfTaN7S6VMG1TDALqKjszGOzpXeAiJFkmbSp1UFitypw+u
         itWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=TiksbxZAq651HXyzgXud8H+oOdlAwciZhMVaJuNaJO0=;
        b=AT+9M9qUGXe0hpkTpwM6d9bJqIKZizVgzAnJuDiHInyoLMvPSTP5a6bWZ84tZ/fyMK
         fjVcA2ofWjYWI52wRJdGuVTpdWuacgK1qgFOQSHSYf0Ceo1etAEkt8y+bT+Vj41byJN5
         1kbmHRYIlW1M5YFntnc8/Svd4Oid8nGvsW8zHtWAXGts9a+SBq4e8ulKMo+VuGsvAyRN
         xBt85EfeWExLFtZ+iDyOoSlcM72yCsoAqDk0c1/ncVJKOP85fFPMu98VY0hJHLZoNYAo
         CS1WrKkAi0X65qHLKl4bQUbXL7ed7rI7j6VI5OTV32GMmhG7xISUX3qJ1tfA4O4K+OhL
         0GNA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="fM/bL01w";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id r64si475494oor.2.2020.07.31.22.36.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Jul 2020 22:36:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id u10so8859056plr.7
        for <clang-built-linux@googlegroups.com>; Fri, 31 Jul 2020 22:36:03 -0700 (PDT)
X-Received: by 2002:a17:90a:d195:: with SMTP id fu21mr7200561pjb.100.1596260162387;
        Fri, 31 Jul 2020 22:36:02 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id i7sm11886481pgh.58.2020.07.31.22.36.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jul 2020 22:36:01 -0700 (PDT)
Date: Fri, 31 Jul 2020 22:36:00 -0700
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
Message-ID: <202007312235.4A48157938@keescook>
References: <20200731230820.1742553-1-keescook@chromium.org>
 <20200731230820.1742553-33-keescook@chromium.org>
 <20200801014755.GA2700342@rani.riverdale.lan>
 <20200801025325.GA2800311@rani.riverdale.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200801025325.GA2800311@rani.riverdale.lan>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="fM/bL01w";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643
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

On Fri, Jul 31, 2020 at 10:53:25PM -0400, Arvind Sankar wrote:
> On Fri, Jul 31, 2020 at 09:47:55PM -0400, Arvind Sankar wrote:
> > On Fri, Jul 31, 2020 at 04:08:16PM -0700, Kees Cook wrote:
> > > For readability, move the zero-sized sections to the end after DISCARDS
> > > and mark them NOLOAD for good measure.
> > > 
> > > Signed-off-by: Kees Cook <keescook@chromium.org>
> > > ---
> > >  arch/x86/boot/compressed/vmlinux.lds.S | 42 +++++++++++++++-----------
> > >  1 file changed, 25 insertions(+), 17 deletions(-)
> > > 
> > > diff --git a/arch/x86/boot/compressed/vmlinux.lds.S b/arch/x86/boot/compressed/vmlinux.lds.S
> > > index 3c2ee9a5bf43..42dea70a5091 100644
> > > --- a/arch/x86/boot/compressed/vmlinux.lds.S
> > > +++ b/arch/x86/boot/compressed/vmlinux.lds.S
> > > @@ -42,18 +42,16 @@ SECTIONS
> > >  		*(.rodata.*)
> > >  		_erodata = . ;
> > >  	}
> > > -	.rel.dyn : {
> > > -		*(.rel.*)
> > > -	}
> > > -	.rela.dyn : {
> > > -		*(.rela.*)
> > > -	}
> > > -	.got : {
> > > -		*(.got)
> > > -	}
> > >  	.got.plt : {
> > >  		*(.got.plt)
> > >  	}
> > > +	ASSERT(SIZEOF(.got.plt) == 0 ||
> > > +#ifdef CONFIG_X86_64
> > > +	       SIZEOF(.got.plt) == 0x18,
> > > +#else
> > > +	       SIZEOF(.got.plt) == 0xc,
> > > +#endif
> > > +	       "Unexpected GOT/PLT entries detected!")
> > >  
> > >  	.data :	{
> > >  		_data = . ;
> > > @@ -85,13 +83,23 @@ SECTIONS
> > >  	ELF_DETAILS
> > >  
> > >  	DISCARDS
> > > -}
> > >  
> > > -ASSERT(SIZEOF(.got) == 0, "Unexpected GOT entries detected!")
> > > -#ifdef CONFIG_X86_64
> > > -ASSERT(SIZEOF(.got.plt) == 0 || SIZEOF(.got.plt) == 0x18, "Unexpected GOT/PLT entries detected!")
> > > -#else
> > > -ASSERT(SIZEOF(.got.plt) == 0 || SIZEOF(.got.plt) == 0xc, "Unexpected GOT/PLT entries detected!")
> > > -#endif
> > > +	/*
> > > +	 * Sections that should stay zero sized, which is safer to
> > > +	 * explicitly check instead of blindly discarding.
> > > +	 */
> > > +	.got (NOLOAD) : {
> > > +		*(.got)
> > > +	}
> > > +	ASSERT(SIZEOF(.got) == 0, "Unexpected GOT entries detected!")
> > >  
> > > -ASSERT(SIZEOF(.rel.dyn) == 0 && SIZEOF(.rela.dyn) == 0, "Unexpected run-time relocations detected!")
> > > +	/* ld.lld does not like .rel* sections being made "NOLOAD". */
> > > +	.rel.dyn : {
> > > +		*(.rel.*)
> > > +	}
> > > +	ASSERT(SIZEOF(.rel.dyn) == 0, "Unexpected run-time relocations (.rel) detected!")
> > > +	.rela.dyn : {
> > > +		*(.rela.*)
> > > +	}
> > > +	ASSERT(SIZEOF(.rela.dyn) == 0, "Unexpected run-time relocations (.rela) detected!")
> > > +}
> > > -- 
> > > 2.25.1
> > > 
> > 
> > There's no point in marking zero-size sections NOLOAD -- if the ASSERT's
> > passed, they won't be present in the file at all anyway.
> > 
> > The only section for which there might be a point is .got.plt, which is
> > non-empty on 32-bit, and only if it is first moved to the end. That
> > saves a few bytes.
> 
> Btw, you should move .got.plt also to the end anyway for readability,
> it's unused even if non-empty. And with the ASSERT being placed
> immediately after it, it's even more distracting from the actual section
> layout.

ld.bfd (if I'm remembering correctly) was extraordinarily upset about it
being at the end. I will retest and report back.

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202007312235.4A48157938%40keescook.
