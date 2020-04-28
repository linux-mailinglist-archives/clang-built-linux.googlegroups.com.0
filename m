Return-Path: <clang-built-linux+bncBCNOLFNUSYCBBH4BUD2QKGQEKC4WWRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x639.google.com (mail-ej1-x639.google.com [IPv6:2a00:1450:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id BB9871BBAC2
	for <lists+clang-built-linux@lfdr.de>; Tue, 28 Apr 2020 12:08:31 +0200 (CEST)
Received: by mail-ej1-x639.google.com with SMTP id c22sf12717877ejm.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 28 Apr 2020 03:08:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588068511; cv=pass;
        d=google.com; s=arc-20160816;
        b=pRKsILMoNPxq3GOKs30fHdpdmWC6IIO0iHB+4jiwH7ox/mvfl+oF5FxYWecFiz4e9u
         70VfYNRGzUfo+g9yOGRyWtGe1BdsOKBaHMW4FW7hM3EJLWznXkbbKaca2XpP0k3PX/rk
         zI3KAN+l47Vg4TZ+qP0jPrpXKdp3zDY8YVeL87btAYfgEEo3ruPAP5WtDQ6GdIjSPfly
         0UI+k1us+tBlt1s24/H2Yt5mNl0aYqUm3Ry/5GXlwqc/PrQPKf12gkk/gwwTugv+n/KS
         JZ6gBVPrePvCj98iW4gs/XMz34kX1YSrD2sV0izTZoVC2Fnk2a+cLxhVRJ/Wh0g1INUw
         3NGQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=CTeC92NzBGWmZillgfECM8GmgS1QeWKBLIkhmOhS8Og=;
        b=q6eL6eQzejoWVzZikp1OCzzEzrWfq1MYKEkDVD8RuLV8Zbjb7MOn6je+1bHyuh3NGW
         Wbqm8eq6xXrFGhDIomWG+CIXaxHbhURc8BEq4t1qxLDsaz4ydXeGj7fH+zdmnHxaxzie
         mURBS4aheMyBveuAGVllwraeJDjeC5xoFxGEsLCABXGlJNd49NR0WYJ/ZBsQkRbb2/iW
         ajpDlTbdNFecOkZY+ka7qOtAoZBplzEbmiwenE22K8jE0skAg9YDUac0wr2IFDKRtrE3
         88/46gzwxlycx0NafHp3sHZV06I2kzQazhFB6H5waG3JWr+yY5tWVgjTANJKxa8MMeyl
         AuXA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of wei.liu.linux@gmail.com designates 209.85.221.66 as permitted sender) smtp.mailfrom=wei.liu.linux@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CTeC92NzBGWmZillgfECM8GmgS1QeWKBLIkhmOhS8Og=;
        b=I/lr+MFYWwl25OG/+r7l0TX6U3lEN4ncIIy2tY+t4LQKN6kjfm3gvBl/cekzNtHYqI
         YFa949+0hwj1BAtSmENmcDn3P3IrvWhVgHbkIUuiKLkVFqzIHyjUvlh/Bgpa+PH7ixNL
         ngvxAIxTsHlxeOtp+cXPm+AeVp+PLURQNm2FqILFtJ5w7v/iC/eQv/Y0kzmp0ywHH6mO
         NOOBylAOVejT9QA0+AiG2Jg2V/o8vFNZIjo72Hr0MFvx9x2l6iZvqBG0Y1kVHID3hriO
         w5nJ2HNjXmDqqdVOI04STJqtgNak5OxSM0AcHGqDyvXAtG+tgrZf+lVAjI7f8bX5OMVa
         XSJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=CTeC92NzBGWmZillgfECM8GmgS1QeWKBLIkhmOhS8Og=;
        b=NcfUS6vrT1zEoARs1Oykb85Rb6a5xYUJ9OztadJHjHda4cndiQCZOm7UgL65on+/JR
         JGm7Yo1j7LbxnLyRFZnr4T59wShLtgwGXyI+KrhUMMVYmaV3drFspEcvJ4djDHyG6dOf
         RqyeWGz9gsb91+eHmnK0AHk/irCsL+qyRiZL7Rh8BS25x4K0hEgG485t6eDFvZz2xUf8
         Q76RJmNXHBQt2aKmM81OIfWeUKwvj4nyVnYDxAUWSISQ1ASxCPHV0yhXNG5pHUC8KmXd
         uijFuMZQi2MP68Q4p+H8iGXyeH3qOeoQzoWviaTwRGYkIBFvFFDGWCbZQOZ0bl48r+SE
         gxjQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZIRe+/YCMVFUH4D8PaD0WpZvmPcfhqUAyyxZr7EhZ+tlvN1vFc
	YgLZz3QMsfHLyn84bcG20Cw=
X-Google-Smtp-Source: APiQypKE/vB+AAXpwwMkZV6vZxzBqBiZVe/OxlvzUyPjLdXQs8v6qYsv69kOH1ujf540d/1Qc4JOsA==
X-Received: by 2002:a17:906:2558:: with SMTP id j24mr24503903ejb.72.1588068511485;
        Tue, 28 Apr 2020 03:08:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:bc54:: with SMTP id s20ls9619161ejv.4.gmail; Tue, 28
 Apr 2020 03:08:31 -0700 (PDT)
X-Received: by 2002:a17:907:11de:: with SMTP id va30mr24316701ejb.121.1588068510973;
        Tue, 28 Apr 2020 03:08:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588068510; cv=none;
        d=google.com; s=arc-20160816;
        b=PQh1H9gVfv4ms8blDibP8yMLcN3sYCDmWxGZb2B6Z6diXfCGwWFncmWEvf9yfIJA1R
         uVL44yrn4V7IVSpPox4l3WIbPO+CHiBZYVV+bwFS3Pqg5N4pwniKo4vPVxyS9TixDPp+
         4+uZeeKAjFyAzV7isFH9O05uDKf+pM+pOI6FaaUUfJo4IyVOkTfV8vNMtZECFegTaJxp
         CgEZpvwdoEPULyh41bzRHph0OKZ/rBpBOfJ8AbWAkazQB/mba5irUDSNRbj+ZP4hHhJ0
         bvQlh5UvCW9b9jEivWk2ZDAhYAjEe0fu5oZl2Oz+5e5d7G0CGI0WdSzqhq7NDHkdAEDs
         dDpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=wYqrGMV+EWFYnxIHszXLpHDlpZ5ax2djYBoiPCdGZtM=;
        b=k27k3ylhX/RcGQuk6tRa4noT/GBjhqTt1NMixsXCZTovomnZjy4MDESF47GBklM2r1
         V/bBCf4vh7EaKhYWNadbaer/ekjU7k714urKMWkT1BcppKXkNwqGmfvhDyQpBRpahTEQ
         4BZu6wPeUFRcpzJbxj/zsPDj6ZqyOIFKqU8k/l7MIttxM2Wc9V0kigDtdafl/M0NU5bh
         ADVpVWUrzmiO/1+/OQvcndLdB0Tj4Amp+6vzTYzsmE9moJ3+wRzFHwGshUX+z3m8romL
         3oPdvuNYLyw0RzZvlQY2BzPXwTYomG5BM4e9AWANCLKRyGttaL3qEwh3iHsIfdM4XJ+O
         pOJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of wei.liu.linux@gmail.com designates 209.85.221.66 as permitted sender) smtp.mailfrom=wei.liu.linux@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com. [209.85.221.66])
        by gmr-mx.google.com with ESMTPS id i2si113416edn.2.2020.04.28.03.08.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Apr 2020 03:08:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of wei.liu.linux@gmail.com designates 209.85.221.66 as permitted sender) client-ip=209.85.221.66;
