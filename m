Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBVND66EAMGQEAHRYNLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BA883F11D0
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 05:36:54 +0200 (CEST)
Received: by mail-qk1-x737.google.com with SMTP id o4-20020ae9f504000000b003d39d97b227sf3275780qkg.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 20:36:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629344213; cv=pass;
        d=google.com; s=arc-20160816;
        b=0mzcqpvTGCL5i3V6RM+z4ogRduawEvmJMPbAhv22Kx95Apqf/O5sdr8mOjXdSPXmpx
         V5Jnd/Uk+xDYcJlC7qqj36RTd6Lpivyc81p9H1zjapl1uFWaViug3yK4X5P4zwGt5Lqy
         iWxClJOjfLgjFNnaZ+CilKH3FKa9Xpr2h7Ov4DaltSuR6xksuLew5lMHreFvrdTSRHHD
         KkFECdq/UiLeXv4VfUnrBxdlgTpo7v+LEGj6dxTcnp2820/xBrPrPBeQhqEIvSJu4NmP
         bs8tKKH8IKXzjHEAAXoRVYuPgVzxp54uruIAU7Z4XQAyldIKDccE7pEYnzpoBJA0O9eN
         1j3w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=+RHgDALy+OJb0g1yQ+MWLLF/aOZPKIFBoPeJxL2biGg=;
        b=AoSScflhyOgGGBmp96cuwjr6kdlM2pL5InXiJKzyn2MhpTm8OnxNqKMfvkDn4O8IqZ
         WYDmLU5vmRIogZrN17bxXeQ9BvtWq4DVmre39aIYh4LYOVCwZ5tFfsNhXN9vm/4erFUF
         a7fJKfIOmjPDlowTeN7huswBuL5Kx8XqJSHMINzedXHEcXTHI4B0UY+AyPQmkYRZSbIH
         pK+ymplvhRK0p/ugtaJYCOy2cpfKgr5Kc3MQIuSkj5+ZWhWBRXqAJXT2jagSJA1ogd5i
         iEDoQj08r/C7rvlgeQ2WjKmsNeSZyK8w5ZaUSiYIflxK/bitL4kThB0SQHfTwakakA1N
         A4Nw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=bf7AXXLx;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+RHgDALy+OJb0g1yQ+MWLLF/aOZPKIFBoPeJxL2biGg=;
        b=caWRN/gPNSSwys3tTr66D4146GJ7a/lwLqyfdNkfnxFHNiPbp9PovkZ4hZM+PCYQtH
         zcwEqeTdtiPQEDoWismFJHg6JiCmfGZgrMyLI/RKCSgI1vBpUu8kR4nL2dhsCf7kPqHO
         nWhJtD2nmgmx5WK6UFvY8iiNICsUhBNRzyDgLWJA+CZcTrogpgATiY7Ux9PX9ACyoxgQ
         LFyglkP8ajv6F57bs1ihQDtfvbL4FZqaaS5hoqU/nx1X9YDvbxikeM2YDy2/FltDoHxR
         38ewOGwrmagesnuNIydU+UctTB5u1nTkoIcar8BhJzhnfz0E9vwtFWUVz401tYPe2JSZ
         aeKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+RHgDALy+OJb0g1yQ+MWLLF/aOZPKIFBoPeJxL2biGg=;
        b=LnmQBmzlc7VRBNIursc6eM2t8GfS0T3hL55xfhSKcAhsbEvFFTQwVczC5dcY3a55bZ
         FYB1kUhkEx5ogs0s5NRwA9HfhxGH/USLQqMv1LtKKeV2i0WLcYF6u3KeBSqVizZ3Ye0A
         qysxspZlTMOSQofivdx1Z7rulRzfmls2pYPleOAeGmxJ3hefx8LAYO7iJEnTWjBLBLh+
         G/QLedDcUFG9OvAxlTlvYXWwf1yQ4afhnjIX8HiTFVOxwiVSIc+dzloNRIrwR0058KBk
         UUuBaXaKR8vXFXbPxH4WrJanjSHa2SxvKsmmZw/cgnAPrqz7ZF6znOh7KGKFf+JGD9yX
         v79g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533nrPxfg++YINyL3w3olfFYXo+jzIKwKWqRoMIty+Pz7TITQcga
	ayUDZFzTbLhsPHYnPBIRAtY=
