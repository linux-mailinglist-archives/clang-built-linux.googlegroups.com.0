Return-Path: <clang-built-linux+bncBDIZTUWNWICRBZVT4OCAMGQEZDRRN3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E66A377CB0
	for <lists+clang-built-linux@lfdr.de>; Mon, 10 May 2021 08:59:51 +0200 (CEST)
Received: by mail-ot1-x33d.google.com with SMTP id u14-20020a056830248eb02902a5e3432ae9sf10546917ots.12
        for <lists+clang-built-linux@lfdr.de>; Sun, 09 May 2021 23:59:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620629990; cv=pass;
        d=google.com; s=arc-20160816;
        b=y0voxOOIVTcCTDJHWVcnBad20SKMpCf7kQT5CXThiiHYvP+7iyJm2LgAqFVMUWRH/t
         SPS5TK7ntLnOb5TliIAjPit6AlA+Td+fJqv92FX4HVhUFifTcVXLKhBEXmlpSmFEl1Ns
         3WiCS4wUsFPBhpZ23P/k2MEqGb1KfA/VcqVc5Dr0sritUDjLi0RXRsUQCXt4s87ojn0G
         1dnWLp4fPmxvvIVYtur980yjztz2EiCeBQ/nv+/k8W2uuX/5uohWBgDbBHBspj3m1wac
         Dtj85pY+ODqQqKeHJeH02VDvZAEmbRmXajG1eBMcGcZPuB6PU/k5OHIg/tnmtx77zwIN
         CNDw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=bLwL3wydms4UzCu136RfQjcfwwEJPskbUWS5XDLSdOs=;
        b=C04wWcQ879gsYsAkv8wx9cgj+6WFcfQCWv3P/D3/ihezPSYFKSinLSV/dEyP1dbdZ9
         5WWmhRruJYcW2DTzIhEQhVl0FXytgNPKdrgDC6m+48aE+lVwUKebLGil4l/Ol+q7VhM6
         hnlSdDXDPAPoK9OjBUOw6eyIvmBkVXLto78+H2azxJyYyVK/n+ImhXTQ9T2Qd7s8GlPA
         Qsgq1vXGTCTfkM7vmsU3QbtLDL5cncyHTNJBHD7OJU9G42CqcW4nolkV1QVEsD4nr3ib
         kMU6nAmaHe3FK50xIHyXyP9w0RtcJObK/J33YXVzN4SpAKMrPOVyT5qc6iA1RHsds9I4
         QYtg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=f9a+II+4;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.79 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bLwL3wydms4UzCu136RfQjcfwwEJPskbUWS5XDLSdOs=;
        b=pOKjY6O60h5HbN0YVFgO+RUUqzzThhbRiIljTdKSVtSguWC4oUnWDGGqqXpA+nRMu1
         HGsy+fp9IngunMKh2bSq0Ka3GqznnOCos1TRlIPR8C8wnzbcJrsol5RG8Ltf/oWQKGZc
         wWx5rvCwRaTnU2Hjb5oeGEFzPlrnhOvouD23C39IRqnPMUANJr6kTB8XxFDRf34L+T/Q
         AF6ScSyr+qmmuiyYuh1hxR36BpBB+da2ch1KBkpx2h5AyZF8YUitvYHU1ct32ZCnA/mw
         qEm82ds/Ahy8eTNO3SVmfhMBYwI9QNNRECvhMC9oYQ5fcVGeiddtaUARiEIPGaHQEUmr
         NX0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bLwL3wydms4UzCu136RfQjcfwwEJPskbUWS5XDLSdOs=;
        b=UhrkTEBXE4J2ZweecyaKUG2LD4l31pg2rwos93thfr9Dv/VD/nCJkl4YtmGSQSknOl
         1tXgZ1XDjcpbC0pj701lc47H9VGVeIbjcUB9HzTW88L80Zg6TFSJ2z5GVeruuSyCKL6j
         NGfG7lsXJFxf2mvo7WZb1TqCli/0o/nc+h6u3GWdszWarCCoR4nDGh0P4p/eguGXLFBc
         fNN3fUdNs6zTxYfvWV6XYpli2oAUG9gwEhGPnOAVNLCeWT9xrQTBXecZ3KxNjO/5QX+d
         lTsZ7HkjTIxGyrGnyplG60SJc6B20EjEk1MJH8jCvteFpmIHTADxozzDuwPgHMounsCI
         MWMg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533CUjPSwfvZoumaqvp80kVgIuEvSrEChW3uJMRua1MFTx1lYzBO
	GY8KEt3VBEW5I3ZFBXGprRw=
