Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBEFP2PWAKGQE3HRFQCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 11BD3C8F23
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Oct 2019 19:00:01 +0200 (CEST)
Received: by mail-wr1-x440.google.com with SMTP id k2sf2566957wrn.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Oct 2019 10:00:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570035600; cv=pass;
        d=google.com; s=arc-20160816;
        b=RgW+VugcWar/X9m7R08L92aQG/ykgm6awU9YNclHfGRFI8bT6Tz3BfQCVo+djjx7Hb
         jFCG3cuv4XrxqpTasF6FeT1m3iGTRSiP2i0DbYep+7uAjNaOZir895CM9h79knYaOPwg
         mHzu+tsHn2Ls3QZ0cy0pppIRO4LBAb4e2dKepRxESIts2x6tZIxt0S96Q5ElQm0q/FIq
         cljKZA6Fhva2JqtMd/Qvcw/AHTELR6rN9FEEfo/YMDBEYWdvQAFeu0nImT6Ult+Tz+Cq
         XzBL5ntPbOy0x77pLgsVRpMx92cDbWgAhQ/e3mo2hWKYqxHitE27UfbQ/wbFj9M1CWt1
         2tDQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=CNp13Cmu4pcB+j0WPPhWUICvDJfDaBB/IGvj2aQlhhM=;
        b=RefvV/kXUtJhFh9r0IcEOZM4dMdh9ao6r3QIZUxdYC52kwwY/J5btBJBgHvFYJdY2D
         uQt06fsVZ39cPqi8HgrrYot7248obgusYpB1ulOf8I8EMfqJbtTU7DdL9+IjsprTODA0
         ysgWxxeSW+z374IG2YRL01jlMtGmcPmG/qm07YULXJDR60Bhn6bkr7YnHT2w95JJHkmQ
         XRvdLk0fDtySFTNFXJT467fIJwcQ+z/hbSImSOo5YlU08rVFHficOEK0ZFTCAvMlmT1L
         rs1AdXHLfQWj+1qTY2b7z6pbcpTltSQ3UpFjR5e2KLfotVouDoqV8XAKpjs2KEHdA04O
         TBPQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RgI+MaKt;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:content-transfer-encoding
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CNp13Cmu4pcB+j0WPPhWUICvDJfDaBB/IGvj2aQlhhM=;
        b=ShUxbOzSVYlvvO4aATXVXcOrqob5LCa991X19vrLgp7tnr8/Tn5St8wPrwZBUh3L/H
         uCOlLsyePX+6Zcp19HVr8OjAC8BFelJRr9RzqarD0jOQgiC+mRu2jLrfeRAKZTJA3SHo
         Zh2HUHSW0ADSxiG1ZMjpPa/+R3At84YUSO45hbwRmr5hir1yFX9iaQPxXBS9KdZNCAxB
         UPlESKGs7olGJpGB8pt5SNB8sgBQQ2lRKR51eOncDV2k+whLG+QWCXTAmA9gpo1NESB/
         JVEFZhnrtI74ztvsbjdKYUCDoaNx+bp180bJxXks5mF+mFKGBc7UKfGv1xLvN2mUXtRr
         R2TQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:content-transfer-encoding
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CNp13Cmu4pcB+j0WPPhWUICvDJfDaBB/IGvj2aQlhhM=;
        b=XNVtDb5ZsjQZjmCVP8HrpFO4zW6iB7kSIFCvFRqt4CxQcm6j6+tEOQo1MQX3FikImt
         Q0iYTqNjaHLLzGBP7jagd4dzYNk79W6EFCp2nchAdvadF+NKWLPWWUd4qp7ZAQcAq4fK
         jyRXYE8wpoLWnsEwgufj2evGK76DiQ3a+9n2F6Ity+HpbqFhusKuoHMxxmy/P7+OgcEK
         TpL1Ckgbo2nD2B5ntFY1Dbao4+MYURlu8ci79WiXx9vxQBERIzP+3PWte9l9PEAYK0Ss
         raoDq6VTiKw7WOV1xduf68NmEzqlNkNZdmLPOO9D4vgf73EphO+Goo0Map4hqbjzChaA
         p1pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results
         :content-transfer-encoding:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CNp13Cmu4pcB+j0WPPhWUICvDJfDaBB/IGvj2aQlhhM=;
        b=nICACf7gwcr00J46n2rjY3QeCWlA5/Nm/qqcF8oHXXeACNFu/1+gZ29PyOmPlhFvOC
         wRSEUjmpP6/rjZhUJDwI38GKEvDL9rV/KJGZOZCRp3HOtukNX11Fp2F86t79hyYCdDU5
         30QNqSWUY+JFMc0W5087LME/jCPwhHv2yU7DvLCv4v0FYJmIVagTZRUNxU6lzAcZFOc/
         evhNpvrhN7tCME05e4EvLHs/Crgz7J4I+KojJJKchSJ8vAwU8MYXh2seJZ1YSBFFtMgR
         RqDyMItp7NYRgcXo0CxfgzRsO1ul2+ParAveqDD8DYZwz7nJoQgBwaEZuVT6H7V0SQmf
         uVSQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV0QBArYZvskhmOvCvAOzzDJn0o7/Z5n2SDFBMKNQCA1cwwL38V
	r0ufWTKIDK2eVq1UkcWNIqA=
