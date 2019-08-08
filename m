Return-Path: <clang-built-linux+bncBAABB54EWTVAKGQENDONTKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73e.google.com (mail-qk1-x73e.google.com [IPv6:2607:f8b0:4864:20::73e])
	by mail.lfdr.de (Postfix) with ESMTPS id C21588715D
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Aug 2019 07:19:52 +0200 (CEST)
Received: by mail-qk1-x73e.google.com with SMTP id d203sf6456438qke.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Aug 2019 22:19:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565327992; cv=pass;
        d=google.com; s=arc-20160816;
        b=ynsZW4rmgDrBxeHQ55LguhAA+8GprNk1vnHZcohQkI7x8wl0kBUJ/ublNgxDOUmTkR
         kECX8di6/krmCgsjwFLF8gLTU56xboJw5ad9KtaMUs9S7CDR8nwRBr0HDMGzhyb5C71s
         GQhWK2dXW46/+2QypYvmz8b0/Q2MvP1HMUIi0x/5s0zDHGjiqWjR0wlZGyl9/5HMpEvB
         iu3uGJUB40fKidqsARvkFiAnMv1JpenSsDImbENjD5fHPZGpxop4nsG8TJPbJB1wo40P
         9Ii/amkDLVtcPO8X0Vl/6zfOcVi5Feg3jFVRtBsrFUNii18ahdrf5JTbaBf6p8aSg5RR
         +VwA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=bhJpj+tBQvQEyyUpRM0V7EFldcjBrILQCzWHBid1Ck0=;
        b=p8W8z/SmSFwC9sJzRuOecJNXQqe/k7ctkZ25Tq+2jhNUVgLa79+CR6CKl8QWVSMoJy
         iNY/66kwtLIgp1zg7oVgroH5O7pw1mmAyaiGBj3mFr8a7dmC062sAo8Kw96SjDCRik+k
         gRZrkx346z4dRTUgMHVJpyF7n93DCTjeUKA5jg35++SoEKrRb9zOdJW+61VXtDX435jC
         QYQ+c4HtLPjuha6Oelc16ojYMXwUKDALZBmGoGF4gaJcesjqtKj68rA7apVDhkV+nxh8
         BPYxUiWUhletDqncBMdUxGRymAYkfJBeEi2QWXTFnkgSMGzM/Z2As1AiVggtLERX/h3d
         80AQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@sirena.org.uk header.s=20170815-heliosphere header.b=E69UrCDu;
       spf=pass (google.com: domain of broonie@sirena.co.uk designates 2a01:7e01::f03c:91ff:fed4:a3b6 as permitted sender) smtp.mailfrom=broonie@sirena.co.uk;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bhJpj+tBQvQEyyUpRM0V7EFldcjBrILQCzWHBid1Ck0=;
        b=tciXE4tRtwoKplh78c0iaXBWUtdP3j5N4p6+gzP1PPnM9v0VBb6JEGrPPzP7w4lGeN
         KQdu3hF0ImF/usE2FFeu0XpKZZcJVSIUkTnGVhx/epvymaZQhgpKXEe6vgIWcy5eZ0NX
         7ZHqbpMfyqiGAIZEHfeByXNyJJmGipZYbQ4pUCz0q0usurW4OXqpV+A4Awv9fFXORDeW
         +UfKtOJBgvwVSCxqGHGFqw7MhfAdfUoWDarUJ94YplWMxfbfFYy1ZhcX2R+niGOeJxTN
         RtwzU+BSM9KhU9fzXDPoFM22u0MNkVx/+GCxLbbHcgpFjqTCdp7b7zRasOrZP/HDXpa7
         RRng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bhJpj+tBQvQEyyUpRM0V7EFldcjBrILQCzWHBid1Ck0=;
        b=dFgmqgbbYeVGb8Zzk/1Pp77wqbHxGEW6/z45Spz1VAUHBidvY/UgGEECiQugKlcObs
         htm7ZIJ/yzRcE7rDLOiXYD6hThVyFDckO5nlKYhRmwWwwoshtwQtCQEsqFUCwBKcaMF8
         f4lMKML05LKU48L7dYBhTGCIn2EqHxKBrfhBg/W9mjE3p/ZCDA75CmO4BHnpZnYE15XI
         H8/qZ/ONdZ07jwojMTLpVT628bmqXCldsrLYi2r+aVzbXCAP1PvjDa1bC2WlvsWo4JIz
         llzh1EtkC+HHO6WCyrSDlwMnv1xn3qG6a9rz8/mPhb9r8VAguxeX4pPuH8+y4kx+ezn6
         lqfA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWqDCVblyEG5ULU11OSsJX/4gQZfus6kCP/cbtxAFvGbKxN5Fjm
	T1oQqJZ99IssgVw7JRbdIlk=
X-Google-Smtp-Source: APXvYqwoUO7X1p0VnMO/agvK2QWj2YgoMAQA6PPnSUt6tYyYYEnK6t+qhxMl/v6kteYlBEl/HpPP1A==
X-Received: by 2002:ad4:45b2:: with SMTP id y18mr15860527qvu.224.1565327991695;
        Thu, 08 Aug 2019 22:19:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:d1c1:: with SMTP id k1ls4508126qvh.5.gmail; Thu, 08 Aug
 2019 22:19:51 -0700 (PDT)
X-Received: by 2002:a0c:fb01:: with SMTP id c1mr16149605qvp.122.1565327991580;
        Thu, 08 Aug 2019 22:19:51 -0700 (PDT)
Received: by 2002:ae9:e016:0:0:0:0:0 with SMTP id m22msqkk;
        Thu, 8 Aug 2019 15:17:58 -0700 (PDT)
