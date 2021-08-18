Return-Path: <clang-built-linux+bncBDT2NAOB24NBB7VS6OEAMGQELCC3GAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AC4A3F0111
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 11:57:19 +0200 (CEST)
Received: by mail-lj1-x23f.google.com with SMTP id k11-20020a2e92cb0000b02901b84fac891dsf847091ljh.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 02:57:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629280638; cv=pass;
        d=google.com; s=arc-20160816;
        b=ekS4tiHtTUDkKN9p8treCPZKzGUUs/OBT5F8SZRWSr13iNfG04b5zi92Po13sB+wwn
         c6Dax2nY2ucZxqYjJngenktlrGsuqclIWFcbIIp+OjWfODBkNIdXBmhbrZ3Pcd6xYo7U
         YWCDMeWlkNxTH81w9BDCVl8MkhTb7ZlhOaX1nSPn8jaRUrnwaYvQccBZlLIVG1KNNEkx
         dTm7CEtAGpzmfNV6OFY9seKINYjeQgj4xOZfgboab97PtHvRvNo3wBvqAXlHf20Bn+dQ
         CTpLoB4Pjj1Do6Ekh0Ly4pajhu5chJiOoi7xfCewJJfmr10xPjexNGSze5m7wue2HExz
         9adQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=9dYe2znytbZvn3CNM3c445DpoWo/jU9PPkv60Xc5rdk=;
        b=oct2SkeBAHMFKOwMTy5yXZ+fr48jr55C7q2s49qtb13UGepKCdu89WPDrpmvAQek2b
         WmhGatIEAxgj2Z+9okhFZugH72m4WurbwOvy2W7tLx1Pcny/DaJvE69TqwAiOQ0mWu9D
         qIOcvkW9tVe1lNL8PWSIdx78qtMEJ10G8q2iQ8LAv3a5OlDuBcxpTPtV1b0kCxJa7CrY
         HqWPIDL6p7Q8ssdHbG7qUxUtu39Zpm6/4BcHORSC/DdAkUF+MP+0AgZJxdI0Cc0OmIjj
         zHQOYmui3NzTRcIOcX5oGPDs31f8OVh9VM6WWsHlhEvVPaaYYia8Kt2zvhZGPcRlUDQT
         isPg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mkl@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33 as permitted sender) smtp.mailfrom=mkl@pengutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9dYe2znytbZvn3CNM3c445DpoWo/jU9PPkv60Xc5rdk=;
        b=e5HkQP/tOJ+NTy9qRTG86Q6sjUeCqGxMZuFrg/Od9N+8Z4VJcVnXbMNRfpXcSOM5DM
         KPzJmkFZ+Kr4E34MBnS8BkmPULkUnQmdf09W/evC4JXJkdOcoW2wtF/nyNWTFynqXG6w
         DqZe2b8oa/4ocYMrv3JjBLSjf1ufA+2U+nFOv84VhNdeGMTgriji5IRMdJEAff9WVJsL
         s7izFzky2RoB09V7UFIG6b60v/1DWKagtBG46xcIDwNTJZDRXs7mE3EZL0u+5hle11+U
         HjpNopO+4Y6RMpmpxcPT7zdG3K6HNjvUFOGHxL+Vp1YNo/keD2M8Ox3WhcoKO82te3Px
         sqFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9dYe2znytbZvn3CNM3c445DpoWo/jU9PPkv60Xc5rdk=;
        b=Or/GVakTKDvLV3QwA9tQFPprLDB4kalkmeX1yA7xi96sox2uMefl1KS4zf+/HGqzVC
         YXb5i3wUFdbeZYXiqXg6l56cFbFl17tjmSSWsgYERp5eCX4UurIxqPZ0nufNOHeqCi8G
         d3CE/FjRSPNw+/b9WDyoyd/UE6T+G0E5TF1YKIaLlsOe2nA7IWOXSp6y2mdF559UUXq3
         fcxPrea735WLR+VgFmh1emzGy1sl01QsYAdCSnSh+cRGEWAOA22lpPXDM+dhNMNzXUu8
         pl8RhyD9HxglstzdANnv5PT+cAo8twzANp63H9S+qkJa5uT+Z3Jz+FZgLtiRCtWrfAMT
         l66A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5309HLJ0S/+g5MCBVro+9p2Emq3+4DUlouZzvJy4lf2ve1Mv4mwG
	bjiIicXSiUlN9NUGCwHex9I=
X-Google-Smtp-Source: ABdhPJyxrtIXMMp2ODsMJRHTk63dsE9EVsOCdjGrm0Hzgptosn3Qgz89eOTSYmvuTSIBh11FDC35jw==
X-Received: by 2002:a05:6512:324c:: with SMTP id c12mr5601326lfr.352.1629280638670;
        Wed, 18 Aug 2021 02:57:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:bf26:: with SMTP id c38ls280581ljr.5.gmail; Wed, 18 Aug
 2021 02:57:17 -0700 (PDT)
