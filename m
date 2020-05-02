Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBHFNW32QKGQEA5TQ2CQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 857231C26A7
	for <lists+clang-built-linux@lfdr.de>; Sat,  2 May 2020 17:49:50 +0200 (CEST)
Received: by mail-pf1-x43d.google.com with SMTP id c190sf5774302pfc.10
        for <lists+clang-built-linux@lfdr.de>; Sat, 02 May 2020 08:49:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588434589; cv=pass;
        d=google.com; s=arc-20160816;
        b=Pwcy9ytPyyAtlW1SJOTEaiG6iTGkaibvTecMdKbX0sDeqfMvLFi65IflrocOh0nuLU
         oE0maR1OtCVRh4ebt7dISskF3lM1CHJPYYidxhzwalD2NCDFMmUxCUeXqokaBZLfHt/w
         176IJM21ZI8lWHKT8eDd8acG5Wb5Cm/SU0IrclUMoWnXHN/okbxK6syzA/Mmqdn+ShlR
         NqQXz/jnFxlmh+lW9+rqCclmYJHY3gm/+Og/Tyvxowe2qdNbChm1q7Z4F4mf9jMLUwaF
         3vw9RkF/vDnuwQHq6zv+hO0igTXfPJmLawBEZrC6PazHRpP5O/1I/rgu+83vOm/CNfdE
         5mDg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=HbCSjeeyn5Ad3Z1RJSgUPUxGqkfADeVRx1kQA2b3M34=;
        b=XCk49RGfM7mbbAWUGJQNHNh3D+FO8Q0ThsdjQ8LJYfDmcWqD3QpvEA54QVzPcEx09a
         35lRxdeTP31KVtt4rQg07qGKOTlc8XLQ7D1qqAqWv2kY63A31EQzSGVKMfOiK/StWPMr
         OfUExnOsgVydLno/P/QXxRqwALOptFVLrKLeQ2dksHWDETIMiZT8vVDjjuDN1j9JvUWk
         svhrGXddfdfrWE7189m2kil7b7HYofYk4WwH5iIfABT+qzj8Vb7CwJsvHECkOWsQaj2z
         MckAuWJ7HyU2PrrY3u0ivkAPjRGzVoR0lInmZVvmiaTz5yzDYfZy6f/3iXXOSHVbZxOm
         OVzA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=I+skLHrw;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HbCSjeeyn5Ad3Z1RJSgUPUxGqkfADeVRx1kQA2b3M34=;
        b=JYcU/Wy/OKIVn3lR48PKHDeoO+lCZj1WjVzNxWhf0OYYoyh9BKT2tdKC/MsXyqCWvx
         dCODjxr6X3YPTH+na8Np72wXkOFrg9fYKZROWxqVEnHBzvIsi87Ta/mdDddAdzG2xSzP
         KfZIZiKX6rXjM8w0KK4wVco7ZDL1igeRcIxy08sfZlbrPBoy8rkA4vfctytNBvhjiQfV
         0nKNVvyv/ZCdMq+mZP2Leg9IG4K3Kre2xbcYMyK0DI6RSNL/cd47qdpPPes+h4PtECVd
         XNZrrx6hcK23OqfIHYhX+tYNGG123ruG6M4g+YKVamYU/gPwcBZTXyCpeTQLQqy2rwlU
         CtbA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HbCSjeeyn5Ad3Z1RJSgUPUxGqkfADeVRx1kQA2b3M34=;
        b=qLsM1QpndeMkr91EJ436ng87b0w8YQRb8ZLGHMcdqLMWd+rHc9Asb7lwYfNi7elm5Q
         dje1dD5Qld6zJ/jJTOg2TxrfhLPBHEZqLjRG6mAnwaM82GTVmFV4H2IAC7tAOyIwINgv
         S3PDOlAdpPcT3gQmQds1i36heM/d4Xgix3TMu4e3yUWVRtnXi4go2mCFQZ6Sxe2kVvG7
         OLd7Z/vgAT+BlLZsOPiHX8BkZcJ81mPwpza7wIToZ0SLI0j0xi6wM9+tTVx3IECaxTNF
         +3SAS/2uP5SaPnn2fNckZkbjy3DDDXofZrj+8IIOUZl1c5ZzVenasNvAUxQYSGueyMBh
         CGaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=HbCSjeeyn5Ad3Z1RJSgUPUxGqkfADeVRx1kQA2b3M34=;
        b=TlcYj9SvppNz81sxbhckg4gR06GERFbSScfBETAKDt2zjR/uF8CIxbw+LnOjisVrHG
         ZmkVBkxzS02552e8fmh2+dpvISCPYFFDg9VKJVzv6p4ifzVtU1dgHiuHDsFvWhw4RUdZ
         ass4Vos7o+Hypkc1UbSzDSRf9GJ7JXaazBDX9pINR84xReUL8ERz2RBupZCXPk69/vpR
         UDz7pttEhlXafPdov2cARAGhycY/coCr/qBXdxdNgPHqJE8O8C/hKB+Dk5UFuRttTsAZ
         JJ3X2esPt0k/hBUOjoE8yIvblD9m2GEz425B7SQrM3Bhqkh9Y8szL4I59zeErXxnAl2f
         mxMw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuY+F5rI65ZB2r5Md6DmQYr/0MsRadLJNbVQF/hTviNM6qeftCRy
	8f4UQl80XtQGnpiF7FEmS9E=
