Return-Path: <clang-built-linux+bncBDQ2L75W5QGBB3UNYLWQKGQEFBY5JMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 587CFE2133
	for <lists+clang-built-linux@lfdr.de>; Wed, 23 Oct 2019 18:59:27 +0200 (CEST)
Received: by mail-lj1-x23f.google.com with SMTP id v24sf3677103ljh.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 23 Oct 2019 09:59:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571849967; cv=pass;
        d=google.com; s=arc-20160816;
        b=mX1dMcaBt+S0itQUNCrD8SN6UR74IVVqrrUuTGs4y0O+yO7P/RdFUa0bLtjNEEY1cb
         iOWStyxMuT42CHIfwtW+02FPoE0yWDgJZ4WLXz+ZV0KleR1RLQChltvoeMFtuq/TEJet
         Eq2edezAg/a5HPZzLHuh5zQnt8suIuta8PxxVMqP3dAAFbjZRNOc8DrII4D2darREYYE
         hjTBTBc28Y8ipf0gmslfBi+es39x7DHXgsr8Jj5YaeyT9jF5otUxNF8WbuDAeOHoGO2C
         uX7Z5dXBaZhp/QOuUvH3zbQgoxvyo0stmjb6A2qeemR7uRb8v1SnngdExD6p90xRusXF
         QnIA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=Fb5pF87xk8RZgUk+h2gMskMtQjtHFq2VUi9FK/AYH48=;
        b=HsEJll865m2QKchbdHSUWPYurzO7HKf1wB40ENbvWdnE2WO/fSp9roT6GAUmN03tP1
         WsG0z0IBcih1qA6RHFWjNr/mD5bjnWmDyH+INL1ZnEOGfiIWg59kgBFDfm1htUt7H0eV
         qoGqEB80IshCU9BSe1n017FBxVzvsBl7A4brke+zjcyrWic9MrfbSNm4sYj0eQocfgg4
         J7P7SXV3+W8Wn0ifNmb9Nva5FL3/kTpkKsdCxAVRABzQLJze1NiDw1TBWWcZSLTDWAzu
         blhZaqn7i8aW5c9OuHFumSc92xxqw3dop5TDhHMvzIvjSVH3w3tIJV9DyGGhtIjJbiTl
         m6wg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@sirena.org.uk header.s=20170815-heliosphere header.b="luoGGER/";
       spf=pass (google.com: domain of broonie@sirena.co.uk designates 172.104.155.198 as permitted sender) smtp.mailfrom=broonie@sirena.co.uk;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Fb5pF87xk8RZgUk+h2gMskMtQjtHFq2VUi9FK/AYH48=;
        b=ntF8/7F2usWCogSrDVIKR+ygjhmnIr1SIhoANyVmye39dOsRHSBSBd3NAYZ1AD9qD8
         0Cc+GwLWBAlFojlMunYZ6eHYgj7ht/53+1BnI3syqzeJRPJ/yNgHzw8smXI0X72nVaI2
         qdOU3bmru3Hh6Qj/XPUEHHHN2g29ZLCvNIHM3reeNosuQPDdv+i6ktHYdTtP7Z//GwVL
         wDTnsAoXWUDewkqbYV8cWVKavLlksrVQtTnRk25k5zvj6SPdNpgtYYIKpaa5NEUnDdlF
         QF9c0yxof7FnR9LGjV6/PIh9La70odgG3uoyWqMRKHQzO65A7GChw98g5ScG1bKN5D4p
         P+ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Fb5pF87xk8RZgUk+h2gMskMtQjtHFq2VUi9FK/AYH48=;
        b=M9DOuFzZIo5wPsdlBBl7cpkxF9Jo2j/B1ZBg/ueUFVTerkST4kgKk7UPAvxPXweOKN
         4Vi02n3LXvWTbZLJvgnerlC7JlZ8UssACOJGkrefuWh7ICudrY1+TtlvT4NsyWB1tDsO
         sOsOGYaM0quvUSZp2FJKj1cJmYN17M1RL0H20Lu55DAjMeNNRSlK+E31ag49PpB4V5+v
         mUy+9ak40F4cQ4RmM/hOzZru8nHtOpfklhbdoVnpfGgu6uWunO1ALLEcTIBCl+wK5nUg
         xvgIF/r8fAc9aRTWmuQOgKQqKljBBBrvE7w/nM2PwetAhCnWDpD2DnodbB0ky/wFgM7g
         /qqw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXoGuBVHx6hBd+icFeZ2TTGSAZpFIw+VDLhJHbG5Gg0r5CxVU6v
	2At022DHbjZpB5NYFrxyoEg=
X-Google-Smtp-Source: APXvYqw7lydr2NEwovvYxA+xjuz+xehiZ0Z6voDp5B4nkoWj6mRmhGw330aTISVjOEFywiJ/6SwWvg==
X-Received: by 2002:ac2:4556:: with SMTP id j22mr3178867lfm.87.1571849966885;
        Wed, 23 Oct 2019 09:59:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:5613:: with SMTP id v19ls286295lfd.15.gmail; Wed, 23 Oct
 2019 09:59:26 -0700 (PDT)
