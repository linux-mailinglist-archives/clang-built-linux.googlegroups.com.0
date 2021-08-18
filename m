Return-Path: <clang-built-linux+bncBDQ2L75W5QGBBO7S6OEAMGQEGNG4NXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id C39ED3F0397
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 14:12:44 +0200 (CEST)
Received: by mail-qt1-x83d.google.com with SMTP id s39-20020a05622a1aa700b00298bbc58d2fsf737834qtc.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 05:12:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629288764; cv=pass;
        d=google.com; s=arc-20160816;
        b=ftjg2XBqscqsfVNsBjRgE210iNaRmUYkw9SUu7Tjb+jVlzoJYoMP1t/v9VHFNZs5R5
         5ak0t4OUCEgqMbB/oab7BlsbQQhsWw/fhNi8ej+IkCbfvv71uNx3bCm26e0XsFMI5RXz
         rBxBXLZpr56cN9/jJOnVkHqz2asD+d7EHaWC3V1ToG6jr/UxcucAgnQP5Wor1P0j8dS5
         rrEuVigyXa366HaRmk2ECmbDTJp+n53uJvMZnLluSrZaEgIT3i0A933+b8D1PKWATWBR
         FEWFhcHuhDYexOSIGgJinDvTr3ygPW6QFgIlrfbylShnsl/SBpjWXe636V1BTSfOfvKK
         iIOA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=eWh7B7z07DeaGaQ+GTdDKKzvJppw+7oYs9N0i6LbErI=;
        b=yKTGP+nAnIy+S7tGFkWZ5au/mPm/MIkOO8KXIt/1/D/Rvq3J5nObbUI/8HhOWI3p1L
         jaf1CepId8Xrk/IaPCAEY5ME2WazAE5hulzX8bBZJwSra+sSlA0LTqij4SZgLetxFuRb
         ZlaJCpcqFCyfUeWaF9kdzIjAeEIoumtF585Oxo7YYrAD1+d/kTHQzVJCA/LFRn6dROfD
         kXIcNyjy7a4xUdXW1H8RAbTQY3qFNkyuXMjJJhEZthfjb2VGseQUuH+RfNWLl/UXvwmR
         zmr9yQnsKN/1bJmFHBZbyT7M3KPHs6Vq20k8uEJ1m/NVod5tbTKXTNhNNgzxAos8ecwb
         77GQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=hUhyMLBe;
       spf=pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=broonie@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eWh7B7z07DeaGaQ+GTdDKKzvJppw+7oYs9N0i6LbErI=;
        b=VInfyD4WBE2dIi5/ZshroGXH9cYYgqKzGz5KqNfa7PX0uV0rD9Fezpt2MJYs8iinnU
         kdkytXMKCezhynMdwiXRqTfkpsP+5/FFvIlcWvxhoVIgb3Z7EksXplM4kWEfhkU9zZFW
         QfPCH9tRrfTpzpbRJFt/fTo9W6/LCSXwxA9zzm6Z2PjSSL9Iww8D0qKcLz7qod4W7a7f
         CtZAp2Ry52RQL8J9b7oE7/srtJl9pjAoeTq6cqo/x5lEo9+EflVl+AkCcu3hDTeJ4Zdh
         xeOjEi5xfzgW9vNaSbd8IMYWQxnYiHwAR+hsAevS8sEp7Zw1nSko/TXYNSpTKI2SpKNI
         +vcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=eWh7B7z07DeaGaQ+GTdDKKzvJppw+7oYs9N0i6LbErI=;
        b=A6ILVg5C0h8MfDzjkVSX8mirmXw6JinNEHJaT4qHqxFd5ajrNY0XJSsxyMfVkGeFBt
         nwlOUTgZWKgmcUJg8VDpvKc3yRvKz9iXP9cMwtljtwfrBcb5Fq0GwEPnvU08bQqBZd9E
         Oq3dNmOe6f5SkZvtDxKz/w1jNEzvdemXa3WQtbe5Jhl8hh7pbzs6pce24pYNBdu1TSE3
         wnsOdTjQaCbpzWA14mLs9qiYk1H4gCHj1eGeynh6q/HQBElT1pUYDBtV1Xovak0eHrdJ
         1SUOzGhcjft5ts8155OShLWvPWQLdkputzQHbuLPJtcKbyEZ46aAYKTuBH1dreRFRSmU
         2mFw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533X/StiENidmsTkB9/IlaQa95PE+cydcsUalDhMYk1qX6qa0Ngw
	GAN+QySRpQmqNSA6Aunah6I=
X-Google-Smtp-Source: ABdhPJxVu3X//Wv4Ab03rRdWiR3cBjyz+1mxUmimKfbGfQGh0X1xPbYB7O1R2NR/QjTPnuDX6Ykitw==
X-Received: by 2002:a37:bc8:: with SMTP id 191mr9413537qkl.25.1629288763854;
        Wed, 18 Aug 2021 05:12:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:190b:: with SMTP id bj11ls1239195qkb.7.gmail; Wed,
 18 Aug 2021 05:12:43 -0700 (PDT)
