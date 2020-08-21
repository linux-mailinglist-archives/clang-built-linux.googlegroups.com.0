Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBG4MQD5AKGQENBFUWBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 483BC24DE9D
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 19:36:29 +0200 (CEST)
Received: by mail-pf1-x43a.google.com with SMTP id g6sf1794517pfi.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 10:36:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598031388; cv=pass;
        d=google.com; s=arc-20160816;
        b=LoJt5VP5I1XWQ9eBsy8OfVr3DHDjHq2OWik04iPDv+0kNc5EmuHbtuD2vj5HvKfSTW
         fKEt6aS3B6dUREwtplVQ9hgCCWUYy04BR5f3HQDDzAZnm1ax3JjqfSpHvDlfwZU2f2rb
         EhtJymA00yMivMFT6C7cX3e482w7/kX22Ys9g7ZVzqDtEankdrkAgRq1CxbbKRK9le26
         DsDy3VVWdRutVne2xdLwqoCRYwGseOdhqv/Kj/84mcp6w+V7KUjYVWd4bHcYQLXNY8L7
         z/TQhbfyhc8JSFvhMhEifhamYvNNiNpzNeuz2eW2X+EatNp7KMgpeCtavgilPPOLHRLc
         oxfQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=xaqZRZLiH6OaX05UzxxNOpLeDttcM8Ch8VvwSfWELkk=;
        b=1Cmt403dH1FBW0+ozNkd/HHPTHCO6IaGnDG9wrEdwrA+2pMcv0O4TKg7MG6RRJmoA7
         hri7nDaH94Cmuo/9wA1nZdLc4b4d6y7CAMjBDhXniD4Go5Efz2xlVKPpiN6coDkp+WR5
         zTg2xp+KzmDLVdGFsClXlsy3vhQKaQtHr3KjCr0L0hSfaaYbwI08cvJdRWZJB+P2yVSZ
         rV5LEe0vxiG8neD2sWoQfwPfFTOucY227vP9VOT1Kl7x5uHxqaWeHNhjEksHxSJK65dV
         SStHSWfQwLom9b78tt+lrFrQQSngzw8fbdun/2D9gEsKqUtTtP/GDbCd3IsNnF6LuF76
         +WQQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=GNti6X6i;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xaqZRZLiH6OaX05UzxxNOpLeDttcM8Ch8VvwSfWELkk=;
        b=bqkfUGoKa+0pAonMHaaQmENbVhqQ5U21Gp/U2TsaUYhoOc93ZIDYZMIhN/1RRyYyBL
         SE1cRQB3wmWwH4VDeUy3oGeU6hz0AXa0yBcrLPsrJgKaX9PR+2L6vKQNQa4Sw7qGWE5y
         ZPJmTkXVoSfB9r61J1EN4xkfve5QJE4r7/ziWqZhtbpzauQqT05ytCQSp646ES9uFX7q
         ge6XwaaGpFNmK+aELOov7E/IoG1TuxW577c3YAqiO4SG+QuBmsMadUexVkt3CTP+FCFr
         eYygXxDdi4ziFNjTbrk90X2VGod6UdJg/HhmG5TB4FvuO4HdoupUKrCh4TRfzU5hkRvm
         jMaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=xaqZRZLiH6OaX05UzxxNOpLeDttcM8Ch8VvwSfWELkk=;
        b=PvAUX7IQpKyT/vjcSx0F90h9Z2uCx4rwT5MpVCehVhXouN9Zv2PPi3wNrwkfY7JeeG
         dlnjHMqc7SjBePiCXYdaplJQ+l88twvX++AsWllG/FK5URWsI0oRiKbCciNlWNhiiq9R
         OKVE2p1iGY64qZPvdZWYiyGjWbmUolIaljxRw6FJ1vUcq+fbjoE6HK12x2llkpdGhqO8
         UV97O+QlqCseQYRxYiS3zBcCS+bwMXOK7Ts3TSma/gczqXMKN4FOjfGJfTJM0MFQy9/r
         hS46BWWYeoBptglU3IxiJBTSENWje2FFwTy6slBfLmYx/HmopPvGMQJaGNxbEu3YlX6S
         UqYw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Wc4SDyMV+CN8vcBWAPlPfWhVeBk+wk2nqp9BO+XRjVBe3UzVw
	byUD5vmC6AM1mVHU4yqUB1o=
