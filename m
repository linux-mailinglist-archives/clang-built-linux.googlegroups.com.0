Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB7HN7L6QKGQEZWZWWYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C9B92C48C9
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Nov 2020 20:56:45 +0100 (CET)
Received: by mail-yb1-xb3a.google.com with SMTP id r4sf1039485ybs.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Nov 2020 11:56:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606334204; cv=pass;
        d=google.com; s=arc-20160816;
        b=rruMr8fZd03HuCCTNOenAW3Tp4lgCnXX6tfWmQ2IRS8wEi4NlSt7IrxKuqD1K49Sp8
         DmV68RC/TjoaSUeDT35ceN/tPr9xv1LJ3DAfvqCkqtwRIAfkLeuN5ZJPE9dHr7WLK19U
         pANqeAZr2z9LjmLI/uaO4tF3UcLZXorkyDPayBipDhUweB+NWE2Pe9LsV/+anbpgdB0U
         Mk6V0wsNDe76ztiD33OwYFBuI2zfo9t/h7r7Dr+fwSHN8Eu9KU3UznJt3UVj3neGunPM
         YETfAU7LTpSREzBzo8YZVLXDSQ2n25l+9MWsFENcT+mdO7yrx/u1KxsYbSz71gCSPIQM
         m2Qg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=LYZ5DiI+aA8AQyYAFPqooNCFcgtm+RwJobkPutRxkDA=;
        b=eK9CoJ2UDFX7y7D59sFxB4kVJJlYlBJUPZ5QVMsPVqOSq+pbjdipTaf7Vm2ikcERNW
         Og4t9CRi3U6WHaQamXTYMsduYRz4H1q38H8XimfvH+skWI6ueqERpPNRX1XLvoT8SdIw
         wPSG3TdoO2Yp/uM61/3QAzXch8plbCeeoy0+yhf/w3zr1iHfiZtC36zaaixF6/dYHKzX
         8kK/qRk9ggrh2klCLM2Ojnvu4MEyhgEVwymEe3HpyXG4cIeyabPkmnPDPsvLJf/Pte4r
         KVtBhYZw50MWtgVw3iE16ZdoevCkScRS5qJeTAQ/JHjGygM2uXpsO9REWUdG+vn0rhRF
         zy/A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=L3yrAGPv;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LYZ5DiI+aA8AQyYAFPqooNCFcgtm+RwJobkPutRxkDA=;
        b=OZiD9LPhxfJzXLcHQGN/ltr9gtCZqm3dqiIesMkYIPX8MRClQazF52MewVTZK6da+7
         mRkB+VtWqsosOGH18lomjitNyD63yGxnLDQpcSKqc80fVN//zvjk+VX0rNoVb99H+JHx
         Q0YP534kgcfpYeH8yclJgani8mu5RMtX9i/2wVIQCFFau2jb/mrRkQfV0wHOvOmAcruN
         8clNQDENpItEr8jx7YjWRVbrcEdSvvRRF92AYLLUUdiQLevcJUoJlIoRMcV4wIQQ8G6s
         fzIzymc1PEaiMbx+pe5jNpFe8N68+892jYhiXcQWCtM5KgCajnuG3rYIMQsTIUU+83V9
         A5iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=LYZ5DiI+aA8AQyYAFPqooNCFcgtm+RwJobkPutRxkDA=;
        b=omUcf1ERsJ8JtB95ji1w2jttGZBEosszJVnE4/XqMkuEnUIpQsvT2lM29MVoUCH7mE
         XV7By2wYKgDVidAQVat3Dy6pt3q+Jumyl4GFPCRIPKHuFqzuKHy/QmiJRNjikfVJZZkJ
         VdRIv87F7EqiEI4v2gtgyLTw8jVmwzFdkt9ASMoU+EobE0mApJwWuZNvh2zO0oRuOfDh
         BcF5I2NQnyhKgUlm0hqkYQomU7m47F/92dO3iBWldmEb3cqeojaQu2DzqJPQ9h5yHu+n
         m7uTelHv9E8XVlYTbnFQs1LgJQalwy0lpjrMUeQshbMSePm+AgC6ly6ozl3KPruQz/r0
         X5WA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531gybcm/VqBvIyT7tA3tQXbwYvhMC/LMuSqt/j82bWUgiA8782k
	nGR2L78Pe/lPER9JkI9I8NM=
X-Google-Smtp-Source: ABdhPJwrXCJvn0TaaBrIYqYuFewzoqNZqQKzm+TKmEfT09Kk4oIeQr9/0Z6qFx+GUW6m24ix4j40OA==
X-Received: by 2002:a25:ce4b:: with SMTP id x72mr5605939ybe.118.1606334204470;
        Wed, 25 Nov 2020 11:56:44 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:2d56:: with SMTP id s22ls1765650ybe.0.gmail; Wed, 25 Nov
 2020 11:56:44 -0800 (PST)
