Return-Path: <clang-built-linux+bncBD2NJ5WGSUOBBSOE3CEAMGQEUTQLLWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x537.google.com (mail-ed1-x537.google.com [IPv6:2a00:1450:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id DD5F93EB1C2
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Aug 2021 09:42:01 +0200 (CEST)
Received: by mail-ed1-x537.google.com with SMTP id dh21-20020a0564021d35b02903be0aa37025sf4464356edb.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Aug 2021 00:42:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628840521; cv=pass;
        d=google.com; s=arc-20160816;
        b=FyR+h2DA7gth/YEEVNYiSZB6Bq2Vp2mn0t0DljvRFq7kCxLVhKm6RHyXwr3MtCTaQq
         uOEDcVZi/NP7XwIcvYHfIKupGK0xl7WJ0qSCK7i71/VNGiPkVV52OrGNkqaFswKOtXZn
         tzu9sAkUXnPrUaqzJ0vEYN6yCC0xxllKLTAKGCcxLUn+azfwntj6KPRKy58A3Iy3D+Xq
         moQFVE4xSy6I+Gu6pFKohlYQzf3ZTJvS2UzNnFLbONEhfUnmyyJx2oknsm8uFLJG9ujK
         NqfcRC/KEDPPtW0gjYP4qZth9/w07K1338XP1mAm1cag6tk3BLcC97NR8+eAAqSDds5I
         spAQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:user-agent:references:in-reply-to:date:cc:to:from
         :subject:message-id:sender:dkim-signature;
        bh=ZFX0nEBueBsimPgSbiLSRCikbUK5HsqNArgTnuvDopY=;
        b=Hnr+lkwxHRoqcir/4dDXpVuhGXrlQxmdV1I4WEg087E6xbtKR+GSxsh4+epQvrkYNx
         8IGgn/qekHYGTHK/Taet6aLVqIo6l17OLv6uuhaYEUYHqVD3CeJtptPAK/4+apqGaXZ0
         4yhcwJ2w8N4ymPOkrtYKLjK/ma3DpHjkEXjLivVsXwUOqVbeeJgk4PWJy8Sv6fNzJwpZ
         OGTmVx16RrysOTgThbh0PwF+5U2hzQqoWa+aKc5CPltupXdcyTBbFQ9uJHf5Rq6oft6e
         CGRvkZ0dguUOyi5Sm+qD0kcLMJvYRAapuws0hKrnGAP63tXtoWUBxorlSmiLZVCnKS+/
         N5ZQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@sipsolutions.net header.s=mail header.b=NOnILaiK;
       spf=pass (google.com: domain of johannes@sipsolutions.net designates 2a01:4f8:191:4433::2 as permitted sender) smtp.mailfrom=johannes@sipsolutions.net;
       dmarc=pass (p=NONE sp=REJECT dis=NONE) header.from=sipsolutions.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZFX0nEBueBsimPgSbiLSRCikbUK5HsqNArgTnuvDopY=;
        b=LsmBHi0QWhPKlM4JhaHZjnyo2Bekpwcjsfn/a+SXMdB85I5AW6I9vlkpnW2SF6DbsI
         FG6u5uemnZH6KUuHYeDDch4ylPejRFNRQfWAo+J3KRdDjHv4VuhJbnwPaD8hJ3YezQY9
         znLled77tW5mewRDidG4WVnybGZAsANzewdw4i6gUSgeaZIZG6psVuyTySvR5h68885o
         ml6eJx0rvR38tNrsTSWVILuTo5yzNATNlCg0gGnypnADjKKpSVFDL4olJSmsibMtdpW8
         vQS7XcZ3ha+uE3o7PtctC+/xl6IZdqlh6mw42ls+d4qTG7F5DRqzHMP3aa4Kfgsuz1pL
         wr7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZFX0nEBueBsimPgSbiLSRCikbUK5HsqNArgTnuvDopY=;
        b=PA9Ukbdny08tX6+D1qNReF5pT/AC3LG94hjR3RAKURc5udG0S1pEqjQsOP7iKWiuzw
         YkETdng1Yr2s1nWXAtd2bPi1DlRsrHcyJB6wMYCt5ZHlEVMyo5DUsV8LcedD3LkjIOL1
         4cXPXu7itEc7YE7jdrsxMXtez0WqSvn+vsUxBpNkGmvULlUSZJI/kqA9yRXEuIaf1BKG
         DXs8zMZuwO05nBaQbtsy2A9+dRJN/UEBGmOEewcuS6or2FdPDcP8tDmeLmj0WOW59zEj
         FPkFpsf5vReXHA5iJE8rMzAVnv0xnGN+alSIa8p7MgrQ/6r3Dog2XiYOlm6xkIIVdYiy
         W4Hg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5324DboS0pib4aZWDZkdAvdqKMOFT90eI5lWrtO4P0Myil3ltdZF
	2GI4Atkl07+dcF4ve1BCQ2Q=
X-Google-Smtp-Source: ABdhPJw25ezcVhVLLZgipm99crbRl9yBKGtp/wt0zlRJJL3EEI2s0XfAUwXsWOcNh3tj3Sqet/j+jA==
X-Received: by 2002:a17:907:94c6:: with SMTP id dn6mr1210116ejc.287.1628840521613;
        Fri, 13 Aug 2021 00:42:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:d2d6:: with SMTP id k22ls1037149edr.3.gmail; Fri, 13 Aug
 2021 00:42:00 -0700 (PDT)
X-Received: by 2002:aa7:dbc3:: with SMTP id v3mr1446545edt.63.1628840520772;
        Fri, 13 Aug 2021 00:42:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628840520; cv=none;
        d=google.com; s=arc-20160816;
        b=lLGcZw3LJsDnf3Q8ZxPh9LiXx2twYkW1aCwHbWxrYxClbgAuU2OaEJj4MMIVO2C++P
         EBlOlaDoIvoBckG76M4PPFfTItiEp0xgwC2R8hBooTAHTlIHBoD2yGD5G3zXirxaZUU/
         BaQIoPu1QnclCH2/81LCbWsTnbNOSrwsrFr1jOKqxIGeDAM8EEdFnpJHHVvvEG+o52EC
         EIWgFKSwl1Jiv4IBlyqUqksIv7mDR984+gRo55LsHkzQqfelpuReYSaNIV82iRBMtoBn
         78l/4Yb5AnLv6yj09SIKmc9ZpaweihTwN+pcvj9UJ7Tr56i0PrwgFhFrw/+HgDlHFV2L
         EkzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=v5GvruCHAD5VdGVp7rPAa70pStcYZ0dgf5ANMBb+4wc=;
        b=DPQRCzVoafSIRoh2Ot2uBEI/N5kIdrgrxKWroHfM/Q1L6mPCzDQGE+L7L1mmoj9H5B
         EFFFuY+7z3dYgv8+jNnFXO6wkKg+5LrWDSiXt8pMfhJkxl/fAQeVd3y7w1jeVdieVUhn
         Ugaad6A9v8/gOwaTmaXouyg9snnH16/kOI8c8PGnIvu5IWmdA/SQdNYynazpjGHPYXRt
         /8KJudAmd4Z8LH9l9RuXPHi7RrfF5LT2t6PfJlPlgav/34Cgfii2kyChiKzN9SbnBCGE
         SmyIOD55u941zVgf3mmfzbNjIMmQnRCK0AGTYT+Yo6Q5fGPvA8CUyN6e2/VD2kNCpTQ2
         NRaw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@sipsolutions.net header.s=mail header.b=NOnILaiK;
       spf=pass (google.com: domain of johannes@sipsolutions.net designates 2a01:4f8:191:4433::2 as permitted sender) smtp.mailfrom=johannes@sipsolutions.net;
       dmarc=pass (p=NONE sp=REJECT dis=NONE) header.from=sipsolutions.net
Received: from sipsolutions.net (s3.sipsolutions.net. [2a01:4f8:191:4433::2])
        by gmr-mx.google.com with ESMTPS id w12si69934edj.5.2021.08.13.00.42.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Aug 2021 00:42:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of johannes@sipsolutions.net designates 2a01:4f8:191:4433::2 as permitted sender) client-ip=2a01:4f8:191:4433::2;
Received: by sipsolutions.net with esmtpsa (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
	(Exim 4.94.2)
	(envelope-from <johannes@sipsolutions.net>)
	id 1mERoz-00A937-Sm; Fri, 13 Aug 2021 09:41:42 +0200
Message-ID: <347234b097eb93a0882ad2a3a209c2b7923ff611.camel@sipsolutions.net>
Subject: Re: [PATCH 39/64] mac80211: Use memset_after() to clear tx status
From: Johannes Berg <johannes@sipsolutions.net>
To: Kees Cook <keescook@chromium.org>, "David S. Miller"
 <davem@davemloft.net>,  Jakub Kicinski <kuba@kernel.org>
Cc: "Gustavo A. R. Silva" <gustavoars@kernel.org>, Keith Packard
 <keithpac@amazon.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Andrew Morton <akpm@linux-foundation.org>, linux-kernel@vger.kernel.org,
 linux-wireless@vger.kernel.org,  netdev@vger.kernel.org,
 dri-devel@lists.freedesktop.org,  linux-staging@lists.linux.dev,
 linux-block@vger.kernel.org,  linux-kbuild@vger.kernel.org,
 clang-built-linux@googlegroups.com,  linux-hardening@vger.kernel.org
Date: Fri, 13 Aug 2021 09:41:40 +0200
In-Reply-To: <202107310852.551B66EE32@keescook>
References: <20210727205855.411487-1-keescook@chromium.org>
	 <20210727205855.411487-40-keescook@chromium.org>
	 <202107310852.551B66EE32@keescook>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.4 (3.38.4-1.fc33)
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-malware-bazaar: not-scanned
X-Original-Sender: johannes@sipsolutions.net
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@sipsolutions.net header.s=mail header.b=NOnILaiK;       spf=pass
 (google.com: domain of johannes@sipsolutions.net designates
 2a01:4f8:191:4433::2 as permitted sender) smtp.mailfrom=johannes@sipsolutions.net;
       dmarc=pass (p=NONE sp=REJECT dis=NONE) header.from=sipsolutions.net
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

On Sat, 2021-07-31 at 08:55 -0700, Kees Cook wrote:
>=20
> > @@ -278,9 +278,7 @@ static void carl9170_tx_release(struct kref *ref)
> > =C2=A0	BUILD_BUG_ON(
> > =C2=A0	    offsetof(struct ieee80211_tx_info, status.ack_signal) !=3D 2=
0);
> > =C2=A0
> >=20
> > -	memset(&txinfo->status.ack_signal, 0,
> > -	       sizeof(struct ieee80211_tx_info) -
> > -	       offsetof(struct ieee80211_tx_info, status.ack_signal));
> > +	memset_after(&txinfo->status, 0, rates);

FWIW, I think we should also remove the BUILD_BUG_ON() now in all the
places - that was meant to give people a hint to update if some field
ordering etc. changed, but now that it's "after rates" this is no longer
necessary.

johannes

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/347234b097eb93a0882ad2a3a209c2b7923ff611.camel%40sipsolut=
ions.net.
