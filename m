Return-Path: <clang-built-linux+bncBCIJL6NQQ4CRBQM5Q6EAMGQEJRGMKWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0239C3D97A9
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 23:40:18 +0200 (CEST)
Received: by mail-lf1-x137.google.com with SMTP id g20-20020a05651222d4b02903821c63a72asf1649962lfu.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 14:40:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627508417; cv=pass;
        d=google.com; s=arc-20160816;
        b=VioIM1s4L4E/+CLiicNJbsQT3+LA+WMjNVrrnMtx5E1YGROAyzoOORDamQsleIHMn+
         rFcgB6rHjW5FSsTGTdWSgoiR1Ub9V7P5VGHzyBB/DQXetYydSpajac4DEfbQmaSA/oH0
         iu/dir15cDwCPy4yx6f+PmD1nEREq/jSYChgg+MtjsOUoC1cqES/XrbG2DIGq8zjoCPa
         v/f8SdnySjkOpOfBs2FaJzfOnZhwTKeoAQLfdJnWKFEoIrRqBl1eSfz3AUReQ85Fbch3
         3li8WbyouUBKJsogl2A7mxoTCU7haxB4/EPPzpTGKY97+GOPwWl8l9o5PlmzEHCm/VE/
         6V8A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:mail-followup-to
         :reply-to:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=tffbUF0XUx5pzo0XpmZVotDpXse2R7psVXiUk+GM5Xs=;
        b=vKjwCEoayDZgOXohgvaly5m47gM6Lqu/p28AanfLLJUAZ7Kf7yIe9ZXvez2vWFA/BI
         ODxuAhdjfBqDigSsIwJFaWw1uWqlIlEWVDWhGHv+VjACfA6mK3YAmlxWNsPs/mH+jb1U
         dDnqeR8DUyto40KH2HFsJx3x/2O8+lPNGNXlxbt4bq5fKkTIeVUxcdndvHvCiBoVaQzz
         Kh81QTaDzITZaZisAKFjjqOVmlau1JOtDhBJA1u77JxeVpUPVH4MIjOEDrnSj1mJ6918
         YlkxCCkdAqsI+3hcdy6RavR5djIMqnjQE92s1hBh/zFX+gEhAMhdU8PSh3XDvA9tqRRi
         PwvA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.cz header.s=susede2_rsa header.b=P+ZyHs6o;
       dkim=neutral (no key) header.i=@suse.cz;
       spf=pass (google.com: domain of dsterba@suse.cz designates 195.135.220.29 as permitted sender) smtp.mailfrom=dsterba@suse.cz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:mail-followup-to
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tffbUF0XUx5pzo0XpmZVotDpXse2R7psVXiUk+GM5Xs=;
        b=I8Weu21kx880aOZLj0y1EVI/JSaBP1joj5YEfwX5G8BkefNJid4Supbq2MCNOxf//p
         wF4gfIlAgD/DoMwmv7vxtedwPCWibSGrXjPLQLTyT9lUJkz7y9ycOHETND5xTCdHqBFF
         SBZEm27m4rhdBIWzkUzpBJ+TI1Klb5GAT6FnPx2crR+SUoNESDiie0KFN6jO0V5x/Ynd
         nuB3yv6+6NDtQLxKMWKK3ZKEeIKt0zuD6cj/OhzW2wMCaN83so68sNZ5GoBlQ7NPROEe
         Z78T1Iczjj6C6NUx3/Zx+CK3LKbv5jE5W8NVegSa4+1dJ5koqYTWUFvIq2q8/pe+WO6W
         VhKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:mail-followup-to:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tffbUF0XUx5pzo0XpmZVotDpXse2R7psVXiUk+GM5Xs=;
        b=e9Z4HKN/J3m7hxOhr6ay2wJ1npw6KWcLLuXUealxnZCa/IAITerZXBWZvuU+VTvFRV
         MJkJUFiHduGcMAaWL+lPe9xUg3Jp7x6SIV51v7sMyPkZxRbgh4R/cF+B8213TUcUCxQ4
         oXRUjs9+2wAgU8dITb+6oH4uVxsqy9mARdn/yZZMVnZq/q17mTWUiBLcAxOGgtxzt9d+
         d4WbXvQtmmK+Buv6BIaFmm+1sOxkvSfZshDMmpTIldw4VAsRVb5PVirF2lkOOIqFZq9v
         amGEgzPSc05qcxHknVaHBbdjlW10ZbEOvWNWcv4Bgbz7SIvgv28uqJWGakAeYeD00Ht7
         tEfg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5334vPBTywvFjvkmB0ZE76NMzZYfBRCycgEv6EsSj2+3djbHRqj8
	dNFLv00L9ix/QyNaTQeUeCo=