X-Google-Smtp-Source: APXvYqy+fRy9SFKUgGk2yavX+u122GrYAs0vsP/5B0Rc/5ELHjoJq5CiqKU8sQX9xvJaaY66jjM0Wg==
X-Received: by 2002:a1c:5942:: with SMTP id n63mr3747564wmb.65.1570035600692;
        Wed, 02 Oct 2019 10:00:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:d18d:: with SMTP id i135ls1185347wmg.4.canary-gmail;
 Wed, 02 Oct 2019 10:00:00 -0700 (PDT)
X-Received: by 2002:a7b:cbd6:: with SMTP id n22mr3885165wmi.39.1570035600258;
        Wed, 02 Oct 2019 10:00:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570035600; cv=none;
        d=google.com; s=arc-20160816;
        b=EQZIIXKcK+8E42M0KjRYza33XXpNpVMEiqx/LLUuMT80ss5olpzVXeg7OyBxgCalcC
         Z111NMsb7/aBcIczIRRwvzUv8XEac/RvtRYKEYdzxPC0/lA6H/fX2ZE6kSj4leGQ7t7I
         m2hzwYvwpN1YPs80Ku54GRAe2PCQDI4W70a9JNFlt42wROL5cHvd3AFWTcxA/Oh9Nz4v
         RdPx6W13EHZCQR894LundhM1vK0j0wVz6uwC+wKKhCemrPsVTCkNUAaoCL2sG3NTBy8r
         8Fovyre0qF1gIwihUYHXcQnOZDTRbcJruDMGwjrvnfdovaAX0uUjibre5omHQcUlP0n/
         X3HA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=MsFGpwRLgONT0de7LKsDbousscj3Wo8esV6P4GF5PfA=;
        b=RojlkMbXmujXM4Iz8clQxm78fe+vTdSHbkdyqxu0Zr7WPIapdLUzHj3SvSyf+Wb6Hy
         C7yWAv3eIOKqZBWrfp1UJIWkVVBpNytwkz/9l1irA0kxbplpVL31mlCjd3el6RDofmLN
         vHx7jeE/j485qn+zBHIs/wMVyrteSAXk+gTAtCYR9xGZpSOOBkub3oCjHjxtm8VbBuu3
         2hLNrLkNDPUbAUupz/RvOZSQwWTnFJ8PD7cS3gmY/A8ucFI7o9uO8aT3VhqbcaSlU/B2
         LWFTSTpcUbNojtZVY8NdgHSl5wt+VlV8fWWDoAp8MAlxJeaBcclieVtx+NzFth5xFgqf
         nQow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RgI+MaKt;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id l3si511295wmg.0.2019.10.02.10.00.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Oct 2019 10:00:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Received: by mail-wr1-x444.google.com with SMTP id q17so20514395wrx.10
        for <clang-built-linux@googlegroups.com>; Wed, 02 Oct 2019 10:00:00 -0700 (PDT)
