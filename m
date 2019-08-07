Return-Path: <clang-built-linux+bncBAABB54EWTVAKGQENDONTKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83b.google.com (mail-qt1-x83b.google.com [IPv6:2607:f8b0:4864:20::83b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E37187156
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Aug 2019 07:19:52 +0200 (CEST)
Received: by mail-qt1-x83b.google.com with SMTP id z93sf5795328qtc.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Aug 2019 22:19:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565327991; cv=pass;
        d=google.com; s=arc-20160816;
        b=bQJ3lJiVAj/dha8su+P1R95WgMc/j3xMvsnwsyMQIWsVQ6FUkL7wW99pPXPDTEbuNR
         UEEdZd+k9AHy9bAC6oKBC2Ng/WoFib5MOI2x3IKBzAtylH01RDcuMd3/JyfHyvBsKz95
         2zZ492BEyeT/wSIZY6r5Za9u5JLUQOjE8025S+CyxuYe7SVTeQ9dOvFkFrN/dcSFJkVb
         Fo2kEnTBZjmD8uWZhs0JccLngQomiSIvUQeaGS+Fxowzor7HdPQ8GOV1MEVEhbfnsSlB
         kEcpL2Q9HorcW0fdtPjLLbf8OMZloH2qZlFU5QxJJdbbJHtvC+oWLciFAG+X3nst+6Yc
         stHg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=/HOtqO/vWVsw/HexHPRVl9F2Gv6WalxpGmFZS/Z7Pn4=;
        b=GXGckzsZtsD1tbk5FoMvc/C9zAv7ZDvbC3hifSY8SvOwz2GHnBJKpwFK/zBgf+FOkx
         hMSIa59AkKeXRC9JU9pSkmIny0XDFK8ePfoN532sjNMazYUjh/MNscxtp53P2q9i+xG7
         bRUykemU+Cv7uwVis6p6vXxpxxS4vK1KixFznhSYwjnaALyc8YICxmKfFxiWBxXe8jes
         /dWvCEqnWIjnga2P0RuLWou4CGgMmpk2+7tgSabusEXL5YztnQzZl76h8vZkrnSsi2i2
         fc2XLsr/JrnceX1RGMR4fnMRtPLf31BbJa7KHLcOzZqFRBLYFcsfv15NVDR+3PHnjNBh
         u+6w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@sirena.org.uk header.s=20170815-heliosphere header.b=aLUr6Sze;
       spf=pass (google.com: domain of broonie@sirena.co.uk designates 2a01:7e01::f03c:91ff:fed4:a3b6 as permitted sender) smtp.mailfrom=broonie@sirena.co.uk;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/HOtqO/vWVsw/HexHPRVl9F2Gv6WalxpGmFZS/Z7Pn4=;
        b=PzlRHCh3ICsrQakULqOD/UqC2sYtMGrMljsspo7MuuD71fGCA53RXMpPFzTaplzb7c
         aPEftGdn4hPgppJ35rp/Yi36CVsQq7FCr/IBD7xtJ8TAhuYDDtDCWPZRCY6f0S6mLW4/
         KtXKExiIUcR7beAMpMadyCgAc11wlEAgZzQxZYBHEriqvLebZT02K3oyGNYSKIUt6rT5
         EAdZhXtAMFtsx4U8JUXCF8bXQAcIbD1FzYNwk4NZUI4pH6o8KVJyaP81/rliale+BzWl
         Yo1fO31Zr689x3sEE3qINP+/reUes3fIKxhkheIxttljThLzjWOgkuFZ52o51Q8abPtp
         40BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/HOtqO/vWVsw/HexHPRVl9F2Gv6WalxpGmFZS/Z7Pn4=;
        b=csxU1+GQjxjNbg/HLIqagyNLB+ZYInqY0StWfSWj8ffdoK+FefQOXS1WROqIrKM4sb
         FT/tl6389LBPg/V66UOQ/9TWfr3Y+nY5TJkg9bZYi1clo58ocWUiWdiCP+0fne0snxwH
         LIdOc1LGSoaGIr7a7C4aAVDxtznWJ31e3r3ffnjvly3JUHXk5bn2CGgmWMNCxaMZYM3D
         sckfLVikePHPPVNk1WCfHsKENOqeh8LOl8XRVCG4H55piG0BhTL62UUvh2H773UPROUg
         WnzR+QXpBPYNANvsWL6gKorvNVewKQv0hbh5bYLtXtydRb6hXBbCUpz9QAHXfgjHxgVK
         POrQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWXShJi3b68BfW73/m4CsxB72w57e5kEPKYiDBXQDheMu52xBf0
	p48WYAItaY2E5gZZjhUtCPc=
X-Google-Smtp-Source: APXvYqyQJ5an70tsW8OEWtH1XwdMR8URQnoxVYS1yw8sdzn7UjraxfJqWDXUB9h6HujFr0XqPqiAYA==
X-Received: by 2002:a37:a603:: with SMTP id p3mr16743373qke.297.1565327991720;
        Thu, 08 Aug 2019 22:19:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:7804:: with SMTP id t4ls3116198qkc.16.gmail; Thu, 08 Aug
 2019 22:19:51 -0700 (PDT)
X-Received: by 2002:a37:270a:: with SMTP id n10mr16635211qkn.434.1565327991575;
        Thu, 08 Aug 2019 22:19:51 -0700 (PDT)
Received: by 2002:ae9:e406:0:0:0:0:0 with SMTP id q6msqkc;
        Wed, 7 Aug 2019 08:29:40 -0700 (PDT)
X-Received: by 2002:a2e:85da:: with SMTP id h26mr5309181ljj.48.1565191779606;
        Wed, 07 Aug 2019 08:29:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565191779; cv=none;
        d=google.com; s=arc-20160816;
        b=Lzmuf6L9Ta0o6ibXR/xD7hHgjjpqI5MQ7M4gVR2IeI9Icml5shMvXYEg/H86sSbuB5
         7ck/rh4HDKxLKSbSakEzUK4EAvINvYBvdOPp9Tg95rV8WKPwJFjgEsKtej1tpxUDHu3K
         7eLgrj0Lgtp+9W347GfZcusVwKtSzK9cN48twXcMIoxllZGGMLadF9epvA5onZ5J2tIJ
         vddSyh9qY7I1ma9P2zPh+cqzxhcML7FHD7rcvrqdfhS6CT9wX99fB2rMnsflV5yIY6HL
         aln/7GixUVNCWd16wzJDx+5fDp2vlR/YmG82xfzhAriUTB/ttEsloOHPk7TS0OHyKEhL
         Ev7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=bCRBD+ws/scZ/xPjLUvl9m8PcZB7nv/LjfC77vlJJIo=;
        b=o4VRct/hsBIG2kiIY9lAWggCm7K+2tzXZ7cU7n6kkoV2jwacaWsAfl7Nmqrg+PvOc4
         mTB0Jf6/g/Eky8Uo3xUTjaRfp90r7wykEobDG+PutBHsPBlez2g40tdFE4YVAdqpmteb
         d3N3Q5i3OuaRnoUGvTbALfFPtsF6yREMZ/i2u1LLRKuvCrFhb8YzGZJBrEyLaBOaBdDb
         m1kXZogQn1LyL2vqeictGw91k+OGzpugXPBkRU4L5SQ6WOT2jxMPXUiagB5ZRmpk184C
         Q/wcsOJT8X5orWnPnMNtjBAb5beSoqj1blm0Z7dTdwivkTgRozbL5qqJAbxfMFkqj3gn
         3NNA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@sirena.org.uk header.s=20170815-heliosphere header.b=aLUr6Sze;
       spf=pass (google.com: domain of broonie@sirena.co.uk designates 2a01:7e01::f03c:91ff:fed4:a3b6 as permitted sender) smtp.mailfrom=broonie@sirena.co.uk;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk. [2a01:7e01::f03c:91ff:fed4:a3b6])
        by gmr-mx.google.com with ESMTPS id t23si675650lfk.2.2019.08.07.08.29.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Wed, 07 Aug 2019 08:29:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of broonie@sirena.co.uk designates 2a01:7e01::f03c:91ff:fed4:a3b6 as permitted sender) client-ip=2a01:7e01::f03c:91ff:fed4:a3b6;
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
	by heliosphere.sirena.org.uk with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <broonie@sirena.co.uk>)
	id 1hvNse-000898-9c; Wed, 07 Aug 2019 15:29:36 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
	id 149B32742B9E; Wed,  7 Aug 2019 16:29:35 +0100 (BST)
