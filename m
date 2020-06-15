Return-Path: <clang-built-linux+bncBDQ2L75W5QGBBRGCTX3QKGQEMI4THPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id DB9F71F95A8
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jun 2020 13:53:41 +0200 (CEST)
Received: by mail-pl1-x637.google.com with SMTP id x8sf11153040pll.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jun 2020 04:53:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592222020; cv=pass;
        d=google.com; s=arc-20160816;
        b=yPkRvr5hln6g0lzT5FEW13FzTOI7cG5/OZXxDfJoA+Pzu40tSXGmd3emS9U4ey5fPL
         CFsvbUmi0w1n2ifXSI+jtfBToyKJN1fz/NnsMnw+xEpaSGNtDkBj/khTxM0Xie2zJLSs
         N6cdsO0rG+4P1kRQgRgJIJpHUU4J/DcDTMO/ULbkL6ClDNBbXLI8n7sCM37lcPmfvkNI
         jSup/4flQWUghMDrhmihFayk88pBm2Otq4UKD+Z4BxsdCtyARgWQBbtRwi9kqpQ0FZhf
         ov73xg5uigdOOC741Wumfaxy22ZQHrxxQm07I9Ln4YvgBAZuoRCxnP3Th0EuikBanyF1
         2heQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=irvgjcBYH16yynVePqSVxqaaWvdI2IYKs2WX1zDny0c=;
        b=UHOvX7nomCwyGHpwbAPBNcHY3u3d+Alqme1wiNgvU+3uON9eN5tylC5HrzoXnII1vR
         dG1NK+GyT7KLuEyPcICuqOz1B7GzTbge+exbulfQzUMqOJwUUQk7o+eDa+/Tp5UhfK0e
         M5/Q7F/KViB4s42iC3mLikNGGb3pItxf6KirCVPusgNllHMYRe5sBGHr9DFZ2TGMH4af
         TFIxez4gVAED5PoYU5Fbe575Syg44vjF6Xj4nmqxlH5BKWieYNkuft08iMtamYjOT5JU
         ezTQLKYuTONSbQ5JzAUQd5UcpodGe2cjhqBQG5u6tf98K8tCrk/GbcLx8/5sbt6uxOB0
         m2Jw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=PfyejClY;
       spf=pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=broonie@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=irvgjcBYH16yynVePqSVxqaaWvdI2IYKs2WX1zDny0c=;
        b=WkyicxSuQnvorvIoz+OePmRqtnETzc8znRCq6LHT56qZ3vJEcUlZTxbq9GCWh7m7Kb
         iMi78UfTxvI2ONz9o+IvvnstWo5tmsUkzGV/4uA25d0mAWcdvjPqmpH5YjhJj8Z2lxvf
         tC8/86ZIIHS6WY/vqpRJthr3WVnW1bbVwsPtr5YXK1hvQdIHrHy0120P3hn0zaOLLyNi
         yX9kDAEJuuYH4c9uz7QKFdQwdkj9J8Ul+R5jDRRlYahZzpWrlpOEHwMHh6TL5p5FjdQA
         2RFtOrpnaTV2G1vXRVBXIOZzf26iwiDxc0TfRdO0toc0gapa5tZJ4u9yelZDzKAQSKf+
         w3Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=irvgjcBYH16yynVePqSVxqaaWvdI2IYKs2WX1zDny0c=;
        b=T8r3z4BXrtLE141nDUqISG+AqIo3LjeUfFs5NR5v31uuc+Hw7Nk0ASUrLPC1hGBVN2
         1HobdX0zmxfvMcX8OV4ebybBNRZI5quj5Ha7/bTemEDGyubZRbbat3aODzWcMLnKls9z
         yOTdL7RMf4BZvJf8FBhu4l37AFjBjSDesRWRJJRltD3lKRkO6LIkccRA01tsu44V3KWx
         5H/DiaPLnZFGwTIC9Yt/tAEB74Em8bj9Zl423GIahSS35CX4Ho6LryGUFZlGVk7Hl6Yc
         M1DbjW0xkQbi86gcF8lEukrB7Hbzkb73/1kBBqrHhC6OSblta29WaA1v4a2baRqiMuo+
         oleA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532TMx8y22zrF5+Ewz7JXXelh+qoiIRe3RZJg2XdBQyQxp4jShxJ
	4uLr/xHmikqdoTT3PcNgYhM=
X-Google-Smtp-Source: ABdhPJx1TMJkvVmQ4Itbk/ePz/f49JpKtmWB2ulnkkbrovSbqtC0g4/Wt+Ky6jUAX/HQLwxN9A2czQ==
X-Received: by 2002:a62:6385:: with SMTP id x127mr22472157pfb.49.1592222020548;
        Mon, 15 Jun 2020 04:53:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:185e:: with SMTP id 30ls3369837pgy.9.gmail; Mon, 15 Jun
 2020 04:53:40 -0700 (PDT)
