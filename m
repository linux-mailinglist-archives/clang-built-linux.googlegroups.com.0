Return-Path: <clang-built-linux+bncBDQ2L75W5QGBBYW2TT4AKGQEC6FUQTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13c.google.com (mail-il1-x13c.google.com [IPv6:2607:f8b0:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id ED81921A260
	for <lists+clang-built-linux@lfdr.de>; Thu,  9 Jul 2020 16:44:51 +0200 (CEST)
Received: by mail-il1-x13c.google.com with SMTP id d18sf1400626ill.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 09 Jul 2020 07:44:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594305890; cv=pass;
        d=google.com; s=arc-20160816;
        b=Md7vM4nYGDoiG4eYgtmJIWq4wppNZjltVKS17ajTembWnFbTUu4oOGaOBs+cfJvysI
         5CtYAhgmtQwH7EF7kNSvwkhVZvzbk100Jjb2JHVelsJFySi9yLoNKYJZBi1UuCOlwgUb
         i7KDiwIGA7HlrehtdCTTfxcXEwqiKo7zfOrDk0r3/kTW+UR4aAk0CfDlvm6yOrZk7iBB
         3WzvA0WZX1Nh9bCPM/pMNcmhW6CmqKVSoHnRlu1Q98Hv5WIp9KwbU4Ejbu7nwmu5pYE4
         Yez+Gx624odCl0iD4qWUwvauFVBHRPHQlkrLAaF5MCz5c4MVToig3qmm8TE7c1MPQiuT
         UrSg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=lBnxezIgZ2/TeMSAHiWSV4v0hE2KGCSes/AS8ZE6YpM=;
        b=m7RbpDZ2cbxOCB8GmAfdyE636GMBRo3II6nNzHp0qogzevJHUWHUQ1qS05WxzT9RWC
         GJ+TYJTJpQ5lpdV1f7hqeWNkp7l/3hWnbTlTKabVOxYNai1MsJFg61iDR+Jm1iCeEwZS
         vviJILvwZvZlC1LoulshoxhSV2kjNg7EMxGkKaHX0Skv36ML1CVFAK2FChA+b+VY3d7R
         TlVekRfCsMFjJ6ADyfOuxnXOqiOQrUh9t1tmQ4R0xweDUuYoCIqZrMUPLST03OUnVNuJ
         Mv+a8AzX/A2d92Rfl0qWhzJ79+bnaZ07lNI++ZS6bstMQXiO3Xtlv0VD8C0rNqs5XNiI
         mVkQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=uOE2ZUMT;
       spf=pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=broonie@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lBnxezIgZ2/TeMSAHiWSV4v0hE2KGCSes/AS8ZE6YpM=;
        b=G/xE9a7C7lzQss10ovFNhxd1fMLBIFskyh7hfO/Kec3VjQPxAGqbdZ+z7PAHgOftP8
         mHxnnkv8NaRlv4tKuPuydv/b6AcfFm9GNbsFQuudRLHR6njsT5Dyc24nGG8OCdD+w/bp
         seO4IbLRwMqwKssnS1Y8xUDjgxODRdPqhjn6WbWlPgqR+jJqULdyQ6oq/eQc/xE4nAY2
         uizfEAR1tDG7oaEpx38gpB1fiSJQDvheJ9f3kVZ0drTjkOfqG85al+Tm2vNKCwpKyE5O
         ZM2QwTVVgXztuQHyae83RLmphlOGCV/eBzNhWLG8B70Qc0DYkqTFQB7eRWOSVNQoCn7n
         SSsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=lBnxezIgZ2/TeMSAHiWSV4v0hE2KGCSes/AS8ZE6YpM=;
        b=G17L3wPDfiYmZRRQFrtMJ4NNtncEnMqqRfkyI5c1SlMQTLc5SzOAiwUesLJS9wk4Yh
         lItfB6wFZbU17SXzMm8cCpvjR8rjJB0yG9MEEQCbF0Dq/IHC2BfBNUwtJdAsYSNoXgpC
         aY9WS+sKlrX0qEuTIQ6phVsdXdHQTXfKbOXp7nNS34rVdCFsfF4njWMhMTcn/GygVE+t
         fpgnnXQzl2rLGPvzkOH4z/JSVUEbMpF+271EeMI5RFzXp3rf7L9HRbgwlf1njJwYAWMh
         pdK6/DI4NNLUhmwmY9cASuFN2ZeTaoOlk7Q1U5Tu+foozYS7Lq82HRLjS1asIuwdMzF8
         a5Lg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530KOmkozh4P5L0mFe7TcrAsnpa3Tc/0jTejdnZLvzFmdZs2N68h
	5iCS2mhiRwFK4KjW0BXr0VA=
X-Google-Smtp-Source: ABdhPJzjicPkTq5TPKZrGFHlK7kwYxd1SYCjgs5gaxUPLe3aff0bHkXknUT0PmGRYkDIGYcZ2nFnsw==
X-Received: by 2002:a05:6602:229a:: with SMTP id d26mr42453790iod.57.1594305890796;
        Thu, 09 Jul 2020 07:44:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:1389:: with SMTP id w9ls979644jad.4.gmail; Thu, 09
 Jul 2020 07:44:50 -0700 (PDT)
X-Received: by 2002:a02:c6a7:: with SMTP id o7mr75139973jan.7.1594305890483;
        Thu, 09 Jul 2020 07:44:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594305890; cv=none;
        d=google.com; s=arc-20160816;
        b=HyijH3LYaNe1AoScWvFUPQf3Ms0URFtlLh5D5pXlK1J8qQq41T8oL3stQm3a20Pl9K
         TVLHSMB/dgOZWrli7rtNkW8oNjS9VTxbx/rx7LtzqmjzeSU4dwn919qwPzia3Mkarczg
         qVzlQJE38N2yjiLhV2sKpy8GAMY9lWbRdYbMqxTPpGSdqQfhr2QY3vU6yue1yp33bFJh
         ct/CJ2hD/EbjOWrZ6yTy6KrhteHYB1+euaeB2cIwv8/4DKRb8tkoPbrXNvLloLXM9Pwg
         eeGMgS+juG6JTcuG0QT0UM/IiDBObkZmjaNR/mAWMtrMhGSnyevZRMBRwJ6PZAZXrEYP
         MybA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=AC5WF2yCXYj3pI8aPiH9HO1klC8GXJs6ExE7iMMvvDQ=;
        b=VgDUdhBshOO8kHnt1OHm8Q/pH2VuUIXkzL/tbGuXw27JlgblOs2lhuvCbN4YxN1DpZ
         jdQl/N+60pjn4R6FUkko2h3X2pAvo3paWuVJLptx1dR0Stn/VmBiX+pCTsS+OReaNm7d
         k83TEFmLdt+CsisleVGQJQpUq6HUTB6pT5bnjejuxb29wW79pUrBWwbLdzz3kPlj/lAM
         624T3wkrY7OfZSczSqmP7jiaY/4CC/gbAcF7fUMXXPRJ32ht7bUsriERIz98NJrt3CjG
         sN07yesBMX1t1LGfr1ZYhBj2HtSK/lgbd561+BGQbTcFnWb1xtiYo5Crq+T8n4B3awpR
         MsvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=uOE2ZUMT;
       spf=pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=broonie@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a15si147185ilq.4.2020.07.09.07.44.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Jul 2020 07:44:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of broonie@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 475E22073A;
	Thu,  9 Jul 2020 14:44:49 +0000 (UTC)
Date: Thu, 9 Jul 2020 15:44:44 +0100
From: Mark Brown <broonie@kernel.org>
To: kernelci@groups.io, ndesaulniers@google.com
Cc: Kevin Hilman <khilman@baylibre.com>, Chen Rong <rong.a.chen@intel.com>,
	Philip Li <philip.li@intel.com>, Dan Rue <dan.rue@linaro.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Mathieu Acher <mathieu.acher@irisa.fr>,
	Steven Rostedt <rostedt@goodmis.org>,
	Sasha Levin <sashal@kernel.org>
Subject: Re: plumbers session on CI and LLVM
Message-ID: <20200709144444.GE4960@sirena.org.uk>
References: <CAKwvOd=um1y=Ax2hK5YYQBxbxLK4kiQuDs9fZsr77YyNR5r=Ww@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="YkJPYEFdoxh/AXLE"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=um1y=Ax2hK5YYQBxbxLK4kiQuDs9fZsr77YyNR5r=Ww@mail.gmail.com>
X-Cookie: You will be married within a year.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: broonie@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=uOE2ZUMT;       spf=pass
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


--YkJPYEFdoxh/AXLE
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On Wed, Jul 08, 2020 at 12:24:07PM -0700, Nick Desaulniers via groups.io wrote:

> I'm trying to put together a Micro Conference for plumbers focused on
> LLVM.  In particular, I'd like to have a session that focuses on
> Continuous Integration (KernelCI, 0day bot, tuxbuild, kernel
> configuration space, and LLVM buildbots).

> I'm curious, are you all planning on attending the conference?

I think most of the KernelCI people will be there.

> If so, would such a session be of interest to attend or speak at?

I'd certainly be interested, I think some of the other Arm people would
be too.

> the LLVM MC, or even if it is of value or not?  One thing I'm curious
> is what happens for two concurrent MCs if leads need to attend both?
> Maybe the conference committee can help us avoid such scheduling
> contention?

In the past the organizers have tried to avoid scheduling issues when
they've been highlighted to them.  I'm not sure if the conference being
online will make that less of an issue than normal.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200709144444.GE4960%40sirena.org.uk.

--YkJPYEFdoxh/AXLE
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl8HLVsACgkQJNaLcl1U
h9DA1Qf/W4jOGqsAaJRykCnqYtaO0bOsTawuTyyRwdxjmBRuSDXuTGwD3ahNscDj
mJ9lkfgP8kNohhZhlioD12Z9BcADL3dDoYk1jtW7WEFdKZOGSBN+Y8FaAYwvsRgU
cb7q2qUrcznUiaL67Kn0JMfq9T2deR+4WsSwn0uLwoiwprjXtpCmzazzCNVM0VaT
kTCw/7A0J6VbNFUhkSBOiwdlO6owFPvIOg3M/SyEqChTITu0mFzHjPmRFVROSZgD
AAxQt8txuwQ/+GArfcadV8OVaHPxhkRRzMb5t5i2BJJYxfkj9Wz9owxS750pjnPT
AzLXVju8uDXzlJDOSZW8LYExk4PzQg==
=W/OH
-----END PGP SIGNATURE-----

--YkJPYEFdoxh/AXLE--
