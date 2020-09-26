Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBZWGXL5QKGQEITJSCCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id AECE5279627
	for <lists+clang-built-linux@lfdr.de>; Sat, 26 Sep 2020 04:11:51 +0200 (CEST)
Received: by mail-pg1-x53f.google.com with SMTP id r22sf3610380pgk.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 25 Sep 2020 19:11:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601086310; cv=pass;
        d=google.com; s=arc-20160816;
        b=cpK+T9z/f+CKmwZPxZoXwe+G4Rp8ASdUHGvjN/RdBe+768YXyMg5Hrhsdn1F+g+ar/
         ar5wyBefAhGJqGdLhwRc80vMvR5erJt/miv+bIOlYjSTsAzwszzPZRkaMZVYr/dQvN++
         MpRX6v2BW/pZJa/FmUTQpWiTsCVQrAdh367MhL010Eh2bdE2PuScFiXVBeyXvO0pf5Lt
         GXum2rzTyW+RvPwqwXOgJJQ1rACTZwPXHu4P/BRYVipiZpXn8Y73mGxoXOzsYYclD+ut
         QMzjPsitybdMB7opyk9UyomcAV+URQoIoON81/aiZmd8Xtn0dK3z81ozzTBOk6mjoIBR
         8H2A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=StjyX5bikY0vhb5bwLcdJzA9Y8aQ+XeRORVRD7oCDX8=;
        b=vddFEvJAPJ0D9v44szH6UzYC+nBGLSxtyCp74x9eO7ycnkbm2VQVUBdZH8u4rMgkiK
         C6MKrlkamamnmiLcn0cziPb5ivno7eF/BXS1SCrNrUygpehNwvk9Yg9XKPTO4CwF77s2
         VU4Np5D24cJrJ1rqrogAM5reDdAeLLpuvbuC726RnkXv/Sz/85xgbfrBoVmMHNRCfdWo
         0TQyQTGHS39ccJlpQktc/ROrieU/QNrwcdhqaV051uWBbKwDenHishYbl8i+RYhFkwAM
         ayEqAYkNGxEVL9SlUY0NJtF70hKK7TU93gK781qXGux2LIjiG0umoQAAu/67/+o7vQpa
         bjAg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nvNxfcH8;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=StjyX5bikY0vhb5bwLcdJzA9Y8aQ+XeRORVRD7oCDX8=;
        b=SYrZQU6E6yIwS7zHnMaoVyVaOrdCwdP35WjfkkyIBb61a9o6neZwHAgJmWUfsY6qem
         h+U1nj7lgJCJhQAN30Yl+yLiiPNi5+AhrCc+zw44/hfLQIindOqHhX7lraDUR+UrTWGP
         nSAG8m/LJHxG2caixB8KYhO8nrBTeDfT+NOQJmG/iXYCw1/vadThgmEkkhz3+MJnlFw/
         zk16PxcOzzZHCDWzT79WGoJKDBYA2vEeEETET2Us7+wjBTcys7kwm3PtljUAUHYulMbS
         5lQrgD6LtsUiKYabQmiKyQ57e7oUKyO7AkvYBIkO5/gwSkntmpKk4NaBRgCK1f4KUR7t
         ZXPw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=StjyX5bikY0vhb5bwLcdJzA9Y8aQ+XeRORVRD7oCDX8=;
        b=YHYX3WN1RYf/xIm3PBX1UZWVv5UGM97XNe3LcndOnEnf/aJH+guT94Em+12If6slT1
         mlRxEobtiJg2Z78AbI2PnJMGLbC9gS/xh5Q+t2jiFkngHRHjnRR8xPCzDu7reKoi7uJF
         10gqljg5pVkzKWbQOQlz+g0UGmskD1/eEs6KHNvSqluGoOKeUsJISJk+0byCPRkigQiu
         MMjCFDsLAuyW3VqipZIU4OGQDoGCPUxm6w9i6Kqhk7qopKadyfl6clf/Ok9qAQxTiNeq
         rTKsbD7g6QhGxsrgRpJEI6PU/3hCGXdY5INz9EAopIlnLfBuRjMZTLtlBpo44y69e+cd
         WZUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=StjyX5bikY0vhb5bwLcdJzA9Y8aQ+XeRORVRD7oCDX8=;
        b=IANxegTSZSkFOHUs1q1zuZl8TtZZbgTK950aGKZr9nVhluqwl5ottc0l1upxBfHDKT
         TQ9e0iCsJmVIDK+7Y7xqE3iswqJ/pkIxG8fNGyqUljCfXtOZl2+mblRhANQ4tVHiMUKe
         PGHgTG3h2AcspClwdpz0mnuo/lqhExNG7y91QmCgLfU+MVun8EEotlV0wbMclTEXOpNq
         XLRuhdcevTXIYQv4Qw+/5qPjriR0Mmg3bSs71bL3Cv3kUhUQkQtKEe6puk+33DYi+5oR
         LsCqAlRBslLta4OONrZrTNYT00t1V8FnjUNZ+1HehYLAqKc68vuShghpbSWpuJ+VzAl0
         Vxow==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530O2azy2oAq3lvORgo4rKyhszqyL3NN8LIpvwnzxPHer3JmKzvl
	ALmjn0o3P57QYTcQv/pVB+E=