Date: Wed, 7 Aug 2019 16:29:34 +0100
From: Mark Brown <broonie@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Tri Vo <trong@google.com>, clang-built-linux@googlegroups.com,
	linux-arm-kernel@lists.infradead.org,
	Matt Hart <matthew.hart@linaro.org>
Subject: Re: [PATCH] arm64: Disable big endian builds with clang
Message-ID: <20190807152934.GF4048@sirena.co.uk>
References: <20190806183918.41078-1-broonie@kernel.org>
 <20190807130111.GE54191@lakrids.cambridge.arm.com>
 <20190807130527.GD4048@sirena.co.uk>
 <20190807135618.GF54191@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="juZjCTNxrMaZdGZC"
Content-Disposition: inline
In-Reply-To: <20190807135618.GF54191@lakrids.cambridge.arm.com>
X-Cookie: Dammit Jim, I'm an actor, not a doctor.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: broonie@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@sirena.org.uk header.s=20170815-heliosphere header.b=aLUr6Sze;
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


--juZjCTNxrMaZdGZC
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On Wed, Aug 07, 2019 at 02:56:19PM +0100, Mark Rutland wrote:
> On Wed, Aug 07, 2019 at 02:05:27PM +0100, Mark Brown wrote:

> > As far as I know this has been broken for as long as we tried building
> > and booting big endian kernels in clang.  The compile works fine, it's
> > just that the resulting binary doesn't seem to be working so well.

