Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBGMYQKAAMGQE5I5MD2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 5958D2F696D
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 19:23:23 +0100 (CET)
Received: by mail-pg1-x53c.google.com with SMTP id m23sf4337166pgl.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 10:23:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610648602; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZyOJloLhKUro3hsneXp8b7CoOZhNJI6xTu4O3Btg8tWIbmBkSKWU2I+TBnlExR9xiB
         ZOlzMZa2mjxcm88wI4UNwHtPvClrNf21rMa7a08kN2K+v5eAR/XSH3AqnME5IO7ZVJmA
         4HSM+QCqCLhajb2jiS4np0ZUoMFDuiLyvrl5L7hept1vEILZ/CK/nqaEw6ekZ2i8q9Rw
         xPsko3KHSFytbNlzRWd03R/rjKb/yGEKq3ZuWG0QPNF0lIDE740MluOGdyL4vKSKJSbD
         gTsiiYo5ncHpDOJEzWVNaEj0Bzl0O/NSkkMuC+c5mjM5NA8yhdUzdQGw08ya9QidAtJp
         F5kg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=LP5/QJzFDBylyl01N1uXb0f0l+kNhaM09fuUWieiGR8=;
        b=OcY10hIJxegOeVIwNcwgI+LJ4GAicBdNBgGsUWRUdtp27dNLlD9QvpCoi1QYVcLhy0
         UVSDQZAyLwZ+fBTNDQvXjDSV+jtnWIqfELjZE4V9LgsMzx5aVNl/CUz+qJAEBJiU1EcE
         fn8Y2tl9a74Vg3j1KZzKQwBAaYlxsWy2zL8lESmsfUpO8jDMPARYjiuCmSl1nzeKXah+
         cjtcoWgnknbk4zwY6U7gBrwHly5OUmO0lqDiv6JhD7/ySUUO7rgBj3OIU8nPQRmVgeyI
         1lvcJ39+IYI9zK3DWKBM4BjwnXLb/RuE6Yn0Hk3Xs1xQruRd12zGuxGhQye3Hdgd9tbw
         zfsQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qnq4z5CJ;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::731 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LP5/QJzFDBylyl01N1uXb0f0l+kNhaM09fuUWieiGR8=;
        b=VpF3WAjrtinXnafvymRoI6NKQnLXBuMujHhFBnqmeDJxctZvuTbxtxpZlUWcaeaGtl
         SItPIlXVbNcimVx+KJBnBTUffotChDHv/3u38cd0zZlZM9Ce6FjaYR7DcQ73BgREF7Z5
         qVvrpnFZOHSDwpoRcaUe4CkyKJtAZMvwrGAbslC4pz1ZxTzHK+KswmkO+czpR5oKYetZ
         nc/MgXekOy/VJhoFU2vLx+iiURFFMqAyOOUIgV0KEyVXUCH+KhR8dYND/WBQeLz86en3
         T7RlOyAYNqZ+tpDIVJBMXUQxcuvJIxndlDN/F70A26s5KzuE/S/WVJ12ETKsNCw6nLcq
         rufw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LP5/QJzFDBylyl01N1uXb0f0l+kNhaM09fuUWieiGR8=;
        b=VYUFY9uih3XVmHZGZiFj16x4nvInl4+8QbEgvrZkQD3x//PRLWxmZ2riqFHJu2i5cX
         L+8XEdI55pfpg9MH8DHTLvt2/Ce4yTGKv2QGqvc8wlicJjnT7NAaZp50WPRCwbrwpAb8
         3NN2lKQVEUewbZ48dY2ve5/2XHaxL8gloEWWrUHLzY3XSh1wmjcuJItbJyuy7Rb55Jzs
         LClvpUa41PrOFhYK16I/WqUlTzGtXakd8bexf4Mx5blQ+8ZgcBermst3Z0yfrhBpOi40
         dgR0LIuempwYLTJqf1XncJ3QMTCo4qGTp52zmoWtAr6c4mf2XZglSsSwIcByCPZuGIeF
         fLYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=LP5/QJzFDBylyl01N1uXb0f0l+kNhaM09fuUWieiGR8=;
        b=SLFBQnF0LpsiE0SjNgJyKv0LEcaUkEqprKKP63Bo9L4rxRJoyNZfDc5tYR76qBVkiA
         hM3v2hDfLbx4oa6eCQiCR9tz6wQeAkRG2ZduuF8ySSFgANRKXtpoHHVxCBcEbaxExAez
         /hf1FKOwaCavpHk28FeG9nuNh+q7Zk4LcdlADJc5fdL+GirBCpZf2Cew8lVtm3IamNyF
         OXI8NcokKmkN30feyNb5W/fxiiIItbE79cgbRBhmhFA+tockAhHmLeFCoA5XJebGPO2k
         UipGqZ33hMlp1iE9CpPtwHrn1Lr6qbAQJl1WfIpdaZwNJmTkb4q+PrwHXa1SVe4AtCf9
         pTXQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532DgIt0F15Wph6aWnu5VOD7mXtQs1uj0ViCyHVjot0PQdKtB4Eq
	iPGom508AIPxvXk+KkH/ZWU=
