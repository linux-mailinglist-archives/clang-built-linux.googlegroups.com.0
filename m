Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBE42WKCAMGQEFW7J6VA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id B7A1A3703E6
	for <lists+clang-built-linux@lfdr.de>; Sat,  1 May 2021 01:04:52 +0200 (CEST)
Received: by mail-ot1-x338.google.com with SMTP id h26-20020a9d799a0000b02902a50a736b2dsf11305158otm.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Apr 2021 16:04:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619823891; cv=pass;
        d=google.com; s=arc-20160816;
        b=n3cGuln8KDxqAa/Z9L38jwC3Ott8kZGSg7vG5bz1kGTimdRBqIYtEYuL1bopngfADB
         Lz/c6JdkMRfKWI7apdJ9qYFSxWjapp+HrxI40REojPSd1cAGslqc+nYZVEHUT/MEHJA4
         x1Z3lL/ADTa5S6E+Hu9SmverryxO0FfYTENoAKgke4KMan5VSYFO7TrQQrwXw5UTbWGg
         AWpBqf50RM3mQcsAH/oE4YNs+BMYzKZsXiBzPpAvo4MbDOymIm6o4/qsQScoS5lWG3sh
         TxNG06PQgs+DqT8hqZ43qYB1G7UIiLTPhN+UjOTpnBhGu3hWmp6KGFl58a0oVogDhNPU
         VIOg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=I4v5J7jivRF/P7H4Qm0/h4GShT0rhw4XYtJMb0CQPJE=;
        b=qnOcOx20AUOiJHwUKCjXFRAjaF2v9x3W4Q1veNgs2DsCXDggCClLRjYrwtCEutZK7+
         Xeq8LCsGr4uzrJAGtA5i00q187kzTQXVAEwnhv/DbdBZppCAYY/M9DSmDc9Ut/i3A5ap
         uSw8aRFJb+3zgInLLJums3LRZlwW3yg1eQGmOwpWTgJ/777XZRWwV2pkT8p4vhU6wJpL
         SxPcH6qQZJQ7kSfZ+9VTe6/5qMIXoBdGa1uVQAPgPoVZOaavdGbULPJApUV9WGl/f/UH
         IkNVUUaFEj/qab7YVHJwMAaiZs6DlOctHg0Xk/imvUervSGChKHbvzDkU7+in4xZWIb4
         AxIg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=BUaCL8hO;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::436 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=I4v5J7jivRF/P7H4Qm0/h4GShT0rhw4XYtJMb0CQPJE=;
        b=btS/J8jHEqZ0QYBP3N5wX3SurRea8IXS0AkvcGC9hUz/AfbzFvefWsnZnRyxC1gqQr
         P3JSX30ARaBdZPt4AjZ/+ibgoTyxOrBQ9VuXCER2JuAmA1d9FAxP98n9tcqzLVTURMej
         9b0WAer4GQii3dg3rX+oSmq7ETyracDKnc7vuzFZwKa5SXpJr+ejvOmQG0stZyvT/VBz
         rqc4U4wvgDJd3h6OzyOFySWOyrHt2F9DRZd8xNZKGs8m8tMmOPRLqoFxh4zzDLDaNCyB
         +gRNcM3BvlJ1dfZQv1jeF8NrDwkB6hSqjJejopiQ/6Z0aSYlH6vio52pkqlaNKRiYlg5
         7Q7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=I4v5J7jivRF/P7H4Qm0/h4GShT0rhw4XYtJMb0CQPJE=;
        b=sblSdIS90ltEx4Z2hC4DpohvlOTo93rlZm5rsawwgiWNKAeEF5dtTsFL/pYKHjbEC3
         NlAnqJlmv0HGvdMGyUT6DXnIiqfjZ5VDsQ7AukfwRnlQOKTEH/Q396ZsxS0aoqT0Ngu9
         WT9rsIEaMFgotRFgetDElV5lBupVDroMwaA6uFzVShSMeGUENGU2o5eoH7CormhLTByW
         EFOV1RHxMjZliAOj7Z3qmrbKrvqEJ8A9ZGuh9/wDaoqosVvRM37/YfNLBCZWfHvvBaDU
         9z7FkIn7hBd1A4YNmJup/8g37yhol+j7dgyo0ST2K5AP4iCPL+g3T1GuazlIAbV59Szl
         cADw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533vuTKspNGhM55Fhb0y/Wgbn/vK+OcZPgeBl1RL9lt9Aad4Id8u
	id6vlvG4PEpjhUGgKzg39bg=
X-Google-Smtp-Source: ABdhPJwQ1uwhIqJnM/ER9u5G7IIm/nBIUFlN3TF6HAkGFjsM1HwwA9E9MWTixMDxv0mbPh/1jzD6rw==
X-Received: by 2002:aca:355:: with SMTP id 82mr10438413oid.155.1619823891754;
        Fri, 30 Apr 2021 16:04:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:1416:: with SMTP id w22ls2252451oiv.3.gmail; Fri,
 30 Apr 2021 16:04:51 -0700 (PDT)
