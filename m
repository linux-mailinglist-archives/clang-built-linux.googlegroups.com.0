Return-Path: <clang-built-linux+bncBDQ2L75W5QGBBHNX2OBAMGQEJWBWH4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id A271134230F
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Mar 2021 18:13:02 +0100 (CET)
Received: by mail-qv1-xf40.google.com with SMTP id l7sf13022706qvz.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Mar 2021 10:13:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616173981; cv=pass;
        d=google.com; s=arc-20160816;
        b=0oFg75Yy7SxLFA+UPt8Ki7ciJVjBtHuDM/DB+LDouGKyzKaRhoiJxvKtDm+THDubME
         904FSNw5IxLUub94rXwaST4D7d/lcZiznoR4WjC47XN/bc/OkulgOCi2cOoHBJoeuje3
         fGnyJIvP+T3Ruayso5ea32i16UiwDbE5QMQFRIK+qB0BOUeP4WrGa6WI0tSc17Jes3d4
         u3I01CR/OvM+ZDl/OU6FniTlj1yfc705y2XGyz9VzyMIEfs2QUheuiVFXV+HlaOXZH0/
         3Em7+/MFp/iKoH39daB2JInoPSKU82dvdqopfmfzcAk3Yk4HOLWoKDcTTytJHj26xZ3V
         V8lw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=5TCNIRW7oQpaBPTcUHPdq89aY7NLOkp4nlnmuNDYz5U=;
        b=GSQBKYyugK3U4eNVeBZTwxeB7AdKJDoB+cxhtkMmltR+KaZ3ot09EVX1K9QkccZbRt
         xlwzQlYvhsugdKvbusRslZiH17/sPpuHHk7CDy2xUcnPjCUS6cA2rjTh4iOwtZyjfyLs
         5PS6NWVqwLUDuam51punm18/TgNtv8QDA+IPBJEI6nzgwxctiN8BTrn5KioqCYEfYmA1
         /ebh3lTlTOnspw13HB9B/QxpR5LUm+rLV/z2RbdqVpnz0xYUNRpDzRNoVKHyXAPWwHOY
         duqy4X7vX2HgPsH6JjGC/wr2QOrzt+p5deefj3JB1e7Dc+JlYcFmW1Y4iBjcHalGoMzm
         M+2A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="CQuP/rkN";
       spf=pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=broonie@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5TCNIRW7oQpaBPTcUHPdq89aY7NLOkp4nlnmuNDYz5U=;
        b=GqV9g511ybGqbPe0+p8b+3IsoYezTYaaR1RZ+WSGQaGIjh8nw8Hgeiwr+l/fRH17aZ
         IMmEmJkHoo/v1cq5b0wO0AvjrlMykpelgw/143JFi+keC4Av4dLNO4WUfgpeUFjvhkLL
         mlKJupsWq98iWjb3b3Fsq5XI8/3c8x9RR0u0sQJGeAxLivFvMOOziGy8ccxLIWmAyRPy
         0aWALSeX9nEe82T3iAbOLLRPJ/EGcbsZlLKs4MGdgXoL5TkKPXi2INAllW+Sx9TAsKyx
         f0E8B101orLuoxDW2+8iVg5+367dipVPRpWuoMsyq0VAHL2JPB2dsEelDd2/6ioAJ3Bc
         O48g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=5TCNIRW7oQpaBPTcUHPdq89aY7NLOkp4nlnmuNDYz5U=;
        b=XjxMRYnyUVR1qjd0G4pVLVAomUG/fkfravUbkgkYPROzuTbkeF41C4/U7dPaqkEu4T
         Eg7vtp5eJzfdzWy80VVga4/wOUjDuw9nlbsFJ6M92Bx4uaUw/VHZdLQheDNsX6bKnVHi
         YYRAvWt7KTsJ9U8dB1ovRgQnHlQjYYaonXCW6pghJ4i95ue1x4yrvHRHzL/Q1J03hVqg
         uTzhOos4e0W0pZaYg7u6kODiSM9p49dpxCMGjN078gNO+JxLg+2GptpYUsX67L/2cGVw
         OgHHKPEV6+OcV6XG4GpFaiEphepU1a+6ZSHU95dBPrN15KK4S1n9swrKsgSXeoG60AmO
         NpbQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532irkn+1VgnljW0ds73BHUXpKZW6ZAQagMx1VHY/35i8uK4xdLf
	ZutUYF5lydqSpSH50utNBJg=
X-Google-Smtp-Source: ABdhPJyFL6o9+Gio45ilGEDkgusV1rjDKh+S8rz+AyEfzDxlL6ODevPK86eq0o06AC0OL+iCQlMB9A==
X-Received: by 2002:a0c:e385:: with SMTP id a5mr10382232qvl.12.1616173981676;
        Fri, 19 Mar 2021 10:13:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:5501:: with SMTP id az1ls1622353qvb.11.gmail; Fri, 19
 Mar 2021 10:13:01 -0700 (PDT)
