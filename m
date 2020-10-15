Return-Path: <clang-built-linux+bncBCIO53XE7YHBB76AUH6AKGQEDPT25CI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B88028F50F
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Oct 2020 16:45:20 +0200 (CEST)
Received: by mail-oi1-x23d.google.com with SMTP id k7sf1288685oif.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Oct 2020 07:45:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602773119; cv=pass;
        d=google.com; s=arc-20160816;
        b=V4foV0QyutVCWEj7IIf82H81GRLonCSn5HVGqKzDlHZ021u3YDGOfG9RPA1k3zWf6m
         hrT09VAMfuRX7AZBIED9v1gV0L3/N+dmXVmqd5SFKMoYDtbxPGSK4SRgWwaaMjW8oZdc
         IgtkpcliE6p6yRDMMaEpMUzjtUw5Za8DycsEOxEl4Cy+S9EJfJ5YjPlKDOCYRBNWsy9S
         7qd6Kf1E4gr0SGjFGjdQ2dSHDLTPActstSCzhe2TfxPZkhVaOd+i+w1+DZ+m52C9plUS
         q2Ye/0rLy+NAgrhTubV3fA/2KQjem3B01t27EouxjsbORbxyUY8JxvnmJFxaS7Nx/RJr
         g8MA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=bgNGW/ODyn9t77pG2U7vNvk+SevWm/cQtJrYTnL8byk=;
        b=lJGrXbj3SDHTciJXja2OoQtj6MDVTZ2y8DcrxDOLsUafnreR564z1c4ylJKGVs/6WE
         xdFwLb1N4HJmx2MapLJlndc4OvMnbxYMmckDtveccDVb+hE4OWlJVFHTIuN8i9nCsV/N
         9clEAvdWta6wWd/dP0NjqecFbE6xRNDPafyBoKai7C28qrRGfwfyQiCG3fnffI5n/S11
         C7mkK6LEdfXmB+SOpdV+q16JHnga9N7Itb8WzOK9Qa/uNnSRavIihGZE9LhiNMM+uAjQ
         w3aMcAewoRgkthz796CZIYH5mfg+ebDEAY6f6Sk3Yde1Wfgml7ml1huUpMUXiBhYH1DO
         AEZg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Lf/eU/22";
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bgNGW/ODyn9t77pG2U7vNvk+SevWm/cQtJrYTnL8byk=;
        b=ev9ReiwrkqxE39Eg5JeXxi9x/f7qfjgSi6zlYS5e87TA5a1k9kV5GUdLV7kK/pmfDl
         Gg0mNROrBDIEcyu1MERCfuz/ebHYd9sV23CVXtnbrQp5Uk5tuoOAYDWt0CWsLtvDuukf
         SytPGRaTaBva7tMS9v1AbHmaViCXpKywQLNU0+dVmYfGwBexGRD42V1ZKwAfgbMHgy6g
         P0cr1YK/NOgD/PZxxj4d/DlXBX8I0ekJbFVF0XMcoxc9BrA+JlsjiTH3t0SedBp93pNL
         fvvnt2lVMH8A1ESgVS4fpxmIokFe8aLUw9YsEbmO0nFWT4nvy34w/bJwkIq2IOWOeNu/
         vktw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=bgNGW/ODyn9t77pG2U7vNvk+SevWm/cQtJrYTnL8byk=;
        b=iXhsNinpWkDR1HyeymP0jLONHr/TOLE5Kx6IAwPjZEvixR7/R5NKopWzDuDCvSAQ8k
         ERjp/KI/vSUtX002InQ60iVLq5IrTC3vOvKnZ/Wk7eQVmZ6iePDR5ZbU6fo1lH/3MQXE
         8Jp3uP1ujTFJ9rJ9RgtSKmHnxVAKzYHPhssb027q1mQZDwJqCZ2LAHJYxmJQhR6q13U5
         yKuYQFSjPPixy6+aWQ1tFo/czgx1dyI9S6AfCtrd4xH59tccBsv5jcNkGQHOlkAZwKuZ
         rzb2y9o/joCAvzHP0vmznMXBhVE87T6N2hfP2Va7sGf0XcmrYN/4doM5RgnZfBOOFKv3
         RS8g==