> I've just had a go, and it works for me. Log below from a BE busybox,
> but I also have a BE buildroot filesystem working.

Copying Matt who can actually look at the jobs getting submitted.  The
rootfs we're using should be:

	https://storage.kernelci.org/images/rootfs/buildroot/arm64be/

> From your log, it looks like the kernel is trying to launch init via
> binfmt_misc, using binfmt-464c. It could be that the file is corrupted
> somehow, or something's going wrong with binfmt. I haven't delved into
> that.

You can see the exact image being used in the reports I linked:

	https://storage.kernelci.org/next/master/next-20190730/arm64/defconfig+CONFIG_CPU_BIG_ENDIAN=y/clang-8/Image

> Are you using the right filesystem (and is the kernel definitely
> identifying itself as BE in the Image header flags)?

I'm assured that we're using the same rootfs as the GCC BE builds, sadly
neither of the labs that has boards configured to allow BE boots gives
enough access for me to verify that personally.

> This could be a dynamic loader issue -- my busybox is statically linked,
> and I'm not sure about my buildroot filesystem.

> This could be platform-specific; I'm booting under a KVM/QEMU VM on
> ThunderX2, using virtio-block for storage.

It's failing on every single platform we're trying, that's not as many
as it should be but it's still a bunch of physical platforms and like I
say the variable is the compiler.  A platform issue that only manifests
in the handover to userspace on multiple boards doesn't seem like the
most likely avenue.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190807152934.GF4048%40sirena.co.uk.

--juZjCTNxrMaZdGZC
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1K7l4ACgkQJNaLcl1U
h9CKagf/cBrKegdqKNh8Jh9IRRR+Evij2tOiiN/TxuVlCZlXNCkr0vxbmt+93LqQ
g2y3lUacYvI/4BMMIkAAZ09vXiYcb1EJcvygYLzShP/k8xeHvuFNhNkjbUN+OjGM
Dlu2Q3xjowaalunkNXcfcA5VxV7Gux1u9CcRifa8o3BqKGWS7KFK6ZAkUS1qz1KV
x1GCcxPMqw/HJuzTl2NZ+dhSN1Jptwc2oNAMJoqjvOV5KAjEf9aVAKszgAYcNkai
rA7hdxRQm/6pwyoIe+ixWd64YmgWq7+qgC2sMG6S4j9WoTAUYENssjzyxRBIWouY
rePfXb1z7ZRVZHvDWc0n9QGrgBjIXg==
=hem4
-----END PGP SIGNATURE-----

--juZjCTNxrMaZdGZC--