X-Received: by 2002:a2e:b819:: with SMTP id u25mr7148083ljo.438.1629280637552;
        Wed, 18 Aug 2021 02:57:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629280637; cv=none;
        d=google.com; s=arc-20160816;
        b=FwuZyH2Xtk6hTxnnahLPe2NVmqEV8u6faiLJ2nlC/ynoE0Ha8F42TUJO68RTNNDzB9
         W8ToKiaCTCrccMmj5HHv++v2xYsnonpF8HRb+FgH1gAS+5md7yA2fFh3j8EeYq4NkqAm
         STCKyHKyQD5EvCKaXN3RWy/aF7g5fFZwhNqtNsylR3thq7kkxET4xE9vjXjF170Y81jt
         CY0jaW/i5NWDj0iEHTnDgrB7E28Pcr5NOTFw2hufq9NtLaPeXES5Jyi60fXVW+WiO2ha
         D58xJY8pK/ryLceSVChJrwpM24vfj88SvBcV3xPLqdt9JuVAAhcPMStRors7D4hsDhgD
         bUsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=tdqnRTpMP5CO+/suUqj16fRJbiiCPlbq0Hq3ovARHtM=;
        b=Wyp8cVfzi8U+uHzyq739Ck7VziMMOXgkkchXG+9vvbWZwzrnCJwHNBUBnuqx3oRQ1N
         buJKu0jZMz0hKLzUen50efT3Hvzf30YZUq/t6or3cJTjrI9VP2M84OKwkodx0y+nXQY8
         mZDeSfSOXtEUvaC+h7DlnY/ED6MfwG38QDr7HonNxDKZi8V4WTCQU/DNGAdncb57VknT
         zapHU6Xm+NfAxEAdbqE4PqkIZIYoalSOU0GNLLhtmRhJnqRxNSkriCUOlsap1rB7aDuU
         5Pl65me4VN5Fm7ytMcDZ8t98OH8wkVKS/BonQEMbMEh8+66Tnhw2+Rl7aYN7dFKum5gM
         r0cg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mkl@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33 as permitted sender) smtp.mailfrom=mkl@pengutronix.de
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de. [2001:67c:670:201:290:27ff:fe1d:cc33])
        by gmr-mx.google.com with ESMTPS id b14si240822lfb.13.2021.08.18.02.57.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Aug 2021 02:57:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of mkl@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33 as permitted sender) client-ip=2001:67c:670:201:290:27ff:fe1d:cc33;
Received: from gallifrey.ext.pengutronix.de ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=bjornoya.blackshift.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1mGIJV-0003Ak-CF; Wed, 18 Aug 2021 11:56:49 +0200
Received: from pengutronix.de (unknown [IPv6:2a02:810a:8940:aa0:ed04:8488:5061:54d4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id 08E5E669A16;
	Wed, 18 Aug 2021 09:56:36 +0000 (UTC)
Date: Wed, 18 Aug 2021 11:56:35 +0200
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
	bpf@vger.kernel.org, clang-built-linux@googlegroups.com,
	linux-hardening@vger.kernel.org
Subject: Re: [PATCH 2/5] treewide: Replace open-coded flex arrays in unions
Message-ID: <20210818095635.tm42ctkm6aydjr6g@pengutronix.de>
References: <20210818081118.1667663-1-keescook@chromium.org>
 <20210818081118.1667663-3-keescook@chromium.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="h4irlmrxob7c5btq"
Content-Disposition: inline
In-Reply-To: <20210818081118.1667663-3-keescook@chromium.org>
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


--h4irlmrxob7c5btq
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On 18.08.2021 01:11:15, Kees Cook wrote:
> diff --git a/drivers/net/can/usb/etas_es58x/es581_4.h b/drivers/net/can/usb/etas_es58x/es581_4.h
> index 4bc60a6df697..8657145dc2a9 100644
> --- a/drivers/net/can/usb/etas_es58x/es581_4.h
> +++ b/drivers/net/can/usb/etas_es58x/es581_4.h
> @@ -192,7 +192,7 @@ struct es581_4_urb_cmd {
>  		struct es581_4_rx_cmd_ret rx_cmd_ret;
>  		__le64 timestamp;
>  		u8 rx_cmd_ret_u8;
> -		u8 raw_msg[0];
> +		flex_array(u8 raw_msg);
>  	} __packed;
>  
>  	__le16 reserved_for_crc16_do_not_use;
> diff --git a/drivers/net/can/usb/etas_es58x/es58x_fd.h b/drivers/net/can/usb/etas_es58x/es58x_fd.h
> index ee18a87e40c0..3053e0958132 100644
> --- a/drivers/net/can/usb/etas_es58x/es58x_fd.h
> +++ b/drivers/net/can/usb/etas_es58x/es58x_fd.h
> @@ -228,7 +228,7 @@ struct es58x_fd_urb_cmd {
>  		struct es58x_fd_tx_ack_msg tx_ack_msg;
>  		__le64 timestamp;
>  		__le32 rx_cmd_ret_le32;
> -		u8 raw_msg[0];
> +		flex_array(u8 raw_msg[]);
>  	} __packed;

This doesn't look consistent, what's preferred?

u8 raw_msg[0];  -> flex_array(u8 raw_msg);
 - or-
                -> flex_array(u8 raw_msg[]);

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818095635.tm42ctkm6aydjr6g%40pengutronix.de.

--h4irlmrxob7c5btq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEK3kIWJt9yTYMP3ehqclaivrt76kFAmEc2VEACgkQqclaivrt
76kXUQf/cn+R4mRgon+iBBoNOjSG6Xpa5C1kWsnyfyJAQq9geHgAtcyoTTot+9QH
bjo6l3vIxXSY85B6NbV+TQFuedtSpFYkRQJgWzMG/eIuwHZ7Buuf8uK5C5MESqwm
PJDEl2lZpKA7MtM2gMtvmhElNsv1Nr4FqMEOmCHs5LeQQ8ddsbJ0Ab7X7ffQ4SRu
UgMoqqUUFxReCmF+pmoxDC5uHBbovnw/hYPulDH6AN7jj8ml9/lPLuJKfBnyYGI5
jYTHTlc4+VnN6a7NJ7V9DhTCncLaFjXVFFxoQBWYgpetIV/eWwu2WwrrYhyrvEK0
cORmz7LG97TWWd3NSNNy9j7XKs0y+Q==
=UYoj
-----END PGP SIGNATURE-----

--h4irlmrxob7c5btq--
