Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBWGO5X4QKGQENQUPJAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x239.google.com (mail-oi1-x239.google.com [IPv6:2607:f8b0:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id E71CE247DDB
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 07:30:01 +0200 (CEST)
Received: by mail-oi1-x239.google.com with SMTP id 83sf7116134oie.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 17 Aug 2020 22:30:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597728601; cv=pass;
        d=google.com; s=arc-20160816;
        b=gkB8P8d82vOvmmqqwflnljwqZoTpNYveb5Su6u98mDo3i1blUg5IxkPaiDvAmFxyzY
         orgfV8v5mgO66QTbbcvoDRHj7Cnoq3yGcW6rbTs3dhaJZNQlIpOUWsimbsiY8fWHUF57
         tXbUx04PDXlF5RmwfGVO7kZ6mZ0QcZZX3YBPUw8It8CyDb6JdRLTPZv1hum0Mlv/bQkX
         CLf2ur8wzRXl4w3jMPEUrcvTorT+gkgDdUMKA//OsrqpJD3kvAofWKG1X55QxcSlOJ0S
         /yr83kiRPhbGOUGGdQ14UfwV2TkEoA0FZo6fU4sfY+A4U6pxRPh63+7x8Bqb9F8Chv8Q
         XtPQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=z4/wo2a+OV65W7HHnyCXzhlqp8vPx1oBVd+HgDaCCdY=;
        b=EzLyIIjQjRMKDNJVqkVPnR7frFsOsDgEJvu9y4ea7+7LbCbRG4qHKQvX9EO/bi0Jro
         Cn15cwPuXkcMBbVbCaiDfh1lGrSsHHTQbGuLDO+z6OMG7YiB+irimc7ftWZOBCraNsXV
         tEx0zvvfgyTQiDG2p32cRK/nBGgQKcKF4wrWJji2/9qeqnGyEbLj+N1YmR6+wEhe7Ax0
         VU+KySFO7rAAGI/g0/kCF6V51r8S2OoxJ+nB/dVus4ptz72bytWsFEg3ISy69dujiKbn
         kRYB8HOW70IPrjFTeLGdVJe1Ly0NaXfzhkffKEHqRnclI/j68SOsOjNA5SEFaGrl520K
         61Hg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FSpO836N;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=z4/wo2a+OV65W7HHnyCXzhlqp8vPx1oBVd+HgDaCCdY=;
        b=HVM981phPmqpt8D1niBtpPddkXb9C+xwD9Y5uoLBPBGlQHtyfY2MHM4vKcHWKT6AjE
         DbvQzavH1eGiwdD1EHDbpn13hR8uDZ0L/W0XWyYyxuoXEuK5nQKj8nCuIAaWdJJNiwS8
         bZ7eVbCUtJ6wmdC4yiYHWpfF0NG0GqVhUSC/ioiIUTbD/B6cnZvQcfay7igpl36YEPlZ
         MWYIC5ErcBUEF75DNrXFrOXAYMer8QD6FFtr6xpxCneTm+QwK4A/UjpeJ0VZ6OenDqss
         dAPL+BwWJQ9pa7qgCizH18upG4yDA6xcbUj6pgrUn5lOH+yauYO3H/6PThRiVmmx7JBo
         CfZg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=z4/wo2a+OV65W7HHnyCXzhlqp8vPx1oBVd+HgDaCCdY=;
        b=igGFZz8SC0ufQDPr8/bfl60CSzNeR7vcRHTTIUC93HnybzvEOhpTDnbiYK/qDmjMlX
         hlza24uCUd8wxv69mCUGXHRdAkvRbq+T+Uvlu/f/lMqywWKQ7wRHAj6D4JBjj91O4Yaw
         ZslFe2A//H+QE9OhGKp7DbHdzY/Qjbmyv3UKEK1ZHMsKDUd6y0Br+ZnG5CuBQkuEa0f/
         zzet+dN3TH12rB8KUYGuOHAYwyW1TYlwfPVEFUT0diEkGto8619jAwammWdTzQHiIV/z
         wwXkgms4bi2dM2cwLfvUsZ856N98DJIqTk2aZNqA1TmIx9AklZ9xG42iX7mBwBLCOX4I
         /sXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=z4/wo2a+OV65W7HHnyCXzhlqp8vPx1oBVd+HgDaCCdY=;
        b=eLRex0DogtGTDC4fYE4oH9fwUAqFtyFTd03OCdbW37/F34UQWkt8NuhvRhmvES0jby
         ypKYtWHpMWbk8oTjgQxhOZXNnxXorgI3GTGuJSwluEuNyxWB9cLCj9+rQtAjw5rox4Rp
         hHLHduh7mibRuBLJli7fO7tvs49zKpNGGePLOioqQtRETv6096JwYQZiu45mEEq38PX8
         WuSK2zt+v6vwcLGHtb8419o2sELb+t8B9iYlURxEuV29v3aZoAuMwVgsyDn7/gPhs+in
         VqzlHT480kdrR9Hwz/8Wq2m0hQHKvW1Yib/IZdNv2jasTCdciparfJ6QL4Zqsl7St23S
         Ytdw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532ElZo1xUihW73Eg89jzzKDDJjE+UgQq+68yYjJI1qkn633FOj9
	PTD3YlGTRQeiJCG6PEosjP0=
X-Google-Smtp-Source: ABdhPJwltWNtY0/jY5zaAW+K+rQkUWwmiINneZZzPWwv2rF8OhexOFUM2BkSENvMbJH8o1g7Pj7heA==
X-Received: by 2002:a05:6808:b03:: with SMTP id s3mr12379057oij.19.1597728600912;
        Mon, 17 Aug 2020 22:30:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1f31:: with SMTP id e17ls4161203oth.2.gmail; Mon,
 17 Aug 2020 22:30:00 -0700 (PDT)
X-Received: by 2002:a9d:6215:: with SMTP id g21mr13499671otj.46.1597728600483;
        Mon, 17 Aug 2020 22:30:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597728600; cv=none;
        d=google.com; s=arc-20160816;
        b=s1NHyvGXzs5UxvYJmYxZNz9grK2wrpLWLFm3lFjumXbmynWM7vZMS17VS4XujutZY4
         L3ryYaZ8w67KAEpBqVYtseb1OW8gjja8BZADvmrSuABhAaSJsRjWHApljbo48RO7avmC
         szGtSfoB8XQHkD0VisV1O4zgcjScXktXCKCAJRU82+sz25a7voahxvjHMGxfrO0udcyn
         tku6O3b4VxGCvDgBzg3CLN3hQZLHGT9yPvLgs3ype4dDj+4yZfgTWvxPwIfyXc9oeU2r
         u+stujBwKewj3J7dUWAyrvWXr05zXgCLGqm+/9bUYKsHPj37h2CAa9PZPEAE4m0FBo4C
         cpug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=clmrhtEHnkuE6LcwVqYnlSll443zoXYKCOx0MPBjbtk=;
        b=0983SR/0lMDY3NoPq0QdpDLL7/KgqWXmN97vZwMSAStRRTm72OTWhq1zpw54uf+Ths
         YAl6afFEz/xusRVg2ic+wzFiIzC269TO2MBo0No4QS4Pl9457C4sKQF8YPFO6vDdINe4
         VFX8poCF57IrPrEVS0d7CbDWi/TQM+2dyO/QNUOUgcn+DS/FEjzoUGNt2OefeRx0NmMc
         /HUvZcejJ571SPXGOGMBJJEyvP33q6kTsoLEFvOl1Twlc4FOQBQtOTgpKHm6Igc1/GcC
         4+d801KFUgZENEw4gF3WFxgS0SQ3sV574Cp4OlZARQhQQsOC0ucBumdvOlxUgeNOGG/1
         nzeA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FSpO836N;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id w1si955744otm.5.2020.08.17.22.30.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Aug 2020 22:30:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Received: by mail-qt1-x844.google.com with SMTP id e5so14303146qth.5
        for <clang-built-linux@googlegroups.com>; Mon, 17 Aug 2020 22:30:00 -0700 (PDT)
X-Received: by 2002:ac8:1c3:: with SMTP id b3mr16860962qtg.240.1597728599880;
        Mon, 17 Aug 2020 22:29:59 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:45d1:2600::1])
        by smtp.gmail.com with ESMTPSA id o48sm23401139qtf.14.2020.08.17.22.29.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Aug 2020 22:29:58 -0700 (PDT)
