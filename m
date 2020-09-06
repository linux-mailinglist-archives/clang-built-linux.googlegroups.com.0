Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBCXF2L5AKGQETBQW75A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EB3C25ED83
	for <lists+clang-built-linux@lfdr.de>; Sun,  6 Sep 2020 11:57:32 +0200 (CEST)
Received: by mail-pj1-x1039.google.com with SMTP id r15sf5325020pjo.9
        for <lists+clang-built-linux@lfdr.de>; Sun, 06 Sep 2020 02:57:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599386251; cv=pass;
        d=google.com; s=arc-20160816;
        b=eqFc36W0H+U+qwEZddFuMSDNr0Y9HjWgp1+1UIb1hslmJnLDGHWumM6dxWWKwsDtuG
         461BzTPVAoLPKxQ5M5y05ei7f0SnCRdS7uhJcdjzhpCusYFK1jXyvasjgejve4nvlcAB
         ZHrllgycRhgip+/PLBa0b1IKbhKIDIjtNExir1EYHfbATLfg7laQstILlcCxM8IoZeNe
         K4swHR+Rv6voiWV9uUmJiCYjIGdlE7YMsjcoyd3NiTyjeQ/4yQUKGJEh9wjrqpU90NyP
         UwXTWzCp9BS7/IhQUd7m0HoIDSdToWn5cbCE9ew3JH7DN+4bzq/TF0+hVX80yyNEr6hy
         Qcbw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=vaSXggBGmhlHA10Wxz7/H7/3PSpVtd/N6+tOKbT2OAY=;
        b=R1lqDU7VqPHeplpUH2eezjupvbFAu0QT5qRQ6xaZMeZOIMiMLRzw3nW0IAqCWXCkm9
         2ergmgjxa7dwLvkqV6o0Bg7Sk02bko3HJ13HML72MYZjzo+PgvIfZ0ZLmdoEn0s/i4tt
         x24VGVnsMnVqaxfswxBqPO7Mz9vMmcsW788O/n42aEOgb+bFCLVZEIBnYKXlTYXzoHs8
         TMC7AFEGQBhAbEXCnNW04ZktQ59+KfhNVDDSeHWqRLFopAiKOrKhEtoXJcNnkg0gmfS/
         yzRBZY8Od377KvYKXVqcWwt6bNsMSKlYQGM8YbHGyfiEfnVpT9QWd9KvV9YhL3+mApZP
         V5eA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="X/xXQA7K";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vaSXggBGmhlHA10Wxz7/H7/3PSpVtd/N6+tOKbT2OAY=;
        b=HCjp/XzqCXQLsWCod4Q+VQvEyVlliK8UhmiEQ1PwNlBlkJ/NQOptkOhw6h64Jlb0sa
         xzi7SwCyh61klqoMCnu2xesuCbQ2tMfnUUqJCcm1UQxx1f7esSe8caITrxWHtiMsnCb1
         2C1riQLzIqZj50MNmyJaVxBEY5/5LLRGsVvzqUXSGt/8w5UDfU9nGBQNyb9UAXmUQGBz
         ZQPOLdetbp5kMyWUK7buTlZRgy3kQO1L5Vydozel/Xtmzbs1mseOU7YNnsqmgQ50DnVn
         v2aAK2sSQy4X4bQbzZHrZQjQcF4qT07U1tCWtbHvpm8To+Rgl1IQSp0z4tnjBebaGWKh
         6iwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vaSXggBGmhlHA10Wxz7/H7/3PSpVtd/N6+tOKbT2OAY=;
        b=BDmxlD8mVTMK88GHYuzmcJ0bgyz6GscGuWv+WBBL6/oXy0pBoI9eEne9c08JCNAxBq
         qMB0kIlwEZ+0UeQtEiXpHMJRRnaulmtJ/p9V0K0vxa+Zwnj4gwRCO7Ox5d/16yKItwlI
         CyVr7E6xojjQhUdIKy7UObMKJf0rgUOyff29Ak8LLFhMboZc9FjkU4ZNnhB6cR2WWJoB
         KmY7dUinBopOvbSrz1dQPNoio4a63HaNSgSVUMo+ra1Qb3ZhO79e8IHmc04HTZb3IdDD
         gnVdURlYKWldja3gBXh32SR/lbYv62BBlw40hFg1qemWfOq7zYyYtr0t7M1XtR3gHRJ6
         lVmA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530W92hi6FFpKq2adM13dz7ObmUjf4TUL7pOC96rhrPaBxgMdDqU
	mMQsJa0UCNDmboX8i/vmhb8=
X-Google-Smtp-Source: ABdhPJz33wUuN8iky65/Fv/57/8KcDNjHQ4xIdtsNt9VgIznoxe6ceZKHNetB7qA5qfaeaYD/f/zUQ==
X-Received: by 2002:a17:90b:693:: with SMTP id m19mr15496739pjz.111.1599386250779;
        Sun, 06 Sep 2020 02:57:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:5c45:: with SMTP id q66ls5738140pfb.7.gmail; Sun, 06 Sep
 2020 02:57:30 -0700 (PDT)