X-Google-Smtp-Source: ABdhPJw3KDEajp4uOWmbSdOxbXQa5i9P7Bw+Fm3QBOsgYejW2i9204lALXe6OQKQzGB48is2MmPr6g==
X-Received: by 2002:a17:902:b606:b029:d2:2a15:4287 with SMTP id b6-20020a170902b606b02900d22a154287mr2052467pls.2.1601086310381;
        Fri, 25 Sep 2020 19:11:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:eb49:: with SMTP id i9ls371201pli.10.gmail; Fri, 25
 Sep 2020 19:11:49 -0700 (PDT)
X-Received: by 2002:a17:902:ff0b:b029:d2:cc1:615f with SMTP id f11-20020a170902ff0bb02900d20cc1615fmr2079914plj.27.1601086309860;
        Fri, 25 Sep 2020 19:11:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601086309; cv=none;
        d=google.com; s=arc-20160816;
        b=tGGSjbGvOJgKOMGiDV4IaZyPWl3PxLzDrd7N0kvqVg+2Il/5nEEJ+k1qB6ihLWDQdv
         xxfCFTspFDdC1lp3lkQi08AmSJ/Ib7hMKY3MnTsny1VXPiJJ7AOw+NCeS8q9ynjNnuhD
         MKv1Poa30DH8z+lgUjnaFLjXRY5MBuuvQPFkHUUspTqLoMv7EwS9I9kPKci/j3xN95sk
         uJ0IjNcljq9r1WRPdrDQLwPFMW7o58PTLC9n48AmMJL6gT74jkxD2029TNyaTZljqi0q
         am8eW53LA97vxeyQiRvgHpGMPScnrSh1rmiLd0txEwJth+BP6qD9t7iszjsjyNts9y/7
         PNzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=J6M1NDDexikmB6Lw4o/cJ8CAeclIPdykh7z3pVXAl2Q=;
        b=pY7atZnN9k1Pgmj5+Z7FZolxcb0lWyFxMAlYc8aDzSIbfhvzBSjaUJDKAwkIhSvidU
         Wb8r8PM2uadz/wO+QKkmWJQbWTIvx36au46blPbABI9ST1wF5s7eE84psRDk3N4OYmH0
         6kRkJi27yqJCfHab8y89GMdq2/KgfvDoOWiF5O3yrrEEVep6bXJ5oZkXzOmGmJAoMhAV
         ISGUdSUe1EKJFWJx4IE9LtZ3yUUkHbWfmtdOGb2Xv/T0sCCH0ZbDR97Cl3fB4ViOIf9B
         ZJMy6ZZXZRxhywIFB9kbviZoj0R0VBbuqsOg+ORlOKgil9dL0VAfeVokqRAzcuFUZMfB
         ykeg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nvNxfcH8;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id lx5si26872pjb.2.2020.09.25.19.11.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Sep 2020 19:11:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Received: by mail-qt1-x844.google.com with SMTP id n10so3910596qtv.3
        for <clang-built-linux@googlegroups.com>; Fri, 25 Sep 2020 19:11:49 -0700 (PDT)
X-Received: by 2002:aed:2308:: with SMTP id h8mr2683482qtc.65.1601086308948;
        Fri, 25 Sep 2020 19:11:48 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:45d1:2600::1])
        by smtp.gmail.com with ESMTPSA id r21sm3427488qtj.80.2020.09.25.19.11.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Sep 2020 19:11:47 -0700 (PDT)
Date: Fri, 25 Sep 2020 19:11:46 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Florian Fainelli <f.fainelli@gmail.com>
Cc: linux-kernel@vger.kernel.org, linux-kbuild@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Jonathan Corbet <corbet@lwn.net>, Kees Cook <keescook@chromium.org>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	"open list:CLANG/LLVM BUILD SUPPORT" <clang-built-linux@googlegroups.com>,
	"open list:DOCUMENTATION" <linux-doc@vger.kernel.org>
Subject: Re: [PATCH] Documentation/llvm: Fix clang target examples
Message-ID: <20200926021146.GA1917299@ubuntu-n2-xlarge-x86>
References: <20200925152121.20527-1-f.fainelli@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200925152121.20527-1-f.fainelli@gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=nvNxfcH8;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Fri, Sep 25, 2020 at 08:21:14AM -0700, Florian Fainelli wrote:
> clang --target=<triple> is how we can specify a particular toolchain
> triple to be use, fix the two occurences in the documentation.
> 
> Fixes: fcf1b6a35c16 ("Documentation/llvm: add documentation on building w/ Clang/LLVM")
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

Thank you for the patch!

> ---
>  Documentation/kbuild/llvm.rst | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/kbuild/llvm.rst b/Documentation/kbuild/llvm.rst
> index 334df758dce3..dae90c21aed3 100644
> --- a/Documentation/kbuild/llvm.rst
> +++ b/Documentation/kbuild/llvm.rst
> @@ -39,10 +39,10 @@ which can help simplify cross compiling. ::
>  	ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make CC=clang
>  
>  ``CROSS_COMPILE`` is not used to prefix the Clang compiler binary, instead
> -``CROSS_COMPILE`` is used to set a command line flag: ``--target <triple>``. For
> +``CROSS_COMPILE`` is used to set a command line flag: ``--target=<triple>``. For
>  example: ::
>  
> -	clang --target aarch64-linux-gnu foo.c
> +	clang --target=aarch64-linux-gnu foo.c
>  
>  LLVM Utilities
>  --------------
> -- 
> 2.25.1
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200926021146.GA1917299%40ubuntu-n2-xlarge-x86.
