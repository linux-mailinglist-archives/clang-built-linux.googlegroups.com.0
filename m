Return-Path: <clang-built-linux+bncBCIJL6NQQ4CRBSEP5DXQKGQEM2FG4II@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x339.google.com (mail-wm1-x339.google.com [IPv6:2a00:1450:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 504C8124542
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Dec 2019 12:04:41 +0100 (CET)
Received: by mail-wm1-x339.google.com with SMTP id p2sf337419wma.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Dec 2019 03:04:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576667081; cv=pass;
        d=google.com; s=arc-20160816;
        b=z1OFphQmdEowPEVt6Meq3rSaHGkKkm+lj1ueeF1SbwWsBG292Nrd66Qxj8WyiwkAtX
         vIRC/8jUAt0dKgvq+Vs3+k+5piuLbnFOq4d67rdu5EPEisk4qm0nq4r1V3LZHllyeM65
         u8ZN85TDxokgDT64XbXDucxm1KoQ4wYwyB1+FbmSGRuONU1pVxb8NkB4h0IvpTjnOzEw
         VxTrQGmGb91yprASP1f55YFcoV6SSjjeaQB3dp79xdTRjUo4ddHnBQjrf3bN/snkZsqt
         sfRcGHnQBZnbyV8r01HiNEG3eMCM5DbBMULLf00Kf+yhcFMC5vGFspRy8EAXY8NkS4vT
         9m8g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:mail-followup-to
         :reply-to:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=gfKsUVcaFMtdKZZnitht+ygLCT3xjBb3IWhg8bpmyXI=;
        b=BOisiwt9sqzj+/x84FvhW+UvrMkw/qPuTX9kIe0hWykOsiqlg68ciEOzxStvTRmjz+
         0yIdgnLLwJQW06758xmabLUfcMvXe60aevdfb9y+tzDucmPaTAdjm2sZFFHwA58OBsOx
         FUiI6d+vURE5+L4kMOp9mKEZphHpXGeruouzPo+2twlvzgJsg5ARV7kqPrxJG4YcGK3h
         D3MGDmdHBRFzv1G0KWVhx/3qWe2iwDF1D8XuaSLjpzxMWnTUqU4e13GRf2hBMqLieeRf
         pImXy0v/l73K0CT4t+jJOTQgVwLMX/bNJ2dXiCu6rbgrN/jKwK60PCJpO50ZZDFO1+n9
         V7sQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of dsterba@suse.cz designates 195.135.220.15 as permitted sender) smtp.mailfrom=dsterba@suse.cz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:mail-followup-to
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gfKsUVcaFMtdKZZnitht+ygLCT3xjBb3IWhg8bpmyXI=;
        b=l/qcjpUhzCphq6lhwrxcZDcGmomPUdqvg7Kd1HgOu2CZbwzrJu62F9dVpxcekwAA48
         2d9P+TgmV1X9YVEK0HkIoGVsJHCwu2metP9fXEsQQcXByFx9OB6ihSQhJFtZL3QeJDQ5
         TVK4PJXy5qvc/Ypnt5y5YxO8ZTC856tf9WyZyuQhv+y/sJ0oszYYkcBYbRRzo1b7Tcp3
         0+NOm+18iV5gBXGLTrc9sA2lKgIa3vrZfZ2gvVKIwrP6LZwmsPnnxV+ly8oCXT8EoYQn
         scGPoZ0l8jaiR7Sk6PAaa4qxeBC1HensQoqtpkey/EH1oVoDsg79fk4yu2adHJf4eea8
         kJog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:mail-followup-to:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gfKsUVcaFMtdKZZnitht+ygLCT3xjBb3IWhg8bpmyXI=;
        b=kOMyvjL5znPFbJ/fKVFGADbbQ897JPpc/qxOXDekwxhEQblkngFj5xR7UEfa1Co8Fm
         0pwvwqrbqMfBhwkxxpNWCYzyZ5xdyK/0FzKucOGLImmNVmOAIgj3xiW9+pSTVJfUr1Vt
         J0NE3b7jiRkARTdM5unB98PBGYLHEzuzZDXZSLWfp0ffojg999S4sRx0nVYwmzX4OcTg
         DChgy92nbr8tQyDDrsXFdRnXpDXopQ3GsAmWyf9bmIV1XUe8qJatxZMRgKXglHVbf6U0
         EiYOUrhY939Pv5+UDMzOl6Qt35yEF217Qs2t3Lo7/wINPl+c9LlnDLDgs8eBggctL6b/
         7+fQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWQGju6mvFffs3eFp8G9+3XhLVQ06Ogg2EwZKL+wNH0Ba/QELSl
	ymmrsXRE9WVz0My7ki6dlNY=
X-Google-Smtp-Source: APXvYqxPRZeUvSjMDP8v/sxHvRJzxDjYxHubaEmUtAnO3Ud3UlcmeFpCIVfnVOLi3+I8KVboQueBIw==
X-Received: by 2002:a1c:18e:: with SMTP id 136mr2605600wmb.53.1576667080994;
        Wed, 18 Dec 2019 03:04:40 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:65d0:: with SMTP id e16ls561486wrw.1.gmail; Wed, 18 Dec
 2019 03:04:40 -0800 (PST)
X-Received: by 2002:a5d:4481:: with SMTP id j1mr2237726wrq.348.1576667080448;
        Wed, 18 Dec 2019 03:04:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576667080; cv=none;
        d=google.com; s=arc-20160816;
        b=KCPuSvDLdTU2qX45TZ8SHBntDdHdk+jWgmm5zZf+jHZ+JB+a3jntybVHsg5lJn4NLe
         v76nVNqvnrlTFRvzHIrocFq6lO4gC/nyXPNJRyDtSHMcTpncALsEtupYpJ9NZsmB+llj
         oouW4aG/n0p4uLvA8Wp4seg8rqXnq1SKmFVUScOPKhIsDnMz9S0ONZ2KZ76hJKPHzsEN
         PV8BV/BeI0Yb1w0nJeDkH6p654IaP0OkrQwQQDQ4H9KRVOOSGfZZ32fo5nju5hHexk5c
         mwL3eipY/NCIHTPIDU9EaDA6Mj5TrgVr9wSxDMmtukGdt0mIC8/S0aGW/gpE1IFYBq5j
         TsQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:reply-to:message-id:subject:cc:to:from:date;
        bh=9YGdrv2qmrS6L/AMpYcIMGsKVw3ZU9MXZz5FKI4DHGA=;
        b=kwgW0izrUv3kEdxWW/l8A2QxkG80vk9lpJQtb+z6dOlQnoSAfvvdPwxaM/qGosn5YX
         2mjRTbu/sLF5DZ5l36FI0SoE6EJPx6TLuz45flKzFFK9eZSlEy1Qoy8+D2W+/sPMQOfB
         4ZOszrhCkEDN18XYmyKB1EHu2hBcBCsoL8EeARvSY880hlP1VZGQuUL3mYV7A1nIzZ+e
         9TbY5/X/FBYHDYQopbjCBZ2kawdq224tJW7IonyAuL4kPXtDzG/pAAgdK2+P/iO8oeqf
         V/sBxgGuww+NN00ZQYI3TOUrV1yFU8+NEsWyVSgzCyWGtmMSI93dRIIgbl2dcMkzULYN
         OaFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dsterba@suse.cz designates 195.135.220.15 as permitted sender) smtp.mailfrom=dsterba@suse.cz
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id p16si58977wre.4.2019.12.18.03.04.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Dec 2019 03:04:40 -0800 (PST)
Received-SPF: pass (google.com: domain of dsterba@suse.cz designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx2.suse.de (Postfix) with ESMTP id 67A99AFDF;
	Wed, 18 Dec 2019 11:04:39 +0000 (UTC)
Received: by ds.suse.cz (Postfix, from userid 10065)
	id 6C193DA786; Wed, 18 Dec 2019 12:04:37 +0100 (CET)
Date: Wed, 18 Dec 2019 12:04:37 +0100
From: David Sterba <dsterba@suse.cz>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Al Viro <viro@zeniv.linux.org.uk>, linux-fsdevel@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2] vfs: Adjust indentation in remap_verify_area
Message-ID: <20191218110437.GJ3929@twin.jikos.cz>
Reply-To: dsterba@suse.cz
Mail-Followup-To: dsterba@suse.cz,
	Nathan Chancellor <natechancellor@gmail.com>,
	Al Viro <viro@zeniv.linux.org.uk>, linux-fsdevel@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