X-Received: by 2002:a65:4149:: with SMTP id x9mr3391459pgp.424.1592222020216;
        Mon, 15 Jun 2020 04:53:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592222020; cv=none;
        d=google.com; s=arc-20160816;
        b=tgRLCMhrX4FiII9KqU0V4uHlGWhgfHtyfM3HQ1FUHNstpSIkTgEsMHh4RIoh2ISKS4
         tGB1neYqkJ12m/CAt5sXqzHknmlQsoi1gIAh12ORhwPt3938OxbEBOh0NYRJDsvkXJxt
         BXBZU2ctlkRJ+kd8gRBnkkEVCuH560nu+4xxkfo8AX2Jtj1cadjw/DfEPBZEnngXjBLy
         UwYpil/P01phjW2XguagP2hCEKf0l2D1xqba7H8BI3XXoWOHKmR2olbYl4FVkF6kur0D
         qnEwDYxK/kRQVWG5xQyhepuiim7qj4Q1OYV4BTP7d3iocCRcAYNYfMNkW4FVAVy2MK42
         Lwbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=ieGEsEsiBhJRxihSSH10q2VokuuDHK2dvKrfzayoFSA=;
        b=ZJoxbDRxzYVcH2JVF//30d1UPLOmHx+YK8qP+28Xc8Y7N4r7s9P16JS+GGliBfCegJ
         AWlcT6he0txlVVmCH1J4ggpPe5RLdU3ORfqgRUtUZ/NgvsxrZaEaoIrV8NkSWZcrkmez
         zU17gajt+wTB+XIlIBdQbXfu4HIDEgyan40/59Os4RxjREyGjNQpYGPJOZu9VVgoP2vh
         mHv9xgYPIVi60jqC7oSf/SJFskYE/pEW0E7blK4jNlerfEnsD11Y16n0nqsU1jr8DSMf
         3F5oNnFLykqYyg1jYReqteX9qKRdJFCEVcfPg0PTnNnNCXrcSY0D923hu9/n1Hd8eBzV
         cM1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=PfyejClY;
       spf=pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=broonie@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id kb2si721627pjb.1.2020.06.15.04.53.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Jun 2020 04:53:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6743720707;
	Mon, 15 Jun 2020 11:53:39 +0000 (UTC)
Date: Mon, 15 Jun 2020 12:53:37 +0100
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>
Cc: ndesaulniers@google.com, clang-built-linux@googlegroups.com,
	linux-arm-kernel@lists.infradead.org, mark.rutland@arm.com,
	catalin.marinas@arm.com, android-kvm@google.com,
	daniel.kiss@arm.com
Subject: Re: Clang miscompiling arm64 kernel with BTI and PAC?
Message-ID: <20200615115337.GG4447@sirena.org.uk>
References: <20200615105524.GA2694@willie-the-truck>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="oOB74oR0WcNeq9Zb"
Content-Disposition: inline
In-Reply-To: <20200615105524.GA2694@willie-the-truck>
X-Cookie: Offer may end without notice.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: broonie@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=PfyejClY;       spf=pass
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


--oOB74oR0WcNeq9Zb
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On Mon, Jun 15, 2020 at 11:55:24AM +0100, Will Deacon wrote:

> Here, the switch statement has been replaced by a jump table which we *tail
> call* into. The register dump shows we're going to 0xffffd68929392e14:

> ffff800010032e14:       d503233f        paciasp
> ffff800010032e18:       a9bf7bfd        stp     x29, x30, [sp, #-16]!
> ffff800010032e1c:       910003fd        mov     x29, sp
> ffff800010032e20:       aa0803e0        mov     x0, x8
> ffff800010032e24:       940017c0        bl      ffff800010038d24 <kvm_vm_ioctl_check_extension>
> ffff800010032e28:       93407c00        sxtw    x0, w0
> ffff800010032e2c:       a8c17bfd        ldp     x29, x30, [sp], #16
> ffff800010032e30:       d50323bf        autiasp
> ffff800010032e34:       d65f03c0        ret

> The problem is that the paciasp instruction is not BTYPE-compatible with BR;
> it expects to be called with a branch-and-link, and so we panic. I think you
> need to emit a 'bti j' here prior to the paciasp.

I checked with our internal teams and they actually ran into this
recently with some other code, the patch:

   https://reviews.llvm.org/D81746

([AArch64] Fix BTI instruction emission) should fix this, it's been
reviewed so should be merged shortly.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200615115337.GG4447%40sirena.org.uk.

--oOB74oR0WcNeq9Zb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7nYUAACgkQJNaLcl1U
h9DyLQf7Bhsfl2G+2q4v0J8E4KX19EIP7PbfT//jfywg/LCih22CzPQ4ow90jBEa
a/9+8AtECexLWj1QCwOp/Zoik27A/YB+bNtRMOLYk12G4YthHncarh/TqcNJM9h3
HUD/m7BSfcxOCYiKBk3zR3SwWkNMl+gsbvwC1cPEgeE9v/VlGZKDNZrj6/FZCCvp
MrkD7kOuWoYTsYNQaVkQwxFGU4eHsXSTyy62fxtpJEptN4j7C61YWK//N/Bysnde
6thlTzSFrWcqQkf1KkIhuwna6FP3nXHcu4VMJKbqy97qmaqBo02BP+8qrxmU/JtG
G8uJ/qZAsHPvBKF84FJ8wkZewcDGLw==
=3A9l
-----END PGP SIGNATURE-----

--oOB74oR0WcNeq9Zb--
