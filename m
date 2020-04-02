Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBHOITD2AKGQEIANIBEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A02A19C83F
	for <lists+clang-built-linux@lfdr.de>; Thu,  2 Apr 2020 19:42:55 +0200 (CEST)
Received: by mail-pg1-x53f.google.com with SMTP id x136sf3618339pgx.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 02 Apr 2020 10:42:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585849374; cv=pass;
        d=google.com; s=arc-20160816;
        b=rgRPPQW9g8pVEUezoOvk/OTryX2blHcoKDywvS2e/D3OQ6QnZzuVIN/FMnqfKyTwX+
         zuWrJgPLdJVog+grUW1H92D/h0OeBAGGUaT1zPy07mTkbVdvXwO9cI2LSHcrJbSSIlE2
         HSe1IIZ3ISkghysN3U7VoqT4YGiGjGfkd0UuHP3sFA7yndTAVt4IO5M8OuD47UxYZOb+
         2con7F+vqBXlKpp3vxxTY9lB6hN/PvHlHMArv4Pi8yoabsDbqB8RkIf0ipUicB8Ldk18
         0qFYDZhOFRnklTEAD9+V7hkvSnl5+KMh4Ect8iS7CrDvJb+Kw+bJbkJxGrynvr6e0OWN
         HRCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=VkWWR7m0Fv9JbEXEH+qbxAotzObKNoavPRET2Wsj11k=;
        b=YkP36JQxfWFf0kYxmS/aYoWkQccSja19codr6HOyHSSQqlJbxbqUhzQPKO0gT3nNuN
         IX+nYw7Ua8oswq1DnarYywhDmnwgsWRb06iHzZKIQ9fx+uDAVWcPOiXV3TKpMGUCzwwz
         bVFLxfEp2rBT1x2oKiswnnQSwgzbGCatr19PPZtpH8wUTMz9a/sudZm9UquWFCVBPMTp
         b+RT8OSsi/jvKrvIX8D856mweoM+UhfCK3Io7ANWdWpKHYrQaEajMavV1Nr75d3M/Yzn
         2tBSCPQGwnVwJpWZXzgMbxr/SqNkx4IIhUqH5LRg/uQzb78EPRdodH+vzP4ykvvOUyyR
         86/w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MlAh8ZM2;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VkWWR7m0Fv9JbEXEH+qbxAotzObKNoavPRET2Wsj11k=;
        b=M2gt4tFAXX98PNLafYZVflvPBU4X2gUrIBcTAyqdYBc3dltconPVdVGHs2Bv5UXdMb
         LaNvekHS4N+xfQHo+lfOMPk/FWcon3MWdhfyOMlt39HyOoT38F6Ji0Hj0zU33zvhoJ6v
         UMVAEUEoI6KNx3IxvcXfCJcc99ZIw/hZgqJm0+Ye/lQG3ykcFLHroz7S65BsBcrka4i3
         RfZOp9daOoiq/+EGL3Xj6r6pEUp2zM6paFLPv02e9HQ5tOCJUDhuCXwom6XtVWr6jly2
         M83J51GXcuUA2txXj/cxHMs35AmeqkoUw5zXyEw/m/6jGR5aeCjwGPJC7nxnYvWjZZ9/
         DIrw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VkWWR7m0Fv9JbEXEH+qbxAotzObKNoavPRET2Wsj11k=;
        b=M/GVdSm3KzVsceogPixfHowMER0q4ee0fuMV1H+y8vDZNQoka46ciQzoEzYbeaf03e
         eh6zi8npAEKJfdsldRXRfWso8fvOz5H5TL2OMFGRzTpAGTYsU8eejfMcEghq04b47Gl6
         gWcwhVeWwsI8norV53xQ4B3dZxOx9IHI77tZ+8cS87pzOzUn1LyOSxcJs8hWCi1GBhz+
         80gttyrZOtyH8+RC6bDxIhxaXbQ80cQIbbAEHppDylFtOat/FF2EGnc33ko9EUOe68f6
         ev9tEIAkFEjSCNaPs9Y+Ax/AXIyGfOKBOf0wT2PPD7bsSNyGmedFomtEC4X8vxHbe7zH
         9G6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=VkWWR7m0Fv9JbEXEH+qbxAotzObKNoavPRET2Wsj11k=;
        b=nokZ2hW5oLqBSQDpussKn8Mb2S6wxAfgc21/zh1n5EQmDXuInNHh2EA4QwBQcPnAUT
         aSi+OrtSmrZwyiEgOt8WY2d+ifWZhnVBCZtA9ylCELOMSx8miEc+Oy9eMkgP+rwi0Yse
         czlr0IR1wMu/0oZIOqMZDuRENA8gQB67j8yK3qT6H4MfgKfZy8pPC6DJanw8okUttT2r
         QaFwguOjlUYQ7RHW4MH+y5u/rqpll3VtGSfs0L8Y2ye2p65MSxll0Q6C/85YE8n3pgQe
         iRm4N3EOdXTldvxMY5rGuovBdUFw25k19GMjBC1WPChL0r2Daxe87N2i8nOjV3YcnR8z
         ggRg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pua7+b1KR7vEq4vVkxZrnZ4jpecDSG6MFi1smOG+ipibDKwFOzbc
	7bisLF0SSKB3AGBVYiXSXss=
