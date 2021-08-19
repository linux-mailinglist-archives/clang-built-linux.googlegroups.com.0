Return-Path: <clang-built-linux+bncBDYZRFP3QIJBBX6N7GEAMGQEJPINONQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 788303F1B62
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 16:12:49 +0200 (CEST)
Received: by mail-pg1-x53f.google.com with SMTP id u3-20020a6323430000b029023ba96595fdsf3516716pgm.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 07:12:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629382368; cv=pass;
        d=google.com; s=arc-20160816;
        b=nROQeMCxou6HdWFme1C6OvYPxlg+qNSPPdXUztzk07NU7Sm51fJevu26YAZFadgIVN
         OxTMQCVf7n+ka4lNoEn4tt784HsOI/SycBoOWofLQfH67kHZGv4pFmK7KWoi4yUqZSfZ
         RsrVY5L2SHU++r9BWB7SFe7sgtPVCrbrB5BmtG6Yjgp13hyrle9vT7GAwFE6buH8hz5C
         fy+H7A4gSXcc6kIB711eF/Av3quDn0l+9hx+f6hAh0bqkApRp8abQoySpIQH4n4YZcxE
         r1ohwgFUCzz4okPmKfGa9nPDoJVMIBsmts0Qh3mrud+9UT5irI5+4ZUTVnQwn725TjxL
         AbJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=2F//juEh0mz3i3NAZ47+yv6up6wX7C7PSTWDtmT2YZM=;
        b=nr4WLO1ustErYMtxTlSDfvUtzTLQYq8yAmwy1Zw9yNSbkJ0Y9gM4OjzR2BPpCOMJq7
         PVEVXEcDpOEDEejaRet5U3GYfcJTZ9ifOWgDWxMyAXxORbHwM/z7NcgNhKRRm9uF4KWW
         8QgNasqG6SIvTW48Qyjx+DO5FQZty8WeqQUSz0Qo+HiVAeUiwQpgoygMWRt43jd1DVW/
         ORqNL0pKkxcMb6VVYSnufUq0/GYGDo2JSRAJiFbkqMYrvLwVcDA0KnejTcMbvFoNFTjZ
         YxYFyF5WJc5ZoL/cqDLZBHoSxPuC+hhm7z+ESEW8aoSs4/hq0klMYQtsdmKUTPlNMDRt
         YUAg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of dennisszhou@gmail.com designates 209.85.222.182 as permitted sender) smtp.mailfrom=dennisszhou@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2F//juEh0mz3i3NAZ47+yv6up6wX7C7PSTWDtmT2YZM=;
        b=aw0EKJhnjfptSmF4oMmnQHPp8QI70e+FPQphUgXdt7OuEH77D0a65iNgteWcZwf+2w
         KzDu3lfMg7qmIR14mAs2GjJvGhqU1XTCqDMTHRtxCISOrASPfa3ckh9gA4RMRd8XjezF
         LhpWOU4A0cIsEA4wtIPFc74n2DCYjtpMEgx/U6WOypYGXsQLw9Tp/scjS7JKSfSIqVbu
         F8QsJTDgQGGCDV0k7huwHjuS1nC40NRepQP9hjDxbDPrUXW69cd59MWzV/AvpsAdZG2U
         UpytZJ+FZaTKIdb3Vka7Uoyl5rwothb18eJTnfymooCXirZF8YfDOO+DWZkBYexw116k
         69sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2F//juEh0mz3i3NAZ47+yv6up6wX7C7PSTWDtmT2YZM=;
        b=RrNhN2Dd4/G186FSEH9LeA/TU008VO6oRPuppJYthRiNL8VFyA0pnwds3ABb7mO6lq
         NwbqOac9c4TB2gKGxRlrNMe/3DMH3ri3EH9PtpiL48DblgeEJZJsBU3I1ihYLuCSt7hT
         kF3rhU5PQhvY+C1rvZECT2UPpsZ/62qZd3cp2B7XvIiFjcfmiWhxFegx9mcxoS2gPHe9
         z7tbbQnxa+z8EzB1sQaSaqxZHlTHJ9M1GRLVRakfJPiRZQuY9MDGT2Y61xSqVnL3lPBg
         Rna5DOVq0z3T0z9KlJRD99A5IA4AEii/Zd+ZiXCtsHHXJCntYg9vt7r6a6L6tj3C6oqF
         x74g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533zbirrIxwRNTRv7sYxLHqbwUWhxnfcSRzugpxSDR2PQ7t6H8tz
	s9jnuG0dae7JO0rnEaeu6wM=
