Return-Path: <clang-built-linux+bncBCIJL6NQQ4CRBEF2QSEAMGQEFIKVKEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E7153D8A2D
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 11:02:09 +0200 (CEST)
Received: by mail-lf1-x137.google.com with SMTP id bi11-20020a0565120e8bb029037d602924c2sf727359lfb.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 02:02:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627462929; cv=pass;
        d=google.com; s=arc-20160816;
        b=LJY7iinrOVh8fRJMWhLkIa9P1gXH5ajtaicB1YcwpYkA0WdL+6pbg0dj6S2hD9Gmry
         8+YB/scQcpmrdDuYq9VfUvEVciAtUkiXViVcRQ8Gk0JuAK5YSkhxpKjVzWoHySgqYv91
         HKYHZAKsiYw9y90WSVGxbSc5bIyWe2nYUAsBVAxkAfiMRnzOp+hcwiTY4XIkXboa9ASg
         A8RAqr37gEjmB/TjFWik2hoPllUJJGqhI9IM4NA7LzeSCLmVwe9WfCVz9mBLcEK1K9oY
         5u36cW2uYLZMJ4XawgagJuw7h768kgkpkq9AAmoRgkIpTRy27UWFOdWe2BIRpG74NLlU
         3BUA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:mail-followup-to
         :reply-to:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=HB58JC1v/+Gku/eSVhFttv1wMQWBNM3NkoTkAsxvUv8=;
        b=BOb8EQq2d3a78H4VLWvSSW39jQNjuIUGhV0JMBuwqInXu74CnVVTswgYdQykkQs5nz
         xNEefqWttLk36Sw9el+MelNa32K2QczePvRT1dS+WsCWZQD83HPt2sALgWwAnTMLXdK0
         7PVJHyiY3NagOx4cEYptsAsh9aQwwgq9IbmU0gK9S+/fFwAGJwky1m9CrYA4vaOzQBLi
         qjbbVfT0S6ibRY0DYZE7hUA7YqxT8XUeRA4I3ROL6QqBlRbXoVY1+Hb/b/Mn0CVu5L6R
         7bi1dwzi32TGx6WJkQvZZbmAH7dYTL2NQIQYj0mvdcpOqwkcBnoAjGAfoKUGK9zTTDCg
         Id9w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.cz header.s=susede2_rsa header.b=QJtqaRDe;
       dkim=neutral (no key) header.i=@suse.cz;
       spf=pass (google.com: domain of dsterba@suse.cz designates 195.135.220.28 as permitted sender) smtp.mailfrom=dsterba@suse.cz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:mail-followup-to
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HB58JC1v/+Gku/eSVhFttv1wMQWBNM3NkoTkAsxvUv8=;
        b=KhhWe0CvnzEmSO7w4GH3zgoHqC6+4WCqG3vkLg/P53KrHpsKCTY5Ys594CGLPBIic/
         0rzVsb7EYz0iQyt3898ztfljl1qhLr3FHZxMk6iJvyqIVAkYH/c68FbRqXRElBL6bhWB
         B9uD6j4W1TrKyndCP/HpMpOy9z9nGtVAoshtnAPrZXSWmCEAvviiW4uD1vLfZB1Rpmpb
         B7nVNk75NBPhHB+q2nNbyVNqAAiM4NNxvM38o7QvS+Q2ICJuvCJqEQ6+0WwGTmmbiOJY
         CSbsScHeSrUezKt8as3rX4J6pgVKu9NBYRvx01dEq/SQ3r2gy/G6+3+DhR86EgznVViu
         Kwjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:mail-followup-to:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HB58JC1v/+Gku/eSVhFttv1wMQWBNM3NkoTkAsxvUv8=;
        b=MEO5jGKrsFGKWE1PPSbWrOrSAh4gkn4rBjx8hdEuSkDFVCjH6mTeW3N0r5ExWwu4Ph
         mG3D5S4jkF0Ww6ugJNE2rbi+gIQNQLp5Ibzk7SLwBzwUVFwKqEDKSA4qZSbQojMimaCu
         srvkfPBPi1PXDTrNthYHm7S30CpGd6T6gshMX5tZPMwi6x3HiGGRi3710+CeWtHsFs1Z
         12fEjLbHtd6JhYdAHQhKlPmmvVyMoAmau4abdEzHhPI4WQn1dfClF3cdlrP2CMFIotx0
         wKEpY1lyOz428MrbayypPMANmw6HUmkpmnWrBh1pGXuxcP4rHxukfMdmfPQNpfabZ/XR
         aHhA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533cnjxVulOrgqRDrh5Dg3914/MZ70MMMBWNefYJUUH63kD8pLAZ
	W3ns1ppIddbXoYK/6SmjZ+g=