Date: Mon, 17 Aug 2020 22:29:57 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Brooke Basile <brookebasile@gmail.com>
Cc: danil.kipnis@cloud.ionos.com, jinpu.wang@cloud.ionos.com,
	axboe@kernel.dk, linux-block@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] block: rnbd: rnbd-srv: silence uninitialized variable
 warning
Message-ID: <20200818052957.GA2253299@ubuntu-n2-xlarge-x86>
References: <20200818040317.5926-1-brookebasile@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200818040317.5926-1-brookebasile@gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=FSpO836N;       spf=pass
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

On Tue, Aug 18, 2020 at 12:03:18AM -0400, Brooke Basile wrote:
> Clang warns:
> 	drivers/block/rnbd/rnbd-srv.c:150:6: warning: variable 'err' is used
> 	uninitialized whenever 'if' condition is true [-Wsometimes-uninitialized]
>         	if (IS_ERR(bio)) {
>             	^~~~~~~~~~~
> 	drivers/block/rnbd/rnbd-srv.c:177:9: note: uninitialized use occurs here
> 		return err;
> 		^~~
> 	drivers/block/rnbd/rnbd-srv.c:126:9: note: initialize the variable 'err'
> 	to silence this warning
>         	int err;
>                	^
>                 	= 0
> 
> Silence this by replacing `err` with `ret`, returning ret = 0 upon
> success.
> 
> Signed-off-by: Brooke Basile <brookebasile@gmail.com>
> ---
>  drivers/block/rnbd/rnbd-srv.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/block/rnbd/rnbd-srv.c b/drivers/block/rnbd/rnbd-srv.c
> index 0fb94843a495..f515d1a048a9 100644
> --- a/drivers/block/rnbd/rnbd-srv.c
> +++ b/drivers/block/rnbd/rnbd-srv.c
> @@ -123,10 +123,10 @@ static int process_rdma(struct rtrs_srv *sess,
>  	struct rnbd_io_private *priv;
>  	struct rnbd_srv_sess_dev *sess_dev;
>  	u32 dev_id;
> -	int err;
>  	struct rnbd_dev_blk_io *io;
>  	struct bio *bio;
>  	short prio;
> +	int ret = 0;
>  
>  	priv = kmalloc(sizeof(*priv), GFP_KERNEL);
>  	if (!priv)
> @@ -138,7 +138,7 @@ static int process_rdma(struct rtrs_srv *sess,
>  	if (IS_ERR(sess_dev)) {
>  		pr_err_ratelimited("Got I/O request on session %s for unknown device id %d\n",
>  				   srv_sess->sessname, dev_id);
> -		err = -ENOTCONN;
> +		ret = -ENOTCONN;
>  		goto err;
>  	}
>  
> @@ -168,13 +168,13 @@ static int process_rdma(struct rtrs_srv *sess,
>  
>  	submit_bio(bio);
>  
> -	return 0;
> +	return ret;
>  
>  sess_dev_put:
>  	rnbd_put_sess_dev(sess_dev);
>  err:
>  	kfree(priv);
> -	return err;
> +	return ret;
>  }
>  
>  static void destroy_device(struct rnbd_srv_dev *dev)
> -- 
> 2.28.0
> 

I don't think this is a proper fix since the root cause of the warning
appears to be that we are ignoring the return value of
rnbd_bio_map_kern. Should we not set err to that value like this
(completely untested)?

Cheers,
Nathan

diff --git a/drivers/block/rnbd/rnbd-srv.c b/drivers/block/rnbd/rnbd-srv.c
index 0fb94843a495..1b71cb2a885d 100644
--- a/drivers/block/rnbd/rnbd-srv.c
+++ b/drivers/block/rnbd/rnbd-srv.c
@@ -148,7 +148,8 @@ static int process_rdma(struct rtrs_srv *sess,
 	/* Generate bio with pages pointing to the rdma buffer */
 	bio = rnbd_bio_map_kern(data, sess_dev->rnbd_dev->ibd_bio_set, datalen, GFP_KERNEL);
 	if (IS_ERR(bio)) {
-		rnbd_srv_err(sess_dev, "Failed to generate bio, err: %ld\n", PTR_ERR(bio));
+		err = PTR_ERR(bio);
+		rnbd_srv_err(sess_dev, "Failed to generate bio, err: %ld\n", err);
 		goto sess_dev_put;
 	}
 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200818052957.GA2253299%40ubuntu-n2-xlarge-x86.