X-Google-Smtp-Source: ABdhPJze9Y24rBR4z8V7nxqpjakwnR87Y0LozMF56Z0ue+Y+SNnLEN8R0X1S56ZdBHFOcqgSkv25kQ==
X-Received: by 2002:a17:90a:a581:: with SMTP id b1mr12158569pjq.146.1629382367916;
        Thu, 19 Aug 2021 07:12:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:149:: with SMTP id z9ls3082112pje.2.gmail; Thu, 19
 Aug 2021 07:12:47 -0700 (PDT)
X-Received: by 2002:a17:90a:ad06:: with SMTP id r6mr14976098pjq.25.1629382367287;
        Thu, 19 Aug 2021 07:12:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629382367; cv=none;
        d=google.com; s=arc-20160816;
        b=pzCz4auVpDKgQhcoEpKZI4XIMX4E1A+qarOfPhwONt6OTaRSnaGq6vtkUgBL+vydr9
         8DbIK3Q6z7pm1c8Gg3Pe1hy1XKRptUxR6EcxtlYdmvHmD3zOAoOY2eKgmjOKsIpEnP+d
         sYPhnz5fThA1o9o8b14kCzIY99weKMlNYwLilknfSJIsyEVhoug688uMA78ve13imVDn
         UadbU2Z7GpPHaFgxnkZPE7F9vo0lD2+4xZG5KssbFn/HoWr7PmDrPi9Ai2kPfdQruG5w
         hUn39VeB7AXnE1q8CsZZAore/GNmGPyUEvoQhNxgy3r38vVEQ567UhGl3dfm44D0uE4U
         uhyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=EzeHLB2s0wcZiu9diV61Z7RrK3vSIEBc9fmeT4t3UBc=;
        b=WNoqxrnsQHC/sGlNo1sYQuQeqOdRdTNn6Z+2jnlZ6nKLZN4O0Qyc/L0conWD+xLCv1
         oQaAp5vIa6kUJqrprwvD8OoLer0TrajHxERVp/6jZIV853znzpqlCThLsDIHo+em8gB1
         ZNDPKKspu0qkdk99tXOj3rRNgqgDVLE8mW0r5C3LQdHJi4dioY/xSoXBdClDrd0ngQVW
         Bkb/vwPvTUe88IfAB2LE+NINb2vf/jKmq1dH/gSw+Eny3oiRNrYgrbVY8fCOGI+uj3mY
         FjLslFOCeg7P/3rhq/Uc0uZDilZhWTk6nzsmk07O/3NR09PcvRacq8Xz5zPM/mhtqkK+
         AVxQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dennisszhou@gmail.com designates 209.85.222.182 as permitted sender) smtp.mailfrom=dennisszhou@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com. [209.85.222.182])
        by gmr-mx.google.com with ESMTPS id b15si208979pfl.6.2021.08.19.07.12.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Aug 2021 07:12:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of dennisszhou@gmail.com designates 209.85.222.182 as permitted sender) client-ip=209.85.222.182;
Received: by mail-qk1-f182.google.com with SMTP id 14so7279797qkc.4
        for <clang-built-linux@googlegroups.com>; Thu, 19 Aug 2021 07:12:47 -0700 (PDT)
X-Received: by 2002:a05:620a:4008:: with SMTP id h8mr3863126qko.211.1629382366433;
        Thu, 19 Aug 2021 07:12:46 -0700 (PDT)
Received: from fedora (pool-173-68-57-129.nycmny.fios.verizon.net. [173.68.57.129])
        by smtp.gmail.com with ESMTPSA id q14sm1518663qkl.44.2021.08.19.07.12.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Aug 2021 07:12:45 -0700 (PDT)
Date: Thu, 19 Aug 2021 10:12:43 -0400
From: Dennis Zhou <dennis@kernel.org>
To: Kees Cook <keescook@chromium.org>,
	Andrew Morton <akpm@linux-foundation.org>
Cc: Dennis Zhou <dennis@kernel.org>, linux-kernel@vger.kernel.org,
	Daniel Micay <danielmicay@gmail.com>, Tejun Heo <tj@kernel.org>,
	Christoph Lameter <cl@linux.com>, linux-mm@kvack.org,
	Joe Perches <joe@perches.com>, Miguel Ojeda <ojeda@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Andy Whitcroft <apw@canonical.com>,
	Dwaipayan Ray <dwaipayanray1@gmail.com>,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>,
	Pekka Enberg <penberg@kernel.org>,
	David Rientjes <rientjes@google.com>,
	Joonsoo Kim <iamjoonsoo.kim@lge.com>,
	Vlastimil Babka <vbabka@suse.cz>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	clang-built-linux@googlegroups.com, linux-kbuild@vger.kernel.org,
	linux-hardening@vger.kernel.org
