Return-Path: <clang-built-linux+bncBDQ2L75W5QGBB27M4CBQMGQEXUNWWDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3e.google.com (mail-vs1-xe3e.google.com [IPv6:2607:f8b0:4864:20::e3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B9863609C9
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Apr 2021 14:49:48 +0200 (CEST)
Received: by mail-vs1-xe3e.google.com with SMTP id j16-20020a67f7900000b02901e1faf5951esf2698655vso.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Apr 2021 05:49:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618490987; cv=pass;
        d=google.com; s=arc-20160816;
        b=uX+pAPEKZ+efYwYjxLuEp93dXIFxe7NstixqQgsUUh/c6xNz2CrAg4DwPXvj0nPMPE
         w/7gDjNasCxwP7jQ/yjYTy1pFNhLXr3FZtfy3RXsz/n62Itvn2sB6dgNHEmRmJgcR8OB
         I2xt+cmirH1JOPN5TGfmszc+epm8pUW2aES0ThyDcjLh2UIPy0a49l8EKrOkk0Q9PEln
         WuoeWKuyTZ89Kji6CQr9o7r570DskIW4nP1Kqljzitd8vPVydbbzonckDkCutHPzPZN+
         HYAZPQoijhSIhpCxhr+mHdPhfpCvceSlSRexoaMFJRTg6dLGskRm6h5wV9TyWEIE2egr
         MX4A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=t/0XdLBY/OodbrqsRHPxCflFDVbUd6QS4a4ChHZnSpQ=;
        b=1KdLHx4ndKOqExeE9G1gVa45dI7aNzLTDyblPRnV0NhW0v3ak+f1fQn3U2/XdliPCk
         x2lSYO4BA0bWpR5EUttXnvlaPxGGgLne4Uy/3s2LfHF5jAcCcRDevSodiMmWD3f1sVjI
         GGpr/oXToKc5uVNia3yYcXGoulj4n15IIYCeLq7fb1cOn2qSIsk9Z6mWS00eJJwBgLhw
         mfbkx23LGM2rp8ylqmBzoBeLTftfl/1h5JIlv5gVCx6Wry7nvD9/ljf4iL2JESLRRwMW
         TaZFOmXL8AVA+XZ70ulLDEwYmJ+tqhj9jKCq2XRFcxdymeqi80SkXq1vvAYYnp3zvdAT
         j/Yg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=m9t9BtGx;
       spf=pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=broonie@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=t/0XdLBY/OodbrqsRHPxCflFDVbUd6QS4a4ChHZnSpQ=;
        b=XLJ5LHHtHlXXhooi1nRBM5ewCgpxuqyKGoybAVoQG/oNnsdbpmeaTCDaVLttOHv8AC
         MDxu/Y0JA0haurnCUeFYbT0nrA0ydCcwi3/AYGyaGTcANq2QeU7QB1Mtw5/dN/bhXax2
         Y+DFiuF/amdmVQmSLTrYAZqM/xDb17qyuOMSit0qlHKOPmmc5swcOH4y6O7kf7PEhxrc
         xN7rmA4sP1flvtaBm/MDI02fJc+jV/P6FIUV0xf7pYrBYfrx1SEWVgQUl2WREGFurf4D
         /w27w+Ng0Inu7atD+3g7xfScQuZvzAN6DZYwdOGyBIBRicPgeO/BWnbOonRdpP58TZ90
         3bWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=t/0XdLBY/OodbrqsRHPxCflFDVbUd6QS4a4ChHZnSpQ=;
        b=LtIgdWkHcBZyP27um7W6hCrtgUZoDiID2M2yH4S+Gd/ZU6+ghQ4uX1zgmNRACbzBuR
         X3frr1DVhOjsfTEFaakVirmZVwVLV7u38T81v/2QHn8R7iMcktHc2f5d2nV2aIisviTu
         j6qS5JojvRNSwfJwr6i30YxGkqABBWhq061Fk6xf97dpb14hvUgIKF7IWLma2tF8hz6Z
         /BBLcq1kfC/prqZEBtvI8s+kxYmQrJM2cTwDmUraKEFKN8MBUrQG0DQoUaFNOu4xWwlc
         1EJJ5+9djdI+b8JLv6++Z7smf6eE1FDaODGwlJp9weSemWtltoso9znc9wyYmBZxMlGc
         7EkA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532JOsJqN/3XokuaPgfBY6bRkrP79jJweRqmsrfg/A/U0mR0nI4u
	+wBwOUCZMVGR7geJR29yBHw=
X-Google-Smtp-Source: ABdhPJx1Bj78aAZ7SgIiSBX2/mno9dL89pC4spGFfGfDGuhnUpXQRqJf1K7iYQa75IPcETifqTkGBQ==
X-Received: by 2002:a67:386:: with SMTP id 128mr1991138vsd.8.1618490987353;
        Thu, 15 Apr 2021 05:49:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:3346:: with SMTP id z67ls685311vsz.7.gmail; Thu, 15 Apr
 2021 05:49:46 -0700 (PDT)
X-Received: by 2002:a67:ee0d:: with SMTP id f13mr1793887vsp.28.1618490986883;
        Thu, 15 Apr 2021 05:49:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618490986; cv=none;
        d=google.com; s=arc-20160816;
        b=x3XaKZ4cHeslww1skGMAOovE01eIL0u1H72zcJbvqomeZ2I+TdPVbOWJgjkFSXT4Zt
         87QXp7VPxk39/gHmD/jgpLV92IJVHTr/RP2xQPvflLvEYllKCdOI4VjKg3ci88jr0MSE
         xjTb9I7cZMJb61Ud/Z4c72XOLjIf/Hz0WO+sKfi4oW/chQETQogtvfYGAd9z3s5lPBW5
         RnnGmSNoLd2gaTO9HvcrQW9SWnGuQre25AVYuAwU1jYYCpGwP5g/dXv16P0F7e4CZa7B
         uMW6k8QyP35MvLVBgTBWdD+/1Wdom8un6BLKq9OiYt4qXQT7ByzE0Pxuc1WsY7DJmfu3
         /eQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=KgfVgylO1BuXeJrN8LfQnZSohTuO1bw6L1cdIL0mBvo=;
        b=VZVyYtZy26xtnLFOLijoyS5R2VjD59QZphPtesOSH1FP6FeN5trhRvCb/ht2abFThX
         6YiD8e6Y1VcBmbI+anOem7UAtdVPM79i71VsWxw/XwWS86BVvdSO22u+otaMhu7JH5cW
         nUf96DlnsStERVTjgbyFsCbPof7eovM8hVcMG8nEVU1NuM7L0UTggDoMB9X33DKDbVZv
         aP351cd9H7Km8bbzSv7dnKJ7D8nVJxWM9t8706L0ryEvrUjo4jVfLpDyyoncDV80ByZf
         gmrMiCgaB3MP8NtfuEoSUGf2MTmIBfi5xiYESyf7a4OBVsGZYByALowouu7X/yyQjFye
         UZ6A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=m9t9BtGx;
       spf=pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=broonie@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h7si217572uad.1.2021.04.15.05.49.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Apr 2021 05:49:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 169CD6137D;
	Thu, 15 Apr 2021 12:49:44 +0000 (UTC)
Date: Thu, 15 Apr 2021 13:49:22 +0100
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [arm64:for-next/misc 13/14] ld.lld: error: undefined symbol:
 sve_get_vl
Message-ID: <20210415124922.GD5514@sirena.org.uk>
References: <202104150734.PulXU4BV-lkp@intel.com>
 <20210415124121.GC1015@arm.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hoZxPH4CaxYzWscb"
Content-Disposition: inline
In-Reply-To: <20210415124121.GC1015@arm.com>
X-Cookie: VMS must die!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: broonie@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=m9t9BtGx;       spf=pass
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


--hoZxPH4CaxYzWscb
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On Thu, Apr 15, 2021 at 01:41:22PM +0100, Catalin Marinas wrote:

> Thanks for the report. That indeed triggers if CONFIG_ARM64_SVE is
> disabled. Proposed fix:

Yes, I sent a patch that looks very similar earlier today.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210415124922.GD5514%40sirena.org.uk.

--hoZxPH4CaxYzWscb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmB4NlEACgkQJNaLcl1U
h9D+TwgAgFPM5pw16SQ5k8qnemdwIztQ86KzA0wxZBR517OroObIj74kr7cT/LbN
VDkglaEoH+ByMDVUYQVMuFzpNMdZUXzTNe3B/rdC9rUxlyz43YIRWxLDAp2wJa8x
4/LD03BS/AEJ+WZq8oGv4CJKVHcD650AZZ0bWnOLpP+Z+BKo+/T216QDtBiD0yBN
mg1rVu+AtzIicCpIbZ7WiGmBT/2U2fKa0RVOOhmxuyWkQ7OKrRxbqS/powFKRsQX
9BTKFP/aLVULM9H7jXjhuL/NEVWzrl2WnG5oYYMpmQZvrQlnOqFvYLINbMS5yGnF
GyChiPXEZhvf3vYdyu4kFkLHSOQfdA==
=n3J0
-----END PGP SIGNATURE-----

--hoZxPH4CaxYzWscb--