X-Google-Smtp-Source: ABdhPJzx8Up/pBciIX2h6QOLNqTnruHRxU++NIeuxte9Xyyq8RRLB6nxNYIQmoQsagDvXlzPqAmy2A==
X-Received: by 2002:a2e:8590:: with SMTP id b16mr19064610lji.31.1627462929144;
        Wed, 28 Jul 2021 02:02:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:36c2:: with SMTP id e2ls1105364lfs.3.gmail; Wed, 28
 Jul 2021 02:02:08 -0700 (PDT)
X-Received: by 2002:a05:6512:3d26:: with SMTP id d38mr18832282lfv.411.1627462927994;
        Wed, 28 Jul 2021 02:02:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627462927; cv=none;
        d=google.com; s=arc-20160816;
        b=XZ/iK2qc6DMPFR/EMfVy7MYAhJ7+//nPOtDYPdngqKd8Becbqav3iX/DJJeFA3qjZu
         TIz+OVKhnhXjBdcM5Aq4Rbt7XiWkL5LbtEaFkCwWGPSCMDh79xBxLsO3IyN97fDQrl4e
         ej1Oa7ZsV0SWcXKiIgfc5WhXasGdYAVkzKtysTpESvtM6oDsKTIID9jDvGxe7tBH6XYN
         I46EMf78J6ewrsF0oSa4PNSApzyrwBXkUv66BlIZVS/i4Re3ln9Ojwwx5C6NLC+SBsUL
         UJlUvt7mjvpd59M/DGE8ik0UFxU71O1KlBhevxd+JXKT3eJWg5PBGPzGiz2q0EeAf9Jo
         5TCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:reply-to:message-id:subject:cc:to:from:date
         :dkim-signature:dkim-signature;
        bh=sp2fXaO4+VkU0ewmSUxyDBIfoqxWZ/YmzoRuKp72TwU=;
        b=HCrjshFxWr4FJB+fWLFUEODE0XGScBU5LkjlNG964Hl3SeaGjcNswtWuJzdz3GL+Kq
         bg6/fXjk2SknswDGi78MxogbXy5NlTjyQN/ZDkJ5lz60L9X1PqggRGd8P4etrqq+raOe
         zEdyhYo8aXb9KWl+PwGB2Df71iHJCwUeuDzoLGCkYvK8TQ4A0mTOsKZYQ11gsCQHWqEH
         mfI3nkQTtfKGbeIwXubMYuuNc7xAmhSNPR4Cs2bTltIKDQxCdpp2IEoSN1oBf6wwoj5O
         oIZwe6UesZM/OGDjzhpb07Ww5luLBG0UCXlnA3bvnaVi1M/qfkVseK/9u6ZAyxwiMqo3
         mgYw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.cz header.s=susede2_rsa header.b=QJtqaRDe;
       dkim=neutral (no key) header.i=@suse.cz;
       spf=pass (google.com: domain of dsterba@suse.cz designates 195.135.220.28 as permitted sender) smtp.mailfrom=dsterba@suse.cz
Received: from smtp-out1.suse.de (smtp-out1.suse.de. [195.135.220.28])
        by gmr-mx.google.com with ESMTPS id v194si57279lfa.1.2021.07.28.02.02.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jul 2021 02:02:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of dsterba@suse.cz designates 195.135.220.28 as permitted sender) client-ip=195.135.220.28;
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
	by smtp-out1.suse.de (Postfix) with ESMTP id 2DF0A22262;
	Wed, 28 Jul 2021 09:02:07 +0000 (UTC)
Received: from ds.suse.cz (ds.suse.cz [10.100.12.205])
	by relay2.suse.de (Postfix) with ESMTP id 15362A3B8B;
	Wed, 28 Jul 2021 09:02:07 +0000 (UTC)
Received: by ds.suse.cz (Postfix, from userid 10065)
	id 4CA03DA8A7; Wed, 28 Jul 2021 10:59:22 +0200 (CEST)