X-Google-Smtp-Source: ABdhPJzh9lBxN7wo5aV3501vulJlplGf11gKg0Iv6AyDbtE/j9sj419Io/tkGamVTzs7Xdc2lg8oyg==
X-Received: by 2002:ad4:4f0f:: with SMTP id fb15mr12695023qvb.22.1629344213344;
        Wed, 18 Aug 2021 20:36:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:298b:: with SMTP id r11ls872616qkp.5.gmail; Wed, 18
 Aug 2021 20:36:53 -0700 (PDT)
X-Received: by 2002:a37:4197:: with SMTP id o145mr1670317qka.340.1629344212943;
        Wed, 18 Aug 2021 20:36:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629344212; cv=none;
        d=google.com; s=arc-20160816;
        b=cGV+vmhQwrotRqd4EU4jbJarPV37hzL20Y5dqMWtaD1Ttl69i6w/n3bIVAtBfD/+DO
         0C67kqYWCuqiiaeoIHxPNxWR4xBgaUpRK/D+ZEpnHuq2qHX7UOtNxe7W4IEQPiUmJJ+O
         4K4yY0OzG9SHyiZfb4fxlg+pJTOxN77fEvg6u60C80Ff7h1H3oQrOxPnb/GHciT3pr0U
         MisXIZ4CERKb0JeQBh2YrouUjvlpeve2HW03eMKqUbz0auyqYz2sCSgngzWQihSf1i0T
         Ty4m7PMycEsiNnk5FAMbCZs6YDNmUulVg8Ts5pkmgWgvcCrF246g+liaHA1dUgSumLdB
         nYJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=OWG8gSW9FTH/AgnNjiR6jP10S4rh/ZtmSM7TNejSBro=;
        b=WxJlA+89fk1egovc3+AoClAtzCAsuUkAM9oXyZVBhYG3KvPnmQcGevdzsgtZKsPDbD
         B7QiSdfHlE8kpjH5+45877dZ3vOotAvD+3XLzVyyhNgTAjQodntIOlmkYB9ANP50fHKO
         QuYNXw/uST+q4eyRi8YFGFUW/XT/U+kgFpRoZzYwDfS38oxNYmsr+y7+l62CUTrJLI32
         wH0cpkX8fT4EM0S/rDwDVWM45H5AjY3M4AD06hAI4uBC4MwpM9JAJ6ZWZWsiCVHet40h
         E4MP9GN052Qz9Nb1KkcB/S4OI5x2RiDeLDvQuO7FnGrHsLtptgdAlALSN4UoRX9Baj6M
         XUCg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=bf7AXXLx;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com. [2607:f8b0:4864:20::631])
        by gmr-mx.google.com with ESMTPS id f13si110627qko.2.2021.08.18.20.36.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Aug 2021 20:36:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::631 as permitted sender) client-ip=2607:f8b0:4864:20::631;
Received: by mail-pl1-x631.google.com with SMTP id f3so3136488plg.3
        for <clang-built-linux@googlegroups.com>; Wed, 18 Aug 2021 20:36:52 -0700 (PDT)
X-Received: by 2002:a17:902:b593:b0:12d:7aa5:de2d with SMTP id a19-20020a170902b59300b0012d7aa5de2dmr10093375pls.31.1629344212131;
        Wed, 18 Aug 2021 20:36:52 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id y12sm1476515pgl.65.2021.08.18.20.36.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Aug 2021 20:36:51 -0700 (PDT)
