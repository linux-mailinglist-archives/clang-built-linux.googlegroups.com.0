Return-Path: <clang-built-linux+bncBDPYNU65Q4NRBSGAQOEAMGQECMFNG2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3b.google.com (mail-oo1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id D5D2C3D86D3
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 06:42:49 +0200 (CEST)
Received: by mail-oo1-xc3b.google.com with SMTP id u5-20020a4a97050000b029026a71f65966sf740255ooi.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 21:42:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627447368; cv=pass;
        d=google.com; s=arc-20160816;
        b=Qef+CzLwjlAUByU2uog2BUbRGqEke+Xsai9uco4ThleFcGUh5pCSJFI3wlJec5Ap8t
         Q/zzE0Lv88FvtcNlVm+2JHuL4IV1JHKlfcuW0juGUFM/YPz58lHTr9y4ay+Fc3VBRpgj
         nSsEVqHmJjyxdBa9/7FNBtlX6Cih2mg3vqUgJQJ+4ZAFe+cezkBRaGW2cVhOn4b+w9mm
         0fdHYFSfCAaBtlrG8a3kdbtVqUPOUx2ULRA7f3rV/RIApjJRtzLHr5d81d6GPrEAgDnM
         HkOVOel0FyAW9wcfAgnSXSubVLaCSMBa+6RqLSBjYWNlXNA75gSi+VCatJ9VaZVeZaee
         O6HQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=xHCq7kN0uWJAZGI8JUsuT1JDrFcA+Zeo4Z3JaoJCEmY=;
        b=HJXb4XQBGmi3E+5wjRxAFMAeEEN0Yu0BArDgES5csxtuC5AY3yYLxkMOqzxnDn7UPc
         52h2moP9xG2OCYkkj84AoWw8/NcmvROyUF3VLLig3lM7lzpZvKcloFLJIbFWZzVHijWe
         /aK3OjGG2tbQUqa+yn4IhPi33MSy4SLwf57rtgoZuYkluQbZei0lERE1w3Z5mWxGNONR
         7FRnQ/blMfO14Dzbtd90kLyuOZgADp1l1NLAye1aS6F5SkH0oOkxubyWgh5W7vdP0rav
         nMxdTbhPv7r+g3fXlfwDDas6lsqC1pYjojOnD1UMJstsY79c3shsQn8fg/uNv6v+Zcbf
         eUjw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=asPRK8N6;
       spf=pass (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gustavoars@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xHCq7kN0uWJAZGI8JUsuT1JDrFcA+Zeo4Z3JaoJCEmY=;
        b=fI3MpM0uJUHZkwTs3vucOu+Qpnm/idKaVoukefupnkPiZ6pmwUp8XyKfTV5V5W2NSd
         FbVYz/ZT5+afm3ps8L11UFxtQFKSikh3o4HZ3b9oSkwNuWQf86SGLzaL9tbcQd4+kEeY
         WGcuCcslzLiqbgkdl7Qs3KconuTS03Tl5rPJNTzSVA01R5mOKvSo+SBorieqs7SW8VXE
         CU+AK/tScF+mvFKmxwu3+pWuru3QJXkbDbsJBiJ1pxneAHeqxZqnybrXT4NI+NxCL8o5
         UdUdNG8OGS9mnP6at/k6iTaaXZuR+9t/5/7anc3O1IE6FW0Fe6tS8z9oa9dPjStMfaJU
         4xrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=xHCq7kN0uWJAZGI8JUsuT1JDrFcA+Zeo4Z3JaoJCEmY=;
        b=eYrNrHIZoMKgfuczML1S5BdqOxPqupTpzu8CLXfN4f1BvBdWf7BMjddGxWQrJBTjx0
         uVfHx9Kp08HpL5R7qv/cZOgID/rzcOMuj2sGgY8G/2mfI+0scbzRatwoTRbdlCTfRbSJ
         NtsHrG8NpZPBi95xBXpA1WOs1fkpJv856aojNqSXHJ3zWwcUMrEtUZzYcX2OP3N4hRQq
         p8nC7tfqv6Rz962wR5ABZ7w6W5lOA4qTrNJRl2dX0GWRIWfKn1IF5S9BjPD/zK/abzym
         C1I7aMsb6I/6oot4DGfL3t/wEkBVzl5JWGJsg/K4FDRql2XdhtaHmj6GgWUfh+iK1AMp
         ANTw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533YFWOFI8n8M5KfQiVM7GPdcJ6hp8VllBAwLvUb2vrJgZ/M6ED8
	hzuKIgVL0mt7JRRuxFzkqX0=
X-Google-Smtp-Source: ABdhPJx3XFnU5SS/HedBa+Gx3OjONxfZ9GvTtNlGLvxvZFsV5Y5CvjNlFxnlfwTxuRm0et9SdErJ0Q==
X-Received: by 2002:a05:6830:120b:: with SMTP id r11mr17234956otp.173.1627447368781;
        Tue, 27 Jul 2021 21:42:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:4101:: with SMTP id w1ls260361ott.11.gmail; Tue, 27
 Jul 2021 21:42:48 -0700 (PDT)
X-Received: by 2002:a9d:62d4:: with SMTP id z20mr17932106otk.305.1627447368383;
        Tue, 27 Jul 2021 21:42:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627447368; cv=none;
        d=google.com; s=arc-20160816;
        b=NHalACi4o2JmqmiChs8/2PiNZnQdBaGxBwJCoB1InKQmrPxhpbHpA8mkbG9hpV0du4
         TlrEBVQYm7nPlD02bZR7HHGqRDqgTwe/Dje9ovmHl493iAZxd//o198tvLvLjSwtC263
         ecGCox1moALZ0fWz0oLCZhe4WgU9AGGw66MujBzYINklh5gjvSQeeqQBHy4REhHbLxcX
         1tW4eNMyAhbVS4ZK/bwJpAh8S8E4+8ljwZMHBZ0Z7VCg5dOjRnt6ATfl7vH1FxJU5/30
         HxjqRM1bXhQ5GjK0U/euuHQNLe3Z6qdJJxpsEVu4xiu2ruzv8kmJHWISFR0NtvTvXCst
         htkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=co/jGEbwtzU3nFbyxozKsG3V90Xk8+C/L5aN6bTOQl8=;
        b=wEuhGPieEv/ktynZQte2QFf7YWvmsfmzdbpq5+aOdS+x6w6Th1jw8omUR6kiEgMGPj
         vL37USIrbMBKom/zaMR2sgWZMCoihoQCWI4VB675KFX7hWPU6+vvADsQzd4vT9LpWmDl
         16h6wvbNUFJZMd6f29biXGGTPUFp/ZEhYNGEPTxN6YhPlJamRuno4qWIn3H5r5oiDDRf
         I1OkfkmwLH4zNu1SYYmKIWqnjczmh2yDJVOES43xy+MSZvN8kfCvKOVZjJ/wK3pNxGwL
         AGbNTvDqB3paa7m/wzCroVIbvrYM52EDTOYR+qOqaBUHLh6exS0Y9XLxUAyvjpWdZ5a1
         7wWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=asPRK8N6;
       spf=pass (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gustavoars@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k24si415890otn.3.2021.07.27.21.42.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Jul 2021 21:42:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 86E2760F41;
	Wed, 28 Jul 2021 04:42:46 +0000 (UTC)
Date: Tue, 27 Jul 2021 23:45:17 -0500
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Kees Cook <keescook@chromium.org>
Cc: linux-hardening@vger.kernel.org, Keith Packard <keithpac@amazon.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev, linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 06/64] bnxt_en: Use struct_group_attr() for memcpy()
 region
Message-ID: <20210728044517.GE35706@embeddedor>
References: <20210727205855.411487-1-keescook@chromium.org>
 <20210727205855.411487-7-keescook@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210727205855.411487-7-keescook@chromium.org>
X-Original-Sender: gustavoars@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=asPRK8N6;       spf=pass
 (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gustavoars@kernel.org;       dmarc=pass
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

On Tue, Jul 27, 2021 at 01:57:57PM -0700, Kees Cook wrote:
> In preparation for FORTIFY_SOURCE performing compile-time and run-time
> field bounds checking for memcpy(), memmove(), and memset(), avoid
> intentionally writing across neighboring fields.
> 
> Use struct_group() around members queue_id, min_bw, max_bw, tsa, pri_lvl,
> and bw_weight so they can be referenced together. This will allow memcpy()
> and sizeof() to more easily reason about sizes, improve readability,
> and avoid future warnings about writing beyond the end of queue_id.
> 
> "pahole" shows no size nor member offset changes to struct bnxt_cos2bw_cfg.
> "objdump -d" shows no meaningful object code changes (i.e. only source
> line number induced differences and optimizations).
> 
> Signed-off-by: Kees Cook <keescook@chromium.org>

Reviewed-by: Gustavo A. R. Silva <gustavoars@kernel.org>

Thanks
--
Gustavo

> ---
>  drivers/net/ethernet/broadcom/bnxt/bnxt_dcb.c |  4 ++--
>  drivers/net/ethernet/broadcom/bnxt/bnxt_dcb.h | 14 ++++++++------
>  2 files changed, 10 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/net/ethernet/broadcom/bnxt/bnxt_dcb.c b/drivers/net/ethernet/broadcom/bnxt/bnxt_dcb.c
> index 8a68df4d9e59..95c636f89329 100644
> --- a/drivers/net/ethernet/broadcom/bnxt/bnxt_dcb.c
> +++ b/drivers/net/ethernet/broadcom/bnxt/bnxt_dcb.c
> @@ -148,10 +148,10 @@ static int bnxt_hwrm_queue_cos2bw_qcfg(struct bnxt *bp, struct ieee_ets *ets)
>  	}
>  
>  	data = &resp->queue_id0 + offsetof(struct bnxt_cos2bw_cfg, queue_id);
> -	for (i = 0; i < bp->max_tc; i++, data += sizeof(cos2bw) - 4) {
> +	for (i = 0; i < bp->max_tc; i++, data += sizeof(cos2bw.cfg)) {
>  		int tc;
>  
> -		memcpy(&cos2bw.queue_id, data, sizeof(cos2bw) - 4);
> +		memcpy(&cos2bw.cfg, data, sizeof(cos2bw.cfg));
>  		if (i == 0)
>  			cos2bw.queue_id = resp->queue_id0;
>  
> diff --git a/drivers/net/ethernet/broadcom/bnxt/bnxt_dcb.h b/drivers/net/ethernet/broadcom/bnxt/bnxt_dcb.h
> index 6eed231de565..716742522161 100644
> --- a/drivers/net/ethernet/broadcom/bnxt/bnxt_dcb.h
> +++ b/drivers/net/ethernet/broadcom/bnxt/bnxt_dcb.h
> @@ -23,13 +23,15 @@ struct bnxt_dcb {
>  
>  struct bnxt_cos2bw_cfg {
>  	u8			pad[3];
> -	u8			queue_id;
> -	__le32			min_bw;
> -	__le32			max_bw;
> +	struct_group_attr(cfg, __packed,
> +		u8		queue_id;
> +		__le32		min_bw;
> +		__le32		max_bw;
>  #define BW_VALUE_UNIT_PERCENT1_100		(0x1UL << 29)
> -	u8			tsa;
> -	u8			pri_lvl;
> -	u8			bw_weight;
> +		u8		tsa;
> +		u8		pri_lvl;
> +		u8		bw_weight;
> +	);
>  	u8			unused;
>  };
>  
> -- 
> 2.30.2
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210728044517.GE35706%40embeddedor.
