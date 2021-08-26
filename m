Return-Path: <clang-built-linux+bncBDT2NAOB24NBB5XHTSEQMGQEVGKMGSQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A810C3F8267
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Aug 2021 08:25:59 +0200 (CEST)
Received: by mail-lf1-x138.google.com with SMTP id x14-20020ac2488e000000b003d91325c257sf585376lfc.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 23:25:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629959159; cv=pass;
        d=google.com; s=arc-20160816;
        b=KRCsGGXdkOLS+6oYFZnsPQK4WkwVYM89eRiJ0hcO/bluatx+kx+7ddFtP81mNWfG0R
         FO5RKH8KuCy1qzz5Y4vW5IjOCPhskbDzUuVvhfGHjxwdiJCbE/fP7KiZIpkYWuKvF9fV
         j8N0LIPAPudoGeWoS3mZl6yfonBghgZsW49YndiKAtz3Cbgx4vdisWXePB7ao2tH7uhI
         mDupqbDg/BSqmxixF4V3a8uINgUqA2R6bL5nHEEYcDuA75XRkYPrMYDUeJcQ42HF0kEA
         9bcbbZoTaS7JC4MOK822NuCgXeic1pEnQTStAi10DE0XCNYx6cUaTm9tsvm61YRIAkmm
         o2uw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=LVShFNOWy1C/NZSQ3p0Uq4D3uTCKYahqtwbxxKeubRM=;
        b=RRq+en7PMKN1APbVD9b+13+ZsSUUBK8lCtidV6GghN1ddXT0a8RDTCcL4vLZyF6Q3w
         Bu1VS/1Ir4NXes0vBRceSQX4ii+a1ZxjWDDPqCUecNlkLF7doLspmkrgtxixLJH34e6F
         zyMoibNSgwC3f75JK15fpw/d1oOoO1rBgGwFO+zU1NfLwgT4a6JG4UAR4SdYY73Zwyaw
         UepBh7cM9rW5UV36KBsrgsO8UAD2+uhzMOoC4yYN7odCBBQjuk9aYLs7BQ38QkagCUv1
         8vP6MOnioto39Nq/6bbCbRzCx9ucIFMEPydZ9cLCoHdW8wTiT9/vFoC8MDFzXVnc91Z4
         i6oA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mkl@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33 as permitted sender) smtp.mailfrom=mkl@pengutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LVShFNOWy1C/NZSQ3p0Uq4D3uTCKYahqtwbxxKeubRM=;
        b=P/aMsepBSHtjdn8Lb0E36pZsB6+9UgtpeZHGNUq9EdOP5o9D2s9G82ag+7ueSLZysI
         UmYDFcCh8byrCKdYxdq8JeNH3UuWsg9EcDr4nNKCAi42DRuwI/DVUbNd81YK3eVMIbVq
         uTWnlnFHzaYbLk9eg6wlplVE17TM3Z+Ho/EF85I8xqgB/dJnEX/159nsdeHAyRcStFA+
         CQB/wyO2qFcpKD2EwKKxks2gsl63uWinKlOd6EYCoVJ2peAxp6rdnOcEhxjlNvffb2OK
         M0+qdJnOgcJzMElS07/oiXnAkX+dfZkv7HRCILA0G/7FJgI8nub3aw94R4bN3zPYk4wX
         uV+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=LVShFNOWy1C/NZSQ3p0Uq4D3uTCKYahqtwbxxKeubRM=;
        b=dKWbxL6cvBgRT7qFhbZ3V8mn/HiLpDM7M6p4DapLsAa8R/QWa7BC61Bc62nRthfPJE
         Op+nyvigCCE179BxIUjMBOZGxABZzTzbaIWwIA6FXhLNXO9eR8W03LMX3YsRcjEznXd3
         oYX6CxUYDV1uaqGA16meoQRwljtZxHlC7EpYAZnWYfOEQZdxUm4NEYEjX3mi6UEeBCpv
         WqJohWLeN1BBwHR2/Kd05OFjC0H6mfkvsdGCXGv4W+QjJzWOAZnoGRJAF5nOF/3hkxeR
         HMMjOaqVh4Am98+l/7fu1pvct23lQROQmyIGrNl9/nj5crfGnbiQfc4wTUtWK/Pd9Wk/
         Mdrw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5322Xcsx9+xL+Uf3O/x3+9r8EKZnaz3kQiIrqYC5GqtupjHj4yqX
	BsgsjWxZz5rFR4ux4Z3P6+0=
