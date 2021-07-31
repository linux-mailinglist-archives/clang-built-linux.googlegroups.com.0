Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBZXESWEAMGQE5OFEI6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe40.google.com (mail-vs1-xe40.google.com [IPv6:2607:f8b0:4864:20::e40])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DE383DC6C2
	for <lists+clang-built-linux@lfdr.de>; Sat, 31 Jul 2021 17:55:19 +0200 (CEST)
Received: by mail-vs1-xe40.google.com with SMTP id w195-20020a6730cc0000b02902bb690b762asf202527vsw.23
        for <lists+clang-built-linux@lfdr.de>; Sat, 31 Jul 2021 08:55:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627746918; cv=pass;
        d=google.com; s=arc-20160816;
        b=Xkw+YQJfH5laOhLVjMt7haDQ+PyYCP111SdfDJYC4UqrQUJOzs0PbmqzePgZKyuZGK
         jt4+tw/6cvyfp/dmpkBG2RaynzkmaSZKfPd0kknMjrvRODwKdEmpTt4zJ8P5B4rnbiei
         Bo7/f7Stg67ZygfdliFTm/Z3LnriIHMp7MNbrpFB7HGmGAdDCCxRusWO4SVbzOE/U1ja
         TaYLvjItgfXP0Q53dsyFZYMLf2WZg1PkG6HiNGBzWVspkAj2N2ZjesgD8Q07IBosSMbh
         od78b+PLiNzq1dk53RISp2sbFmkuxix6/SqpiAR4cCWSQYzGPoj6Q5WW3yA0tvjJ1hX1
         rzpg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=lMmXx2P9iXqzw4hI21d0/ku/1vonLCPrDu8l5X1wfRo=;
        b=pNAOMm3e2eYn9U5HBnfKt67hO+C4WD7x8FqW6PTDulauVVynnEQDx5yJyOvs78TxEI
         n9Upmfc+zpgy7rscNut2UWPN2yZozbTGGsi3hGHANkvrL09lJDb6pTecI6TD7qalpVd9
         Hw1iPCZnx/UaerSNKGr8xx/XNfyUfFWyT6BaU5Z8qk3KPwLIZ7EPoj1F+2h9ols5UB/d
         sWvhK8Gh96cD5j9406STbQNolNAnv6Pwj+A1vqcCzH1A5O4OEqcnOYem7VC+jjiZGYDw
         /tfOBbyjdc37OZM1qnoECXEmpnTzezsl3SGzJEfKsb5Lvfa60aHDnpb2GQ9oq1gHeuSN
         T/1w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=SfXfxxX2;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1032 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lMmXx2P9iXqzw4hI21d0/ku/1vonLCPrDu8l5X1wfRo=;
        b=M11Q8SKzd+YOusI1dQaSg2022K8n8q9A3gyKrNqMonuVFR9kodWCeZ3dSR1PNWIYMT
         lu3xTdBg5sdiVbyVpMaOgJ5ZgebyyBz+qEPcLWhYfWnLVDiUxfkPQhFOaFWOYAlll0UC
         ZICE+r4HNVNdal+LY0uQB+e3bVf68D4Ct22wKOzm55WwqLxidJHn6+DLiVC+pIXyNQtE
         RvFOqWdeV6s+qYl7PrDSbsAH/rcCPtoDf6eO38e7dCt3jSETd0k3073s+wIKm69AZgUN
         SWUVQj/JaeADqpfzvXEmHAzQb37/lqKhgkzQ1fXgpYxlfsZ7IMOP45z7kmRYB97+Xh5g
         AVdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=lMmXx2P9iXqzw4hI21d0/ku/1vonLCPrDu8l5X1wfRo=;
        b=My4PuJIZhcLuLUaUsxFpgVXwFXtgMA6yvd7nUva/5WB8sgV9nV8fBXNbUglDwVAyWJ
         IRshRH8OzPn+u0Z9ZFnbb8OitFPzNMtF61BcZXJHKSD0YcNOmk1JiUzbeErMrkJYWAPp
         FyIcQFF5+/qrM1KyRuOJxhQ3b5J4D6DfsNgJ4JXR3n5kFlOaReHJz7akgtkZ6TvhKPY/
         1T4kELb0HQMRaBererizGXnTgINqmYJ1pw61oKFdSXqFeNS404l2LEl9v7TMLxXKHgXz
         sHMx24V9yKncmubTuYVCTWYdymfGEjvdfi8/RvDeLtKpIL844ZnOoPlg/dgpcpZS9Srn
         WmtQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5334RaXSVYkQ15LYwIe2K981SnzQiac9EeW85gYG73i7B6c3iZgm
	qz7bRrNXqepZmCCtCMkej4Y=