X-Received: by 2002:a63:7056:: with SMTP id a22mr13410997pgn.12.1599386250339;
        Sun, 06 Sep 2020 02:57:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599386250; cv=none;
        d=google.com; s=arc-20160816;
        b=uhCRtSoAcsPc5jlQMei/5IEZtsnmaeUMyJ9YD3hIURYKmndGpPgZRejCn+vbHuTEzp
         Y0nENGzQxz5JEJ7suk5KSrlq2DkmhCy6mhWiw3JmHUyT8TC3nkkgQZ7YSlJJjab2WWFd
         Ig504xsHq6Ri/Ch2R0V5T/h7L6JQr3q/bR3l5Ui59riMk9oBkC67SKmSlWTu1K+qd0SS
         iKunAbhS3BBrLB8mmT1PyXZDDJPrPbPF4eZT3YSzBE5vGrhZOZMJdpAfbYs7eBV6xsf8
         EZoyQ2xKfJykM40ElrccMb9BDo+9ueHiXDEyYMvfcsMCrHzeWiN6pwH2TetSSNP+RxY5
         RPQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Q2SILnBIEirH4TWtGi68qehLBgXZt7pRjYM7YYT/J/Q=;
        b=tCi01o1Degq8K4nPIfeN8jiMHs5P9IVU+MEAWd1kxgsn3QwFvSGySVRz5MIn2vBIGB
         cQ6VMHWsvPjrOCh3xO3uqu0GwrHX5ujwFnsJOrmCVJbbbREx90Yc3pq6xRXG4Mox54T5
         FBF+vEesrNYYaVAslqeO2sqbGxaDFHLoRw6l115eSQXYA8xdS3M/TqJzlKZjxMZnHVTb
         c4Mab7r6kUNRgNbXF8y7WH2TjIgdOBLhXkcTNGqcpmuzXneC5P44wZF7XyEC3A718AAo
         qmqYP/TPoD3GChrfx4E0AigFoZEMtmtQSLh6tDKMYv9omJVU1VzoC94/3BEF6o1OQ3n7
         uhkQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="X/xXQA7K";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id bj6si588752plb.4.2020.09.06.02.57.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 06 Sep 2020 02:57:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id b17so2912347pji.1
        for <clang-built-linux@googlegroups.com>; Sun, 06 Sep 2020 02:57:30 -0700 (PDT)
X-Received: by 2002:a17:902:ee03:b029:d0:89f1:9e2b with SMTP id z3-20020a170902ee03b02900d089f19e2bmr13926305plb.7.1599386250044;
        Sun, 06 Sep 2020 02:57:30 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id w185sm12900952pfc.36.2020.09.06.02.57.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Sep 2020 02:57:28 -0700 (PDT)
Date: Sun, 6 Sep 2020 02:57:27 -0700
From: Kees Cook <keescook@chromium.org>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	stable <stable@vger.kernel.org>, Andy Lavr <andy.lavr@gmail.com>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Joe Perches <joe@perches.com>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Sami Tolvanen <samitolvanen@google.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Alexandru Ardelean <alexandru.ardelean@analog.com>,
	Yury Norov <yury.norov@gmail.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3] lib/string.c: implement stpcpy
Message-ID: <202009060256.7CE5620A56@keescook>
References: <20200825135838.2938771-1-ndesaulniers@google.com>
 <CAK7LNAQvQBhjYgSkvm-dVyNz2Jd2C2qAtfyRk-rngEDfjkc38g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK7LNAQvQBhjYgSkvm-dVyNz2Jd2C2qAtfyRk-rngEDfjkc38g@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="X/xXQA7K";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1043
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

On Thu, Aug 27, 2020 at 12:58:35AM +0900, Masahiro Yamada wrote:
> On Tue, Aug 25, 2020 at 10:58 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> > [...]
> > +/**
> > + * stpcpy - copy a string from src to dest returning a pointer to the new end
> > + *          of dest, including src's %NUL-terminator. May overrun dest.
> > + * @dest: pointer to end of string being copied into. Must be large enough
> > + *        to receive copy.
> > + * @src: pointer to the beginning of string being copied from. Must not overlap
> > + *       dest.
> > + *
> > + * stpcpy differs from strcpy in a key way: the return value is the new
> > + * %NUL-terminated character. (for strcpy, the return value is a pointer to
> > + * src.
> 
> 
> return a pointer to src?
> 
> "man 3 strcpy" says:
> 
> The strcpy() and strncpy() functions return
> a pointer to the destination string *dest*.

Agreed; that's a typo.

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009060256.7CE5620A56%40keescook.