X-Google-Smtp-Source: ABdhPJynWzee6lOOgK0hXWFVhzA6osnNShMoS3k9SeolC+5682T5hagxzZa2L/7Mg0ytuIfQsafPBg==
X-Received: by 2002:a05:651c:83:: with SMTP id 3mr1673767ljq.341.1629959159147;
        Wed, 25 Aug 2021 23:25:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:15a3:: with SMTP id bp35ls3151133lfb.1.gmail; Wed,
 25 Aug 2021 23:25:58 -0700 (PDT)
X-Received: by 2002:a05:6512:3767:: with SMTP id z7mr1557540lft.128.1629959158057;
        Wed, 25 Aug 2021 23:25:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629959158; cv=none;
        d=google.com; s=arc-20160816;
        b=QF1Lgrv+qIUiOmwg7MWi3NXgYUQ2Ns1WhgdaKArW/Oz5QC6QIP8hsfUWAa8xNhDVor
         YAci6ZvVgSIiVsEAs1a9u4o+JFfffsY4hO7qxX0gwY3LOAcldB6ltRxroQMj1h3PKMTw
         hyn+RmHTKEffxCu3yu7Qp4bQna+J8qxIWxUjqED/MdvwNIb8F5tVuA9Ik4kg/FnxplOF
         u0Bo/g4LXEvKUJUQLpguwOp//16f1pJ/VWh/eFOY9Xy3hJ6WaFkXCtHlyxOAc8jGksdW
         WbWj3g93KSbgKkze5m3ZBEO5s7LrM4uDtcShMv5pzDJ7GKJd1ctNllAezfNxMA0myUOB
         UN9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=FCoKIoWCFUcRxCYo5KHP6WiXHioJ49Bw3nmJHtrsQGk=;
        b=TRsiSvawm6yzyuFA1IzyFbHouGcQiQMidt3oCCFV2APNZbqLa/k5E7kacWs8nTIAOG
         gFYgI9BSphdi7Gj5bGsSQRX7pTT1m2PpP7XMivQDkIE/tDbZjf/7fVx5kaVh/mKSp7r+
         wHfO82+GDEQeBFf0ZQk6mgRY/SCQ90Aa0KyRif7/3bNNylWJSORQ4NSg+SsdN37xLRsD
         fzkJna1q6m5iOhpNhny+zIFqprYDuq6wpaHyXapuxqGmE3B06e7TlLuC4OHJDV5yg4c5
         zOCO9bG+i2qhYs1zxAMZIpe7El7+YvbGjI+bkscC5ead+ywTs9cr1EVgJdVV6d8foxhg
         rwjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mkl@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33 as permitted sender) smtp.mailfrom=mkl@pengutronix.de
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de. [2001:67c:670:201:290:27ff:fe1d:cc33])
        by gmr-mx.google.com with ESMTPS id p7si137865ljj.5.2021.08.25.23.25.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Aug 2021 23:25:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of mkl@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33 as permitted sender) client-ip=2001:67c:670:201:290:27ff:fe1d:cc33;
Received: from gallifrey.ext.pengutronix.de ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=bjornoya.blackshift.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1mJ8pO-0006Yt-6y; Thu, 26 Aug 2021 08:25:30 +0200
Received: from pengutronix.de (2a03-f580-87bc-d400-b2ee-1fdd-6b26-f446.ip6.dokom21.de [IPv6:2a03:f580:87bc:d400:b2ee:1fdd:6b26:f446])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id AB6A066FE3E;
	Thu, 26 Aug 2021 06:24:53 +0000 (UTC)
