Return-Path: <clang-built-linux+bncBDV2D5O34IDRB275Z35QKGQERQCQ75Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id DE1EA27DC80
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 01:10:35 +0200 (CEST)
Received: by mail-wr1-x440.google.com with SMTP id g6sf2389357wrv.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 16:10:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601421035; cv=pass;
        d=google.com; s=arc-20160816;
        b=iLcnlfZyuRz7XogfkRQ+kbfTsZX5NfeaYZXy/jafGrlO2djGZspgAhZ7I/wSW65bf7
         hfxw7A50q+9kvwFDRuVSPxb3bxWKhwFWZZexvUYIM3haBYeoFL3Vm+lN0hJtuSJHUmWf
         ogToROdYJj/A/cq9GYbHjEeMsiUZzLNlwPbJx5LsT/vNvi6lp59vnqG6NLED52Twx+Bl
         vPoCpBGqiPIDuMWlpuiMC1qIMrj0yqi6y2RI4eJsDxd7ULdq8AfD9A4GEZm2/3pT4oKn
         9t7lXAyP8K41ShDnYoymgekpg7ligRHoaSjAyYrcqSLvWhNl5aQ3Jucl4Zi9D4ULqEZl
         tpDA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=TEHm9no8HBZDgOL8+V1ijdrYKJNCA0g8XIz9TeYWVEA=;
        b=WY/u6gTGtvLjY1f5GgJTL8CXLq6cr09/TF/vhJxaMwZr650xCjfLeOcnFVJQEmLxE7
         Fa44NsiHkkgk1Np7DuZ28US2MSzcwMYID5XLtQYYds/vNB/tDz0we9/Al43hkY1nkUkc
         dumMC3kMBJZ8IMLItQ7ljym1i6LLtk/MwgR7NtNbjNFbOqu7Jkq0amu69lERMb9DHj9F
         xiPO/yyfw/Zvumke448Vo5o+1AIdX80i/cDEx+cicxWd0RGAzukTQw5V5eHGSY83Pf++
         r+5cQn/WQelzmlCPGhJwd5AcT75DiHB+Gctz0ZrSm71oCKYLygvgZA3pnK/6pO/MmcNI
         r1Qg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=ov5uqTvY;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TEHm9no8HBZDgOL8+V1ijdrYKJNCA0g8XIz9TeYWVEA=;
        b=rNBjRRD9Ioecs+uvcRMwOAEUwY1P27s0Xe9aOL5D3X+ARaLiWqdyq54SMzkvgZECdn
         wWzVx1iI9nktXEG6OzPZmcaA1px5GWPm4wFHLSmuTbfgm/lnJgzeGREdpTfu1MBoNjBu
         dy83Kzg/qfD9/RRXL6B3oFbkV2sJZ/zr8JNjRj4bCCBNWdjzB/BPe2Q4st5kdeczDvXi
         tCrRVV0c9RNY15ccqX1J1r21u+tRGEnkcMmtwlWInZDr9F6nFUzL5X/c7dfRrR0Lfovb
         nu4F4kYWLIuuAgwLPogEjVa1CgPNjh0gpB1MPkjt/33N7A/OF/sFYBp0mhhtwzH5RGJf
         JFqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=TEHm9no8HBZDgOL8+V1ijdrYKJNCA0g8XIz9TeYWVEA=;
        b=IkuqvoVaaNR8Mb5dn/khj347nd0a9VQq8soJ1evtbHOuJYhYEUE00nWIFvzfBdlNBF
         +6FV3XW/J9EN3K/c7uNRlD6dK417GQzRDOMT32qtDY6XdWr3unZnAiAZS9UK6KdTXd+H
         9RCGdgudqXzsa6FHMSKX2e398sdnVNIH+cnQ+uLVaku3a/revNLWV3O22JZ45VBscazd
         zrzocbOn2bF8kJVHBD9te9zDrqzOVSLxxux1MAQ61iPn8jWuAoYWtPzO5KYzYP1+mfmw
         cUMe7IlpDOfBGIJFZ7w2kPEhyw7W56GKg0T3qbD2qCtyk/fyvJgEFtM33FqcZv4y3Mjs
         hOrA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5304LFymeerTkpgA9m9JZZvWR6Fseca6Gd9MbUDNl6zYH4l1BMTY
	1mDUWnYF60fUtJd2iCjyu5E=
X-Google-Smtp-Source: ABdhPJxe1Biz94BhSWs+YQWb7aU7gZSS3VP51L78bQEF/XBktWB6R1PmdwghHyrcmICiGjraxYXXEg==
X-Received: by 2002:a1c:1bd1:: with SMTP id b200mr7196618wmb.171.1601421035562;
        Tue, 29 Sep 2020 16:10:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:230d:: with SMTP id 13ls150129wmo.0.canary-gmail;
 Tue, 29 Sep 2020 16:10:34 -0700 (PDT)
