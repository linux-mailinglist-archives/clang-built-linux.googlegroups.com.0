Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBS6T5DVAKGQEXTPETXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id B0FB891C27
	for <lists+clang-built-linux@lfdr.de>; Mon, 19 Aug 2019 06:47:07 +0200 (CEST)
Received: by mail-wr1-x439.google.com with SMTP id m7sf4285732wrw.22
        for <lists+clang-built-linux@lfdr.de>; Sun, 18 Aug 2019 21:47:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566190027; cv=pass;
        d=google.com; s=arc-20160816;
        b=DVCFazOatK0VoI2MYbSDkFomDZdEO3FuXZBN4Q+nvUtvr34c9MKT5JKSX/uM2mc0AQ
         D1jDo/FzwNiAJo5FuRI7Kq7XviYPU6j7RidbBBCLOHMbFaSf1LghmxY+F8ALNCYiDcP4
         J86DDm3vJvUwsN4MI4FJm5TdOAprGogFULVb7n4PMGfhI9NpQB1JyJANenN7o7GrsiEJ
         ecfZ6Jko35fpZHfOsuJ0NkVZTPW7djQuFE39o3IIytIGMRZG34JwJGZhwus2QTMkUpnQ
         sDuUkP04GrZ700kpnj/OZcZJm+5tyVWZng8NHmCBMv5JYQDsAPzcrIihirjFv0jkLTk+
         5ODQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=y/ZYtxnwASCdvdPZwt5WxKkqghDRX4vMIUzwhvHjAuY=;
        b=w7RxyXtpvhkqOh1dV0xamYG9Vqf/tHeHtbVa2PLgyWL9AVPWto1GZLeSrhGHYsgmrG
         ryAXLjCy/XrMk7pWMJ5U1H0uSRVyjSqGdW8gWT0BT8IHDMp+PF3W90RoJANyNc6uETaG
         WmhOQDZWcRaHOQPodNAvOk8TPlUaSbNwlSWXdDrffHpXOa67bzMyaDlzmPrpafszenIq
         wAYgRHa0isS3fgMcjzhZ5bRlGdPOLxEPhfIBOmfNcGTxX4Mu4jmCj49FJQmmS4zXHKSi
         r0EG/OERwJkp3TuEr1LzREAQdbLlydsPq4qumFAbbFJxhLL9VkbXh50/QSpsPGIpmVSg
         0plA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Kqewii0T;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=y/ZYtxnwASCdvdPZwt5WxKkqghDRX4vMIUzwhvHjAuY=;
        b=htyvVoK7sHZpS0oCyOTo45/uc6FlJ6QQriW8RiEZY94YTZVZ9Ln0YbvSBxSo4yggNY
         OA9cZobkQb1ubag98+YE+fzcFYFvlqb2rk4+LMGChGIBH9aeHvrBJj1dct0cA0HBmpu2
         DqG1r70JWMpy9LNg/XtAk3OrbT77ozlkG9KlcJZG9RQnTcsJaPeLI8grWKj2XqamCRtI
         6gSc/jSkWhpfodrNXR+IwzGWZFze+A9CxKYYkh84c02AMNEJ+3SlMoK20hwPpD+Kvcwt
         jNdfw24Kr2LygusgvAPPisNXocX/IoM3np4I9A872oykKvTkjMLV1fLvK+w42SN5rMnm
         bG7w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=y/ZYtxnwASCdvdPZwt5WxKkqghDRX4vMIUzwhvHjAuY=;
        b=lPrPbpLkrSwR0A9YKoHiiJvZZu46pK6E7OfrsXV3c99+qQSAcpHvqIL5GKWQJ76rbD
         uv7U2vCZp3VpqkIE7QfwIBsWkc0WgjSgDs5ulMj2dYL++p8ymWoIf79EodagtCrx8VQd
         XFbcpHWRYjDhS4ckLk8Fs8LjGTFST++aoL9+vQlnv+LF1bdbv95gOooLqj+/tvXwYA0z
         9cnIfFsh+ra9Vm8zBTux3oWKVuISwhBRqS27s0EWZGIqXteA66Nqf5nMApxztZ7rC9Ie
         zm/SAC9LC2BITh46LzydHNpbvuaMNM6ois3uiYavr/S9S7+BoFhycNx1i7a81TqixcpI
         yl6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=y/ZYtxnwASCdvdPZwt5WxKkqghDRX4vMIUzwhvHjAuY=;
        b=mNe/mXwb6cDyUqhoWM/8JDSynZBBEfb57+k//KnlurNaI55KSSGSXCdqKnJvUb0/bf
         0wO/ppt7JwFcYzRWUpxIny63byCIoNX5yTSWCFqyIdVaNCDbwSYpLA9AROoN94QWUuSE
         cDJiLGoU2JmntDM66SLNyXvofdoFLVGSUi4+PJitRKha1wWAhSoWKe1Utb6fK9ElmN8v
         D7UzFJ+BcqzjKCpHB1VlwfQZKpFssPPFk0gIHKYFH2o2YDA0gZ/tdk9qI+n6uPPMDBcw
         Ec84s97oQHa53qBYfMN6AA6O2HmRIRep+jXQRmDvrw90R23qOECNoJEE8QbgreqiOMkD
         c4xA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU9nm+zKoiGfBKWcdL1E34JOMA+BMhmGapkCqr/6ncQZokgZk2o
	onY5adrUtZSujVFS4HFXakY=