X-Gm-Message-State: AOAM533XyMIF2fS+qfxeFz8bf2aa82QY3sYCxHKpg4SeV+GG1SeBaqIr
	spf1dlu2f8SLHTRk+91FVKg=
X-Google-Smtp-Source: ABdhPJxr9Mg8Xgp8ZFXSsFFNwg3mzc5juTBfeL7el0R54uDVaSHMUawQK7nHpE22LzXyZ+wDTRAmDA==
X-Received: by 2002:a9d:d23:: with SMTP id 32mr3107454oti.34.1602773119125;
        Thu, 15 Oct 2020 07:45:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:2fc8:: with SMTP id p191ls182324oop.3.gmail; Thu, 15 Oct
 2020 07:45:18 -0700 (PDT)
X-Received: by 2002:a4a:b209:: with SMTP id d9mr1484027ooo.70.1602773118706;
        Thu, 15 Oct 2020 07:45:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602773118; cv=none;
        d=google.com; s=arc-20160816;
        b=Eb57y9MJT2+NMwWvMbiIYXugeCRiYd+t/M6dO7Hg/GpJyTk6SLRLERSmpJA/PqJaik
         D/+m+51tdARtLhjyztnuMedGmxIArzeoUvnpg6o2S0vl+7/4c0o/GMPDXn1oiVmBAhm9
         IaLQTDaOs7wwWcvUZWctsCq0x/mO3DnRUNX8SI3dcMbD3I9LPLtEaCQQO3aWfdP3mVnA
         uNcXr+hPd8otNMZTVEW85VCnSXUnnZThGGZhVEAaNQC/AYhQfJuIteou8WsTTCy2WKbu
         ZmU2kEJQcQgO0VGCpf4yrdKrDgYELqG+q4iE8agqV7z+GkNKckYdTkmFFzGJDYCNKXTI
         3ItQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=fI/o5S8juNGYXFdI5b1qwY0a7V7eY5Ml3ywLDameOjQ=;
        b=LV+WLpowIHWPX5jErDxCdAQZcLenQjDdf3GaidykNSBIAhKEkQEYA09jdhrYxuRQ/E
         ALuqW93lzT8hVfYpI64gPVPP8BcEBR3UbokOCfhdu3iAPb1DSZaNH3V7zTw5tnswLYMl
         U5KdgYB3QvT6gIO/+46JibqSgcYRTnypmVZ/Lm6q2weHRGDC7N01zZ1g/HhdcaHd98hw
         vXFDYJZTxy+RexjOmSBFR4o9cT8AJWIv5k5+Dv4VhhT/6hCf7uYMWK8ZnHTdciT6CtX4
         MpT5F3nGFo2dg6APDjZj8HLvIpRaSYY/I18n0GcNiUFYTDG253FrlHzOB0jv5b1oS42H
         VsSg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Lf/eU/22";
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-il1-x143.google.com (mail-il1-x143.google.com. [2607:f8b0:4864:20::143])
        by gmr-mx.google.com with ESMTPS id f16si237535otc.0.2020.10.15.07.45.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Oct 2020 07:45:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) client-ip=2607:f8b0:4864:20::143;
Received: by mail-il1-x143.google.com with SMTP id l16so4402643ilj.9
        for <clang-built-linux@googlegroups.com>; Thu, 15 Oct 2020 07:45:18 -0700 (PDT)
X-Received: by 2002:a05:6e02:664:: with SMTP id l4mr3544032ilt.81.1602773118225;
        Thu, 15 Oct 2020 07:45:18 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id v18sm2652622ilj.12.2020.10.15.07.45.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Oct 2020 07:45:17 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Thu, 15 Oct 2020 10:45:15 -0400