X-Received: by 2002:a19:6a08:: with SMTP id u8mr24918362lfu.74.1571849966359;
        Wed, 23 Oct 2019 09:59:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571849966; cv=none;
        d=google.com; s=arc-20160816;
        b=GQui8gRJutKa+aCjKW0nQtzmPFmieYMJjv86MnVPlSfTlzS0rJnxqvHEjKJ2cZ8Vz2
         xHCYEMKKP0dpmZfPqYBH0V0FYqgdJwhw8yRTedZ3LpGovZoymnsmVqIpuEFGbXKLQ83H
         YK+q0zS/olX/I0zQC3BK3S/KNM+BRsRv/XskOv5UirlQq4akbXFdfw/6NErzkO1Rp/u6
         01/s9x2gvx05jb9xBgOhvtu0mbY63C2qeMgahxApRSBgzwyUjgriBS2Z37kc3FbcGviJ
         zn07L0Izg284y2uVW5K6tZv3y91n7EEou5rgWlZheHXHd85lBOTuIq4/7wUKZcXnvJhl
         qeXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=XrIyTUIIcwGweoXzbiGvqpSOVSltHgzWrBHeN+yMKhA=;
        b=JzO9hzazndOHP4fIH1Zz+XnMRWS6d42CrvLtglAsLXvLH01tZFyszr05X8/fdSbf0A
         ZLPArKIbaXInenNNw/6IOpEqzW6sJK1v0z5P70IIu3+BOLfLwLLxuufYxf+ROsoOGzDi
         zbG+m0nt1oGhvFNryvKwbcwut0eU4Rw9dd5UHcgi7KZNKdXEMsijHxcJw4u9hcOBpiOJ
         ONKKccivrtzzNBG2ge2rgspbIB6zsnppkCqs5z2X3C6mCh7kSmzBrQ4LcQezIkGhzlfQ
         I/TrtmYR7D8xt7n4L1pHUHflBruE37/AfYUHTnZYJDr+CmFmZkQ4jiD3sszp5MHw+Qks
         3OtA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@sirena.org.uk header.s=20170815-heliosphere header.b="luoGGER/";
       spf=pass (google.com: domain of broonie@sirena.co.uk designates 172.104.155.198 as permitted sender) smtp.mailfrom=broonie@sirena.co.uk;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk. [172.104.155.198])
        by gmr-mx.google.com with ESMTPS id q25si1235807ljg.5.2019.10.23.09.59.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Oct 2019 09:59:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of broonie@sirena.co.uk designates 172.104.155.198 as permitted sender) client-ip=172.104.155.198;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net ([82.37.168.47] helo=ypsilon.sirena.org.uk)
	by heliosphere.sirena.org.uk with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <broonie@sirena.co.uk>)
	id 1iNJym-0000zH-4P; Wed, 23 Oct 2019 16:59:24 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
	id 50EF62743021; Wed, 23 Oct 2019 17:59:23 +0100 (BST)
Date: Wed, 23 Oct 2019 17:59:23 +0100
From: Mark Brown <broonie@kernel.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Viresh Kumar <viresh.kumar@linaro.org>, Kukjin Kim <kgene@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	"Rafael J. Wysocki" <rjw@rjwysocki.net>,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, linux-pm@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] cpufreq: s3c64xx: Remove pointless NULL check in
 s3c64xx_cpufreq_driver_init
Message-ID: <20191023165923.GL5723@sirena.co.uk>
References: <20191023000906.14374-1-natechancellor@gmail.com>
 <20191023032302.tu5nkvulo2yoctgr@vireshk-i7>
 <20191023104304.GA5723@sirena.co.uk>
 <20191023162628.GA10997@ubuntu-m2-xlarge-x86>
 <20191023163656.GH5723@sirena.co.uk>
 <20191023165417.GA15082@ubuntu-m2-xlarge-x86>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="AQNmCumFClRcGgHG"
Content-Disposition: inline
In-Reply-To: <20191023165417.GA15082@ubuntu-m2-xlarge-x86>
X-Cookie: MMM-MM!!  So THIS is BIO-NEBULATION!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: broonie@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@sirena.org.uk header.s=20170815-heliosphere header.b="luoGGER/";
       spf=pass (google.com: domain of broonie@sirena.co.uk designates
 172.104.155.198 as permitted sender) smtp.mailfrom=broonie@sirena.co.uk;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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


--AQNmCumFClRcGgHG
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On Wed, Oct 23, 2019 at 09:54:17AM -0700, Nathan Chancellor wrote:
> On Wed, Oct 23, 2019 at 05:36:56PM +0100, Mark Brown wrote:
> > On Wed, Oct 23, 2019 at 09:26:28AM -0700, Nathan Chancellor wrote:
> > > On Wed, Oct 23, 2019 at 11:43:04AM +0100, Mark Brown wrote:

> > > > The driver should also have supported s3c6400 as well.

> > > Kconfig says otherwise, unless I am missing something.

> > Note the XX in the config option.

> But what about the depends and the help text?

Viresh asked why the driver was written with s3c6410 support optional.
I explained that the reason that it was written this way was to
accomodate s3c6400 support.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191023165923.GL5723%40sirena.co.uk.

--AQNmCumFClRcGgHG
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl2whuoACgkQJNaLcl1U
h9D5XQf8DtCAVE+KWRLKQff+e0eoyrmuOH64fFlBCM0iJFytXmKaO6yq/o7FQjcx
9CLRRHMdyzXLnTiVGkmkhsVGuAOJPCM+tTjYr/fHoq83Y3cKVSpWnOre95Z52OBa
qkawCaJ6i1XrXY0hznOXDb48gQuKG7kecSLaKxGvskoYpI6csEoqeTU/jUKTSMqr
GGa5Kdcp4LNd77ZbOWg4TRzUVj9BdcU59SFkOSPB+eA9O/Lers0oGENcu59MrxXF
wgJnuQnwnJIv7liRZDk0/z6lSLWqIq32C/nm+AKUrQrD3obXhzvyZnigHpn/hwfV
tEmawktj1/+nJxfhTt1gh0vRlbhiyw==
=wsTD
-----END PGP SIGNATURE-----

--AQNmCumFClRcGgHG--
