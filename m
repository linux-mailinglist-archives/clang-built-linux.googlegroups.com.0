Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBKGSXPDQMGQEFNLAHNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yx1-xb139.google.com (mail-yx1-xb139.google.com [IPv6:2607:f8b0:4864:20::b139])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A239BDBE77
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Oct 2025 02:22:02 +0200 (CEST)
Received: by mail-yx1-xb139.google.com with SMTP id 956f58d0204a3-63cf0dbca50sf8199882d50.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Oct 2025 17:22:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1760487720; cv=pass;
        d=google.com; s=arc-20240605;
        b=f50X9mKrRo9X5b5RVWs+BA5jGrT+X5cZAnjzwBloIL6G48xbUY3P6Se+PnLr+X9Xnl
         YPk/BLzP0QM34N2aL1gwwVONeTjDJ0bja1DTDz11l5UaoTqtHqnw5ntisBv10oxPBOcL
         /eq26c8sWj9D6R62h+nHwHODNnPPmA5OOexwf6eEUuJ2jy426hfJWeJ1hk+CNZudaGSD
         fcxHrfJzZHnOLqHDPlFraH0HqRKC8EaBk6TAztCE//TmxNnH5waIOzLgNqsikT/kj9Pl
         Xe8TPkB3GMJdt51BDnocHgk2CG74AZ+Y3WkfIzq02YLP5kIJERNcEP0KI2yE/NXU6eQh
         e5gw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:dkim-signature;
        bh=iifZUtvo/T7J4r2BR9jhFcmldTlJiyTjk2QZG5CtrIw=;
        fh=WaJYvD9gccuFFYLotSav61cCq6Vk7IVOYGT2Eg4VLII=;
        b=f2NMgtU8GiFXPNMrBAsxWP3VrZaWCz+koZJ/CFxuuo+4baWsqWJa8ve/GdaHgXOL/c
         hkAC3C79WhSQgKPMdZehF6aeOiz3KW2kMkr8agB2Oqtse1qdAajHazXD6hs29WEJT49W
         eJnerZJ2SPM3uBDsmXp64rXRk8t4uoMCMpeavnG2gW4Whu03CykRpBFe5s5WEgOPxVUi
         yLWUmTZmb0XmJiBdP61WIf4CN6JiagTDz1miqaMZicWoR8tPI4b1qotE1mQX0DyKCnqA
         fXkegS3z8dycIX+sT3G9GzdR+L3h83U+2GDwfVSuQGbhgwzBhoPpY06VdhmKqOi4XpZa
         376Q==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=uoEDLvVM;
       spf=pass (google.com: domain of nathan@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1760487720; x=1761092520; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=iifZUtvo/T7J4r2BR9jhFcmldTlJiyTjk2QZG5CtrIw=;
        b=w5qTUB0FfdkpRjsOK1hbnJB3tqC37LnjxdRgB7naB20RmBavoIjGNNmJdCXBiazuN7
         5bS7TQCB/6LPYHwxT30KBRmeSleTyVn5Px1Sd1RUsErmmXGV69e7Xj7CFi84uR13Ufk2
         KY9XZB4vS4vxIDWtXmQqpyaL7pKdkUPNIPoZe1y7E9qunQQk3VVZKbVPgO2WKQKPxk3N
         Guzkl+w+mtb+ljUdBdSZ/NbIBtRfMK6DFDx5IatF9kWBEKVEiGFhMiih7mxMjyW+XaqM
         D8Oe+PKqvQDFdaFYXW/drjsWMwo2x+EyE0Cs6QVxkZcFZRXQXbXjvby+03spqdpk64h6
         Xpqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760487720; x=1761092520;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iifZUtvo/T7J4r2BR9jhFcmldTlJiyTjk2QZG5CtrIw=;
        b=ElqkQt0ratqMPj51Vn+l/hHHUmMeRSYf8m1tbIbUA+NpdR3Nzek+/5VFTNnK1xLPLL
         EGedKzxNIwf7AOjoHA1el6lWQ9XPVu/AmoYfpm7oUpxvQxf57gkd2XFCF5PJRyxiFbpY
         1flM3LsAy3d7qOsd5zV9fAtnr9okXD+25BhoEEWMoqvYJ1TS+W3PprPa0jBcASVczPIL
         oUo8DHiNjItNxqVTMLcjQ8g5SaFcYlBmGBHoIVH9UFS3GLSRbfWwZR483BtkztqX4Ms7
         ilI677N6Bv3+2wXR+EuwNt4VBmuBeR22nodmLO6o4ApksQTVCPD/kjkfe9JdFjnMuk82
         mEIA==
X-Forwarded-Encrypted: i=2; AJvYcCXxmJ3diZYYlmBD8wSjI7mQkQTOJvcPVJqH8s25bABrbD1yd5eqp9evhoxTPmdy2MY89w5xxQ==@lfdr.de
X-Gm-Message-State: AOJu0YxKEWwfp/ijP54u3Lw8k7VQFsxXA5oP7XYDePAvFyscKtPaSDRx
	mNZmtM5Uz/T09RG5X2FPe3niUwxChOS5CejVldwd9oRmbdz25jt+j6jg
X-Google-Smtp-Source: AGHT+IGHzOnukn/3Uc2eKGBIQBlmFjSvDaCQU5b0bWJe7BvS3joaYPuIeij32HXXpf2hsapXs9LU/Q==
X-Received: by 2002:a53:eac7:0:b0:63c:ec55:3221 with SMTP id 956f58d0204a3-63cec5535f0mr11046767d50.21.1760487720554;
        Tue, 14 Oct 2025 17:22:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com; h="ARHlJd78Bw5UF+uVo3qTGSJwInhcRsWfrakuGVi/dl8QrVSYuw=="
Received: by 2002:a05:690e:4298:10b0:63c:e8ef:5666 with SMTP id
 956f58d0204a3-63ce8ef5810ls5629089d50.1.-pod-prod-04-us; Tue, 14 Oct 2025
 17:21:59 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUF160AzYg5ZkKL5JkylaI5MjcQeUJMJpcRYyHSSlgLPLZvzhTPMFkssoJLLSDpOvJHI4y4gJJb7Q08UmaREDbI5w==@googlegroups.com
X-Received: by 2002:a53:c74f:0:b0:636:1a27:6aba with SMTP id 956f58d0204a3-63ccb84e889mr20740325d50.12.1760487719396;
        Tue, 14 Oct 2025 17:21:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1760487719; cv=none;
        d=google.com; s=arc-20240605;
        b=LOAKh8Nw4k8NYtPOJe6RlelRb0ZFfTAtxLVaHjZRRmohpUWbAnCdpokMYmMAHlqvHw
         uTahIScug7bcPUaIJ0kELQeg0LcZ4zx8C304FiGT2qwgWfqJ3A1z2x9ifOvNT58mLVK/
         mG8NZyFg509/XB5dDo5tm/CKFB0C10cPqet1pFiXBAfmgtiCMMICBrxrYhurNUkQuSJl
         AMqWqTGdpaoUdUeuKdAj3Qcm/btny/FMorBxpcMXchHmZWcAhiXm4ujWXmo7Z4K1GapN
         O9na+XJXazPSeSxDVi5AfECK1RDVvn9nn3wCzi2Ia4KQAXJLJzCThFdU+bWx0QSeDjcS
         I+nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=2Ya1iHobdldggBQlQvx6CQfKC8LhONqqlkvfoWoP9+w=;
        fh=qGNAJk9gU4JqHBED14UEZPwtwYd0njAydNXfJ56fAcU=;
        b=Oo3cus/e5HS5HOHsbOC4jYnLvpCPMMxF5mQd9La7wqW0CZpN4eaWJoaIaYC+jK6Rjw
         nOPoX8iRSRLZ2k+9h7PH1l2c1915422WKxxi/BB6qRc7auwzzmUg/hAjBCSgZOuaYRxy
         bSyq/sAJm9DNUjnoG5CR1SEg356JC9D3MPZARhKFnAoZyjDLDoylx4b6+Y7zZy2lIFdp
         cK+3XHJIYvjuQ4oa0suLEXwC7QZUnNuEmfPl7MpV3bHJXEz9zoi8vZzhnKDvxDQNRxDp
         HrUriC4ZvTStAvZ1lsVhmECba/2nw3vc5iIZHosik4JIcN2/fZiABfNYc6QKzW5JmMe4
         KJlw==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=uoEDLvVM;
       spf=pass (google.com: domain of nathan@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
Received: from sea.source.kernel.org (sea.source.kernel.org. [172.234.252.31])
        by gmr-mx.google.com with ESMTPS id 956f58d0204a3-63d01a51f10si651219d50.2.2025.10.14.17.21.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Oct 2025 17:21:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 172.234.252.31 as permitted sender) client-ip=172.234.252.31;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 5BDE344078;
	Wed, 15 Oct 2025 00:21:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9A30DC4CEE7;
	Wed, 15 Oct 2025 00:21:56 +0000 (UTC)
Date: Tue, 14 Oct 2025 17:21:54 -0700
From: "'Nathan Chancellor' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Vishal Chourasia <vishalc@linux.ibm.com>
Cc: Christophe Leroy <christophe.leroy@csgroup.eu>, maddy@linux.ibm.com,
	linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	"llvm@lists.linux.dev" <llvm@lists.linux.dev>
Subject: Re: [PATCH] arch/powerpc: Remove .interp section in vmlinux
Message-ID: <20251015002154.GA2300901@ax162>
References: <eeaf8fd6628a75d19872ab31cf7e7179e2baef5e.1751366959.git.christophe.leroy@csgroup.eu>
 <20251013040148.560439-1-vishalc@linux.ibm.com>
 <2b4a3215-1620-40c9-a00c-ca833ebbb7b6@csgroup.eu>
 <aOypxKMzsLR5tAtv@linux.ibm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <aOypxKMzsLR5tAtv@linux.ibm.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=uoEDLvVM;       spf=pass
 (google.com: domain of nathan@kernel.org designates 172.234.252.31 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
X-Original-From: Nathan Chancellor <nathan@kernel.org>
Reply-To: Nathan Chancellor <nathan@kernel.org>
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

Hi Vishal,

On Mon, Oct 13, 2025 at 12:57:00PM +0530, Vishal Chourasia wrote:
> On Mon, Oct 13, 2025 at 08:46:48AM +0200, Christophe Leroy wrote:
> > +CLANG ppl
> >=20
> > Hi,
> >=20
> > Le 13/10/2025 =C3=A0 06:01, Vishal Chourasia a =C3=A9crit=C2=A0:
> > > While debugging a ppc64le QEMU guest on an x86_64 host, I observed GD=
B crashes
> > > when attempting to attach to the remote target:
> > >=20
> > > (gdb) target remote :1234
> > >=20
> > > Investigation revealed that cross-compiling the Linux kernel for ppc6=
4le on an
> > > x86_64 host using Clang produces a vmlinux binary containing an empty=
 .interp
> > > section. This empty .interp section is responsible for the GDB crashe=
s.
> >=20
> > Which version of CLANG is it ?
> (i) =E2=9D=AF clang --version
> clang version 21.0.0git (https://github.com/llvm/llvm-project.git a80bccc=
6847be104948f46d313f03ac6b9ccb292)
>=20
> >=20
> > >=20
> > > This issue does not occur when:
> > > - Building for ppc64le target using GCC on x86_64 host
> > > - Building for ppc64le target using Clang on ppc64le host
> >=20
> > Is it the same CLANG version ?
> # clang --version
> clang version 22.0.0git (https://github.com/llvm/llvm-project.git 2f755c5=
43ab357bd83235592fcee37fa391cdd9d)
>=20
> >=20
> > > - Building for ppc64le target using GCC on ppc64le host
> > >=20
> > > For details refer [1]
> > >=20
> > > [1] https://sourceware.org/bugzilla/show_bug.cgi?id=3D33481

In this bug report, you mention using LLVM=3D1. Does the issue happen if
you use GNU ld (ld.bfd) via LD (i.e., LD=3Dpowerpc64le-linux-gnu-ld or
equivalent) over ld.lld from LLVM=3D1? This sounds more likely to be a
linker difference rather than a compiler difference.

Cheers,
Nathan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion visit https://groups.google.com/d/msgid/clang-built=
-linux/20251015002154.GA2300901%40ax162.
