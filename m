Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBNEO2WCQMGQEWHWMQLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 88F143968D7
	for <lists+clang-built-linux@lfdr.de>; Mon, 31 May 2021 22:29:41 +0200 (CEST)
Received: by mail-ot1-x33b.google.com with SMTP id m6-20020a0568301e66b0290319b27baf50sf7409552otr.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 31 May 2021 13:29:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622492980; cv=pass;
        d=google.com; s=arc-20160816;
        b=pB3YPgZpMvGBp4L6wWK/UB4zp4miBNHgFfAKAa9xcPDqTWUOmQhbbufv7cwk4ERFdI
         RZ6IAU+oY1FPo/kjAlTJGCAlJzqrxtsvbOSeJjvSgUZD9WZ72SECuSucB78wBuMrosG7
         lbs0l6UdSEXQw7VxsBexDLPHfcn4bYtXrGx4yndmq0coDGTjUS1N8pw4Wn20faSpfKj9
         cbxvWJVReAWhXtvgWGK4xKZ4NQCcJoUdX91HoO2z+eZ2HQ2itsEt2S++BSr3JidXzGMM
         /P/mW4xIRCkZqubGhZEXwHrb2eKWxl/fiGTHhZMMqaDaQ+qSDCbzBtzlWiZW2AcpbO3P
         oJYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=5Wij8Y3I1LRYw+WVPDab9y4dSGUjl7+DoCUioQdsCc0=;
        b=xP1lD8pC6MSMZg4bYs3CFNrNcYDLwH6MUg8u17CH+TEKl1rVQx5+7msn+89cAaiA7D
         WE+3lzr5SgIiIpTJ2SO5ValMeWID/VZYBYrfHl3eQFjPZtjOf68RrleCMozSF29tNjl3
         tFdZvkDd5jVANScs4DH0puJ8eMOiMHcTbhMkb9xTZl8JhY+qg2H1VQmKkPdUp/G56NLk
         iFczTNWiI883J6RS1TklxZWF/OgNi5tdMLD3NEhXtWnEDuBVpAjtEDhosxjiIOP1IST7
         qXsL7ktq2mTgqlx+auvj6wJ/suKHxSf2iY87ghhaZl8+1BiP0r60NY49qqmfLoCwMS7r
         nx5Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ZbDNE7Ag;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5Wij8Y3I1LRYw+WVPDab9y4dSGUjl7+DoCUioQdsCc0=;
        b=WfLam+J1QBT6I0JY5/Phw+Nk8PAY+QztraGc+Z82tUbATjA/PIN/aHqkLsgIiV0Nm6
         lcxuQh0Xcn1FVKqd3EEw/+omahI0qnfPHRYgeJZa2ZBVA8q1Jh7MFHHnxdeCiN53V+x0
         CcAz5gve41h+5ORcsCd4b3WC0Lmny96zMeobIHPFfHaXJX9WqtFjs133rLOJ1BsQmj9n
         +YAU8KmVJaOxnaNYC+/FsaF1slx7Z4KhbJHMmFaNr8dqVfv/sJP9goiIyikS962mF+DH
         J4RHTi2IQN6+iTvNIsSg67xeiqfEnHPynbrcDnRzpz009QY7+4STbA+2CrojNeZvBGOC
         5CGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=5Wij8Y3I1LRYw+WVPDab9y4dSGUjl7+DoCUioQdsCc0=;
        b=bNq4JfqsD7U1GuMCGjzuzTN9RQoW+bBduSVyM6bsBF7L4Mh6GgPdxvfnf4NwHuv0t2
         IDkLQjh4rz6ZEQsElaMd7Xl0bMG7LyGckq0I69RqK80mvSXvqh6s90gHbg7zZ4i6i5nB
         egmyhzljKreFEouT/jXVqOkuKxdSTIC4CdkN/vAslf2WaRsEVL4pklzqza3r/DO71kB/
         4JXMh7nXz1SjiPDwJi5XwFCG6DjTutoSpenPLknTxQzX+OdTnT5VvShUacYe5y+7CQ3g
         RfDFPmYNc7/CXDo3FmFfiSvIpDQKmq6cGRCEvu68DSMQmR3nAotNBLeJqSYB0tDUUJfR
         VpBw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533YIwYSrAH5288D1bUKgLmZt2hXOBjN+yyxJp6LyGUtj3VY8jqa
	gEqrdDAPDWc9op8lKJEz7b8=