X-Google-Smtp-Source: ABdhPJzIaN4C4D97Q+od4dwvFKf49m2DYyC8iV6jg+08cfZEYenMOyszeO6aMNWiM1jEY8EawjDcIg==
X-Received: by 2002:a9d:6645:: with SMTP id q5mr15224962otm.80.1620629990086;
        Sun, 09 May 2021 23:59:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1f16:: with SMTP id u22ls1954664otg.7.gmail; Sun,
 09 May 2021 23:59:49 -0700 (PDT)
X-Received: by 2002:a05:6830:1bd8:: with SMTP id v24mr19891794ota.203.1620629989770;
        Sun, 09 May 2021 23:59:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620629989; cv=none;
        d=google.com; s=arc-20160816;
        b=MuuNl9Pp7VzOX3ij30mJZddi+RBfRBYFhBhguiPtmwmF771uUXpoBcMDwxSO4EtrVh
         OsiSVNMjrnExTA1E4fobRdKsxb59bBm5/HR/JXycdmSu6mqse8+gRzr4aTJ9YtiqvIrm
         8caV7U1hCLYVFnG8+Dx0I946txCzcOydIe/EGWd0pkBaLe1VnMLLUr60pgiOoUmWc9G3
         CLv+iI384tOJ0KmKlrWvtJxt0uSDbge2eVgDaCU+RCMQaAIVhNdW5bCd7OES4dQbjvk0
         UV67UI9oRvKphP3PXv2U9FuAOQ2yvIBfQDej38mpz3yhamkyWkLTd8pdK9DQV4ZMbwgy
         aEHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=4e7dQppKfNIV7YVAFBbupKmBJtQcsa0sycuBhEJrB08=;
        b=wvE0sMYGRBV8LxgypcS3PUCqkh2x8ZPo14klzygvu7r7OwLff9ssY0/2W5d6Xg5lES
         C/pWGFjTIjQBqn5FITtApm7SHvq49cSaRU7ZyTOFewSYIfbPA0Sx8i2Y3oCTrmmRkB7/
         NGwraT0Vn9c676+8D6VWuVvwxY7DWDR+8ZvodPyuE1BqrvQXcY4l5nKYu7awDjB+7dHY
         mUVk+b9C318i6541R9jVDqnaWSPKpOUTOTBAg7UOjhkWPL4OOSj3MxrnVcLuD2ehi78p
         MtEuxoVhogwydUcvYWzljgZAb93RfJlYCkTiyOVphPFZm29Djx0rUlIkorQcahVT/Wpc
         6TCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=f9a+II+4;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.79 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from aserp2130.oracle.com (aserp2130.oracle.com. [141.146.126.79])
        by gmr-mx.google.com with ESMTPS id w4si943211oiv.4.2021.05.09.23.59.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 May 2021 23:59:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.79 as permitted sender) client-ip=141.146.126.79;
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
	by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 14A6xjvj118442;
	Mon, 10 May 2021 06:59:46 GMT
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
	by aserp2130.oracle.com with ESMTP id 38dg5ba5ru-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 10 May 2021 06:59:45 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
	by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 14A6pX3Q017400;
	Mon, 10 May 2021 06:59:42 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by userp3030.oracle.com with ESMTP id 38dfrusufx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 10 May 2021 06:59:42 +0000
