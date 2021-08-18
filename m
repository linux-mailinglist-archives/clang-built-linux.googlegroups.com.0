Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB3E26OEAMGQEQYUGLTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 654353EFFE6
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 11:05:49 +0200 (CEST)
Received: by mail-pg1-x53e.google.com with SMTP id q22-20020a63e956000000b002524787adb1sf1062307pgj.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 02:05:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629277548; cv=pass;
        d=google.com; s=arc-20160816;
        b=jrnpwHMKsB6yIxjblfG59Twb7SjKKV6c6XPOWQtqathOIJACNWlHaID7NQCP3vOQEK
         c255fx7oYLYx7S6WQ9gH3ci62DOkrBuLVEYdXvAIYTdAQp5YOfvJTrX+sdFLOBj3Iuai
         iCQgf9NDqafPiaz3Y6bga/LiGdx7kdPvpsocVcmYeHp6pteC1F/+rsTmRN94TS/LyxFM
         OLOaKGEW5Gf5nqHJZ9tWr4PrPj7KP3s9ScqupLMojMNExUAY4uR3c2LdA3avKEeozdwJ
         xdG8iqKYPYfdbsbAAmFhzWyAgUErn+iPkbiron2EMi4sGpVcVHP6Dn/hVdqseDLusv7J
         jdYg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=DuA6jiVsZTcsWweGAhyq24mg4I46I17PDXOxPenU0oc=;
        b=GeC/q4hDMBN7mVZq21g62Ar+F5+gHnj/LJ2AvTumlG69Wh9wK38XyZXU1hVtG1by10
         dd0hlosPHMu4dgB581bcYLYArXLdlbNUMqVEiFWh8v1VssDZ7tuIOUmUiQs2yipoSmqA
         Myzt49pM/PuGETIFAWQdOtTiShuuA1Jb8JXPcGXZp6MFnIzvQWo1cWHTWZjhyTgT5v5f
         LcsXlhHTupXPr2NAUPJli5XsOcGdinFBLyIAi3Xgmmw1lMc2b7jH/slIa3wnhXQBKL9J
         vWliOyRGQhh9pNft4IPj5SZQvLCJpgenJBHtpp1FiFUuxdeeAFLKkG0C/Gh4xtHvlIIh
         6c7w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=R5Ryqi+3;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102a as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DuA6jiVsZTcsWweGAhyq24mg4I46I17PDXOxPenU0oc=;
        b=ZtymyU0XPO+pG4flMzFoDyydRHUGguh8fEDO0Gn+Ht55eWoYEMCRkV0rB3PQZdnxVu
         b2afMmbMGVoWtN5pcGmGZIraC9ghZoYjYlfhvyY4Hemxoq2Pk+XcgPk9sc7YZC/VNaYg
         7DuIDyheheFFUPzG3ZAXKIYY7fzWo6F4cQLOPltK0zsrS+CFKMau4hj2k5LhHahr9Wnr
         qvPdK8bo86uhxtBhBKr4H1VUR2fdclrB1xi6eHkxloyKZbasyzMU1NDUVVfTx8A9CySi
         MjMG/wtG1wtoiZo9duAKtyHu6eqzXVP2nLKgsLxy4Vb11W5lYaf1qmaXYLXStiAuQD6A
         q9Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DuA6jiVsZTcsWweGAhyq24mg4I46I17PDXOxPenU0oc=;
        b=WjMSS7ZykGLXtg8enZoKEZoeBLCo7pKok34Uf7gd3D3076PkbOiZyYd9Z8fI+cL6TU
         +XsLsTyC653WXMDD84BRVH6haPMqKEDP6LfWbS+VLTpw3yOaA3CUIv5nYp/c21vrdNFJ
         jyl0gDaXKJa8/ADOntikrnbQN56RQwzTTXwBXvmJ5HaVDFWzAxPhXuwpMsR1tBojoxkZ
         VOwmQbHV+P69cSSEzdVcBOScDCREiY+GWPXG0NseZToG1upC5vf84tP2p77QwNhSvoY/
         xoT1TEhfkuPbr963slDerOUqFNmyCBpLRy37KD3qKrvY5Uc4UETsXYhinnA2BU5fJS7T
         Dxow==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Zv0aXcFihfa9LckT4yqFLcvnePE/MA+VUeizIvlfO3bl6mWGg
	FbVBZ9aNfdzvmflN8ypqrpU=
X-Google-Smtp-Source: ABdhPJz9K7yjDvTPvLliJjCOAOxfPrKDtnkEr48PbuP6PCPY6aMtJsZfgKVXLd1LSHNlMSbU0LzhvQ==
X-Received: by 2002:a65:6919:: with SMTP id s25mr7977822pgq.2.1629277548118;
        Wed, 18 Aug 2021 02:05:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:d106:: with SMTP id z6ls694436pfg.7.gmail; Wed, 18 Aug
 2021 02:05:47 -0700 (PDT)
