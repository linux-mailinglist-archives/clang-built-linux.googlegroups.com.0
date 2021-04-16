Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBPVD5CBQMGQE3AOXC7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EC44362B22
	for <lists+clang-built-linux@lfdr.de>; Sat, 17 Apr 2021 00:37:51 +0200 (CEST)
Received: by mail-oi1-x23f.google.com with SMTP id i19-20020a0568080313b029015a3ff29eb0sf6812609oie.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 15:37:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618612670; cv=pass;
        d=google.com; s=arc-20160816;
        b=sBpXHwRjJY55jZV1QpxgZMxcse89rjWG3LWi9p/oV6qrDpKsxkdvbnd4Bt9sXmqeGd
         pThCDT1fbm7Emn0HOYkSo8E73bl+tbCZgXDmBikfe4ziHXTwncYtMOp2sWE0lkgcPfQp
         7nAXyUFVB971E/g1VqX1O603d1oPcb4lp0LC31wwQfG/PGRik9TFL/bhHZt+MgSr7XAQ
         AfI226VTbWlNQec2lnvvGxJ9JJrUc2ALgPyKmFaCk+bj/h1Z+xutGtLD8EPsjxqIlAlr
         6FjNI+RkAvdW8V/EFKeZAZn+T2rQq+TB3oRrAnXYCVBxSZ173sjSv9GSX7mX3g4kh3kv
         5LgA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=1m0V6Jj849X04qulHRgPmpyHZ7NS/mLqdqzAMLS9l8g=;
        b=HMGgqLhOuN5Q2PskQt/uTWj+QGyq4lZD1GZoLonLexVjLckLQCEnhoqrbmw1ziy4B0
         e1o+mjrMmfsQzv2tyDR/2PQK3xkqiHBwq214CTzQXnTwF1Fqqk30xqjoHzv1zUCdkDoo
         gdlvqfHxhoj7pYSrCa/rKVPFtFsPNgjzI8M5VtUcyn6B3Y4IkKvAYMSUw6IYSJLOqPwg
         sJLG2WooPnUUpKUTB6wYAJdq23X4Kkasu+McRNusifyNVs6okNDOPaAGKp3gQWHJwk9T
         VXEYMD5JFmG5E3k30+XafpPVg2tKI/GBoPZazgXBh2Mz6PYQXEsvrA5JR26jv9B0iUt1
         7vsQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=D8UkrwRL;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::431 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1m0V6Jj849X04qulHRgPmpyHZ7NS/mLqdqzAMLS9l8g=;
        b=qKf2bUQCsITS2Uctrra4pgOyvSwICOQfzGoeaWuuNx9/ATAxn5/Vl3rkGUistZiN0q
         gJRd9swDM77Yalw99oovx0Oug2oC5fpWOX3TzZelF5PMctdq7P0UnbytzyNQPgmVc58F
         ujO3q5JrDws9ZpvNHhMh8pYSwxrRef0qFU8TFOjFt8Iy0ch3Qc89bEmbKZm4Zgi1y7SB
         pyotU3FOAgdUf3hiBe0p9CXKHoVlY14XSZHAxxOgwTd+wrYG3gM0xBm43gY/xNH9AgvY
         e3mZJmVJa4xhB7SL/GxQQY31CXafG8JDObCSP2dtG3AjWkg3zqkN1JTNbJHleUuWAFfm
         HkCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1m0V6Jj849X04qulHRgPmpyHZ7NS/mLqdqzAMLS9l8g=;
        b=FMavNOOgTInK1wmy3YlXc5WnbMHTidTuukJfUnvtnLVcXRtPGfdAkxNQz28T3gGPqW
         bHM22VSsjkJiMsA4YRPdgORvyBqDDyNh+MJNDioLFjkXfcnEfm/L3DwAhtixsF82AATU
         dVX6FVocI78m6JAMrcMXK+H4ilqN6QbJolE8vAOm0XW7gmMVGYlVwojJaAarWXLD88JA
         eUOgBDsAaAdKSoRpxUO1Dov07yD/c2IMiqkWR3MJZ4VPkAghPsFLwBXV7ET8uz9PdUvj
         M4uVWQ9xIqQ2p1TzZ2fsuW36rE7eey76jXtvJXlb2JMJDpzWBenalqOVCNHXy/LXKHUs
         j89A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532VqlCygK4JJTNwJxbypJbtOoWQNby55uHLLqYDNOnkRC4Eal/Z
	Sb3zACA64DgDBZCDBCy1gn0=
X-Google-Smtp-Source: ABdhPJybpCSZDbrYT9S8h/M+SBumRNNzPZHFOQhO6NBf9Z9pL6Ao7O3a+ZYfftP0hBiBbAzoVTD83A==
X-Received: by 2002:aca:741:: with SMTP id 62mr7807386oih.104.1618612670326;
        Fri, 16 Apr 2021 15:37:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:1e0a:: with SMTP id m10ls2627196oic.7.gmail; Fri, 16 Apr
 2021 15:37:50 -0700 (PDT)