X-Google-Smtp-Source: APiQypKG/pM/8PMqw+XcDMisxpKcba1D0nKX3XPiwTDAt59zk1ugO4X8J1t9AWWFicxa2zMCIxt3Kg==
X-Received: by 2002:a63:a35a:: with SMTP id v26mr4610527pgn.40.1585849373944;
        Thu, 02 Apr 2020 10:42:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:245:: with SMTP id fz5ls3692649pjb.3.canary-gmail;
 Thu, 02 Apr 2020 10:42:53 -0700 (PDT)
X-Received: by 2002:a17:902:d210:: with SMTP id t16mr4094227ply.241.1585849373427;
        Thu, 02 Apr 2020 10:42:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585849373; cv=none;
        d=google.com; s=arc-20160816;
        b=cxFB4AnYJ4RLFBMMLM9h0E6RuHgsJex64lsL/0cheC1kpeGK7X85++lgfhsA+ORiEn
         1ILP81PYCbQ2UTa59oRNDENcpSFFb//krPUoqgW55AuMnzf2ZoKH2AeyZ+qsM1UGNI1K
         KK81rBafnRu1BuDw7MlXfRSQKrOo7RC3myf/bhm1xgwNdWF/KyreYFbd27YC1w6LdLlg
         KcWUJ98ftq0dmFVTrKeLnDm5OdTYxjzS5JisrQloCDXNk6P/+/UQkW11FytNzxzyWm7L
         x3BzESZpYFKKevllS8D8BkDhkx7gHF2FSX6RpBaMXb6tIWIAOq/emgAOBN+NKmJ9rwnb
         4DMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=AM4asBwnLyBdo8YxbWkR1sjxTEK7w5QaIa+bEyGHEF0=;
        b=N0me/ipb1RtPDS2PUGUeGNoA/MgQM6RV6UbfGZI5EYvUT3CbLA98331n9jLEGpwvG9
         QneSHg4B5BbDaTVd5ffnkM9jac1oqbowY3cRaWvZ49FLMvMjy22fm17NlWih13OyL6Wa
         UY8ZkgDt5XrYbcQpdIMZote2/MlCpQVxpTrNl68w+S1ZvADUZMcjK4Kt+zGg32Zt7axW
         jhFukhCJaXKyVFbkqSwJlY7xAk1+KaMguKzPony3pzTC7RG/f5fLS3CFAZpY7r0C28hH
         KXR3kitk/cwhKjjNcyW+i3vCGKcz3VzaaifHGJ8NIa6pp1RVTT5ZSblOOUXMt+OhU6wf
         LCJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MlAh8ZM2;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id j14si419412pgg.1.2020.04.02.10.42.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Apr 2020 10:42:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Received: by mail-ot1-x341.google.com with SMTP id f52so4313231otf.8
        for <clang-built-linux@googlegroups.com>; Thu, 02 Apr 2020 10:42:53 -0700 (PDT)
X-Received: by 2002:a9d:7c94:: with SMTP id q20mr2929597otn.150.1585849373038;
        Thu, 02 Apr 2020 10:42:53 -0700 (PDT)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id k24sm1505151oik.24.2020.04.02.10.42.52
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 02 Apr 2020 10:42:52 -0700 (PDT)
Date: Thu, 2 Apr 2020 10:42:50 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Fangrui Song <maskray@google.com>
Cc: corbet@lwn.net, masahiroy@kernel.org, linux-doc@vger.kernel.org,
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] Documentation/llvm: fix the name of llvm-size
Message-ID: <20200402174250.GA33476@ubuntu-m2-xlarge-x86>
References: <20200402173842.96013-1-maskray@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200402173842.96013-1-maskray@google.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=MlAh8ZM2;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Thu, Apr 02, 2020 at 10:38:42AM -0700, 'Fangrui Song' via Clang Built Linux wrote:
> The tool is called llvm-size, not llvm-objsize.
> 
> Fixes: fcf1b6a35c16 ("Documentation/llvm: add documentation on building w/ Clang/LLVM")
> Signed-off-by: Fangrui Song <maskray@google.com>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  Documentation/kbuild/llvm.rst | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/kbuild/llvm.rst b/Documentation/kbuild/llvm.rst
> index d6c79eb4e23e..eefbdfa3e4d9 100644
> --- a/Documentation/kbuild/llvm.rst
> +++ b/Documentation/kbuild/llvm.rst
> @@ -51,7 +51,7 @@ LLVM has substitutes for GNU binutils utilities. These can be invoked as
>  additional parameters to `make`.
>  
>  	make CC=clang AS=clang LD=ld.lld AR=llvm-ar NM=llvm-nm STRIP=llvm-strip \\
> -	  OBJCOPY=llvm-objcopy OBJDUMP=llvm-objdump OBJSIZE=llvm-objsize \\
> +	  OBJCOPY=llvm-objcopy OBJDUMP=llvm-objdump OBJSIZE=llvm-size \\
>  	  READELF=llvm-readelf HOSTCC=clang HOSTCXX=clang++ HOSTAR=llvm-ar \\
>  	  HOSTLD=ld.lld
>  
> -- 
> 2.26.0.rc2.310.g2932bb562d-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200402174250.GA33476%40ubuntu-m2-xlarge-x86.