Date: Thu, 26 Aug 2021 08:24:52 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Kees Cook <keescook@chromium.org>
Cc: linux-kernel@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Ayush Sawal <ayush.sawal@chelsio.com>,
	Vinay Kumar Yadav <vinay.yadav@chelsio.com>,
	Rohit Maheshwari <rohitm@chelsio.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	"David S. Miller" <davem@davemloft.net>,
	Kalle Valo <kvalo@codeaurora.org>, Jakub Kicinski <kuba@kernel.org>,
	Stanislaw Gruszka <stf_xl@wp.pl>,
	Luca Coelho <luciano.coelho@intel.com>,
	"James E.J. Bottomley" <jejb@linux.ibm.com>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Andrii Nakryiko <andrii@kernel.org>,
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>,
	Yonghong Song <yhs@fb.com>,
	John Fastabend <john.fastabend@gmail.com>,
	KP Singh <kpsingh@kernel.org>,
	Johannes Berg <johannes.berg@intel.com>,
	Mordechay Goodstein <mordechay.goodstein@intel.com>,
	Lee Jones <lee.jones@linaro.org>,
	Wolfgang Grandegger <wg@grandegger.com>,
	Arunachalam Santhanam <arunachalam.santhanam@in.bosch.com>,
	Vincent Mailhol <mailhol.vincent@wanadoo.fr>,
	Mikulas Patocka <mikulas@artax.karlin.mff.cuni.cz>,
	linux-crypto@vger.kernel.org, ath10k@lists.infradead.org,
	linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
	linux-scsi@vger.kernel.org, linux-can@vger.kernel.org,
	bpf@vger.kernel.org, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Keith Packard <keithp@keithp.com>,
	Dan Williams <dan.j.williams@intel.com>,
	Daniel Vetter <daniel.vetter@ffwll.ch>,
	clang-built-linux@googlegroups.com, linux-hardening@vger.kernel.org
Subject: Re: [PATCH v2 2/5] treewide: Replace open-coded flex arrays in unions
Message-ID: <20210826062452.jekmoo43f4xu5jxk@pengutronix.de>
References: <20210826050458.1540622-1-keescook@chromium.org>
 <20210826050458.1540622-3-keescook@chromium.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mnmsc5sxlpdvk3xn"
Content-Disposition: inline
In-Reply-To: <20210826050458.1540622-3-keescook@chromium.org>
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


