Return-Path: <clang-built-linux+bncBAABBDGM5X4QKGQERWJTOXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83b.google.com (mail-qt1-x83b.google.com [IPv6:2607:f8b0:4864:20::83b])
	by mail.lfdr.de (Postfix) with ESMTPS id A3BA7247DD8
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 07:24:29 +0200 (CEST)
Received: by mail-qt1-x83b.google.com with SMTP id k1sf13632674qtp.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 17 Aug 2020 22:24:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597728268; cv=pass;
        d=google.com; s=arc-20160816;
        b=qtcJJ4CUC8u8NBiG8Q3EEP6gZZjdBPPMFT4AdzdSNN3wyBR2p1SENFjGpmAEws17Y7
         RdyxkgVZdQNvZRXSsYdnablJu6esPTkKyEf3/lNWfmFPr4+52q9UwfrDLr+eKivU23s6
         pM+LXJj0NAAOzmt5jhIFxg5iY+mAR0hD9hwN6dowgw7Auk6waai8A/5t7494bonZLqZu
         FqTnNpB2/rEeS3LjV/7+P+77pNDSbzRta01B4Q/G61FBwidg4QtAxV86EfEFQ1twokqZ
         4ZBTBgSnuIW90qltUOwD14Qnb0WcgEFskv/rxuxQNzK3k0WXYHbP+54qY1a1e6qCfHHt
         7jww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=Hq/Oj7TQVVhUpKh/P0XLcKLcwWw99XwolMp7VZ50Fpg=;
        b=m4Y4eoG+6uYTVNCr83bZ0g6nv3ml1ai8fuEvrYfxMrDucAdftZivp/8QqZFkynRRJ3
         a+EG3yaRUgRfmW4Rw+porbTpSnI360BdQN9QZQXh2Xflz6c4EXT6ylOK3asRJuPhmm+/
         t8s05MPRLccVvWo1voKOzJEn7Ef03MfqSMoFvPtAd1JJoOw7HKoqCZqrr67B3av4tZh1
         PFCqlO9WHrc93HEQXxV7BfuKy3QCazl23RdRZ4EGOODw0ECbTsnsv7D2YIdmN3qufJLe
         9ee2IU5b7E0w1aBJTI2xbF+EpDmEYHHqj9iZiwtgGKoEBL6VCM3WQM6MO1X+e9+9+vOv
         yA3w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jack@suse.cz designates 195.135.220.15 as permitted sender) smtp.mailfrom=jack@suse.cz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Hq/Oj7TQVVhUpKh/P0XLcKLcwWw99XwolMp7VZ50Fpg=;
        b=cpO4Rrpp3fQfpqqJv8nLBNLLmm/WPTyYYl7Htwucw3ZDDpJ0W8QXOn+TVD7U+GqXtc
         PwcR+WJXA4GPq+Jfp9qUomor1Ck+Mk+YigcsyzJ420C4oZ6EkjFaheYyLNaoeTGpgD9A
         lIh9GEwEDhE0srfz9jkovcMpYt/WQam6ES2b3c383sFjDNMSTE8ibbjJfq3G8c+upfy1
         ph6Ld2D9rgHCwkvs77W1AnndOvKxLuj45NbrZADbHpbHS70XhF/bmM7pLnLxGfakRxir
         ZOso8GckSZQrLRdWbZrxnIMyDParkJ6O6EWZLSLZ/kVCgHbRx0I15z2SUnw0bSf6U/M7
         5Odw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Hq/Oj7TQVVhUpKh/P0XLcKLcwWw99XwolMp7VZ50Fpg=;
        b=rU0gO/fDW505j9RqjpZ0W21A5krhVeMXwpObn7ZaiyrYuRbO0R5A5XTz+NuZ+O6Mkd
         EjojL/65CnaMFgqg4MVvs68ZcpAaWO6qZoeeVigKALQSTEflGDikJ0qt9PWUZA6nlJAq
         AJZi0yG/M0SwGL3vo+byu+DaUUoDTQzod6ik3f/a4V6DQqBDq+ICaH0sp9Y0340AajcS
         5+YyWSBbyFSObIprz/Z7GWcFLUiHdp0dv1k10LlKO6Uji37jRFgjt5DWfRPd7CBqSiQH
         2vVDCmdZOmOmDqnSV/o2voRkgJ5lr+KcE2DN0oYfy4SXmRy0mJ36TKygbCtoXaS1F+G3
         wHUw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Ioh3SKWexLL0YneChGaSZTi/gF34+dsFFJk1OiYfLAYbQgL6Y
	30V0QBxfU8nWFvTydx10+/k=
X-Google-Smtp-Source: ABdhPJwkfD8S6lXXVmVxo9861tqMEh29DVyzXjNk1qHgid9ich4E13YD0RDJM8JmW6ojbA0I3qi0Lw==
X-Received: by 2002:a05:620a:1355:: with SMTP id c21mr16319617qkl.378.1597728268297;
        Mon, 17 Aug 2020 22:24:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:2701:: with SMTP id n1ls7455998qtd.2.gmail; Mon, 17 Aug
 2020 22:24:28 -0700 (PDT)