X-Google-Smtp-Source: APXvYqwPoDsmLlRr49azbsxzaw2cjD3wGWEUTJSQeuUX7qCTICWBYh6iXWD+P94qimr2B8X9s8bR0g==
X-Received: by 2002:a1c:6385:: with SMTP id x127mr18165441wmb.140.1566190027323;
        Sun, 18 Aug 2019 21:47:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:ec43:: with SMTP id w3ls4110822wrn.14.gmail; Sun, 18 Aug
 2019 21:47:06 -0700 (PDT)
X-Received: by 2002:a05:6000:1186:: with SMTP id g6mr25359609wrx.17.1566190026888;
        Sun, 18 Aug 2019 21:47:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566190026; cv=none;
        d=google.com; s=arc-20160816;
        b=pEBDIbbeGUEdsmxLQtxWttRmH13/JVHgFlqs1qn8XmZabaUoJrPt+BXXGjMEaJ/Z/Y
         eg3RqKzXVKxJxR1zSqObdUzTyieFtt6uXtNF+O1YPM/Zu9M3poB/6xG3zVeZRN2V1Q1n
         WlEqYWV59zL/0yxDuC3r/FLGMDtfW+1aIpRwKxTE3nF0INcxymXjx2m3a15q8TdytIBz
         /PkVrKwvO85+5dN6R+X4RyHQHnEJ2PfTB6H8gA+BPfQd4JQljRyEYlYTSF9kfRkwP0C/
         LhTSqKFTarI0ZsfsxltxuZ9bcAKvEyxKmqFOzF2N7A3EVyXXOVe2xoozoyk0p/rg747H
         qi+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=Yd+1WZ8Ey5RHtxMlM50z9bm6q/OkpsgZantCupc9SSM=;
        b=ArVvMH/L+PMz3cJtQf1CwyO/0opBhB2BaPYsbkprjY8sp9WEpSfOEQDtSbe/Gevabc
         K0halULTNB3nA/QfNxCSB/gwswfLlzV0eKWGQvom4kimd20rPLOwr1uK+Olec1k1WaHl
         BqxBfSiVgcIqffLwJq4HPGz17xxqh+mrwq7899nUooQp00vuru9P6hX0HeUlMjOiYOlX
         MB1rPWii+KNWaHN8UwfdZW5ZJ1jYx6IGrXzXRj8XdI15XusMMk3dqiaxYg4zjecRxuLf
         3Cs0dGp7s35BEXfdHMvR4/yfE93QOjN2mF34dFC9qJOIG2wmw9yUZf9fun1IeKg1Xe/8
         /eXw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Kqewii0T;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id p67si496962wme.2.2019.08.18.21.47.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 18 Aug 2019 21:47:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Received: by mail-wr1-x442.google.com with SMTP id u16so7213001wrr.0
        for <clang-built-linux@googlegroups.com>; Sun, 18 Aug 2019 21:47:06 -0700 (PDT)
