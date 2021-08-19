Return-Path: <clang-built-linux+bncBDQ2L75W5QGBBIXP7GEAMGQE7SD4HLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 488B33F1C9D
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 17:24:20 +0200 (CEST)
Received: by mail-pl1-x63d.google.com with SMTP id h3-20020a170902f54300b0012e31e334c0sf1674702plf.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 08:24:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629386659; cv=pass;
        d=google.com; s=arc-20160816;
        b=v15vrrqKutxHTB3NQtihYVeuGp9zI1726NKI7U0mCptyq6AC3HNMuqApRcJ5aaFWz9
         VPFl+7U3H10wHfwqTAi3y/cSou20PZMbEklyydjhbCNDzlzU2OBe9G41zhHkrPR7ENSD
         Z/cbYcfZfVMVelrEFKvyNtj13sJRJYx7w5ewmANXEgdYoC+3OJYNjgdgh9UnXlToRojX
         lNqrnPJdkjtBHbE1/16d451HYB4NI1GjsCTcmqrfyD7rVQA5usOXdp5e18/Lnt2iPTzP
         f1wk7E1zrDFVglOjrjBDgCXtTpsO/mJdXqSte5qYzi9PqxWeula3za1WO9gKpk7upWBg
         59Hg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=kFazOpl2Ep/GkhlKiV5qppX5mj3DTZuEbfTdlbASa1o=;
        b=MqC2swkyBQUdoI0enurGD9Rs883otV1/hM06iL5a9zZpo1m03uDJ8MPZvzf7FAYmF9
         VyU9A2i2G/GZaBELR+ELTi4dlBCblOWuC4MGNLkWqwjQaN7bNbm+ymsfCCvQWoPChWKb
         FLbV3K0qZ0XP9UCsysfal92cOwOvyYIjUEh8QwmeI6UTzVxMmCBpJZwjruE0636mdyBf
         p/pgB9IEGTa03iEbmNBqva+3hhWdmCidYgxr/nKZob20yacF6veb8wgaohncEKCgpUnW
         k/MPmgybYRE2jWz1ur692SE6Q6y7/HLMolP2oLJmeXVkRI+KVN6DjQKmkz4ykXUyM5Mi
         fuSg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Li1FSwq9;
       spf=pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=broonie@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kFazOpl2Ep/GkhlKiV5qppX5mj3DTZuEbfTdlbASa1o=;
        b=SfIoeiVeth6EExB1Ze9zZWZmp6tjr1H64hwvWstqFKXu1usvNTwUgJSNHMUDjtac0R
         jlGQsmwpBsRbBvTVRzgyKb4DlrNR9E5GKvFMsC2UboM9qq0vhWOeq+rWEXmDxdZuaTvp
         I4YZkLVphC+8/bvwwmNHJJce3SkLN5oWEyxCedJyoDdTU3t4ujbHXUEoBMu3Q8dgh7K5
         m6CSsSaoCbj1h4vGkHzqrCxIFG1iWvMxQl4bCivJ+J0gB1bCYE2AFGFW3c4gk0GmeUx8
         JVR9mrzSfZ/xEPth6vHGDLk+0qgYjhsUMRdUebIFOMTb1I2P2Ss1xLn/OuDtlJlPc98D
         wNCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=kFazOpl2Ep/GkhlKiV5qppX5mj3DTZuEbfTdlbASa1o=;
        b=dySbrGmTVoWxu6kjHIeB+wIzPcIj1R+MzCMqwdFaiWqYdFnAc0qIfzr6V0dEYoC2cF
         ygAG5U9/6NTKknhAtKGrjsTLktu9wcCCNm/y69p2Gb0pEyCk5eX/MGngWMiQaZHYrBAI
         XzMQVLNFd4OLND3zWYrc4Bg/H8/20/1nZ2xInEl4m/3YgQ9LuWN3Ggz28H7Ky9ugmD7C
         XfwWNzmM7tiXSciIV+/cXgKc3DW5Ixz5l0lE8pSSMBkMiCyN1o13YBwZM6aeKjr3QaTY
         /BHsvu06QOvd40E/QYQCXb5R+Ackjb14o6QNLjpWLshAH13K3hE1r20wOeaxUYLn9BwV
         LFvw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533fE/MFVEyrA7sQA2tCgbkphgUphBJG6eiUt9TbhKXtwVU46QsN
	7wtN0K6SdVOvdkjQHJU4iKA=
X-Google-Smtp-Source: ABdhPJy+RMqVMcDAbaWEepvPmnSKTOaTwnxBiLbQYVkNaAR421TYfrPhGvnJcRhJgA2lf+4GpFi9YA==
X-Received: by 2002:a62:76d0:0:b0:3e3:42d6:c735 with SMTP id r199-20020a6276d0000000b003e342d6c735mr2304907pfc.32.1629386658806;
        Thu, 19 Aug 2021 08:24:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:d2c9:: with SMTP id n9ls3026621plc.0.gmail; Thu, 19
 Aug 2021 08:24:18 -0700 (PDT)
