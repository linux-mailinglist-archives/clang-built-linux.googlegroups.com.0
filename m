Return-Path: <clang-built-linux+bncBDT2NAOB24NBBPVYUSEQMGQET6QFDAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33a.google.com (mail-wm1-x33a.google.com [IPv6:2a00:1450:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id E13123F9D47
	for <lists+clang-built-linux@lfdr.de>; Fri, 27 Aug 2021 19:09:18 +0200 (CEST)
Received: by mail-wm1-x33a.google.com with SMTP id f19-20020a1c1f13000000b002e6bd83c344sf1934730wmf.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 27 Aug 2021 10:09:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630084158; cv=pass;
        d=google.com; s=arc-20160816;
        b=mkn+8rnwGjLMEpH29VrDq3YjAzU+mfd82bl870pjFjA0T6fLuJjBpAltYi/5B4jNMK
         df0c8k23q7gxFy/g+oeFA8lcPEXkpRcsJNy+Gj5hH3lsbntVtXN9CPj6dLTzlPtxrwk+
         t+gnDuk3ir2Y0QGGn+SrHYyUQbmGECYP728caGAbibcuva2FoKf0T0lKOPfR5KL7A0Rh
         mGo0Ue6jrzGMZzHmx+/eknYX0ow/fIDsTkK/UsJdRL72HRDRVW4HKtaxc+JH4DQznWPK
         CvZALgx4ahU7B7HmzixZKJN2U57WaZSmjlKEVhPRmRXLLk9+7VlCH362OjRWtVhoc2tX
         e9tw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=mpFBVtYi3cdEkX2Z7MaOJ8m9/jb5Vhj6PgKOYY/YZuc=;
        b=mVfXDfqY95xm+s01PngWpXLUG7aIezXnQI1PRUcYO9L5ugo/C7D98L9UIvEr8zoQPq
         XOUfPx3cqIurcQj2zFa+qeWW51CObQwo87VYUsnEQK9Rr06Zh2G2qaqfS0llDJy2rROM
         AJtkBtLDKtzw2t2YMb8RMAJgCmq9Tn6IAX0KyFoo5pZTEOScDCWH2klNxTjWC7fOLl7X
         nsut+z3g900fq+Xv5MlV7OKuhWacRkpqS4bmt4bCb/WAPGW0/LEMwqjfMn8tfv1W3MFH
         +//zddsj3XF4TpA6gwKGuHb6d/PWs4cEhiiqjcdKKVR5piiBNOW0VOiUoDsVN0++rULz
         Snfg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mkl@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33 as permitted sender) smtp.mailfrom=mkl@pengutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mpFBVtYi3cdEkX2Z7MaOJ8m9/jb5Vhj6PgKOYY/YZuc=;
        b=mRLz/cCV267G5BwUNLStA2HaOLO2twrd8qRlc15Mnr9Fpz1m3hRVPl8+PIJACwsYR4
         RFEaGS//TxMexVbEG17e2a/Ay7weiujbxfQSp201+S5gYd84evPnRkYGatpifCg6FiVn
         5N+OjIgv5B+iZZWbCXaO4z0DuvoUCVhSGtxN8Sa+g12/ArRPe+OubctZv8ZyWGEocuSm
         6YgNXgJ9DFe1ikT/cIqdTyvzWVrOVGDUaQOyhDVN/LTrQOryG2Dc9XY2tRnjd9WODx2J
         1OAyaZ2lVzlhdDEpofwlsaEQMMtO3jYok/YodRHjT5cSiXlM2NqhjOffr+hwk78PLDJX
         Hx3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=mpFBVtYi3cdEkX2Z7MaOJ8m9/jb5Vhj6PgKOYY/YZuc=;
        b=RYjXoKGfUyjwYNqTKbhjP/+mMCM6OcDfHDSO2F7VX3lohArzPXXqbU2/gHJAY/OSDB
         XhENpABZeIX6wAdLNr7xrwMdOuy/HsjRusJ1vz6V58S0FAQyFdX5l1OzxrCPOunuYy0c
         beGmuTLOBY7EpRE68R6PKwrcgN+1SPnxrNWTaKU597kv9Jr1Rqs88qaENGX8i6SnQZeD
         /GT54Jiie1h+SUiOVLd+4CGZejkFCe4xRwrUu/fKdCZlY/cRdsYfB7+/5R38q+G1g58x
         BomDHPQBK2VDczbpSMvyglWB9VimBN092a9RMJc5587rX+sIRTkGA9GzdV3klwvfXh86
         qnDg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531cKXFY/HgacA7BIpSxHOsfCVW7l78a0HHYIQ/py3kQdU9smg/K
	89gkTTGQ3xQZEBKzxht5YQA=
X-Google-Smtp-Source: ABdhPJzlpCHXzvRfQer4reQotHQTRmGR6aOeL/egC5skATntCA5uC9iIHQuXcXBoIc6q4NJdXaQnfw==
X-Received: by 2002:a05:600c:22d3:: with SMTP id 19mr9927475wmg.36.1630084158645;
        Fri, 27 Aug 2021 10:09:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:988b:: with SMTP id a133ls4729496wme.3.gmail; Fri, 27
 Aug 2021 10:09:17 -0700 (PDT)
X-Received: by 2002:a1c:29c3:: with SMTP id p186mr9897437wmp.22.1630084157756;
        Fri, 27 Aug 2021 10:09:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630084157; cv=none;
        d=google.com; s=arc-20160816;
        b=iyS6gooOIsC1qPkptsNJoMmuAt50p+z3esd4ShMfyFUWhDicpfz0gHJFdemYNLDxnn
         vlFH/rFcXwBusptfzEilLz3pk2hYWOtmEbyzPoQhhib4Kr9ksUM2bcj8qUP380/LzvRJ
         wXr/GVJrMhKmKEUpdtmqjfKR9fM/0xLjgRfWxrhYjpMvUNtyS4cdN+c0QGeWRQX4iavc
         0Y13CJEFdZzQXKIM9oC4f9Xj7w/rlAqjV27AQbmkggKpm+Hamdu5lLJlpTaNYKd7RmDG
         KhCehuu65jASr/CmYzClwjrLOfyM9e9S1CaNcn5bYy3XywpbZpriAO4bkQp+uK1sjxGC
         iAnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=v0aM+h9yUmtF3WfK30nlRXtzeR59sFOcjSclsF5J6jo=;
        b=aUOUQW1n+2CT4OE2nblmIEs262YbEG/41/F4fw68dWkIoymKeMmYGxtuMAxWviDBNA
         u3Mb7IFx6xUJjdCn0Os4Y1nTrqJW7TnWRUuyKX5CSajGiRFodsJ5N6VPT5CFWAThA2VW
         o0aWh/essx1zxLCOE1p+/p9Xy4QtxR7sDoofarv6QKweGQ6SR+NVjKokdTN0xPUlrv9S
         Aks3gQHrwD2ZTngtRE2czp4UvJ0wUBrMBitz0lbzOaPzqUDXw+u9dJDbOZKc3domRCL2
         PajbHvBR/IY5pTiSPcyXDl41Cvn5UdW0olWeT9Oet59GckGfLDirM/FUSbZNMm3WnbhS
         cxMQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mkl@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33 as permitted sender) smtp.mailfrom=mkl@pengutronix.de
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de. [2001:67c:670:201:290:27ff:fe1d:cc33])
        by gmr-mx.google.com with ESMTPS id a1si407594wrp.1.2021.08.27.10.09.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Aug 2021 10:09:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of mkl@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33 as permitted sender) client-ip=2001:67c:670:201:290:27ff:fe1d:cc33;
