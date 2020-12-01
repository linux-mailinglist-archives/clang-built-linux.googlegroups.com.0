Return-Path: <clang-built-linux+bncBDQMZHG72IARB3HPTD7AKGQES44CV4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53d.google.com (mail-ed1-x53d.google.com [IPv6:2a00:1450:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 295942CA2B8
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Dec 2020 13:32:45 +0100 (CET)
Received: by mail-ed1-x53d.google.com with SMTP id s7sf1241119eds.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Dec 2020 04:32:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606825965; cv=pass;
        d=google.com; s=arc-20160816;
        b=pTevQ2TM/85CmqTfhEdYqKdxahtJwCEUT3ah6ff/nHyxSQLjYnhiqSakBXtlGti8Ly
         GbwAKZEFbt1XWRCDivelQ9Z/AKVqvSSFjCnfRVtImHG6++0gXl0WmxYfcfoTgw6qcBUK
         NBUfd2UZgyNun0QsiJx65Ad0sCMftqSuT+G1K6rAcC3eb/3bs2l6983/iMMVDw91V977
         lggHNq+bRVNk7mYg4WbU1DBVfMESlR0dtDfvFl5+arO2wZcY57A0TkYwHiCEGoYl0JoL
         xDOnzPxc7TxQ/ZpLCKrtAfQtlaX+b8+2Z/HqF95a9iim2IBlPKN1octmKlSz0dUHcXPA
         SqwA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=ZgNaIFMJ43I7jIM7YqkZruDNB/QFBUqVjAYg6Q7UJAA=;
        b=iEWySNHdmmz0KtgJlVMXldbvsdJHHwYTYVmKMuBrcX9Ipg7TDxVc/bYy9nYx1mm1hQ
         4zS+y/Rif4P8SXc96dITYrpgmvpEI26KLDKHiwnZNjfkuhXy1QcztcMDCJbayCpkaolb
         Wz0ZDZS9Yxdis5ajXTV74koHur7A9+1yTdy5FP0QAh8Xep34GwJ1op7+wfqJWdzr0Qkq
         iKDjLIY5vYCK1myd5YdeazDaRKmF8rtLLX/zEINPndHAXlrC7oHX/dMBCKw1PjG44UJU
         eypIuFZpK92AYHabNs0m95fSehBwtCG5Roj6URW67WmJ4qcGIkn0f1Q3lGvxcXRkvdKx
         47jw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of nsaenzjulienne@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=nsaenzjulienne@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZgNaIFMJ43I7jIM7YqkZruDNB/QFBUqVjAYg6Q7UJAA=;
        b=ExOMEPb6tS4GlDGdtrwhASvCo9gaHq9wMObRVabbTyi7Iopokd25WuGShsOG1+YS8+
         SE88+cct7l1caGXk6l2vFY3lVCUUEH1sxmI580oZqYOopNC5FwdItXCs0cxLIr3kqsZp
         5mf3Pk333eDCqm7ozq27KU6kjMCZl8jnqtIxD23nb1wan1zKDcrZquYBvAhQJLKprXRN
         ejt/0uF5c57mUcyryfzIwIdxKcQGfXT58rcrcn8y9SH9Bt5PgvcL2IbV8Kik72jPy+TJ
         54PDumTiu6WhdoZlwVFqSPl7INbKLmuDISUofMiXyF3LqrhfUNy6UTAZayzZuhyT6FDv
         /Sfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZgNaIFMJ43I7jIM7YqkZruDNB/QFBUqVjAYg6Q7UJAA=;
        b=Y3qYA9AWDgJt7e1eDTeDKJGYufk8o8+wGoJoOZykTybh+kkm2J85cgp0UOreNhU3jh
         YErqcNmqPnLZv3MIAWKVwFOHlOucuzXf2H73vTMx9iV60SV1pg8SgAZjX65EofNpodsq
         uePk/obstFWk5Q45LXM6D6teQ5vs+feY+JvhiYwDK8RgRpnodcCvidFIC8iU13hGo14q
         pCdFtEs74zOy9g8UdhDAR5bQ3GrtpeGuzRX+AmQzuzLYXwKJVBJhOA+/BZ6aVEqXTk7h
         dGincRKnJk3JTO25+XMIBA9+8Q93f8kAKCUPnPeqSfHSFjZOgEy4t1/7HU+v0NF4TB++
         ewfw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533t1t0IqeECgA6K4Jh0xQk0QjANwSn+KtjnzlqM1vSi4tQe5HNg
	isZD4DTqu7dN0SwePaxdCcM=
X-Google-Smtp-Source: ABdhPJw/KtswMjxOiPVP6LOm9qZHwA53G0dshi+/F1/v+ICWulKsgqAtVHhH6fumcdTNkk7eCmmF+Q==
X-Received: by 2002:aa7:da01:: with SMTP id r1mr2814013eds.45.1606825964867;
        Tue, 01 Dec 2020 04:32:44 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:7c4c:: with SMTP id g12ls912857ejp.11.gmail; Tue, 01
 Dec 2020 04:32:44 -0800 (PST)
X-Received: by 2002:a17:906:5fd9:: with SMTP id k25mr2718878ejv.539.1606825964003;
        Tue, 01 Dec 2020 04:32:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606825964; cv=none;
        d=google.com; s=arc-20160816;
        b=RS8cA24s4f5MtsuJfyCBUQJZxnMUUQ5L2QFhCLoA7faUw4TvNPEOu3oERYj8Oa8xfF
         4amw7mD3K9BGvkWbzLctWbRSgk9t+cKU0+hdA+xqy1ZMu0+Rfw06zWpOMMuxxiiU94UU
         Zr4vSWdMxujXEYaxR7INSx/tNBrNAJp2QXm7JbmDEwakjHZvRADHh+5cr1UPHN3B0a5r
         BKFswQ3BafWV/yNQHAySc5K89+noJioU1pqA+vb1relB/dT/9NiSlmZcfqlKw+e+lZN6
         UmDE7PsWFmUiNC76IVaOe2jMdcTJPj3wnM6Myuprj6doLctnnvo8UIFj9eyzTMptz9FM
         hsTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:in-reply-to:date:cc:to:from
         :subject:message-id;
        bh=NvoYQfXRUX72w/11IjLuV1NMfSlOVVQBRHrvmGeOMkY=;
        b=smKe/CCrINaJ44NG/wXSBeui8MnPFT8OMZP6vY/cprA9EQp6ib0FShbmYSmZlubCQN
         0J/zSHhNFlgQRHkK6gRfkWVHnyBn0esP0cecacjrROV76K8ZsdaluJ6pNUCF+4MRGRIs
         JxbZDenV32fhNdhOF3AIB6O3C1gd+/sUbGovxIevhO9St6Bs9AyJJH3ZpKVMjrRdaQYq
         0mmrCBXyaLEFL1nfCMRSwPgwmjvDjSb6lPZSBFdMdsajb5RrkV8yNRgtHwWUWUiaRXd9
         tS/ODutv5KjAG2Y1HGQjIjYP9HsXoFD1JCIoAoffFA9+E28/C7Y8UElPCr4LYcqgpcxw
         5hNg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of nsaenzjulienne@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=nsaenzjulienne@suse.de
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id i3si71793edy.3.2020.12.01.04.32.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Dec 2020 04:32:43 -0800 (PST)
Received-SPF: pass (google.com: domain of nsaenzjulienne@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id 7B45BACC1;
	Tue,  1 Dec 2020 12:32:43 +0000 (UTC)
Message-ID: <d99b46f0781b8154e30155ec64bd9c10cac9a13f.camel@suse.de>
Subject: Re: [linux-next:master 6272/9613] unittest.c:undefined reference to
 `of_dma_get_max_cpu_address'
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Catalin Marinas <catalin.marinas@arm.com>, kernel test robot
 <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com, Linux
	Memory Management List
	 <linux-mm@kvack.org>, Rob Herring <robh@kernel.org>
Date: Tue, 01 Dec 2020 13:32:42 +0100
In-Reply-To: <20201201122915.GC31404@gaia>
References: <202012011747.PIcmivAO-lkp@intel.com>
	 <20201201122915.GC31404@gaia>
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-uo/JAf+iWfTLbgcMzge/"
User-Agent: Evolution 3.38.1
MIME-Version: 1.0
X-Original-Sender: nsaenzjulienne@suse.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of nsaenzjulienne@suse.de designates 195.135.220.15 as
 permitted sender) smtp.mailfrom=nsaenzjulienne@suse.de
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


--=-uo/JAf+iWfTLbgcMzge/
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2020-12-01 at 12:29 +0000, Catalin Marinas wrote:
> On Tue, Dec 01, 2020 at 05:32:51PM +0800, kernel test robot wrote:
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next=
.git master
> > head:   c6b11acc5f85b6e11d128fad8e0b7b223aa7e33f
> > commit: 07d13a1d6120d453c3c1f020578693d072deded5 [6272/9613] of: unitte=
st: Add test for of_dma_get_max_cpu_address()
> > config: s390-randconfig-r034-20201201 (attached as .config)
> > compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project ac=
40a2d8f16b8a8c68fc811d67f647740e965cb8)
> > reproduce (this is a W=3D1 build):
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0wget https://raw.github=
usercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0chmod +x ~/bin/make.cro=
ss
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0# install s390 cross co=
mpiling tool for clang build
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0# apt-get install binut=
ils-s390x-linux-gnu
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0# https://git.kernel.or=
g/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=3D07d13a1d6120d45=
3c3c1f020578693d072deded5
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0git remote add linux-ne=
xt https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0git fetch --no-tags lin=
ux-next master
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0git checkout 07d13a1d61=
20d453c3c1f020578693d072deded5
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0# save the attached .co=
nfig to linux build tree
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0COMPILER_INSTALL_PATH=
=3D$HOME/0day COMPILER=3Dclang make.cross ARCH=3Ds390=20
> >=20
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> >=20
> > All errors (new ones prefixed by >>):
> >=20
> > =C2=A0=C2=A0=C2=A0s390x-linux-gnu-ld: kernel/dma/coherent.o: in functio=
n `dma_declare_coherent_memory':
> > =C2=A0=C2=A0=C2=A0coherent.c:(.text+0xf8): undefined reference to `memu=
nmap'
> > =C2=A0=C2=A0=C2=A0s390x-linux-gnu-ld: kernel/dma/coherent.o: in functio=
n `dma_init_coherent_memory':
> > =C2=A0=C2=A0=C2=A0coherent.c:(.text+0x174): undefined reference to `mem=
remap'
> > =C2=A0=C2=A0=C2=A0s390x-linux-gnu-ld: coherent.c:(.text+0x344): undefin=
ed reference to `memunmap'
> > =C2=A0=C2=A0=C2=A0s390x-linux-gnu-ld: drivers/of/unittest.o: in functio=
n `of_unittest':
> > > > unittest.c:(.init.text+0x120): undefined reference to `of_dma_get_m=
ax_cpu_address'
>=20
> Thanks for the report. I think it needs the diff below. If Rob/Nicolas
> are ok with it, I'll add it to the arm64 tree (with some commit text):
>=20
> diff --git a/drivers/of/unittest.c b/drivers/of/unittest.c
> index 98cc0163301b..799125ef66fc 100644
> --- a/drivers/of/unittest.c
> +++ b/drivers/of/unittest.c
> @@ -871,6 +871,7 @@ static void __init of_unittest_changeset(void)
> =C2=A0
>=20
> =C2=A0static void __init of_unittest_dma_get_max_cpu_address(void)
> =C2=A0{
> +#ifdef CONFIG_OF_ADDRESS
> =C2=A0	struct device_node *np;
> =C2=A0	phys_addr_t cpu_addr;
> =C2=A0
>=20
> @@ -884,6 +885,7 @@ static void __init of_unittest_dma_get_max_cpu_addres=
s(void)
> =C2=A0	unittest(cpu_addr =3D=3D 0x4fffffff,
> =C2=A0		 "of_dma_get_max_cpu_address: wrong CPU addr %pad (expecting %x)\=
n",
> =C2=A0		 &cpu_addr, 0x4fffffff);
> +#endif
> =C2=A0}
> =C2=A0
>=20
> =C2=A0static void __init of_unittest_dma_ranges_one(const char *path,

Yes, agree with this.

Regards,
Nicolas

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/d99b46f0781b8154e30155ec64bd9c10cac9a13f.camel%40suse.de.

--=-uo/JAf+iWfTLbgcMzge/
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl/GN+oACgkQlfZmHno8
x/4jJggAmR9G+WnJtxw9RpOkSYjT9pi783nE8PLta5UJRUpTivY2AF6tvrtaaehM
ehJOiuDmi6pHtrc1cZ8Z+9NVweIOOspUiAXT5T/1wTiuZEPBtbuuKZEDbip7fRCd
7J0Ds2RHk6fvDzCw0mJ/qAJwZbN140zQmqwYYfBpsEPTFO1/igHSEaLHREQ9Q/hW
XxEX/IhyalKwUvMRoZj4NKGqxGWNMX/gf6duoCxpjE1z76Trml2l5M+9xs5Ps+u5
1fYwyPdWfMJRD9IvUOEOyUYDx4tAh/9Zm08IXybbG27JnawuG50q+LWU74cApi/A
8iF0KCcXxtYkw3C3jaro7Dh9E9xFpg==
=wX5v
-----END PGP SIGNATURE-----

--=-uo/JAf+iWfTLbgcMzge/--