X-Google-Smtp-Source: ABdhPJycY6JsQDtI6U5tGaQyiTLAZb2YI9W0ZsRDLET/q/7/Mg5z+CdGllmGwI7x+QdWrnrJ6f3Cqg==
X-Received: by 2002:a67:e44b:: with SMTP id n11mr6007387vsm.45.1627746918260;
        Sat, 31 Jul 2021 08:55:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:7cc:: with SMTP id y12ls936113vsg.3.gmail; Sat, 31
 Jul 2021 08:55:17 -0700 (PDT)
X-Received: by 2002:a67:df85:: with SMTP id x5mr6041741vsk.3.1627746917679;
        Sat, 31 Jul 2021 08:55:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627746917; cv=none;
        d=google.com; s=arc-20160816;
        b=II9dkb3p03YGdf4vynHUxwCv7ovnrDJtPeZjy7ImPqXRfhB1caE/QWMJNshE65fqbj
         mB5KGW8a2k5NaADO2AlHYT6U7qe6VTLzwNVzAoOrdbaAmn6iv3zbcPCZgvoQ+jGqFFH5
         2T5zhUavGOlbwSKvkrzYJ11vp4mryhwzpAYdpXztdBMIKFQkauOud3qOrvM4banUrWcq
         gXrg1rSrP7NkXoqfrPyRtwJpyHc2fYxbRudgUN6Lrl8ZDt1ZvNaLx2QhcvHo9isduqWl
         VcqaKOnQiswRGb1hoA1o2wKa7zixx7qwgHZRTDqHHoaMP0fZ1T8sZvJGZt7KnVNXAZZd
         JP0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=CWAr3/vvX8dR98nIuJoFiA3TzHrbFffRdXMXWBKex/w=;
        b=nAN9DsKkz5mdwKBQ7f8AdcZ3i69fbaYOr1Rc4JivxmxlhownMDJ1aGIIEY0XJ/oUwm
         p3HiZMKn3S8gYqw0eDuZXjvu3svmp/n5fnSLyWQ8pJG+wBjumVM4e34po/4tRtja1TqV
         44cvao7uvWDLmxA7yjuLfiiMP83y8P0BIFCR9K4TXJJ7DBzFz6jP+FDyHZEEGGetdn//
         5RLbSoslWeo4zjqyC3QaNFXYQegMCDURCixHmtyLxmYasWw2oLT8SS9mMIjbOoCroY0z
         x30Nu17Otsj/hqCCa0GMTiy08chpP+wRvRCkj+SgTd9l3ALott93s9otJm2fbSu3ddoA
         WI+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=SfXfxxX2;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1032 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com. [2607:f8b0:4864:20::1032])
        by gmr-mx.google.com with ESMTPS id o17si419028uat.1.2021.07.31.08.55.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 31 Jul 2021 08:55:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1032 as permitted sender) client-ip=2607:f8b0:4864:20::1032;
Received: by mail-pj1-x1032.google.com with SMTP id b6so19485449pji.4
        for <clang-built-linux@googlegroups.com>; Sat, 31 Jul 2021 08:55:17 -0700 (PDT)
X-Received: by 2002:a63:1e57:: with SMTP id p23mr5970986pgm.41.1627746916773;
        Sat, 31 Jul 2021 08:55:16 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id v10sm5574092pjd.29.2021.07.31.08.55.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 31 Jul 2021 08:55:15 -0700 (PDT)
Date: Sat, 31 Jul 2021 08:55:14 -0700
From: Kees Cook <keescook@chromium.org>
To: Johannes Berg <johannes@sipsolutions.net>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>
Cc: "Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Keith Packard <keithpac@amazon.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev, linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com,
	linux-hardening@vger.kernel.org
