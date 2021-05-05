Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBR4UZSCAMGQEPB55TVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3c.google.com (mail-vs1-xe3c.google.com [IPv6:2607:f8b0:4864:20::e3c])
	by mail.lfdr.de (Postfix) with ESMTPS id A060D3749F2
	for <lists+clang-built-linux@lfdr.de>; Wed,  5 May 2021 23:12:40 +0200 (CEST)
Received: by mail-vs1-xe3c.google.com with SMTP id l6-20020a67d5060000b0290228235bc72dsf1658544vsj.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 05 May 2021 14:12:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620249159; cv=pass;
        d=google.com; s=arc-20160816;
        b=anNR7OIsWvpBjm/E7WpTvDpu7rAGYviijiDoogRP4unDsG5A4jPTjYwcyneRt8I3O7
         zLNEf5jHnbZGTrIcp66DOz1b4sp58CcIweoM3CPtnzf9dU8Bp5e5xbK/oh+nndHLWQQE
         WYCYcA7rbHm6FHpuvIgMSRhB9ekBDjjuIEmkXcpmohoFJDC1sh/ffg4eSRGEDxwi3q/a
         E1r2KJMHQa0qtaoVMDyhVFlAQPyMRxtQ9i/ASAecAhF7M70ISHwjuyWQvo8A4nmVfHgj
         gny6+GnyOjF6jmkhaZzwC6vGlI0NFwphOSwqh+831qUZyTkCaiWWU1C0yYqf+C5Jw4sS
         i6YQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=2/FXkC/5/IE5BdFKV+9LbR7HNk70pf0TKiEVi205bn0=;
        b=rGXMEXhn1GQiTIvKl4wWqSlm5/9n4V1mWigD+VDh00yW58KwrFyN4DFDSVHYeazuw3
         5YTO9XQHnTq3v51A3gvHvRmeJeEEdwPqng8obyYT3bFJOVd5pedbycbNEE+hblkB/rSm
         5zvgNRvgPGeKOJxV6tw1Z4sgvcpnSeCRJrKX/1chTMa9j9GzQxxjjjxRlQ9p4fuz36iF
         GyhGzQOJtrdrn9vHS1a5Tvvpp3T+PG7A09Bco4aOIyGRpgz1B1mYN9etPTuUagqU85/5
         a4yrDmTBf+RpbpyE6Cu4mndhDuIZlp2MewsabJtsxzOx40IPw3Y50uyi0AcMgI/uJ/d2
         l52w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=iGOt52jo;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2/FXkC/5/IE5BdFKV+9LbR7HNk70pf0TKiEVi205bn0=;
        b=MO+HpNM/kPc5osGPp+VFK49huQsoeE48e33SQS6FBWK1jkqDsjki+9h8dYzeaDVFiQ
         oCLbBil1Sou6TqK+vDGBCmhWIaE4sRusv0gsG5TkPVXpbIFl+AJh1mHv+AJZ4s1zTWKc
         YYcNg2v4MPPrUbfBOols2bYW9rgoQ+uqsvE79H/h224CIMuR7vLL3CZn/bYn1MsitXio
         6x3Rc1XtPjpct8FxnPxFYfZhSswA7i01zHE7Mac5DNSLHksYFYicZScTQ34YegO8o1C7
         jD6MX/3avb3OvdefzuFYWOvkPyov844MJEAsxJ/Tn+AUizkd1UX/AcouTcBtro0rf+HL
         KYZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2/FXkC/5/IE5BdFKV+9LbR7HNk70pf0TKiEVi205bn0=;
        b=IN6VhWFmhN92zxIo+4/yLB19VuVCnu61MzndfbGKDB/iDPmRCM/zUUeHukmIqIQvV3
         tmXwr3Xsyq7cLF99uxT+nIVJUpK1NN5CPoPAeeujG9ryR2Bo/aYHpT+r9Y0Ys3dG01yy
         IVmjjMtnoVMuX7ueYMZAS9l+bgvBWDiVdtsXVTMsqQSu6iA684J88boQFkJbdobL8/pi
         eCk6taQ04mOL+iFEvp4J3sNVC+dbP1ceqQ+z7k30sH+jrlQZXQZ+MPU3PIy/snHlALjE
         0uxFQC+5wkhDKl/9MV74CRNvjvU157m5C4x47JC8vtsmu6SaohpqQapU6dp2BTT8/Jt/
         hWuw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532VQ6hb33mzcEJla8u0D882MchiKeYFHb9x9gjv12lLKlFY4TF3
	e4HxxFO8Yj/tqaiAcUEmvd0=
X-Google-Smtp-Source: ABdhPJxh8mLr4VDOiDIpvWl0DvfbQd18m9kWHpwSnB+dsImJLKHcykzipR5FhXxHWc8nKJPC2fRZRA==
X-Received: by 2002:a9f:368f:: with SMTP id p15mr1105728uap.41.1620249159709;
        Wed, 05 May 2021 14:12:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:2016:: with SMTP id v22ls47956uak.8.gmail; Wed, 05 May
 2021 14:12:39 -0700 (PDT)