X-Google-Smtp-Source: ABdhPJykhahhR7yAbmrPUCU8EvuChVePoKSyXhgw11zXYxs9TDJzFidYlQBZ6P3txf1JRHeaABz+Ew==
X-Received: by 2002:a05:6830:1687:: with SMTP id k7mr19271964otr.220.1622492980416;
        Mon, 31 May 2021 13:29:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:a54e:: with SMTP id s14ls1100846oom.11.gmail; Mon, 31
 May 2021 13:29:40 -0700 (PDT)
X-Received: by 2002:a4a:e1d7:: with SMTP id n23mr17782933oot.86.1622492980054;
        Mon, 31 May 2021 13:29:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622492980; cv=none;
        d=google.com; s=arc-20160816;
        b=IxbZEKi1kdoM9kurF3ClFcgXG1V0BjofYRLh+uf05w4TeDOEqfrxud0kZF6mCY/9DO
         ZTTTbZ0ni+GT80F4bB/BmgLrx4LiFPj/c4jfl5ATjE3q4+SxUi4GQHaA7m9Qg51a4u4j
         PtPCygrXmwtqTMkUAZf8bxVaAMsQXngAVx6GleBkAEoHXY1z8DqL6ysyBYf0CcvncsK+
         9//BduA4CLfGA7pxPsTArGoFSLdPbB9lWuKJT7tC3af0JCLwODOSWFKOgRMsMfYRos7o
         njvz89uAHWadBxZadY/SQrDNFIPwAQZrXLtLsm8mfhWKsZ1RItABHtkhXqSUi6Bz9cXQ
         qFmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=VJqQyJAZwkMVW6mj8ndAU7cPi+7uU4jVTG72WwFEfX4=;
        b=vWeC4c+jYTlJV7dtUjkLvQFmL0IgnOyHtHqALBC9Np1YC704aky1L55ZXHsPIaCxoh
         P3j7uXg7addDF/qXurN/wl8REjZAvDalJ7S+EHC61ZR63QmIbBfoJqarMr8C2XPAeRX/
         5qB30+lVfHkw371NkXBPkOabSwSOEYE9l+0MB4P9I8vKd5YdnclRi47rGfeuKFxiObc3
         QSF35pPqA/o61QpXO8HPUrcMFpBcRK4X+/QAMLhdl3uB+WkdIC16yN750acIyScOOz43
         I+h4bfH5FO2CqmHOmHe9MdirZw/N935EWUQS11B+RAATs4zFuFeoCscPHPZlgEHicrwI
         pMSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ZbDNE7Ag;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c9si1730548ots.4.2021.05.31.13.29.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 31 May 2021 13:29:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 61F8561159;
	Mon, 31 May 2021 20:29:38 +0000 (UTC)
Subject: Re: [PATCH] pgo: rename the raw profile file to vmlinux.profraw
To: Bill Wendling <morbo@google.com>, Kees Cook <keescook@google.com>,
 Jonathan Corbet <corbet@lwn.net>, Masahiro Yamada <masahiroy@kernel.org>,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com,
 Andrew Morton <akpm@linux-foundation.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>
References: <20210531202044.426578-1-morbo@google.com>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <e22afde4-e312-4589-cf2e-3c35219d7249@kernel.org>
Date: Mon, 31 May 2021 13:29:36 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <20210531202044.426578-1-morbo@google.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=ZbDNE7Ag;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On 5/31/2021 1:20 PM, Bill Wendling wrote:
> Future PGO features may create other files in /sys/kernel/debug/pgo. So
> rename the kernel's raw profile data file to "vmlinux.profraw" to make
> which part of the kernel the file is for more explicit.
> 
> Note that future files in /sys/kernel/debug/pgo should follow a similar
> naming convention.
> 
> Signed-off-by: Bill Wendling <morbo@google.com>