References: <20191218035055.GG4203@ZenIV.linux.org.uk>
 <20191218051635.38347-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191218051635.38347-1-natechancellor@gmail.com>
User-Agent: Mutt/1.5.23.1-rc1 (2014-03-12)
X-Original-Sender: dsterba@suse.cz
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of dsterba@suse.cz designates 195.135.220.15 as permitted
 sender) smtp.mailfrom=dsterba@suse.cz
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

On Tue, Dec 17, 2019 at 10:16:35PM -0700, Nathan Chancellor wrote:
> Clang's -Wmisleading-indentation caught an instance in remap_verify_area
> where there was a trailing space after a tab. Remove it to get rid of
> the warning.
> 
> Fixes: 04b38d601239 ("vfs: pull btrfs clone API to vfs layer")
> Link: https://github.com/ClangBuiltLinux/linux/issues/828
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
> 
> v1 -> v2:
> 
> * Trim warning and simplify patch explanation.
> 
>  fs/read_write.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/fs/read_write.c b/fs/read_write.c
> index 5bbf587f5bc1..c71e863163bd 100644
> --- a/fs/read_write.c
> +++ b/fs/read_write.c
> @@ -1757,7 +1757,7 @@ static int remap_verify_area(struct file *file, loff_t pos, loff_t len,
>  	if (unlikely(pos < 0 || len < 0))
>  		return -EINVAL;
>  
> -	 if (unlikely((loff_t) (pos + len) < 0))
> +	if (unlikely((loff_t) (pos + len) < 0))

Instead of just fixing whitespace, can we please fix the undefined
behaviour on this line? pos and len are signed types, there's a helper
to do that in a way that's UB-safe.

And btw here's a patch:

https://lore.kernel.org/linux-fsdevel/20190808123942.19592-1-dsterba@suse.com/

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191218110437.GJ3929%40twin.jikos.cz.
