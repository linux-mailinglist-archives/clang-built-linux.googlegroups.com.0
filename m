Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBQOSQ6EAMGQEK4G6HQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id AD0C03D997E
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Jul 2021 01:33:22 +0200 (CEST)
Received: by mail-il1-x138.google.com with SMTP id h17-20020a92d0910000b029020269661e11sf2287812ilh.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 16:33:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627515201; cv=pass;
        d=google.com; s=arc-20160816;
        b=tzQFLHOeVnqJZPz49UpM35lyBbQgzp3wjJckBWXIF+jG4dgiqCwUbioycY24Punv7p
         8O95RklawCsdYvUdhpQU+TRmInry3FeYwVT5tyBhg0zEjLwLLP696/lDBGSGKwRVb4sc
         VNBB07dqCeRk141/IiKAr5ddc/WEze5vRZNrtM1q3GiDdh7GzIFANBPhp0xi5abQTXhl
         5pCFflnfcvqU2FHlx+crVXhnSqbYRM8TXa/TeAcXVf7XAMwlW5nslJ0OmHxqNBWTxgMT
         4AyfAVo26d0XPmD8PQgVCwPuScPP6IaporNhyFcFftTJdC1QPW/mZdkXA1ujN/WNLhT3
         HwCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ieC3bJW9OgTFOUA0CqS2eAjQyF7OkGYZS2WcQZOSQCM=;
        b=yM0XnJBduSygGp/FQvuHVuQgRQu0qX3hOkCBMjnD++mXdOm73xomcIdV5JSQXWld3H
         8i34ljxnS5XXzXWpY3+h84v6YKi1Z5xMdr5r4SoZrTbRJpc9lDfewD/bbWjTrKMqf3tT
         EWFLnEu3HtQ0EJXLus7sGVMrdxLb4kTWNDvJhC6gYOQr5T48x0sCAhD9Wez702EBFs6O
         uCRZ6mH+wb3pDbvZx7C2U+169nMJ3FB9qU29Hruccb417DefRuS4BrG1WtM3C+zHBETn
         eenoumOHO+m9rY5dgO5b090ixisBRZdWe9IkN5HSECCqAa/6FAsjLET1s1Et/3GyJdRh
         8RHw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=eZq87nPK;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1036 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ieC3bJW9OgTFOUA0CqS2eAjQyF7OkGYZS2WcQZOSQCM=;
        b=SEJRd0N81vjdUk+65mxj7C1OOL4xZmSsD6qnDZqyURtBTZsIxC+6y90cqvqaxApF00
         XhJrNLmGdGac/gqDMs4R0MOrT89XDZbw5NX7sDkXC2vW7cgsGfZFpAVXXi0SMxErlKBa
         Y1nHlCziaR+xQFtXfNaTsg9gax4JE3v9ppVqZWbfY5Y/za4iCcBljaEpneE305WtPKEk
         MYk+KjAEYkpgDSVVY8f1Ddut2sn7HlecWISY4cLb2K0Ctaux13odgXnQA7oaUZvI/qNB
         sn56AsdMwV4YxV29A7dkc+mlabz9lPWk60sbLFZnIosxB5Nlr5Gm7PKMYGFbxryqIQge
         XfCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ieC3bJW9OgTFOUA0CqS2eAjQyF7OkGYZS2WcQZOSQCM=;
        b=UnNuaTqCbYV0ncFFN58suPvvklMGPIG+knK4emspfjmgEODQWxZ30nSf2sSKTlcGvz
         H9ZGUB0MQmmJyMu2iQuhKdyuGKd+rXJvpEcKLU+UHLPgxHib4lTC1KfZPslECSfgROiG
         NUpLSqKaQezwjQsiZxJQ626Y+yGxUyD/ed1Frm72t+f1wlZmsqY3oBuxm8lhfhHnSKbv
         hUmDhcN68Q6Wega1HOsI3sIc123sMljhNrsfRDUNCLAfgv0Mw88mctQhQ0SD4PInh8wV
         70OHxn8DtexOYJCzjInzG0EdFaP+b1ImViA6U0tL2ry87cMY3t5NQvhegS1ewr2y9UkY
         G6Gg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533gengoh/YRo/BCaLumesK1Zg4xd1suvZ0Jx/PSBex1X5VlwENp
	QWYMsOyv9wlnTlMpbv/wvvg=
X-Google-Smtp-Source: ABdhPJzXEHzTs/atbThNSO3E4ZJ2qZenjn2s+05+JyfZzToUMRNtOdBwiCcUpsw0TGiTC7Clkl4rGg==
X-Received: by 2002:a05:6602:1808:: with SMTP id t8mr1570041ioh.165.1627515201528;
        Wed, 28 Jul 2021 16:33:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:144b:: with SMTP id p11ls835511ilo.8.gmail; Wed, 28
 Jul 2021 16:33:21 -0700 (PDT)