X-Received: by 2002:aca:f30b:: with SMTP id r11mr13182607oih.133.1619823891369;
        Fri, 30 Apr 2021 16:04:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619823891; cv=none;
        d=google.com; s=arc-20160816;
        b=eycslDNlSjt0+BpXBhuKXxs0/rQP2ALcauUJ2uN7TOw+h6+0yJOkhqtECwtOUXDxtv
         Tqtrc5Dv2fuP4B3hXfoFXCnFDyeMybNcxnUBtjbthVhy9hyVDNDUO4jIgI+s0G6/QGb7
         CwT5ILQF6MXP4NxEZ1r9Nncx3jIUwQKMe2O2PTc8AsRN/88AqmwbQbC8rjZsjRZueXRl
         1inIdL6klc5CakU656QqzYEI5B2Lzc9fHA5NN9Vo1KPVOpOLR29HAORezZkU4J2kF1n5
         Q2nnrX3bs50GHy/a1qGuDBAaPX2ADsrafu8erBBf7HpOZw9EB8UDBma4ph4LxDD/hjz5
         iXgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=hmaCHaUk/YcKYLYa52m832mn6ybhsaP/KRRlkFyOLOs=;
        b=XHwhFOSRXv6K4Y5dPjM2JkXNC+5qlUcQ2LXN1bXDvR2T1KprKxfIrcQqQH+joP+4tY
         /OiLNPIO9URsh9/Lb1k+S8wMXnQDlPUS3biv/M5RDLW0qdpRfwMqbBsl9WxgZ4BF6CHP
         cx3Xjjxf+rBRK13qkxcJF0LA2gNm2SdVYdJAv4O1lTtRGWoUJqk5ulOXTaeVS1thqGEO
         Ju8dEsfnLsz9RAc52K8YKQKSMLDG7sBXm/qLwM4E+ZOVLW7BDSJ9BCUqNQpWSg5F7OPl
         hfp2yoKNhDhBssptrluxk6/8bXXxgOIt5nh9A4NitYLWIkXlDqV14jQH4DkSz+rh5L+F
         AoUA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=BUaCL8hO;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::436 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com. [2607:f8b0:4864:20::436])
        by gmr-mx.google.com with ESMTPS id f4si813260otc.2.2021.04.30.16.04.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Apr 2021 16:04:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::436 as permitted sender) client-ip=2607:f8b0:4864:20::436;
Received: by mail-pf1-x436.google.com with SMTP id c17so147437pfn.6
        for <clang-built-linux@googlegroups.com>; Fri, 30 Apr 2021 16:04:51 -0700 (PDT)
X-Received: by 2002:aa7:82cc:0:b029:213:db69:18d9 with SMTP id f12-20020aa782cc0000b0290213db6918d9mr7361399pfn.36.1619823890715;
        Fri, 30 Apr 2021 16:04:50 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id q8sm4146721pgn.22.2021.04.30.16.04.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Apr 2021 16:04:50 -0700 (PDT)
Date: Fri, 30 Apr 2021 16:04:49 -0700
From: Kees Cook <keescook@chromium.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <nathan@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	"H. Peter Anvin" <hpa@zytor.com>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] x86: Enable clang LTO for 32-bit as well
Message-ID: <202104301604.9FB001A9@keescook>
References: <20210429232611.3966964-1-nathan@kernel.org>
 <CAKwvOdngd5inT_sQP-PgqaMpVzfSdwoyhCcUSdS+09u=PKUEyA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdngd5inT_sQP-PgqaMpVzfSdwoyhCcUSdS+09u=PKUEyA@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=BUaCL8hO;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::436
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

On Fri, Apr 30, 2021 at 01:58:57PM -0700, Nick Desaulniers wrote:
> On Thu, Apr 29, 2021 at 4:26 PM Nathan Chancellor <nathan@kernel.org> wrote:
> >
> > Commit b33fff07e3e3 ("x86, build: allow LTO to be selected") enabled
> > support for LTO for x86_64 but 32-bit works fine as well.
> >
> > I tested the following config combinations:
> >
> > * i386_defconfig + CONFIG_LTO_CLANG_FULL=y
> >
> > * i386_defconfig + CONFIG_LTO_CLANG_THIN=y
> >
> > * ARCH=i386 allmodconfig + CONFIG_LTO_CLANG_THIN=y
> 
> For allmodconfig
> HAS_LTO_CLANG cannot be selected unless
> FTRACE
> GCOV_KERNEL
> are disabled.
> 
> I was able to run through similar tests, though I only did so for ToT LLVM.
> 
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> Tested-by: Nick Desaulniers <ndesaulniers@google.com>
> 
> I additionally tried full LTO allmodconfig.  Full LTO allmodconfig can
> be tested by disabling CONFIG_COMPILE_TEST (in addition to the above),
> though I hit https://github.com/ClangBuiltLinux/linux/issues/1215 (the
> xfs tests aren't building under LTO).  I think this change though is
> fine, and enables another avenue to help us debug that failure.

Awesome; thank you both! I'll collect this for -next once -rc2 is
released.

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104301604.9FB001A9%40keescook.
