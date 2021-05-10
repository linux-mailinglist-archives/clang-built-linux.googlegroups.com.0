Return-Path: <clang-built-linux+bncBDLYTQ5JSECRBLXU4OCAMGQESJ7LB4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id DC894377F36
	for <lists+clang-built-linux@lfdr.de>; Mon, 10 May 2021 11:17:34 +0200 (CEST)
Received: by mail-wr1-x437.google.com with SMTP id j33-20020adf91240000b029010e4009d2ffsf4754809wrj.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 10 May 2021 02:17:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620638254; cv=pass;
        d=google.com; s=arc-20160816;
        b=gkSpIf4BEazero89gXS/BzsZYIk2uK/aw6P9q2FC4GpG+i0Jo1D8cWZyyWMN1A9VkG
         IQZgXFAODCwLlafqsqKS+Sw3o2njopUUxF7eu61BJXZ0oNvXmxheJjc5WosRzCGmf2JX
         /bh7u/bLelqWFcvrSUyLpXviLFkptNnYdVQLeVJQs99xHWRfsOLVJ6cl535HkXdSiXjp
         uL6+eLlrv0FhAS1GGl4pT+eZLd3nsy/5qBvilDWPeAJ6G0NQZ68ENTqp8SQoZTyKJT5U
         ctVovYbstRTwcvFqWck/kQS1ohpynbgnOjFeI0RvkthVZFUHvBOlnQW5u/aM2w6j4n1s
         I7vQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=lV0FZDJTdVfNSIA7Ahd9Xbhuntu36PtfaSNpkvpG//g=;
        b=KE1lOVMuwZoHd0vDnylqK34T3rJe2Lm5EZR5X1lgLAG0IZgoNWeimVbG9v4PQDQ9R7
         20MkBbdfDJ1e9kBHhe/5+29wuRwoPnKwk2WmdAEa5aXRtW32m3+tr0dLNQ68DwQK/Bn5
         4Nk8x+TXp5loYnP2PlnXDwjtJdIy+YJX8kp1b43BMyFp2e7g6KLpAZDg85nLFLftreJ0
         5wvq1bMAZRcgsg3H7y4GUHbFNkLH1GmSIxstETTax8Z80rYiOVRaOEbCsO6CtypD7VNv
         kIBBCFTOR9Il/W8xGHdpeeHUBMIX82id3as6gWD0YrFO3xLYrbNv/PXYmwZLYyZ6JFCs
         dAAQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YxPQ5HdJ;
       spf=pass (google.com: domain of michael.zaidman@gmail.com designates 2a00:1450:4864:20::32e as permitted sender) smtp.mailfrom=michael.zaidman@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lV0FZDJTdVfNSIA7Ahd9Xbhuntu36PtfaSNpkvpG//g=;
        b=ShvniTSNbhyj0byBGxuW5M6LEfTWx4h1vc+weKTRI2ekxNyun13QW7pkdoGekHvTrl
         PTLD+EBK0JE+Z5aqGmmlsHq9SUTbZBs2jBIdKpO6Fr50dlGgHqXEC7RZ77lLQX+rVJGN
         O1tFUQmNiCljUXf2htAzJppilqV/Nh4W2EROch9CN1H2qGalv+xsT5MJspXc+YB/zrZZ
         sv5YLM9HY0cpDTtC35cCod1CJahkdcvDAXO4mCf3k9INvk9v09BRvBCUNZvP4QdhCP7t
         1ZFSpQskvEwkEV/4xvwI/O6x8n6pe/3jhWZUeFxhRjQf2hqcrT0e6k3twxZeSvstpjJD
         U0nA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lV0FZDJTdVfNSIA7Ahd9Xbhuntu36PtfaSNpkvpG//g=;
        b=KgiaeCmkodBAWK7tRKqRCEcAHNtTy2R0YFvfuFHnvHKS2GBSuhTqROAn0aktG/Jv2Y
         NEGhHq7KvhZf15ooP8O+RtB41jy/af75O/fnYer+FnjHT9Re11MO0XNB4+WLhGU7tQ/U
         t1kyFQsYiSqO5KYsFMuDqxaw+Gp96mYOKD7IPdBphBN4x1rEpwpYyOunPg1p8caxuk1k
         8KvRfX30EH+2joIch0MTcEjP2X1f624bQbWwSt8WockN6rygaaFNAlUF7FSZL7Tirctd
         Y+srea6NE9vg5HI+RFrmIPhaOnfl6ZIsl/BxvqHqSUxZIByzGI8ljQjBp3+m2YPLTv3K
         kqqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lV0FZDJTdVfNSIA7Ahd9Xbhuntu36PtfaSNpkvpG//g=;
        b=HkbkE+VN4ork14/mObrERdXb7sXz9W//SynL9YNTLTBULuxi4Lha6wEm3Jjh8+V9nk
         PNRBEIiNMK5tYU7Wl9MNF6M3XcuZwXlk20tyeBNhhx97RQm9UFtOIL8qLpACqKsHTDFn
         i/EwKJWRS2zTxGrvRn+jjPo+7EZLyr85Xzq8Di0VJcwaWiOkluYWoRIr+xyzQB8QGgIV
         UD/vaZIRotqUcwuaH4MDR0wXzIYrNaZK2acEEV90U/S0vjnF0Lws4nspGSZ5n1ITJEjk
         R4qgwin4r5KCwIZIFwb7g68SW2PA7PIvOQXgq1eTLmUiLOpDxjebHBN430X7Q7BRDxzA
         dgNQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531dIqeZqVCbieO92IClDIfBgml+MdrpQAHYmO6IiGZtcw5A/+Kw
	FiwfCmdSuYJhaIpLnpVsonc=
