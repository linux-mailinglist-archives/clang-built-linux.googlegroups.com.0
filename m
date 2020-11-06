Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBT5YST6QKGQECJI5Y4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13c.google.com (mail-il1-x13c.google.com [IPv6:2607:f8b0:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 52F7F2A9353
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Nov 2020 10:50:08 +0100 (CET)
Received: by mail-il1-x13c.google.com with SMTP id o5sf601677ilh.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Nov 2020 01:50:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604656207; cv=pass;
        d=google.com; s=arc-20160816;
        b=qN5ttpbasn3PVxlyZ3BbWOQZeWwBrz8QN+L0dPW325zgk3Gs0LM17I1k1vvNS6LLPm
         WKimTUQ0dNjgdqniKZSk7F1t+MdTpBGXCe3E5na+HtfKI/OPv6/Hnn7uE+ETd6DHYrJI
         VGU/zkC1Vw+3xU6i9g3PLroB9qeSSTj0Wgpfulq9lJn0JvzekrNr5NGUs9NJGeTFrP2C
         eLfGTDpxsxzW55k2TrO7raKlRTsqa3XjFc9HVtcCLnQ1ZmsVy7ZdexQbRgLDIi+vaB/E
         2LkZCTSVL4B1Z80AXID4q0URjLwVmSRuri6OafewCkpyOEoNu4NXVjJlWxnmcu1ok8QK
         4tpQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=cFk7RKdwYGN1EjszqhNxnx5KTHYo5FwcwhyAuMJB3L8=;
        b=BdHs5oyylkBP6bKCcj+4isGQdMRSif1qdhHdDo8wNcu/zLVYgA4xOVeCJoawiOVrH0
         JqYU+4yXN1pJ9u+Wkt/SF1FOxsz13/dAoXOVGLtPeX/EPMYSFeTnLxpwgyYxlsh6w4Ga
         JYOdGjw77Hp3r2W9wNVyzhllYmq4wjvgRZqvfvXuTRBV0A6LQpOKqhSOe30cvKeGwWcV
         BfRFdfwoWxPxG5+lSNGut9tvxrzyGzHquJxItVg/MSYK922bWJDmsm6mKklbbtmrF/kW
         A+uIdrqoRHbZpdwlER9/JXkJ9qt8HpFTJ5fMgF6uAe1LXNw+yOkWHzpA49LkomDgLQlR
         tv0Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nXWUVZfh;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::142 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cFk7RKdwYGN1EjszqhNxnx5KTHYo5FwcwhyAuMJB3L8=;
        b=Bt2wxk40BX7YBvEY6UYJUNQ20LJtz35yniCNLkyLy16XNgcQd4+g728RIfU+7jZL7q
         ZdZ+i3o1dJpcvZUp25+6UMEchhC40ih4osGXDncj13McjUGSRrW68p3t2g5RwGeQaT/b
         I81RDDea16hVajO7EDhEqac8B9xwDvQEePVvVVuohFZPGKaOd+E6mtv4B0vyxHs34B15
         DDeT2GsHzYRgQ+4vfwedznnPFNsgnzaQ1DsO6h8QBhb5Sfw2cM54iBWydorgTdS8xU4j
         9HCFiVVsaeP1WouTqcN2yPGZ6YCGYLxFYRrkw8BrgYDT4x0P02hfgBq12cr91wD8MVn8
         Sd/g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cFk7RKdwYGN1EjszqhNxnx5KTHYo5FwcwhyAuMJB3L8=;
        b=hJYRLDqA+jO4vFEyuxTY8+EAuM/e/b8aDUM+Dg6f5x0UAh9yvwEvOnPCrf57pFWA9H
         PqG/1QEtP+Dlq4V7SGJvZBzHAipY09ucSEqBaIRvKaU9hZaIf/W7rJepwqdU6T5wJiaO
         TvnIsSKyo7fSsSuyGVdK5UJ9lykmibEt9TpsW2VitFjwIE1I/i1N0wCeajPmU8dJrikk
         RDK+L/NBLpAMi00CJ/Mv3uhhAju6HUSyLFM3fHQrzLj5hRqe/SHAIr63cHdiokrrMrJg
         adq8rURgqT6PIhUGNkpbWQysgdXPNn249koEleMg5KIsxCKfQy0BttHqMGK1bc6e3CpB
         3G3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=cFk7RKdwYGN1EjszqhNxnx5KTHYo5FwcwhyAuMJB3L8=;
        b=Uo73ulkwmJxrvhqrrRcES5a3zGAFf2eWS9CGhkUhSBahRJ8u07L1wDPMGNQ3Hpdmg+
         VVUTQFJRE8vInUw2iHZTuJdqOxy4iVeCY8IxaXgI+qFWQYhtrmnwSTNOC2wwALbkg0B8
         dS8PxOLinu0f29AD44EeHQAa73OyblkHlGECog7oKsxsNsDlMsperAIPV7mwb2cG/MRV
         D7qVpkBvPZPYs1XZjHToHlwMmYsdZUPgb5cW8IauPrxnzIKELB1nfxsxMpMUDUIOIxTu
         GuWPYspqrn5MzxFBWb5CBpacW0to3Atz8yDhX3zILoPYGfau0asHxYIsMqlaPnnEK9ka
         DE0g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531KRuxF1RRc0ucECyOumazvWkTsProZZJLevXpc/mN2+AN9/9HE
	GndIDxDr05Aw7cHMB3XQVcQ=
X-Google-Smtp-Source: ABdhPJxaq02nCFJ1Wm771oijkjBJsmexgUNNc52sATYUhpPpvf3FWiTG/Z98a9xZ+WVfQtvREqUSqw==
X-Received: by 2002:a92:9903:: with SMTP id p3mr855484ili.138.1604656207376;
        Fri, 06 Nov 2020 01:50:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:b7c6:: with SMTP id h189ls73994iof.4.gmail; Fri, 06 Nov
 2020 01:50:06 -0800 (PST)
X-Received: by 2002:a6b:be84:: with SMTP id o126mr834546iof.56.1604656206838;
        Fri, 06 Nov 2020 01:50:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604656206; cv=none;
        d=google.com; s=arc-20160816;
        b=ZMfrFahDxYWsT9qektS1tVe7ngwhpfl7bnY3Ze8urVGKsLx+f+GiyRoCenQoSZpLjw
         A/ocbrqH405+HeDVTk6NddU8KIv1a81AIwKtjsze11Y+jvJOZXgtV9RuVskkwEBWUKMe
         /HCH2MkntKKVP2wNXHHHc2XJRsQPCzkQ32guJT3YEjLSM6eu96pO6xh9n2Af5b+PSAlD
         9CHa2/dmULVpiYJoCC5u+WwZjIrmgjfSBAelJWFyeZYb9jGdNpArwjE75HR8WgydMXBi
         iXWlmG3sPBbVQ70qY4N8qfPCKawtLc7EyGf+GsGwEoWBgBSKwlMSHpAW+JeMHZTVK75A
         DmqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Xo980jxDgHwElwCLE395h1hcpqz7tSY6loYQUrMps3A=;
        b=XjeSof29ERaQTpXxskU8yFEJzHkuClBue2wfKt63YVGtEfiJb2tQwYoAYnfzEveGIb
         q5dzdBXyh+H3flqNcmQ87xmVMsrF8WmWFmx8qbIoJAjQMhZnH5bbaOBYYqlEQ2PQK2yY
         YzekKyI/jwKPdMWguKCkSRS3g20P0sbFbXrinE2eDg2h+CzK3S2yklisAforz9h2fmW5
         zwijQTQ02424i+tdcIPxXg596s55tc8N+1/Uiw3npaVc7IA17IEm0c/1vVCQAjbEoxzm
         OUqtPP4rETOxAM712bU61mx/Dg3iz0HGnq4XelN3tbo23dl6+GzulMWFzu2pXgZyGjzy
         X4Yw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nXWUVZfh;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::142 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x142.google.com (mail-il1-x142.google.com. [2607:f8b0:4864:20::142])
        by gmr-mx.google.com with ESMTPS id s11si51549iot.1.2020.11.06.01.50.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Nov 2020 01:50:06 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::142 as permitted sender) client-ip=2607:f8b0:4864:20::142;
Received: by mail-il1-x142.google.com with SMTP id e16so569887ile.0
        for <clang-built-linux@googlegroups.com>; Fri, 06 Nov 2020 01:50:06 -0800 (PST)
X-Received: by 2002:a92:d449:: with SMTP id r9mr752535ilm.276.1604656206576;
        Fri, 06 Nov 2020 01:50:06 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id r14sm711209ilc.78.2020.11.06.01.50.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Nov 2020 01:50:06 -0800 (PST)
Date: Fri, 6 Nov 2020 02:50:04 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc: Balbir Singh <bsingharora@gmail.com>, Tom Rix <trix@redhat.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com, kernel-janitors@vger.kernel.org,
	linux-safety@lists.elisa.tech, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] taskstats: remove unneeded dead assignment
