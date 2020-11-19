Return-Path: <clang-built-linux+bncBC5KPPH4YUKRBSPO3D6QKGQEYB4I5FY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 577182B8E70
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Nov 2020 10:13:46 +0100 (CET)
Received: by mail-lf1-x137.google.com with SMTP id a14sf1892191lfo.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Nov 2020 01:13:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605777226; cv=pass;
        d=google.com; s=arc-20160816;
        b=THIjYmE1lCvZfbutvxQIF3+4qc1HcmHXGcUHaGYD0h9dWXT8/LtgF9FYb0mTx3Fm9N
         qww/Ge7TTCWxDf8DuINt3+OrkWKUFAIx8pLdqu/SvvAiKeibnm1LIVKkxmF2AhbOLidQ
         GYfbJboTEuWbkEV61HyNggnFbhfNylWZK8nr5QkKg2bO2cqkOX4UdU69cMGaGqvWCCHw
         mNOOlIZxXQgE6bN+McFsIxkbwt1J10QsHlHmdzyXPJlZAEhBgBd9qefN/rLFnd+VXxyn
         pjlO4JZuIghKDiNe0IrJx/JiSNcYjWZG4afebdLpQEOgES93LeWwRivtR0eM4/EmW/97
         nK3w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:cc:references:to:subject:sender:dkim-signature;
        bh=RYNCWhSzved8GqAhwq2MM786uBlniWKDkh/vNOp9uSA=;
        b=vCWKLgBXuxPDuudcZ6TcFuToiHnO2CR3miHLnLmDR3cbsGiJ/HeRZexWg8ul/W2epe
         VPbaI8lrG7irKy99wOHWL+itv1JCjFahP+8DD6dQq2ZM/x+z1ll9w4DZLX4pczcBEwnK
         peujUmXchFU8GJJzr0puKpHwy0j296gInDfal/JNUwRtOzioMTdgu0/s02Kv0LeKuicN
         6yLPaDkRp9uistSBFUU1QA3LCAnFtvYfxfsaIxSC/QlLWahYDqcDLyOR1BqNsf4qJ+qp
         xzG2+1JW9izaeqTzyx489naGEmWj9lLlmP2sDe25paeWKei8xoP0ZxHo7zex7WC4lzsb
         qEIA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of guillaume.tucker@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=guillaume.tucker@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:references:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RYNCWhSzved8GqAhwq2MM786uBlniWKDkh/vNOp9uSA=;
        b=i77AWEboa4qjAq28jmf3nK43DZV9ErQmSbl61XC9hvqzsZHkfcBR9cOveowxlsPBiu
         fmQpUZMyfTARsoePRm2VQT2kD5krPsvVUkHELGtP6n2eGWDehPVS3Cc4qdLccO14WjBl
         p92nemuiug2+PkPg0QtNpvNi0P5H2ETzIBK1Mj01wFSTcSCutLSN1TVxRSfz1Bbf7AHZ
         nWrByxz4ndVD+vBeQDyXzi4oxHOJRta1JRDkeacnPatIHnEuNFKWkX6VnZAk/Pzqc0hX
         ygzYR3riRtxc0A7SWTxnV9l2WNksBTYHYu/+sDArY9RhojuqCpC+AABwV4wVCH/4Dn9O
         ds/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:references:cc:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RYNCWhSzved8GqAhwq2MM786uBlniWKDkh/vNOp9uSA=;
        b=er07YO4Kxp8S/G6R3SGrAXEaSs84qj6EvQgb1ubKoiJKUGK22fx3eYylofxqJKMmnt
         KMyIDWp/KsjQqO42Qnta9inKxL3csMlep/cy16q8+FxFP98Bq09+F3lVeDw8DjG/gg6b
         F2BsiBlBxSCqTLeUoMuYPojTNkkLTcE0eqbLK09JcWAySK/AdzgZsXZXQQiwCv7ipBlU
         0HuF/LI90d5fZZ1fMzDIfc3Qjzevh/+oVcWixxpj9i/Bffsoqg3N7jbnhMaEwZLt+cHi
         rt3MnSykMTgeLHKMutnBZOEPlgOCtB50SRXeeXTP2cVlApVnJH0shEKOmhKGfbpkNVoW
         mDIg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531wqy1wB3d7KVfNtesML8Dt4A/9/Gu50acSU8mfFyT+u9g/YW1q
	2lC0vf+IgxjqvbNfUHW3y64=
X-Google-Smtp-Source: ABdhPJyZdFPcZznYa/s7tFqtYuUC5E8Ck1gWZvehEnyprhSA9QaivutU8H78qlETYs7La7FABbUIrQ==
X-Received: by 2002:a05:6512:405:: with SMTP id u5mr5947757lfk.286.1605777225804;
        Thu, 19 Nov 2020 01:13:45 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:480e:: with SMTP id v14ls1461166lfa.2.gmail; Thu, 19 Nov
 2020 01:13:44 -0800 (PST)