X-Google-Smtp-Source: ABdhPJysAPB6x5cQn1x6SsyUp8BwD/KVKuJxcY4YLy3E9e+lUUrcl4Fph3GASBL6GR4U9jEhWmvmfw==
X-Received: by 2002:adf:a212:: with SMTP id p18mr29504308wra.353.1620638254588;
        Mon, 10 May 2021 02:17:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:f603:: with SMTP id w3ls2200196wmc.2.canary-gmail; Mon,
 10 May 2021 02:17:33 -0700 (PDT)
X-Received: by 2002:a05:600c:2257:: with SMTP id a23mr34913070wmm.89.1620638253598;
        Mon, 10 May 2021 02:17:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620638253; cv=none;
        d=google.com; s=arc-20160816;
        b=dvj70/RUfMme8a4hnuSBNp8BlcwepL8Br9wPPvX5DHLOXZpZAoNEQ2Tiw7xzOoT3jd
         EM4HeXVb8mlKG/Ck+91btkgf+lUP8NGT1BM7dJBwRKDlD+WZoU5Z0J2N2jTx+/SELaz+
         L9npnPrb3EZMQdjSndX5uOYsraaWefyb3GlZF7wZT/E773ANAepEogmDqZIn7NwFKvsZ
         GZAEyQa1a53xqHvqVKBNPTyhMR/jwVCgtWGQdZpKcUyKKbC5KnQ3TN+ZrCng8L2uQKjH
         OOaCNy7fIHnkjTnVebZluO/1as2pakp2GSQpbyZeuas3IiT5Esjz4NhmxyYwUbKfExbD
         Wd5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=DxjklwCIIGCoUwqhhNFPNEu8kK6F0birRahQBV0h8UU=;
        b=j432txgtSWSyCE6RiNyRgdGf68qD+FDG4B79Jf00qT9iSLaD/HqbDi2rn0mwZz1WqX
         lNKCZbdl00QONjC/ktShgvhWyuxIW4oPXG3HFnF34J2GyA6OrjeFTYZokaVRD/OnmcCj
         zWpf1xLUJPkNlRci7XRUL4YCg1peG0dtD9BRZTsvg4k1VQSpW3nxuJaizeuHsRT+F6pL
         WuJb5i0p+gJBtJ98uZR1nW8ey8WUKG5wfVbsgGrHZm+3sFSAvhgqlbbHi+y932sjFCWx
         J/SmQCxnq1MwArzqBMV4nyAt3MmGvlIthSjQyXDVxfrpsJyL0ErsxdmVJDEXpm5JNkoZ
         xg4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YxPQ5HdJ;
       spf=pass (google.com: domain of michael.zaidman@gmail.com designates 2a00:1450:4864:20::32e as permitted sender) smtp.mailfrom=michael.zaidman@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com. [2a00:1450:4864:20::32e])
        by gmr-mx.google.com with ESMTPS id t187si747228wmg.1.2021.05.10.02.17.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 May 2021 02:17:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael.zaidman@gmail.com designates 2a00:1450:4864:20::32e as permitted sender) client-ip=2a00:1450:4864:20::32e;
