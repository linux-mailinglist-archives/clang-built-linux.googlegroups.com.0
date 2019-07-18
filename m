Return-Path: <clang-built-linux+bncBDYJPJO25UGBBW7LYPUQKGQES5DGR4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73a.google.com (mail-qk1-x73a.google.com [IPv6:2607:f8b0:4864:20::73a])
	by mail.lfdr.de (Postfix) with ESMTPS id BD31A6D6DD
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jul 2019 00:42:36 +0200 (CEST)
Received: by mail-qk1-x73a.google.com with SMTP id k13sf24625296qkj.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jul 2019 15:42:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563489755; cv=pass;
        d=google.com; s=arc-20160816;
        b=wacM2sEimCH/aYoKJ8DYgvebkdmrfpzHzpIK/+M0A8HJ5i49X1a1uOwM+XnZp7vUyn
         b7lyJ001n6jjc/3NgxnNW7Ft3NEnZmUNBkS3YHVRPXay8csX81zjQiYoF6MAr8cNc47E
         8K1c6Le9x8IDOQF4rwu3ikFvwH2wmWTGLXZnwIXFK2Toyqsz0ZWtEEmxHr3rLmfirT9D
         6M5KyeRW3eOKjVuVRJPf5zy1/PW27mx0cAAGpTmp71QaJ/y8y19QAPIOiiJ/NUI6rMHS
         rcxPkdWGRUrJcdimikxnX+gn3er74DSYjnofHqXkFFIMBRxoXu2+ib6UKuVmTH1YZLMY
         12CA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=227JijVDr170jNIZUHaV9EFD3a79/DZpCpSoHaCb+pc=;
        b=l5agLAfJeBXFjWGG7Ohs7z0R1nUgGFtu2ZtJuvVcBwFfd8GyTXlaxuuvHa+i33jD2b
         7smBIE07hYqJIyWS+s1Jq47L55g4/5e2A9Bp1D1C6bs8WZDp5IcojzqlVmNdBBqvgwFZ
         sS1Vo8YTbtwcFaegIUUnrCkFQ918nAz23DBvEtYgqgmMfmh6AgBvNxCUNKOZP3o/qchw
         QvTLIAB7gWyjJXNgcee3eqtFRkjaLPwoRzBVHlDSv0JHi05cKv8HIbafulB4DWwklemD
         3GECyq/1u5FzVayz0vHEgpGtP8O1GfbP8VUJmYwl2XXOK9dTsor5Gm4+DUAVCLnnWntj
         D+Cg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cwxI83h4;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=227JijVDr170jNIZUHaV9EFD3a79/DZpCpSoHaCb+pc=;
        b=XnaMZDaOBRsjRZqaC/3sHXnZLMYbGEeGWBaWBr7lOIL0WEh6zK83HlQPb7UKdSSnzU
         Ll7TMtJ7UhbAp3UsrZDvJEC6Jk/TMc0jBwj1m28zq+Gv4FR8gBKwA0O1LNNIlPBw8SI8
         lQP09iO48zdVIcC+zsa1mamkILoZ2NdNM5+qpBNOrqR25DMeE+ACUJXZOkIns146qpCQ
         o62RHnC6ePY+tVRnX9+KHTygzYn20UDERFkpTZCPLpASarHkn7GQR1lw+2KBUbBhY6BI
         C/5W7ERMyAIQssIykYcXmCiVPkHshwSVNEkfAsLVbovK05nIWCZG1CXA4KhxT+7B4D9D
         b68g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=227JijVDr170jNIZUHaV9EFD3a79/DZpCpSoHaCb+pc=;
        b=YJN3z200S0iUkcFIGD56+d3L/nwe5ZuIrCpFWw82VBmLW04K8skS1Udtblra2x+AdZ
         B4w2K4HhdrD1s97OLU5sGk63vwLOspWWuWKspbdpyMg+vzzNrA4LMj30ebtwU4V0DhIu
         pd1ticHuLMMFZfZgdpnhfialOp6Q8mvpdQcPU8wiB7YNhMeIuJvqS/yPgm4Nd5O69jsQ
         VWxciJEbJXiLu4eOAJnjlrif8GnP1EOOmdi24j5zgClMUKyujgWuTZWLfNQ6TV7dcGWM
         yhhGHfvXpXLmlNcUsv199S/Cpo8vMBAvsspIEQCj22Fcvnx+Ed5a4qvaJytCFkyXovzI
         HF1g==
X-Gm-Message-State: APjAAAUBj3or4PyXizgfARgA2xVfor6XHY96hQ+zgjNw4cZc+ENSDQn9
	V5ri+a0E6s37oYew3rr10Lg=
X-Google-Smtp-Source: APXvYqx7Sxo/b2xaDAKPlzG/C3qx29vq6y7Ir1BuloNh0m/wvwxIRSUejvjhCeAMyeMTvgGHqGAdsA==
X-Received: by 2002:ac8:4a10:: with SMTP id x16mr34274891qtq.282.1563489755677;
        Thu, 18 Jul 2019 15:42:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:bf42:: with SMTP id p63ls9075921qkf.14.gmail; Thu, 18
 Jul 2019 15:42:35 -0700 (PDT)