X-Google-Smtp-Source: ABdhPJwVCv9dU9kbyNYYWLaPgGLRcheysv7EYMWH2ML6EVcCTc1zMi8ijOcU+J9RTRC++hGyIXISvw==
X-Received: by 2002:a63:4c09:: with SMTP id z9mr8893255pga.260.1610648602158;
        Thu, 14 Jan 2021 10:23:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:2a8c:: with SMTP id j12ls304194pjd.1.experimental-gmail;
 Thu, 14 Jan 2021 10:23:21 -0800 (PST)
X-Received: by 2002:a17:90a:7e90:: with SMTP id j16mr6094093pjl.163.1610648601188;
        Thu, 14 Jan 2021 10:23:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610648601; cv=none;
        d=google.com; s=arc-20160816;
        b=qTGK4qN3nGY9dEVO1USBtlJkifK+FNz20lvnUbkdOJBJ8uULaE6EgxPIvXyEgeYDrZ
         luV1BWS2R60lYATBy9ztHUEAtiHPURhpwRLQcWJQmqakhek1zH3OC4KvoFgYNgKbfy/2
         uT7dDPK0AdT+2HnVi5IKZ7hDao3nsB56TXTviIGfsnEFPXwk+TGc7Ddce4rncRB80V1B
         KCpwHvnIfwdgBLo/gKnZU4q/ppXnUmlWoj/K0NcWTcjGL9dtAQ0wHSplGrj+/b/Aw+Zw
         EhF4/KK5ukKQJJyeaYOtCm7px4+ZCE405PPcATCM6MSBnW7vQnW/DKZHokXla4Ei70vb
         GECw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=bwCHUuSRmaWekKnX014v+7s9HPNcRa88oAwARjFSB8U=;
        b=lji9AvZX3nnTrXcLPI4FTk6cMyon/gkan7s2JuLANP6FVsmw8EMN89hg+84lsvzbjj
         qPcc8ubVLW9r2aQ7uwe5gYFqiJ0mO3p0VUEfn0kSicWZmwfRUCCiBdghSZw6Ti3QeeDq
         68xe/XqzP0Akp1NhNLUItu+TBEZ7xY0Uxv+wbIBJ0SLLVoQFiShPyyYGd26Es/9MqwAV
         AMOiSgfut3+l3zxlU5ZjcvD19rnYgBNpBn7Hf/AFBhPEm1r0JWAET4cXDlKoXvMFYXTk
         zJC3mtv39KGH2jaKUvA9atqyF7VJ/JGQX2L90eiEsMlUFAZQiEF6Va1He+Xw8LIZ7Q+W
         gi5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qnq4z5CJ;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::731 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x731.google.com (mail-qk1-x731.google.com. [2607:f8b0:4864:20::731])
        by gmr-mx.google.com with ESMTPS id 13si415746pgf.0.2021.01.14.10.23.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jan 2021 10:23:21 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::731 as permitted sender) client-ip=2607:f8b0:4864:20::731;