Message-ID: <20201106095004.GA3269193@ubuntu-m3-large-x86>
References: <20201106062210.27920-1-lukas.bulwahn@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201106062210.27920-1-lukas.bulwahn@gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=nXWUVZfh;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::142 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Fri, Nov 06, 2020 at 07:22:10AM +0100, Lukas Bulwahn wrote:
> make clang-analyzer on x86_64 defconfig caught my attention with:
> 
>   kernel/taskstats.c:120:2: warning: Value stored to 'rc' is never read \
>   [clang-analyzer-deadcode.DeadStores]
>           rc = 0;
>           ^
> 
> Commit d94a041519f3 ("taskstats: free skb, avoid returns in
> send_cpu_listeners") made send_cpu_listeners() not return a value and
> hence, the rc variable remained only to be used within the loop where
> it is always assigned before read and it does not need any other
> initialisation.
> 
> So, simply remove this unneeded dead initializing assignment.
> 
> As compilers will detect this unneeded assignment and optimize this anyway,
> the resulting object code is identical before and after this change.
> 
> No functional change. No change to object code.
> 
> Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>

Question below.

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
> applies cleanly on current master and next-20201105
> 
> Balbir, please pick this minor non-urgent clean-up patch.
> 
>  kernel/taskstats.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/kernel/taskstats.c b/kernel/taskstats.c
> index a2802b6ff4bb..bd18a7bf5276 100644
> --- a/kernel/taskstats.c
> +++ b/kernel/taskstats.c
> @@ -117,7 +117,6 @@ static void send_cpu_listeners(struct sk_buff *skb,
>  
>  	genlmsg_end(skb, reply);
>  
> -	rc = 0;
>  	down_read(&listeners->sem);
>  	list_for_each_entry(s, &listeners->list, list) {

Would it be worth moving the scope of rc into the for loop, now that it
is only used there? Looks like it used to be used in the main function
scope before commit 053c095a82cf ("netlink: make nlmsg_end() and
genlmsg_end() void") but if this is removed, it is only used to check
the return of genlmsg_unicast within the list_for_each_entry loop. Not
sure that buys us anything but I know you have done it in patches
before so I thought it was worth considering.

>  		skb_next = NULL;
> -- 
> 2.17.1
> 

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201106095004.GA3269193%40ubuntu-m3-large-x86.
