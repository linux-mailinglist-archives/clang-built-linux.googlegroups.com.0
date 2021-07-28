Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBO4UQ6EAMGQEM4O6HJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93e.google.com (mail-ua1-x93e.google.com [IPv6:2607:f8b0:4864:20::93e])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BCD73D9772
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 23:21:01 +0200 (CEST)
Received: by mail-ua1-x93e.google.com with SMTP id c21-20020ab00b950000b02902a1449fe0desf1561191uak.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 14:21:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627507260; cv=pass;
        d=google.com; s=arc-20160816;
        b=qLqXr4srmlVtr6WhTKtJ5uOp4ebiMpdnLXw2ifUNEGlUKeythMfgHlChXqbcu815FI
         wstHL3+3yK905qRYxhfACJK0Te2ccNVycgKmNxWS6jPbU5eNOsD5Y2b7yfgX4HrIzeYY
         Kt7aCmwb43gKp6JdImw2mPfRoKhr8W1Hg3DzMC6WAQ5XaaShRj4cAZn+B2WF0wyjkaqm
         sd7ClGKf6auBsjgu73XJ6jswRZy6x6xbStM2/7sdXJ9LskDtUhuVfNxlXEbJ5EZ9eNdL
         X2LNHS6mYNzu4ZquSMEgVxvRJmhLwwU+XycwGoPhMEBq2VKl9YiDRiTdc/aMMAQqEBkJ
         VjhA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=lUSGuZz6gayIyL93f2vAG0f/vqk78rOH7RdarbDcqxY=;
        b=PaZaLNaVzbezC8R3KekdPBQo6Mz9Ha/gapuGkcC/WXaWNz5Q4vOqcGPHhVGs8hrVH0
         Z9vqHflow0pm1qQ1rKhZJz8/KZCqE2rlBzD3qGMxrO0GRV1Z2AqEj8KePg34XfdL89Su
         BXylFR8BKPCF5/dDz29dXr1EP+H9f11q9aDXKaRPwtRQFrdXPgfRYTt1WYVnj1nuskAI
         NgyEkeLStZ3FADQW2eiSDB4t9x0LWlslazI6EoAEGAEkYK6UOp/lYtxxFtW+VPC+Jgta
         BeZSmJ3fVhclQqUQS/0JaQZ2RDhx2OSNVHRi1kH07DY/zbrgwJoosDnW7qsOuEXgbZxa
         rV7Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=c6JhMXof;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::632 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lUSGuZz6gayIyL93f2vAG0f/vqk78rOH7RdarbDcqxY=;
        b=EohSDVxRX6YV8JD3nKoYGvsfewtfqGT3OqP1NakbSHF1/En4cGFTk5HPeqFG/DFn+P
         LVhWK4Y583oOak3DOjmiNCgRgmc2b7gASh7Q8C45Vmu43n8vw/rP2eCgesA1W45IflkO
         BALwZ1ZJ2I6myEl8quaYB0nYx500HXS2yJ5uuHpkMTAVxyrKQc8uM4ZihJY/QYaGaDyt
         1bFC/fdU26H/B7yHYbt1nteTT09p1AKGnrOBg3UbTZAf8Mrl8nWRsDegIJuB89EvETyN
         cglEvok3ynL4ZlziY7GzOLwRn/CyJ8Rv8bLRMTIhsuluKVes9xo2JlwSylX/H0ID+EF4
         6cJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=lUSGuZz6gayIyL93f2vAG0f/vqk78rOH7RdarbDcqxY=;
        b=nBBtDEuo1qBVfM/8dbFTTPGKoIEQmgy8qgk/GnN+okVcT3sOhyUj+7RuYQzK3vdhW+
         A5DUl0xPx+ygykhlsn3jatqkjeUZNDCfdLHOMbJ0dbUVu3o0V6P62frfvZzkdpp9bMtP
         ZA7qCZsFbwZ0SaY89m2/T00E9QgR9/XOtJoYO0q96EtqXq3+Mue/mTKymbj1vuPPIGbC
         NPODxKw9Uw9E+O7CtqtmCc3PxxDqy1Ey3qwv+yhDhxJmgPZ+HZrb+VJI2v/YVHSdOvEJ
         acSbQOnzbnUKUf0c4mavM0afh07n6BZnHSXRzyFZbGkarkUccvGW/l66M+twIXYuedBD
         u8Cw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530otE4iuRNlJxP42XMYGIuw7RK1mqWTUg+y6nGr7vJMOjfVLT3Y
	1oZrWO98Q24sEr07A41CtdU=
