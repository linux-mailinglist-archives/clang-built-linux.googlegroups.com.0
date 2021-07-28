Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBWVYQ2EAMGQEKFWSMVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id E93723D94F6
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 20:05:15 +0200 (CEST)
Received: by mail-pj1-x103c.google.com with SMTP id mu13-20020a17090b388db02901769cf3d01asf3685561pjb.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 11:05:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627495514; cv=pass;
        d=google.com; s=arc-20160816;
        b=V7H/w8wvGml04Vo/DM5GPx/57uvU9BkeXcUjfbX7EgmSwtIIrsXfEWjgnk2LJklCix
         uuayAFV9juglcwwbzhaKbQG6caB8lwwDiGRUbx8ju7lcUCrwVcOHP4Mp6G3Qr58NhMCE
         oGfunXnUGywslGqAetKQXDCNrVKn7GICd+Nz7tGl95Ca86up9LvW0InIqqpY1EKSv/x7
         KaP68VxyVjjWqIAFtS7yKPdd5NFeBqAeCKjrB3Q2I0BsC0XJSJuIvCxprBvAgANlqV4n
         WtMnvWO+lwkehvnqP+Om1XxG0h524+E3xtnw1m4X+71DoHb+AcWnSbVz26xU0hg5flHV
         8FsQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=HslNOYFCIoelR+HIUSQ7/H2Q2hVOfZewfrVtoLgh3aQ=;
        b=prmgG9HCVs/c9L7IJZGmlcf/biUFm+QRzdj6dVhkC6d3bD3RO3TJXvQVgmhSbZX+PI
         rYWr67+wsZDgvqJ6aeK43XM2ggXui99tvNdm5hPu/nWu7Y/51x2NZ+IL2+psRB+aHRma
         3irEmZcSwMkvmKTLYwuHvA5GF8wZxMbIfyUJMsWilL3KeotUsXr6ugD5/Ixr047n5ony
         eorm7chftEPgSIshH6WvpwlbhN6dB/frT6PCnDrnwwgBSEArbXKrDZiCaoc97Cwr/XS9
         Oi7EP7EOUa6YlvyL6KpMD5NnT9sr5rba+BK7eitWsNbCKJ1aR44Wr8kXe5huqp/H07vl
         92dg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=JWeXhwoX;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HslNOYFCIoelR+HIUSQ7/H2Q2hVOfZewfrVtoLgh3aQ=;
        b=gM7IIvjZsk/P7NCWIN1caix9Juru5rGNalnlhM6r+S8N6XsgeMGmV6epUUo7ei923t
         /PxiKp72TKMh1QMBqWtJXnAblNJ9TJgPUwzIS2NxECRzF5ewxe3iGsu1M9LYQGxMfeaZ
         LsbAqwrCoYLEq2DsU1T/QetZcPmknFBgfwUIpMJFmczyO6HD7KY7vsW233W89Jt7jFz4
         3R5a+Ychu49wMmQ4hE7AGgXremxzH8YLgnYQ6p2cK9s7gVN+LNEcZzrBLP6ciS3Kf2L2
         eWE0F+qb58bfUgLGmJ44JH+1u/G87LK61NvlHDrWzjR2Bvzgr/KDSnjLM32KvGe2TYHM
         LdGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=HslNOYFCIoelR+HIUSQ7/H2Q2hVOfZewfrVtoLgh3aQ=;
        b=aZGv0PZD7IJKFotUlboKXmD2Po7y8++AZJAMA/H4F6x/qfB6/nGCvRxPKe9SAMg1Et
         e0DdcKRYqK4RiOUkCivTrMZ7pyqA0//duSqn+aHUqbPsbQXhPMqd6mYS03TOd0UOu59w
         r2xuLtqk/OOJ0zgmlvIJi8SqKCxYC7U5bCuYrfcSrtJFwoOwpv7EkEESHGqNxOwUeUGV
         DwwWBHH3JbsZM2McWA86YU6t0KiCCMCXfQeJbCcJSYZANR4Ti0s4Z08XVdSfWfXsNPdo
         1fV4fzBXsR1FHgqap/djc4Eme7zw+Wpqz0cAZC00TlWoPThrDEUk4St3CG5EpmrqfmVn
         19jg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532XIJC32sMELA5c6zXOMOJM/OYFMJ65pXFw3sRauWpatFRgkQ1c
	/H9C/n2dU58ixcIYWRhNbeA=
X-Google-Smtp-Source: ABdhPJx+eKZH9el+CBYfYcDZYbiQKrZqlh6/VtkzmWc4PA4/wk/hmgvQ3TYqhQMoO09/gGhSuU0/1w==
X-Received: by 2002:a65:64cf:: with SMTP id t15mr103048pgv.131.1627495514500;
        Wed, 28 Jul 2021 11:05:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7b8c:: with SMTP id w12ls1574569pll.0.gmail; Wed, 28
 Jul 2021 11:05:14 -0700 (PDT)
