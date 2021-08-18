Return-Path: <clang-built-linux+bncBDT2NAOB24NBBOWQ6KEAMGQECFBATQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 3988C3EFCA4
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 08:27:07 +0200 (CEST)
Received: by mail-lj1-x240.google.com with SMTP id c39-20020a2ebf270000b029019c5777f07fsf635690ljr.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 23:27:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629268026; cv=pass;
        d=google.com; s=arc-20160816;
        b=ADkTDKXZ72xkIBoCA8O6S9PFnwDV8vAXd3DyEfSSEUNQb6BQTYt7HceaFWwxrD/Eil
         zM1lQVgyO+2PaMB1tc2OCtCD/1GXCAhQUrJVIOUIW/O9vLqZaxhVttk7ZY7RgyvxBrK+
         DhQ54upzVWBDK065M3tKC5X/CRgmkeMVXX6D5sXhwLa8QAaYnjjsHEDxZPD2dQjLqWwR
         1KmL/oS6BsnrB404I9mk1hJJPe/IZLsiM6TKoLJdefGp7+BkSSajYxmBmCiQ8Ol8UBID
         UkNjbGOBp24wDS2/6sKEGW7xABA0yW0hFuP5TDt0VXImgzsj49HaQgGRl2ZydCdhl4M4
         Uulw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=t9INkkKZw51/ItluvYT7fjaMfqeEjBRPl8eD3KKgQhg=;
        b=lD5qpBz8kIC9qD5EM39Npih1FKgZPQJ8odFgbWIthenuZ6+IRvv2eS73R5F8XjHlxd
         w0sLc2tEnmujjhhHo6OZoBvhMDFRo9Og7FFb/FfPjf1CLP51Ek+y6eLuNFiIu0i8lVlh
         rE7fL/+iwNlKy10H3Kqp+a/0FAWOr/W61bL2JCBQIBjCxUpL0/0jDZLgntt5KJ3SAeG/
         djIkVHfLj/yEuLZpAks4n91nrlhXqV5isrFLx9/t1tRGqYAy2ID6RE4F0NarFjJnatU0
         d5c6wVakscARqRW05lppO4C+/0jKxGvCkpVsrADMx7iHMB+wXdhdy3Ozw1eRlyk/ccRh
         p3Hg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mkl@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33 as permitted sender) smtp.mailfrom=mkl@pengutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=t9INkkKZw51/ItluvYT7fjaMfqeEjBRPl8eD3KKgQhg=;
        b=bg+k79R0jSUYRt0E230PvAWKoj9HYUya9KEeKzwzb662US13pIO3hSrQN6CwXG+2KJ
         QuoiqHtam6jOc226HtcraalxUAUimyBgYavpR/oYCQZ7UoCydAb7q+u5Kud8ECNipXgu
         Rl0OvSSBfgI4bfqxyYo0TNHUHRYZORKXn7PLAn1nGTmzeczgLX8aCecz+IuqlF8cyjHu
         +TDDJfHkGChx4W577JjYS0nktlpQsAMayf6BX89BUrBr474tFL3kW85qA3XUoqLAZf5G
         g0VSh+x22q2Fmyh3KdpSnZ7G81GDtChu2yRRe18LRptmFrQEK6ntlZ8q2Nwy5l/rNEmj
         VENw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=t9INkkKZw51/ItluvYT7fjaMfqeEjBRPl8eD3KKgQhg=;
        b=YgtMNs80dyF5nOMkFW3Y8rER2R6RFnHgoTdnEE13uOb5OfC7HSmGT6Tdn2cLSUIsxQ
         05hAFZ5RSFATFx1aH5UPTblp4Pdh57a03Oq2FodxFRobeHjOnC0oiFkYcGgJ5tebEeRo
         ICyxH5Jn5hjpCijTvjr+P0sfK8jYrmkrS+hnQoeLAKEVdHnT1IcxzEbCYcIJVCmf/XOW
         Ml+BlY979MAhwtpSZ9ZdIKRGpDYmAr4rcU++k4SB7JdFt/9wIfJeL1P11X1PVlBmKN78
         IdUjzsgGTqtJiq9CyG2h+D9IllPlx+yYAuPeTqXdDwj6v1mwsW9LGVk6XrmOeW2U1LDB
         8ifg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530/e0ofxWcxjKoFmuf5syZbJl/CwyoiyPA0+UR1BjEsCqz9pJkL
	D7zv7RP+YnoFUZLVbzUnlRo=