Subject: Re: [PATCH v2 6/7] percpu: Add __alloc_size attributes for better
 bounds checking
Message-ID: <YR5m25qD8ul5N+mc@fedora>
References: <20210818214021.2476230-1-keescook@chromium.org>
 <20210818214021.2476230-7-keescook@chromium.org>
 <YR2pE9V1P0xmBWUo@fedora>
 <202108182018.6DA03EA818@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202108182018.6DA03EA818@keescook>
X-Original-Sender: dennis@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of dennisszhou@gmail.com designates 209.85.222.182 as
 permitted sender) smtp.mailfrom=dennisszhou@gmail.com;       dmarc=fail
 (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Wed, Aug 18, 2021 at 08:36:50PM -0700, Kees Cook wrote:
> On Wed, Aug 18, 2021 at 08:42:59PM -0400, Dennis Zhou wrote:
> > On Wed, Aug 18, 2021 at 02:40:20PM -0700, Kees Cook wrote:
> > > As already done in GrapheneOS, add the __alloc_size attribute for
> > > appropriate percpu allocator interfaces, to provide additional hinting
> > > for better bounds checking, assisting CONFIG_FORTIFY_SOURCE and other
> > > compiler optimizations.
> > 
> > Can you elaborate a little bit for me how this works for percpu? In any
> > case that's not uniprocessor, any modification is done through address
> > accessors and not on the returned percpu pointer. Is the metadata kept
> > by gcc/clang able to transpire the percpu pointer accessors?
> 
> That's an excellent point. :P I haven't tested it through the accessors,
> but I guess it's possible that this is only useful for UP, and even
> then, only where the access is very close to the "allocation", maybe
> like:
> 

I see that this is already pulled by Andrew, but I think it would be
good to modify the commit log to add a short bit about this limitation.
Otherwise, the commit reads as if it's doing way more than it is.

Thanks,
Dennis

> char __percpu *test_buf;
> 
> 	char *buf;
> 	test_var = __alloc_percpu(16, __alignof__(char));
> 	buf = per_cpu_ptr(test_buf, get_cpu());
> 	...
> 	buf[20] = '!';
> 
> -Kees
> 
> > 
> > Thanks,
> > Dennis
> > 
> > > 
> > > Co-developed-by: Daniel Micay <danielmicay@gmail.com>
> > > Signed-off-by: Daniel Micay <danielmicay@gmail.com>
> > > Cc: Dennis Zhou <dennis@kernel.org>
> > > Cc: Tejun Heo <tj@kernel.org>
> > > Cc: Christoph Lameter <cl@linux.com>
> > > Cc: linux-mm@kvack.org
> > > Signed-off-by: Kees Cook <keescook@chromium.org>
> > > ---
> > >  include/linux/percpu.h | 3 +++
> > >  1 file changed, 3 insertions(+)
> > > 
> > > diff --git a/include/linux/percpu.h b/include/linux/percpu.h
> > > index 5e76af742c80..119f41815b32 100644
> > > --- a/include/linux/percpu.h
> > > +++ b/include/linux/percpu.h
> > > @@ -123,6 +123,7 @@ extern int __init pcpu_page_first_chunk(size_t reserved_size,
> > >  				pcpu_fc_populate_pte_fn_t populate_pte_fn);
> > >  #endif
> > >  
> > > +__alloc_size(1)
> > >  extern void __percpu *__alloc_reserved_percpu(size_t size, size_t align);
> > >  extern bool __is_kernel_percpu_address(unsigned long addr, unsigned long *can_addr);
> > >  extern bool is_kernel_percpu_address(unsigned long addr);
> > > @@ -131,7 +132,9 @@ extern bool is_kernel_percpu_address(unsigned long addr);
> > >  extern void __init setup_per_cpu_areas(void);
> > >  #endif
> > >  
> > > +__alloc_size(1)
> > >  extern void __percpu *__alloc_percpu_gfp(size_t size, size_t align, gfp_t gfp);
> > > +__alloc_size(1)
> > >  extern void __percpu *__alloc_percpu(size_t size, size_t align);
> > >  extern void free_percpu(void __percpu *__pdata);
> > >  extern phys_addr_t per_cpu_ptr_to_phys(void *addr);
> > > -- 
> > > 2.30.2
> > > 
> 
> -- 
> Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YR5m25qD8ul5N%2Bmc%40fedora.