X-Google-Smtp-Source: ABdhPJy3WQOTDm+bB1RhNEezi3K+4d5dkxoOZenz4Nuv05XTaRuLqa2ifGZq31EE9p2323OVZxQIGg==
X-Received: by 2002:a05:6102:c93:: with SMTP id f19mr2073386vst.4.1627507259952;
        Wed, 28 Jul 2021 14:20:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:48a6:: with SMTP id x35ls462590uac.2.gmail; Wed, 28 Jul
 2021 14:20:59 -0700 (PDT)
X-Received: by 2002:a05:6130:3a6:: with SMTP id az38mr882927uab.102.1627507259485;
        Wed, 28 Jul 2021 14:20:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627507259; cv=none;
        d=google.com; s=arc-20160816;
        b=R6V2/5QAtUY0BZXELI33clnQkc1+ccN+avL0IZAw3gRwlWCfEdGJxk+7qivjBSn9Ga
         Z690fEkjfKt9sutMJ9E7CD/bUvmmL9a1mrWPDFJFNNSV0kZtsUwQIdznIcILfRBwuEPi
         F1l3BoqDD/Tlc1EK4uJ9auxhi6pBmKb/N5XrQ//nMSiHQQma8Gf/nmeJAXlU8iyDwPRC
         LaR0Nl17o96tlzlPqnCgXirUggBNCznm0uBP5S/4i7FLMJczFxNG/AMTBmxDiX2EMIGB
         15u5nVDYfrcGf8TaBatysjuVFyo/Zjm0jzO2zXAxdDklCIePCAe2rZzxTLL+Yl35kohI
         XO7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=aCyc2NHOkXGYgjWDmf3vrpmk18fLyVZYd3TxhaXnnVE=;
        b=oQkdua33dK5g4M06gL4NC2EvKUXD9iAwvTkwXOYtg7TRIS4oPTzyBxTenKf46pYX8q
         cleLUzIqBd3CzSfzzWn3VgbvF7NL8hPUCmekS0SrmKNjuzVx1MMfljobXUCWZ553qoG9
         7OcQUpvulSUwwtEahmIv241jPI/oyvZWDcdM1laKxrY1uNGFWmshJY+dLwjafrnJXXfC
         mi0bSOdVWmeTLpPrKy/h8kjIplNj5GnZCppcAdPQmpHJqhNkGriFvI/DQ+zfd+r+ZkMd
         LaBcSg7CHACzMSlv8G5q8wyFXQj+OVRXNSKl6D8XiC8w+6X09sKPkpL7IKJDe3DJDm4a
         TxCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=c6JhMXof;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::632 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com. [2607:f8b0:4864:20::632])
        by gmr-mx.google.com with ESMTPS id v23si56340vsm.1.2021.07.28.14.20.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Jul 2021 14:20:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::632 as permitted sender) client-ip=2607:f8b0:4864:20::632;
Received: by mail-pl1-x632.google.com with SMTP id n10so4325598plf.4
        for <clang-built-linux@googlegroups.com>; Wed, 28 Jul 2021 14:20:59 -0700 (PDT)
X-Received: by 2002:a17:90a:a78d:: with SMTP id f13mr1677183pjq.206.1627507258658;
        Wed, 28 Jul 2021 14:20:58 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id l2sm908060pfc.157.2021.07.28.14.20.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jul 2021 14:20:57 -0700 (PDT)
