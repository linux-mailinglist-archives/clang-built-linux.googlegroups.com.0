Return-Path: <clang-built-linux+bncBD2NJ5WGSUOBBDXE6KEAMGQE4KBSYBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C2AC3EFD64
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 09:09:02 +0200 (CEST)
Received: by mail-wm1-x33b.google.com with SMTP id m13-20020a7bcf2d000000b002e6cd9941a9sf1911775wmg.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 00:09:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629270542; cv=pass;
        d=google.com; s=arc-20160816;
        b=u4BT8T8FiPsQSWwjbYdV8qrgRXbSLWY0NvXJ/SKnMFa3YHmjfOHQrkfG5Gde7M3VEC
         +ldibwz31wrP16vdKo7cL4EHQ6Ox20qGfRXP1ZavcTknyP9XFqBvmCyFTw113doz7OYs
         HOE+A1LhL9trvKGjh4pgynkIoMzFe13bPCCUhq30k2dulXusJFwROGlQKWQP8+4J4zYw
         Hao883Or0vws1sD18aDazI+RSCYp1h5c8qQ8KRtUzBygHLRPcdyAkPRwWulAPp1o1Tyl
         5kxfej8nlA83IvxfpmC4CcmrU7Sb3mLU4qZQUPn4QTRI/3ycHfIUJjnwX9RuIVt8z6SP
         Wblg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:user-agent:references:in-reply-to:date:cc:to:from
         :subject:message-id:sender:dkim-signature;
        bh=qBNsGe6RnTfN/iJm3lUeRX6x2+aGGmXX2MlmwSUD5e0=;
        b=xn5byr88c3MgkRpRIijAJExd8bdSJhNtZ3xWq/neoujRqlYNGFk3TXPEl4zR365r3I
         7srLGNnXuMV03BLIE+LdVDEWkeGAFFOLCu3yrB90vmYqwB8gpA4/sDdhJFMtMM5fRFJj
         myb3Ir0rCXQtf1zeTQcd9dR5mudDD14rntACMMYt9rY3EZjiojDr+gYv86Ii7nc2K38h
         ydKVls0VqM4NUipTjCfB0cub3noa+/ieytaN/WZ7Q75qnlSegZ1a1rVPn5Hekl39GMEA
         yVvLI0YIEAqkPUtrx4JgFxKhfL18DkJb+a7p7I3a42o1yiq/3WSALI7Vq2owJgbh++Gx
         GVIA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@sipsolutions.net header.s=mail header.b=TNs5NXux;
       spf=pass (google.com: domain of johannes@sipsolutions.net designates 2a01:4f8:191:4433::2 as permitted sender) smtp.mailfrom=johannes@sipsolutions.net;
       dmarc=pass (p=NONE sp=REJECT dis=NONE) header.from=sipsolutions.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qBNsGe6RnTfN/iJm3lUeRX6x2+aGGmXX2MlmwSUD5e0=;
        b=pdfslvI4Ma0TiTTx6ioOuITJNbs8ovjZ9Trgd5DeTPjNouP3CkImO+eLd2GEgdhD54
         dfOhpBicmYpZQixFc6rkbUGVGsnck9yj9oN135gKUvsmJZ2g7z6oGtrsJYYyr4hoHLKe
         JC7RChR+WQbbRd03hdm7oE1OzWXLk6eTrl8DmpyKTMwy895mruhA3oshqtKjxEyKRjTh
         HvBQ/XqUMArOhNBfaYLPygh4v7lHQ3C12Uo8nWca6z55Gb6qAf4029A8h5YukzAqlQm5
         ukYxOpCHRIU82krtRWhpRiAzmjbhJmsNFKMRY1IhVyToOoLx3/q53de4Ecp+d78K3L2Q
         vNCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qBNsGe6RnTfN/iJm3lUeRX6x2+aGGmXX2MlmwSUD5e0=;
        b=LRsMUM4dAKvvOUK+iwW5X5UwgVR+Ew/mpeDaFNWDDBcr0zPcu5JQHZyh8u0Uuf9mj7
         eVWOkMXkT2OvClq6r4RI6Y7//DPOBQXwnXa+GyHw262Olcv7rdgSlwfPZoxQJubCg0mh
         hz7dJihlVIbLcCUPLEeO1l7knr6AIYY7QRvSVmkIEjPsoyMSvJgdh2hOEH60/U8AXwUq
         +L28hr/cKQJaWbXnVk2mivOAqS7RPX3p6iUF1VYDzoDE42LCY9dO7TpAWwdg0VXKIDDZ
         MGNw0I/XUn68+4rrABbaUT82ZzXXSAbIUokDPS5Y4KrQl5YnzSUP2mcByHeuuKRpa+2M
         +Ehw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533G4ku/1JG1r7MwzNgIGzHttzKjaebqlz+BlJzpzQmrvy5bFY2w
	6a75J7OCupifUeXTBAA3wHc=
X-Google-Smtp-Source: ABdhPJydi/+Pmw+g7JaDaX+x+HXl+KRs5rJkzxcuW7OUXtQtMenL+a7p35ZyNBCHUsZ6MQu87YW3dw==
X-Received: by 2002:a5d:5646:: with SMTP id j6mr8435893wrw.314.1629270542380;
        Wed, 18 Aug 2021 00:09:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:c8:: with SMTP id 191ls2100370wma.0.canary-gmail; Wed,
 18 Aug 2021 00:09:01 -0700 (PDT)