Date: Wed, 18 Aug 2021 20:36:50 -0700
From: Kees Cook <keescook@chromium.org>
To: Dennis Zhou <dennis@kernel.org>
Cc: linux-kernel@vger.kernel.org, Daniel Micay <danielmicay@gmail.com>,
	Tejun Heo <tj@kernel.org>, Christoph Lameter <cl@linux.com>,
	linux-mm@kvack.org, Joe Perches <joe@perches.com>,
	Miguel Ojeda <ojeda@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Andy Whitcroft <apw@canonical.com>,
	Dwaipayan Ray <dwaipayanray1@gmail.com>,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>,
	Pekka Enberg <penberg@kernel.org>,
	David Rientjes <rientjes@google.com>,
	Joonsoo Kim <iamjoonsoo.kim@lge.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Vlastimil Babka <vbabka@suse.cz>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	clang-built-linux@googlegroups.com, linux-kbuild@vger.kernel.org,
	linux-hardening@vger.kernel.org
Subject: Re: [PATCH v2 6/7] percpu: Add __alloc_size attributes for better
 bounds checking
Message-ID: <202108182018.6DA03EA818@keescook>
References: <20210818214021.2476230-1-keescook@chromium.org>
 <20210818214021.2476230-7-keescook@chromium.org>
 <YR2pE9V1P0xmBWUo@fedora>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YR2pE9V1P0xmBWUo@fedora>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=bf7AXXLx;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::631
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

On Wed, Aug 18, 2021 at 08:42:59PM -0400, Dennis Zhou wrote:
> On Wed, Aug 18, 2021 at 02:40:20PM -0700, Kees Cook wrote:
> > As already done in GrapheneOS, add the __alloc_size attribute for
> > appropriate percpu allocator interfaces, to provide additional hinting
> > for better bounds checking, assisting CONFIG_FORTIFY_SOURCE and other
> > compiler optimizations.
> 
> Can you elaborate a little bit for me how this works for percpu? In any
> case that's not uniprocessor, any modification is done through address
> accessors and not on the returned percpu pointer. Is the metadata kept
> by gcc/clang able to transpire the percpu pointer accessors?

That's an excellent point. :P I haven't tested it through the accessors,
but I guess it's possible that this is only useful for UP, and even
then, only where the access is very close to the "allocation", maybe
like:

char __percpu *test_buf;

	char *buf;
	test_var = __alloc_percpu(16, __alignof__(char));
	buf = per_cpu_ptr(test_buf, get_cpu());
	...
	buf[20] = '!';

-Kees

> 
> Thanks,
> Dennis
> 
> > 
> > Co-developed-by: Daniel Micay <danielmicay@gmail.com>
> > Signed-off-by: Daniel Micay <danielmicay@gmail.com>
> > Cc: Dennis Zhou <dennis@kernel.org>
> > Cc: Tejun Heo <tj@kernel.org>
> > Cc: Christoph Lameter <cl@linux.com>
> > Cc: linux-mm@kvack.org
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> > ---
> >  include/linux/percpu.h | 3 +++
> >  1 file changed, 3 insertions(+)
> > 
> > diff --git a/include/linux/percpu.h b/include/linux/percpu.h
> > index 5e76af742c80..119f41815b32 100644
> > --- a/include/linux/percpu.h
> > +++ b/include/linux/percpu.h
> > @@ -123,6 +123,7 @@ extern int __init pcpu_page_first_chunk(size_t reserved_size,
> >  				pcpu_fc_populate_pte_fn_t populate_pte_fn);
> >  #endif
> >  
> > +__alloc_size(1)
> >  extern void __percpu *__alloc_reserved_percpu(size_t size, size_t align);
> >  extern bool __is_kernel_percpu_address(unsigned long addr, unsigned long *can_addr);
> >  extern bool is_kernel_percpu_address(unsigned long addr);
> > @@ -131,7 +132,9 @@ extern bool is_kernel_percpu_address(unsigned long addr);
> >  extern void __init setup_per_cpu_areas(void);
> >  #endif
> >  
> > +__alloc_size(1)
> >  extern void __percpu *__alloc_percpu_gfp(size_t size, size_t align, gfp_t gfp);
> > +__alloc_size(1)
> >  extern void __percpu *__alloc_percpu(size_t size, size_t align);
> >  extern void free_percpu(void __percpu *__pdata);
> >  extern phys_addr_t per_cpu_ptr_to_phys(void *addr);
> > -- 
> > 2.30.2
> > 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108182018.6DA03EA818%40keescook.
