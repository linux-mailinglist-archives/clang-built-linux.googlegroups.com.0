Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBA44UD6AKGQEGZ2A4OA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 55A4D28EED1
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Oct 2020 10:53:25 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id j207sf1408267pfd.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Oct 2020 01:53:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602752003; cv=pass;
        d=google.com; s=arc-20160816;
        b=WZebU9g6WomR8TN+34jgVKFkaySo/gKNvkcaxWXm+hP5U7NVDR/018FFSw7u33fZKA
         7n5GpqeqZtQf3hEwxW/NW2N1gljaKKo77JOtTbuKfKb3UEv9tWrXsAkWpSgZYCSQ+caA
         +wvN3fylLNfTyP+E7xvQR32FLM/CinCwC9lg7VuNyerVA0WULQTKML9ghDtmzy5+AtLM
         5eZBAAOvddzaU8eFVCBdgI3JqeWqM+vmjBHoUyk6xWnoxZv1JRKtCW3de5FLkQZYF7Cp
         UG0WY+9SdX+KyREc1mXVuxAYPc270I9UHu1OLObxmM36c9HEDYdzmZ135Oo5OPTn6YZk
         WBVQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=JozjeXKCQbOLh+tK6iZV7GjGg0wqOiWtA5v800L1IWk=;
        b=mdvocluBQm9PrxdtRij2I5igrxPpqD8e3tM8UdQRPd9MFpM+vHB3hVwRmWja2ucDti
         cIq3txaWwIv8QN+yeM6WE+7ZJZAyXVejvixfaFEv5e3sBKs7caSQT7nj1/KxvYCR7D/2
         K8Nxun9giNaDXVZuPHs6DsqZc2gtt1KkDelE9yVUO8gNvRyclj6BZYLAVSOfiQkC39q4
         2pE74hordU6+PimFRg8Mph/DZOCKVPQRyq98qBZXXYxU6l71rWF++d2yGjSqWYHxAY4B
         rSCvcJudwRMiRD2ZSjdDiDvOL3IXPGeisWvXMhzPlvMUkL/dDk2myRkBlxEk+yD078+9
         00DA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="KRq/Jr3X";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JozjeXKCQbOLh+tK6iZV7GjGg0wqOiWtA5v800L1IWk=;
        b=EbbH+DPuEm8P9ivYf+LE4GOOHHGX8yyMQoKEcqCBVnl2evirmJ3my0vwK16SeYH6J3
         Mwoz4bNRhwnu/jAbKv1h08Ti2mCsmgnAry77vbMz960MYGzR/xgd7RT/mtm+ZalbgMel
         M9hHAEFReCH04Cnuz8ixrEXbjdRgtaVvWQmIndBTBPzx4wwBNaghIRfqwrmGyDTGaVkP
         XlsUomeTi7o/UDjnx1yqpKme6QneOZ4U+eldp9IjXou/Ct3+EQhAWpNwyZAFDnq8sOJ9
         d8vkCiVZdDRkiSj8usWeiw6e/B7ejA/IlxhIPkX5b1Ff6oHgOlXBjFqAw8ccuiwPB7RH
         wyTg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JozjeXKCQbOLh+tK6iZV7GjGg0wqOiWtA5v800L1IWk=;
        b=UeNLZwS0Q2mPhF5uRpJkyJJMuidHxKm2mCxuRNtgoiWr3PQI/kQIMD6xysENKxFbdS
         rM6UfnIiFbaZhovJshHVJB9DcKTBciHeIkuuPA1ecuWRoS+YzKx3hvHKhdZiKLRAyD8L
         zvK+bPhvuU7lJ9GDrU8S6Hoc0DThIdJ69IbspkrzvWjaYlJ8rwyp6Qk5yMX2rhR+JjPD
         uq2M+81xWXeKc21r8/OCOc18ca406s8fz0sMfru669YZhpUP4CWntOQW5Pt+otyYkTML
         4uW9Y1CmNFd+qMjgG/k8kttsMNXZJXJjkau23L01S+zfpQ+DFavVpoJ5xgGNjX0sF/jz
         RC0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=JozjeXKCQbOLh+tK6iZV7GjGg0wqOiWtA5v800L1IWk=;
        b=fWyszsGtzvEYOyzvzFxvd0za5Z2VDjLN8t1vOU15IMY6fxhbnnkSxt+Whv+JeE+xfJ
         G7jD6falTqCmDguVlYSarGxHRHK38vScn/NfsJqiZBNBSDYYg4ICZHHBpVTxodQBNn+e
         8BufNxCrUYJ1OR8SUgd7i5fEUqOfKJeXOzhnZtxIU9QISt8ORV6inpG70O3nHb3A2MpR
         yYtPW0IFC//uJUHLBAVjm2sECFUSYuT9H4lJQvoSAgeEB7WzfarvEpceIiEaWrNXXqWV
         WBEsDFKouzYj94fg9+b8hhsCEQ7meWmc0CMXQTD7YSYT/EU5zvW6liwUc/eZn8ENu4Dp
         ekhA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533t+dmsP4eYEo2il/CqAz8PxU75OQV6vyZRFFVSZBXzs/vjPTky
	XRL1gA0oIbcLD5POG2Za8L4=