X-Received: by 2002:a1c:4c06:: with SMTP id z6mr6835860wmf.53.1629270541557;
        Wed, 18 Aug 2021 00:09:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629270541; cv=none;
        d=google.com; s=arc-20160816;
        b=hFAfVTfbJopzLMNKfWIjewA0CZTsdznVqafH5Q305TAVscf2m+J5UrDE4PQQTJIIlj
         rUf7DqCjRZnzuEQWFkoSUHWS5rppwWrY8ayk4nbIoQd5qkBS+4wTvnH+iBAFWECtuToo
         G6CTnNANC/Ayn/99yPuYdsSfCJ102/IsC3BhGrOkRL7nQ64FjX0Kp6MTb8RjZ0gdzdJN
         5IseUXLhtzBim7z/bZvUGd8mpxZHrKiywahVOUAZ/M9yXdvFZPdK2/cOJvx3sEvbhPgd
         WqdVv0w+ng2dgBK7pKhaAcU11658bvLwQRq51zxnUMFQLiIH3mMIWo427zDX3C8PLZzx
         ewwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=ym1uD8O5zOub+cpikC9nk8w/uDg8kA95v0fuB8biuWo=;
        b=zp208GDC8z6TKIRNok77DZE40l15QeUKERBQls2O3JHzDsLx7yzc8ibeWN/6DphIkP
         ahVvJiAbZrkR1g9xcuu87+Jqrv1lFZHGy4w8xpVjrd1ZQjKrqmKCNXyrwYNkCI2BEgp/
         hyYYSX1yzhPxlaAQLWKo8VXT+Zk13at52MMBqqUMpB5b6aypDZpyIFhzt0hUaWsJF9xR
         eQ9dtDK0C8XnTC59PDiHT+q0u8N9fzYtcxMAxgwfeGcRSe13FMhBW378GactSyr2QPIV
         syzzX+d8b6hnWKLS1nQ/00qT2xzvY6vuAB/vA0so+SWz20VnE/jUr1rnPonWUXVX1qo6
         Wkvw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@sipsolutions.net header.s=mail header.b=TNs5NXux;
       spf=pass (google.com: domain of johannes@sipsolutions.net designates 2a01:4f8:191:4433::2 as permitted sender) smtp.mailfrom=johannes@sipsolutions.net;
       dmarc=pass (p=NONE sp=REJECT dis=NONE) header.from=sipsolutions.net
Received: from sipsolutions.net (s3.sipsolutions.net. [2a01:4f8:191:4433::2])
        by gmr-mx.google.com with ESMTPS id h7si227929wro.2.2021.08.18.00.09.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Aug 2021 00:09:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of johannes@sipsolutions.net designates 2a01:4f8:191:4433::2 as permitted sender) client-ip=2a01:4f8:191:4433::2;
Received: by sipsolutions.net with esmtpsa (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
	(Exim 4.94.2)
	(envelope-from <johannes@sipsolutions.net>)
	id 1mGFgz-00CbW0-CL; Wed, 18 Aug 2021 09:08:53 +0200
Message-ID: <11db2cdc5316b51f3fa2f34e813a458e455c763d.camel@sipsolutions.net>
Subject: Re: [PATCH v2 44/63] mac80211: Use memset_after() to clear tx status
From: Johannes Berg <johannes@sipsolutions.net>
To: Kees Cook <keescook@chromium.org>, linux-kernel@vger.kernel.org
Cc: "David S. Miller" <davem@davemloft.net>, Jakub Kicinski
 <kuba@kernel.org>,  linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>,  Andrew Morton <akpm@linux-foundation.org>,
 dri-devel@lists.freedesktop.org, linux-staging@lists.linux.dev, 
 linux-block@vger.kernel.org, linux-kbuild@vger.kernel.org, 
 clang-built-linux@googlegroups.com, Rasmus Villemoes
 <linux@rasmusvillemoes.dk>,  linux-hardening@vger.kernel.org
Date: Wed, 18 Aug 2021 09:08:52 +0200
In-Reply-To: <20210818060533.3569517-45-keescook@chromium.org>
References: <20210818060533.3569517-1-keescook@chromium.org>
	 <20210818060533.3569517-45-keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.4 (3.38.4-1.fc33)
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-malware-bazaar: not-scanned
X-Original-Sender: johannes@sipsolutions.net
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@sipsolutions.net header.s=mail header.b=TNs5NXux;       spf=pass
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

On Tue, 2021-08-17 at 23:05 -0700, Kees Cook wrote:
>=20
> @@ -275,12 +275,11 @@ static void carl9170_tx_release(struct kref *ref)
> =C2=A0	if (WARN_ON_ONCE(!ar))
> =C2=A0		return;
> =C2=A0
>=20
>=20
>=20
> -	BUILD_BUG_ON(
> -	    offsetof(struct ieee80211_tx_info, status.ack_signal) !=3D 20);
> -
> -	memset(&txinfo->status.ack_signal, 0,
> -	       sizeof(struct ieee80211_tx_info) -
> -	       offsetof(struct ieee80211_tx_info, status.ack_signal));
> +	/*
> +	 * Should this call ieee80211_tx_info_clear_status() instead of clearin=
g
> +	 * manually? txinfo->status.rates do not seem to be used here.
> +	 */

Since you insist, I went digging :)

It should not, carl9170_tx_fill_rateinfo() has filled the rate
information before we get to this point.

johannes

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/11db2cdc5316b51f3fa2f34e813a458e455c763d.camel%40sipsolut=
ions.net.