X-Received: by 2002:ad4:5c49:: with SMTP id a9mr10084695qva.43.1616173981325;
        Fri, 19 Mar 2021 10:13:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616173981; cv=none;
        d=google.com; s=arc-20160816;
        b=v30fXUjX+J3nM+ksEFPjKyTAliXsFgQsc8EKNiWVIDYFSh5NAqITxW7urhBAUM0Xqh
         nDchR/ns6hsuN0Cr7mP0Oq0wXcMgKY4tXnvj7dV533acHA+YfCgCtRY5iEdbqRcZfxL9
         BEsPPPhzU5Y0dNYlDWqhQqPYlrhA+wJ1hdVporC6TCPcmIjX2e7KI98pHGtyMou+TJs7
         cG8qsxm0GH79z950iosOwgwvYc7bPP74F3tpSXDMrXvXIac4MlbYZBgxN4NTbxVjUSeQ
         SJUhQSTerlWIYkIRvltzlCnxMXjWTh/XpawMGokdPF+jmUmm46/n1flMpq+yg3trVwN4
         dpAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=uDhMMbrq9my6cPt0LQ0nvw3mts2ZTsfmJd5fIsqnNUg=;
        b=iyjGIgyOSm2Q2AMNxXxFDRmURxYjytmygL3QVEeEAvJYKArh+Qt5cR2YUY5kOk5GZc
         yOtCjEvZdYJBbraQMwbwTOtysTWv77YaUpjWJqe0K+YXDnAA3Zj1X8+49n8kuE52s3yt
         vlJiVjg6v8j40VYDOUgtU9Dj/6I47GWvexmYFIZJ5D58yTowbVwQxhYkX+UIQjXGfeQ/
         oNoUTBlLHRbBctHKXhizEHqpIdzS7I72k+lIkiT/qT/uQkJA73WhCkEkUwagz+yyYY/K
         6AbLAtKvK2rKBdFTH6tVhs5Lan8wR7dnSegcG2tsHqYCTE1iMX4JZt0qufqx4FowRcOy
         bd7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="CQuP/rkN";
       spf=pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=broonie@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r26si17949qtf.3.2021.03.19.10.13.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Mar 2021 10:13:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id B09B36191E;
	Fri, 19 Mar 2021 17:12:59 +0000 (UTC)
Date: Fri, 19 Mar 2021 17:12:56 +0000
From: Mark Brown <broonie@kernel.org>
To: Andre Przywara <andre.przywara@arm.com>
Cc: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Shuah Khan <shuah@kernel.org>,
	Amit Daniel Kachhap <amit.kachhap@arm.com>,
	Vincenzo Frascino <vincenzo.frascino@arm.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-kselftest@vger.kernel.org,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH 00/11] kselftest/arm64: mte: Fix feature detection and
 compilation
Message-ID: <20210319171256.GJ5619@sirena.org.uk>
References: <20210319165334.29213-1-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="LQAwcd5tHl0Qlnzi"
Content-Disposition: inline
In-Reply-To: <20210319165334.29213-1-andre.przywara@arm.com>
X-Cookie: No purchase necessary.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: broonie@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="CQuP/rkN";       spf=pass
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


--LQAwcd5tHl0Qlnzi
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On Fri, Mar 19, 2021 at 04:53:23PM +0000, Andre Przywara wrote:
> When trying to run the arm64 MTE (Memory Tagging Extension) selftests
> on a model with the new FEAT_MTE3 capability, the MTE feature detection
> failed, because it was overzealously checking for one exact feature
> version only (0b0010). Trying to fix that (patch 06/11) led me into the
> rabbit hole of userland tool compilation, which triggered patches

Reviewed-by: Mark Brown <broone@kernel.org>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210319171256.GJ5619%40sirena.org.uk.

--LQAwcd5tHl0Qlnzi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEyBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmBU25cACgkQJNaLcl1U
h9CEdwf3YoRRl30t3x5bn0WGArLP2mi6Ooy91v0UBGn8SFscluaqqoT/iW0j+fo9
XgYlbrtm3Ebom03v+noCm5DxfhoKHv6WY2Zia1esAcx6DR6Jug+A2L0bThyv0F/Q
KwSMs/u8hoonRB3D/TObp1bQBolcrQpxpMq1uuAqLp4Ri25OgEFhpeCs6r1ZLRrh
SGGcQ2/5At6EBSOY1QOD4S9x9HIA9bzwy4x+67913KMMlmG81QXDSg6H1z8QhqgJ
3fwkumsCXNHlWxUNSnekBWMfgXaqiCHj3rr+HnHf98i8r4tpwiZiCb1PhzBoVv/x
6ALw7xjE/RT9etfrnZN2/1krg+TO
=jCOF
-----END PGP SIGNATURE-----

--LQAwcd5tHl0Qlnzi--