Received: by mail-wm1-x32e.google.com with SMTP id j3-20020a05600c4843b02901484662c4ebso10727051wmo.0
        for <clang-built-linux@googlegroups.com>; Mon, 10 May 2021 02:17:33 -0700 (PDT)
X-Received: by 2002:a7b:ca4b:: with SMTP id m11mr25426740wml.34.1620638253284;
        Mon, 10 May 2021 02:17:33 -0700 (PDT)
Received: from michael-VirtualBox ([31.168.255.170])
        by smtp.gmail.com with ESMTPSA id l22sm23401763wmq.28.2021.05.10.02.17.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 May 2021 02:17:33 -0700 (PDT)
Date: Mon, 10 May 2021 12:17:30 +0300
From: Michael Zaidman <michael.zaidman@gmail.com>
To: Joe Perches <joe@perches.com>
Cc: lkp@intel.com, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
	jikos@kernel.org, dan.carpenter@oracle.com,
	linux-input@vger.kernel.org, michael.zaidman@gmail.com
Subject: Re: [PATCH] HID: ft260: fix format type warning in ft260_word_show()
Message-ID: <20210510091730.GA2276@michael-VirtualBox>
References: <202105060637.LeEC6ztp-lkp@intel.com>
 <20210509193213.5974-1-michael.zaidman@gmail.com>
 <26e1929386babea33d4a320b506c5247caacde77.camel@perches.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <26e1929386babea33d4a320b506c5247caacde77.camel@perches.com>
X-Original-Sender: michael.zaidman@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=YxPQ5HdJ;       spf=pass
 (google.com: domain of michael.zaidman@gmail.com designates
 2a00:1450:4864:20::32e as permitted sender) smtp.mailfrom=michael.zaidman@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Sun, May 09, 2021 at 01:39:29PM -0700, Joe Perches wrote:
> On Sun, 2021-05-09 at 22:32 +0300, Michael Zaidman wrote:
> > Fixes: 6a82582d9fa4 ("HID: ft260: add usb hid to i2c host bridge driver=
")
> >=20
> > Fix warning reported by static analysis when built with W=3D1 for arm64=
 by
> > clang version 13.0.0
> >=20
> > > > drivers/hid/hid-ft260.c:794:44: warning: format specifies type 'sho=
rt' but
> > =C2=A0=C2=A0=C2=A0the argument has type 'int' [-Wformat]
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0retur=
n scnprintf(buf, PAGE_SIZE, "%hi\n", le16_to_cpu(*field));
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0~~~     ^~~~~~~~~~~~~~~~=
~~~
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0%i
> > =C2=A0=C2=A0=C2=A0include/linux/byteorder/generic.h:91:21: note: expand=
ed from
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0macro 'le16_to_cpu'
> > =C2=A0=C2=A0=C2=A0#define le16_to_cpu __le16_to_cpu
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0^
> > =C2=A0=C2=A0=C2=A0include/uapi/linux/byteorder/big_endian.h:36:26: note=
: expanded from
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0macro '__le16_to_cpu'
> > =C2=A0=C2=A0=C2=A0#define __le16_to_cpu(x) __swab16((__force __u16)(__l=
e16)(x))
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > =C2=A0=C2=A0=C2=A0include/uapi/linux/swab.h:105:2: note: expanded from =
macro '__swab16'
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0(__bu=
iltin_constant_p((__u16)(x)) ?     \
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0^~~~~=
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >=20
> > Signed-off-by: Michael Zaidman <michael.zaidman@gmail.com>
> > Reported-by: kernel test robot <lkp@intel.com>
> > ---
> > =C2=A0drivers/hid/hid-ft260.c | 2 +-
> > =C2=A01 file changed, 1 insertion(+), 1 deletion(-)
> >=20
> > diff --git a/drivers/hid/hid-ft260.c b/drivers/hid/hid-ft260.c
> > index 047aa85a7c83..38794a29599c 100644
> > --- a/drivers/hid/hid-ft260.c
> > +++ b/drivers/hid/hid-ft260.c
> > @@ -791,7 +791,7 @@ static int ft260_word_show(struct hid_device *hdev,=
 int id, u8 *cfg, int len,
> > =C2=A0	if (ret !=3D len && ret >=3D 0)
> > =C2=A0		return -EIO;
> > =C2=A0
> >=20
> > -	return scnprintf(buf, PAGE_SIZE, "%hi\n", le16_to_cpu(*field));
> > +	return scnprintf(buf, PAGE_SIZE, "%d\n", le16_to_cpu(*field));
> > =C2=A0}
>=20
> There are 2 of these so I wonder about the static analysis.

There is nothing wrong with the static analysis. The first scnprintf format
type is perfectly valid as far as its size is greater than the size of the
data pointed by the *field pointer, which is a one byte size in our case.
The static analysis warned about the second scnprintf case, where the forma=
t
type was shorter than the integer returned by the __builtin_constant_p.
This warning can be considered as a false positive since the le16_to_cpu is
all about the 16 bits numbers, but to silence it, I submitted the above fix=
.

> It's probably better to use sysfs_emit as well.

The sysfs_emit was introduced in the 5.10 kernel:
2efc459d06f16 (Joe Perches 2020-09-16 13:40:38 -0700 335) int sysfs_emit(..=
.)

But, the hid-ft260 driver will be used mostly with older kernels, at least,
for the next couple of years. Since older kernel versions do not have this =
API,
it will require patching the driver or kernel that I would like to avoid.
Nevertheless, we can reconsider the sysfs_emit usage in this driver in the
future, upon wider 5.10+ kernels' adoption.

> ---
>  drivers/hid/hid-ft260.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/hid/hid-ft260.c b/drivers/hid/hid-ft260.c
> index 7a9ba984a75a..475641682fff 100644
> --- a/drivers/hid/hid-ft260.c
> +++ b/drivers/hid/hid-ft260.c
> @@ -783,7 +783,7 @@ static int ft260_byte_show(struct hid_device *hdev, i=
nt id, u8 *cfg, int len,
>  	if (ret !=3D len && ret >=3D 0)
>  		return -EIO;
> =20
> -	return scnprintf(buf, PAGE_SIZE, "%hi\n", *field);
> +	return sysfs_emit(buf, "%d\n", *field);
>  }
> =20
>  static int ft260_word_show(struct hid_device *hdev, int id, u8 *cfg, int=
 len,
> @@ -795,7 +795,7 @@ static int ft260_word_show(struct hid_device *hdev, i=
nt id, u8 *cfg, int len,
>  	if (ret !=3D len && ret >=3D 0)
>  		return -EIO;
> =20
> -	return scnprintf(buf, PAGE_SIZE, "%hi\n", le16_to_cpu(*field));
> +	return sysfs_emit(buf, "%d\n", le16_to_cpu(*field));
>  }
> =20
>  #define FT260_ATTR_SHOW(name, reptype, id, type, func)			       \
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210510091730.GA2276%40michael-VirtualBox.