X-Received: by 2002:a19:8252:: with SMTP id e79mr5763785lfd.82.1605777224387;
        Thu, 19 Nov 2020 01:13:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605777224; cv=none;
        d=google.com; s=arc-20160816;
        b=c856/vZE022w2N9knKzE5wacj6UVXzVZB3D8Uaj2OzKKp23fJ3UKcUtouy3VuSLryR
         joojQ44p+qdvZYnZbb67ZM6zMoa0nLxVuj20cv+ndWNU+kueZ2w89mIza3X7mzgG8Yf/
         gWgccfehomSKIKOoCXhRK6c9ZqIJOQjO56c/v72rdvwoz4OgJp6ZF8FgevCcGAFEF8j2
         8BZFFs2sDYY+LQgs0/qFcRJdFpC8GurN6V/DhWrlPGVMUGFV/eVZGh6u26MwZtfE/XMr
         o0Cen5Au3jWpYZRfmgbIpGEJS2eqd5Fi/Jo2fXSsJRafSInv7YbuPMIlQ0lR2wpvqpBy
         EdJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:cc:references:to:subject;
        bh=nf1AkrSkQ/juGu2//U64PePoEduve9A0LFZQqd03QUE=;
        b=lnFRIYIUpoQrp5ns7rHqk/yTY6cwZwLSnbCxoDEMOhtW8Gqj+J0n4Un+XiQuUd02yH
         6ZPtXdwV6z2W/rmD/FglUSqN0+oYsavYQm1WdSZFzg4A60rFrB/xkj33XcrJW9XmLI+x
         95PGHuMx4G9563mEyEVbqkTVLiVxXLnp8tewE6fVU9rIMTvJY72wGIB4RQlcpUzYrOCR
         1dbB0SHxNnz3xZg6XC/ywKr6YzZKzwm7xGFOw6IIztdaz7+a2vNJEfu++UDDWGOH1f8n
         7Yqz+Z7qqJjGPczYxwrZCJyObUX7UET8zWYpHKaDTWonDJ7Iu8X6T7NwePL5jWsK3KP1
         bgDA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of guillaume.tucker@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=guillaume.tucker@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [2a00:1098:0:82:1000:25:2eeb:e3e3])
        by gmr-mx.google.com with ESMTPS id v2si567398ljd.5.2020.11.19.01.13.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 19 Nov 2020 01:13:44 -0800 (PST)
Received-SPF: pass (google.com: domain of guillaume.tucker@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) client-ip=2a00:1098:0:82:1000:25:2eeb:e3e3;
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: gtucker)
	with ESMTPSA id 6901E1F4561A
Subject: Re: TuxBuild Now Supports Clang 11 and 5 new architectures
To: Dan Rue <dan.rue@linaro.org>
References: <CAGm4vTM-ozY8wSsuZhqCsz8qnrjaCRkmLnLJVkuYB6sVUaqnuQ@mail.gmail.com>
Cc: tuxbuild <tuxbuild@linaro.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>, kernelci@groups.io
From: Guillaume Tucker <guillaume.tucker@collabora.com>
Message-ID: <b455831c-1205-551f-6bb2-6bb33b750d17@collabora.com>
Date: Thu, 19 Nov 2020 09:13:41 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.2
MIME-Version: 1.0
In-Reply-To: <CAGm4vTM-ozY8wSsuZhqCsz8qnrjaCRkmLnLJVkuYB6sVUaqnuQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: guillaume.tucker@collabora.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of guillaume.tucker@collabora.com designates
 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=guillaume.tucker@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
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

Hi Dan,

On 17/11/2020 21:41, Dan Rue wrote:
> Cheers!
>=20
> Today we've deployed support for clang-11, and we dropped support for cla=
ng 8 and 9 based on user feedback.
>=20
> In addition, we have added the following architectures with gcc 8, 9, and=
 10:
> - s390
> - powerpc
> - sparc
> - hppa
> - sh
>=20
> TuxBuild's full support matrix is as follows:
>=20
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0arc arm arm64 hppa i386 mips powerpc ri=
scv s390 sh =C2=A0sparc x86_64
> clang-10 no =C2=A0yes yes =C2=A0 no =C2=A0 yes =C2=A0yes =C2=A0no =C2=A0 =
=C2=A0 =C2=A0yes =C2=A0 no =C2=A0 no =C2=A0no =C2=A0 =C2=A0yes
> clang-11 no =C2=A0yes yes =C2=A0 no =C2=A0 yes =C2=A0yes =C2=A0no =C2=A0 =
=C2=A0 =C2=A0yes =C2=A0 no =C2=A0 no =C2=A0no =C2=A0 =C2=A0yes