X-Received: by 2002:a7b:cd08:: with SMTP id f8mr6817291wmj.124.1601421034618;
        Tue, 29 Sep 2020 16:10:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601421034; cv=none;
        d=google.com; s=arc-20160816;
        b=00RszBllgLnVgcwr/IN3VlYfX/jFovOh0m49SkCL/VHNSInC17zxnJ39Sju27ZAutb
         4mecaEFThnfYRTzKj5vvlkkOws9F8b77hFTn3kNBZpxMcKvOfsvozbYs8JlEuOirnhW0
         PwssRUIxYaU5ZGK1juN64PlHwuDSE0uYBwsKeVQ9HzEnFDyWzbCPeuBE3Wy+1oVAiCaX
         2zioCU2vn0Llj8vVlAQk4rik8EPprZ6891A/bNMK7G688P/gn9pnmEO8Y6LVDWzfBKi/
         sxLE/sJBArSHtkM9M+ZwDsFdeX2WbIvydLxdeDr0PQDhiWcREF4814+0NdYfJ3XmStJd
         Bmdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=R3SUK8wQa6bfxKA9v51XX6INKEvLY/XZhJdqmyDu9e0=;
        b=BJSAzKs8fbStgD3fPV9r0fzKgtGQfDR22OL/EhaLO+coZFt0LTYROom3zkhpO8cVFT
         55qJcHyGCGmcHVMFhHMqnpAwccUgc84sEyYP5y1IMZWxIliTAvXXhcyKRPmrtpxA+0S5
         O1qeRCH/Sj3aHnGJfdwCyE5V+71nUa1hcYALkUa9QJyKH+VU7iI0o31Uo73/ZcA0SuYY
         VXRg9GFq1b6P2wEDMbcoVHpXYNcTtYkcrLWCJlE8sUiPkhDKP970yqlIml3hXxsDNPB5
         zhtC5nYjdiVMI/wwb2XHV4IBPTTnNEbNjQ0BKI4FO6XmOG9xBRy650umarg5gq0zjr6A
         my0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=ov5uqTvY;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id h2si424749wml.4.2020.09.29.16.10.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Sep 2020 16:10:34 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from [2601:1c0:6280:3f0::19c2]
	by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kNOlT-0005Qj-VX; Tue, 29 Sep 2020 23:10:33 +0000
Subject: Re: [PATCH] docs: programming-languages: refresh blurb on clang
 support
To: Nick Desaulniers <ndesaulniers@google.com>,
 Jonathan Corbet <corbet@lwn.net>
Cc: Nathan Chancellor <natechancellor@gmail.com>, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
References: <20200929211936.580805-1-ndesaulniers@google.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <1925c4b7-2764-2b25-6aa4-a5001c8056f8@infradead.org>
Date: Tue, 29 Sep 2020 16:10:27 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200929211936.580805-1-ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: rdunlap@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=ov5uqTvY;
       spf=pass (google.com: best guess record for domain of
 rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
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

On 9/29/20 2:19 PM, Nick Desaulniers wrote:
> Building the kernel with Clang doesn't rely on third party patches, and
> has not for a few years now.
> 
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
>  Documentation/process/programming-language.rst | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
> 
> diff --git a/Documentation/process/programming-language.rst b/Documentation/process/programming-language.rst
> index e5f5f065dc24..63af142d64ec 100644
> --- a/Documentation/process/programming-language.rst
> +++ b/Documentation/process/programming-language.rst
> @@ -6,14 +6,15 @@ Programming Language
>  The kernel is written in the C programming language [c-language]_.
>  More precisely, the kernel is typically compiled with ``gcc`` [gcc]_
>  under ``-std=gnu89`` [gcc-c-dialect-options]_: the GNU dialect of ISO C90
> -(including some C99 features).
> +(including some C99 features). ``clang`` [clang]_ is also supported, see docs

Drop duplicated "docs" before here or after here.

checkpatch should have caught that.

> +docs on :ref:`Building Linux with Clang/LLVM <kbuild_llvm>`.
>  
>  This dialect contains many extensions to the language [gnu-extensions]_,
>  and many of them are used within the kernel as a matter of course.
>  
> -There is some support for compiling the kernel with ``clang`` [clang]_
> -and ``icc`` [icc]_ for several of the architectures, although at the time
> -of writing it is not completed, requiring third-party patches.
> +There is some support for compiling the kernel with ``icc`` [icc]_ for several
> +of the architectures, although at the time of writing it is not completed,
> +requiring third-party patches.
>  
>  Attributes
>  ----------
> 

thanks.
-- 
~Randy

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1925c4b7-2764-2b25-6aa4-a5001c8056f8%40infradead.org.