X-Received: by 2002:adf:aac8:: with SMTP id i8mr20914530wrc.56.1565302678027;
        Thu, 08 Aug 2019 15:17:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565302678; cv=none;
        d=google.com; s=arc-20160816;
        b=aNZC2G0uGQ8Lc2r1buOnkxU7sFuAlonP6yAiqHoIqx+J+JMxNE4JTXjL3wAOYdFN+m
         riAKv7twrvMWazu6WTGe04aW5Mqe8QqUPwGadx+n/Lt4I/SnBW0cW2jrIMHkfioyIPkG
         KedbcNGfKCUOlahynRk5iAe3ggGMXwY958768rlZtGj/jlHS4Xcohyb00efq5hYRU8eU
         9wzM3gTBtPPYYnXBeg9drnl30d7mM5HSOqn45S0vb25aBCuvThCVmODDUn0Xke/KOmTw
         tvBZ0++X48BH9T3hsD+8O/Fu/ZfvX7XF1DKb5GCAx2B5idcuh9/thKfFWIBCUG8voiNc
         dzzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=WA+5wwyO0cQ66cmRNLflj37G+/VcsFFok4xItrxFjec=;
        b=Z+YZAZeNQhgw6oD+wNc9nJ4hX9mSBOsjO1bIi5ZFDIKu6NkN1mH5gI3AXwiLZrMJmk
         tzH1rlhhZTLJPe8eM9ZQCZDgxLiwwlchAgo0FFXyp5b19hkH1PhuCx0ah2mUrkuJwhRG
         pj+59sMwdd9XeTzyr7HngAEaRccFKoz/a4ZTMz/nYNUJf9sdX8wuxkSJ6N7F2kprdo6Z
         mVu7lduXIyqd7XDLqv+e9QC+iIz3K1bjDQRheANPPdX8g5Y3cVegbghz670NZliHVXQA
         yaIuA8muqyHIjuqkCUj7pFH+lFz++YY8bTME1VLH6BWJK3Us0JgfTC3YhjRqEkVy6Vjr
         kzvw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@sirena.org.uk header.s=20170815-heliosphere header.b=E69UrCDu;
       spf=pass (google.com: domain of broonie@sirena.co.uk designates 2a01:7e01::f03c:91ff:fed4:a3b6 as permitted sender) smtp.mailfrom=broonie@sirena.co.uk;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk. [2a01:7e01::f03c:91ff:fed4:a3b6])
        by gmr-mx.google.com with ESMTPS id b15si258915wmg.1.2019.08.08.15.17.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Thu, 08 Aug 2019 15:17:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of broonie@sirena.co.uk designates 2a01:7e01::f03c:91ff:fed4:a3b6 as permitted sender) client-ip=2a01:7e01::f03c:91ff:fed4:a3b6;
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
	by heliosphere.sirena.org.uk with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <broonie@sirena.co.uk>)
	id 1hvqjL-0004D6-OV; Thu, 08 Aug 2019 22:17:55 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
	id D15F72742BDD; Thu,  8 Aug 2019 23:17:54 +0100 (BST)
Date: Thu, 8 Aug 2019 23:17:54 +0100
From: Mark Brown <broonie@kernel.org>
To: Guillaume Tucker <guillaume.tucker@collabora.com>
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>,
	Michal Marek <michal.lkml@markovi.net>,
	Guenter Roeck <linux@roeck-us.net>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com, linux-kbuild@vger.kernel.org,
	kernel@collabora.com
Subject: Re: [PATCH RFC 0/1] kbuild: enable overriding the compiler using the
 environment
Message-ID: <20190808221754.GP3795@sirena.co.uk>
References: <cover.1565297255.git.guillaume.tucker@collabora.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="iq/fWD14IMVFWBCD"
Content-Disposition: inline
In-Reply-To: <cover.1565297255.git.guillaume.tucker@collabora.com>
X-Cookie: I think we're in trouble.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: broonie@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@sirena.org.uk header.s=20170815-heliosphere header.b=E69UrCDu;
       spf=pass (google.com: domain of broonie@sirena.co.uk designates
 2a01:7e01::f03c:91ff:fed4:a3b6 as permitted sender) smtp.mailfrom=broonie@sirena.co.uk;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>


--iq/fWD14IMVFWBCD
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On Thu, Aug 08, 2019 at 11:06:51PM +0200, Guillaume Tucker wrote:

> While this fix seems like a very obvious thing to do, it's equally
> surprising that it hasn't been done before.  This is why I'm sending this
> as an RFC; there may be a very good reason why the compiler variables
> still need to be hard-coded with gcc in the top-level Makefile.

Probably the few people building kernels who didn't have GCC installed
and ran into this just went and installed it when they saw the error.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190808221754.GP3795%40sirena.co.uk.

--iq/fWD14IMVFWBCD
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1Mn5IACgkQJNaLcl1U
h9DY1Af+NqU3cOOFQVhT9tHvETuiNHGUGmHdw+yNH2FL0oD+g/TnIDUwt/LzUXv5
f1ZbtgZjdjQWsKzmhZCrPC5im8DngacGB1SUF3gZP09voM6xJ6GcaD/kpGk3+jDW
Xqlfc7Z2s1t73CAAJ1E8+vh20kRVnzZD326f2XBIP7i72gVjB2NbwMJidkvLEANO
1G7YgkXtxG8C7jfyif+3HIbq65G9sgcHj0WBhCoEn/Vh1kPgYIiGf7E7ebdwlYIW
aoWBYxAiMDLoPq2QxC2Kw6P2tQMdUgOimmrkPbRCX+JhCfKeJw4EySGbcCedt0vL
uVbmpSx17MVaxjRzQEsWapcMATznGA==
=1asF
-----END PGP SIGNATURE-----

--iq/fWD14IMVFWBCD--