Date: Wed, 28 Jul 2021 10:59:22 +0200
From: David Sterba <dsterba@suse.cz>
To: Kees Cook <keescook@chromium.org>
Cc: linux-hardening@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Keith Packard <keithpac@amazon.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev, linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com,
	nborisov@suse.com
Subject: Re: [PATCH 01/64] media: omap3isp: Extract struct group for memcpy()
 region
Message-ID: <20210728085921.GV5047@twin.jikos.cz>
Reply-To: dsterba@suse.cz
Mail-Followup-To: dsterba@suse.cz, Kees Cook <keescook@chromium.org>,
	linux-hardening@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Keith Packard <keithpac@amazon.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev, linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com,
	nborisov@suse.com
References: <20210727205855.411487-1-keescook@chromium.org>
 <20210727205855.411487-2-keescook@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210727205855.411487-2-keescook@chromium.org>
User-Agent: Mutt/1.5.23.1-rc1 (2014-03-12)
X-Original-Sender: dsterba@suse.cz
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.cz header.s=susede2_rsa header.b=QJtqaRDe;       dkim=neutral
 (no key) header.i=@suse.cz;       spf=pass (google.com: domain of
 dsterba@suse.cz designates 195.135.220.28 as permitted sender) smtp.mailfrom=dsterba@suse.cz
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

On Tue, Jul 27, 2021 at 01:57:52PM -0700, Kees Cook wrote:
> In preparation for FORTIFY_SOURCE performing compile-time and run-time
> field bounds checking for memcpy(), memmove(), and memset(), avoid
> intentionally writing across neighboring fields.  Wrap the target region
> in a common named structure. This additionally fixes a theoretical
> misalignment of the copy (since the size of "buf" changes between 64-bit
> and 32-bit, but this is likely never built for 64-bit).
> 
> FWIW, I think this code is totally broken on 64-bit (which appears to
> not be a "real" build configuration): it would either always fail (with
> an uninitialized data->buf_size) or would cause corruption in userspace
> due to the copy_to_user() in the call path against an uninitialized
> data->buf value:
> 
> omap3isp_stat_request_statistics_time32(...)
>     struct omap3isp_stat_data data64;
>     ...
>     omap3isp_stat_request_statistics(stat, &data64);
> 
> int omap3isp_stat_request_statistics(struct ispstat *stat,
>                                      struct omap3isp_stat_data *data)
>     ...
>     buf = isp_stat_buf_get(stat, data);
> 
> static struct ispstat_buffer *isp_stat_buf_get(struct ispstat *stat,
>                                                struct omap3isp_stat_data *data)
> ...
>     if (buf->buf_size > data->buf_size) {
>             ...
>             return ERR_PTR(-EINVAL);
>     }
>     ...
>     rval = copy_to_user(data->buf,
>                         buf->virt_addr,
>                         buf->buf_size);
> 
> Regardless, additionally initialize data64 to be zero-filled to avoid
> undefined behavior.
> 
> Fixes: 378e3f81cb56 ("media: omap3isp: support 64-bit version of omap3isp_stat_data")
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
>  drivers/media/platform/omap3isp/ispstat.c |  5 +--
>  include/uapi/linux/omap3isp.h             | 44 +++++++++++++++++------
>  2 files changed, 36 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/media/platform/omap3isp/ispstat.c b/drivers/media/platform/omap3isp/ispstat.c
> index 5b9b57f4d9bf..ea8222fed38e 100644
> --- a/drivers/media/platform/omap3isp/ispstat.c
> +++ b/drivers/media/platform/omap3isp/ispstat.c
> @@ -512,7 +512,7 @@ int omap3isp_stat_request_statistics(struct ispstat *stat,
>  int omap3isp_stat_request_statistics_time32(struct ispstat *stat,
>  					struct omap3isp_stat_data_time32 *data)
>  {
> -	struct omap3isp_stat_data data64;
> +	struct omap3isp_stat_data data64 = { };

Should this be { 0 } ?

We've seen patches trying to switch from { 0 } to {  } but the answer
was that { 0 } is supposed to be used,
http://www.ex-parrot.com/~chris/random/initialise.html

(from https://lore.kernel.org/lkml/fbddb15a-6e46-3f21-23ba-b18f66e3448a@suse.com/)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210728085921.GV5047%40twin.jikos.cz.