X-Received: by 2002:a25:830e:: with SMTP id s14mr7191655ybk.213.1606334204046;
        Wed, 25 Nov 2020 11:56:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606334204; cv=none;
        d=google.com; s=arc-20160816;
        b=lCPV+q0x9b/Xjl6THR7HD+vY8tWKTTNDjD/+5vShMgG2IfHY8Cx9NY5/512m7wfgYB
         8BhX0KdgKf+70g4QAqW4wUDd0CcT2S4/3fYPHLbQNJSQwwuBXXOOPi/6ynnIv0rH1zPJ
         5pyB709P1K+A6nGMVoj2OTLDNaGVGWNqByHAaoyWneMMnusK9bwbNqQMuEBmE9kXZI53
         q+Ghc6VBei4+g/RzjyVB2KRT0Feoy8Cv/cORoXPAPkZTHNuVdr5SouoXIBD8WSmCRSzM
         4iqYdaECZsvN6GAJbgHhRXSgxlXOOiL7etqYjcNHAW6RHHUYmFchL12PN1q7WZY07pOI
         cbHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ofTfkWYUWnDt5Dg5+/2L55KSQmDXwtOEr3R/0BWmNYw=;
        b=xLh3GXbJ66Rk8N+2REJVqkQ/qYMVFqSe8Gt6sTGP8m1S1C+rTfQpO5tQt6Va85JOBS
         7InhW7Q7NWxRMl6GoPNHBB0SwuUctOJihELkI8MBw/MJxUUVbcntF+PCpXzs3ZbR7+iL
         EV44tvAw6sOgNHspXLTbmIG5ENml8xBRQHHDKbO5/AQdgEEbLV3x3OQRlDcVOcHOs9nA
         fLBikb1NpYKmk9HFTxw1W1UnLHGjv6zhgFy2EWzKCLbxpYYNKPG1dhAkR5JvRLNvmwbs
         Ls7jAXec9orW6x8hh42FhvncNG6xt3EfmKvvbEgXvtkvQWMYDUj9+5/dIqZGY85XTVV6
         cdeg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=L3yrAGPv;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id m3si246030ybf.1.2020.11.25.11.56.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Nov 2020 11:56:44 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id f17so3344099pge.6
        for <clang-built-linux@googlegroups.com>; Wed, 25 Nov 2020 11:56:44 -0800 (PST)
X-Received: by 2002:a17:90a:7e0f:: with SMTP id i15mr5940956pjl.77.1606334203332;
        Wed, 25 Nov 2020 11:56:43 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id t8sm2694156pfe.65.2020.11.25.11.56.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Nov 2020 11:56:42 -0800 (PST)
Date: Wed, 25 Nov 2020 11:56:40 -0800
From: Kees Cook <keescook@chromium.org>
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Segher Boessenkool <segher@kernel.crashing.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Alexandre Chartre <alexandre.chartre@oracle.com>,
	kbuild-all@lists.01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	linux-toolchains@vger.kernel.org, kernel test robot <lkp@intel.com>,
	Arvind Sankar <nivedita@alum.mit.edu>
Subject: Re: [RFC][PATCH 21/24] x86/entry: Disable stack-protector for IST
 entry C handlers
Message-ID: <202011251156.055E59A@keescook>
References: <20201109144425.270789-22-alexandre.chartre@oracle.com>
 <202011131552.4kvOb9Id-lkp@intel.com>
 <CAKwvOdnvhyNs1arkVO1=pw9GB9NePKUfQYAY+Q0Ur9Qe9HJ37w@mail.gmail.com>
 <20201113234701.GV2672@gate.crashing.org>
 <CANiq72nKMd_BOOowqowLAn0PZ5tu7X8G=8OrpG34qYHGLDGw6Q@mail.gmail.com>
 <20201114002624.GX2672@gate.crashing.org>
 <CANiq72n7R5Pfx4q4F9QpTrLK3Jxm0_hFu5FTvM-JcoZgr4SxRg@mail.gmail.com>
 <CAMj1kXGb6LGrDiM-oSxnt6zcCouKyhkNC+vK_PLCCWQWOSPpeQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAMj1kXGb6LGrDiM-oSxnt6zcCouKyhkNC+vK_PLCCWQWOSPpeQ@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=L3yrAGPv;       spf=pass
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

On Sat, Nov 14, 2020 at 11:20:17AM +0100, Ard Biesheuvel wrote:
> On Sat, 14 Nov 2020 at 02:59, Miguel Ojeda
> <miguel.ojeda.sandonis@gmail.com> wrote:
> >
> > On Sat, Nov 14, 2020 at 1:27 AM Segher Boessenkool
> > <segher@kernel.crashing.org> wrote:
> > >
> > > But you cannot limit yourself to the greatest common denominator: the
> > > kernel wants to use many features only available on newer compiler
> > > versions, too; this is no different.
> >
> > What we do is conditionally enable both new and differentiating
> > features. We don't break GCC or LLVM just because the other introduces
> > a new shiny feature, nor we break builds with old compilers (except
> > when raising the minimum supported version).
> >
> > That is why we need a level of indirection in things like attributes
> > nowadays, and why patches like the above are not ideal anymore
> > (regardless of which attribute we are talking about).
> >
> 
> In spite of the apparent difference of opinion here, there are two
> irrefutable facts about __attribute__((optimize)) on GCC that can only
> lead to the conclusion that we must never use it in Linux:
> - the GCC developers refuse to rigorously define its behavior, so we
> don't know what it actually does;
> - it has been observed to nullify unrelated command line arguments in
> unexpected and undocumented ways.
> 
> So it does not matter whether you call that quirky or something else,
> there is no way we can make meaningful use of it, and therefore,
> abstracting or parameterizing any of its uses should be avoided as
> well.

Perhaps it's worth adding this to CodingStyle or deprecated.rst?

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202011251156.055E59A%40keescook.