--mnmsc5sxlpdvk3xn
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On 25.08.2021 22:04:55, Kees Cook wrote:
> In support of enabling -Warray-bounds and -Wzero-length-bounds and
> correctly handling run-time memcpy() bounds checking, replace all
> open-coded flexible arrays (i.e. 0-element arrays) in unions with the
> flex_array() helper macro.
> 
> This fixes warnings such as:
> 
> fs/hpfs/anode.c: In function 'hpfs_add_sector_to_btree':
> fs/hpfs/anode.c:209:27: warning: array subscript 0 is outside the bounds of an interior zero-length array 'struct bplus_internal_node[0]' [-Wzero-length-bounds]
>   209 |    anode->btree.u.internal[0].down = cpu_to_le32(a);
>       |    ~~~~~~~~~~~~~~~~~~~~~~~^~~
> In file included from fs/hpfs/hpfs_fn.h:26,
>                  from fs/hpfs/anode.c:10:
> fs/hpfs/hpfs.h:412:32: note: while referencing 'internal'
>   412 |     struct bplus_internal_node internal[0]; /* (internal) 2-word entries giving
>       |                                ^~~~~~~~
> 
> drivers/net/can/usb/etas_es58x/es58x_fd.c: In function 'es58x_fd_tx_can_msg':
> drivers/net/can/usb/etas_es58x/es58x_fd.c:360:35: warning: array subscript 65535 is outside the bounds of an interior zero-length array 'u8[0]' {aka 'unsigned char[]'} [-Wzero-length-bounds]
>   360 |  tx_can_msg = (typeof(tx_can_msg))&es58x_fd_urb_cmd->raw_msg[msg_len];
>       |                                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> In file included from drivers/net/can/usb/etas_es58x/es58x_core.h:22,
>                  from drivers/net/can/usb/etas_es58x/es58x_fd.c:17:
> drivers/net/can/usb/etas_es58x/es58x_fd.h:231:6: note: while referencing 'raw_msg'
>   231 |   u8 raw_msg[0];
>       |      ^~~~~~~
> 
> Cc: "Gustavo A. R. Silva" <gustavoars@kernel.org>
> Cc: Arnd Bergmann <arnd@arndb.de>
> Cc: Ayush Sawal <ayush.sawal@chelsio.com>
> Cc: Vinay Kumar Yadav <vinay.yadav@chelsio.com>
> Cc: Rohit Maheshwari <rohitm@chelsio.com>
> Cc: Herbert Xu <herbert@gondor.apana.org.au>
> Cc: "David S. Miller" <davem@davemloft.net>
> Cc: Kalle Valo <kvalo@codeaurora.org>
> Cc: Jakub Kicinski <kuba@kernel.org>
> Cc: Stanislaw Gruszka <stf_xl@wp.pl>
> Cc: Luca Coelho <luciano.coelho@intel.com>
> Cc: "James E.J. Bottomley" <jejb@linux.ibm.com>
> Cc: "Martin K. Petersen" <martin.petersen@oracle.com>
> Cc: Alexei Starovoitov <ast@kernel.org>
> Cc: Daniel Borkmann <daniel@iogearbox.net>
> Cc: Andrii Nakryiko <andrii@kernel.org>
> Cc: Martin KaFai Lau <kafai@fb.com>
> Cc: Song Liu <songliubraving@fb.com>
> Cc: Yonghong Song <yhs@fb.com>
> Cc: John Fastabend <john.fastabend@gmail.com>
> Cc: KP Singh <kpsingh@kernel.org>
> Cc: Johannes Berg <johannes.berg@intel.com>
> Cc: Mordechay Goodstein <mordechay.goodstein@intel.com>
> Cc: Lee Jones <lee.jones@linaro.org>
> Cc: Wolfgang Grandegger <wg@grandegger.com>
> Cc: Marc Kleine-Budde <mkl@pengutronix.de>
> Cc: Arunachalam Santhanam <arunachalam.santhanam@in.bosch.com>
> Cc: Vincent Mailhol <mailhol.vincent@wanadoo.fr>
> Cc: Mikulas Patocka <mikulas@artax.karlin.mff.cuni.cz>
> Cc: linux-crypto@vger.kernel.org
> Cc: ath10k@lists.infradead.org
> Cc: linux-wireless@vger.kernel.org
> Cc: netdev@vger.kernel.org
> Cc: linux-scsi@vger.kernel.org
> Cc: linux-can@vger.kernel.org
> Cc: bpf@vger.kernel.org
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
>  drivers/net/can/usb/etas_es58x/es581_4.h          |  2 +-
>  drivers/net/can/usb/etas_es58x/es58x_fd.h         |  2 +-

For the can drivers:

Acked-by: Marc Kleine-Budde <mkl@pengutronix.de>

BTW: Is there opportunity for conversion, too?

| drivers/net/can/peak_canfd/peak_pciefd_main.c:146:32: warning: array of flexible structures

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210826062452.jekmoo43f4xu5jxk%40pengutronix.de.

--mnmsc5sxlpdvk3xn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEK3kIWJt9yTYMP3ehqclaivrt76kFAmEnM7EACgkQqclaivrt
76kN7Af/X372HVlb+QqkjppsRpwpNYqhBsuZx17Ly+If1NlY7bxjdbRsOVskRV0a
zEmr21eyBZFMHhrQ4+CPzjkv8AMTA9dfjFViAemjlC9mP6NR63oty7R+Ae0a/pbe
T0EDxGooHMTU7H702xrzo8CzTCJM01TTmriW+YM3pZC4DfhNfqYFVx6hgGrah9U5
HWD8HH3NTi9GLBk8caCqNlZVNv7lJbM7ygt5hxm2EdEy+aJGezlpS4LMpZScF9c9
p7YOev4usm+X08379kFnX7T8IympuH51b4uhaUIbsekkjACT5rJtj3cKbupp0i2X
X8w2WKQ8P+u+4VA9+tgBqpt731LPIA==
=1VPl
-----END PGP SIGNATURE-----

--mnmsc5sxlpdvk3xn--