X-Google-Smtp-Source: ABdhPJx3LnGH9EzhzHResYLmLwbyCWoJZxh38QmeWiGk0SYvytTUQKm5pLX1E8kRydaLEl0mM6VPiA==
X-Received: by 2002:a17:90a:7788:: with SMTP id v8mr3440106pjk.8.1602752003364;
        Thu, 15 Oct 2020 01:53:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7786:: with SMTP id o6ls1008889pll.0.gmail; Thu, 15
 Oct 2020 01:53:22 -0700 (PDT)
X-Received: by 2002:a17:90a:1188:: with SMTP id e8mr3351357pja.61.1602752002877;
        Thu, 15 Oct 2020 01:53:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602752002; cv=none;
        d=google.com; s=arc-20160816;
        b=fzLbUg8mlMtO0OXgGSh+WSMqIGIo3ao3y8smmhyxSL1+LXcA4wyd0EHVvz8+yIdnmJ
         ZdfwaHbMvjU+PkKadnv7iSiuB+w+ckXn5FR65kcu2L0tuIyfeN/ZXs0oIHhieapWu+oQ
         dBnknpwD9BrbgpCKD73YFsq0p/L3+5bYrARTM3uTbgPrryDVveOFWA3GdfDkKOoUwE+w
         /JbbPHqY7Ed9KXythf3S5YUooLtTfrxAFNcvV6XNOzc9fdm1vVykLkKOJoM2fEAuwp7T
         lIe4ev++H28vJpaYKUemspEBce1Vmdkm63aITI1vXOJvqtZpva9rmLbOtKvbUeKnNubR
         1+YQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=jjiCvGcCqX6kxSFTlIIsiLCTdISobZ1LNpDvp+votn8=;
        b=jDvSwKiaNeIvSGAGpvmEboeF7SHegKRDl0PjC9KVH253UHce3Rl24eEf003mqFMifz
         s8QPpjaSQeLXvZERMGPJXlHuqatMk8Nv+EFfNJcd17GLcqLjP72jJLkB5poZ5NEqZ1aD
         0vb9Ji+MqHr62zenRRzQ1YOQv4G1Hb4FzrObE3vzf37mVg+s5o52pMWKUYQ5UOkN26nG
         BQ7MoWl+wBwB4H+nGuyoPQI+QHKRuR/PRXGTLNn23LMBPEWOJVtk/USeJ2TSnz31dRj9
         uj1i5lh4YYS49KRaHf8lgsicTx+tO4BC8CpnQ+oMYHuiRR6ik49huxTZJw81VbpG9HrD
         cVcg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="KRq/Jr3X";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd44.google.com (mail-io1-xd44.google.com. [2607:f8b0:4864:20::d44])
        by gmr-mx.google.com with ESMTPS id t15si116584pjq.1.2020.10.15.01.53.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Oct 2020 01:53:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) client-ip=2607:f8b0:4864:20::d44;
Received: by mail-io1-xd44.google.com with SMTP id q25so3356212ioh.4
        for <clang-built-linux@googlegroups.com>; Thu, 15 Oct 2020 01:53:22 -0700 (PDT)
