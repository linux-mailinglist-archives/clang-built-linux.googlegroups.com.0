Return-Path: <clang-built-linux+bncBCQJ3SX65YPBB3PV7CEAMGQENJVN2RQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id B985A3F17A6
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 13:05:17 +0200 (CEST)
Received: by mail-wm1-x337.google.com with SMTP id r125-20020a1c2b830000b0290197a4be97b7sf1448679wmr.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 04:05:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629371117; cv=pass;
        d=google.com; s=arc-20160816;
        b=r6QLo/QIBOyYe8V5alHuoaCZYuBgu1ixu9y11+0rT7kkJr9tIbV1OqYmPVAw2ZzM3Q
         dFHjio125lqCjilg8JgtGVGIGtIkakl2rmCa4bOqsSoYLxI4oXBrZ6LTEK9oZXz0nl0U
         fjGPmOcFg6mhEcxJ2+k60Sm3QkC9XwGEq6rU1kCQ85pYi5ebqTiHa5/9wGp24kAhtJyi
         mjE+GbY5Foc6wqoifsCBH8TUSoLbwsap/hbFD0kRUFQ8p4/FsLuKkev0BttaJZclCerz
         UYugkAo0tShCz27BaFzxY9cQ0zxYPBMPot6LWtx+f/N1ZvRAC/cw/YcanSzmSoovDOo3
         InXw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=UrmDsj+tcMt3/jsDhHaJyufyh7xP+qV8XhMb/c8jAC0=;
        b=EJuqd88lRqgdGUFgTkEugiqegsiTJEahVfmq3krbhwDlAgNrZXfXE6vN1aHSD1O8KS
         n8VMaEcxSlugSekKHEz729e1uz2qUU9YO4NvaLREbaKYrJpwq6x0CBg/rKZoQN473R4g
         4SZwvz3IqUSgB9t2QureGZZstZXZQJMYXmXo3qRjDyPYGCoUJAe7XHSx0tngMApfG3g0
         gAew61IYS0osOn8OwuKyGWAm+C1kexpzpxiNNszSYokEZkyxrwEins0Jmz9m4UZF+K6+
         dLr+o1Drg6FfeuieW+KajVvtC+dGbD+6FBwlOjr6OSpoPdtC9nibrkBmxWezthzfeLtR
         EQ0A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VHrkkTsg;
       spf=pass (google.com: domain of kari.argillander@gmail.com designates 2a00:1450:4864:20::12c as permitted sender) smtp.mailfrom=kari.argillander@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UrmDsj+tcMt3/jsDhHaJyufyh7xP+qV8XhMb/c8jAC0=;
        b=e6tFiOcTZ6LT1z0IR91tyhgEzVF8O84YnSuKwzqCF+RZlWJGQwMlTspjGL8xInQsKU
         6BG2Y7M9qPpeL+h/QIYxR6p6zmLwmj78pT6U6FaFSgciZNz3gIb1dHaX7YbiSjXliCqM
         J9bkqlq+COUtfVZsdIIh7oY4zepBGHtsP3EgSIPxFozIZ9juHNi/gvgcBL6mu0xqzae0
         fX82rU6eVju9EYc0KE9gCZAUTn12NYfHD+kOP+/7VEAnIoy4DguOXIfFCJz3XjeJtJkT
         PAjE/laeg4sM+XLQ9sYo64NYnMPbvoEeXCXJOBtHFbQAJjKczknS+MmSgkfKdZDpKLQ/
         8eFw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UrmDsj+tcMt3/jsDhHaJyufyh7xP+qV8XhMb/c8jAC0=;
        b=JlzyYisQRcNTrM5BQmb50SgFLCMlS6NCqcyWa7gY+3YEf6S9/1clPiFGGvjP/91tis
         rhM07JKKXefnHnfm7Dxp6B8EGbj3hdwGLZF1wDduwqVBcMHNbgndhER3rUPQeOx+UCI2
         8SVRzypDRsFIWrxOBbjXefCPDv40ik2TlFQh+h8s39GYbc3Z9MKX9av2xqEvq9ldU5ks
         k8OmyzSw3ZiMVzxd+/83Moy59wJ3QtT6iGW95zmT1MqzLaaLeoLQYLCLaNM9gxf64x9C
         n3AiVkc//t8WU3lZm2XciZMRUOCn5us/4lnNb1eWwYUJhXEfP19CQjiSMOyuWeXZsRfb
         Q9qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=UrmDsj+tcMt3/jsDhHaJyufyh7xP+qV8XhMb/c8jAC0=;
        b=UeIZaF8MEbNbxacUSDSXTa4co5ZdsnRVnWXt/XjsfZJm6YK8T2Yi0+1ejlj1FOHT7n
         gDAP7GwCy22Eh0tU9DZZcg9esbZuvG7MeBASw7PSKJOCi34I9YO/iw5eT7Ydqgx+Nuc2
         x8D+WP4HcQWRDaEFJCu/oUePYs1JDLQev7FxKKdlfvIeTmZsFdXlv/rv2JJS3MqqhhnL
         1kz+GULTUDjD1EtewL6A8bJJTRYDeS3Cna72d8qC2TCRpvSLNdC75d95+gzQlNfsWez4
         a4VH1uAfUhxy6yN8ihkFmwvU1wR838gCl2lMhC1ESbP1J/TfD+xP9fPqpY3XMZeABq7J
         Zi8Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533z9LSjM/2r/AMF4LiHHDbg8nAHJvBF4SiJILmssK3lAV+1AWrl
	T0NL7pan5DQnV6xnvszfJKQ=
