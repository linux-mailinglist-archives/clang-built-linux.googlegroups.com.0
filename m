Return-Path: <clang-built-linux+bncBDQ2L75W5QGBB5OV5OCAMGQEGDJYMQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 7596F37B021
	for <lists+clang-built-linux@lfdr.de>; Tue, 11 May 2021 22:37:10 +0200 (CEST)
Received: by mail-ot1-x33c.google.com with SMTP id f89-20020a9d2c620000b0290280d753a255sf13733593otb.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 May 2021 13:37:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620765429; cv=pass;
        d=google.com; s=arc-20160816;
        b=oGGk4dXCJGti2cptA+X9FzFs2W8xoup9Mp9hycZgS8glBIXg/ONaQt3wKFiSAG8gUB
         2LhzeogCSF4UwFKkMlVqfBGPHOvBLvpyAqWBPl5bOaEUSxYmalEoZUyTDaIeiHFlx8VH
         LUaMHozgDsJuaNcKZPhAJu3ddcUJKrIkj8PqbEsEjaY4FkdO1L8TsOLTc5lsRiIax2OD
         7SIpmgIPPSudO2K2bsMa3zBg5iLFiUye/pGvAcZ7K7egZCjPpqrFscRBshuAcGzzt2TM
         l/C1vfM3k9D1n6/yF9NS2j2JNA/lhetwquoJdw2LN2rsLCi3H8VZL/iGZ2RcoMoZDqtA
         cPWw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=0NH8ly5KKAWMqtFJH2q01lnGLZSVDe3c73yyohLaVnw=;
        b=k6gPiJ25Bfj5NGx5ssFeqBWi398rRJy32CQaJmlhDt+agSk4Jxu7jfHqiktaiYOlTc
         K3XUii0XJBKqjTvBTd5T5DOhHnUTmBcZyrl5qkgS75lhjPmYvv2axX/5JzRMdHZtyHH0
         XEo45P5p0VAODmQ+Z56rM/n5Iq8lwyE+SBIGJYo3CT1mYNWlnsJbgidhy3uQF82ey2j0
         b9ZCTlnIq0J+5YJYpQ7waYG79s/7C0AcPxZdC0Yh/llQVNOkMnyLi6RupYwPkKi8btjz
         y5UciKntJgfWBOhOUCt37p9H0xbwxkpgjHAHqFWugG9yipL1fIzhpja7rxqM26UVBDlj
         63RQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ME1PJuFC;
       spf=pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=broonie@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0NH8ly5KKAWMqtFJH2q01lnGLZSVDe3c73yyohLaVnw=;
        b=C65OlTkcGXb9uBjbo5CaOS8EnrjEOftsjfl4N0SdfMaIU2JQH0lg6RoxdQ/QA3TG9n
         KPnbnYUuLWwzELHaW36ptqpp3aYVFZDau50KN0tm9xEU02jzp9YMtSLzXPFhzmdCa3CV
         MKSlSP7XxpkjHXj035keoXQv7Nw/z+iCuKNigBgzDyvOEMqeS71FW7z/X7tjSAFYos/I
         dTK51S8K8y+vvPs2ln8NGdisP8ZcGbb3tkD61CQ5SDQAxI2bRwYsJduh2Ft/EVUBJjG+
         nr58Vn1i4gpqEU5Gk/z5CaeQr6R2bZEGVMvE21ZlSr/tS1M8LBP5x/FS5Dml0gT5K76E
         l8xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=0NH8ly5KKAWMqtFJH2q01lnGLZSVDe3c73yyohLaVnw=;
        b=KNdaNsn73m8RTmG5CBL3VokLeS4LtXwmwV+PBN1BSFLlPOsPaNIv2gEiHDD9uE/8ii
         nBGD2Ipn0P6hcEHLqp+ttSH6EMAhliuGb6CYpCiXDkxmrqQmuxY/gRcCY3cmxaRC+tVV
         iJfZfBxFTL6BV/4wnkF17XArBFEg3ugrDi/DiBFLWrZ1SrItCpfOAnaL3yFSaWt/Fcwq
         8PpDZ2OFbi5njNNTA4B+SD54vo72vJzws0ANyZ7wj9b5hAbHZ87icxtwAAXnbLQiWSgT
         VpfMjxC+5LYHUMsvqkMUkG4IcofxNSIDiuAMJUdjc6glr62sw4QWckkJEJ2kZOEbsKLj
         7dPw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532mjdhuSmVSZCHLTD2Yv/vrej/t1X0mRYu8kXl9VC4ilNlmjujQ
	eZ7/37Pc5rck/NClFS+bPMo=
X-Google-Smtp-Source: ABdhPJyym+o4V2ovYXMg22kXXe0FWzvRDBB+zZsrEYCLL6PBXkjlKvdAzyd26np3+gdPThiJEeS7wg==
X-Received: by 2002:a05:6830:1df7:: with SMTP id b23mr20068339otj.163.1620765429221;
        Tue, 11 May 2021 13:37:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:c4cb:: with SMTP id u194ls3264598oif.10.gmail; Tue, 11
 May 2021 13:37:08 -0700 (PDT)