Received: by mail-wr1-f66.google.com with SMTP id j2so23943785wrs.9
        for <clang-built-linux@googlegroups.com>; Tue, 28 Apr 2020 03:08:30 -0700 (PDT)
X-Received: by 2002:a5d:498d:: with SMTP id r13mr33647675wrq.374.1588068510619;
        Tue, 28 Apr 2020 03:08:30 -0700 (PDT)
Received: from liuwe-devbox-debian-v2.j3c5onc20sse1dnehy4noqpfcg.zx.internal.cloudapp.net ([51.145.34.42])
        by smtp.gmail.com with ESMTPSA id x6sm27382925wrg.58.2020.04.28.03.08.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Apr 2020 03:08:29 -0700 (PDT)
Date: Tue, 28 Apr 2020 10:08:28 +0000
From: Wei Liu <wei.liu@kernel.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: "K. Y. Srinivasan" <kys@microsoft.com>,
	Haiyang Zhang <haiyangz@microsoft.com>,
	Stephen Hemminger <sthemmin@microsoft.com>,
	Wei Liu <wei.liu@kernel.org>, linux-hyperv@vger.kernel.org,
	netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH] hv_netvsc: Fix netvsc_start_xmit's return type
Message-ID: <20200428100828.aslw3pn5nhwtlsnt@liuwe-devbox-debian-v2.j3c5onc20sse1dnehy4noqpfcg.zx.internal.cloudapp.net>
References: <20200428033042.44561-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200428033042.44561-1-natechancellor@gmail.com>
User-Agent: NeoMutt/20180716
X-Original-Sender: wei.liu.linux@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of wei.liu.linux@gmail.com designates 209.85.221.66 as
 permitted sender) smtp.mailfrom=wei.liu.linux@gmail.com;       dmarc=fail
 (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Mon, Apr 27, 2020 at 08:30:43PM -0700, Nathan Chancellor wrote:
> netvsc_start_xmit is used as a callback function for the ndo_start_xmit
> function pointer. ndo_start_xmit's return type is netdev_tx_t but
> netvsc_start_xmit's return type is int.
> 
> This causes a failure with Control Flow Integrity (CFI), which requires
> function pointer prototypes and callback function definitions to match
> exactly. When CFI is in enforcing, the kernel panics. When booting a
> CFI kernel with WSL 2, the VM is immediately terminated because of this:
> 
> $ wsl.exe -d ubuntu
> The Windows Subsystem for Linux instance has terminated.
> 
> Avoid this by using the right return type for netvsc_start_xmit.
> 
> Fixes: fceaf24a943d8 ("Staging: hv: add the Hyper-V virtual network driver")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1009

Please consider pulling in the panic log from #1009 to the commit
message. It is much better than the one line message above.

> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
> 
> Do note that netvsc_xmit still returns int because netvsc_xmit has a
> potential return from netvsc_vf_xmit, which does not return netdev_tx_t
> because of the call to dev_queue_xmit.
> 
> I am not sure if that is an oversight that was introduced by
> commit 0c195567a8f6e ("netvsc: transparent VF management") or if
> everything works properly as it is now.
> 
> My patch is purely concerned with making the definition match the
> prototype so it should be NFC aside from avoiding the CFI panic.
> 
>  drivers/net/hyperv/netvsc_drv.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/hyperv/netvsc_drv.c b/drivers/net/hyperv/netvsc_drv.c
> index d8e86bdbfba1e..ebcfbae056900 100644
> --- a/drivers/net/hyperv/netvsc_drv.c
> +++ b/drivers/net/hyperv/netvsc_drv.c
> @@ -707,7 +707,8 @@ static int netvsc_xmit(struct sk_buff *skb, struct net_device *net, bool xdp_tx)
>  	goto drop;
>  }
>  
> -static int netvsc_start_xmit(struct sk_buff *skb, struct net_device *ndev)
> +static netdev_tx_t netvsc_start_xmit(struct sk_buff *skb,
> +				     struct net_device *ndev)
>  {
>  	return netvsc_xmit(skb, ndev, false);
>  }
> 
> base-commit: 51184ae37e0518fd90cb437a2fbc953ae558cd0d
> -- 
> 2.26.2
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200428100828.aslw3pn5nhwtlsnt%40liuwe-devbox-debian-v2.j3c5onc20sse1dnehy4noqpfcg.zx.internal.cloudapp.net.