X-Google-Smtp-Source: ABdhPJzpCOH4MR3vANBfTBYOKLNJs6uxi3ezG6h4+t5odUlgOvkj4yHYSdRI/BME/S3FMI6hKrIc3g==
X-Received: by 2002:a05:6512:6c5:: with SMTP id u5mr1144874lff.243.1627508417483;
        Wed, 28 Jul 2021 14:40:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:b5c4:: with SMTP id g4ls611386ljn.7.gmail; Wed, 28 Jul
 2021 14:40:16 -0700 (PDT)
X-Received: by 2002:a2e:85d8:: with SMTP id h24mr1037833ljj.365.1627508416394;
        Wed, 28 Jul 2021 14:40:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627508416; cv=none;
        d=google.com; s=arc-20160816;
        b=w95tnP/UeHxVTeWzoVTuUdsffAh7V+4ebjU3ESUAeB9gbgl16aCAd749ky27wQg2MX
         MECInSNct06R37bu4dJcflxxL4hVgGkigANZIaxc6Fmb21YKjM5lWXx2dgSjJ2s8DzB6
         aXP+VdToeuvDe3NfW/UqHxsX0etV6Gy2BGHnOwupjtFZ4NgpFuYG5aikl2ekRMAh/XKV
         2u5ByYiBoT3jZWCf94u3bDLym5CHGpXUiBP7kNLsgW9Fvc0gxHIsR20towiaO4u/o8DI
         p7duSm9mB5pEthiZGnHQn3pS2En6T/eSCoWp+GyvR9JCnagf05bgsBve231bVRRjV+Gs
         o7kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:reply-to:message-id:subject:cc:to:from:date
         :dkim-signature:dkim-signature;
        bh=oR4vzK6aCnqNgUfz40K7pF710nacCw6QNahoytQWvX8=;
        b=vL7NyQf6IvqTSRYmCh+jvQDTEVT3Wigd1xy2U8tSOfLHCaBOEiFENCiLp6kvsx+LG6
         DEhyXzC64HH0KzEsG8ZSMHU8SrNl5N2+jDllpX6piD+tqZh8Ci23zZ5ysCbN18vtZGPC
         feebT5a0MO6ziUIt0qcmYvZiIZd25xKaiXkSdtkOx+2LMU6fjT3Q5/fa3pCKJ+7bDZNR
         YL4NW/qj5++aUlOlhRwgr5c1OTUqRhvTHhznTTlPEvINoyNQwq2z41n/pppk5riCxcHl
         Ri84BZAcpgO5gKj/QE8xieFP9NPJffO1dl6jAMx3+lUf/GTS6+fyBbmQ9DGb997Z6YVI
         6Jag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.cz header.s=susede2_rsa header.b=P+ZyHs6o;
       dkim=neutral (no key) header.i=@suse.cz;
       spf=pass (google.com: domain of dsterba@suse.cz designates 195.135.220.29 as permitted sender) smtp.mailfrom=dsterba@suse.cz
Received: from smtp-out2.suse.de (smtp-out2.suse.de. [195.135.220.29])
        by gmr-mx.google.com with ESMTPS id z24si62678lfq.5.2021.07.28.14.40.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jul 2021 14:40:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of dsterba@suse.cz designates 195.135.220.29 as permitted sender) client-ip=195.135.220.29;
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
	by smtp-out2.suse.de (Postfix) with ESMTP id A4D301FFF7;
	Wed, 28 Jul 2021 21:40:15 +0000 (UTC)
