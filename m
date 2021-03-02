Return-Path: <clang-built-linux+bncBCS7XUWOUULBBI7D7KAQMGQENWDVI6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BA7B32AC5E
	for <lists+clang-built-linux@lfdr.de>; Tue,  2 Mar 2021 22:44:05 +0100 (CET)
Received: by mail-oi1-x23f.google.com with SMTP id k5sf11798946oic.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 02 Mar 2021 13:44:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614721444; cv=pass;
        d=google.com; s=arc-20160816;
        b=z+bO87XyaFvWoSwpemdzGwNVHbc3h6lyZ1M1JfbYcpLjHOGi2UEc9SPmNlkfNaQ/GR
         M/SNV4w7ZSgSKv8RjgWaEgrseJYNWyNiI3fzZ5byMk2qE6u4j2IJsAahAzNLFsr+uB51
         Xr5U+bUbv8XjTqncly6lzlK85Qa77GJ062lruVJ55W68TjMCN3+zovGBH54Bukb+nAv1
         Z6EtBJiIMuEj+B6fQNZ4SGIQOcdpiahXWpjJPxm6WjlPzpGRJMCTbRq4aQB17q0PF32D
         OgVtF3DLf9SniRQWv1Ogh434A+bjc49kxWPDmeiv6uouhuC6ATxgMCGMmqHZeBbmdW1A
         izZw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=SMwst9CYMwXXFhZJ+ogrSDfVksgJPjyUqG6YjuEF1hs=;
        b=HT9q4PDeGuuuZAlxvABVEKNzoM5ROaz6suHB6zA0MNxzX1ftjQeBADS1oiK5BjgFFS
         0tbY3rSIX1jFa3YX2N2ElbUgYJ7x3JS3szb2OhCvT9kjzWx46cBiRIhqDxk/cEKl4Qk+
         f4DQgb/ZcUG5/viXFEzFYRaIEj1c1P0qm/hPDJjhlNl4/+S2gwtMniJ2Gc2FlAXPg8VU
         gUeNV9MT3aKR41e6cw9567cQqBjWAjoVqOxqU2pkg3wlZOA6EzjpsPAFcjfYzWr1hTUp
         8VOyp7qVnvEhif58xrfaVZrCOSA1ejdX8IfHslinyHO6J4gWNY6RQMJQF7OFQcIJjGT0
         yA9A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=g9Ff7jDy;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::102d as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=SMwst9CYMwXXFhZJ+ogrSDfVksgJPjyUqG6YjuEF1hs=;
        b=K0SsO5EFtNHhS4SUUyHB8agFwGPqjjPHQr6dLE2oPOnbN2iE9ghqUmn6Drw62HgXb9
         oXiBwlrgC3+PwC13O2dNBRf3Em0bEhD520EICTVGMISq5sed6vyi0DVm3zV51dUx1Fca
         jFosn6GWJLrUagQZYhqUClJv2iCFFxJqdU5l2cTMxGhdrxycMev5iZgnIV3Lvxs0FG5j
         TSDSIJX0rgcAutPum2sPWH4qsDCrMLFQfZnwQFCt/rB2c+/Vpnq6GWlXjuXBAtlmKuYm
         /w2zMcZQ6FwZ6kXWti+I2LXjd501yb91yh67Bk3UrAckRisz1pFzPIBMcTL5Ari/0RYz
         2fwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SMwst9CYMwXXFhZJ+ogrSDfVksgJPjyUqG6YjuEF1hs=;
        b=SeIKkEi4Yk9FgCCM1TxmyMeV30FUnEUsi+fGkCru9Jjt4ngQkOwrhMR1+LJWUIMV8L
         o8XK8glDzJIiBtVkLklL+ISuQ/XN3qmAnFguEjoVJ8f3e/xx7p7D9v5PFyVD8rmN59KY
         ZQkwrOL3cXFlWBjM+2jGpZuR+BoI0XrPZc/3GZXGp73MzH6MV8F8ur5mFantlZVo3LL+
         8jxMAD6pfW/s+czvsoZFbL67mmWdKZW0iC3ApLZpEgjQAJC9eZgNkw0t4wyB/bitCz9X
         A/YrRvY0RFpj2wdkgMjOHCjp21D25DZi9wJraUEJmsUZJczXUxgGAA/ufN9WwHlI4sBy
         9guQ==
X-Gm-Message-State: AOAM530GQtmR3QrSZ2vrVzQrXjTo/1e+57v2R22dqynCrAnyC5kCkicr
	guv6VZTUAlrya9hyCOInxUA=
X-Google-Smtp-Source: ABdhPJxSVE53c55iA5rHCqIGJZV1V8hUEISY1HG9/R6s/wjqFHeqUNJwrXUQnh1bTzH4uBU9mN+ZTA==
X-Received: by 2002:aca:f58e:: with SMTP id t136mr4809861oih.173.1614721444014;
        Tue, 02 Mar 2021 13:44:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:8ef:: with SMTP id d15ls5683827oic.9.gmail; Tue, 02
 Mar 2021 13:44:03 -0800 (PST)
