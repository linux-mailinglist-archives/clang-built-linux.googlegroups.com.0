Return-Path: <clang-built-linux+bncBAABB54EWTVAKGQENDONTKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id B3C5F8715A
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Aug 2019 07:19:52 +0200 (CEST)
Received: by mail-qk1-x73b.google.com with SMTP id r200sf84815257qke.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Aug 2019 22:19:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565327991; cv=pass;
        d=google.com; s=arc-20160816;
        b=sBqx4j6+7RySu8wf7qa3hV1j26/zgJBsqYsp1iyWZzzJtkjpfUSJ9O6JEEsvyF/znp
         yDwKCRU1W+bMiNbSxbCN/WdqnbNO2B2aRd+W9Fr6tpJe6w2CIZ1G28JiBE1/3reYZ17r
         2cLmIlbsirC+Xh2vmnBZcOjHGZ7E4ObwXSRyHxEzSYo4bnvkPdg5YtK+cDbW70DWnQ/q
         JbI4m7hVLT6tYg/SQ8FddcxPS+nvPLak20efSeWmN5hhjDsq9pskb6Tg35SjZs1zBBvM
         DnCUanLbnLabmPQPP/yGKwGSBr0idL15UQptvXb2K9Y0fdbIB6fFAaJ7bGNPUZq2dAC8
         w/Qg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=/okxBS96w3UE5ISIRBmtTHSYdrHFWGe9f1FQEOH5+Vg=;
        b=rZXbO7gefiGPo7tk9e0mtzpkk2xrOk9YbTQFDLtmSxwfd3XgRsJxPi1yWKFACUoRiS
         +qNKXeEuLpU4RdZ4RTO2EUGP0OdLU+MALnSnvjqgse4l4tHQUeZrdCa8LCJE7wUgBviH
         7+FBzq2CLfnvcwJT04g1Nbp8Aipuo49XZW1GUT1zIUKH2/NiPr0eQzWufIsNustBUiP5
         XiqOGS122pCAiGAbNpDSmEZlaz/SKJ4PWHPTCsPhvYVubRvheX+UJJpIz6x3B9zDFJis
         A0fS16e0N8egjofYosVP/GyEk2wjBaypqvZYws7Vr4FxptGBq79DH2dOuu++VgQF7tn+
         vTow==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@sirena.org.uk header.s=20170815-heliosphere header.b=ZMln1w1W;
       spf=pass (google.com: domain of broonie@sirena.co.uk designates 2a01:7e01::f03c:91ff:fed4:a3b6 as permitted sender) smtp.mailfrom=broonie@sirena.co.uk;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/okxBS96w3UE5ISIRBmtTHSYdrHFWGe9f1FQEOH5+Vg=;
        b=qC3KimK3BYD87Yd0Qcuesa7YYXx3KNifYpYRb1/XLh2BGzdUMCgETZdnTFBWHw/jcv
         kW6/Cvzc4J4nq5tjEhKKHdkzsR1G+PU9S6m2L0b2ZhH6hxrrjS4a8yEBmxZE838HdT/n
         WTxTunsKxpI3tahM0a7k5iJQYYo1MqLKMikKjJuFtPhtnnlhZz1+gZb/jn3B99S2FlDW
         EVn1dMyKH83QDYJZaX1wcFddg5bqFWW+SU0edJh4IzseO9CXQW1lHJwHPJ19QGuxVG0i
         o51P7fvSltehJXeW9T+AmeNQAR6GwZO6uPkcqoM4Wz8TCnwN2/inXw2egvrmyBxuFMbH
         EUwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/okxBS96w3UE5ISIRBmtTHSYdrHFWGe9f1FQEOH5+Vg=;
        b=Aogi7+HFzyTgzNlBEtapTO3JquXKaAh2QJZzfQLd17kES8aSGUGy/+LywvtfQl/RCt
         PvmFBYRXp3oQ8WeSWm3+YS/oANsVdKw30yJ3PQlAyqngef2oOtNVxuiQhCjToTo7C/O1
         Na4p/8Umd+v4rPR17t4JG5HFZP6Q8b4eU23Kiz1SOhEN/cZRKUSY/q5HYl8hu61edcIr
         TFL7XM+nC4+CcbHh3zfJDo20BHGR9dYo/fJR3uvOexdo0SEkThiGLycBpLxI0u8VmsqD
         sJMsL6HMfIfEANZECeHWXjCw6VYNahE1FFy5Xs2hCW1EXp3uZJCTrA7qG/Xiyiym9tMk
         Ihdw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX0gHBgsdLWtzsd/sBKgyiCr2EiTaQdxTdZph/GHwIFr+4Ob7C2
	ekK5B7cAxbZwN5cjgK4gMC8=
