Return-Path: <clang-built-linux+bncBCIO53XE7YHBBKNSSP4QKGQEFHOJ4IY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3b.google.com (mail-qv1-xf3b.google.com [IPv6:2607:f8b0:4864:20::f3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 17BAE234F82
	for <lists+clang-built-linux@lfdr.de>; Sat,  1 Aug 2020 04:53:30 +0200 (CEST)
Received: by mail-qv1-xf3b.google.com with SMTP id l18sf3400904qvq.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jul 2020 19:53:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596250409; cv=pass;
        d=google.com; s=arc-20160816;
        b=H1Gqit5Eovk/l5mFDwfLAvs3y6ag2MJdv+9Z18+pGlATD1t+mj+BigTK4ZaaobUJSJ
         O1Ligjygq5qMEWgBiKV4EExJNew1yIOLhWZBpH727BZaRdt6pbce+6v4jfsppK0n17f3
         ZXhHJSQBKaWxZRgDYzPbWYW811soT21t69lpjtZPU3mRzCYM5VhGhn+fAPVTyBbqA2jm
         VcE/xHyTdA6xk//D4EVCMcxNRAdjsf643cC2Gy6wvAEwvSbEuTvfgXkaF2XR9VXEv9EB
         GZ/2CO3PrSmOQ+CRUaxw4cAMzvEIVLFhMnSmmVYlr1wssNBNCOf9bCGbLCVNZARxvSPt
         3pYw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=IQUVdqN9DObfDo/wI7bYM95hcVZxQ7ljHX42SerREBU=;
        b=vMKEPbrfBm3UOfzgcCVZnB7PYexSf5IlgviqQ/PgCNCaDnDY8obWyYoLgKdszw6bWh
         OcdsqKRkQD8/g+bHJGCSQOZmgShPT248tSPCcreBApPF7z00AU1IkrSDv62f/UGAUzwg
         oC/4N1Vd1kJA++bZu9/TddW1vuRL5KJEsIFkdRreSwYjv1kM4qrxFF/APnblezkkwGaK
         cEoNy4QEPzpBQK+wbAydPuA66CPR1rDikQ0JmkKzoB68z8XGH4o8ZneDKuBr/vTWepj5
         R7Y/yncPRApk+FfQ5Aj/pVWv9hMQBPXVyK+ttYjhTBMqUzeduh1r3r0VQIeuhDbOz9dk
         FNsw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rmevkkZp;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f43 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IQUVdqN9DObfDo/wI7bYM95hcVZxQ7ljHX42SerREBU=;
        b=iLC1ShBRUIqUgV5vlqLOExBkYE7ZHQbTYzyoqFOX69wo0nga0n1iiWzRo0iIX4ODoC
         a5Pqwkt7cKMpklUqZwBAucbQdrXOIt0srfg8UYJxTpkWqsJtmP//GDu881GREjB1Q779
         OtmTgzHREKzaz/4ctSM4xVY3us5MaFpWWnzwjB5dKoiwS0s7FeBSoeOexjIOnMIts3pw
         0AvbytebxgxwjCulwzAq6QC/XOP6zsUgfh2H6lkoLR0oPDpueJP1MDUxNzH/tC89NyPx
         2MwmwNPqEFe0/glNgls9W1UeXHQu4hIgdfcYYEyomS7YoXTtJ3OlHUWJW07kO3M+4cIi
         7+XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=IQUVdqN9DObfDo/wI7bYM95hcVZxQ7ljHX42SerREBU=;
        b=YFXU6Qw5YZilH/pIAoXFnIgKz0WdEUk8tt54r4BTkusuziB6t3R33vn6/FWuyk7rTT
         jhADrkO2PnmaQhjfH2T+lV6MEL2IBJYZoQO9/PQ1l+7njzWE5bFzF1y2XIcSyQn9JF43
         +s8Kjq3IMUOifRpSl3LTXhRgDy4y5CC918KHsRAD+D+w4RGgCC0pAfwggoPXW1hb+yVT
         j3Vib6XRmwv8pMddBpbXeaevlIy0MYLReYU24gndCOAvGevjCT9YVo3yxYPaxJuRGWSV
         gbHFL94utX0WwBJM3A1tU0qlhNOe8kEJJ5vL0THXI45zzKMecv4W4J1hdhRu5S9UBefv
         32vA==
X-Gm-Message-State: AOAM530QYWBb0bLBloetpzFUDRSCc/kxR6ATW0IpTvPnTNaJzyMwCqQK
	+J7BVpwVVljxu3NUJ/BOBgc=
X-Google-Smtp-Source: ABdhPJztkznzTcsfkvCa30gimPqxPWcy1+FsUGqowtgpKzAQ3MxkMG48LXA95sMeeftcp2GenhBYdQ==
X-Received: by 2002:a0c:d84d:: with SMTP id i13mr6799037qvj.167.1596250409066;
        Fri, 31 Jul 2020 19:53:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:8ce:: with SMTP id y14ls3935540qth.7.gmail; Fri, 31 Jul
 2020 19:53:28 -0700 (PDT)
X-Received: by 2002:ac8:4719:: with SMTP id f25mr6805867qtp.291.1596250408751;
        Fri, 31 Jul 2020 19:53:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596250408; cv=none;
        d=google.com; s=arc-20160816;
        b=hjW2aR1AefEh+a4ZhN5xM16LzRMsSZHSLnPtE6g0pOqIBT9BaEs6Nq5sLbqCbuj/G8
         PRZFy7RA0Tz9q6LHrOOMo6tJtwoR1/E2I1wkVsyywIRXb+wlsNJ4sOiOOH5GuHqWx9ld
         3gmLkG2yMB+KqtjD7TuQ04Cs3jhRVyfG1kUMTbpvwt/RJfaOZgcZ3lNjxBdQF+FriRDY
         OB+0dMiMRB2TgZQzzuv6xCKyLL47hhA2sa1/Xe2/pZGPCkb3FNS1EE0VVwzaCo811F4g
         NP2csaPat1Ox2Lsw2Z3wkrnNzrfXeJkczQxuueqY+1GFNy32MLczF+O1D0x0Q8zsragb
         sjUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=qQWOKnsvuGAQthwsVhbKAAVxRkrCLknLmfWwO2EQo/0=;
        b=zpSiFwbmkeurpv94/y6VQS7o+4gZoeI8iYnfndJHFyTbxR7DwmOdKiBjEn5zwhlUJu
         T9bHp9dGRIKXaSlhnmr2O/ZC6IGCjaHFpMtFZ5KhfnF+2G9LHaQjRB/Dk9f3YAJLk0Zt
         94Uu4RUYPUiXtep4N28W0KyoSmu7NFUrJfnwAAqAKO5oBowIxUez78TZ/BP2mLgKFYLc
         N7MIRNltEY5IxXWpgIP+4vt9QMobyzeIoHZDOiu9QcIm+dsxUUHlD+qntve0nNp1CaNE
         +S8n1mdrJxVt9UB8AfFAAVGixkpkJTPjAAO8p9mrlPrptCZAyqB3mYNBIyF54RZ2iaZy
         Lx5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rmevkkZp;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f43 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qv1-xf43.google.com (mail-qv1-xf43.google.com. [2607:f8b0:4864:20::f43])
        by gmr-mx.google.com with ESMTPS id w35si662588qth.1.2020.07.31.19.53.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Jul 2020 19:53:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f43 as permitted sender) client-ip=2607:f8b0:4864:20::f43;
Received: by mail-qv1-xf43.google.com with SMTP id y11so12082291qvl.4
        for <clang-built-linux@googlegroups.com>; Fri, 31 Jul 2020 19:53:28 -0700 (PDT)
X-Received: by 2002:a0c:b999:: with SMTP id v25mr6978810qvf.32.1596250408454;
        Fri, 31 Jul 2020 19:53:28 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id p33sm9274408qtp.49.2020.07.31.19.53.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jul 2020 19:53:27 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Fri, 31 Jul 2020 22:53:25 -0400
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Kees Cook <keescook@chromium.org>, Thomas Gleixner <tglx@linutronix.de>,
	Will Deacon <will@kernel.org>,
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
Message-ID: <20200801025325.GA2800311@rani.riverdale.lan>
References: <20200731230820.1742553-1-keescook@chromium.org>
 <20200731230820.1742553-33-keescook@chromium.org>
 <20200801014755.GA2700342@rani.riverdale.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200801014755.GA2700342@rani.riverdale.lan>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=rmevkkZp;       spf=pass
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
> 
> The only section for which there might be a point is .got.plt, which is
> non-empty on 32-bit, and only if it is first moved to the end. That
> saves a few bytes.

Btw, you should move .got.plt also to the end anyway for readability,
it's unused even if non-empty. And with the ASSERT being placed
immediately after it, it's even more distracting from the actual section
layout.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200801025325.GA2800311%40rani.riverdale.lan.