X-Google-Smtp-Source: ABdhPJzvOGz0Qg7+YFWWDUrRaQaWySOJWjzvlSLds5rPgC4fsFzcqFjvEM+LUdc1xPF5igqmHKvCjg==
X-Received: by 2002:a17:90b:ecd:: with SMTP id gz13mr3400216pjb.197.1598031388043;
        Fri, 21 Aug 2020 10:36:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:951d:: with SMTP id p29ls803671pgd.2.gmail; Fri, 21 Aug
 2020 10:36:27 -0700 (PDT)
X-Received: by 2002:a62:18cc:: with SMTP id 195mr3377043pfy.174.1598031387530;
        Fri, 21 Aug 2020 10:36:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598031387; cv=none;
        d=google.com; s=arc-20160816;
        b=j5kA7xNnjWJcPmdZ/zV8/CHDV0yjIobrMKCD617d3VX5HTat4utAUkLJ1C3fqxi3vE
         MuURo7XyCfck2Vn2blcdHFE618HPUeAEF8+15eSaO5qf16ZFiC+tzPMEDVPghMBt9g6x
         Ow7JvwUsQ+/EyrbF0jcg6HWJR+a76EDCMEAeShRkqa1WsuXz6DrEG09/dBNa4/HoJdDE
         rwZur7y9F2XveeOdC3dKZI6uC4mk0gjEA1hbxeEo3qKzjYIbFDDXkrCR5IzJR2Ez8I0j
         zLyf1zYz5kSRqFIWkS5Bxpd1KR84peAnQ0JsE7AYlAgT9SsDzMX3MQxirpAQoBjZz6NA
         NrPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=5YwUWvLSJ7O0+W9B6CV8mGNc7AgyPS1rZYJa5IAEFSE=;
        b=hpLbaSyh/kzqjF8E6BiltCId4s4Ngnb7ihWgG07OqBOEK574Q4S8FXSlhe9aCOQD2p
         HumzhcWltLKa8JS+JSY5xag/GJXMwzn9snYrnHvWpKgaUlWKld7y60u7NLFzcjQIw00J
         9e5xt8mHEVf0OSgTVZWWnPGjtlBbIMXXdXXEyA4Wa5r8quWJr3mj6AV+sVfwCuzI/N31
         fcru27hPcMS3fXP2pn3IxVSypp9fxEeOHf2dmZ9LeVn4i39x1rbsT4180k0OhuOWZgzk
         VDDexlc9DTZDO8afDQnWNUmrqN+a2oh4HNn+CnYs97HOIpKfbwZ76/4NpNq9pmJZ5Ipl
         64hg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=GNti6X6i;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id s14si139051pgj.1.2020.08.21.10.36.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Aug 2020 10:36:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id j21so1320944pgi.9
        for <clang-built-linux@googlegroups.com>; Fri, 21 Aug 2020 10:36:27 -0700 (PDT)
X-Received: by 2002:a63:30c2:: with SMTP id w185mr3092668pgw.15.1598031387251;
        Fri, 21 Aug 2020 10:36:27 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id 196sm3344233pfc.178.2020.08.21.10.36.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Aug 2020 10:36:26 -0700 (PDT)
Date: Fri, 21 Aug 2020 10:36:25 -0700
From: Kees Cook <keescook@chromium.org>
To: Will Deacon <will@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>, Borislav Petkov <bp@suse.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, x86@kernel.org,
	clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 00/17] Warn on orphan section placement
Message-ID: <202008211035.36BAF567C@keescook>
References: <20200629061840.4065483-1-keescook@chromium.org>
 <20200821160237.GB21517@willie-the-truck>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200821160237.GB21517@willie-the-truck>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=GNti6X6i;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543
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

On Fri, Aug 21, 2020 at 05:02:38PM +0100, Will Deacon wrote:
> Hi Kees,
> 
> On Sun, Jun 28, 2020 at 11:18:23PM -0700, Kees Cook wrote:
> > v4:
> > - explicitly add .ARM.attributes
> > - split up arm64 changes into separate patches
> > - split up arm changes into separate patches
> > - work around Clang section generation bug in -mbranch-protection
> > - work around Clang section generation bug in KASAN and KCSAN
> > - split "common" ELF sections out of STABS_DEBUG
> > - changed relative position of .comment
> > - add reviews/acks
> 
> What's the plan with this series? I thought it might have landed during the
> merge window, but I can't even seem to find it in next. Anything else you
> need on the arm64 side?

I need to rebase/refresh -- the plan is for it to go via -tip (based on
what Ingo said). I'm working on a v6 right now.

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202008211035.36BAF567C%40keescook.