X-Google-Smtp-Source: APiQypKUvSr1TSwKeINTlYR21o/IxsKV3um6MzsHm25DXgyhHzKec8pgavoh9BAAB5B3BIykAHSh9g==
X-Received: by 2002:a17:902:a511:: with SMTP id s17mr9943692plq.33.1588434588928;
        Sat, 02 May 2020 08:49:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7790:: with SMTP id s138ls10431525pfc.11.gmail; Sat, 02
 May 2020 08:49:48 -0700 (PDT)
X-Received: by 2002:a65:5509:: with SMTP id f9mr9432938pgr.70.1588434588553;
        Sat, 02 May 2020 08:49:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588434588; cv=none;
        d=google.com; s=arc-20160816;
        b=wu5cXdgWFef7z+Ynz6Wrs6tnCEG8FK5J1yh/wzNoqmS49FoGeR7Kan8UOls9kF2GEm
         RDzPgnRmIoER/J4fOA0OSrAEwULTgEFSrXIGHKSjcxwjLG5ocA904kjLqU45HF4Aczqn
         isKtwFogy9k1KwLinpdaySwrttJke+/S+mgyQalyXABRNCC50tUB12o2o3sYH39vXVq3
         8wHP8XHDmkZzpblr1p6de1zaYm4pssrdE8aqcctoKeyYPkh5AgnTuRejXYl7NmZ90B6g
         vsJtzuxm1+06NZe0pZHaA/eeuCpBLCirsoy0xtG9GaFmwbth9rGEhmep/NDP+4klLJQT
         +h1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=YFLGdaK8ZF69V+GYnZxD8CHXgCZJmtXf2cpemCzs92s=;
        b=DqstR8ZNxCtO6Vuf4WkoUeBt2WwhRiEt7UbR0nYD0A/dno0oxYPeS5PuEZk0lVnj+8
         /mrUHAOfNgzU7hf8NW+aYgLA9EbxDPTseMK2sCnuhb8eWfrdNMzRw9iqmNnCy5zqnNJy
         4iRT7RqQdK2MqIjVSSjwBQ9VHHefdDZZro0CEhg+TbGBP/OSxMDMldrfZXd019WkQg5F
         2YGdedOpKKjQ8jMeK2xYIa8QzQqP4NyRngl9SpgkdkvV9KnIE7ub8QVDYUJUF4sj3Zqh
         NPfVPUahw5hHm7tT3Z8+rjSuSsW3eu0X+i+NvU0/znElyBHOYdzYgeoSF1+OgIsmF0C5
         UZAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=I+skLHrw;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id q5si61524pgl.1.2020.05.02.08.49.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 02 May 2020 08:49:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Received: by mail-ot1-x342.google.com with SMTP id g14so5031451otg.10
        for <clang-built-linux@googlegroups.com>; Sat, 02 May 2020 08:49:48 -0700 (PDT)
X-Received: by 2002:a9d:2c1:: with SMTP id 59mr8028014otl.321.1588434587846;
        Sat, 02 May 2020 08:49:47 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id v207sm850483oie.3.2020.05.02.08.49.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 May 2020 08:49:47 -0700 (PDT)
Date: Sat, 2 May 2020 08:49:45 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: "Maciej W. Rozycki" <macro@linux-mips.org>
Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Masahiro Yamada <masahiroy@kernel.org>, linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	linux-kbuild@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Fangrui Song <maskray@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Dmitry Golovin <dima@golovin.in>,
	Sedat Dilek <sedat.dilek@gmail.com>
Subject: Re: [PATCH v4 4/5] MIPS: VDSO: Use $(LD) instead of $(CC) to link
 VDSO
Message-ID: <20200502154945.GA3361319@ubuntu-s3-xlarge-x86>
References: <20200423171807.29713-1-natechancellor@gmail.com>
 <20200428221419.2530697-1-natechancellor@gmail.com>
 <20200428221419.2530697-5-natechancellor@gmail.com>
 <alpine.LFD.2.21.2005021435100.3602499@eddie.linux-mips.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <alpine.LFD.2.21.2005021435100.3602499@eddie.linux-mips.org>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=I+skLHrw;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Sat, May 02, 2020 at 02:50:34PM +0100, Maciej W. Rozycki wrote:
> On Tue, 28 Apr 2020, Nathan Chancellor wrote:
> 
> > Before this patch, LD=ld.lld did nothing:
> > 
> > $ llvm-readelf -p.comment arch/mips/vdso/vdso.so.dbg | sed 's/(.*//'
> > String dump of section '.comment':
> > [     0] ClangBuiltLinux clang version 11.0.0
> 
>  What does it mean "did nothing", is `arch/mips/vdso/vdso.so.dbg.raw' not 
> produced?  Where does `arch/mips/vdso/vdso.so.dbg' come from then?
> 
>   Maciej

A better wording might be "Before this patch, specifying a linker like
ld.lld via the LD variable was not respected by the MIPS VDSO". I should
also probably expand on the second paragraph, maybe something like:

When clang is built in a default configuration, it first attempts to use
the target triple's default linker then the system's default linker,
which is almost always ld.bfd. To use ld.lld, '-fuse-ld=lld' must be
passed to clang. However, we do not use -fuse-ld=lld because it can be
brittle and we have support for invoking $(LD) directly because we have
separate compilation and link steps. See commit fe00e50b2db8c ("ARM:
8858/1: vdso: use $(LD) instead of $(CC) to link VDSO") and
commit 691efbedc60d2 ("arm64: vdso: use $(LD) instead of $(CC) to link
VDSO") for examples of doing this in the VDSO.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200502154945.GA3361319%40ubuntu-s3-xlarge-x86.
