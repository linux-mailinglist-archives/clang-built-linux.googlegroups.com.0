Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB24T62EAMGQE2EMC72Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id F227C3F0E24
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 00:30:04 +0200 (CEST)
Received: by mail-oi1-x23d.google.com with SMTP id e17-20020a0568081491b02901f566a77bb8sf1668774oiw.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 15:30:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629325804; cv=pass;
        d=google.com; s=arc-20160816;
        b=sgs6MBZl2yHbsZEkrhIgacJh3Tn+PfPZr4/gPfaKrGInELnl5eDEh33+2XDPqn94DK
         tpMucO09d9EWmEiQHmRS2zOrYgWvOMu3/30clBOAoL0rmHNJZDYcvW/cMwTZElxyGom3
         ZaUjkegm3E3jpnSvFWvAbphjshmRH7zbCC84YrGD/DDe2KTxlFz/ly7y9p0fNK8H34uu
         rEEg5sBCxutBoMgFm4XaCInMihKm3jW0wfIVlWlhaZOagZ9HKp91Tom4DOUiyFWjppbM
         4kRpLP7nMRkj8FhthNnSnDqmBssJnfSmaFvmga+UngDrkr/mXQpPEiXtDduyEXN1tbXH
         UKZA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=/TBIxvTDk+UhM/pxiU0qhBLjODnTh5k9ZM86zhap/Gs=;
        b=wEonmrm/j3kdfLfP2iFuR7+GzuE7DGhkRbQM5aUj5IeSVpKwRgjLJkOB6dkdZd2K2f
         PPXZlC0NX6oQTJwnC2HtjlhxyJBXpS9WJBHZN4hWD1QzoiijtSbaaO6ZCW5IfmaxrkE1
         lX0Y7nXkXPntl0tZDnXBIfvtV5+Ag5h5Fv5Rr5m9fSF2yChqcGid8JSczphGs3SKE4vG
         sJEPxEMUnShaM3z5CbxGm48CJaatcL/D44AT+oAiRi19g6bHRHqS3W5IxI40oFjAu5tI
         Wg8BVOcMdnCzOnqdTZDItCNugrT+TfSVzlqyN0oEjY4F5hziFqyn1zow6U21xzoIoqoY
         LJBg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=HXqi8rpN;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62c as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/TBIxvTDk+UhM/pxiU0qhBLjODnTh5k9ZM86zhap/Gs=;
        b=PbKvlRTlwj0eotVKprPBFw+8TgFfzObPjq+fQy+no1X6b8Lwe6vgIhKiPdHK2WQI8I
         1krV4k0pyjN3nx7RxP76aRBFBzsvbO5PmZi0dG6V1J3jGSkXzE1+UX6vQ1USuToJe1UY
         Gsk3YWsa6wztMonxrgazwtQixBFIatTyqVapAUmCckSuPWKaW6OCaJw5M/hG8s2eV0wz
         gw8UwqrW6BuJ6SFQbzwD2Nja0ZKGZwqB3tVF5mHw5SvdGoXK8rXDQhgC5TAUV5Xq1ljS
         t5kmAGLUbT4SlFAz+Iageq++ee21OtSKWlZtG4sJoSXm/3dC1KRrwMX9csf1l7ivAxdm
         q3Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/TBIxvTDk+UhM/pxiU0qhBLjODnTh5k9ZM86zhap/Gs=;
        b=rSHPD1coGqv0DXyMYPe7OZfwu79OaEUNx7HIzHcj7dk4emXYIVjPIrMvoahNxlbE5M
         7gMELB3kYt3wCDyh9W7SNhbKgPYACbT3tz0LmM/jRFs8pRuA+kqg5JR8IS2TdfqmJP2+
         UPNdsnkBU1IHQqd0NR3d9G8X1HMd05gvYFMgi12BTtL+4phfrjv572n5L91B4HT/thhv
         66Cc9rAY7vwYaKxcJLJOwlPW5Kc/R7h3ZuUe+5OEcT/GVQ/2FjcSG6PDDnpWfKshqZZ7
         3AhSEd+mAKsW1UjhV6ndYOI+Ykh/s/YwRa5x/LSGMFlICBjPFmwQ415qasVEBbSBd0AD
         2crg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532z/RLUuGA235Q6HrwvFrL4zMqHEMeju7xd5JwfWVAR2RRrK5BN
	IcqEj2mo4OyW0CzMJz8o2dY=
X-Google-Smtp-Source: ABdhPJzrZg/OMaWJuKT0kA430RTxdD5dTz9Qpt9pdbW1VL1GHCguDg/ale40scETLRdY1PQJhuZuwA==
X-Received: by 2002:a05:6808:118:: with SMTP id b24mr363806oie.0.1629325804014;
        Wed, 18 Aug 2021 15:30:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:34a3:: with SMTP id c35ls951935otu.6.gmail; Wed, 18
 Aug 2021 15:30:03 -0700 (PDT)