X-Google-Smtp-Source: ABdhPJxQyA3bND9wRPFllzCrHXhtmMe+9ECagsbXv7aroLccgX4NT4s1lsLqO8JHW07+pUeZWBv6PA==
X-Received: by 2002:a05:651c:88d:: with SMTP id d13mr6716085ljq.238.1629268026763;
        Tue, 17 Aug 2021 23:27:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9109:: with SMTP id m9ls164584ljg.2.gmail; Tue, 17 Aug
 2021 23:27:05 -0700 (PDT)
X-Received: by 2002:a2e:9150:: with SMTP id q16mr6343607ljg.418.1629268025690;
        Tue, 17 Aug 2021 23:27:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629268025; cv=none;
        d=google.com; s=arc-20160816;
        b=ADFCTeO6JiP0f4bzft7tchCPbJ1n8iaO5JomYF689cmycnj8wLV2xyCF3jwJJzrfqF
         +dkv7SvUsh6TxvHVM1PgNOi0RB9q4wwp6KBylnmeuEJAXeRRDn6WKIeN5+pbkN2vysYA
         nBirYGaAdSwy8qJdc1WTtzb4JHJ/RbBLCbCfxxP4zPl6VMxpM9ctYm9GD+ufKXGICn9k
         MbAP/uTydlkIXb/CHmE5ILLQI2Bx7SgbfwgxhLv/UsMC+Chz9sXIftvPqmuaD8kG8Gse
         WdxYc8hrnn1O8kWPV+ua4FYrj20L3dN4mxvfvN8ZisMGvUYdrMGkMnMqmQASri/lvnQt
         Ob8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=kLJa6tQVxWUlKX8AUzScD9LpfZ0c9V8c9q0S/IYBH/Q=;
        b=F0Y99t6TwVuy5WbvQWjq5ELn1+8SwQWUBa6VnjF7PLCGlLLGpYN1UUL4+QrllBoUhB
         JIq1cuVxnTd4RlLANa07xXA2jL0Hpop+L39HQC8KkGSRdZtnQPGTVsGVHTSziF8O/SEd
         s+tZmejS6FUbEmP3I1VSUz0BagFOs5P2Xrs41qC7r61ryCh6xv8PdcYnPocgrddHsvnr
         EEEbzyURp4F6cejsS9LouuwCAfBWQWqqRw+YLMulRn7vuxQEkbmukXGSx6a5vcCrQ6kF
         w6B3WJzCVA7YCzQg5N2QueTjAppMLJxwxyNOejHyko/xwEjktUF4cxwzkHrPJqJtXZ1e
         QkvQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mkl@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33 as permitted sender) smtp.mailfrom=mkl@pengutronix.de
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de. [2001:67c:670:201:290:27ff:fe1d:cc33])
        by gmr-mx.google.com with ESMTPS id q8si240811ljm.2.2021.08.17.23.27.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 23:27:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of mkl@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33 as permitted sender) client-ip=2001:67c:670:201:290:27ff:fe1d:cc33;
