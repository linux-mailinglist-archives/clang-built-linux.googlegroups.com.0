Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBS6KVCIQMGQELE4IHMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A2224D4EDF
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Mar 2022 17:20:29 +0100 (CET)
Received: by mail-pl1-x63d.google.com with SMTP id c10-20020a170902d48a00b00151cf8ca3c7sf2978485plg.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Mar 2022 08:20:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1646929227; cv=pass;
        d=google.com; s=arc-20160816;
        b=hoY4HbjH5yWJq/Yf9F0vt3GXLnbwQHQ5snITOUqUFwN0zb7iGhVF/1QvPZL73cejMT
         oRJR0IiN5MIpAniY2H7aXFgpwsRLtIIH9wbOKNjw787gOBjYktdvfV9tStFFrIxFHSpr
         MpwVr8CTmCzdw7XDAZmzzAjqIfqomLuZKSYlARs0l8kEwn5FGFaRiOPTIoeqlWCJjlvW
         lNn87AvPWVRQDZdLEG30k5xtYMHSgxQg5Fcl4T3F5WRrMKTvLpNEtza9V+pnW/II1owL
         JcHa9ZMU6FBgDeWco5qIGp3+dA7d4FWPL59HxjgHRDJePRIpB+PH8xAUcp7AUO6KJWDx
         MzEA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=N3FuH77MOs89MKW9BS8ltf2wkWUOzBhE8nXdPP5LVkI=;
        b=hmh3WVwYa1+ZnzHwp2uXbnuZnKQiGGlOwn0yDkNW1db5269WZAhbxrz76o0FxGchgJ
         b7O6XMEQFwu5EctkIWo3UhZ3xgbTQNx7eiJUutdfGW3KKoNoHRWsAdcyGKv1AX+xdwkr
         3Wv3Lrf8FvYZquAhzD/vrDIWDyDTGCv45j1nkABpNFyvF8vzefEPqK2/UFQQLOPHq5/z
         TEuXdxo49pk5JUdssy0lJOn/Jl+xspuUCPrYiBdDlYDHz1TZX+B0A1MHmgPaPlCydI3O
         xmEOX2LIIpLAGa6/l+TPowwC0klncOQKxcYKqGUgfoX3/Y0AJKzp+PsiGBiuggVJqKrv
         n1rw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="ff/rsOwF";
       spf=pass (google.com: domain of nathan@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:content-transfer-encoding
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=N3FuH77MOs89MKW9BS8ltf2wkWUOzBhE8nXdPP5LVkI=;
        b=Is8vHMOpPpoDOg4IUEqFChg4ioXFtb6bB3IyaJ54CYwlmvsisp62LWqUPqgCnf7WWx
         gKGhv9L5xaqbWIO8Pw5XyC22qBBVifWNnmap1b4RnA1x2kDfDZoISnzOoGNmWubZUU3D
         mrnrm8ysThpGHPzRGADFGaoECto0xSIwBq6nKgIvUVPtj+Tz+PI5B3szejk48bVzJr5r
         +VdgDGrfoiuY7Izef6IFTbI/GhZZVh9rmh7/VVbz27y9kxuvvxksQdgx70vNF1nKw2nJ
         50roql59cRbav6HCtKFQ460Zkoed7faf/hoxvvJprBp/oyFtXceZRgj62udrTHdIWwmd
         dsOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results
         :content-transfer-encoding:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=N3FuH77MOs89MKW9BS8ltf2wkWUOzBhE8nXdPP5LVkI=;
        b=v++vQnLoqTh/JR2OKBOHsCdo/qUhagg0yCIANQ1tT5ab5MnJwsaXBhNW2+3c7AIAbV
         ewQjzmFjBe2SMpt9kT1EjixdXoYneKnttnNdSIu6bmHa3fLzfC+j25jiD74LYK8Id0t8
         NMtnMiOwCTq1hLnBM8S7mrHScm85fA0zzDdI1gOvWBCiqr0Tvh4OS6L28DKDLLPBjImY
         +cjrjRzAPWGrAC9mAyq1JdLIKZf3YjN0h7+gZ7jb5DFEwXQml2TiWdOoS19jp+J4vWgd
         ZXmbQCKQqIiJvQSCAtd9AECt7LML8Qq6jihNbdgWaiOg6eK5+sBN0leER9ePCmDsT0JP
         FqkQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530E1AtWojP1O+v4iC2of/yjbPXp8Dixvn8CcyqRAIoAYLRFTuib
	0lnNYexL7MqX1R9BG4LuMhI=
X-Google-Smtp-Source: ABdhPJx7ANJexKZjW6bcW52WZi7XVij9TzkNgCibxpOSBLOCZz2B9vyBK+2aY7cm7cm5RzlPLBC3dw==
X-Received: by 2002:a63:dd04:0:b0:37c:9a8a:489b with SMTP id t4-20020a63dd04000000b0037c9a8a489bmr4585256pgg.397.1646929227295;
        Thu, 10 Mar 2022 08:20:27 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:6782:b0:1b9:7c8a:8c03 with SMTP id
 o2-20020a17090a678200b001b97c8a8c03ls4503584pjj.0.gmail; Thu, 10 Mar 2022
 08:20:26 -0800 (PST)
X-Received: by 2002:a17:902:e8c2:b0:151:cae6:46fa with SMTP id v2-20020a170902e8c200b00151cae646famr5799281plg.164.1646929226612;
        Thu, 10 Mar 2022 08:20:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1646929226; cv=none;
        d=google.com; s=arc-20160816;
        b=G64T7KeExy3oxa/FgO96iZOcLhA8o/aiy6f6QujMXkUPxaYXLeInPffnJlC8fzi0+W
         JKAr51xywX/WENAqoeOvDfpJEUCXAmtetqGpswPuG15Hmm/v5Ntit3D1lNdoGb8zZTQb
         aU3+GxjQaHiqzWKWWxefDkNIsUOrQB0VBEXXnyyTtt0SWdBuhRupkvke63XL2E/wT8pW
         mWk9u/k4LIZmerGd7ySe1h7xxA/+r0xNTcv92Z74YQHqfysjmbKzGuNpPahWRfnGMZVo
         blmyl4r1sv6gBfqXqhG6VCSs1H6QEac92An1pK6SCUZ3i14qutvfNMb62U+/KGPn6pgE
         450w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=UUX8NANC1H1P65VPeQAtR2AqGq1+E0ltTxSwuFd7hSc=;
        b=z4u/4y2PLqmj/eNR9+sRzn8DTZFYezgpr3n1c+i/53DhaA0hQUzgo9SxQorWKYAP/S
         po1e2vzMhUl54MnsJVZpGU3aUtCSO2AIpDlxT0ZkpSo1B5kDflSfbMjdXFk4VP6XCKA9
         JQaZOpyXWIiRCvwqzpqM4dsqubet2mo7mGZ2V/9LeQ9C/7edulGMdMe5hAe2wBv/ALGI
         xlh7oM+EqsAcsNNLfmJPldIsaEDDbj77aGgfE6mYgQOfq7hy67Z09cOCoXCLs5oqTTL4
         S3gvU+5p0EcFUKUN0hJyuANuH1RFJEV4N4Cnr2QlcfEfSVdBvSknsiEE+rIAVUh8oiV2
         pPRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="ff/rsOwF";
       spf=pass (google.com: domain of nathan@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [139.178.84.217])
        by gmr-mx.google.com with ESMTPS id hg2-20020a17090b300200b001bedb198e40si461956pjb.2.2022.03.10.08.20.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Mar 2022 08:20:26 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 139.178.84.217 as permitted sender) client-ip=139.178.84.217;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 09DE361AC6;
	Thu, 10 Mar 2022 16:20:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 05C11C340E8;
	Thu, 10 Mar 2022 16:20:24 +0000 (UTC)