Date: Wed, 28 Jul 2021 14:20:56 -0700
From: Kees Cook <keescook@chromium.org>
To: Dan Carpenter <dan.carpenter@oracle.com>
Cc: linux-hardening@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Keith Packard <keithpac@amazon.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev, linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 02/64] mac80211: Use flex-array for radiotap header bitmap
Message-ID: <202107281407.52EA0088@keescook>
References: <20210727205855.411487-1-keescook@chromium.org>
 <20210727205855.411487-3-keescook@chromium.org>
 <20210728073556.GP1931@kadam>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210728073556.GP1931@kadam>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=c6JhMXof;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::632
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

On Wed, Jul 28, 2021 at 10:35:56AM +0300, Dan Carpenter wrote:
> On Tue, Jul 27, 2021 at 01:57:53PM -0700, Kees Cook wrote:
> > In preparation for FORTIFY_SOURCE performing compile-time and run-time
> > field bounds checking for memcpy(), memmove(), and memset(), avoid
> > intentionally writing across neighboring fields.
> > 
> > The it_present member of struct ieee80211_radiotap_header is treated as a
> > flexible array (multiple u32s can be conditionally present). In order for
> > memcpy() to reason (or really, not reason) about the size of operations
> > against this struct, use of bytes beyond it_present need to be treated
> > as part of the flexible array. Add a union/struct to contain the new
> > "bitmap" member, for use with trailing presence bitmaps and arguments.
> > 
> > Additionally improve readability in the iterator code which walks
> > through the bitmaps and arguments.
> > 
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> > ---
> >  include/net/ieee80211_radiotap.h | 24 ++++++++++++++++++++----
> >  net/mac80211/rx.c                |  2 +-
> >  net/wireless/radiotap.c          |  5 ++---
> >  3 files changed, 23 insertions(+), 8 deletions(-)
> > 
> > diff --git a/include/net/ieee80211_radiotap.h b/include/net/ieee80211_radiotap.h
> > index c0854933e24f..101c1e961032 100644
> > --- a/include/net/ieee80211_radiotap.h
> > +++ b/include/net/ieee80211_radiotap.h
> > @@ -39,10 +39,26 @@ struct ieee80211_radiotap_header {
> >  	 */
> >  	__le16 it_len;
> >  
> > -	/**
> > -	 * @it_present: (first) present word
> > -	 */
> > -	__le32 it_present;
> > +	union {
> > +		/**
> > +		 * @it_present: (first) present word
> > +		 */
> > +		__le32 it_present;
> > +
> > +		struct {
> > +			/* The compiler makes it difficult to overlap
> > +			 * a flex-array with an existing singleton,
> > +			 * so we're forced to add an empty named
> > +			 * variable here.
> > +			 */
> > +			struct { } __unused;
> > +
> > +			/**
> > +			 * @bitmap: all presence bitmaps
> > +			 */
> > +			__le32 bitmap[];
> > +		};
> > +	};
> >  } __packed;
> 
> This patch is so confusing...

Yeah, I agree. I tried a few ways, and was unhappy with all of them. :P

> 
> Btw, after the end of the __le32 data there is a bunch of other le64,
> u8 and le16 data so the struct is not accurate or complete.
> 
> It might be better to re-write this as something like this:
> 
> diff --git a/include/net/ieee80211_radiotap.h b/include/net/ieee80211_radiotap.h
> index c0854933e24f..0cb5719e9668 100644
> --- a/include/net/ieee80211_radiotap.h
> +++ b/include/net/ieee80211_radiotap.h
> @@ -42,7 +42,10 @@ struct ieee80211_radiotap_header {
>  	/**
>  	 * @it_present: (first) present word
>  	 */
> -	__le32 it_present;
> +	struct {
> +		__le32 it_present;
> +		char buff[];
> +	} data;
>  } __packed;

Hm, yes, I can try this. I attempted something similar without the
"only a struct" part; I was trying to avoid the identifier churn, but I
guess seeing it again, it's not _that_ bad. :P