Subject: Re: [PATCH 39/64] mac80211: Use memset_after() to clear tx status
Message-ID: <202107310852.551B66EE32@keescook>
References: <20210727205855.411487-1-keescook@chromium.org>
 <20210727205855.411487-40-keescook@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210727205855.411487-40-keescook@chromium.org>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=SfXfxxX2;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1032
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Tue, Jul 27, 2021 at 01:58:30PM -0700, Kees Cook wrote:
> In preparation for FORTIFY_SOURCE performing compile-time and run-time
> field bounds checking for memset(), avoid intentionally writing across
> neighboring fields.
> 
> Use memset_after() so memset() doesn't get confused about writing
> beyond the destination member that is intended to be the starting point
> of zeroing through the end of the struct.
> 
> Note that the common helper, ieee80211_tx_info_clear_status(), does NOT
> clear ack_signal, but the open-coded versions do. All three perform
> checks that the ack_signal position hasn't changed, though.

Quick ping on this question: there is a mismatch between the common
helper and the other places that do this. Is there a bug here?

> 
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
> Should these each be clearing the same region? Because they're currently not.
> ---
>  drivers/net/wireless/ath/carl9170/tx.c   | 4 +---
>  drivers/net/wireless/intersil/p54/txrx.c | 4 +---
>  include/net/mac80211.h                   | 4 +---
>  3 files changed, 3 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/net/wireless/ath/carl9170/tx.c b/drivers/net/wireless/ath/carl9170/tx.c
> index 88444fe6d1c6..6d2115639434 100644
> --- a/drivers/net/wireless/ath/carl9170/tx.c
> +++ b/drivers/net/wireless/ath/carl9170/tx.c
> @@ -278,9 +278,7 @@ static void carl9170_tx_release(struct kref *ref)
>  	BUILD_BUG_ON(
>  	    offsetof(struct ieee80211_tx_info, status.ack_signal) != 20);
>  
> -	memset(&txinfo->status.ack_signal, 0,
> -	       sizeof(struct ieee80211_tx_info) -
> -	       offsetof(struct ieee80211_tx_info, status.ack_signal));
> +	memset_after(&txinfo->status, 0, rates);
>  
>  	if (atomic_read(&ar->tx_total_queued))
>  		ar->tx_schedule = true;
> diff --git a/drivers/net/wireless/intersil/p54/txrx.c b/drivers/net/wireless/intersil/p54/txrx.c
> index 873fea59894f..f71b355f8583 100644
> --- a/drivers/net/wireless/intersil/p54/txrx.c
> +++ b/drivers/net/wireless/intersil/p54/txrx.c
> @@ -431,9 +431,7 @@ static void p54_rx_frame_sent(struct p54_common *priv, struct sk_buff *skb)
>  	 * Clear manually, ieee80211_tx_info_clear_status would
>  	 * clear the counts too and we need them.
>  	 */
> -	memset(&info->status.ack_signal, 0,
> -	       sizeof(struct ieee80211_tx_info) -
> -	       offsetof(struct ieee80211_tx_info, status.ack_signal));
> +	memset_after(&info->status, 0, rates);
>  	BUILD_BUG_ON(offsetof(struct ieee80211_tx_info,
>  			      status.ack_signal) != 20);
>  
> diff --git a/include/net/mac80211.h b/include/net/mac80211.h
> index d8a1d09a2141..7abc1427aa8c 100644
> --- a/include/net/mac80211.h
> +++ b/include/net/mac80211.h
> @@ -1200,9 +1200,7 @@ ieee80211_tx_info_clear_status(struct ieee80211_tx_info *info)
>  
>  	BUILD_BUG_ON(
>  	    offsetof(struct ieee80211_tx_info, status.ack_signal) != 20);
> -	memset(&info->status.ampdu_ack_len, 0,
> -	       sizeof(struct ieee80211_tx_info) -
> -	       offsetof(struct ieee80211_tx_info, status.ampdu_ack_len));
> +	memset_after(&info->status, 0, ack_signal);
>  }
>  
>  
> -- 
> 2.30.2
> 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202107310852.551B66EE32%40keescook.