X-Google-Smtp-Source: APXvYqw2/dT1cZMBWhNHFNtueLg31/MkyHrC09vb6zZgLHghqxMCXum740TR8UGegeHaNKgNJRB5zA==
X-Received: by 2002:ac8:f3b:: with SMTP id e56mr16278122qtk.123.1565327991673;
        Thu, 08 Aug 2019 22:19:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:d08b:: with SMTP id z11ls1557678qvg.16.gmail; Thu, 08
 Aug 2019 22:19:51 -0700 (PDT)
X-Received: by 2002:a0c:e145:: with SMTP id c5mr1379231qvl.180.1565327991575;
        Thu, 08 Aug 2019 22:19:51 -0700 (PDT)
Received: by 2002:a37:4c06:0:0:0:0:0 with SMTP id z6msqka;
        Wed, 7 Aug 2019 05:38:15 -0700 (PDT)
X-Received: by 2002:a5d:51c7:: with SMTP id n7mr10437667wrv.326.1565181495438;
        Wed, 07 Aug 2019 05:38:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565181495; cv=none;
        d=google.com; s=arc-20160816;
        b=q7Jdtsabfl57bVT+A9VMxGd1+4lp6X99yeKHde4oRJyFe4y7vpHeDl6JRpMxNbdPpE
         VrCMv2E7AIrdsReF1Zf0bi2Y1F9YDY+ZbJpHdkwr7FPDjNS3jRbGfEGGoMhWNdGPm90G
         Sm6sjUHYF+mNFmwwfLmYjk8V3GgzThKB67e55GjYrT7kKL/HVOi2rxQN19BUXUyG6G9Y
         bK5hEFZZK2YGW+eLY4B34jiZ3G9967EA4/9mExhb7peGY61q0l3O+vxyzbceU7uAtaEY
         4PWWchiKM3SwTKU+GSssFhzPycmAEYrpxAjFMLkAlCR1Quo5sOT6Ro5Ar0FmHI1eg6zk
         iv5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=R1FUZOoqqS7GfjWd8Grjff6JekLy5SDqW3q/UBnhXUI=;
        b=P7fbcyYt0gUPXxJLfnAZGjVbL18Gx4N+2S181a0DCE6uahDgQrJqBXMWXYQrjiRaG5
         /jfCkWs3S/KRClOCf1/xn2nAWjgap9sZ+1Owl/tqw4uHvGruJVNaRF/NkvvCwuCYeIo5
         tnJyh/KnoWVmy7Zfxh/yYUp89efpzmJ+SvkO5hjGMClKx/+Gk1jkstq9bFDtGIHwFUKY
         WdeQmAvHmz9WAZ0kdknIjB7GHBRqduCFEwT9Xz6RnKDCSmgBSgAjTnusa69yLIuvytzi
         BZsuj7h6q3RpCBleiAEiZpmf3R/agGH4OjJaMpbZimPTWTqYvwEmFeDQ9dqUWFET3LN/
         2I+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@sirena.org.uk header.s=20170815-heliosphere header.b=ZMln1w1W;
       spf=pass (google.com: domain of broonie@sirena.co.uk designates 2a01:7e01::f03c:91ff:fed4:a3b6 as permitted sender) smtp.mailfrom=broonie@sirena.co.uk;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk. [2a01:7e01::f03c:91ff:fed4:a3b6])
        by gmr-mx.google.com with ESMTPS id o4si1306909wrp.4.2019.08.07.05.38.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Wed, 07 Aug 2019 05:38:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of broonie@sirena.co.uk designates 2a01:7e01::f03c:91ff:fed4:a3b6 as permitted sender) client-ip=2a01:7e01::f03c:91ff:fed4:a3b6;
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
	by heliosphere.sirena.org.uk with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <broonie@sirena.co.uk>)
	id 1hvLCl-0007Vc-Vk; Wed, 07 Aug 2019 12:38:12 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
	id 936522742B9E; Wed,  7 Aug 2019 13:38:09 +0100 (BST)
