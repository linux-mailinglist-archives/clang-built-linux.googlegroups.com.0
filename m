Return-Path: <clang-built-linux+bncBDZKHAFW3AGBBP5DST7AKGQEE3V4UDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 84AC12C8825
	for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 16:37:36 +0100 (CET)
Received: by mail-lf1-x13c.google.com with SMTP id m12sf6872468lfa.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 07:37:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606750656; cv=pass;
        d=google.com; s=arc-20160816;
        b=mQUx5A4WfBjBNRnTVWj4La45VnoY1Db2FmAxmeH4kBGqIxNR12ZBTOm16VLDHbLa78
         FZap/G+O5iD+3t7WFrlTEffNUgCMkdcPmGgvcW9YTtt0TVkaHORc7FmgGf3aDYwaB5W/
         XB+DP9SuvnPzSRMRsbtDHB1ia10fcLVAXnE4t5T9/t3r3lwchysQ0t9wLGOXeqeYJCON
         icIS25YIFmnH9FdAg59DprYCyQCFYB6cwFSRqA7haJEALhYx8ZTxbS/aeOUpbFN7e/HU
         YWS+ic9F1gXaX3R6QvFgPk9ue8aBN+YopEmIHM6awCGVuvzFggLqNgRT/wAQbMoPPgGz
         gNwg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=srIoGpRQyATCD60OQtJXv6F9G+jZGsSDCVKesJN7yZg=;
        b=vkR9ss7QO4CgjOVfxYDiKqHQoZqh5fbNC2pfv/Bf6+YdBJ+ViOAZ3f9GbLfYxTi40X
         txWg4cqdBAeAsvev4uzcaSWXwjaIU2EGRJ5c/z5n5C0nbXpHZ4hvoJiPbkLTgeFitGzl
         KbH7/qBl7dcxiAMO4mw3C6pf5e6TTRSv/buTakRJNkaHQQiwGNXpxrEIbL1r+KYVdT7B
         KpWPpg370U5BDfQKc6Uj7vmyBWshBExBzsnhuR2bfGGYBkxRWiOl4q/UIebUWsAJ1Vt9
         cEFIQXTizR4bWJKku8S1MLRlkrOZm7JLdtqvJUy/4BIsubo1AHQ8Xc5uE23iZIFBzzrs
         C+Kw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=eUXvSWAP;
       spf=pass (google.com: domain of pmladek@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=pmladek@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=srIoGpRQyATCD60OQtJXv6F9G+jZGsSDCVKesJN7yZg=;
        b=ZmV7RT/eq2E7oea57sYvhP95b+cW6/14VAW8sr8PdjXm+b18YbnS4cioKwnCyRq4YU
         3cVfs5PjhhguRYykPsPF69nFQEH8putqE0xIq+TxO6vrgmbJ7Z5hjdtlUucd82ugLEXY
         hf0gkPBMl+1UJ0vCgYkLE4CViaJR2K8qLd4K+oqZJZUACVgksSgucOdwRNLl8kli5STV
         j2WIyrR60wQbdp2zZy3pW42KdiGc41x7PYdQK1lEv8Oe8BOvsBj/42wP1TkJiCPTOzTw
         isjH5/kVc+RuqxWz+oj+eJcgF5neBq7U2RJ1iUQ24WReKBJXqfSYw+Di+SICPsa63XTW
         njDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=srIoGpRQyATCD60OQtJXv6F9G+jZGsSDCVKesJN7yZg=;
        b=elX2NfReTCtXebq1Iugp+Ew+VxAlzOxnzXn07TxyDRQqJMYF3gsMfPKLbHfOvTzecn
         172qf4KNfKfJl9NJ1c0BHGW0+yE7bzfNbjF2Z1x+jPWUgf5+c0GKgCbiea5uLnDp7AuW
         KoOSj5y8ipzzLN4VR8//caCV5Ng828PMvgo2UZvJ/NbRhHWmyFSQG0dufhceidfnxC42
         12NlR++oB2bUxYqVX+JYNyw7vFpcPp4iVzJR7LtdiDxY4+B8bE3y5qbCTQcHUNP/YCiy
         9ua6emdbon+HocL9FyXoIO1as5c8WNtIl1/wePhpa0qEsS4/oHxhw8JgW1mf1bYuags5
         Iz2g==
X-Gm-Message-State: AOAM532+FM7DuhjoQhO13usavLOGL9fDXiP6LITwYIMfeN/8C0uM+HH1
	XGq9+3UyXLltBG3JcoKOqIQ=
X-Google-Smtp-Source: ABdhPJw2WdgFMbDqmN9hVsVtAIVQ+gEYc+hYfVIV6/aWN2SSR257sWxXpEzjm5nN6D+nZfEpwmV9Nw==
X-Received: by 2002:a19:ca49:: with SMTP id h9mr9166511lfj.602.1606750656088;
        Mon, 30 Nov 2020 07:37:36 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8991:: with SMTP id c17ls2149530lji.5.gmail; Mon, 30 Nov
 2020 07:37:35 -0800 (PST)
X-Received: by 2002:a2e:9b90:: with SMTP id z16mr10408778lji.433.1606750655137;
        Mon, 30 Nov 2020 07:37:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606750655; cv=none;
        d=google.com; s=arc-20160816;
        b=FGPCqduafWZIzCYVjldITrTTru6Smg9hvuURB2HmUItZO9qxdmGgWNJ8+K3ytCPCbd
         YvBTCS3zl/1PeX+0VhohWkxMVFzTo9KR8A+hUP0TEVgG99hk1c5xTyB34IzLW/Lic2JZ
         /MdYsZN6owrdcX4GMtZvmpWeUEYNXV20WbSK0BtPFAGB7xKbSrKR4tareHSSD+6pOrGA
         IjDvrrPlZ+0NY8X7av2Do0qWBo6EyBSUjcQz+0H/cwl06l8ULO9ZVq1L6+XX6GotosrY
         KV98LFfBVaGq6/zQNDKX1JoYi1f73a5Dec9eEu0GSDVXphMcW7SWGdyjYdPQgWETm3Sq
         Il2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=KtPZdWr+m2QwCVPUCkiJTsHf3OlVY3Ly9fgprsglCU4=;
        b=lvr/vWxn82P/sR1HYB0dhZxL0lVAyKFXl5HiQOuKFdJzCIybH91AZzsHfgyx9BzNd5
         VsRtV3EnoHYiUAdUUHvWpFuz8YAW2jVTOpbn7Ds+XhWXRAbU7U2uh0LSlLfeIBScKoZq
         Qi9bHj0YMq9rKPXD4SCSV55U2aK6p9Yd2Vy2jhfUAWaL4Usvkc3b+RrsdI8yGcaQqQip
         WXIVhWj7IlxdXgB9ecq1/5GmxGfX78ApKpnZJdflr62hhiDntNWrD1ia4ECJGwx8jitx
         MGZWv1OlWfVbEjr9btFMFVXq1SVdpUgtiTbinaoP5Vd3l6mCyAa4h3hyZf1rcAp4iOu1
         F8jw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=eUXvSWAP;
       spf=pass (google.com: domain of pmladek@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=pmladek@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id b27si366361ljf.8.2020.11.30.07.37.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Nov 2020 07:37:35 -0800 (PST)
Received-SPF: pass (google.com: domain of pmladek@suse.com designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id 4CC7EADC5;
	Mon, 30 Nov 2020 15:37:34 +0000 (UTC)
Date: Mon, 30 Nov 2020 16:37:33 +0100
From: "'Petr Mladek' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc: Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	John Ogness <john.ogness@linutronix.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	kernel-janitors@vger.kernel.org, linux-safety@lists.elisa.tech
Subject: Re: [PATCH] printk: remove obsolete dead assignment
Message-ID: <X8URvRhAB2AE4DZT@alley>
References: <20201130124915.7573-1-lukas.bulwahn@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201130124915.7573-1-lukas.bulwahn@gmail.com>
X-Original-Sender: pmladek@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.com header.s=susede1 header.b=eUXvSWAP;       spf=pass
 (google.com: domain of pmladek@suse.com designates 195.135.220.15 as
 permitted sender) smtp.mailfrom=pmladek@suse.com;       dmarc=pass
 (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
X-Original-From: Petr Mladek <pmladek@suse.com>
Reply-To: Petr Mladek <pmladek@suse.com>
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

On Mon 2020-11-30 13:49:15, Lukas Bulwahn wrote:
> Commit 849f3127bb46 ("switch /dev/kmsg to ->write_iter()") refactored
> devkmsg_write() and left over a dead assignment on the variable 'len'.
> 
> Hence, make clang-analyzer warns:
> 
>   kernel/printk/printk.c:744:4: warning: Value stored to 'len' is never read
>     [clang-analyzer-deadcode.DeadStores]
>                           len -= endp - line;
>                           ^
> 
> Simply remove this obsolete dead assignment here.
> 
> Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
> ---
> applies cleanly on current master and next-20201130
> 
> Petr, please pick this minor non-urgent clean-up patch.
> 
>  kernel/printk/printk.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/kernel/printk/printk.c b/kernel/printk/printk.c
> index f279d4fbd9dd..6e4e38b7cd91 100644
> --- a/kernel/printk/printk.c
> +++ b/kernel/printk/printk.c
> @@ -741,7 +741,6 @@ static ssize_t devkmsg_write(struct kiocb *iocb, struct iov_iter *from)
>  			if (LOG_FACILITY(u) != 0)
>  				facility = LOG_FACILITY(u);
>  			endp++;
> -			len -= endp - line;
>  			line = endp;
>  		}
>  	}

Yup, it was used to write the trailing '\0'. But it is done earlier
now. So, it is not longer needed.

Reviewed-by: Petr Mladek <pmladek@suse.com>

Best Regards,
Petr

PS: I'll give it few days just in case anyone else would want to
review it. I'll push it then unless anyone complains.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/X8URvRhAB2AE4DZT%40alley.