>  
>  /* version is always 0 */
> diff --git a/net/mac80211/rx.c b/net/mac80211/rx.c
> index 771921c057e8..9cc891364a07 100644
> --- a/net/mac80211/rx.c
> +++ b/net/mac80211/rx.c
> @@ -328,7 +328,7 @@ ieee80211_add_rx_radiotap_header(struct ieee80211_local *local,
>  
>  	rthdr = skb_push(skb, rtap_len);
>  	memset(rthdr, 0, rtap_len - rtap.len - rtap.pad);
> -	it_present = &rthdr->it_present;
> +	it_present = (__le32 *)&rthdr->data;

Hm, interesting way to avoid angering the compiler during the later
it_present++ updates. This is subtle ... a passer-by may not understand
why this isn't just "it_present = &rthdr->data.it_present".

I think this is okay with a comment added. I'll give this a spin.
Thanks!

-Kees

>  
>  	/* radiotap header, set always present flags */
>  	rthdr->it_len = cpu_to_le16(rtap_len);
> @@ -372,7 +372,7 @@ ieee80211_add_rx_radiotap_header(struct ieee80211_local *local,
>  			ieee80211_calculate_rx_timestamp(local, status,
>  							 mpdulen, 0),
>  			pos);
> -		rthdr->it_present |= cpu_to_le32(1 << IEEE80211_RADIOTAP_TSFT);
> +		rthdr->data.it_present |= cpu_to_le32(1 << IEEE80211_RADIOTAP_TSFT);
>  		pos += 8;
>  	}
>  
> @@ -396,7 +396,7 @@ ieee80211_add_rx_radiotap_header(struct ieee80211_local *local,
>  		*pos = 0;
>  	} else {
>  		int shift = 0;
> -		rthdr->it_present |= cpu_to_le32(1 << IEEE80211_RADIOTAP_RATE);
> +		rthdr->data.it_present |= cpu_to_le32(1 << IEEE80211_RADIOTAP_RATE);
>  		if (status->bw == RATE_INFO_BW_10)
>  			shift = 1;
>  		else if (status->bw == RATE_INFO_BW_5)
> @@ -432,7 +432,7 @@ ieee80211_add_rx_radiotap_header(struct ieee80211_local *local,
>  	if (ieee80211_hw_check(&local->hw, SIGNAL_DBM) &&
>  	    !(status->flag & RX_FLAG_NO_SIGNAL_VAL)) {
>  		*pos = status->signal;
> -		rthdr->it_present |=
> +		rthdr->data.it_present |=
>  			cpu_to_le32(1 << IEEE80211_RADIOTAP_DBM_ANTSIGNAL);
>  		pos++;
>  	}
> @@ -459,7 +459,7 @@ ieee80211_add_rx_radiotap_header(struct ieee80211_local *local,
>  	if (status->encoding == RX_ENC_HT) {
>  		unsigned int stbc;
>  
> -		rthdr->it_present |= cpu_to_le32(1 << IEEE80211_RADIOTAP_MCS);
> +		rthdr->data.it_present |= cpu_to_le32(1 << IEEE80211_RADIOTAP_MCS);
>  		*pos++ = local->hw.radiotap_mcs_details;
>  		*pos = 0;
>  		if (status->enc_flags & RX_ENC_FLAG_SHORT_GI)
> @@ -482,7 +482,7 @@ ieee80211_add_rx_radiotap_header(struct ieee80211_local *local,
>  		/* ensure 4 byte alignment */
>  		while ((pos - (u8 *)rthdr) & 3)
>  			pos++;
> -		rthdr->it_present |=
> +		rthdr->data.it_present |=
>  			cpu_to_le32(1 << IEEE80211_RADIOTAP_AMPDU_STATUS);
>  		put_unaligned_le32(status->ampdu_reference, pos);
>  		pos += 4;
> @@ -510,7 +510,7 @@ ieee80211_add_rx_radiotap_header(struct ieee80211_local *local,
>  	if (status->encoding == RX_ENC_VHT) {
>  		u16 known = local->hw.radiotap_vht_details;
>  
> -		rthdr->it_present |= cpu_to_le32(1 << IEEE80211_RADIOTAP_VHT);
> +		rthdr->data.it_present |= cpu_to_le32(1 << IEEE80211_RADIOTAP_VHT);
>  		put_unaligned_le16(known, pos);
>  		pos += 2;
>  		/* flags */
> @@ -553,7 +553,7 @@ ieee80211_add_rx_radiotap_header(struct ieee80211_local *local,
>  		u16 accuracy = 0;
>  		u8 flags = IEEE80211_RADIOTAP_TIMESTAMP_FLAG_32BIT;
>  
> -		rthdr->it_present |=
> +		rthdr->data.it_present |=
>  			cpu_to_le32(1 << IEEE80211_RADIOTAP_TIMESTAMP);
>  
>  		/* ensure 8 byte alignment */
> @@ -642,7 +642,7 @@ ieee80211_add_rx_radiotap_header(struct ieee80211_local *local,
>  		/* ensure 2 byte alignment */
>  		while ((pos - (u8 *)rthdr) & 1)
>  			pos++;
> -		rthdr->it_present |= cpu_to_le32(1 << IEEE80211_RADIOTAP_HE);
> +		rthdr->data.it_present |= cpu_to_le32(1 << IEEE80211_RADIOTAP_HE);
>  		memcpy(pos, &he, sizeof(he));
>  		pos += sizeof(he);
>  	}
> @@ -652,13 +652,13 @@ ieee80211_add_rx_radiotap_header(struct ieee80211_local *local,
>  		/* ensure 2 byte alignment */
>  		while ((pos - (u8 *)rthdr) & 1)
>  			pos++;
> -		rthdr->it_present |= cpu_to_le32(1 << IEEE80211_RADIOTAP_HE_MU);
> +		rthdr->data.it_present |= cpu_to_le32(1 << IEEE80211_RADIOTAP_HE_MU);
>  		memcpy(pos, &he_mu, sizeof(he_mu));
>  		pos += sizeof(he_mu);
>  	}
>  
>  	if (status->flag & RX_FLAG_NO_PSDU) {
> -		rthdr->it_present |=
> +		rthdr->data.it_present |=
>  			cpu_to_le32(1 << IEEE80211_RADIOTAP_ZERO_LEN_PSDU);
>  		*pos++ = status->zero_length_psdu_type;
>  	}
> @@ -667,7 +667,7 @@ ieee80211_add_rx_radiotap_header(struct ieee80211_local *local,
>  		/* ensure 2 byte alignment */
>  		while ((pos - (u8 *)rthdr) & 1)
>  			pos++;
> -		rthdr->it_present |= cpu_to_le32(1 << IEEE80211_RADIOTAP_LSIG);
> +		rthdr->data.it_present |= cpu_to_le32(1 << IEEE80211_RADIOTAP_LSIG);
>  		memcpy(pos, &lsig, sizeof(lsig));
>  		pos += sizeof(lsig);
>  	}
> diff --git a/net/wireless/radiotap.c b/net/wireless/radiotap.c
> index 36f1b59a78bf..f7852024c011 100644
> --- a/net/wireless/radiotap.c
> +++ b/net/wireless/radiotap.c
> @@ -114,11 +114,10 @@ int ieee80211_radiotap_iterator_init(
>  	iterator->_rtheader = radiotap_header;
>  	iterator->_max_length = get_unaligned_le16(&radiotap_header->it_len);
>  	iterator->_arg_index = 0;
> -	iterator->_bitmap_shifter = get_unaligned_le32(&radiotap_header->it_present);
> +	iterator->_bitmap_shifter = get_unaligned_le32(&radiotap_header->data.it_present);
>  	iterator->_arg = (uint8_t *)radiotap_header + sizeof(*radiotap_header);
>  	iterator->_reset_on_ext = 0;
> -	iterator->_next_bitmap = &radiotap_header->it_present;
> -	iterator->_next_bitmap++;
> +	iterator->_next_bitmap = (__le32 *)&radiotap_header->data.buff;
>  	iterator->_vns = vns;
>  	iterator->current_namespace = &radiotap_ns;
>  	iterator->is_radiotap_ns = 1;

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202107281407.52EA0088%40keescook.