Received: from ds.suse.cz (ds.suse.cz [10.100.12.205])
	by relay2.suse.de (Postfix) with ESMTP id 81390A3B83;
	Wed, 28 Jul 2021 21:40:15 +0000 (UTC)
Received: by ds.suse.cz (Postfix, from userid 10065)
	id 6EF36DA8A7; Wed, 28 Jul 2021 23:37:30 +0200 (CEST)
Date: Wed, 28 Jul 2021 23:37:30 +0200
From: David Sterba <dsterba@suse.cz>
To: Bart Van Assche <bvanassche@acm.org>
Cc: Dan Carpenter <dan.carpenter@oracle.com>,
	Kees Cook <keescook@chromium.org>, linux-hardening@vger.kernel.org,
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
Message-ID: <20210728213730.GR5047@suse.cz>
Reply-To: dsterba@suse.cz
Mail-Followup-To: dsterba@suse.cz, Bart Van Assche <bvanassche@acm.org>,
	Dan Carpenter <dan.carpenter@oracle.com>,
	Kees Cook <keescook@chromium.org>, linux-hardening@vger.kernel.org,
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
 <20210728085921.GV5047@twin.jikos.cz>
 <20210728091434.GQ1931@kadam>
 <c52a52d9-a9e0-5020-80fe-4aada39035d3@acm.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <c52a52d9-a9e0-5020-80fe-4aada39035d3@acm.org>
User-Agent: Mutt/1.5.23.1-rc1 (2014-03-12)
X-Original-Sender: dsterba@suse.cz
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.cz header.s=susede2_rsa header.b=P+ZyHs6o;       dkim=neutral
 (no key) header.i=@suse.cz;       spf=pass (google.com: domain of
 dsterba@suse.cz designates 195.135.220.29 as permitted sender) smtp.mailfrom=dsterba@suse.cz
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

On Wed, Jul 28, 2021 at 02:37:20PM -0700, Bart Van Assche wrote:
> On 7/28/21 2:14 AM, Dan Carpenter wrote:
> > On Wed, Jul 28, 2021 at 10:59:22AM +0200, David Sterba wrote:
> >>>   drivers/media/platform/omap3isp/ispstat.c |  5 +--
> >>>   include/uapi/linux/omap3isp.h             | 44 +++++++++++++++++------
> >>>   2 files changed, 36 insertions(+), 13 deletions(-)
> >>>
> >>> diff --git a/drivers/media/platform/omap3isp/ispstat.c b/drivers/media/platform/omap3isp/ispstat.c
> >>> index 5b9b57f4d9bf..ea8222fed38e 100644
> >>> --- a/drivers/media/platform/omap3isp/ispstat.c
> >>> +++ b/drivers/media/platform/omap3isp/ispstat.c
> >>> @@ -512,7 +512,7 @@ int omap3isp_stat_request_statistics(struct ispstat *stat,
> >>>   int omap3isp_stat_request_statistics_time32(struct ispstat *stat,
> >>>   					struct omap3isp_stat_data_time32 *data)
> >>>   {
> >>> -	struct omap3isp_stat_data data64;
> >>> +	struct omap3isp_stat_data data64 = { };
> >>
> >> Should this be { 0 } ?
> >>
> >> We've seen patches trying to switch from { 0 } to {  } but the answer
> >> was that { 0 } is supposed to be used,
> >> http://www.ex-parrot.com/~chris/random/initialise.html
> >>
> >> (from https://lore.kernel.org/lkml/fbddb15a-6e46-3f21-23ba-b18f66e3448a@suse.com/)
> > 
> > In the kernel we don't care about portability so much.  Use the = { }
> > GCC extension.  If the first member of the struct is a pointer then
> > Sparse will complain about = { 0 }.
> 
> +1 for { }.

Oh, I thought the tendency is is to use { 0 } because that can also
intialize the compound members, by a "scalar 0" as it appears in the
code.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210728213730.GR5047%40suse.cz.