X-Received: by 2002:adf:db03:: with SMTP id s3mr13192832wri.214.1566190025818;
        Sun, 18 Aug 2019 21:47:05 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id j17sm12444302wru.24.2019.08.18.21.47.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Aug 2019 21:47:05 -0700 (PDT)
Date: Sun, 18 Aug 2019 21:47:03 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: kbuild@01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kbuild test robot <lkp@intel.com>
Subject: Re: [pinchartl-media:omapdrm/edid 8/8]
 drivers/gpu/drm/drm_edid.c:5259:8: warning: variable 'ret' is used
 uninitialized whenever 'if' condition is true
Message-ID: <20190819044703.GA71991@archlinux-threadripper>
References: <201908191201.R0MZbion%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <201908191201.R0MZbion%lkp@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Kqewii0T;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Hi Laurent,

The 0day team has been running clang builds for us and these warnings
cropped up. I know this commit is specifically labelled as WIP but I
figured you'd want this brought up sooner rather than later so it could
be fixed before true review started :)

On Mon, Aug 19, 2019 at 12:38:14PM +0800, kbuild test robot wrote:
> CC: kbuild-all@01.org
> TO: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
>=20
> tree:   git://linuxtv.org/pinchartl/media.git omapdrm/edid
> head:   20859175bc5ecb86ea98068a56e3866c76335f95
> commit: 20859175bc5ecb86ea98068a56e3866c76335f95 [8/8] [WIP] drm/edid: De=
couple EDID retrieval from connector
> config: arm64-defconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb0=
6f77a08968c99a8172cbf2ccdd0f)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbi=
n/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout 20859175bc5ecb86ea98068a56e3866c76335f95
>         # save the attached .config to linux build tree
>         make.cross ARCH=3Darm64=20
>=20
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>=20
> All warnings (new ones prefixed by >>):
>=20
> >> drivers/gpu/drm/drm_edid.c:5259:8: warning: variable 'ret' is used uni=
nitialized whenever 'if' condition is true [-Wsometimes-uninitialized]
>                            if (get_edid_block(data, block, j, EDID_LENGTH=
))
>                                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~
>    drivers/gpu/drm/drm_edid.c:5308:9: note: uninitialized use occurs here
>            return ret;
>                   ^~~
>    drivers/gpu/drm/drm_edid.c:5259:4: note: remove the 'if' if its condit=
ion is always false
>                            if (get_edid_block(data, block, j, EDID_LENGTH=
))
>                            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~
>    drivers/gpu/drm/drm_edid.c:5251:6: warning: variable 'ret' is used uni=
nitialized whenever 'if' condition is true [-Wsometimes-uninitialized]
>            if (!new)
>                ^~~~
>    drivers/gpu/drm/drm_edid.c:5308:9: note: uninitialized use occurs here
>            return ret;
>                   ^~~
>    drivers/gpu/drm/drm_edid.c:5251:2: note: remove the 'if' if its condit=
ion is always false
>            if (!new)
>            ^~~~~~~~~
>    drivers/gpu/drm/drm_edid.c:5231:7: warning: variable 'ret' is used uni=
nitialized whenever 'if' condition is true [-Wsometimes-uninitialized]
>                    if (get_edid_block(data, edid->data, 0, EDID_LENGTH))
>                        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/gpu/drm/drm_edid.c:5308:9: note: uninitialized use occurs here
>            return ret;
>                   ^~~
>    drivers/gpu/drm/drm_edid.c:5231:3: note: remove the 'if' if its condit=
ion is always false
>                    if (get_edid_block(data, edid->data, 0, EDID_LENGTH))
>                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/gpu/drm/drm_edid.c:5221:9: note: initialize the variable 'ret'=
 to silence this warning
