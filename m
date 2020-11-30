Return-Path: <clang-built-linux+bncBD6MVSMOWUJRB3VKST7AKGQE3QLAPKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id B96952C88A1
	for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 16:53:19 +0100 (CET)
Received: by mail-qk1-x73b.google.com with SMTP id 141sf9962628qkh.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 07:53:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606751598; cv=pass;
        d=google.com; s=arc-20160816;
        b=twXJnLiqsCr1zCqv2DxZqnzCa6+L27jUkrug0AOaeYp3vT6wW37LCr2PEqRiNph9o5
         LrskKdUPQu3f7ooqPrEW+y5I+x4vERdh0VFFauhVZ/eeho8Ak6xq/tDuMOziodzyj19y
         THQeO6EShiCci12dDMMGXj/ylbSDViUrTxLu03+wSgDbpyRMiLfsDghMOmfiJJJk+y2O
         jGPePrdOJx/4ylVijjwN1gYN6yxn5W7XJsPlh9iFd2eJ+C2VcWeERu4PoZBq+eaft0da
         JG5GjyeDTtjPMVXMv3bP4wG2sedXIrYBI9iWG2PdsaKfJ3lJjvVx098EBdI93mhQA48Q
         YDBA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=pmpBbv46iyG3Yw344JCHkq413E6GFta/vBMyXxGkrxY=;
        b=L78TFDqilaiP3IruE4RucTH3vM86u3m1KA2KDTLFF/olSNfrRsXJVBDPWS+A/OU3ED
         qW8fUANPLN9JwWqQSmVtvirY4cchzbPxA7tnghiUwjd+e9IOe80wtUwETz1VA1h2iUBq
         Q6Q1KnVQ4i/0tT9osDisjjLEduILTzCyASNR3AIJp7yj7r7a9PqgLET+j/dIpOeyab2U
         zQ76L1EsFXMGc97tmhcAjvCsgCAjoC1m4XLfPV8M1nR6xevGo6JrfFc9mAhymesA/dkM
         jRTl/KELi1LjNjHKjymcs4Znfe7c1nHAqvO6Txji4dcrnoBNFifQx5IaD1BcgN5ArB1D
         xFxQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mjqR2XRw;
       spf=pass (google.com: domain of sergey.senozhatsky@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=sergey.senozhatsky@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pmpBbv46iyG3Yw344JCHkq413E6GFta/vBMyXxGkrxY=;
        b=GnzJt2UXMJNEPoelxzUhcrd5NLyiS8t6mwqKolkBSrFnAPIZwpabyK8OiN1+FUSfT+
         TyOd0jRWk7PD0ORTOT3oF3TNGz1dL0xrR6QNV0LCgBp+OX8RYUbWL0OJYSTfhwfy8YwL
         SK9jFASB78R1uLYJcmXwmX/8Q7GFiy1R0a+KAsppqZ6DbH8ZpHJ403+ntmP1jJJrj1lC
         YvFIZfngHRLz6kV8nuqWX7xc811lGlVfMulryPkQesi5MHN6pKiZdcep93euSmBFPfMs
         CgDUfXQOBGAeocLb9K0fAP354Vrr4b9DwQDIHKwpwKE9KFSKSE7bfjZDKCakhcznrJX+
         dw7Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pmpBbv46iyG3Yw344JCHkq413E6GFta/vBMyXxGkrxY=;
        b=YWbAFAFwDcvb4zHbATbjKgJUwSjKT+8XLaZbjx5CyRSSoWKNDvTKLOFBzB42Yk4b7m
         xVe6aKl8IL/k7oS1Gvv+scjZBmx/VEbYIH9fI7xbBA4wHd44EcOrFvAwkhJlXIo6RU2I
         B7agtwNCy9G6Q+nsSkNW1Pb2bLufRdRbjrMDVu2up/v5SxMPUHIRmqZJxO6viKh0D3/K
         GQAZpu1ecMHemj3JMm2IfsVgZp9bcwEXfnKH44ahtKs77dfdfLoAwUmlZJ8WJh5/6Hsr
         ru5lPmfI3VnQ53+TBUgQyyJTRAjceES5VbmoFCtWWos9j7u5C1Bh5OqttEFeewrE0i7K
         SzRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=pmpBbv46iyG3Yw344JCHkq413E6GFta/vBMyXxGkrxY=;
        b=kI8gVOyedRRqIWShpuBf2v7xVXeUb8zgqSmlsRfG69g2V4a7mcjVVs8Ru9Fbg4Z9vf
         M4wv5BWCUWJn5m3y8zURf3xpqV/R/aDlD7Lns6i4nax5Fh2ddA2223cKL9VOTI10/ohu
         j0OWqO8VMXVFPBebQhj8hQAu71pOU+S1Rn5j4i1EdH2t2N4wyk6kHvuBHhBcovu2GQkb
         PhO3egeJcf0UAmp3S7DBYpJmegOb4pX3TN/0bX6lwwF6GsBk2GeU/p8tKrz1D9e5v7BC
         FTeEkfrLx/8C210I5QNcxDtnu5S84w4zQgvM0L63ZspWO2fEK15RX3T3GXG5j6iC38+9
         JoWA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533iYkFyUbBMaRoiViOjElQdpzCr72M2nCPOvlgkvKkkg6QHio1e
	4YyMwqqtI0s5la/l/b6yfQo=
X-Google-Smtp-Source: ABdhPJxk2k8CxWyNOjQoIez8nUwSKsu71+8N6wv4+SPs38OfUTIZ3e7/sfBCOC/PuNiKHmW8lFx4xg==
X-Received: by 2002:ac8:108c:: with SMTP id a12mr4107207qtj.275.1606751598503;
        Mon, 30 Nov 2020 07:53:18 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:6717:: with SMTP id e23ls4674365qtp.7.gmail; Mon, 30 Nov
 2020 07:53:18 -0800 (PST)
X-Received: by 2002:ac8:6601:: with SMTP id c1mr22712696qtp.106.1606751598066;
        Mon, 30 Nov 2020 07:53:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606751598; cv=none;
        d=google.com; s=arc-20160816;
        b=kJsluTqx0TEaSlMJxKXg7B49q7vg8dNwgf+6VCHXURd0TxSaJhalg2oKG/j3tpMsJ8
         QZoIYg8BGDmDHQkU+QgjxaL8YMm5UUFm5eYnNRr6xV+OMhoOLjtsln5IRU9I9xxaGrY+
         GquB0ca4znwfwSNpQUbMyhEzxKpfq4xKE/QvJjO0aRq9quGIHEN/ssKE7uo29PZ7g+8h
         E3h1AxOjjX0OfFUS0xUP3oehUqkWugn0S+/q5K1/BAF5vqQkQRXhfebBYgK2YC0xHx5o
         YYJVmlE3+wS8mtGqHm4f+YOqnqpnvaYgXI0tK6V3k+MI+tPKRG1pMv9tMfTwDcmpFSan
         5Ndg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=XL+gEtLKF5TbtWhyDLeu71fgcb40bHQjbGEt03J+KJQ=;
        b=pXO5QhXyU1MpHke1E36QCY80LdI49dnT5bkyL5VSDODouvMKQi3bbxTYeemPnrrLcK
         bK3G1x+6hRfBZEjNIYsIHhopA0OYtLpJsLTcwi5OAbJe3h2egfI/ZoRytP11QE8oxyMA
         RkP2XkGeOu6xMso077E4+NTxWXZZSv4uWc/G5bpdln+QBQcrh133d9FOFYJrGz75BZ29
         6huCjtpNOxjPebBActKs2CCRT+W6YyoC4I1x5XaC3YUHBDjWoyVLk4TwNFeT2+JK+C+E
         8kB45NuC1gxCz58GyBGZphMwlT3nUn+GQUosGiYCgXHbkV9v6n8x5xol/5V4tdjgExx1
         RlcQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mjqR2XRw;
       spf=pass (google.com: domain of sergey.senozhatsky@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=sergey.senozhatsky@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id o23si650330qtm.3.2020.11.30.07.53.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Nov 2020 07:53:18 -0800 (PST)
Received-SPF: pass (google.com: domain of sergey.senozhatsky@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id t12so1618472pjq.5
        for <clang-built-linux@googlegroups.com>; Mon, 30 Nov 2020 07:53:18 -0800 (PST)
X-Received: by 2002:a17:90a:4405:: with SMTP id s5mr26762160pjg.219.1606751597508;
        Mon, 30 Nov 2020 07:53:17 -0800 (PST)
Received: from localhost ([2409:10:2e40:5100:6e29:95ff:fe2d:8f34])
        by smtp.gmail.com with ESMTPSA id m11sm17625628pfa.24.2020.11.30.07.53.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Nov 2020 07:53:16 -0800 (PST)
Date: Tue, 1 Dec 2020 00:53:14 +0900
From: Sergey Senozhatsky <sergey.senozhatsky@gmail.com>
To: Petr Mladek <pmladek@suse.com>
Cc: Lukas Bulwahn <lukas.bulwahn@gmail.com>,
	Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	John Ogness <john.ogness@linutronix.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	kernel-janitors@vger.kernel.org, linux-safety@lists.elisa.tech
Subject: Re: [PATCH] printk: remove obsolete dead assignment
Message-ID: <X8UVamNsa+8fwnAL@jagdpanzerIV.localdomain>
References: <20201130124915.7573-1-lukas.bulwahn@gmail.com>
 <X8URvRhAB2AE4DZT@alley>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <X8URvRhAB2AE4DZT@alley>
X-Original-Sender: sergey.senozhatsky@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=mjqR2XRw;       spf=pass
 (google.com: domain of sergey.senozhatsky@gmail.com designates
 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=sergey.senozhatsky@gmail.com;
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

On (20/11/30 16:37), Petr Mladek wrote:
> On Mon 2020-11-30 13:49:15, Lukas Bulwahn wrote:
[..]
> > diff --git a/kernel/printk/printk.c b/kernel/printk/printk.c
> > index f279d4fbd9dd..6e4e38b7cd91 100644
> > --- a/kernel/printk/printk.c
> > +++ b/kernel/printk/printk.c
> > @@ -741,7 +741,6 @@ static ssize_t devkmsg_write(struct kiocb *iocb, struct iov_iter *from)
> >  			if (LOG_FACILITY(u) != 0)
> >  				facility = LOG_FACILITY(u);
> >  			endp++;
> > -			len -= endp - line;
> >  			line = endp;
> >  		}
> >  	}
> 
> Yup, it was used to write the trailing '\0'. But it is done earlier
> now. So, it is not longer needed.
> 
> Reviewed-by: Petr Mladek <pmladek@suse.com>
> 
> Best Regards,
> Petr
> 
> PS: I'll give it few days just in case anyone else would want to
> review it. I'll push it then unless anyone complains.

FWIW, looks good to me
Reviewed-by: Sergey Senozhatsky <sergey.senozhatsky@gmail.com>

	-ss

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/X8UVamNsa%2B8fwnAL%40jagdpanzerIV.localdomain.