X-Received: by 2002:aca:da04:: with SMTP id r4mr4938553oig.123.1620765428887;
        Tue, 11 May 2021 13:37:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620765428; cv=none;
        d=google.com; s=arc-20160816;
        b=hDvFUbzzEVEnADPL37zoGyUdXCRUadwUrldAbq8kEhXboW/+s0Iq+XlwAsqnUE4M3N
         OoFRD0d/cfiHPu1Kh1aZ4h+Rd+uczln5ccwkqG5US5sVKpyqatSEsc6zJoNRPuWpJFId
         PLclWX42vtDwaOL8Lo7tM24wakCgbuw2ygm9wzwNjDzaZYMCfpCrLuRhHWjqQIrwT68b
         1Od1lL0gxNhZYpBPZ/iqKn0rVbqRqSHgYWRNGw2LqbOb/Kc4//PUQ2NkLqpDXkeGwECy
         57F4ZtPqxD6j2zwexfOyodvEtrOyAbLLJ8P+hz9Po2kKp8OBxbu5VoF84O1I/xnVFKfg
         sOZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=/y1LNczX8cc7a5JT53+KpFEJ0FqXNBnUXYDbg0bXdpI=;
        b=cVtmDIlA3eklW023vOgnMv2XEtUpCHVH34X1CvhB0dUacvURqEHxYxDjyzohBFSAt+
         qqDjfjPyH3gQT2tqEpnyYV3ureAnaB93TuGrDFuxS1N+Wplmz7/cPUTdb8HwEN9Cp35I
         /eWIj5JB98wL1cJZgsFka1LVKybfhdSJZjFjRKj+Ykp7sXqpdwn66ppaQIkWeWJZGZ49
         CFwFpTGvdROgiVzW97hjAf/qRSRkS0vGcEQPEtV/aMyA4daVvoDztAx4L53qk759Jmqk
         Qsf4Hpl+j0y4NMmdnxmotg6zWctRt4bj5+bUGDmNYlYbsbfxRNuufGoGkT0aar+9a1sH
         ll0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ME1PJuFC;
       spf=pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=broonie@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 12si834818oin.2.2021.05.11.13.37.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 11 May 2021 13:37:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6FDC361625;
	Tue, 11 May 2021 20:37:07 +0000 (UTC)
Date: Tue, 11 May 2021 21:36:28 +0100
From: Mark Brown <broonie@kernel.org>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Banajit Goswami <bgoswami@codeaurora.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Yang Li <yang.lee@linux.alibaba.com>, alsa-devel@alsa-project.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	kernel test robot <lkp@intel.com>
Subject: Re: [PATCH] Revert "ASoC: q6dsp: q6afe: remove unneeded dead-store
 initialization"
Message-ID: <20210511203628.GQ4496@sirena.org.uk>
References: <20210511190306.2418917-1-nathan@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dUqh8vgUBVXHzm9w"
Content-Disposition: inline
In-Reply-To: <20210511190306.2418917-1-nathan@kernel.org>
X-Cookie: Beam me up, Scotty!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: broonie@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=ME1PJuFC;       spf=pass
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


--dUqh8vgUBVXHzm9w
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On Tue, May 11, 2021 at 12:03:06PM -0700, Nathan Chancellor wrote:
> This reverts commit 5f1b95d08de712327e452d082a50fded435ec884.
> 
> The warnings that commit 5f1b95d08de7 ("ASoC: q6dsp: q6afe: remove
> unneeded dead-store initialization") was trying to fix were already

Please submit patches using subject lines reflecting the style for the
subsystem, this makes it easier for people to identify relevant patches.
Look at what existing commits in the area you're changing are doing and
make sure your subject lines visually resemble what they're doing.
There's no need to resubmit to fix this alone.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210511203628.GQ4496%40sirena.org.uk.

--dUqh8vgUBVXHzm9w
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmCa6ssACgkQJNaLcl1U
h9DIUgf+MIzhdPlCE4pqiMs8Z8GCjZzrob0CFLVObb8Yd/af0k9sJih8nRwUU8ky
SjtaSKw5YKGxmJrxhdwvHJkHbHxEiFOWGx3vU+N+VfQF/V1T8gLPckD7NRHMpCjf
M4MTyx+Ng8hAl1VG5pel0cKGvQjjtnt7e4BZMi5aTCVdHaVii8Lej1d5dRiD1Nye
RGeeZiJO4CyTvgak0gqsWvg0TsNIPmnS4rwl2iLkL6WyU9JPHPrFJucLC6rN/XQt
LhK1MpMwI1j+gCZrfqZBQh73b+xU0GPSMfHxf/R7lyRrlZ978bND/HhNFomLawW+
y8KMd3DO01gob1VebP0hSoXn/++2wQ==
=V9XP
-----END PGP SIGNATURE-----

--dUqh8vgUBVXHzm9w--