>            int ret;
>                   ^
>                    =3D 0
>    3 warnings generated.
>=20
> vim +5259 drivers/gpu/drm/drm_edid.c
>=20
> 20859175bc5ecb Laurent Pinchart 2019-08-19  5211 =20
> 20859175bc5ecb Laurent Pinchart 2019-08-19  5212  static int __drm_do_get=
_edid(struct drm_device *dev, const char *name,
> 20859175bc5ecb Laurent Pinchart 2019-08-19  5213  			     struct drm_edid=
 *edid,
> 06a0c9cbe5e5ff Laurent Pinchart 2019-08-18  5214  	int (*get_edid_block)(=
void *data, u8 *buf, unsigned int block,
> 06a0c9cbe5e5ff Laurent Pinchart 2019-08-18  5215  			      size_t len),
> 06a0c9cbe5e5ff Laurent Pinchart 2019-08-18  5216  	void *data)
> 06a0c9cbe5e5ff Laurent Pinchart 2019-08-18  5217  {
> 20859175bc5ecb Laurent Pinchart 2019-08-19  5218  	unsigned int valid_ext=
ensions;
> 20859175bc5ecb Laurent Pinchart 2019-08-19  5219  	unsigned int i, j;
> 20859175bc5ecb Laurent Pinchart 2019-08-19  5220  	u8 *new;
> 20859175bc5ecb Laurent Pinchart 2019-08-19  5221  	int ret;
> 83dd000865eaae Lespiau, Damien  2013-08-19  5222 =20
> 20859175bc5ecb Laurent Pinchart 2019-08-19  5223  	edid->data =3D kmalloc=
(EDID_LENGTH, GFP_KERNEL);
> 20859175bc5ecb Laurent Pinchart 2019-08-19  5224  	if (!edid->data)
> 20859175bc5ecb Laurent Pinchart 2019-08-19  5225  		return -ENOMEM;
> 83dd000865eaae Lespiau, Damien  2013-08-19  5226 =20
> 20859175bc5ecb Laurent Pinchart 2019-08-19  5227  	edid->num_blocks =3D 1=
;
> f1781e9bb2dd23 Ville Syrj=C3=A4l=C3=A4    2017-11-13  5228 =20
> 06a0c9cbe5e5ff Laurent Pinchart 2019-08-18  5229  	/* base block fetch */
> 06a0c9cbe5e5ff Laurent Pinchart 2019-08-18  5230  	for (i =3D 0; i < 4; i=
++) {
> 20859175bc5ecb Laurent Pinchart 2019-08-19  5231  		if (get_edid_block(da=
ta, edid->data, 0, EDID_LENGTH))
> 06a0c9cbe5e5ff Laurent Pinchart 2019-08-18  5232  			goto out;

This goto...

> 20859175bc5ecb Laurent Pinchart 2019-08-19  5233  		if (drm_edid_block_va=
lid(edid->data, 0, false, &edid->corrupt))
> 06a0c9cbe5e5ff Laurent Pinchart 2019-08-18  5234  			break;
> 20859175bc5ecb Laurent Pinchart 2019-08-19  5235  		if (i =3D=3D 0 && drm=
_edid_is_zero(edid->data, EDID_LENGTH)) {
> 20859175bc5ecb Laurent Pinchart 2019-08-19  5236  			edid->null_counter++=
;
> 06a0c9cbe5e5ff Laurent Pinchart 2019-08-18  5237  			goto carp;
> 06a0c9cbe5e5ff Laurent Pinchart 2019-08-18  5238  		}
> 06a0c9cbe5e5ff Laurent Pinchart 2019-08-18  5239  	}
> 06a0c9cbe5e5ff Laurent Pinchart 2019-08-18  5240  	if (i =3D=3D 4)
> 06a0c9cbe5e5ff Laurent Pinchart 2019-08-18  5241  		goto carp;
> 4eed4a0a4ac318 Damien Lespiau   2013-09-25  5242 =20
> 06a0c9cbe5e5ff Laurent Pinchart 2019-08-18  5243  	/* if there's no exten=
sions, we're done */
> 20859175bc5ecb Laurent Pinchart 2019-08-19  5244  	valid_extensions =3D e=
did->data[0x7e] + 1;
> 06a0c9cbe5e5ff Laurent Pinchart 2019-08-18  5245  	if (valid_extensions =
=3D=3D 0)
> 20859175bc5ecb Laurent Pinchart 2019-08-19  5246  		return 0;
> 20859175bc5ecb Laurent Pinchart 2019-08-19  5247 =20
> 20859175bc5ecb Laurent Pinchart 2019-08-19  5248  	edid->num_blocks +=3D =
valid_extensions;
> 4eed4a0a4ac318 Damien Lespiau   2013-09-25  5249 =20
> 20859175bc5ecb Laurent Pinchart 2019-08-19  5250  	new =3D krealloc(edid-=
>data, edid->num_blocks * EDID_LENGTH, GFP_KERNEL);
> 06a0c9cbe5e5ff Laurent Pinchart 2019-08-18  5251  	if (!new)
> 06a0c9cbe5e5ff Laurent Pinchart 2019-08-18  5252  		goto out;

This goto...

> 20859175bc5ecb Laurent Pinchart 2019-08-19  5253  	edid->data =3D new;
> 83dd000865eaae Lespiau, Damien  2013-08-19  5254 =20
> 20859175bc5ecb Laurent Pinchart 2019-08-19  5255  	for (j =3D 1; j < edid=
->num_blocks; j++) {
> 20859175bc5ecb Laurent Pinchart 2019-08-19  5256  		u8 *block =3D edid->d=
ata + j * EDID_LENGTH;
> 83dd000865eaae Lespiau, Damien  2013-08-19  5257 =20
> 06a0c9cbe5e5ff Laurent Pinchart 2019-08-18  5258  		for (i =3D 0; i < 4; =
i++) {
> 06a0c9cbe5e5ff Laurent Pinchart 2019-08-18 @5259  			if (get_edid_block(d=
ata, block, j, EDID_LENGTH))
> 06a0c9cbe5e5ff Laurent Pinchart 2019-08-18  5260  				goto out;

and this goto all do not initialize ret.

> 06a0c9cbe5e5ff Laurent Pinchart 2019-08-18  5261  			if (drm_edid_block_v=
alid(block, j, false, NULL))
> 06a0c9cbe5e5ff Laurent Pinchart 2019-08-18  5262  				break;
> 06a0c9cbe5e5ff Laurent Pinchart 2019-08-18  5263  		}
> 83dd000865eaae Lespiau, Damien  2013-08-19  5264 =20
> 06a0c9cbe5e5ff Laurent Pinchart 2019-08-18  5265  		if (i =3D=3D 4)
> 06a0c9cbe5e5ff Laurent Pinchart 2019-08-18  5266  			valid_extensions--;
> 83dd000865eaae Lespiau, Damien  2013-08-19  5267  	}
> 40d9b043a89e23 Dave Airlie      2014-10-20  5268 =20
> 20859175bc5ecb Laurent Pinchart 2019-08-19  5269  	if (valid_extensions !=
=3D edid->num_blocks - 1) {
> 06a0c9cbe5e5ff Laurent Pinchart 2019-08-18  5270  		u8 *base;
> 40d9b043a89e23 Dave Airlie      2014-10-20  5271 =20
> 20859175bc5ecb Laurent Pinchart 2019-08-19  5272  		connector_bad_edid(de=
v, name, edid);
> 40d9b043a89e23 Dave Airlie      2014-10-20  5273 =20
> 20859175bc5ecb Laurent Pinchart 2019-08-19  5274  		edid->data[EDID_LENGT=
H-1] +=3D edid->data[0x7e] - valid_extensions;
> 20859175bc5ecb Laurent Pinchart 2019-08-19  5275  		edid->data[0x7e] =3D =
valid_extensions;
> 20859175bc5ecb Laurent Pinchart 2019-08-19  5276  		edid->num_blocks =3D =
valid_extensions + 1;
> 40d9b043a89e23 Dave Airlie      2014-10-20  5277 =20
> 06a0c9cbe5e5ff Laurent Pinchart 2019-08-18  5278  		new =3D kmalloc_array=
(valid_extensions + 1, EDID_LENGTH,
> 06a0c9cbe5e5ff Laurent Pinchart 2019-08-18  5279  				    GFP_KERNEL);
> 20859175bc5ecb Laurent Pinchart 2019-08-19  5280  		if (!new) {
> 20859175bc5ecb Laurent Pinchart 2019-08-19  5281  			ret =3D -ENOMEM;
> 06a0c9cbe5e5ff Laurent Pinchart 2019-08-18  5282  			goto out;
> 20859175bc5ecb Laurent Pinchart 2019-08-19  5283  		}
> 40d9b043a89e23 Dave Airlie      2014-10-20  5284 =20
> 06a0c9cbe5e5ff Laurent Pinchart 2019-08-18  5285  		base =3D new;
> 20859175bc5ecb Laurent Pinchart 2019-08-19  5286  		for (i =3D 0; i < edi=
d->num_blocks; i++) {
> 20859175bc5ecb Laurent Pinchart 2019-08-19  5287  			u8 *block =3D edid->=
data + i * EDID_LENGTH;
> 40d9b043a89e23 Dave Airlie      2014-10-20  5288 =20
> 06a0c9cbe5e5ff Laurent Pinchart 2019-08-18  5289  			if (!drm_edid_block_=
valid(block, i, false, NULL))
> 06a0c9cbe5e5ff Laurent Pinchart 2019-08-18  5290  				continue;
> 40d9b043a89e23 Dave Airlie      2014-10-20  5291 =20
> 06a0c9cbe5e5ff Laurent Pinchart 2019-08-18  5292  			memcpy(base, block, =
EDID_LENGTH);
> 06a0c9cbe5e5ff Laurent Pinchart 2019-08-18  5293  			base +=3D EDID_LENGT=
H;
> 40d9b043a89e23 Dave Airlie      2014-10-20  5294  		}
> 40d9b043a89e23 Dave Airlie      2014-10-20  5295 =20
> 20859175bc5ecb Laurent Pinchart 2019-08-19  5296  		kfree(edid->data);
> 20859175bc5ecb Laurent Pinchart 2019-08-19  5297  		edid->data =3D new;
> 5e546cd5b3bc76 Dave Airlie      2016-05-03  5298  	}
> 5e546cd5b3bc76 Dave Airlie      2016-05-03  5299 =20
> 20859175bc5ecb Laurent Pinchart 2019-08-19  5300  	return 0;
> 5e546cd5b3bc76 Dave Airlie      2016-05-03  5301 =20
> 06a0c9cbe5e5ff Laurent Pinchart 2019-08-18  5302  carp:
> 20859175bc5ecb Laurent Pinchart 2019-08-19  5303  	connector_bad_edid(dev=
, name, edid);
> 20859175bc5ecb Laurent Pinchart 2019-08-19  5304  	ret =3D -EINVAL;
> 06a0c9cbe5e5ff Laurent Pinchart 2019-08-18  5305  out:
> 20859175bc5ecb Laurent Pinchart 2019-08-19  5306  	kfree(edid->data);
> 20859175bc5ecb Laurent Pinchart 2019-08-19  5307  	edid->data =3D NULL;
> 20859175bc5ecb Laurent Pinchart 2019-08-19  5308  	return ret;
> 06a0c9cbe5e5ff Laurent Pinchart 2019-08-18  5309  }
> 4b0d5c9d60903c Laurent Pinchart 2019-08-18  5310 =20
>=20
> :::::: The code at line 5259 was first introduced by commit
> :::::: 06a0c9cbe5e5ff227b29a72138e69b6a0449e3d1 drm/edid: Move functions =
to avoid forward declaration
>=20
> :::::: TO: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> :::::: CC: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
>=20
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Ce=
nter
> https://lists.01.org/pipermail/kbuild-all                   Intel Corpora=
tion
>=20

Cheers,
Nathan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20190819044703.GA71991%40archlinux-threadripper.
