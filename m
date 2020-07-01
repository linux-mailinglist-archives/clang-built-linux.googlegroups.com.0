Return-Path: <clang-built-linux+bncBDQ2L75W5QGBB67I6P3QKGQEF4AJIXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 27E2621147F
	for <lists+clang-built-linux@lfdr.de>; Wed,  1 Jul 2020 22:39:25 +0200 (CEST)
Received: by mail-pl1-x640.google.com with SMTP id p14sf6343749plq.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 01 Jul 2020 13:39:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593635963; cv=pass;
        d=google.com; s=arc-20160816;
        b=Cts2Avt2KGXjPWRaBi14HhUI+gOojSap3gOotitfLODAfGmhy3kw20wSoZPj8iWrYp
         GUoiLEp2h86gSz//6ptIWiRX3FrmXk1sJhnJrDcRVBC9AEzZaBG74076IfUKWPGLlx+Q
         zJ3sRIjZjz6vPq1MVAolK7DMBpJZTA+RXEVmV4rwX3S4uf4VIG8GII4ObBExYltxDG73
         jjQXJYyun1CaSOOO+wdavYUHGl7V+AegKZ0ikfYc2ZKatA6mWXA5rFmrx7HnkMEo8t2W
         sTMokg0hRNcWnWHTkMlOodMxn7azX7P9djdmDcZzeYL3XcyTVrANgQ7VE0+aW+QC9N59
         VO4g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=CiIfnO8fbDjm5r3Hf4jWtKzKiHuhUCvH7xOfDh0E0bQ=;
        b=fSJclip6jsFi8aPetXCcTTSeVXSDzWQv0z9ss9N+6UYo3XLSMlSsIkhdqSLJ7vTWr2
         NUUvXR5fBUv2UoXO1/H8sjMHQNP2zjhDFJptoDtECz7nClc2aCcukGYdHmCsFuS8feaX
         CCZj5UZGZ8XCa/Lq0NUW34asNLR3BAdGhuWlTGVpTwvSCnJ5arUEQUCqKzXTN1ccT7wg
         t/4NcLM8WHXfn6/pGHiis1k3LY3cSsIh5+k2I9NTbErfiDoOIZV4p5qtyGWVnOU31U4T
         fbKDCehzGiDx9VGADyddGnsV/hbz8G0RMzPtSOh0fgVPJCvgzORxIviehYJMKyGbkl3f
         Ty1A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=vn7yonK6;
       spf=pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=broonie@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CiIfnO8fbDjm5r3Hf4jWtKzKiHuhUCvH7xOfDh0E0bQ=;
        b=FiMJPr2af/Q9qj/yAao4mp8Z5p/yiWKhClEmKYM2XDJ4JQU0Fn2UpwLj1ELbNjNODH
         ns6ENt7NQgrR1ypgt+XYHSSM9h/jktcRrnK8e3GMq1GijhRuVIEsMPx4Xcm64PHilOA8
         +yiNBeOmJgvbG6259EZHAfAcBltgHRol9dOmz+jGbFOVlhLPfYTR80g7C6O/2szmBMp7
         a61mhAXnDaU+qaFKeA1LInS/rqTd1jG0gOvq6AzCWGfLDR4JSzBYCnFnUr78NrHSpm2e
         WLMIYqiC1sfet47Kj0ht3GAwcH83C6lyuVTREFsFU58AgCPVlUngmRI7XUuTnJqPvpjl
         MCng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=CiIfnO8fbDjm5r3Hf4jWtKzKiHuhUCvH7xOfDh0E0bQ=;
        b=qkcYNCtdka4jRe+l+jcsgw2TkucJCzI/rR75noWBHoqC0jhPA4kuIY0dOhSlp/7T41
         OGXyWbtfXxEI4zQoYjkAVcS6fcLkcDObTXmn2qoU7v74MpBio3E/85H7x6/0O4RlyfMf
         w9ARMd6zxjalTPSQ6TeHaPqPVB8v5MoZIzH77BSpBBAN4rtyu14AcF+6yQ0hVmI29/R2
         hM+JF0/oFhVq+uDXQ5DAKv9MxYzHv+24+EEQfAKHYAl+R2Ju/Io+PfNt/9JG7X0S26hr
         CJdF71ZQamr4FB3pz8hG1AK0GyOWPXMtRhIhGZdbcu5ef/l2upKBztgyADMQtZFA/lXf
         SDkw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531YB8CjK2hFuY0T/ctlgoZ/5shHtjeUIj+LipOZAP0GWJ3C/hyh
	nY9ddqdANt2au1KglWbaOhc=
X-Google-Smtp-Source: ABdhPJyuBXM4613vMary23OJoL/Uwf2ri2EiDikNdIqj5geCPtqDRTufaagKFqaJo726m5tsyqtBrQ==
X-Received: by 2002:a17:90b:234c:: with SMTP id ms12mr157439pjb.88.1593635963437;
        Wed, 01 Jul 2020 13:39:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:38d:: with SMTP id 135ls1207212pgd.0.gmail; Wed, 01 Jul
 2020 13:39:23 -0700 (PDT)