X-Received: by 2002:a02:a0c2:: with SMTP id i2mr2633811jah.92.1602752002140;
        Thu, 15 Oct 2020 01:53:22 -0700 (PDT)
Received: from ubuntu-m3-large-x86 ([2604:1380:45d1:2600::3])
        by smtp.gmail.com with ESMTPSA id b9sm1914868ilq.51.2020.10.15.01.53.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Oct 2020 01:53:21 -0700 (PDT)
Date: Thu, 15 Oct 2020 01:53:19 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Pavel Begunkov <asml.silence@gmail.com>
Cc: Jens Axboe <axboe@kernel.dk>, io-uring@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH 2/2] io_uring: optimise io_fail_links()
Message-ID: <20201015085319.GA3683749@ubuntu-m3-large-x86>
References: <cover.1602703669.git.asml.silence@gmail.com>
 <3341227735910a265b494d22645061a6bdcb225d.1602703669.git.asml.silence@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <3341227735910a265b494d22645061a6bdcb225d.1602703669.git.asml.silence@gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="KRq/Jr3X";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::d44 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Wed, Oct 14, 2020 at 08:44:22PM +0100, Pavel Begunkov wrote:
> Optimise put handling in __io_fail_links() after removing
> REQ_F_COMP_LOCKED.
> 
> Signed-off-by: Pavel Begunkov <asml.silence@gmail.com>
> ---
>  fs/io_uring.c | 11 ++++++++++-
>  1 file changed, 10 insertions(+), 1 deletion(-)
> 
> diff --git a/fs/io_uring.c b/fs/io_uring.c
> index f61af4d487fd..271a016e8507 100644
> --- a/fs/io_uring.c
> +++ b/fs/io_uring.c
> @@ -1816,7 +1816,16 @@ static void __io_fail_links(struct io_kiocb *req)
>  		trace_io_uring_fail_link(req, link);
>  
>  		io_cqring_fill_event(link, -ECANCELED);
> -		io_put_req_deferred(link, 2);
> +
> +		/*
> +		 * It's ok to free under spinlock as they're not linked anymore,
> +		 * but avoid REQ_F_WORK_INITIALIZED because it may deadlock on
> +		 * work.fs->lock.
> +		 */
> +		if (link->flags | REQ_F_WORK_INITIALIZED)
> +			io_put_req_deferred(link, 2);
> +		else
> +			io_double_put_req(link);
>  	}
>  
>  	io_commit_cqring(ctx);
> -- 
> 2.24.0
> 

This part of commit 9c357fed168a ("io_uring: fix REQ_F_COMP_LOCKED by
killing it") causes a clang warning:

fs/io_uring.c:1816:19: warning: bitwise or with non-zero value always
evaluates to true [-Wtautological-bitwise-compare]
                if (link->flags | REQ_F_WORK_INITIALIZED)
                    ~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~
1 warning generated.

According to the comment, was it intended for that to be a bitwise AND
then negated to check for the absence of it? If so, wouldn't it be
clearer to flip the condition so that a negation is not necessary like
below? I can send a formal patch if my analysis is correct but if not,
feel free to fix it yourself and add

Reported-by: Nathan Chancellor <natechancellor@gmail.com>

diff --git a/fs/io_uring.c b/fs/io_uring.c
index 66c41d53a9d3..28b1a0fede3e 100644
--- a/fs/io_uring.c
+++ b/fs/io_uring.c
@@ -1813,10 +1813,10 @@ static void __io_fail_links(struct io_kiocb *req)
 		 * but avoid REQ_F_WORK_INITIALIZED because it may deadlock on
 		 * work.fs->lock.
 		 */
-		if (link->flags | REQ_F_WORK_INITIALIZED)
-			io_put_req_deferred(link, 2);
-		else
+		if (link->flags & REQ_F_WORK_INITIALIZED)
 			io_double_put_req(link);
+		else
+			io_put_req_deferred(link, 2);
 	}
 
 	io_commit_cqring(ctx);

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201015085319.GA3683749%40ubuntu-m3-large-x86.