X-Received: by 2002:a65:6392:: with SMTP id h18mr7915915pgv.397.1629277547616;
        Wed, 18 Aug 2021 02:05:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629277547; cv=none;
        d=google.com; s=arc-20160816;
        b=okT/Qn9Kr2VZ4XxE33SvBg2yvmSY0YDLgMsQKmx+X9dxUSwM7kAj6XGveHqlEun/wn
         jYD9ssHLf4us/dggJVi541uyLbUvKLx0iwn8SP9P7hCpHXh10d3sTQs4wG/6vUu67atV
         LI3ity2fAIOa6pGa3Tv7QSK9YwCcptQxOrMnqzOQcBMZQXmx9gd8BAP+H9Wbql4Qaud1
         G/e+Onz/NRkkoHN/381UwGY2vqVUfZJSBEWDAgmtJg5DQ9A5xOPPPWstHFFnbmQCBk+v
         q135u74yQpi/1ZyN7BUCbeKz4J8p/u/wYiQ3Up2HvthvR2h+57bMnD2iGYUI9vQeA3KI
         rOMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=NwlqG+rGO9KvfhCSwLDgRYsI8h6dWdnqYqbHJGPEme0=;
        b=AvQOBsps1nABv/YlZzZoVVL3EMkJY0sn9G14vJLEHw4JfzSUK8wIYAQqDeQU7mx0tT
         75RMK9ELmo0gGw9KK88AMlL8cbQepUVWCIQc9P4F2eDfDHeGW5ZhOxSGDUefJDVh5Bdz
         x4wWMg1/5oD/Uv7Fehi4IzJbpsyikhyGx7la+83lmlPKuAiz8qr3tDq3xye8tY70MZte
         FJaU4zCh1HdGXqpDXjOI5p96TxpQYWBz1LSDaYpnUH5WhhE8iSxW4nnv1NrR6rGdxO7c
         7TqEwwhvPcnysv6+b1h82rgNttcgwpaTh3CUcKXECfp74M0J1du8YCP3l8NiXy/waBlX
         2H+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=R5Ryqi+3;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102a as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com. [2607:f8b0:4864:20::102a])
        by gmr-mx.google.com with ESMTPS id g2si211510pji.0.2021.08.18.02.05.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Aug 2021 02:05:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102a as permitted sender) client-ip=2607:f8b0:4864:20::102a;
Received: by mail-pj1-x102a.google.com with SMTP id fa24-20020a17090af0d8b0290178bfa69d97so1968227pjb.0
        for <clang-built-linux@googlegroups.com>; Wed, 18 Aug 2021 02:05:47 -0700 (PDT)
X-Received: by 2002:a17:90a:6c97:: with SMTP id y23mr8162537pjj.117.1629277547417;
        Wed, 18 Aug 2021 02:05:47 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id y19sm5468368pfe.71.2021.08.18.02.05.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Aug 2021 02:05:46 -0700 (PDT)
Date: Wed, 18 Aug 2021 02:05:45 -0700
From: Kees Cook <keescook@chromium.org>
To: Johannes Berg <johannes@sipsolutions.net>
Cc: linux-kernel@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>, linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	dri-devel@lists.freedesktop.org, linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org, linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	linux-hardening@vger.kernel.org
Subject: Re: [PATCH v2 44/63] mac80211: Use memset_after() to clear tx status
Message-ID: <202108180203.592E3F01@keescook>
References: <20210818060533.3569517-1-keescook@chromium.org>
 <20210818060533.3569517-45-keescook@chromium.org>
 <11db2cdc5316b51f3fa2f34e813a458e455c763d.camel@sipsolutions.net>
 <8b48dac4c40127366e91855306d24e07eb0b81d9.camel@sipsolutions.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <8b48dac4c40127366e91855306d24e07eb0b81d9.camel@sipsolutions.net>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=R5Ryqi+3;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102a
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

On Wed, Aug 18, 2021 at 10:06:51AM +0200, Johannes Berg wrote:
> On Wed, 2021-08-18 at 09:08 +0200, Johannes Berg wrote:
> > On Tue, 2021-08-17 at 23:05 -0700, Kees Cook wrote:
> > >=20
> > > @@ -275,12 +275,11 @@ static void carl9170_tx_release(struct kref *re=
f)
> > > =C2=A0	if (WARN_ON_ONCE(!ar))
> > > =C2=A0		return;
> > > =C2=A0
> > >=20
> > >=20
> > >=20
> > > -	BUILD_BUG_ON(
> > > -	    offsetof(struct ieee80211_tx_info, status.ack_signal) !=3D 20);
> > > -
> > > -	memset(&txinfo->status.ack_signal, 0,
> > > -	       sizeof(struct ieee80211_tx_info) -
> > > -	       offsetof(struct ieee80211_tx_info, status.ack_signal));
> > > +	/*
> > > +	 * Should this call ieee80211_tx_info_clear_status() instead of cle=
aring
> > > +	 * manually? txinfo->status.rates do not seem to be used here.
> > > +	 */
> >=20
> > Since you insist, I went digging :)
> >=20
> > It should not, carl9170_tx_fill_rateinfo() has filled the rate
> > information before we get to this point.

Ah-ha! Thanks for checking. I'll update the comment to explain the
rationale here.

> Otherwise, looks fine, FWIW.

Thanks!

> Are you going to apply all of these together somewhere? I (we) can't,
> since memset_after() doesn't exist yet.

Right, given the dependencies, I am expecting to just carry the whole
series, since the vast majority of it has no binary changes, etc. I'm
hoping to get it into -next soon, but we're uncomfortably close to the
merge window. :P

--=20
Kees Cook

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/202108180203.592E3F01%40keescook.