Received: from gallifrey.ext.pengutronix.de ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=bjornoya.blackshift.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1mJfLX-00064y-Ny; Fri, 27 Aug 2021 19:08:51 +0200
Received: from pengutronix.de (2a03-f580-87bc-d400-4ac6-d86b-e43f-77c5.ip6.dokom21.de [IPv6:2a03:f580:87bc:d400:4ac6:d86b:e43f:77c5])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id A327F670F04;
	Fri, 27 Aug 2021 17:08:38 +0000 (UTC)
Date: Fri, 27 Aug 2021 19:08:37 +0200
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
Message-ID: <20210827170837.mu4hql5bev2f5x2o@pengutronix.de>
References: <20210826050458.1540622-1-keescook@chromium.org>
 <20210826050458.1540622-3-keescook@chromium.org>
 <20210826062452.jekmoo43f4xu5jxk@pengutronix.de>
 <202108270906.7C85982525@keescook>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gkkaemaf4slct3pn"
Content-Disposition: inline
In-Reply-To: <202108270906.7C85982525@keescook>
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


--gkkaemaf4slct3pn
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On 27.08.2021 09:08:19, Kees Cook wrote:
> > BTW: Is there opportunity for conversion, too?
> > 
> > | drivers/net/can/peak_canfd/peak_pciefd_main.c:146:32: warning: array of flexible structures
> 
> Oh, hrmpf. This isn't a sane use of flex arrays:
> 
> struct __packed pucan_rx_msg {
> 	...
> 	__le32	can_id;
> 	u8	d[];
> };
> 
> struct pciefd_rx_dma {
>         __le32 irq_status;
>         __le32 sys_time_low;
>         __le32 sys_time_high;
>         struct pucan_rx_msg msg[];
> } __packed __aligned(4);
> 
> I think that needs to be handled separately. How are you building to get
> that warning, by the way? I haven't seen that in my builds...

If compiling with C=1, sparse will complain about this.

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210827170837.mu4hql5bev2f5x2o%40pengutronix.de.

--gkkaemaf4slct3pn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEK3kIWJt9yTYMP3ehqclaivrt76kFAmEpHBEACgkQqclaivrt
76nZyQf/cQC8nVICmegw2Xx7F4e9MRmYJPNlM4CBOw9lsPVBDSn9GON+JkvMIfWI
gzsHT/fSQfAerrBnUGqaLqbI/HjEa1cgkevLmMY6SnSYZN1tYmiYUhhirVAUN07C
QchAwrLEtdk4fwE/PMvjCcsmw1BrM85bW5B9h/Ug5xhhZZGJu+0I1DSR9s4ERi1M
SGHegQvm8xGiPYDiYOOmXX75G9X4rtVGcpNWj9Iu9hscU0F2exWZz5wB1cZQSK4s
Ka+x3qrkGo4rP+qNov0TlUZEwY3YSmZWx4slMWhR53Shdzpo7H3aylw8JLIra1/i
YPgsmxiUEP6P9DiHmH2O5IVgUsy9kg==
=L8Rq
-----END PGP SIGNATURE-----

--gkkaemaf4slct3pn--
