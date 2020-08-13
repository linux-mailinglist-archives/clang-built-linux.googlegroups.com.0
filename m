Return-Path: <clang-built-linux+bncBDQ2L75W5QGBBWFN234QKGQELY4KFEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13a.google.com (mail-il1-x13a.google.com [IPv6:2607:f8b0:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D747243F5F
	for <lists+clang-built-linux@lfdr.de>; Thu, 13 Aug 2020 21:39:05 +0200 (CEST)
Received: by mail-il1-x13a.google.com with SMTP id h5sf2302468ilq.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 13 Aug 2020 12:39:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597347544; cv=pass;
        d=google.com; s=arc-20160816;
        b=XC8+LpRDuXUibVm3GosyMegYylIWkFhhOlf9dpvzwzVfTcXTkxmhIynAwQlnA5iQRJ
         A/OuxJgOdaRbfnVRHZ5LxKQ8I9rhVmSjjp0gZNH9H+pQlHES1rDl6i2O03f41DsjDdHx
         FFOIum2SAaL7Bdg3rch1TMDPjypKYinNL+MaiUjU8WBQjG8R+PEVKsacUaMEp5tLbzex
         dVpN2Yd+55beXJNAmru3ItaMDe2ggqsVSlYc4QluBsv/CSVKu3yiaP9CcppuAPZyI0Xj
         3n+mheZOZeFbuKacL7lfj3+OHsjg1MH8IIBH7I07NZ0G2XogntfVyQn7SIYspvnhehg1
         +gKg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=kMYNlIPv+OSVu/rr0ae6xYHbvtMEiR+Mua0xEBmU3m0=;
        b=S+ekwHd7sFymN97fAOcpbSbTPE1jrwWWHYT93aZ4e05U/OUsedaXaJTY5YlavYuaeG
         MzA5GXOXaW565MdZ+zB0HCE1Ok25yQlLkcnXliSwZAc1TBWjeI8GtXMiwT41to0gwJuY
         FZSodKzTgBk5wy9kTPZaD/V4tU4Hn/aMT7sTt4TazkUZQQoHFm0rE7E4PFZ0xIM3zszA
         CaZJhNbecoS4243kNmN2jICpYp7nnrGtwpyJZMYKMi1gK3+dKXT2iEdLcLHl/ggqdumS
         PCxWSg9FW837z+GSjfrLMMTvaxco4xoLvco16VqzfZd6fMNynnw2BKplSFwYb6uWKiwb
         bdrw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=lRTAE0VZ;
       spf=pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=broonie@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kMYNlIPv+OSVu/rr0ae6xYHbvtMEiR+Mua0xEBmU3m0=;
        b=JKlgOuoKRcBGnp+vIa2GU1v7bSbPxBiOs5ST2UDkUcFctCBK+AXEAlSnLRIQdqIx5i
         i5hSG5C2H2Uh48nk8LfQuCes22p+RME00KOvlH9B69RWYMIgeWzgnuoMIch7FoKhwSvj
         HZeRKtnCs2gzn5zXbtVxCi1PQmiGtUWSq2tLUxbsnBX1VG2Y0yqSkjENivjZI+najOmr
         Tl9Lq9B0dorkvNVmOKTTc9KemJlc6xc1hJ6TBJ29H2NbzcHnuZKCqqQh9DFp9DS3RS7c
         NRFYaObpTJoYqe3d50mHJijWnX963CFkApP31tJNzFw4MlKs5VqzwDjHH4mJ1SF64vjj
         B8OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=kMYNlIPv+OSVu/rr0ae6xYHbvtMEiR+Mua0xEBmU3m0=;
        b=nnsapUpUlWlch4XikvmdzUFA/EXJhAPHR1iTzTq8FV2vZ48aIgLcWeMlAXBduVcmPq
         0BA7dkIgEYax/vfpGpYCwQ0/nacsT7eJpHlcpdS5zL9bsm/N9jI5kVAtaCdqpkS+qWHe
         ETMMaRHB6+Ue52aURvhBCkXVahesfG+Yb2kX7wmhdq3WBr29bFp29eKz5Tp7BsPqNYy/
         n9EXz3HxhpHJwR2AymCLW9nYkuubLrkowH69zVk/DPLDTAAF1/FqucaOlhz0xpnIYRTC
         SH+MFpjG79JCCVyPzzRe/TAeiWWRzSelwoL3wwldNlCcbjmG68pR1nThU8Zy3pcU7/Yk
         VzNA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531R/go8OwvecqGJAI+DfVlG/PJRDb1P7JjN/v0F08IiTLXqjv/p
	4dIc46+wh7hbmYrlPNL0TbI=
X-Google-Smtp-Source: ABdhPJyJqVvUtP6MoRzFRNcjjZe0gkK5ATjGCRwBY2gD8oLwginr0QjQI2V9m/l3NnqwDuqXFUpyuw==
X-Received: by 2002:a02:3e13:: with SMTP id s19mr6815694jas.95.1597347544291;
        Thu, 13 Aug 2020 12:39:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:5e4c:: with SMTP id s73ls1668893ilb.3.gmail; Thu, 13 Aug
 2020 12:39:04 -0700 (PDT)
X-Received: by 2002:a92:dd04:: with SMTP id n4mr6230568ilm.70.1597347544029;
        Thu, 13 Aug 2020 12:39:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597347544; cv=none;
        d=google.com; s=arc-20160816;
        b=jWFbwhwd3McOaFDLgMavB5MzLIbdv2Qrv75gz1KsXOJRG7YP59qA9LjPdM2p7+PGEo
         Y1/O4smcY20o3Ksw4d/QnNxmL9rhjSE+Tqd2ff5aPWSJ8Dj3AUTu7CCs71Qx/FZyAC8g
         8IT0Ju8KWJj9gr1fXprCr+Hc3wMjo00xtTZ1YANUBPmO4wt8xv/gE+R0ybSv2RAr/8yC
         64RNCOXPxTyTjyTjTRNITLMN4pgeZDSuQN+AkryAGwSS2zTsRmg/7VCpZgH3rO+CWrz+
         E+aSpjdvEF/kV9Dx1I60A4ueNUoV9viKr6xtK4Pom42UAGZwuIduDwbQ/wy9KAMNWzUU
         2iQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=/gfdogvHo9UH/OHbnM0wco9rzIuT+inetiDLA2/5VnY=;
        b=0RiN0IK5VZpX4aXw5vlHzr6+B6ChdnfmDd0rpCjRwV80rEc+jAJ3xJ/xISR8uSidju
         QFcc9l/khENX0P+eAUwQBN3Xmd7OA8H5Fzkl5LtzMcjY4r0xJOhkPOLaP68SpJEP17wF
         5gM9dQpwkYXZL+ftkFym0ggoTVXLkpGha3zQBUnw0iiJVmS1VlJ5TeNlTB+DPP1G8OWl
         ZONMAI2sNjyuWuYmcRlNjegW6k2zcqxZlzG/VrNzq40W71LeRjp9oJl1Eu2x/AOTI83P
         ZO5R2CMRBoXyx0WUXtIV/vUDDmT3Fu22Jf81pVoT0GoJUA1EQ23z94jtTcM+XzTwPV4F
         7s0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=lRTAE0VZ;
       spf=pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=broonie@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z7si359008ilm.3.2020.08.13.12.39.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 13 Aug 2020 12:39:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C557420791;
	Thu, 13 Aug 2020 19:39:02 +0000 (UTC)
Date: Thu, 13 Aug 2020 20:38:30 +0100
From: Mark Brown <broonie@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: KernelCI rootfs
Message-ID: <20200813193830.GE5541@sirena.org.uk>
References: <20200813141946.GB5541@sirena.org.uk>
 <CAKwvOdk5ABSXa+q=LWQ8zi-mq58GH-ee-0OheGqSHoSYWGSqrQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zaRBsRFn0XYhEU69"
Content-Disposition: inline
In-Reply-To: <CAKwvOdk5ABSXa+q=LWQ8zi-mq58GH-ee-0OheGqSHoSYWGSqrQ@mail.gmail.com>
X-Cookie: Your mileage may vary.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: broonie@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=lRTAE0VZ;       spf=pass
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


--zaRBsRFn0XYhEU69
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On Thu, Aug 13, 2020 at 12:31:47PM -0700, Nick Desaulniers wrote:
> On Thu, Aug 13, 2020 at 7:20 AM Mark Brown <broonie@kernel.org> wrote:

> > As discussed in yesterday's clang call the KernelCI rootfs binaries are
> > in:

> >         https://storage.kernelci.org/images/rootfs/debian/

> Thanks for the link.  I didn't see s390x binaries; I guess that's the
> pointer to the below build scripts?

Yeah, since there's no s390x coverage at the minute we don't build them
normally so you'd need to do that yourself.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200813193830.GE5541%40sirena.org.uk.

--zaRBsRFn0XYhEU69
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl81lrYACgkQJNaLcl1U
h9CJgwf/S3qK/5qnoWv6XsdGrCz8oTn4UmaNLUYS+B5oYl+6lhBObrIlW964enYv
TYDe9ExWZOxeTNMC5p3eXMHlmd2ZosJgJaH3Gn1/hLJgkNx09FwLI/UcasnmeLtF
NCKgOdevRTyljx6ldpoEadfqTxrIAY5DRjeD8syOfUBI/GRev29cXlruWiV3XWvQ
3RwwKmIMg6XiCcOoVINb2nbdH0SAu2+MabqbpIKTO8hdKFDmynxb1mG1eWKwPu2A
+QE94XAMsL5BMueg9n7lI7Yk08xBvYeT5gHzSf4V86clV276jIxTQ44c9MWOtWf1
3rJiLbJEOVwf0DkniI+HZxX3vPn6yw==
=sPIX
-----END PGP SIGNATURE-----

--zaRBsRFn0XYhEU69--
