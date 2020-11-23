Return-Path: <clang-built-linux+bncBCKIT2MIT4IBBU6X576QKGQEKZQPMDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B1962C114E
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Nov 2020 18:05:25 +0100 (CET)
Received: by mail-pg1-x538.google.com with SMTP id c19sf12980036pgj.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Nov 2020 09:05:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606151124; cv=pass;
        d=google.com; s=arc-20160816;
        b=yGp5TYoqk25KXpesXyTqez49M5UXeAdqHD4LcJFZ2ZM6bgPkz3w06mI7WtLa0UPKHd
         Y/Jd6hMCtw/DieSruzZH2qC9GfRiI0ZUpP1Bw/WGRzQxOz/3beR0QFpuj9MHFS4fStOP
         usmsEwDFAJcCKWLQPZfUwJx1vAUcqP4vQ4U7P6vyyyXHHrfnaVPPMuC+cv3Xe+QhmDTv
         B3eUlv//aA8vKoY1bVjbvfGL6G0JaetrkcZY5WcjE9JNu1Z+tUA+pQtI4+J1A0r3OdMf
         QVS9LgFsy19aNguAm5St6Rno4EXo8eJPX5EEaUqbZsqzVqsGE3xIpBEHdsIWsxB55lQU
         YHbw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=WrKI7NmNivbn1pc2rKAeYEEP7kwXtmnlmIT6N5I5KIw=;
        b=cJTPQ+X+RCk9Ohf9Kpyhk3WzKqgSMIlqbE61euIO8QlknJUQB0+fQz0Mb/iO7dS932
         YggvFGff1QM6sCGn48mOg5qdFgR3v8JH2r+cjd3M7rIrF+WVa0qQa4WXmy2ud9RyxkH4
         DObk4zdSvcfr512nI/eNxD9RWt5dr3NqI/nYUUcihl6SKAOG9F8DX4ehT1uQhqNo+GtP
         DUATkm5q0jdEKwXWbQjm6kEhieGiQ43iNimPZk9ud+dmQnYqDCiXbRCpdpjLNRL0/WU/
         rW+rWI5Yu3y6EZW93P/Vqxipb9nXdTkwOAzK6WdDppXdJhV10sBaUKe0lKproZlCKBqR
         iBpA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=xz7fmpB9;
       spf=pass (google.com: domain of dan.rue@linaro.org designates 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=dan.rue@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WrKI7NmNivbn1pc2rKAeYEEP7kwXtmnlmIT6N5I5KIw=;
        b=GkbMz2E9pVef19PVaW2NvPohSTBbMM38liUQSYJbSkEb0xxrwbBhhG83thm9B4BJ2S
         b4h9Fi3YGfUWeaRIgvJm9O6kSIjOD2TrJa8bKvqRA+5wO5sE1FXWjvEhX4KvTBYTK1FE
         OxgQOzfk3W7KmumIZxpAMp4N6a3SdZIRU0fQfnfSatRlHZ4vYl/Ahly06mWC12Fu6P9z
         U2HavgEsOGZSXA/Zmu9bxDwOM3Som0/ZDUP9ZymGLw7Dj7vGOQKNkZimQ6UiAAJ8Marq
         FgQ0/81ZhdZ1tXCGYF1NEaG5XWUcq/ejQDmmzKi/quu/Fk8Hs+xeE0wT2brieHpGy3hN
         Nugg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WrKI7NmNivbn1pc2rKAeYEEP7kwXtmnlmIT6N5I5KIw=;
        b=FkeJGSkyCxKBQ5B3T6VmP/szNFg+BxQJaNgvKxQ6WPNy/rIZarm3VA7rF+ptPaWxQv
         OHDnj9HmRe68F29RaqTjQgFx2MgYyLwwnL5iJUBC/f8/JFesCkTH8HknTU2WiCWV2WWK
         DjOmhRJOnnrQNLUcD3izaRroB1SeyDXZ+KSmzTAVJgaz0Kbc+6d4GGmp3F9TSYmI27U3
         ozL+w/bOBrbMnFagLBexXsmgjsWBB/Lhx25AZ8xCndSUOqJk9bU3I5+OP5Ju7miAMTjT
         PgGJvSbrbLa33l/A0X1rsOpHAepVXc09nJwnyqho1r1nMqzYYJGuI1/TzRPp1J6Aj4J+
         L/jQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530i8SRhy0vrLqvFHqX/9cP0HZYE9ndmXjPYPBPwSozli+nMl3zN
	h/JIyTDK0uYUlziqh6w6xbQ=
X-Google-Smtp-Source: ABdhPJzMz32AoSR6NiyGg65vj57KaZ+l/HdM9MzoeuwqqCHWOkjlquqcTPLvtEjqKEFM6fycZuGUtQ==
X-Received: by 2002:a17:90a:7409:: with SMTP id a9mr786661pjg.48.1606151123958;
        Mon, 23 Nov 2020 09:05:23 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:c113:: with SMTP id 19ls6465604pli.11.gmail; Mon, 23
 Nov 2020 09:05:23 -0800 (PST)
X-Received: by 2002:a17:90a:5310:: with SMTP id x16mr764120pjh.62.1606151123322;
        Mon, 23 Nov 2020 09:05:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606151123; cv=none;
        d=google.com; s=arc-20160816;
        b=otlxId8BSkArBakmXTdwoX5XHlxUidI5CW0x+aiQhAS6KbbA7V18GMJu8AnOD9W0uL
         e8aBhNph1aZ6ChJkVBq2DwgLO2I5fgyVJKvgiB6gUmz2tiUZPOgCT0zUcIRfZGcU/PcD
         zw4KG/hwBLX8ca9EZNoXHVSOGwMndNm2gmNodof6RdpOp9zIld2L82B79j0KHICdlwRf
         E9aegI9d/ARVemYTlnJIQkgN+97zEjdT4gsBJ1B+4qC3xaL/LUqqRt0bKJHaEZEPXydE
         Ud4c3cVm8t3LGRB+p1wCFa4hHl8Nk7Rmh9YG9CuMlNs4NTUYHmWm0n7jOeLdvulaN6q7
         R8Qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=3AUOMFLcw6vZd2EWe2qimf2Dfa9bQV3gX6bGXpq+ZrE=;
        b=H3QHTuDj6M+H6AE+tjvMperb2WJL4PtvbijABfOXVdfFAOkDBtV8NCK9+yuVcixstI
         7+flFDIembD3tPw2faD+YHHZfByGmCDxb/3K/WJbmqGefFMPqsLWc7JLmRKUYA+PuF+V
         SFjwxGpyt3+ITr+3ssx6SqVVDzUxtiRzjaZp7ll5Z9/BaVChdFVqnGPnV4hDODaq1xm/
         VpSif0QW0L3YpaSRtO/dXWGWFRk4qdxUL9pQ+DyhEKF8vjyfEZXlnDaQ6FFf/VymOr4E
         JeMBsmZxipivUEy8bwu8fUIoYfICgkleTCj+GDYzGSwvsXDmVxQZBr5v9cMGybqi1g4x
         teag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=xz7fmpB9;
       spf=pass (google.com: domain of dan.rue@linaro.org designates 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=dan.rue@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-io1-xd43.google.com (mail-io1-xd43.google.com. [2607:f8b0:4864:20::d43])
        by gmr-mx.google.com with ESMTPS id o2si929444pjq.0.2020.11.23.09.05.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Nov 2020 09:05:23 -0800 (PST)
Received-SPF: pass (google.com: domain of dan.rue@linaro.org designates 2607:f8b0:4864:20::d43 as permitted sender) client-ip=2607:f8b0:4864:20::d43;
Received: by mail-io1-xd43.google.com with SMTP id u21so18829503iol.12
        for <clang-built-linux@googlegroups.com>; Mon, 23 Nov 2020 09:05:23 -0800 (PST)
X-Received: by 2002:a05:6638:cb3:: with SMTP id x19mr446228jad.100.1606151116267;
        Mon, 23 Nov 2020 09:05:16 -0800 (PST)
Received: from localhost ([2601:441:27f:8f73:605:ba2b:f48d:e614])
        by smtp.gmail.com with ESMTPSA id c2sm8001142iln.70.2020.11.23.09.05.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Nov 2020 09:05:14 -0800 (PST)
Date: Mon, 23 Nov 2020 11:05:13 -0600
From: Dan Rue <dan.rue@linaro.org>
To: Guillaume Tucker <guillaume.tucker@collabora.com>
Cc: tuxbuild <tuxbuild@linaro.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	kernelci@groups.io
Subject: Re: TuxBuild Now Supports Clang 11 and 5 new architectures
Message-ID: <20201123170513.mdfs53skfdcux7jm@jug>
References: <CAGm4vTM-ozY8wSsuZhqCsz8qnrjaCRkmLnLJVkuYB6sVUaqnuQ@mail.gmail.com>
 <b455831c-1205-551f-6bb2-6bb33b750d17@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <b455831c-1205-551f-6bb2-6bb33b750d17@collabora.com>
X-Original-Sender: dan.rue@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=xz7fmpB9;       spf=pass
 (google.com: domain of dan.rue@linaro.org designates 2607:f8b0:4864:20::d43
 as permitted sender) smtp.mailfrom=dan.rue@linaro.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Thu, Nov 19, 2020 at 09:13:41AM +0000, Guillaume Tucker wrote:
> Hi Dan,

Hi Guillaume!

>=20
> On 17/11/2020 21:41, Dan Rue wrote:
> > Cheers!
> >=20
> > Today we've deployed support for clang-11, and we dropped support for c=
lang 8 and 9 based on user feedback.
> >=20
> > In addition, we have added the following architectures with gcc 8, 9, a=
nd 10:
> > - s390
> > - powerpc
> > - sparc
> > - hppa
> > - sh
> >=20
> > TuxBuild's full support matrix is as follows:
> >=20
> > =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0arc arm arm64 hppa i386 mips powerpc =
riscv s390 sh =C2=A0sparc x86_64
> > clang-10 no =C2=A0yes yes =C2=A0 no =C2=A0 yes =C2=A0yes =C2=A0no =C2=
=A0 =C2=A0 =C2=A0yes =C2=A0 no =C2=A0 no =C2=A0no =C2=A0 =C2=A0yes
> > clang-11 no =C2=A0yes yes =C2=A0 no =C2=A0 yes =C2=A0yes =C2=A0no =C2=
=A0 =C2=A0 =C2=A0yes =C2=A0 no =C2=A0 no =C2=A0no =C2=A0 =C2=A0yes
>=20
> Out of interest, are there builds produced with tuxbuild for all
> the supported configurations that can be downloaded with a build
> log?

I don't think there's anything published, but Antonio might have
something related to the container tests that are done in tuxmake before
publishing new containers.

>=20
> I've just been working on building riscv with Clang for KernelCI
> and there are quite a few issues, we've dropped clang-10 as it's
> actually broken.  So I wonder if you define "supported" solely by
> having a Docker image and the ability to start a build, or if
> it's required to actually complete a kernel build?
>=20
> See related discussion about riscv here:
>=20
>   https://github.com/kernelci/kernelci-core/pull/534

If there is a legitimate problem in the kernel sources or in a toolchain
implementation, the tuxmake would be expected to fail, and tuxmake
shouldn't work around things that are broken.

If tuxmake is doing the wrong thing, then it's a bug that we should fix.

If a combination might work but currently doesn't, tuxmake can support
it. If it will never work, we won't bother.

`tuxmake -r podman -t riscv -t clang-10` works for me on v5.10-rc5.
Here's the tuxbuild of the same, with logs and such:
https://builds.tuxbuild.com/1khN9GYmp4AKa1g6m4MwM7yhgnE/

>=20
>=20
> > gcc-10 =C2=A0 no =C2=A0yes yes =C2=A0 yes =C2=A0yes =C2=A0yes =C2=A0yes=
 =C2=A0 =C2=A0 yes =C2=A0 yes =C2=A0yes yes =C2=A0 yes
> > gcc-8 =C2=A0 =C2=A0yes yes yes =C2=A0 yes =C2=A0yes =C2=A0yes =C2=A0yes=
 =C2=A0 =C2=A0 yes =C2=A0 yes =C2=A0yes yes =C2=A0 yes
> > gcc-9 =C2=A0 =C2=A0yes yes yes =C2=A0 yes =C2=A0yes =C2=A0yes =C2=A0yes=
 =C2=A0 =C2=A0 yes =C2=A0 yes =C2=A0yes yes =C2=A0 yes
> >=20
> > We're still updating the tuxbuild documentation, but the new toolchains=
 and architectures are available immediately without a tuxbuild update (the=
 argument validation is all done server-side).
> >=20
> > Now that we have TuxMake integration which is enabling these new featur=
es, we would like to add tuxmake build reproducers to tuxbuild. A build rep=
roducer is a simple one-line shell script provided alongside the other tuxb=
uild artifacts, which contain the tuxmake command-line invocation to perfor=
m the same build locally. For example:
> >=20
> > =C2=A0 =C2=A0 $ cat tuxmake_reproducer.sh
> > =C2=A0 =C2=A0 tuxmake --runtime docker --image docker.io/tuxmake/arm64_=
clang-11 <http://docker.io/tuxmake/arm64_clang-11> --target-arch arm64 --kc=
onfig defconfig --kconfig-add "CONFIG_KASAN=3Dy" --toolchain clang-11
>=20
> That's nice but I believe it would be easier to adopt if the
> syntax was simpler.  For example:
>=20
>   tuxmake --runtime docker --target-arch arm64 --kconfig defconfig --kcon=
fig-add "CONFIG_KASAN=3Dy" --toolchain clang-11
>=20
> or if you really want to keep the docker image mentioned to
> ensure reproducibility:
>=20
>   tuxmake --runtime docker --image docker.io/tuxmake/arm64_clang-11 --kco=
nfig defconfig --kconfig-add "CONFIG_KASAN=3Dy"
>=20
> I can see why you would want to define all the parameters
> explicitly, but it seems like there's some repetition there.  If
> the docker image is already arch-specific, then do you also need
> to specify the arch as a separate parameter?

You're right, --image in the above example was superfluous. We were
struggling to decide how granular to be with reproducers because you can
be as simple as:

    tuxmake --runtime docker --target-arch x86_64 --kconfig defconfig --too=
lchain gcc

And as "correct" as e.g.:

    tuxmake --image docker.io/tuxmake/x86_64_gcc@sha256:f8218cbfad8ecf6628f=
c44db864a402070feb87ff43a880e1409649172d4bc8c -r docker --target-arch x86_6=
4 --kconfig tinyconfig --toolchain gcc -e "KBUILD_BUILD_TIMESTAMP=3D'Tue Ma=
y 26 16:16:14 2020 -0500'" -e "KBUILD_BUILD_USER=3Dtuxmake" -e "KBUILD_BUIL=
D_HOST=3Dtuxmake"

The latter provides (at least potentially) an actual reproducible build,
but the former is simpler and usually sufficient.

We decided to favor simplicity and all tuxbuilds now publish a
tuxbuild_reproducer.sh and tuxmake_reproducer.sh which consists of the
simple version of the command.

For example in the risc5/clang-10 build from above, we see the following
two reproducers now:

tuxbuild_reproducer.sh:
https://builds.tuxbuild.com/1khN9GYmp4AKa1g6m4MwM7yhgnE/tuxbuild_reproducer=
.sh

    #!/bin/sh

    tuxbuild build --git-repo https://git.kernel.org/pub/scm/linux/kernel/g=
it/torvalds/linux.git --git-sha 418baf2c28f3473039f2f7377760bd8f6897ae18 --=
target-arch riscv --toolchain clang-10 --kconfig defconfig


tuxmake_reproducer.sh:
https://builds.tuxbuild.com/1khN9GYmp4AKa1g6m4MwM7yhgnE/tuxmake_reproducer.=
sh

    #!/bin/sh

    tuxmake --runtime docker --target-arch riscv --toolchain clang-10 --kco=
nfig defconfig


Hope that helps!
Dan

>=20
> Best wishes,
> Guillaume
>=20
> > As a kernel developer, would you appreciate receiving such a command as=
 a part of a build discussion on a mailing list?
> >=20
> > Would you send something like that to your colleagues?
> >=20
> > Do you find the concept of a local reproducer helpful?
> >=20
> > Thanks again to everyone using and supporting TuxBuild and TuxMake - we=
 see you and we appreciate you,
> >=20
> > Dan
> >=20
> > p.s. Did you know that it's possible to perform actual reproducible bui=
lds with tuxmake? It's true. Try it for yourself, and see if your bzImage s=
ha256sum matches:
> >=20
> > =C2=A0 =C2=A0 $ git describe
> > =C2=A0 =C2=A0 v5.10-rc4
> > =C2=A0 =C2=A0 $ tuxmake --image docker.io/tuxmake/x86_64_gcc@sha256:f82=
18cbfad8ecf6628fc44db864a402070feb87ff43a880e1409649172d4bc8c <http://docke=
r.io/tuxmake/x86_64_gcc@sha256:f8218cbfad8ecf6628fc44db864a402070feb87ff43a=
880e1409649172d4bc8c> -r docker -k tinyconfig -e "KBUILD_BUILD_TIMESTAMP=3D=
'Tue May 26 16:16:14 2020 -0500'" -e "KBUILD_BUILD_USER=3Dtuxmake" -e "KBUI=
LD_BUILD_HOST=3Dtuxmake"
> > =C2=A0 =C2=A0 ...
> > =C2=A0 =C2=A0 $ sha256sum /home/drue/.cache/tuxmake/builds/634/bzImage=
=C2=A0
> > =C2=A0 =C2=A0 5581ed4583fb4b9d76760ee329e248fe7281d7ea3b6ae0737efc7a6a4=
462affa =C2=A0/home/drue/.cache/tuxmake/builds/634/bzImage
> >=20
> > p.p.s. Did you know that tuxmake also supports podman? Just use -r podm=
an instead of -r docker.
>=20

--=20
Linaro LKFT
https://lkft.linaro.org

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20201123170513.mdfs53skfdcux7jm%40jug.