X-Received: by 2002:a37:b56:: with SMTP id 83mr9132726qkl.360.1629288763349;
        Wed, 18 Aug 2021 05:12:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629288763; cv=none;
        d=google.com; s=arc-20160816;
        b=SwmyGrgWJqlVQHZXtdrzIqYAzz+4ivh9yiQQU1CMOTiz6mbxJpQGlOMRe7E5t7RJlr
         OoqxRnR2VoxEImehqYZbOP6iOhvsgHXFHtcwhpKaecbnI6lbpj+10TkwqUYgc+gpYbzy
         ummGolWNpolCVp4mmih4R9PryzefpREeAD5YJYJ9CXkTbGgqDV/UwHcY4IOWTl0ow9AU
         WuUbnbU5sDnbXmJ+OfopIGFFdjNji1Uoiuuaf53kRxGLWA52Wl9oxcCjnGamHcSrwVKa
         /81XEMzWGa2uABYRa/SKfJ5W8g4wqZgqplweGs0dvH51FeKcbM6nlaGnupTbQh4PjJn+
         ijuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=v2fKI+bPzybQVJkFbPZ7QLGe6RoSceJs21/Hl1k0DgQ=;
        b=p+bBhLNVLOa1itZXZmyrnP7fH28IMi6jhjHL2OOYWR+EE8V/rrg9ZpQ+Xw4Cwo6Wdm
         3ZD1dr4qDj30V7XYHWSuTsmzUO/EwKpTcr46AcY0QcSTOwbgGW+JD7nZhq8SMrCb1zUw
         YlndDs4uGNNt95nrMKQz0Ir86y+bSDZiBL//L2v2u14xAp9K1PGAZA08X4EtmnishSrb
         nhnSz5o4XvCopkraqRqkdq33jz9xxvNNVHsVtwm3cvbQkY28/T1L1lpicy3HlHNwkzzH
         ELM5fhjWiaX6csqiaxTrDQBwLSyjBI+6zRVY8exK2LKfQONhUVm3vi7rRxB6LxzpXe44
         8rvw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=hUhyMLBe;
       spf=pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=broonie@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s128si348606qkh.6.2021.08.18.05.12.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Aug 2021 05:12:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id E701360EBC;
	Wed, 18 Aug 2021 12:12:41 +0000 (UTC)
Date: Wed, 18 Aug 2021 13:12:18 +0100
From: Mark Brown <broonie@kernel.org>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	"Gustavo A. R. Silva" <gustavo@embeddedor.com>,
	Philip Li <philip.li@intel.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	linux-hardening@vger.kernel.org
Subject: Re: [PATCH] kbuild: Enable -Wimplicit-fallthrough for clang 14.0.0+
Message-ID: <20210818121218.GC4177@sirena.org.uk>
References: <20210817005624.1455428-1-nathan@kernel.org>
 <80fa539a-b767-76ed-dafa-4d8d1a6b063e@kernel.org>
 <CAHk-=wgFXOf9OUh3+vmWjhp1PC47RVsUkL0NszBxSWhbGzx4tw@mail.gmail.com>
 <5c856f36-69a7-e274-f72a-c3aef195adeb@kernel.org>
 <202108171056.EDCE562@keescook>
 <3f28b45e-e725-8b75-042a-d34d90c56361@kernel.org>
 <CAK7LNAQFgYgavTP2ZG9Y16XBVdPuJ98J_Ty1OrQy1GXHq6JjQQ@mail.gmail.com>
 <71d76c41-7f9b-6d60-ba4f-0cd84596b457@embeddedor.com>
 <202108171602.159EB2C7EA@keescook>
 <72ae69b4-6069-ade5-a12b-8ee0435f803a@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="OBd5C1Lgu00Gd/Tn"
Content-Disposition: inline
In-Reply-To: <72ae69b4-6069-ade5-a12b-8ee0435f803a@kernel.org>
X-Cookie: She sells cshs by the cshore.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: broonie@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=hUhyMLBe;       spf=pass
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


--OBd5C1Lgu00Gd/Tn
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On Tue, Aug 17, 2021 at 04:23:41PM -0700, Nathan Chancellor wrote:

> I do not know of any other CI aside from ours that is testing with tip of
> tree clang and ours should already have a clang that includes my patch since
> it comes from apt.llvm.org.

FWIW we have some testing internally at Arm but that's building from
source so it's not an issue for us.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818121218.GC4177%40sirena.org.uk.

--OBd5C1Lgu00Gd/Tn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmEc+SEACgkQJNaLcl1U
h9CuEgf6AhImdwxnsV8aEvTuQR82slmZtz5rVQrdZSyHW8JWRYTeS4xoYienTEv3
HpFEgAPb0ZVs8fCWfRKg9Lxcdm8h1cOFUgqibjYgS2zWcBhOqGkaAhGNe0tCpvHP
ZZ4uvs82kwjDIHJ0/JFDugThZsfQDpcPnw0UZUTGKX6YZvXwEl+1AMI/eE/cGQPS
EJ+ADZZo9LAyS1iCP/yiNvzE3Oqkv5jS3KxGlG79ezz3oErYklKeD+MjNnimmR2c
SFU2BkiYEGVg5nC70EeqSs+LL2dEg0iFtbfd3/zK26qcEDNCBDHjAMGgO5WmkG7Q
0u18wJuI4eZ2ggkq+/GAVX9IfDvrCQ==
=annl
-----END PGP SIGNATURE-----

--OBd5C1Lgu00Gd/Tn--
