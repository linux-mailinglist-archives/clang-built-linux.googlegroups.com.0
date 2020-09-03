Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB3X4YX5AKGQERFR43TI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id CFF5B25CE6B
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Sep 2020 01:38:23 +0200 (CEST)
Received: by mail-pl1-x63c.google.com with SMTP id o6sf257861pll.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Sep 2020 16:38:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599176302; cv=pass;
        d=google.com; s=arc-20160816;
        b=YPrrIlyrIG3yxxv73QY8jf3FeAUSzgqxMdMTQ9THTYAIE63PKkqEdy/8YZoO8Dd2n3
         jJMPefYjhtEhmttwZxz+cq7ivpOnPnnVxFQseoa+K0k1NKFfOfO8cEf/6i25ZlsaisG2
         vaZ2bdFuUaNDvZEuijAOO8n7QA3p57NT/lCCFEIZWjOe4HZ2o+g8FtvF+p6XCqmtbGH1
         X64FIAzGK7+4+Ix+ra+yRS8oTI0BUlrYTcoswnrCMW+tJ9o70ugKz3YrLRlN7A11zgJ3
         T8USxyaorvUCdVyXBR93G2yIDAdq8r1Q7zYBMmR7CyZ3L5eC+6DWKipP8hKQv3ONR+Dq
         Thfw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=3oinjh8ZECJaNFefNVLoQUG7mIyPvjK9Pi9mdqwdnFU=;
        b=ug5e+f1nSReeNkiaMOqdt2RfGqfZDR1Y+Lbqt2l8zXxA4Gmeuuj8KsFeWNHE4FXHQq
         jgeOzPwSpFwM32hiRP6FW56DFd5di7ZR+upBTB4xaqB8hhqjfjGSeEdslER4BXLgOS5Q
         JhbCZNYfdQaHL7ogqyY7nO1xa3dfOUVL9oSclbVEzVzTUdOOGAyny1gWTHE/eX2TnUhC
         FDJdJ92ZDCwqBegg7xm0sq+SpdCHVqC3uvi7ayFA9lmyQl7rwnNAYFGnmw1A2idYGyd0
         6lp0ISuOnkB+s3+VofLOxIGY/rFPjVXVktXv+kmtrMWEFiFBrMqnL3ILZdAJNWsTJRjD
         AP4w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=gvG6wFPN;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3oinjh8ZECJaNFefNVLoQUG7mIyPvjK9Pi9mdqwdnFU=;
        b=dzSLxtvjtXiZmOWgwcAlo3lRB7SRAyaopnUoKpmExzs+FjJfS8Cyy55Gc7Yzbyyqvx
         G75eT+osXuMcCFfmA7V2zaFwrnpRu+WrtErCyXGyjcQQj7MDxN1VQHO3ACF4g+nI/yJ8
         1jtyShiH0DLukB40iWTekRutLnZGNYTo9RaD+3UsRc70C/xv0pcanLwoOMwNM1HxN+MR
         WchJkCYMv2fqjX23k+1EGXBNVIsy5FCnuYlejO/4vQvAGfb2lGlPTtZTRohfLtG1ttSs
         q8MuW+0GI66aBp//KEqhq81rpGMMYzXaFR+vTbwnp7v+8zguClIWLaJnKHN21l+dI3TS
         wVZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=3oinjh8ZECJaNFefNVLoQUG7mIyPvjK9Pi9mdqwdnFU=;
        b=uWDnZLiQ/kyZDYglmmMibAkT5RReb8enMd0NBkWvR37V+UH3HuxpKJgH7Ef9DfBAzs
         TyQg8wueUxMpCo+vM4B5qeH1VcgvMZKXavxx6+7BQv93Av7STOEGgzIy90IWkgg3vuo+
         0nRRzqg+MFbeLfLTZSPAnPXRNt4K9HC/CTLe7Q+jj5ILAngrXhXVA5KtO4FU3WsMryW4
         yrMiCuMAoQ98qxH7QnuCw9j2w5Ls290qfOZYUmdUTlxgN0NCTV4Zt9IroW+oDDRPtfFQ
         qkH1rIhBwQB4Q3SafJ+O3T5596jbOp6R7ue4bXPqKxTnaKdwgW5wRnNbL/QBiI8t4lSU
         Gcdg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531DygX1ELkcPomyXKsPO24P0mb5TM+JWgj7+rJ8ayKtUkgdXiMM
	iH6DK+3MGR+aJuguRaXfq2I=