X-Received: by 2002:a62:6dc3:: with SMTP id i186mr2060728pfc.104.1593635963079;
        Wed, 01 Jul 2020 13:39:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593635963; cv=none;
        d=google.com; s=arc-20160816;
        b=ZbQPb2gW3yVaiYj8QvkM2fOCjBHZZaS+0AK18yRQyw3VZ6IUsoy7xzGkikD1feI3a5
         qdU8O3+4oLMMtGV2Jf/OIFLOP0vrB0NcliOGuzJaAKzNEEaZb32zOCDr/q3uGIOaN39K
         /dWX+RaelFPmZQhTmX6Qlrm34qyFoJACcuwRiqwEpVzOFk58tUgKVGH3RgoV4G6HchO8
         UdsCshX3iGFamTFCaktnhXItGpMoh2OZ+Px22/Oh8Ra7RJMQEoUMAO2w2cznOUtxibNE
         SoZoRfglFsRbxrbuoEhIvX0qDf2bcP2QACGi3bHdx4LssajA8tfCfFdLr3VJovM67JLq
         1VCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Mv90pdTDmmCVPBQ+ilKuLGK6rDI94hGPVOU6z7qxgNo=;
        b=YBm8Q6gWSTiZ/CqwY2F/uyGwNWO2aI9rah8yv4VbC3m/v1smz0JBzjKgcTB6SzzdS7
         OrmQDOjuTusV3sSKvv4vUzOtGQ2AmjUzITYBpV7GsC+WezHMPoqLfqQZ8+a7jA0alDOQ
         3A6cm4chsmHvEFhou/CIkDuCLDUzpj7aNYAVmDlXtVTn3czcrnCboSDmMau7F1FDx3R6
         2E/q+wwQ0lJKOtwJNxEI4gxyP+fl008dswC1qdwlMM5q5X/Nhpds6lvkY6ZbIYz90qUJ
         qU2hLMp8jOZciHI970gKL+feHGdhCyZYpisWbriodHMFoq3N1QCEfN9HoeWr8nzr3Np1
         GIwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=vn7yonK6;
       spf=pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=broonie@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y197si163436pfc.4.2020.07.01.13.39.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Jul 2020 13:39:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 395DA20760;
	Wed,  1 Jul 2020 20:39:22 +0000 (UTC)
Date: Wed, 1 Jul 2020 21:39:20 +0100
From: Mark Brown <broonie@kernel.org>
To: Kees Cook <keescook@chromium.org>
Cc: linux-kernel@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Alexander Potapenko <glider@google.com>,
	Joe Perches <joe@perches.com>, Andy Whitcroft <apw@canonical.com>,
	x86@kernel.org, drbd-dev@lists.linbit.com,
	linux-block@vger.kernel.org, b43-dev@lists.infradead.org,
	netdev@vger.kernel.org, linux-doc@vger.kernel.org,
	linux-wireless@vger.kernel.org, linux-ide@vger.kernel.org,
	linux-clk@vger.kernel.org, linux-spi@vger.kernel.org,
	linux-mm@kvack.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2 08/16] spi: davinci: Remove uninitialized_var() usage
Message-ID: <20200701203920.GC3776@sirena.org.uk>
References: <20200620033007.1444705-1-keescook@chromium.org>
 <20200620033007.1444705-9-keescook@chromium.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="/Uq4LBwYP4y1W6pO"
Content-Disposition: inline
In-Reply-To: <20200620033007.1444705-9-keescook@chromium.org>
X-Cookie: "Ahead warp factor 1"
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: broonie@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=vn7yonK6;       spf=pass
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


--/Uq4LBwYP4y1W6pO
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On Fri, Jun 19, 2020 at 08:29:59PM -0700, Kees Cook wrote:
> Using uninitialized_var() is dangerous as it papers over real bugs[1]
> (or can in the future), and suppresses unrelated compiler warnings (e.g.
> "unused variable"). If the compiler thinks it is uninitialized, either
> simply initialize the variable or make compiler changes. As a precursor
> to removing[2] this[3] macro[4], just remove this variable since it was
> actually unused:

Please copy maintainers on patches :(

Acked-by: Mark Brown <broonie@kernel.org>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200701203920.GC3776%40sirena.org.uk.

--/Uq4LBwYP4y1W6pO
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl789HcACgkQJNaLcl1U
h9AfDgf/RKZyImjLhB9HvSTTPElSdnVo2uGyMkLMGX5E2rrBkIm+JRHNqfloV/46
Mx7zbEttRmKiYixfSdmsDpbg56ljycPfGBLHIZxfW4p4HDkXI2rwNl6yNQwAFGfS
xREw+xp//6eFOklwHHWspFdXjwvYVwxwCJbntC3mxtA44GrP1RcSNdlYSRlLMUqE
b4V1aHQtulWHWcA6qc3e7e3VH7t/F4vy9AftF3S8ckIbrmZO6+HfcvGjITyILn0T
0ReKIdfQ/UEHEeGXnai1E9efkWymKRW43Frx6JRO6Sd4KhBeHGohovlQ3mhKLfdg
vH1jBuQdhXfJWc+yprXAcHmpsHpQZw==
=XnWw
-----END PGP SIGNATURE-----

--/Uq4LBwYP4y1W6pO--
