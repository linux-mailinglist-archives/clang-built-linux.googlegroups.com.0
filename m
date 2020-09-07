Return-Path: <clang-built-linux+bncBCQMFSVRS4ORB6GL3H5AKGQEDVQSBUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id CF0E02600DA
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Sep 2020 18:55:21 +0200 (CEST)
Received: by mail-pf1-x437.google.com with SMTP id z16sf8598607pfq.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Sep 2020 09:55:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599497720; cv=pass;
        d=google.com; s=arc-20160816;
        b=hfXe4TpnArXN49aXho/kr43WTL+ID8QlrHAAs1dQYQHHVI2DdzYXg+nhgljUyEe01y
         seGJU5Y4U/ZRuchYKzy34QAErQ0gusOhVEoT4OShE6hi3QEMWywHm9f4uoFWOMRKmdlJ
         OzfT0UiRs3YD+b/p/T68ZQaIF9TxcYhNRuofyfS5sWKbcA8mhXqOjDADN0c4MsibJtJd
         aFsHwj7Y0zqo+mdADqziQ6IXNZnC+rctXtt+IztLrSslAD68z70bVlRX/cWL68qqiH4w
         nOV/bxRnV4IGQyi29R0BpokVbvVsrNBP/OMi8aOuFFYg/KBIr05/nnR7cK8rnDAB/y4H
         Kh1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=uwrlFaWtQE36nKCG0j2hDDOh466IWYTE+Tz+De49hjw=;
        b=MP9I1Z/TkBlSxf5tH8th+Vm4pwCrdckHakfASFqvvK5iLXkBHMOVXYRLyIb5RsGLnA
         68Qan49XQElHZtOzGdWwjiec49aCoKBYvbRS9vOUSBrmoOGVfaaceDwFTIs12gOV5EBn
         rgTclndQWLvU7m0rkEqh05tVDqoCdbwrzg0Glu17fKGiwgOvH6kCAuV0yvmql3dPcq0v
         QMEiwhpKITDn8B7rvuTr5wEICXgQzQpjVaoa2bSO6l6dmlrb1Xk7LPi/BFdR5yCuP60z
         5pZlz2Z1Npmvs3wjioQhCzRHtstpiD/7usaSSUoZ9qU9AbKUaCgwARhwhZiJVBOmWFjl
         zuNA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=QwRkdSlw;
       spf=pass (google.com: domain of vkoul@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=vkoul@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uwrlFaWtQE36nKCG0j2hDDOh466IWYTE+Tz+De49hjw=;
        b=fgxalc+6lml039yu0kivkDlHoMgiFCXuhF6xM29W+A/leiLk24nasSom9NUxtiAbjl
         C0C/CyhBZBtH6v2g2WWDIELgu0rgLX+H6A5BArf8MP/H+xiZljn2u2uyz/NZX9ME6VnV
         +uAck8+owvld1XASaNB3Fp0IfoxxRSutghxlAoXXTcE2u9yxQlPJ/xz2UIsBR7OgKZ2w
         pDpwkpd1QH7RFVHn8kyrsnm67c4WoGdCuwcT64AxqBrR6SN5MRnPDPIaFY/mRWbL8Akc
         4vhHyGe5jmvueEuHVqN8WbLV2kav5zsjg+TiFGcOeeVD2p5TdZvFR621i3SZ36JaBJkw
         4WeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uwrlFaWtQE36nKCG0j2hDDOh466IWYTE+Tz+De49hjw=;
        b=KACTGAGpZoeLm9ZtOQRwnlzKdSF2WU2E6kTGFfEq917L8bFbXz0iUYgnEktgSWPeMl
         5yrNdu26dqWBVGvjx2cqoDHgrXB+f4WkZpacsRcVxOTbB3RyBeCBW7HYH2YwfzR999ba
         LzWc04RvhZkbkIw3Ggtpt9eCD6xDlamoMoPm033R1sT29Q7yh+0YrDfnacq4usuStQn3
         SjkjTqtyJ3Uxzz389eSTSR/JgoDhoqPBygH7U02v/ys+La3pP3mHoSa7I1Pq8dcZxh7L
         LfxYs8esrQMr0YmfRdmubQEbjEPJMJpjwijw3Ph+atnhSwFus/rNMazcQk+2mh/KkGmI
         bWsQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531lbRoMqWgpMMW983b7eNCumK/Oukv72wkAqzObLp5bpH3iCWII
	4gzEhvs5mh9UaYWq6kGJhck=
X-Google-Smtp-Source: ABdhPJzZOxNHmg/MMi4FiVATREb/uLcAe/TLhQTZbGmR2x1Dj1THEcj9pSsRou3tdDL8mU9gSS5DmA==
X-Received: by 2002:a17:90b:f09:: with SMTP id br9mr212152pjb.102.1599497720527;
        Mon, 07 Sep 2020 09:55:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:681:: with SMTP id 123ls4954951pgg.2.gmail; Mon, 07 Sep
 2020 09:55:20 -0700 (PDT)
X-Received: by 2002:a62:1a95:0:b029:13c:1611:66bd with SMTP id a143-20020a621a950000b029013c161166bdmr19658874pfa.8.1599497720063;
        Mon, 07 Sep 2020 09:55:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599497720; cv=none;
        d=google.com; s=arc-20160816;
        b=poEz8Cvqz6uCVdMwNqA1+D/MPzxf0f0JJr5QPwVvx3YpWYOe1glqxiSYES0vvv61/z
         gh680XaAp3R2y9iYfrFmqKEPMrYTfDXAyiLtxvYK/P8X5auIvnBt7ZDAEw3MDNSGGacj
         gSbWhlpg+dIp/XJg7cx+HjlWVOrhq3OMwbvFivzBa2kBOfL2U7C/iYKRC2zF+NOxzWnL
         +Dcw0qVAoUphMS21+uUwd77dyf8265eJetttcUJy8ANdzVjscLuvGm62FEYmLuBFzVfd
         j7wK0uN1swQ+DSvMwivy+mjixahmqwBtXkPlVeUWOn5z+RVXzpiwuNKlY0wDWV9mjkg0
         08UA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=ABsK9yNx7zmGyik1lPQkusJQOoE53B8sNO4MQFN2eN4=;
        b=Ijw1JHR2+OnM6NXXEkLDt44XWwZTxaYlKR6AKo+1tyjNQSsjnUZKHGJOSymP6VFgLP
         Hn6vTRReXhH5A0PrhX1sf/XrJENARWHNaTRn/CCl86jL02f+ndJ2CyZb9dmSDLFw7o6R
         GTmzC6kz545nuEPqVxk/n50poyF/hb8deW7fBRf05udOByQRcnvTRidNt8LC/pS3K6H4
         jtmnAtitrmfZFk8TpnI7OlM+jpvPINlt42b6M6PCVJMckSglfKGXBikislXDDndWm/BA
         IP1/trM95nEQ3JAFvR4m55h3lH8bDINwGd8dlPwoJahwLf18kCZv0hiCWcrhJNtOdZEu
         YFyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=QwRkdSlw;
       spf=pass (google.com: domain of vkoul@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=vkoul@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l2si766483pfd.0.2020.09.07.09.55.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Sep 2020 09:55:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkoul@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (unknown [122.167.151.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 7C3A7208C7;
	Mon,  7 Sep 2020 16:55:18 +0000 (UTC)
Date: Mon, 7 Sep 2020 22:25:11 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Tom Rix <trix@redhat.com>
Cc: yung-chuan.liao@linux.intel.com, pierre-louis.bossart@linux.intel.com,
	sanyog.r.kale@intel.com, natechancellor@gmail.com,
	ndesaulniers@google.com, guennadi.liakhovetski@linux.intel.com,
	kai.vehmanen@linux.intel.com, alsa-devel@alsa-project.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] soundwire: stream: fix an invalid free
Message-ID: <20200907165511.GE2639@vkoul-mobl>
References: <20200905192613.420-1-trix@redhat.com>
 <20200907141402.GC2639@vkoul-mobl>
 <93b672ef-76c9-e87c-4526-897b0af01945@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <93b672ef-76c9-e87c-4526-897b0af01945@redhat.com>
X-Original-Sender: vkoul@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=QwRkdSlw;       spf=pass
 (google.com: domain of vkoul@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=vkoul@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On 07-09-20, 07:25, Tom Rix wrote:
>=20
> On 9/7/20 7:14 AM, Vinod Koul wrote:
> > Hello Tom,
> >
> > On 05-09-20, 12:26, trix@redhat.com wrote:
> >> From: Tom Rix <trix@redhat.com>
> >>
> >> clang static analyzer reports this problem
> >>
> >> stream.c:872:2: warning: Argument to kfree() is a constant
> >>   address (18446744073709551092), which is not memory
> >>   allocated by malloc()
> >>         kfree(stream);
> >>         ^~~~~~~~~~~~~
> >>
> >> In sdw_shutdown_stream() the stream to free is set by
> >> a call to snd_soc_dai_get_sdw_stream().  The problem block
> >> is the check if the call was successful.
> >>
> >> 	if (!sdw_stream) {
> >> 		dev_err(rtd->dev, "no stream found...
> >> 		return;
> >> 	}
> >>
> >> When snd_soc_dai_get_sdw_stream() fails, it does not
> >> always return null, sometimes it returns -ENOTSUPP.
> >>
> >> So also check for error codes.
> >> Fixes: 4550569bd779 ("soundwire: stream: add helper to startup/shutdow=
n streams")
> >> Signed-off-by: Tom Rix <trix@redhat.com>
> >> ---
> >>  drivers/soundwire/stream.c | 2 +-
> >>  1 file changed, 1 insertion(+), 1 deletion(-)
> >>
> >> diff --git a/drivers/soundwire/stream.c b/drivers/soundwire/stream.c
> >> index 6e36deb505b1..950231d593c2 100644
> >> --- a/drivers/soundwire/stream.c
> >> +++ b/drivers/soundwire/stream.c
> >> @@ -1913,7 +1913,7 @@ void sdw_shutdown_stream(void *sdw_substream)
> >> =20
> >>  	sdw_stream =3D snd_soc_dai_get_sdw_stream(dai, substream->stream);
> >> =20
> >> -	if (!sdw_stream) {
> >> +	if (IS_ERR_OR_NULL(sdw_stream)) {
> > Thanks for the patch. Please see commit 3471d2a192ba ("soundwire:
> > stream: fix NULL/IS_ERR confusion") in soundwire-next. This has already
> > been updated to IS_ERR() and Bard has already sent patches for
> > snd_soc_dai_get_sdw_stream() to return proper values.
> >
> > So I you can rerun this on next, you should see this fixed.
>=20
> I am working on linux-next, so I will see Bard's patch when it lands ther=
e.

It should be already there... And I checked, looks like there was no
linux-next for last few days and it should be back tomorrow so should be
there

>=20
> Sorry for not working on soundwire-next, but since i am fixing everywhere=
 linux-next is easiest.=C2=A0

Agree, timing this time around!

--=20
~Vinod

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200907165511.GE2639%40vkoul-mobl.