X-Received: by 2002:a05:620a:12e7:: with SMTP id f7mr33273189qkl.471.1563489755492;
        Thu, 18 Jul 2019 15:42:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563489755; cv=none;
        d=google.com; s=arc-20160816;
        b=a6ZMIsas49XKEdjagIoyr9LGoQuzSMyzVldFUP47tIRilKDQ9vPplPljINDFClV67j
         e7KugBjqrx5k1l0zrwjfuJWGa70GJJEOFtzmn7ibpCyeQgGPeXIYOd+EgKsWqIH5y9lT
         ShWG2g0dDH4pjWealMLHr9tFePvzxwQIEfvoxFuVmNDr30YamFXNv4wC9oaOwduiYj+I
         7HnBSOBCa4py5qj/GhAl+capclnO7KjFhw8Smw7k//ZLNC06qiXVU9xv3K0+v1SuwBzw
         muNc8+o7o+KWJq3Noq0FGd9bU0WSivR9egNKRWeiXSQJ9Re1xaJfMKwpQBE+9q2OV4Oz
         ylXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=00kYiEcn7qPCTEzf4dTojM9k+H1/GBBAqJzqVj6grzg=;
        b=i09rs7z/yk4A2AWaIWPNRsTOGs9yZ0HoWdW/vIN8Qa5vEjJUpd/q9j15rq8vDkaBUd
         viGqj0tvJbE8iTC7goeI8wiMAXIH0OET8/RKhxBdbsnW2gvH4CzeGCbeX2HWUokqwZNh
         KPuMvDU3cWn1J2M8aOvGd5deU/31swgMq1Pi++2a5tOFhpSWNUIfFHrN7fRpSsUa6MA1
         uPkfl3drCXbz2CPTRgzerJO1ErvGHBBLifhGtE81NPUZ0maCSuGnWw08gDH1cOspTIAd
         WIxEf2M2HVWqTDYHpArf7E/vXIuxD3zOz2nru0IcYK2Xy4gEY4zXdFHSqxt2BeclRlHc
         YVvQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cwxI83h4;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id c23si226652qkl.5.2019.07.18.15.42.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Jul 2019 15:42:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id p184so13251767pfp.7
        for <clang-built-linux@googlegroups.com>; Thu, 18 Jul 2019 15:42:35 -0700 (PDT)
X-Received: by 2002:a63:60a:: with SMTP id 10mr19387292pgg.381.1563489754090;
 Thu, 18 Jul 2019 15:42:34 -0700 (PDT)
MIME-Version: 1.0
References: <alpine.DEB.2.21.1907182223560.1785@nanos.tec.linutronix.de>
In-Reply-To: <alpine.DEB.2.21.1907182223560.1785@nanos.tec.linutronix.de>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 18 Jul 2019 15:42:23 -0700
Message-ID: <CAKwvOdkYKweg5A6jwomPUjjkRWq5=oVMVM=Wcg=ho+crOnr3Ew@mail.gmail.com>
Subject: Re: x86 - clang / objtool status
To: Thomas Gleixner <tglx@linutronix.de>
Cc: LKML <linux-kernel@vger.kernel.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, Peter Zijlstra <peterz@infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=cwxI83h4;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Thu, Jul 18, 2019 at 1:40 PM Thomas Gleixner <tglx@linutronix.de> wrote:
> after picking up Josh's objtool updates I gave clang a test ride again.

Thanks for testing and the reports; these are valuable and we
appreciate the help debugging them.

> 2) debian distro config

Is this checked into the tree, or where can I find it?

>
>  objtool warnings:
>
>   drivers/gpu/drm/amd/amdgpu/atom.o: warning: objtool: atom_op_move() falls through to next function atom_op_and()
>   drivers/infiniband/hw/hfi1/platform.o: warning: objtool: tune_serdes() falls through to next function apply_tx_lanes()
>   drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: .altinstr_replacement+0x86: redundant UACCESS disable
>   drivers/gpu/drm/radeon/evergreen_cs.o: warning: objtool: evergreen_cs_parse() falls through to next function evergreen_dma_cs_parse()

fall through warnings look new to me, but Linaro's KernelCI is
currently screaming with tons of reports of -Wfallthrough throughout
the kernel.  I assume they're related?

> 3) allmodconfig:
>
>  objtool warnings:
>
>   arch/x86/kernel/signal.o: warning: objtool: x32_setup_rt_frame()+0x255: call to memset() with UACCESS enabled
>   arch/x86/kernel/signal.o: warning: objtool: __setup_rt_frame()+0x254: call to memset() with UACCESS enabled
>   arch/x86/ia32/ia32_signal.o: warning: objtool: ia32_setup_rt_frame()+0x247: call to memset() with UACCESS enabled
>
>   mm/kasan/common.o: warning: objtool: kasan_report()+0x52: call to __stack_chk_fail() with UACCESS enabled
>   drivers/ata/sata_dwc_460ex.o: warning: objtool: sata_dwc_bmdma_start_by_tag()+0x3a0: can't find switch jump table
>
>   lib/ubsan.o: warning: objtool: __ubsan_handle_type_mismatch()+0x88: call to memset() with UACCESS enabled
>   lib/ubsan.o: warning: objtool: ubsan_type_mismatch_common()+0x610: call to __stack_chk_fail() with UACCESS enabled
>   lib/ubsan.o: warning: objtool: __ubsan_handle_type_mismatch_v1()+0x88: call to memset() with UACCESS enabled
>   drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: .altinstr_replacement+0x56: redundant UACCESS disable

Do you still have these object files laying around? Josh asked for
them in a new thread (from the previous thread), not sure if it's ok
to attach object files to emails to LKML? (html email is not allowed,
are binary attachments?)
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkYKweg5A6jwomPUjjkRWq5%3DoVMVM%3DWcg%3Dho%2BcrOnr3Ew%40mail.gmail.com.