X-Google-Smtp-Source: ABdhPJy88SQFFdxadaJYmPeZqCI/++sVW0Q+tqLwwpgl4LrITnI7dPq7EnvqXcZfgM8Ez3062Jycvg==
X-Received: by 2002:a17:902:10f:: with SMTP id 15mr6150017plb.121.1599176302235;
        Thu, 03 Sep 2020 16:38:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7596:: with SMTP id j22ls3693620pll.8.gmail; Thu, 03
 Sep 2020 16:38:21 -0700 (PDT)
X-Received: by 2002:a17:902:b289:: with SMTP id u9mr6251970plr.226.1599176301750;
        Thu, 03 Sep 2020 16:38:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599176301; cv=none;
        d=google.com; s=arc-20160816;
        b=PLMTGoJ4VFpYLeerJchFbkBBzfmPewh2DWE+BBxeQcbmFABKes8vD2h1r/KJq+Qh3o
         eqbwqZWq73gvp+/KZKCPn9YRmGG2Pn+ILwZ1NK3/CJ82CXICw90H+pZNBuUkD2KpXp6S
         nEE2/13rhbyeZdSea7HmyAnP4VtL/EjmXD7IzI5T/bJpDuCV88arezTpcEbMt32nFhWn
         R+o3WAgKNy7Wrzr/d1f/rdT7x10yAsCf+5PqWl1GGysyg8zlXCTv5ymObLfsxotOGv1f
         6f1nyvsvvMGgwgDkTDIz7pZSy0j7UPIIiaOGtYO2FH9Bvj6M0Jo9kwBrqHXzt/aQTkxq
         X4vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=vpMIvEwuRSqC+Z+zTJmdoPgPG+oL4Eop2jtb25EWWgk=;
        b=fVJ+BM8GfN0djjmmRfx7XpWDMXlvBZTdbeXvNCdv4pcdX7nzZX/Orcrku7XcNrEDcU
         G7Pbuig+pcYVB/APwkm35iWzLtq6LADqI/IhYSItYhLo3WaaVSOtKKrBbREdrBcGql97
         VxRfbpJjd1JGxZOyHUedHxmmnSD1h8rJo6FwjP9SrsEUPyxpzBdqwsIyLoueHWs6fvob
         N9yYms29iYj/pmaZTMLJQJzSxfiqj8tEuAWzjnvshMK4ZEq5qFMtNJC5KJvtfw7dYLBV
         vHS/c9P35dAOb37DPArSWytM02Lo4PRKu6+nVmzdGMGyogQd59uBjJq/wdTo02vhSbt9
         vY+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=gvG6wFPN;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id w15si66565pfu.6.2020.09.03.16.38.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Sep 2020 16:38:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id gl3so1150776pjb.1
        for <clang-built-linux@googlegroups.com>; Thu, 03 Sep 2020 16:38:21 -0700 (PDT)
X-Received: by 2002:a17:90a:d514:: with SMTP id t20mr5116667pju.134.1599176301506;
        Thu, 03 Sep 2020 16:38:21 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id z66sm4420212pfb.53.2020.09.03.16.38.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Sep 2020 16:38:20 -0700 (PDT)
Date: Thu, 3 Sep 2020 16:38:19 -0700
From: Kees Cook <keescook@chromium.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Steven Rostedt <rostedt@goodmis.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	x86@kernel.org
Subject: Re: [PATCH v2 00/28] Add support for Clang LTO
Message-ID: <202009031634.876182D@keescook>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200903203053.3411268-1-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200903203053.3411268-1-samitolvanen@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=gvG6wFPN;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041
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

On Thu, Sep 03, 2020 at 01:30:25PM -0700, Sami Tolvanen wrote:
> This patch series adds support for building x86_64 and arm64 kernels
> with Clang's Link Time Optimization (LTO).
> [...]
> base-commit: e28f0104343d0c132fa37f479870c9e43355fee4

And if you're not a b4 user, this tree can be found at either of these places:

https://github.com/samitolvanen/linux/commits/clang-lto

git://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git kspp/sami/lto/v2

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009031634.876182D%40keescook.
