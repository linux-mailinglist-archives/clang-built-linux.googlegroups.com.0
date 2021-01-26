Return-Path: <clang-built-linux+bncBD2NT6VEXYMRB4X6XWAAMGQEU6B7C5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id BFB5D3031E0
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 Jan 2021 03:33:23 +0100 (CET)
Received: by mail-qv1-xf3e.google.com with SMTP id a12sf2306039qvo.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 25 Jan 2021 18:33:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611628402; cv=pass;
        d=google.com; s=arc-20160816;
        b=s0p23SNtElfnli6aYMvvAATOvmfkip2QLr2lZ0qOSA7MrkX0eT3uQVL9apXD0ZPVvo
         2NtrsdAFt8HOaeN42h211fi7FvPQSnhGHq1gauuWEXj+Hj1/E5nYvVMBvb/pAW4qIH1y
         ikr8GFD/BJhnMXjnMLhwFdYWnyd4HuuzZEg2FtIVtXeDvnP2tiKA6kgPAot1rgnhaFl1
         R+OUUv8/d3jAY0jV9/J/Uz+0F5H2+PvJhRuJfom1W/YTeY1W/7pnWnhKh1NJCAfoAp4G
         f9JRDJuUJUDqBs5ifwtRj06Tk2kbF3QUpIGDHlFjITTWbDlgBCLnI+3DE/6EV0GTpVrc
         Koxw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=yKqv7f5rM9FksPTmAb8l9zuGFSY7NlKlJ74Cpr4jzBw=;
        b=oPkteNORRaFLI5kqFfs30QF/PTduvsZoe5HiLs13/bsqZmqZMiyJfFswsPxLo5GTG1
         jLC8Vk17USBCM0J6061yEBfFyHMzuaysHv9T5a9DOfy4szQJ/z2mthksTh/qep+DrZh+
         IzaRUL5LpYNoy+P5E3AR1zZdJPDbx+cxysq9Yp0GUQqY3OeB6qK/Mrs4n6pXVER7fWWW
         8OoLrRwEb59CuXWt+buMuhBRRH5UcMzCDUcMtLySiwrJjID5mbYZ6mBfP8MkX93Ks+PS
         0nLmWOLeB95WGPzzI5QwIxtu77gSFUG8ZVA9tOQKI6lFx/6VFyCnplrAdDmaIhz1v2/b
         SjvQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=gqXiV+Hv;
       spf=pass (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=kuba@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yKqv7f5rM9FksPTmAb8l9zuGFSY7NlKlJ74Cpr4jzBw=;
        b=OI5yUKufxZpP4vO7qZQavcylnZgTzo6RvYeQ8hnJRBNL3nUe6pdyqXvUiXPyhSR3/f
         EMwdzFfLL2bY+cENkUNuiKQnlcMBTCxSVADRYZYBZ6MY/sxa3cdSkVdsp+c+dzrd1gVx
         +PtpZeGAZZ9BPh01fy4K0cijPNwjxcQtvZ1T/hrLDa3ZzBymPj4adzidcOzdmqoiPMw4
         yO/JKQ9oh+XLqBaNNxpinAhhCE8EXpYTpiAy7HgLtqSBC4PdQ66aWLXL3FNQ2cXWY+c7
         dywRpx9kQeqfPweik8owvmQD0qokfMnUvdaXV1aKM9NHe4I4whEW/xK50VA1U3f7tjnl
         TJCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yKqv7f5rM9FksPTmAb8l9zuGFSY7NlKlJ74Cpr4jzBw=;
        b=Impm6/IqVSNxUv6IUX4h5gb/qssnE/QEDoPwKs8WVq8/ulAuCArTL6mNwh/vp5fntO
         W2oFs0BUu5hBe2Y1wbu7/5rHoEhtO1XFHVZyCJg35IE3ZsYFlZ6ceoCqu9yFxOKQOEZL
         yk9uYJnJESvekXIZPv7ECPQxaRwXf7CI3p3pA6GFT0ry7GXBz0rExCSLMyHKSHwnClVF
         HgUqXZukqitFxbJCHY3Y8lvyXRsjv/Yujb1lxQ85+ceITz0YEGpi/Dj6N+tO2Amo7SGS
         96CQy07jBt8JHcfoVobdf7WuDcoK2fGj1lvYUfNtQdVHPmuXXVNIwqvmbM/kLLtBTpaK
         6xog==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531y9MjWtwLnMjztAn0p4e0XzJCK8GmA7pFs8G6UXlh1ovWqp62m
	7aYH3GWIlF5bZzgMfLBLEIY=
X-Google-Smtp-Source: ABdhPJye8D31YxB88Lsm91XxiDcfjZrL4+RmjwkMjTkGkEMdCoweBK54uN0ichimqOPl3y78DQFzXQ==
X-Received: by 2002:a0c:e48b:: with SMTP id n11mr2545188qvl.10.1611628402760;
        Mon, 25 Jan 2021 18:33:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:5603:: with SMTP id k3ls7797910qkb.2.gmail; Mon, 25 Jan
 2021 18:33:22 -0800 (PST)
X-Received: by 2002:a05:620a:210e:: with SMTP id l14mr3884006qkl.387.1611628402414;
        Mon, 25 Jan 2021 18:33:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611628402; cv=none;
        d=google.com; s=arc-20160816;
        b=jltTN22E2hT15dS21nfpyKm/ln6Z1qLka9f67PoJ1TrIIwTsLd7XhU5RVqI+dTaiAu
         ZryMuBWzRXfXk4u59ygDXnVOy7AWGM9ncnk2+kWy/eLpnSniYScrBqhDWn2+mBBKF5om
         PbXNhkUb5DtDeP7jBCvVj7BqakT8VXAehBZ0OmrircGHEgGbtTDXudgsNx5QSmGq//c4
         LD4WQZGAwxA5lSvZPGXuWELyAds2GdGETHKujg1RMt+0BWzvomxyp9xGA8iPWyE5hIxN
         T3Hu6J0qgE/KfK9e2bVGZzu+bZWE0e+8Oo8sFaN0Vbp7qW7llphty8O3qRZL1ZcQu82c
         6Wxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=ZYCSskUmiSY1HJgsPOspW3qxSckAevpeWAzLbfbYYB4=;
        b=oRugtodyI5bwOV66k2t9q0lwR4ku+XFbxgiqIxcDU0SYJQDFLJUcCWN9L+juLhsujv
         2Ubki0/VXWb3/LtWZfoUlZDGSp/o8oUj/UzVDE6HFzIw2S4x3PxTNnojz3bU5QxIuFhD
         ao4eUO9HPlPRWHTnZq/dwJBpm08AjGR+Zo2j2/BeQBDqPWpLn62r57S/W4waziuiEOSa
         WkbMsnG0I/xY5RxZBQAC25Npz49Z/dSTPQIvQ5x0lAnhSqSrhwxdylGpzAWPRi4ddOFO
         GuvaLTzGNp/cKdwT3EA+sEYLQgD10aXqTuQNUqgjysBtuYfzuk0lkCTqfJsUJMgHLoIj
         94rQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=gqXiV+Hv;
       spf=pass (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=kuba@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d12si73776qkn.0.2021.01.25.18.33.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Jan 2021 18:33:22 -0800 (PST)
Received-SPF: pass (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id D82A622B37;
	Tue, 26 Jan 2021 02:33:20 +0000 (UTC)
Date: Mon, 25 Jan 2021 18:33:20 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Nikolay Aleksandrov <nikolay@nvidia.com>, Jiapeng Zhong
 <abaci-bugfix@linux.alibaba.com>
Cc: <roopa@nvidia.com>, <davem@davemloft.net>, <natechancellor@gmail.com>,
 <ndesaulniers@google.com>, <bridge@lists.linux-foundation.org>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] bridge: Use PTR_ERR_OR_ZERO instead if(IS_ERR(...)) +
 PTR_ERR
Message-ID: <20210125183320.161f0afb@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <4c68f49c-a537-3f8f-73ed-5f243cb142a9@nvidia.com>
References: <1611542381-91178-1-git-send-email-abaci-bugfix@linux.alibaba.com>
	<4c68f49c-a537-3f8f-73ed-5f243cb142a9@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: kuba@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=gqXiV+Hv;       spf=pass
 (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=kuba@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Mon, 25 Jan 2021 10:23:00 +0200 Nikolay Aleksandrov wrote:
> On 25/01/2021 04:39, Jiapeng Zhong wrote:
> > coccicheck suggested using PTR_ERR_OR_ZERO() and looking at the code.
> > 
> > Fix the following coccicheck warnings:
> > 
> > ./net/bridge/br_multicast.c:1295:7-13: WARNING: PTR_ERR_OR_ZERO can be
> > used.
> > 
> > Reported-by: Abaci <abaci@linux.alibaba.com>
> > Signed-off-by: Jiapeng Zhong <abaci-bugfix@linux.alibaba.com>
> > ---
> >  net/bridge/br_multicast.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
> > index 257ac4e..2229d10 100644
> > --- a/net/bridge/br_multicast.c
> > +++ b/net/bridge/br_multicast.c
> > @@ -1292,7 +1292,7 @@ static int br_multicast_add_group(struct net_bridge *br,
> >  	pg = __br_multicast_add_group(br, port, group, src, filter_mode,
> >  				      igmpv2_mldv1, false);
> >  	/* NULL is considered valid for host joined groups */
> > -	err = IS_ERR(pg) ? PTR_ERR(pg) : 0;
> > +	err = PTR_ERR_OR_ZERO(pg);
> >  	spin_unlock(&br->multicast_lock);
> >  
> >  	return err;
> >   
> 
> This should be targeted at net-next.
> Acked-by: Nikolay Aleksandrov <nikolay@nvidia.com>

Applied, thanks!

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210125183320.161f0afb%40kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com.