X-Received: by 2002:ac8:6c55:: with SMTP id z21mr16413561qtu.68.1597728267997;
        Mon, 17 Aug 2020 22:24:27 -0700 (PDT)
Received: by 2002:a37:e40d:0:b029:fd:e523:7b6d with SMTP id y13-20020a37e40d0000b02900fde5237b6dmsqkf;
        Mon, 17 Aug 2020 10:08:55 -0700 (PDT)
X-Received: by 2002:adf:db8b:: with SMTP id u11mr17128321wri.143.1597684134668;
        Mon, 17 Aug 2020 10:08:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597684134; cv=none;
        d=google.com; s=arc-20160816;
        b=zCWq9ETI2UK2zTdHhLO6tWCOfT/kbMdo3bxaQFtXgyAtbwXsfnekekordNbgbI5gEf
         2SGRkqOF4Wv1mu49SnkMSUv9VvPi9qiU6mWj+ANyEU6U8Y85kFUL9TYHLyowBKQWkcoR
         Div0UrI2k2W959aOjg8C9AjpxGakNUPAO4NzeAIdW9QpPCjINywOOtZOuGdiJMoROot4
         3kfnORH9N1rIT9xFsPWqy1dyDAaOxzzGC+eekERN+RaxRzAlwh/AFXWdsxV0oQ9/0t3a
         7VE0HDkpsmLeSTQEJuu03Hm79txAbMKphfLlT0O/q3IUsAtY7EKCOaDaxpSxTXskAYlr
         0tJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=GLhojqeBc1t5le2BPl//GYnculviIsQyCN+NxIxLvao=;
        b=gEq38aqgsoRexjGsk2BsY4ySKDUWRCMb0gGCTYMpPM2UIBS+uoHllCULopUZPRflEM
         kKlb0/AVbM4xQncSXDUoug8yK95H35RypsYKMd47V1X00uV6ilhJ36oTmvzH5kp4fXDe
         UyTsLyeCmvJLrJXvSPRTeicuTe2cGB8CkOBOj5OpoQFpCw5vqgVWzvgQ4jAAiuXiwFqS
         YC9J4LGyFNIkq2G2x9CYArLyNXElzIfC2phCHIv9/A67zdZrzE6eqMwmnV2yc5YNBdY7
         DXeIQddluTLjjoAO1lzsjOa3aWBkTV1g139z4NIw89v25kys2sTlPSSlgKzQAwGKd/U8
         pbkA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jack@suse.cz designates 195.135.220.15 as permitted sender) smtp.mailfrom=jack@suse.cz
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id m3si804007wme.0.2020.08.17.10.08.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 Aug 2020 10:08:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of jack@suse.cz designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id 6BD24AC5E;
	Mon, 17 Aug 2020 17:09:19 +0000 (UTC)
Received: by quack2.suse.cz (Postfix, from userid 1000)
	id F19311E12CB; Mon, 17 Aug 2020 19:08:53 +0200 (CEST)
Date: Mon, 17 Aug 2020 19:08:53 +0200
From: Jan Kara <jack@suse.cz>
To: Xianting Tian <xianting_tian@126.com>
Cc: tytso@mit.edu, adilger.kernel@dilger.ca, linux-ext4@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] ext4: use kmemdup_nul() instead of kstrndup()
Message-ID: <20200817170853.GC22500@quack2.suse.cz>
References: <1596894336-49052-1-git-send-email-xianting_tian@126.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1596894336-49052-1-git-send-email-xianting_tian@126.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: jack@suse.cz
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of jack@suse.cz designates 195.135.220.15 as permitted
 sender) smtp.mailfrom=jack@suse.cz
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

On Sat 08-08-20 09:45:36, Xianting Tian wrote:
> kmemdup_nul() is more efficient than kmemdup_nul() if
> the size is known exactly.
> 
> The description of kstrndup() already suggested:
> Note: Use kmemdup_nul() instead if the size is known exactly.
> 
> Signed-off-by: Xianting Tian <xianting_tian@126.com>

Thanks for the patch but I think it is not ideal. The thing is that
s_mount_opt is actually a NUL terminated string (we are just careful and
don't rely on that to avoid problems when the fs is corrupted). So it is
possibly shorter than those 64 bytes reserved for it in the superblock and
using kmemdup_nul() will allocate and copy more memory than strictly
necessary.

								Honza

> ---
>  fs/ext4/super.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/fs/ext4/super.c b/fs/ext4/super.c
> index 330957e..be37556 100644
> --- a/fs/ext4/super.c
> +++ b/fs/ext4/super.c
> @@ -4016,7 +4016,7 @@ static int ext4_fill_super(struct super_block *sb, void *data, int silent)
>  	}
>  
>  	if (sbi->s_es->s_mount_opts[0]) {
> -		char *s_mount_opts = kstrndup(sbi->s_es->s_mount_opts,
> +		char *s_mount_opts = kmemdup_nul(sbi->s_es->s_mount_opts,
>  					      sizeof(sbi->s_es->s_mount_opts),
>  					      GFP_KERNEL);
>  		if (!s_mount_opts)
> -- 
> 1.8.3.1
> 
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200817170853.GC22500%40quack2.suse.cz.