X-Received: by 2002:a17:902:ec85:b0:12d:ba6d:5ccc with SMTP id x5-20020a170902ec8500b0012dba6d5cccmr12169718plg.52.1629386658244;
        Thu, 19 Aug 2021 08:24:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629386658; cv=none;
        d=google.com; s=arc-20160816;
        b=g6ZkLJZpoYq1jBqdN2LnfLLefu2udnwFWsl/ZCJo4DytSgyvE3qJre5qeET8FMwNQ4
         0xUl5Zzm8x73wqOgqvvqj5+MD3ItGcQE+EUgLwp9PUIfo2ZpMlBd6mSWF8Tb8YVfiv7h
         xapJvp24Nyb6d79pTMRnBLWZDmYcPZu9Y3otO5yCefaz23mb5B+5lCXAeSKJTEuWASMd
         6NWVIWPQVvo15C/Z5suw/23vOQH2TXxTztIFs+BYSslw8VyVtepzbx6ymVydLdMm4BzR
         9xqcwfTC4WOyER0CTySf633tpr6mNzmCmn2jADYiMkJlxFGIqZTu5ZsARMLIE2PW+3h/
         Gm2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=0jCKckwf/hDAvSu5btzERptR6wNJZ/2m5CNl+vikajo=;
        b=xXKycp3kjreJxwmVilt7Ut5IgeNZyLy8uL3mMivNNzbT1RtO5KEzvbHWr27TARjYf4
         cXSsFa7PqgeKyY4QJvjfq5mQnOkd0tRfSyx2vsXyXO6jlWFcRa3aRbuDZmdsQr+vJSYy
         lzHDF06Wl4TyGz5hTKIxns5iENa+Q/qfMpHMFpJJMPDT5bIuugXr3d9RA/vPXa680fwC
         JaUgWy6W5r4vWRW3LlfnxV/ebbnts9hErQKr5XIX+mZroHVpe5K+7JrrVj+7RatJ7kxh
         Ecu6bqAdR9mDvHPMAPdOdj1DW8HY5ZfbHPccuj3u8WvfVR5P+TcszWCo2T8kQPM0tyfp
         VbJg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Li1FSwq9;
       spf=pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=broonie@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o5si271428pgv.1.2021.08.19.08.24.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Aug 2021 08:24:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 79A9961075;
	Thu, 19 Aug 2021 15:24:17 +0000 (UTC)
Date: Thu, 19 Aug 2021 16:23:53 +0100
From: Mark Brown <broonie@kernel.org>
To: kernel test robot <yujie.liu@intel.com>
Cc: Matti Vaittinen <mazziesaccount@gmail.com>,
	Cristian Marussi <cristian.marussi@arm.com>,
	clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [kbuild] drivers/regulator/bd718x7-regulator.c:531:8: warning:
 Excessive padding in 'struct bd718xx_regulator_data' (8 padding bytes, where
 0 is optimal).
Message-ID: <20210819152353.GN4177@sirena.org.uk>
References: <202108172206.9cbgvI53-lkp@intel.com>
 <4dabc78a-f9ee-4e7d-8bf3-ea1c6cef8530@intel.com>
 <CANhJrGOh+9PoMmsv-Q9petTV-hv9rv9nOitg0NCQHqXVXzJvvw@mail.gmail.com>
 <422ade1b-8e88-d6dc-ae4e-799e729932b7@intel.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qi3SIpffvxS/TM8d"
Content-Disposition: inline
In-Reply-To: <422ade1b-8e88-d6dc-ae4e-799e729932b7@intel.com>
X-Cookie: She sells cshs by the cshore.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: broonie@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Li1FSwq9;       spf=pass
 (google.com: domain of broonie@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=broonie@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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


--qi3SIpffvxS/TM8d
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On Thu, Aug 19, 2021 at 10:49:13PM +0800, kernel test robot wrote:

> Sorry for bothering, we'll ignore struct padding warnings next time.

I think the warnings are useful, it's just that they're not important
for all structs.  If the struct was getting allocated a lot it could be
pointing out an issue that makes a real difference.  I'm not sure it s
realistic for automation to figure it out for itself so it's better to
send them even if they get ignored a lot.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210819152353.GN4177%40sirena.org.uk.

--qi3SIpffvxS/TM8d
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmEed4kACgkQJNaLcl1U
h9AhvAf/X8iA7lw+gQGPtcpDfsRnpdm/eSdg5czGHcPoYCB0EXpC78C9Ryea+yEm
ZZpBB4cm+ZjOGpj/bV0vMFD7JKDofjXSN8E1GWyICUrOBj8wi6KVdYOOSdXzkwSj
btley9wci3zSIAmsdTHj4sEY8YOc/iwg+ZXtAYCNh/ypLgiI5LVh65hjxLAqd+p3
3JmAvYEnMA9jU6ji2USYOhA/McjfQN0DM+exKww/KTlSToG6F766zFHz12ygmytV
P7P+soQf1dpIQhmWH+goz1KxxzCsdWkTC0Rjyuo0EsO6MCJOg3feTgiQEOih2w96
nyHjnhDOBCW575mQv5lDw3zeyYV0Kw==
=UtaG
-----END PGP SIGNATURE-----

--qi3SIpffvxS/TM8d--