Date: Thu, 10 Mar 2022 09:20:18 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Naresh Kamboju <naresh.kamboju@linaro.org>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>,
	llvm@lists.linux.dev,
	Linux-Next Mailing List <linux-next@vger.kernel.org>,
	open list <linux-kernel@vger.kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Anders Roxell <anders.roxell@linaro.org>
Subject: Re: [next] ld.lld: error: ./arch/arm/kernel/vmlinux.lds:34: AT
 expected, but got NOCROSSREFS
Message-ID: <YiolQp58KrkNkj5R@dev-arch.thelio-3990X>
References: <CA+G9fYsz7+Ooc8L-Dpfjp6mMDdw43=SjqiE0ryABy3t6qEzRoQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+G9fYsz7+Ooc8L-Dpfjp6mMDdw43=SjqiE0ryABy3t6qEzRoQ@mail.gmail.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="ff/rsOwF";       spf=pass
 (google.com: domain of nathan@kernel.org designates 139.178.84.217 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Thu, Mar 10, 2022 at 05:07:36PM +0530, Naresh Kamboju wrote:
> Linux next-20220310 arm clang builds failed due to following errors/warni=
ngs.
>=20
> metadata:
>     git_describe: next-20220310
>     git_repo: https://gitlab.com/Linaro/lkft/mirrors/next/linux-next
>     git_sha: 71941773e143369a73c9c4a3b62fbb60736a1182
>     git_short_log: 71941773e143 (\Add linux-next specific files for 20220=
310\)
>     target_arch: arm
>     toolchain: clang-14
>     Kconfig: https://builds.tuxbuild.com/26BmBgHzW9MFZ3R0kIwL0Ce2r09/conf=
ig
>=20
> make --silent --keep-going --jobs=3D8
> O=3D/home/tuxbuild/.cache/tuxmake/builds/1/build LLVM=3D1 LLVM_IAS=3D1
> ARCH=3Darm CROSS_COMPILE=3Darm-linux-gnueabihf- 'HOSTCC=3Dsccache clang'
> 'CC=3Dsccache clang'
> clang: warning: argument unused during compilation: '-march=3Darmv7-a'
> [-Wunused-command-line-argument]
> clang: warning: argument unused during compilation: '-march=3Darmv7-a'
> [-Wunused-command-line-argument]
> clang: warning: argument unused during compilation: '-march=3Darmv7-a'
> [-Wunused-command-line-argument]
> clang: warning: argument unused during compilation: '-march=3Darmv7-a'
> [-Wunused-command-line-argument]
> clang: warning: argument unused during compilation: '-march=3Darmv7-a'
> [-Wunused-command-line-argument]
> clang: warning: argument unused during compilation: '-march=3Darmv7-a'
> [-Wunused-command-line-argument]
> clang: warning: argument unused during compilation: '-march=3Darmv7-a'
> [-Wunused-command-line-argument]
> clang: warning: argument unused during compilation: '-march=3Darmv7-a'
> [-Wunused-command-line-argument]
> clang: warning: argument unused during compilation: '-march=3Darmv7-a'
> [-Wunused-command-line-argument]
> ld.lld: error: ./arch/arm/kernel/vmlinux.lds:34: AT expected, but got
> NOCROSSREFS
> >>>  __vectors_lma =3D .; OVERLAY 0xffff0000 : NOCROSSREFS AT(__vectors_l=
ma) { .vectors { *(.vectors) } .vectors.bhb.loop8 { *(.vectors.bhb.loop8) }=
 .vectors.bhb.bpiall { *(.vectors.bhb.bpiall) } } __vectors_start =3D LOADA=
DDR(.vectors); __vectors_end =3D LOADADDR(.vectors) + SIZEOF(.vectors); __v=
ectors_bhb_loop8_start =3D LOADADDR(.vectors.bhb.loop8); __vectors_bhb_loop=
8_end =3D LOADADDR(.vectors.bhb.loop8) + SIZEOF(.vectors.bhb.loop8); __vect=
ors_bhb_bpiall_start =3D LOADADDR(.vectors.bhb.bpiall); __vectors_bhb_bpial=
l_end =3D LOADADDR(.vectors.bhb.bpiall) + SIZEOF(.vectors.bhb.bpiall); . =
=3D __vectors_lma + SIZEOF(.vectors) + SIZEOF(.vectors.bhb.loop8) + SIZEOF(=
.vectors.bhb.bpiall); __stubs_lma =3D .; .stubs ADDR(.vectors) + 0x1000 : A=
T(__stubs_lma) { *(.stubs) } __stubs_start =3D LOADADDR(.stubs); __stubs_en=
d =3D LOADADDR(.stubs) + SIZEOF(.stubs); . =3D __stubs_lma + SIZEOF(.stubs)=
; PROVIDE(vector_fiq_offset =3D vector_fiq - ADDR(.vectors));
> >>>                                          ^
> make[1]: *** [/builds/linux/Makefile:1225: vmlinux] Error 1

Hi Naresh,

Thank you for the report! This is already fixed in mainline with
commit 36168e387fa7 ("ARM: Do not use NOCROSSREFS directive with
ld.lld"). This should be in next-20220311.

Cheers,
Nathan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/YiolQp58KrkNkj5R%40dev-arch.thelio-3990X.