Guess this clears up my confusion around the module patches :)

Reviewed-by: Nathan Chancellor <nathan@kernel.org>

> ---
>   Documentation/dev-tools/pgo.rst | 6 +++---
>   kernel/pgo/Kconfig              | 7 ++++---
>   kernel/pgo/fs.c                 | 2 +-
>   3 files changed, 8 insertions(+), 7 deletions(-)
> 
> diff --git a/Documentation/dev-tools/pgo.rst b/Documentation/dev-tools/pgo.rst
> index b7f11d8405b7..0200449c4843 100644
> --- a/Documentation/dev-tools/pgo.rst
> +++ b/Documentation/dev-tools/pgo.rst
> @@ -76,7 +76,7 @@ The PGO kernel support creates the following files in debugfs:
>   ``/sys/kernel/debug/pgo/reset``
>   	Global reset file: resets all coverage data to zero when written to.
>   
> -``/sys/kernel/debug/profraw``
> +``/sys/kernel/debug/pgo/vmlinux.profraw``
>   	The raw PGO data that must be processed with ``llvm_profdata``.
>   
>   
> @@ -108,7 +108,7 @@ using the result to optimize the kernel:
>   
>      .. code-block:: sh
>   
> -      $ cp -a /sys/kernel/debug/pgo/profraw /tmp/vmlinux.profraw
> +      $ cp -a /sys/kernel/debug/pgo/vmlinux.profraw /tmp/vmlinux.profraw
>   
>   5) (Optional) Download the raw profile data to the HOST machine.
>   
> @@ -120,7 +120,7 @@ using the result to optimize the kernel:
>   
>      Note that multiple raw profile data files can be merged during this step.
>   
> -7) Rebuild the kernel using the profile data (PGO disabled)
> +7) Rebuild the kernel using the processed profile data (PGO disabled)
>   
>      .. code-block:: sh
>   
> diff --git a/kernel/pgo/Kconfig b/kernel/pgo/Kconfig
> index 76a640b6cf6e..d2053df1111c 100644
> --- a/kernel/pgo/Kconfig
> +++ b/kernel/pgo/Kconfig
> @@ -17,10 +17,11 @@ config PGO_CLANG
>   
>   	  Run a representative workload for your application on a kernel
>   	  compiled with this option and download the raw profile file from
> -	  /sys/kernel/debug/pgo/profraw. This file needs to be processed with
> -	  llvm-profdata. It may be merged with other collected raw profiles.
> +	  /sys/kernel/debug/pgo/vmlinux.profraw. This file needs to be
> +	  processed with llvm-profdata. It may be merged with other collected
> +	  raw profiles.
>   
> -	  Copy the resulting profile file into vmlinux.profdata, and enable
> +	  Copy the processed profile file into vmlinux.profdata, and enable
>   	  KCFLAGS=-fprofile-use=vmlinux.profdata to produce an optimized
>   	  kernel.
>   
> diff --git a/kernel/pgo/fs.c b/kernel/pgo/fs.c
> index 449f16beb2cf..ef985159dad3 100644
> --- a/kernel/pgo/fs.c
> +++ b/kernel/pgo/fs.c
> @@ -365,7 +365,7 @@ static int __init pgo_init(void)
>   	if (!directory)
>   		goto err_remove;
>   
> -	if (!debugfs_create_file("profraw", 0600, directory, NULL,
> +	if (!debugfs_create_file("vmlinux.profraw", 0600, directory, NULL,
>   				 &prf_fops))
>   		goto err_remove;
>   
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/e22afde4-e312-4589-cf2e-3c35219d7249%40kernel.org.