X-Received: by 2002:aca:f084:: with SMTP id o126mr7698962oih.95.1618612669978;
        Fri, 16 Apr 2021 15:37:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618612669; cv=none;
        d=google.com; s=arc-20160816;
        b=jUrMC4BK05pJ0CMBNbKsBD7Ox81KsfZgRE6m0ANId0ijPEBM4GzFQc4ZOJ4urT/Dx5
         NdH5f+SyYTszes3pCW46vRkT4UDeJDEAtMK32cUloJZ3/VGennfHCO5Yd269M+6Wptp4
         UELGHKXEntO3KOb11c1HW/akdcBVJWKa0sca3KlfZ/nDRdKmzcmnBS/wmndYqQNcavFs
         JHHRa+wRg+0wOlYg+x7cJ0RpH+G0J7QHMlzl64H/IVl5EnPTTwf0Nz34zP42KwNSgKpk
         67VjtkarfXtCntWG++OZf7olZghSaHC87wHmOPeyXv1NF7VL7YUnfYt+fQ6P/yJNU8Fx
         X/Nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=NDhS9ea/Ghy92VBWAgivjVBpdpN6nWgmnBRq9q7wlPI=;
        b=SVBVRvyXVDWAU1kaHdZ30PEYjeCPiwKMnP+UZEp/UE/P7OtvzCrLvBORwb/rGYYJWu
         AZMCLCAAEuES+BXCveQeIl8I7ByjU3+f7Zg0qAP3IY807JlAuLKyjv4PxsuyFfa2+kUL
         YFlCMZoFsGF3JI+q3pCJgBHjIv5j68P352FYl4CT9cZh2rNgiAP2H+tsc2uxZcKxMsH7
         i+sitT4fWLvgUPiMYQJ01lAyaehwo3vSLz+hUd+CaGYhGOx+72GTTq4Hxsr/9xplA/Co
         7XcIgUbHYGyY5bOOPHiWsKDH5SkxNMix9nJPRaGlSJ8tLv38KDzvBvoj1mOHnm0A02dZ
         D1UQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=D8UkrwRL;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::431 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com. [2607:f8b0:4864:20::431])
        by gmr-mx.google.com with ESMTPS id a7si121752oiw.3.2021.04.16.15.37.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Apr 2021 15:37:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::431 as permitted sender) client-ip=2607:f8b0:4864:20::431;
Received: by mail-pf1-x431.google.com with SMTP id w8so15794563pfn.9
        for <clang-built-linux@googlegroups.com>; Fri, 16 Apr 2021 15:37:49 -0700 (PDT)
X-Received: by 2002:aa7:8486:0:b029:250:f6fc:ae93 with SMTP id u6-20020aa784860000b0290250f6fcae93mr9648698pfn.39.1618612669362;
        Fri, 16 Apr 2021 15:37:49 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id h21sm2461475pfh.130.2021.04.16.15.37.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Apr 2021 15:37:48 -0700 (PDT)
Date: Fri, 16 Apr 2021 15:37:47 -0700
From: Kees Cook <keescook@chromium.org>
To: Andy Lutomirski <luto@kernel.org>
Cc: Borislav Petkov <bp@alien8.de>, Sami Tolvanen <samitolvanen@google.com>,
	X86 ML <x86@kernel.org>, Josh Poimboeuf <jpoimboe@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	linux-hardening@vger.kernel.org,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH 05/15] x86: Implement function_nocfi
Message-ID: <202104161529.D9F98DA994@keescook>
References: <20210416203844.3803177-1-samitolvanen@google.com>
 <20210416203844.3803177-6-samitolvanen@google.com>
 <20210416211855.GD22348@zn.tnic>
 <CABCJKud8TvzhcjHCpsrtCJ4B50ZUfaL48F42EhZ2zWKLteAc0Q@mail.gmail.com>
 <20210416220251.GE22348@zn.tnic>
 <CALCETrVTtKqD6fonUmT_qr0HJ0X9TWzLGq-wpm+A7XKyjn3W5g@mail.gmail.com>
 <20210416221414.GF22348@zn.tnic>
 <CALCETrUo+tR+YmfoBPWV9z_7QhU74=7tmCBD_zsfa24ZxNvfxg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CALCETrUo+tR+YmfoBPWV9z_7QhU74=7tmCBD_zsfa24ZxNvfxg@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=D8UkrwRL;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::431
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

On Fri, Apr 16, 2021 at 03:20:17PM -0700, Andy Lutomirski wrote:
> But obviously there is code that needs real function pointers.  How
> about making this a first-class feature, or at least hacking around it
> more cleanly.  For example, what does this do:
> 
> char entry_whatever[];
> wrmsrl(..., (unsigned long)entry_whatever);

This is just casting. It'll still resolve to the jump table entry.

> or, alternatively,
> 
> extern void func() __attribute__((nocfi));

__nocfi says func() should not perform checking of correct jump table
membership for indirect calls.

But we don't want a global marking for a function to be ignored by CFI;
we don't want functions to escape CFI -- we want specific _users_ to
either not check CFI for indirect calls (__nocfi) or we want specific
passed addresses to avoid going through the jump table
(function_nocfi()).

So, instead of a cast, a wrapper is used to bypass instrumentation in
the very few cases its needed.

(Note that such a wrapper is no-op without CFI enabled.)

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104161529.D9F98DA994%40keescook.