X-Received: by 2002:adf:f4cd:: with SMTP id h13mr3451971wrp.42.1570035599684;
        Wed, 02 Oct 2019 09:59:59 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id 207sm10536070wme.17.2019.10.02.09.59.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Oct 2019 09:59:59 -0700 (PDT)
Date: Wed, 2 Oct 2019 09:59:57 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild@01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] media: uvcvideo: Add a quirk to force GEO GC6500 Camera
 bits-per-pixel value
Message-ID: <20191002165957.GA1076951@archlinux-threadripper>
References: <201910021908.LdOuBFuh%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201910021908.LdOuBFuh%lkp@intel.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=RgI+MaKt;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Content-Transfer-Encoding: quoted-printable
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

On Wed, Oct 02, 2019 at 08:01:17PM +0800, kbuild test robot wrote:
> CC: kbuild-all@01.org
> In-Reply-To: <20191002084723.76329-1-szakharchenko@digital-loggers.com>
> References: <20191002084723.76329-1-szakharchenko@digital-loggers.com>
> TO: Sergey Zakharchenko <szakharchenko@digital-loggers.com>
> CC: linux-media@vger.kernel.org, Laurent Pinchart <laurent.pinchart@ideas=
onboard.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Martin Bodo <mart=
in@digital-loggers.com>, "Logan, Peter" <peter.logan@intel.com>, Auke Kok <=
auke-jan.h.kok@intel.com>, Sergey Zakharchenko <doublef.mobil@gmail.com>, S=
ergey Zakharchenko <szakharchenko@digital-loggers.com>, Laurent Pinchart <l=
aurent.pinchart@ideasonboard.com>, Mauro Carvalho Chehab <mchehab@kernel.or=
g>, Martin Bodo <martin@digital-loggers.com>, "Logan, Peter" <peter.logan@i=
ntel.com>, Auke Kok <auke-jan.h.kok@intel.com>, Sergey Zakharchenko <double=
f.mobil@gmail.com>, Sergey Zakharchenko <szakharchenko@digital-loggers.com>
> CC: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Mauro Carvalho =
Chehab <mchehab@kernel.org>, Martin Bodo <martin@digital-loggers.com>, "Log=
an, Peter" <peter.logan@intel.com>, Auke Kok <auke-jan.h.kok@intel.com>, Se=
rgey Zakharchenko <doublef.mobil@gmail.com>, Sergey Zakharchenko <szakharch=
enko@digital-loggers.com>
>=20
> Hi Sergey,
>=20
> Thank you for the patch! Perhaps something to improve:
>=20
> [auto build test WARNING on linuxtv-media/master]
> [cannot apply to v5.4-rc1 next-20191002]
> [if your patch is applied to the wrong git tree, please drop us a note to=
 help
> improve the system. BTW, we also suggest to use '--base' option to specif=
y the
> base tree in git format-patch, please see https://stackoverflow.com/a/374=
06982]
>=20
> url:    https://github.com/0day-ci/linux/commits/Sergey-Zakharchenko/medi=
a-uvcvideo-Add-a-quirk-to-force-GEO-GC6500-Camera-bits-per-pixel-value/2019=
1002-185359
> base:   git://linuxtv.org/media_tree.git master
> config: arm64-defconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project a77c3ef03c82=
1d448296ba2abb658288800494ac)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbi=
n/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # save the attached .config to linux build tree
>         make.cross ARCH=3Darm64=20
>=20
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>=20
> All warnings (new ones prefixed by >>):
>=20
> >> drivers/media/usb/uvc/uvc_driver.c:507:19: warning: variable 'i' is un=
initialized when used here [-Wuninitialized]
>                                    n =3D info->bpp[i] * div;
>                                                  ^
>    drivers/media/usb/uvc/uvc_driver.c:453:16: note: initialize the variab=
le 'i' to silence this warning
>            unsigned int i, n;
>                          ^
>                           =3D 0
>    1 warning generated.

Fixed in v2 as GCC emitted a similar warning:

https://lore.kernel.org/linux-media/20191002130102.97852-1-szakharchenko@di=
gital-loggers.com/

Cheers,
Nathan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20191002165957.GA1076951%40archlinux-threadripper.