Received: from userp3030.oracle.com (userp3030.oracle.com [127.0.0.1])
	by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 14A6xfRt042804;
	Mon, 10 May 2021 06:59:41 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
	by userp3030.oracle.com with ESMTP id 38dfrusuew-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 10 May 2021 06:59:41 +0000
Received: from abhmp0017.oracle.com (abhmp0017.oracle.com [141.146.116.23])
	by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 14A6xaPL019927;
	Mon, 10 May 2021 06:59:39 GMT
Received: from kadam (/102.36.221.92)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Sun, 09 May 2021 23:59:36 -0700
Date: Mon, 10 May 2021 09:59:28 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Joe Perches <joe@perches.com>
Cc: Jonathan Cameron <jic23@kernel.org>, Colin King <colin.king@canonical.com>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Jon Brenner <jbrenner@taosinc.com>, linux-iio@vger.kernel.org,
        clang-built-linux@googlegroups.com, kernel-janitors@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] iio: tsl2583: Fix division by a zero lux_val
Message-ID: <20210510065928.GR1955@kadam>
References: <20210507183041.115864-1-colin.king@canonical.com>
 <20210508171258.2ef71a70@jic23-huawei>
 <1eb0428d352be2498739de71eb65746309c90f4c.camel@perches.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <1eb0428d352be2498739de71eb65746309c90f4c.camel@perches.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-GUID: Wofz6Vl8vwk6Pcbex2r8_g2sHLoUZkQg
X-Proofpoint-ORIG-GUID: Wofz6Vl8vwk6Pcbex2r8_g2sHLoUZkQg
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9979 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 lowpriorityscore=0 malwarescore=0
 bulkscore=0 spamscore=0 clxscore=1011 priorityscore=1501 adultscore=0
 mlxlogscore=980 mlxscore=0 suspectscore=0 impostorscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2104190000
 definitions=main-2105100049
X-Original-Sender: dan.carpenter@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=f9a+II+4;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates
 141.146.126.79 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
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

On Sat, May 08, 2021 at 10:01:14AM -0700, Joe Perches wrote:
> On Sat, 2021-05-08 at 17:12 +0100, Jonathan Cameron wrote:
> > On Fri,  7 May 2021 19:30:41 +0100 Colin King <colin.king@canonical.com=
> wrote:
> []
> > > The lux_val returned from tsl2583_get_lux can potentially be zero,
> > > so check for this to avoid a division by zero and an overflowed
> > > gain_trim_val.
> []
> > > Fixes: ac4f6eee8fe8 ("staging: iio: TAOS tsl258x: Device driver")
> > > Signed-off-by: Colin Ian King <colin.king@canonical.com>
> > Definitely looks like it could happen so applied to the fixes-togreg br=
anch of
> > iio.git and marked for stable.
> []
> > > diff --git a/drivers/iio/light/tsl2583.c b/drivers/iio/light/tsl2583.=
c
> []
> > > @@ -341,6 +341,14 @@ static int tsl2583_als_calibrate(struct iio_dev =
*indio_dev)
> > > =C2=A0		return lux_val;
> > > =C2=A0	}
> > >=20
> > > +	/* Avoid division by zero of lux_value later on */
> > > +	if (lux_val =3D=3D 0) {
> > > +		dev_err(&chip->client->dev,
> > > +			"%s: lux_val of 0 will produce out of range trim_value\n",
> > > +			__func__);
> > > +		return -ENODATA;
> > > +	}
> > > +
> > > =C2=A0	gain_trim_val =3D (unsigned int)(((chip->als_settings.als_cal_=
target)
> > > =C2=A0			* chip->als_settings.als_gain_trim) / lux_val);
>=20
> Is a multiplication overflow possible here?

These are chip->foo values and they ought to be trustworthy.

Of course, in real life, they can be set to INT_MAX in
in_illuminance_input_target_store() and tsl2583_write_raw so they can
overflow...  Anyway, if we were going to add a check it would be at
the point where we get the number from the user and before we save it
to chip->

regards,
dan carpenter

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210510065928.GR1955%40kadam.