To: David Laight <David.Laight@ACULAB.COM>
Cc: 'Arvind Sankar' <nivedita@alum.mit.edu>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] compiler.h: Fix barrier_data() on clang
Message-ID: <20201015144515.GA572410@rani.riverdale.lan>
References: <20201014212631.207844-1-nivedita@alum.mit.edu>
 <1653ace9164c4a3a8be50b3d2c9ff816@AcuMS.aculab.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1653ace9164c4a3a8be50b3d2c9ff816@AcuMS.aculab.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="Lf/eU/22";       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::143
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

On Thu, Oct 15, 2020 at 08:50:05AM +0000, David Laight wrote:
> From: Arvind Sankar
> > Sent: 14 October 2020 22:27
> ...
> > +/*
> > + * This version is i.e. to prevent dead stores elimination on @ptr
> > + * where gcc and llvm may behave differently when otherwise using
> > + * normal barrier(): while gcc behavior gets along with a normal
> > + * barrier(), llvm needs an explicit input variable to be assumed
> > + * clobbered. The issue is as follows: while the inline asm might
> > + * access any memory it wants, the compiler could have fit all of
> > + * @ptr into memory registers instead, and since @ptr never escaped
> > + * from that, it proved that the inline asm wasn't touching any of
> > + * it. This version works well with both compilers, i.e. we're telling
> > + * the compiler that the inline asm absolutely may see the contents
> > + * of @ptr. See also: https://llvm.org/bugs/show_bug.cgi?id=15495
> > + */
> > +# define barrier_data(ptr) __asm__ __volatile__("": :"r"(ptr) :"memory")
> 
> That comment doesn't actually match the asm statement.
> Although the asm statement probably has the desired effect.
> 
> The "r"(ptr) constraint only passes the address of the buffer
> into the asm - it doesn't say anything at all about the associated
> memory.
> 
> What the "r"(ptr) actually does is to force the address of the
> associated data to be taken.
> This means that on-stack space must actually be allocated.
> The "memory" clobber will then force the registers caching
> the variable be written out to stack.
> 

I think the comment is unclear now that you bring it up, but the problem
it actually addresses is not that the data is held in registers: in the
sha256_transform() case mentioned in the commit message, for example,
the data is in fact in memory even before this change (it's a 256-byte
array), and that together with the memory clobber is enough for gcc to
assume that the asm might use it. But with clang, if the address of that
data has never escaped -- in this case the data is a local variable
whose address was never passed out of the function -- the compiler
assumes that the asm cannot possibly depend on that memory, because it
has no way of getting its address.

Passing ptr to the inline asm tells clang that the asm knows the
address, and since it also has a memory clobber, that it may use the
data. This is somewhat suboptimal, since if the data was some small
structure that the compiler was just holding in registers originally,
forcing it out to memory is a bad thing to do.

> If you only want to force stores on a single data structure
> you actually want:
> #define barrier_data(ptr) asm volatile("" :: "m"(*ptr))
> although it would be best then to add an explicit size
> and associated cast.
> 

i.e. something like:
	static inline void barrier_data(void *ptr, size_t size)
	{
		asm volatile("" : "+m"(*(char (*)[size])ptr));
	}
plus some magic to disable the VLA warning, otherwise it causes a build
error.

But I think that might lead to even more subtle issues by dropping the
memory clobber. For example (and this is actually done in
sha256_transform() as well, though the zero'ing simply doesn't work with
any compiler, as it's missing the barrier_data()'s):

	unsigned long x, y;
	... do something secret with x/y ...
	x = y = 0;
	barrier_data(&x, sizeof(x));
	barrier_data(&y, sizeof(y));
	return;

Since x is not used after its barrier_data(), I think the compiler would
be within its rights to turn that into:

	xorl	%eax, %eax
	leaq	-16(%rbp), %rdx	// &x == -16(%rbp)
	movq	%eax, (%rdx)	// x = 0;
	// inline asm for barrier_data(&x, sizeof(x));
	movq	%eax, (%rdx)	// y = 0; (!)
	// inline asm for barrier_data(&y, sizeof(y));

which saves one instruction by putting y at the same location as x, once
x is dead.

With a memory clobber, the compiler has to keep x and y at different
addresses, since the first barrier_data() might have saved the address
of x.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201015144515.GA572410%40rani.riverdale.lan.