Out of interest, are there builds produced with tuxbuild for all
the supported configurations that can be downloaded with a build
log?

I've just been working on building riscv with Clang for KernelCI
and there are quite a few issues, we've dropped clang-10 as it's
actually broken.  So I wonder if you define "supported" solely by
having a Docker image and the ability to start a build, or if
it's required to actually complete a kernel build?

See related discussion about riscv here:

  https://github.com/kernelci/kernelci-core/pull/534


> gcc-10 =C2=A0 no =C2=A0yes yes =C2=A0 yes =C2=A0yes =C2=A0yes =C2=A0yes =
=C2=A0 =C2=A0 yes =C2=A0 yes =C2=A0yes yes =C2=A0 yes
> gcc-8 =C2=A0 =C2=A0yes yes yes =C2=A0 yes =C2=A0yes =C2=A0yes =C2=A0yes =
=C2=A0 =C2=A0 yes =C2=A0 yes =C2=A0yes yes =C2=A0 yes
> gcc-9 =C2=A0 =C2=A0yes yes yes =C2=A0 yes =C2=A0yes =C2=A0yes =C2=A0yes =
=C2=A0 =C2=A0 yes =C2=A0 yes =C2=A0yes yes =C2=A0 yes
>=20
> We're still updating the tuxbuild documentation, but the new toolchains a=
nd architectures are available immediately without a tuxbuild update (the a=
rgument validation is all done server-side).
>=20
> Now that we have TuxMake integration which is enabling these new features=
, we would like to add tuxmake build reproducers to tuxbuild. A build repro=
ducer is a simple one-line shell script provided alongside the other tuxbui=
ld artifacts, which contain the tuxmake command-line invocation to perform =
the same build locally. For example:
>=20
> =C2=A0 =C2=A0 $ cat tuxmake_reproducer.sh
> =C2=A0 =C2=A0 tuxmake --runtime docker --image docker.io/tuxmake/arm64_cl=
ang-11 <http://docker.io/tuxmake/arm64_clang-11> --target-arch arm64 --kcon=
fig defconfig --kconfig-add "CONFIG_KASAN=3Dy" --toolchain clang-11

That's nice but I believe it would be easier to adopt if the
syntax was simpler.  For example:

  tuxmake --runtime docker --target-arch arm64 --kconfig defconfig --kconfi=
g-add "CONFIG_KASAN=3Dy" --toolchain clang-11

or if you really want to keep the docker image mentioned to
ensure reproducibility:

  tuxmake --runtime docker --image docker.io/tuxmake/arm64_clang-11 --kconf=
ig defconfig --kconfig-add "CONFIG_KASAN=3Dy"

I can see why you would want to define all the parameters
explicitly, but it seems like there's some repetition there.  If
the docker image is already arch-specific, then do you also need
to specify the arch as a separate parameter?

Best wishes,
Guillaume

> As a kernel developer, would you appreciate receiving such a command as a=
 part of a build discussion on a mailing list?
>=20
> Would you send something like that to your colleagues?
>=20
> Do you find the concept of a local reproducer helpful?
>=20
> Thanks again to everyone using and supporting TuxBuild and TuxMake - we s=
ee you and we appreciate you,
>=20
> Dan
>=20
> p.s. Did you know that it's possible to perform actual reproducible build=
s with tuxmake? It's true. Try it for yourself, and see if your bzImage sha=
256sum matches:
>=20
> =C2=A0 =C2=A0 $ git describe
> =C2=A0 =C2=A0 v5.10-rc4
> =C2=A0 =C2=A0 $ tuxmake --image docker.io/tuxmake/x86_64_gcc@sha256:f8218=
cbfad8ecf6628fc44db864a402070feb87ff43a880e1409649172d4bc8c <http://docker.=
io/tuxmake/x86_64_gcc@sha256:f8218cbfad8ecf6628fc44db864a402070feb87ff43a88=
0e1409649172d4bc8c> -r docker -k tinyconfig -e "KBUILD_BUILD_TIMESTAMP=3D'T=
ue May 26 16:16:14 2020 -0500'" -e "KBUILD_BUILD_USER=3Dtuxmake" -e "KBUILD=
_BUILD_HOST=3Dtuxmake"
> =C2=A0 =C2=A0 ...
> =C2=A0 =C2=A0 $ sha256sum /home/drue/.cache/tuxmake/builds/634/bzImage=C2=
=A0
> =C2=A0 =C2=A0 5581ed4583fb4b9d76760ee329e248fe7281d7ea3b6ae0737efc7a6a446=
2affa =C2=A0/home/drue/.cache/tuxmake/builds/634/bzImage
>=20
> p.p.s. Did you know that tuxmake also supports podman? Just use -r podman=
 instead of -r docker.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/b455831c-1205-551f-6bb2-6bb33b750d17%40collabora.com.