Received: by mail-qk1-x731.google.com with SMTP id h4so9200983qkk.4
        for <clang-built-linux@googlegroups.com>; Thu, 14 Jan 2021 10:23:21 -0800 (PST)
X-Received: by 2002:a05:620a:a05:: with SMTP id i5mr8319670qka.148.1610648600686;
        Thu, 14 Jan 2021 10:23:20 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id x49sm3445054qtx.6.2021.01.14.10.23.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Jan 2021 10:23:19 -0800 (PST)
Date: Thu, 14 Jan 2021 11:23:18 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org,
	Paul Gortmaker <paul.gortmaker@windriver.com>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Will Deacon <will@kernel.org>, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3] kbuild: check the minimum compiler version in Kconfig
Message-ID: <20210114182318.GA967110@ubuntu-m3-large-x86>
References: <20210114180709.303370-1-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210114180709.303370-1-masahiroy@kernel.org>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=qnq4z5CJ;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::731 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Fri, Jan 15, 2021 at 03:07:09AM +0900, Masahiro Yamada wrote:
> Paul Gortmaker reported a regression in the GCC version check [1].
> If you use GCC 4.8, the build breaks before showing the error message
> "error Sorry, your version of GCC is too old - please use 4.9 or newer."
> 
> I do not want to apply his fix-up since it implies we would not be able
> to remove any cc-option test. Anyway, I admit checking the GCC version
> in <linux/compiler-gcc.h> is too late.
> 
> Almost at the same time, Linus also suggested to move the compiler
> version error to Kconfig time. [2]
> 
> I unified the similar two scripts, gcc-version.sh and clang-version.sh
> into the new cc-version.sh. The old scripts invoked the compiler multiple
> times (3 times for gcc-version.sh, 4 times for clang-version.sh). I
> refactored the code so the new one invokes the compiler just once, and
> also tried my best to use shell-builtin commands where possible.
> 
> The new script runs faster.
> 
>   $ time ./scripts/clang-version.sh clang
>   120000
> 
>   real    0m0.029s
>   user    0m0.012s
>   sys     0m0.021s
> 
>   $ time ./scripts/cc-version.sh clang
>   Clang 120000
> 
>   real    0m0.009s
>   user    0m0.006s
>   sys     0m0.004s
> 
> The cc-version.sh also shows the error if the compiler is old:
> 
>   $ make defconfig CC=clang-9
>   *** Default configuration is based on 'x86_64_defconfig'
>   ***
>   *** Compiler is too old.
>   ***   Your Clang version:    9.0.1
>   ***   Minimum Clang version: 10.0.1
>   ***
>   scripts/Kconfig.include:46: Sorry, this compiler is not supported.
>   make[1]: *** [scripts/kconfig/Makefile:81: defconfig] Error 1
>   make: *** [Makefile:602: defconfig] Error 2
> 
> I removed the clang version check from <linux/compiler-clang.h>
> 
> For now, I did not touch <linux/compiler-gcc.h> in order to avoid
> merge conflict with [3], which has been queued up in the arm64 tree.
> We will be able to clean it up later.
> 
> The new script takes care of ICC because we have <linux/compiler-intel.h>
> although I am not sure if building the kernel with ICC is well-supported.
> 
> [1] https://lkml.org/lkml/2021/1/10/250
> [2] https://lkml.org/lkml/2021/1/12/1708
> [3] https://lkml.org/lkml/2021/1/12/1533
> 
> Fixes: 87de84c9140e ("kbuild: remove cc-option test of -Werror=date-time")
> Reported-by: Paul Gortmaker <paul.gortmaker@windriver.com>
> Suggested-by: Linus Torvalds <torvalds@linux-foundation.org>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Tested-by: Nathan Chancellor <natechancellor@gmail.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210114182318.GA967110%40ubuntu-m3-large-x86.