X-Received: by 2002:a05:6830:418b:: with SMTP id r11mr8869668otu.204.1629325803620;
        Wed, 18 Aug 2021 15:30:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629325803; cv=none;
        d=google.com; s=arc-20160816;
        b=bmycsIuazo8m8O5u0pwexkODK4/ZRtJPD6ZiYy9VmCl2kc23WfyoXWkWJ9HOVYTu/O
         C9Sx04oOrbpUaiFnqxMwZSrzOePNUoDxapSrkKIXxQHUEq6U9MZBaCvK/AKogbrd779d
         Hjo74M/G61JjlyzOqZTjVRp45PhWgoKB7gcYrLwz8WIPe52sxxHy7ez6ALdU3XSwoJ8T
         6z/KVS4vELJ3VUvN+AnE9gwiUiPIO3QN1pzDf09ceP1RbpVGgH/69D1n5i8VRqvqSAPv
         veNlZBIDr0ha+eIW50SIUVqptXKwnNUGH7TkW23A1EspFWlaXS1FHaIjvi9qwrAEXsQs
         brGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=DUTuMfsQqxqX+3pR2oz9dVJNWsHg80kq142ck8zdj0s=;
        b=tcaynkCrnCoxbaMBT0q0CiFVH2zktd4kjBOxafflmb2Or+lGDPjKjxXUtkGp2fTq5r
         e8b5QrQeWNE6ZjQlxkJ6MBcK+oWzTNSsUi2YZ/I+Tabqo2mjP+BaxbzbjXx6VHykd6U2
         xW+NFkuyQgZFhFbzWlWSgU2/sK0gLEb8rI3fYL1UBkCNooGWYLALmlOvumAJlZ/H/OlS
         8R1GmbDhAJAubIlQRV0+bEFQiArm/VTQotR6HqXVhN3iImMGA817+G1msI1+9TnB68Nh
         xeVajFeAp9YnVjqhqk3t9UA/5cay+na+wYukgbuUa90Yn4a55St/K/L+Z4lTaeOWc1p1
         c49w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=HXqi8rpN;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62c as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com. [2607:f8b0:4864:20::62c])
        by gmr-mx.google.com with ESMTPS id q18si88112otm.3.2021.08.18.15.30.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Aug 2021 15:30:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62c as permitted sender) client-ip=2607:f8b0:4864:20::62c;
Received: by mail-pl1-x62c.google.com with SMTP id q2so2727344plr.11
        for <clang-built-linux@googlegroups.com>; Wed, 18 Aug 2021 15:30:03 -0700 (PDT)
X-Received: by 2002:a17:90a:a581:: with SMTP id b1mr1663300pjq.153.1629325803017;
        Wed, 18 Aug 2021 15:30:03 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id n185sm862325pfn.171.2021.08.18.15.30.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Aug 2021 15:30:02 -0700 (PDT)
Date: Wed, 18 Aug 2021 15:30:01 -0700
From: Kees Cook <keescook@chromium.org>
To: Christophe Leroy <christophe.leroy@csgroup.eu>
Cc: linux-kernel@vger.kernel.org,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Wang Wensheng <wangwensheng4@huawei.com>,
	linux-staging@lists.linux.dev, linux-wireless@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Qinglang Miao <miaoqinglang@huawei.com>,
	linux-block@vger.kernel.org, Hulk Robot <hulkci@huawei.com>,
	clang-built-linux@googlegroups.com, netdev@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	Andrew Morton <akpm@linux-foundation.org>,
	linuxppc-dev@lists.ozlabs.org, linux-kbuild@vger.kernel.org,
	linux-hardening@vger.kernel.org
Subject: Re: [PATCH v2 61/63] powerpc: Split memset() to avoid multi-field
 overflow
Message-ID: <202108181528.9CDB56FEC@keescook>
References: <20210818060533.3569517-1-keescook@chromium.org>
 <20210818060533.3569517-62-keescook@chromium.org>
 <7630b0bc-4389-6283-d8b9-c532df916d60@csgroup.eu>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <7630b0bc-4389-6283-d8b9-c532df916d60@csgroup.eu>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=HXqi8rpN;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62c
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Wed, Aug 18, 2021 at 08:42:18AM +0200, Christophe Leroy wrote:
>=20
>=20
> Le 18/08/2021 =C3=A0 08:05, Kees Cook a =C3=A9crit=C2=A0:
> > In preparation for FORTIFY_SOURCE performing compile-time and run-time
> > field bounds checking for memset(), avoid intentionally writing across
> > neighboring fields.
> >=20
> > Instead of writing across a field boundary with memset(), move the call
> > to just the array, and an explicit zeroing of the prior field.
> >=20
> > Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>
> > Cc: Qinglang Miao <miaoqinglang@huawei.com>
> > Cc: "Gustavo A. R. Silva" <gustavoars@kernel.org>
> > Cc: Hulk Robot <hulkci@huawei.com>
> > Cc: Wang Wensheng <wangwensheng4@huawei.com>
> > Cc: linuxppc-dev@lists.ozlabs.org
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> > Reviewed-by: Michael Ellerman <mpe@ellerman.id.au>
> > Link: https://lore.kernel.org/lkml/87czqsnmw9.fsf@mpe.ellerman.id.au
> > ---
> >   drivers/macintosh/smu.c | 3 ++-
> >   1 file changed, 2 insertions(+), 1 deletion(-)
> >=20
> > diff --git a/drivers/macintosh/smu.c b/drivers/macintosh/smu.c
> > index 94fb63a7b357..59ce431da7ef 100644
> > --- a/drivers/macintosh/smu.c
> > +++ b/drivers/macintosh/smu.c
> > @@ -848,7 +848,8 @@ int smu_queue_i2c(struct smu_i2c_cmd *cmd)
> >   	cmd->read =3D cmd->info.devaddr & 0x01;
> >   	switch(cmd->info.type) {
> >   	case SMU_I2C_TRANSFER_SIMPLE:
> > -		memset(&cmd->info.sublen, 0, 4);
> > +		cmd->info.sublen =3D 0;
> > +		memset(&cmd->info.subaddr, 0, 3);
>=20
> subaddr[] is a table, should the & be avoided ?

It results in the same thing, but it's better form to not have the &; I
will fix this.

> And while at it, why not use sizeof(subaddr) instead of 3 ?

Agreed. :)

Thanks!

--=20
Kees Cook

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/202108181528.9CDB56FEC%40keescook.