Date: Wed, 7 Aug 2019 13:38:09 +0100
From: Mark Brown <broonie@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Tri Vo <trong@google.com>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Nathan Huckleberry <nhuck@google.com>
Subject: Re: [PATCH] arm64: Disable big endian builds with clang
Message-ID: <20190807123809.GA4048@sirena.co.uk>
References: <20190806183918.41078-1-broonie@kernel.org>
 <CAKwvOdkvFowCWP6cpKoMOz+EWojBXJWs3TzuTvn4180sVu4ayw@mail.gmail.com>
 <CAKwvOdkBhuzJ9L6L=+_PxSc4u3soB0VsiNUsjt=J55LgdYddnw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jI8keyz6grp/JLjh"
Content-Disposition: inline
In-Reply-To: <CAKwvOdkBhuzJ9L6L=+_PxSc4u3soB0VsiNUsjt=J55LgdYddnw@mail.gmail.com>
X-Cookie: Dammit Jim, I'm an actor, not a doctor.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: broonie@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@sirena.org.uk header.s=20170815-heliosphere header.b=ZMln1w1W;
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


--jI8keyz6grp/JLjh
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On Tue, Aug 06, 2019 at 04:47:23PM -0700, Nick Desaulniers wrote:
> On Tue, Aug 6, 2019 at 2:25 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
> > On Tue, Aug 6, 2019 at 11:39 AM Mark Brown <broonie@kernel.org> wrote:

> +Huck
> Huck notes that the device eventually boots in qemu, it just takes on
> the order of 165 seconds to boot.  What's the timeout on KernelCI?

It's not a timeout in kernelci, it's the kernel timing out being unable
to find something in userspace being booted it can use as /init (there's
a timeout in that process to cope with network filesystems).  IIRC it's
about 2 minutes.  You can see this clearly in the logs I pointed you at:

| You can see a bunch of reports here (all the big endian failures):

|         https://kernelci.org/boot/all/job/next/branch/master/kernel/next-20190730/

For example:

	https://storage.kernelci.org/next/master/next-20190730/arm64/defconfig+CONFIG_CPU_BIG_ENDIAN=y/clang-8/lab-baylibre/boot-meson-gxbb-nanopi-k2.html

> I think if we can determine why we see:
> [  144.626755] request_module: kmod_concurrent_max (0) close to 0
> (max_modprobes: 50), for module binfmt-4c46, throttling...
> [  149.752826] request_module: modprobe binfmt-4c46 cannot be
> processed, kmod busy with 50 threads for more than 5 seconds now

> a lot, then we don't actually need to disable this outright when
> building w/ Clang?

Those error messages are happening because the kernel can't figure out
how to execute a binary it's trying to run, like I say the module it's
trying to load is binfmt_misc.  If the kernel can't work out how to
execute userspace it's not terribly useful.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190807123809.GA4048%40sirena.co.uk.

--jI8keyz6grp/JLjh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1Kxi4ACgkQJNaLcl1U
h9Clsgf+Pt9gkO7L/m6//B2rM1sH7IqlaJFgFakXKhwc+mXgyluBueiq9uVfUBb2
qXfklo1W0kHMl1mtRo6Avr8hv64Vi6vAKob6Rgle6q7rNJwGlFgtNepK8Zx6vViD
3wmT4+UfGF5IGTXIfxirv/zd0XUlPECkW4aCJyiCpZh/zkO513uBf2+JgfYR3v7q
rW09ohLuzauwUj413IsWUc0VMi3ESgOXFBH4aHiq8ynTGCC2TLvRq1Z7ci3moLt5
/W72POri+kCfI8BPeD/KOSJi15IY4zWIrhUO7IEfFbtw8Ox6ShBH5X177tmh3FzT
r/T4HbCzPsWnvx9RuQEhbPVS7P+zvQ==
=SfJU
-----END PGP SIGNATURE-----

--jI8keyz6grp/JLjh--