X-Received: by 2002:a05:6808:bce:: with SMTP id o14mr4661932oik.104.1614721443590;
        Tue, 02 Mar 2021 13:44:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614721443; cv=none;
        d=google.com; s=arc-20160816;
        b=foOtEInadhAoKKUacg8XThYfWmexiuECThUDypLSHEiZ9ymohkDm5A41emvOZQ85yO
         kI0XXH+/5wbZgPUeRk8TA6k0ZqbqU3m9Y7kqRc//uYNXGlWmMTgqL8E1+JfnU9alHOOK
         +nq+KH49+xOGCuoo/HUAxxq2cGXVRbFhI6CAreb+i0AgFt2mRLofVhQh5NwDJptEIi5D
         Alr6rbmN9zDr8svj73eCclB0iD/yPILIm4ht+nYtaXO2baBjEKVRmSjnmEICotGcFG4T
         s9WLHUQSh8tKQmUmD6J+/WK5q/gmfhwTKIeEl2pKPRUATc2dnaQsGH1qi+pzLSfA5IHM
         t01Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=yBWlyOTxkLscrR3m1Z6J6l3UwydAT2XmPo8P60eOyX0=;
        b=0l9JHa2S6mrahOqW9l2Ziyb+J+vzEB3y6ZCwqulbxtROXfQ7tjtn9IY6XXlTVSDDpd
         We3yUqN48lq3cWtnBVEFlNnYA0o5OQgMXRx19mHAwrxtU+HN2GtEOGC5w/0jLBM06aQu
         /VAMXIStjK0cxJybhQu5X6wsV7mSwl7JbL0EbxAVtp4Ro2IZNZD8OR4+aX445cGUw3Px
         +g28y5lHJne7bGBxuTS/WTmNhhGwQQ4p2V7Dq9jKWCjEFPyMAMc7LLjcJ8D7udbXXdi3
         s0p9G16mSNCPL5+AsKBq0qSJ4kKrHxiLQL/795KV2z1Ngev2j1OwqM/HD6NtJ5wFjtWb
         /9gw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=g9Ff7jDy;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::102d as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com. [2607:f8b0:4864:20::102d])
        by gmr-mx.google.com with ESMTPS id v26si1463668otn.1.2021.03.02.13.44.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Mar 2021 13:44:03 -0800 (PST)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::102d as permitted sender) client-ip=2607:f8b0:4864:20::102d;
Received: by mail-pj1-x102d.google.com with SMTP id o6so2924449pjf.5
        for <clang-built-linux@googlegroups.com>; Tue, 02 Mar 2021 13:44:03 -0800 (PST)
X-Received: by 2002:a17:902:70c7:b029:e3:71cf:33d2 with SMTP id l7-20020a17090270c7b02900e371cf33d2mr22366413plt.21.1614721442771;
        Tue, 02 Mar 2021 13:44:02 -0800 (PST)
Received: from google.com ([2620:15c:2ce:0:fce5:88bc:1857:36b4])
        by smtp.gmail.com with ESMTPSA id q23sm9712431pgj.66.2021.03.02.13.44.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Mar 2021 13:44:02 -0800 (PST)
Date: Tue, 2 Mar 2021 13:43:58 -0800
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH 1/2] Makefile: Remove '--gcc-toolchain' flag
Message-ID: <20210302214358.qr6enl6majzplhij@google.com>
References: <20210302210646.3044738-1-nathan@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20210302210646.3044738-1-nathan@kernel.org>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=g9Ff7jDy;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::102d
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

Reviewed-by: Fangrui Song <maskray@google.com>

Thanks for the clean-up!
--gcc-toolchain= is an obsscure way searching for GCC installation prefixes (--prefix).
The logic is complex and different for different distributions/architectures.

If we specify --prefix= (-B) explicitly, --gcc-toolchain is not needed.

On 2021-03-02, Nathan Chancellor wrote:
>This is not necessary anymore now that we specify '--prefix=', which
>tells clang exactly where to find the GNU cross tools. This has been
>verified with self compiled LLVM 10.0.1 and LLVM 13.0.0 as well as a
>distribution version of LLVM 11.1.0 without binutils in the LLVM
>toolchain locations.
>
>Signed-off-by: Nathan Chancellor <nathan@kernel.org>
>---
> Makefile | 4 ----
> 1 file changed, 4 deletions(-)
>
>diff --git a/Makefile b/Makefile
>index f9b54da2fca0..c20f0ad8be73 100644
>--- a/Makefile
>+++ b/Makefile
>@@ -568,10 +568,6 @@ ifneq ($(CROSS_COMPILE),)
> CLANG_FLAGS	+= --target=$(notdir $(CROSS_COMPILE:%-=%))
> GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE)elfedit))
> CLANG_FLAGS	+= --prefix=$(GCC_TOOLCHAIN_DIR)$(notdir $(CROSS_COMPILE))
>-GCC_TOOLCHAIN	:= $(realpath $(GCC_TOOLCHAIN_DIR)/..)
>-endif
>-ifneq ($(GCC_TOOLCHAIN),)
>-CLANG_FLAGS	+= --gcc-toolchain=$(GCC_TOOLCHAIN)
> endif
> ifneq ($(LLVM_IAS),1)
> CLANG_FLAGS	+= -no-integrated-as
>
>base-commit: 7a7fd0de4a9804299793e564a555a49c1fc924cb
>-- 
>2.31.0.rc0.75.gec125d1bc1
>
>-- 
>You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
>To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
>To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210302210646.3044738-1-nathan%40kernel.org.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210302214358.qr6enl6majzplhij%40google.com.