X-Received: by 2002:ab0:718f:: with SMTP id l15mr1074404uao.95.1620249159066;
        Wed, 05 May 2021 14:12:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620249159; cv=none;
        d=google.com; s=arc-20160816;
        b=gt1LKQwnlDPFJ+mo8zDC3aLWDaZvP7iZG0XzNFMWcX5e4ZAY+P4vG7CNb4LJiwSBsq
         wtCxwsxjEv9aBwxfrIKe/9tQHwvEuk7J70BFvJ6W6CEtRHeINoIGcXOBu91bTg4q1wf+
         5nxPOIdiMIp5LVQXIEF6FIFx2CycZXg83Wx4ceZPC9epqFXeXgj6oPmuAtmR2GEOAerl
         ruQIp8a6jBLv9jsCWmoveCQx1IiSgfvUQ/hn3ULjTkEsqd5dpylt9RvwSKqD9o0hsLb/
         Vgg0f+yNrES2UEzHkl+QpmNIa+NwTq5ON5jdYdgK1MfQEo6OTe75PczScN7gpl09QYcx
         Ik0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=6S/7Vb3VmIlzqhs87pJu3WB/L7yQoMBPan+dhfIM+yQ=;
        b=CYPa/W0w7h6u+xzH8oW859aRys+bdzEH2zISfPLD2ekCEV8JnqRTsRZLvPbrmPgPPr
         TTyAwbV6cITVXSfY703qUnZdBtuIPWC4kekMe8hNFG3EUyRFouLzXnWcLajKfQnZlBcy
         PayT/Xon6n+XlBOJBEgYTPrbAquUGYNZGiicG99HCsoXt5TFOh+F/8HOc11GNGJcybGJ
         ijMo5kGWJWjakni9bmcmviM2o4JeNDrdFcBGIMTbluqxlChxOvFnym8q5b4wK7Y6jTa9
         3s/2WQGNriUksVum/d3sFlSv0hOA80IaW4aImUzc49aXF3QSHQYKEyHUEQJfj8qW0rYv
         JFzw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=iGOt52jo;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x24si39784vsr.1.2021.05.05.14.12.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 May 2021 14:12:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3A399613E9;
	Wed,  5 May 2021 21:12:36 +0000 (UTC)
Date: Wed, 5 May 2021 14:12:32 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Kees Cook <keescook@chromium.org>
Cc: Thomas Gleixner <tglx@linutronix.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Elena Reshetova <elena.reshetova@intel.com>,
	David Laight <David.Laight@aculab.com>,
	Will Deacon <will@kernel.org>, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] stack: replace "o" output with "r" input constraint
Message-ID: <YJMKQFscszFcf5fE@archlinux-ax161>
References: <20210419231741.4084415-1-keescook@chromium.org>
 <YIIcoz4fHjVjWHTI@archlinux-ax161>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YIIcoz4fHjVjWHTI@archlinux-ax161>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=iGOt52jo;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Thu, Apr 22, 2021 at 06:02:27PM -0700, Nathan Chancellor wrote:
> On Mon, Apr 19, 2021 at 04:17:41PM -0700, Kees Cook wrote:
> > From: Nick Desaulniers <ndesaulniers@google.com>
> > 
> > "o" isn't a common asm() constraint to use; it triggers an assertion in
> > assert-enabled builds of LLVM that it's not recognized when targeting
> > aarch64 (though it appears to fall back to "m"). I've fixed this in LLVM
> > 13 now, but there isn't really a good reason to be using "o" in particular
> > here. To avoid causing build issues for those using assert-enabled builds
> > of earlier LLVM versions, the constraint needs changing.
> > 
> > Instead, if the point is to retain the __builtin_alloca(), we can make ptr
> > appear to "escape" via being an input to an empty inline asm block. This
> > is preferable anyways, since otherwise this looks like a dead store.
> > 
> > While the use of "r" was considered in
> > https://lore.kernel.org/lkml/202104011447.2E7F543@keescook/
> > it was only tested as an output (which looks like a dead store, and
> > wasn't sufficient). Use "r" as an input constraint instead, which
> > behaves correctly across compilers and architectures:
> > https://godbolt.org/z/E9cd411ob
> > 
> > Link: https://reviews.llvm.org/D100412
> > Link: https://bugs.llvm.org/show_bug.cgi?id=49956
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > Tested-by: Kees Cook <keescook@chromium.org>
> > Fixes: 39218ff4c625 ("stack: Optionally randomize kernel stack offset each syscall")

Kees, were you planning on taking this to Linus or someone else? It
would be nice to have this in for -rc1 (although I understand it might
be too late), if not, by -rc2.

Cheers,
Nathan

> > Signed-off-by: Kees Cook <keescook@chromium.org>
> 
> I built arm64 defconfig with and without
> CONFIG_RANDOMIZE_KSTACK_OFFSET_DEFAULT with LLVM 12 (which does not have
> Nick's LLVM fix) without any issues and did a quick boot test in QEMU,
> nothing exploded.
> 
> Reviewed-by: Nathan Chancellor <nathan@kernel.org>
> Tested-by: Nathan Chancellor <nathan@kernel.org>
> 
> > ---
> >  include/linux/randomize_kstack.h | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/include/linux/randomize_kstack.h b/include/linux/randomize_kstack.h
> > index fd80fab663a9..bebc911161b6 100644
> > --- a/include/linux/randomize_kstack.h
> > +++ b/include/linux/randomize_kstack.h
> > @@ -38,7 +38,7 @@ void *__builtin_alloca(size_t size);
> >  		u32 offset = raw_cpu_read(kstack_offset);		\
> >  		u8 *ptr = __builtin_alloca(KSTACK_OFFSET_MAX(offset));	\
> >  		/* Keep allocation even after "ptr" loses scope. */	\
> > -		asm volatile("" : "=o"(*ptr) :: "memory");		\
> > +		asm volatile("" :: "r"(ptr) : "memory");		\
> >  	}								\
> >  } while (0)
> >  
> > -- 
> > 2.25.1
> > 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YJMKQFscszFcf5fE%40archlinux-ax161.