X-Received: by 2002:a05:6e02:1567:: with SMTP id k7mr1560683ilu.146.1627515201163;
        Wed, 28 Jul 2021 16:33:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627515201; cv=none;
        d=google.com; s=arc-20160816;
        b=M/X5S6nDLkHkGyM1b3vdRcz1jNasyjkyxZFJdCHIp/0G+yzdBDTuBp/2YER/FB6R6p
         PrpFy6758OAb0vMlzx0w+/yAQx/UVZ7jKBNfKAZtO0cv1sGydcj4FEZviaFns8rh+2Zy
         v1TNYmAEfv0+RcPFVdjo7nbACriLfLYJkicIWFkjKFmRFdsDYeIwieJngTpAyGjCE7w7
         nB8cuwC1nbtzCCYwPnxscChhqXHTb+7QG1cMmlOzcoYPQzYEqFpXKoxuTQ69aJ7infll
         frMfO4oRkDcc78hYkd9a7WJLURm64HvoGEf7SFerFHIxfyW6FRdTildhvDkUWV10itow
         xQ7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=hFIkjt/HAKYP2gDSt85Hu9GQQgBuaRL3GoR8pjbA0bw=;
        b=J44qrhl3i8j8H9JrSLfTHevlL26qsZ5yrqY8W94ZUqhU91HItfC1sBH14rsLDk+8RH
         1gqCVHD64bvOnaqPhQLRppHObbzMC8a+aDUS/aD5Kc7KbF0h6EaHlGhCg4AoV2I9bC3g
         GCfr5tjffYUNxYzCjdlvFmX4tfl2SAb1Ao6JwqdQ3Ma2P3BtSezkxYbAvm7K950wQf18
         Qh5aA8Rxt5pSeRjJ/eqEzysvmv6b5Y53blubOshTK5876vHkE4ygsOWi27UygbiqYaK9
         kXyzRdDBWVG4zpud+HwiRgfptRyrwXFq7Wch0HNaPDeCkk3gkYjORiJilG8cfGhW+6iV
         b1EQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=eZq87nPK;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1036 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com. [2607:f8b0:4864:20::1036])
        by gmr-mx.google.com with ESMTPS id b11si72854iln.5.2021.07.28.16.33.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Jul 2021 16:33:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1036 as permitted sender) client-ip=2607:f8b0:4864:20::1036;
Received: by mail-pj1-x1036.google.com with SMTP id e2-20020a17090a4a02b029016f3020d867so6462773pjh.3
        for <clang-built-linux@googlegroups.com>; Wed, 28 Jul 2021 16:33:21 -0700 (PDT)
X-Received: by 2002:a17:90a:fc95:: with SMTP id ci21mr12127797pjb.176.1627515200829;
        Wed, 28 Jul 2021 16:33:20 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id m34sm1068670pgb.85.2021.07.28.16.33.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jul 2021 16:33:20 -0700 (PDT)
Date: Wed, 28 Jul 2021 16:33:18 -0700
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
Message-ID: <202107281630.B0519DA@keescook>
References: <20210727205855.411487-1-keescook@chromium.org>
 <20210727205855.411487-3-keescook@chromium.org>
 <20210728073556.GP1931@kadam>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210728073556.GP1931@kadam>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=eZq87nPK;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1036
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
> > [...]
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

Ah-ha, got it:

diff --git a/include/net/ieee80211_radiotap.h b/include/net/ieee80211_radiotap.h
index c0854933e24f..6b7274edb3c6 100644
--- a/include/net/ieee80211_radiotap.h
+++ b/include/net/ieee80211_radiotap.h
@@ -43,6 +43,10 @@ struct ieee80211_radiotap_header {
 	 * @it_present: (first) present word
 	 */
 	__le32 it_present;
+	/**
+	 * @it_optional: all remaining presence bitmaps
+	 */
+	__le32 it_optional[];
 } __packed;
 
 /* version is always 0 */
diff --git a/net/mac80211/rx.c b/net/mac80211/rx.c
index 2563473b5cf1..b6a960d37278 100644
--- a/net/mac80211/rx.c
+++ b/net/mac80211/rx.c
@@ -359,7 +359,13 @@ ieee80211_add_rx_radiotap_header(struct ieee80211_local *local,
 
 	put_unaligned_le32(it_present_val, it_present);
 
-	pos = (void *)(it_present + 1);
+	/*
+	 * This references through an offset into it_optional[] rather
+	 * than via it_present otherwise later uses of pos will cause
+	 * the compiler to think we have walked past the end of the
+	 * struct member.
+	 */
+	pos = (void *)&rthdr->it_optional[it_present - rthdr->it_optional];
 
 	/* the order of the following fields is important */
 
diff --git a/net/wireless/radiotap.c b/net/wireless/radiotap.c
index 36f1b59a78bf..081f0a3bdfe1 100644
--- a/net/wireless/radiotap.c
+++ b/net/wireless/radiotap.c
@@ -115,10 +115,9 @@ int ieee80211_radiotap_iterator_init(
 	iterator->_max_length = get_unaligned_le16(&radiotap_header->it_len);
 	iterator->_arg_index = 0;
 	iterator->_bitmap_shifter = get_unaligned_le32(&radiotap_header->it_present);
-	iterator->_arg = (uint8_t *)radiotap_header + sizeof(*radiotap_header);
+	iterator->_arg = (uint8_t *)radiotap_header->it_optional;
 	iterator->_reset_on_ext = 0;
-	iterator->_next_bitmap = &radiotap_header->it_present;
-	iterator->_next_bitmap++;
+	iterator->_next_bitmap = radiotap_header->it_optional;
 	iterator->_vns = vns;
 	iterator->current_namespace = &radiotap_ns;
 	iterator->is_radiotap_ns = 1;

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202107281630.B0519DA%40keescook.