X-Google-Smtp-Source: ABdhPJyvoGzTRTTI6AP0onP231Uy4GKIPF+CdQqhp442mTL1fInQxtYJ8QHwX3uYOqRrHsntMIxSeQ==
X-Received: by 2002:adf:a309:: with SMTP id c9mr3051031wrb.99.1629371117412;
        Thu, 19 Aug 2021 04:05:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:1994:: with SMTP id t20ls3878446wmq.2.canary-gmail;
 Thu, 19 Aug 2021 04:05:16 -0700 (PDT)
X-Received: by 2002:a1c:1dc4:: with SMTP id d187mr13414768wmd.1.1629371116323;
        Thu, 19 Aug 2021 04:05:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629371116; cv=none;
        d=google.com; s=arc-20160816;
        b=r81oSVa1BeukUmNj+s0rBPOUA37zwZHChw4ndQ5ge7k38Ivex3h+L9H6eYgr3VkCvx
         wVytO92kgutvU2K9qmbySjFW+UpF2ChD/o+RcJmuwAdnVgfVLxW2uwhSm7nT7gfTQYdZ
         HuSKuMZAkdzy74JB3fSIiMGK2445QANaECemNyn1gso02FdsPrke31zqWqgTCoYHWmTc
         NBk8Wmkyu+28nyIntspDZ/35I7NHP0WXb/TpiItByfk09ba/FBuWzxNAAzHggQFYAWqE
         pLFJLbjyrE85Fdg1a0fQNTsQkYjwnb3z5YR+pAlX+Y0hlSz9PkAFzfusjgo2WyFnDlLm
         hOoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=dwNmdQpLJD7B+msYQhGKkmB2rXBh0sZ7boDUuFMKREc=;
        b=kpDJgy0z1+lbrjd1/pfGdLgwmblqoWUX4Rq+d73NxIemveOh6mVEN8+CKXJbFTSfF8
         4BCRc/eaFvd+xzE33QDfAzg3vXD5rBGOSDWzZA3H2DZkGias2MYn604M0+epSzXQDHBX
         LTyYTJVBKs2UuPqKhMdLS/KUGdrCzHbbujQVvOwF96bfvl75JaNSipvouiQD5NzmJElD
         m4hv753qjnXeSIaQsXJVgDxApGBQIUqHUUQ0JwEdh7Jv1r58w0gN7ThL6VAX/o8XigJb
         ti0tk9xFTJBmUlxZ0+SdeNvT/9rkN4uR3UTZZFzuzOwusXzGHc69O2qwYV8gHheG3GF9
         cr5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VHrkkTsg;
       spf=pass (google.com: domain of kari.argillander@gmail.com designates 2a00:1450:4864:20::12c as permitted sender) smtp.mailfrom=kari.argillander@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com. [2a00:1450:4864:20::12c])
        by gmr-mx.google.com with ESMTPS id z70si623948wmc.0.2021.08.19.04.05.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Aug 2021 04:05:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of kari.argillander@gmail.com designates 2a00:1450:4864:20::12c as permitted sender) client-ip=2a00:1450:4864:20::12c;
Received: by mail-lf1-x12c.google.com with SMTP id i9so12007632lfg.10
        for <clang-built-linux@googlegroups.com>; Thu, 19 Aug 2021 04:05:16 -0700 (PDT)
X-Received: by 2002:ac2:58d4:: with SMTP id u20mr9822418lfo.157.1629371116056;
        Thu, 19 Aug 2021 04:05:16 -0700 (PDT)
Received: from kari-VirtualBox (85-23-89-224.bb.dnainternet.fi. [85.23.89.224])
        by smtp.gmail.com with ESMTPSA id d4sm270087lfg.261.2021.08.19.04.05.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Aug 2021 04:05:15 -0700 (PDT)
Date: Thu, 19 Aug 2021 14:05:13 +0300
From: Kari Argillander <kari.argillander@gmail.com>
To: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
Cc: almaz.alexandrovich@paragon-software.com, nathan@kernel.org,
	ndesaulniers@google.com, ntfs3@lists.linux.dev,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] fs/ntfs3: Remove unused including <linux/version.h>
Message-ID: <20210819110513.wdyry5rp7orw3s36@kari-VirtualBox>
References: <1629361417-94657-1-git-send-email-jiapeng.chong@linux.alibaba.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1629361417-94657-1-git-send-email-jiapeng.chong@linux.alibaba.com>
X-Original-Sender: Kari.Argillander@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=VHrkkTsg;       spf=pass
 (google.com: domain of kari.argillander@gmail.com designates
 2a00:1450:4864:20::12c as permitted sender) smtp.mailfrom=kari.argillander@gmail.com;
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

On Thu, Aug 19, 2021 at 04:23:37PM +0800, Jiapeng Chong wrote:
> Eliminate the follow versioncheck warning:
> 
> ./fs/ntfs3/inode.c: 16 linux/version.h not needed.
> 
> Reported-by: Abaci Robot <abaci@linux.alibaba.com>
> Fixes: 82cae269cfa9 ("fs/ntfs3: Add initialization of super block")
> Signed-off-by: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>

Reviewed-by: Kari Argillander <kari.argillander@gmail.com>

> ---
>  fs/ntfs3/inode.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/fs/ntfs3/inode.c b/fs/ntfs3/inode.c
> index bf51e29..bb01f1b 100644
> --- a/fs/ntfs3/inode.c
> +++ b/fs/ntfs3/inode.c
> @@ -13,7 +13,6 @@
>  #include <linux/namei.h>
>  #include <linux/nls.h>
>  #include <linux/uio.h>
> -#include <linux/version.h>
>  #include <linux/writeback.h>
>  
>  #include "debug.h"
> -- 
> 1.8.3.1
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210819110513.wdyry5rp7orw3s36%40kari-VirtualBox.