X-Received: by 2002:a17:902:b711:b029:11e:6480:258a with SMTP id d17-20020a170902b711b029011e6480258amr911377pls.41.1627495513907;
        Wed, 28 Jul 2021 11:05:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627495513; cv=none;
        d=google.com; s=arc-20160816;
        b=0kJaOHbgDtuEp7SMHKwreywjglPMubnAZF2VhUVU/cDCaATwh3QgpBPzK0AYRIsWuB
         9O3yFRoiZRjvKqO16+OeJA6sCl1UrcwG0/TMWfjnAgbve9SOTYxWUIu0EGs0nbCfXAOC
         OthKjTe707qddCfVIqDbC/BBzNNBJw5P3swVI9bMq5+Gmyd0yfuzjolNZHz729/hb/YL
         qRea+psG1dGG8PFXDqcM9qw0utJNXLSW4+QmN3BM0f+k2FlWXoeCAeGsCWQGDVoG4LOw
         cOqA00dnichalYPgVmgRMnTio7A6ngqVpWK75LzNNqObxDRRHQXOChyJti01oK48RufM
         zDBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=xL0KoJ8/9cX2NbNyCl74IccCUyyQluUQ2StJPiCADcU=;
        b=kq3Op2+izTLoNYJyIXkYP2F3xMW3lhyM33S2TnjEC6Ortd7bbU1iVlcEroBIKeNfkv
         sxRDxEAfuSErBS27OE7PNU/PX29rw8q0icAhjLg8tvJHzgxawhs5CR1UMUHO3+8PZfpE
         4JJfuZR0VaFPT1oXCb/234xyEyc0qAJDVXH5Pq/DE8iqG44lrVYoN7XCG0LWlurqAwpw
         zK1sq+mD/HD0KXmPJgBnVkt0AvG3N89yPAYAxlCa08SNWJkYDLfD+5yoq+tYAvlmY2ON
         cfMe+Zwl2zVuDmj7l5HVSU7vGujD0fATcuXJwz2RUZYh+kslOwvH/y+0PxKVF4zXpnrO
         c63Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=JWeXhwoX;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y6si19118pgb.3.2021.07.28.11.05.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Jul 2021 11:05:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2F15C60EB9;
	Wed, 28 Jul 2021 18:05:13 +0000 (UTC)
Date: Wed, 28 Jul 2021 20:05:11 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Sasha Levin <sashal@kernel.org>, stable@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Hoang Le <hoang.h.le@dektech.com.au>,
	Jon Maloy <jon.maloy@ericsson.com>,
	Ying Xue <ying.xue@windriver.com>,
	kernel test robot <lkp@intel.com>
Subject: Re: [PATCH 4.9 2/2] tipc: Fix backport of
 b77413446408fdd256599daf00d5be72b5f3e7c6
Message-ID: <YQGcVymPkS6+HZm3@kroah.com>
References: <20210727225650.726875-1-nathan@kernel.org>
 <20210727225650.726875-2-nathan@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210727225650.726875-2-nathan@kernel.org>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=JWeXhwoX;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Tue, Jul 27, 2021 at 03:56:50PM -0700, Nathan Chancellor wrote:
> Clang warns:
> 
> net/tipc/link.c:896:23: warning: variable 'hdr' is uninitialized when
> used here [-Wuninitialized]
>         imp = msg_importance(hdr);
>                              ^~~
> net/tipc/link.c:890:22: note: initialize the variable 'hdr' to silence
> this warning
>         struct tipc_msg *hdr;
>                             ^
>                              = NULL
> 1 warning generated.
> 
> The backport of commit b77413446408 ("tipc: fix NULL deref in
> tipc_link_xmit()") to 4.9 as commit 310014f572a5 ("tipc: fix NULL deref
> in tipc_link_xmit()") added the hdr initialization above the
> 
>     if (unlikely(msg_size(hdr) > mtu)) {
> 
> like in the upstream commit; however, in 4.9, that check is below imp's
> first use because commit 365ad353c256 ("tipc: reduce risk of user
> starvation during link congestion") is not present. This results in hdr
> being used uninitialized.
> 
> Fix this by moving hdr's initialization before imp and after the if
> check like the original backport did.
> 
> Cc: Hoang Le <hoang.h.le@dektech.com.au>
> Cc: Jon Maloy <jon.maloy@ericsson.com>
> Cc: Ying Xue <ying.xue@windriver.com>
> Fixes: 310014f572a5 ("tipc: fix NULL deref in tipc_link_xmit()")
> Reported-by: kernel test robot <lkp@intel.com>
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> ---
>  net/tipc/link.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/net/tipc/link.c b/net/tipc/link.c
> index 06327f78f203..6fc2fa75503d 100644
> --- a/net/tipc/link.c
> +++ b/net/tipc/link.c
> @@ -893,6 +893,7 @@ int tipc_link_xmit(struct tipc_link *l, struct sk_buff_head *list,
>  	if (pkt_cnt <= 0)
>  		return 0;
>  
> +	hdr = buf_msg(skb_peek(list));
>  	imp = msg_importance(hdr);
>  	/* Match msg importance against this and all higher backlog limits: */
>  	if (!skb_queue_empty(backlogq)) {
> @@ -902,7 +903,6 @@ int tipc_link_xmit(struct tipc_link *l, struct sk_buff_head *list,
>  		}
>  	}
>  
> -	hdr = buf_msg(skb_peek(list));
>  	if (unlikely(msg_size(hdr) > mtu)) {
>  		skb_queue_purge(list);
>  		return -EMSGSIZE;
> -- 
> 2.32.0.264.g75ae10bc75
> 

Thanks for these, now both queued up.

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YQGcVymPkS6%2BHZm3%40kroah.com.