Received: from gallifrey.ext.pengutronix.de ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=bjornoya.blackshift.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1mGF2W-0007Xm-Bs; Wed, 18 Aug 2021 08:27:04 +0200
Received: from pengutronix.de (unknown [IPv6:2a02:810a:8940:aa0:ed04:8488:5061:54d4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id 7335C66975A;
	Wed, 18 Aug 2021 06:26:59 +0000 (UTC)
Date: Wed, 18 Aug 2021 08:26:57 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Kees Cook <keescook@chromium.org>
Cc: linux-kernel@vger.kernel.org, Wolfgang Grandegger <wg@grandegger.com>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>, linux-can@vger.kernel.org,
	netdev@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-wireless@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev, linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	linux-hardening@vger.kernel.org
Subject: Re: [PATCH v2 59/63] can: flexcan: Use struct_group() to zero struct
 flexcan_regs regions
Message-ID: <20210818062657.6hvn75kf5o5cgey2@pengutronix.de>
References: <20210818060533.3569517-1-keescook@chromium.org>
 <20210818060533.3569517-60-keescook@chromium.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kduqcl3tf4g5uel5"
Content-Disposition: inline
In-Reply-To: <20210818060533.3569517-60-keescook@chromium.org>
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: clang-built-linux@googlegroups.com
X-Original-Sender: mkl@pengutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mkl@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33
 as permitted sender) smtp.mailfrom=mkl@pengutronix.de
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


--kduqcl3tf4g5uel5
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On 17.08.2021 23:05:29, Kees Cook wrote:
> In preparation for FORTIFY_SOURCE performing compile-time and run-time
> field bounds checking for memset(), avoid intentionally writing across
> neighboring fields.
> 
> Add struct_group() to mark both regions of struct flexcan_regs that get
> initialized to zero. Avoid the future warnings:
> 
> In function 'fortify_memset_chk',
>     inlined from 'memset_io' at ./include/asm-generic/io.h:1169:2,
>     inlined from 'flexcan_ram_init' at drivers/net/can/flexcan.c:1403:2:
> ./include/linux/fortify-string.h:199:4: warning: call to '__write_overflow_field' declared with attribute warning: detected write beyond size of field (1st parameter); maybe use struct_group()? [-Wattribute-warning]
>   199 |    __write_overflow_field(p_size_field, size);
>       |    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> In function 'fortify_memset_chk',
>     inlined from 'memset_io' at ./include/asm-generic/io.h:1169:2,
>     inlined from 'flexcan_ram_init' at drivers/net/can/flexcan.c:1408:3:
> ./include/linux/fortify-string.h:199:4: warning: call to '__write_overflow_field' declared with attribute warning: detected write beyond size of field (1st parameter); maybe use struct_group()? [-Wattribute-warning]
>   199 |    __write_overflow_field(p_size_field, size);
>       |    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> 
> Cc: Wolfgang Grandegger <wg@grandegger.com>
> Cc: Marc Kleine-Budde <mkl@pengutronix.de>
> Cc: "David S. Miller" <davem@davemloft.net>
> Cc: Jakub Kicinski <kuba@kernel.org>
> Cc: linux-can@vger.kernel.org
> Cc: netdev@vger.kernel.org
> Signed-off-by: Kees Cook <keescook@chromium.org>

Acked-by: Marc Kleine-Budde <mkl@pengutronix.de>

> -	memset_io(&regs->mb[0][0], 0,
> -		  offsetof(struct flexcan_regs, rx_smb1[3]) -
> -		  offsetof(struct flexcan_regs, mb[0][0]) + 0x4);
> +	memset_io(&regs->init, 0, sizeof(regs->init));

This even makes the code more readable! \o/

>  	if (priv->can.ctrlmode & CAN_CTRLMODE_FD)
> -		memset_io(&regs->tx_smb_fd[0], 0,
> -			  offsetof(struct flexcan_regs, rx_smb1_fd[17]) -
> -			  offsetof(struct flexcan_regs, tx_smb_fd[0]) + 0x4);
> +		memset_io(&regs->init_fd, 0, sizeof(regs->init_fd));
>  
>  	reg_ctrl2 &= ~FLEXCAN_CTRL2_WRMFRZ;
>  	priv->write(reg_ctrl2, &regs->ctrl2);

regards,
Marc

-- 
Pengutronix e.K.                 | Marc Kleine-Budde           |
Embedded Linux                   | https://www.pengutronix.de  |
Vertretung West/Dortmund         | Phone: +49-231-2826-924     |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-5555 |

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818062657.6hvn75kf5o5cgey2%40pengutronix.de.

--kduqcl3tf4g5uel5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEK3kIWJt9yTYMP3ehqclaivrt76kFAmEcqC4ACgkQqclaivrt
76lMtAf+PLTf+69ONg9/KGwncoo4yvZ5m8bSKHLYfYYuCITf4oOnHWQIBFT3P8Fn
GMKihDcISmFKjqSbFu8aJSqtNFhYzGB0uIUjuhW+15TJRH7SUTZCuT/U6VPXrEWi
qWCGvkl3szxqSpDVrbCW5ChnnsAZ3Nj2pXV+gkB62mvtcwTdqFBczMfbKHNhLHgv
BYjF2uWTN51iadHR3Kese6EccsTaIoCrqZjnGrlJSBVLtt66BT101RY0pE9890e+
+p/LRFYivNeT0DnAObs8TDghwzxWlqfE3nR1QLSvENRbMBSzhEbipc7oz3DQJC4v
WM/41iCaZScHUFfgxPrBqtGtM1p9RA==
=LXIZ
-----END PGP SIGNATURE-----

--kduqcl3tf4g5uel5--
