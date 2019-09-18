Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBE6YQ3WAKGQELIB65AA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53a.google.com (mail-ed1-x53a.google.com [IPv6:2a00:1450:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D521B5A36
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Sep 2019 06:01:24 +0200 (CEST)
Received: by mail-ed1-x53a.google.com with SMTP id p55sf3506476edc.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Sep 2019 21:01:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568779283; cv=pass;
        d=google.com; s=arc-20160816;
        b=k+VhC8GKI2BCPfD8KdzRS3VfqXGFm4XNyMINVU+HCG49eByndLtENe7a+mB95MinWO
         jQXCozB3yHyUcRTLCeVlQBZ/6IJ8o1mgFh8PLAgioofW0m0liq/pLE8NVGFgA8ZupaGK
         l+mY5CpTD6hqI07GRiXeAY8KFeHpmX6ilcuNgcPp7zKGx8yoZP6CYX7atnPrbnhTlPA7
         X9yxk/MpUYzdYdWq+pOD7NF1CkGvtYBv57EFzQrn1z2bBnqcSDieQxPs1HULgCU+akKl
         6LaWLL5InVgVJJueDneutg2melTzykA9xc0Y6bVYzA/5Vz0FIW+ZFJnD9NOTI9ot0Q9z
         0DsA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=PVvRNMfhpivkqwMFTJust87DSV12zisRMKP1jJX30So=;
        b=DnLXMWRAvLy/SSByXluzX1A+1Nx6ItmAgaqbP67t7FUZCUDzh0oirAmO+ccXu/vFrS
         IVB/e8Ij4KtxS91tTkWBFQJHM3XmSHExkMtajdBmBJtNgbMVrTV8Wr5bCFrhQgL1kpJG
         cm3/VkEAwYywSyH6p603Jb1DyNFdXGPaHr+6gZ1mEoqUCVdSG4V5JNATjozcJn62Uwcw
         TS+fOZ6Wz3YPn7tzZTZump1tICxhcBK6lR/wZo+H+oQtwqIXfeFolKqLJdGnsguxDGYc
         MrJ/NcQOFh60cojflww73TxQaQZzr0R3VmuJN+0PU0BLiJ2LgNScGxYZ3giq3gsu19rK
         8xhQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cKzDzWWk;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:content-transfer-encoding
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PVvRNMfhpivkqwMFTJust87DSV12zisRMKP1jJX30So=;
        b=ryDaf9m4HXm6n7L0Hrk1zDaxJ82HDq2JJuWDkJYpet+Umj8QSvsWfRsIoC45aT4doq
         kylZGAg49/P5nnE60b7oACN6OFOj7ej8ugF0kPOVQDs9NJqgaHtoxKm2bM30DdgIIi3D
         cYg8W4jMlN7OxAy/cI+eoiKotXsGwQ0WvTQZP8EQPs3OeiPATsW+V7nxVXTr+r+FHFjE
         zFd1kVqCUzMcvQ+9JabGJ+DteDpaHdOc+Vypoqd9WzuVsOdONrHgIfV63Fh7O7d2yfV7
         twYBu7vaTzwBA2r+860KCQ6RmkCD7o9SSAslk7kKiB8uLC+uzGOGOXwxLp8J7i6VRI+4
         ym+A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:content-transfer-encoding
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PVvRNMfhpivkqwMFTJust87DSV12zisRMKP1jJX30So=;
        b=O/052wLrKmJpLlREaO0IpihkAHOQL6nuAwsCuCcLt8JH31PexqSatSXJ+UymgtFvAe
         KXTzUjAOqehkVv0ks2lSp1D+xNEH1uWNuDJZqpS9+GsTshWNAx0OlLgQANIv0CzbydTd
         4buWi6PvDyxfAepfIkXImkYPCoa91YBi4c3Cr7s2NG6vlmjbajfqa0SaZ74FZKNpowH4
         93nnFAN3BzH/hnTtmWDI+C5jP8dAAsgFA18zQAA7QOvxtAtx2qBFor1qbyoWl1mhoN5v
         yIa/RUyg2zFay+bU0wc/D123he4umXA9pRbx+WbF6ayE+cRJkfggYa3ReTMcujP2EGeH
         xk5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results
         :content-transfer-encoding:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PVvRNMfhpivkqwMFTJust87DSV12zisRMKP1jJX30So=;
        b=sriUmlp3tfwp/o+sa27w0udQ4CbwdRcjzQNqk7ueUQO4N1zeIw6BTFyDdqu73v0Bi1
         MnIs4RidtZcwXHZ7Ytksr9QFZ94hkknBTTlE8x1h8gfPApRUJH86ZZzLR/MO5/G7oNbp
         p2u0JjfjNix/Nt8xTmAnMU+3S81u0dy0XaYmWToyJ6GUaS1uweHXWnRBlV3C7U4P/MZO
         Wko3cUIKN0cVUkmhv2RgW9PwZHoz8qLzA/DY3pbznR2QhpU9z/CoPjj5J1sgWRD97ZkB
         7rlCJ7FMx0CK/0UEAmK/nhBEAecjZud74F2YYFfUjyEdgjISIxOyUK1QwSloCIGjMvy9
         eNxA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU6zOiXWSx0aZAhDw67jrzarZxNl3Yzz7AZc9zh7JbP/8RwsnIv
	GO0Ea9QscNJXw7qb1yUHiu0=
X-Google-Smtp-Source: APXvYqxX67ooYa90sUjpiYQzIb/He+0zUKZehx3om//jVNIqYJfvgyIvFX/gWmrVCAlFmvXrQBWmKA==
X-Received: by 2002:a05:6402:2022:: with SMTP id ay2mr8153837edb.109.1568779283779;
        Tue, 17 Sep 2019 21:01:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:3591:: with SMTP id o17ls1248456ejb.5.gmail; Tue, 17
 Sep 2019 21:01:23 -0700 (PDT)
X-Received: by 2002:a17:906:fc20:: with SMTP id ov32mr7904169ejb.22.1568779283362;
        Tue, 17 Sep 2019 21:01:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568779283; cv=none;
        d=google.com; s=arc-20160816;
        b=glY3oG7YnTc2ZDP2ffYt5/y6+WOBf3PhwxXchK2j/QxyEAXzOC7haK/Zm9TYUSwi33
         FPml9NNFWq+NBvYpYip5OQVTiS6ub0hYEQ+AlQ8tPAXFvU4s19/cbpBBg0pvAqf0cZVD
         vcSn+osz3Q/aaoWY5qwLomjzd2fMcDEzTN8mmOfTvb2hYIw45PZ42wuGHIZPSCn824xm
         4EMLCpj169X63/2V849ocuE7BAZbAGkYoEThKW+u2i8+dzH3m+tLamtw6GB6C98e6YBI
         6zj+aLh4T55FZXSGkzWdtD1LMjzhMtr2mhtap9fhthqLXpOYiS0VmURrw4tmSfGTDy+f
         a2jw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=quRbqqmJ0VCyvc/Sto1qlfCi6Y8wIwYdCdsu2qxDHH4=;
        b=Q0zQQR4qSsceRN4ILlkWGwiJNziHEputK9ZKSYvmE/l2ySBAzAUZcRjIqONfDLBION
         5Larc+vx+1/zjPPQyYguHLmR7jJSe0l+yLlfGQahZeFKeLTLUUCzCAzGQCdFBkKjLLK6
         ut3drstpBxjIqPc5J9KZ1x6KXLr/R/zkwyVsPI6VB2eZ4IxQ8467HPtkBs9Ag0fl12ON
         qK6kuhDXrMdc8rvJggFXZjpd5QDwTnln/+qBLTfQf0Nq5zE8nvdPC+6xVDkZZHPfB7Cp
         53/YZCvqjMSlfa0f5PVKRWUuGMIlRfjqss+RfxU2j/7ajl8R0Gil9XKKbhTna07U56We
         TKfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cKzDzWWk;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id v25si325692edw.5.2019.09.17.21.01.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Sep 2019 21:01:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Received: by mail-wr1-x443.google.com with SMTP id l11so5267981wrx.5
        for <clang-built-linux@googlegroups.com>; Tue, 17 Sep 2019 21:01:23 -0700 (PDT)
X-Received: by 2002:adf:f606:: with SMTP id t6mr1185932wrp.197.1568779282840;
        Tue, 17 Sep 2019 21:01:22 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id g1sm3067504wrv.68.2019.09.17.21.01.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Sep 2019 21:01:22 -0700 (PDT)
Date: Tue, 17 Sep 2019 21:01:20 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild@01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] ethernet/intel:  release the local packet buffer
Message-ID: <20190918040120.GA58365@archlinux-threadripper>
References: <201909181105.Sp19mv8f%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201909181105.Sp19mv8f%lkp@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=cKzDzWWk;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Wed, Sep 18, 2019 at 11:53:42AM +0800, kbuild test robot wrote:
> CC: kbuild-all@01.org
> In-Reply-To: <20190918000013.32083-1-navid.emamdoost@gmail.com>
> References: <20190918000013.32083-1-navid.emamdoost@gmail.com>
> TO: Navid Emamdoost <navid.emamdoost@gmail.com>
> CC: emamd001@umn.edu, smccaman@umn.edu, kjlu@umn.edu, Navid Emamdoost <na=
vid.emamdoost@gmail.com>, Jeff Kirsher <jeffrey.t.kirsher@intel.com>, "Davi=
d S. Miller" <davem@davemloft.net>, intel-wired-lan@lists.osuosl.org, netde=
v@vger.kernel.org, linux-kernel@vger.kernel.org
> CC: emamd001@umn.edu, smccaman@umn.edu, kjlu@umn.edu, Navid Emamdoost <na=
vid.emamdoost@gmail.com>, Jeff Kirsher <jeffrey.t.kirsher@intel.com>, "Davi=
d S. Miller" <davem@davemloft.net>, intel-wired-lan@lists.osuosl.org, netde=
v@vger.kernel.org, linux-kernel@vger.kernel.org
>=20
> Hi Navid,
>=20
> Thank you for the patch! Perhaps something to improve:
>=20
> [auto build test WARNING on linus/master]
> [cannot apply to v5.3 next-20190917]
> [if your patch is applied to the wrong git tree, please drop us a note to=
 help improve the system]
>=20
> url:    https://github.com/0day-ci/linux/commits/Navid-Emamdoost/ethernet=
-intel-release-the-local-packet-buffer/20190918-080148
> config: x86_64-defconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb0=
6f77a08968c99a8172cbf2ccdd0f)
> reproduce:
>         # save the attached .config to linux build tree
>         make ARCH=3Dx86_64=20
>=20
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>=20
> All warnings (new ones prefixed by >>):
>=20
> >> drivers/net/ethernet/intel/e100.c:2364:6: warning: variable 'skb' is u=
sed uninitialized whenever 'if' condition is true [-Wsometimes-uninitialize=
d]
>            if ((err =3D e100_hw_init(nic)))
>                ^~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/net/ethernet/intel/e100.c:2397:16: note: uninitialized use occ=
urs here
>            dev_kfree_skb(skb);
>                          ^~~
>    include/linux/skbuff.h:1149:38: note: expanded from macro 'dev_kfree_s=
kb'
>    #define dev_kfree_skb(a)        consume_skb(a)
>                                                ^
>    drivers/net/ethernet/intel/e100.c:2364:2: note: remove the 'if' if its=
 condition is always false
>            if ((err =3D e100_hw_init(nic)))
>            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/net/ethernet/intel/e100.c:2356:6: warning: variable 'skb' is u=
sed uninitialized whenever 'if' condition is true [-Wsometimes-uninitialize=
d]
>            if ((err =3D e100_alloc_cbs(nic)))
>                ^~~~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/net/ethernet/intel/e100.c:2397:16: note: uninitialized use occ=
urs here
>            dev_kfree_skb(skb);
>                          ^~~
>    include/linux/skbuff.h:1149:38: note: expanded from macro 'dev_kfree_s=
kb'
>    #define dev_kfree_skb(a)        consume_skb(a)
>                                                ^
>    drivers/net/ethernet/intel/e100.c:2356:2: note: remove the 'if' if its=
 condition is always false
>            if ((err =3D e100_alloc_cbs(nic)))
>            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/net/ethernet/intel/e100.c:2347:21: note: initialize the variab=
le 'skb' to silence this warning
>            struct sk_buff *skb;
>                               ^
>                                =3D NULL
>    2 warnings generated.
>=20
> vim +2364 drivers/net/ethernet/intel/e100.c
>=20
> ^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04=
-16  2343 =20
> ^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04=
-16  2344  static int e100_loopback_test(struct nic *nic, enum loopback loo=
pback_mode)
> ^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04=
-16  2345  {
> ^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04=
-16  2346  	int err;
> ^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04=
-16  2347  	struct sk_buff *skb;
> ^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04=
-16  2348 =20
> ^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04=
-16  2349  	/* Use driver resources to perform internal MAC or PHY
> ^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04=
-16  2350  	 * loopback test.  A single packet is prepared and transmitted
> ^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04=
-16  2351  	 * in loopback mode, and the test passes if the received
> ^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04=
-16  2352  	 * packet compares byte-for-byte to the transmitted packet. */
> ^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04=
-16  2353 =20
> ^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04=
-16  2354  	if ((err =3D e100_rx_alloc_list(nic)))
> ^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04=
-16  2355  		return err;
> ^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04=
-16  2356  	if ((err =3D e100_alloc_cbs(nic)))
> ^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04=
-16  2357  		goto err_clean_rx;
> ^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04=
-16  2358 =20
> ^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04=
-16  2359  	/* ICH PHY loopback is broken so do MAC loopback instead */
> ^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04=
-16  2360  	if (nic->flags & ich && loopback_mode =3D=3D lb_phy)
> ^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04=
-16  2361  		loopback_mode =3D lb_mac;
> ^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04=
-16  2362 =20
> ^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04=
-16  2363  	nic->loopback =3D loopback_mode;
> ^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04=
-16 @2364  	if ((err =3D e100_hw_init(nic)))
> ^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04=
-16  2365  		goto err_loopback_none;
> ^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04=
-16  2366 =20
> ^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04=
-16  2367  	if (loopback_mode =3D=3D lb_phy)
> ^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04=
-16  2368  		mdio_write(nic->netdev, nic->mii.phy_id, MII_BMCR,
> ^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04=
-16  2369  			BMCR_LOOPBACK);
> ^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04=
-16  2370 =20
> ca93ca428b8e09 drivers/net/e100.c                Jeff Garzik      2007-06=
-12  2371  	e100_start_receiver(nic, NULL);
> ^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04=
-16  2372 =20
> 4187592b6d2230 drivers/net/e100.c                Auke Kok         2006-08=
-31  2373  	if (!(skb =3D netdev_alloc_skb(nic->netdev, ETH_DATA_LEN))) {
> ^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04=
-16  2374  		err =3D -ENOMEM;
> ^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04=
-16  2375  		goto err_loopback_none;
> ^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04=
-16  2376  	}
> ^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04=
-16  2377  	skb_put(skb, ETH_DATA_LEN);
> ^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04=
-16  2378  	memset(skb->data, 0xFF, ETH_DATA_LEN);
> ^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04=
-16  2379  	e100_xmit_frame(skb, nic->netdev);
> ^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04=
-16  2380 =20
> ^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04=
-16  2381  	msleep(10);
> ^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04=
-16  2382 =20
> aa49cdd93be632 drivers/net/e100.c                Jesse Brandeburg 2006-03=
-15  2383  	pci_dma_sync_single_for_cpu(nic->pdev, nic->rx_to_clean->dma_ad=
dr,
> 773c9c1f771744 drivers/net/e100.c                Jesse Brandeburg 2008-11=
-14  2384  			RFD_BUF_LEN, PCI_DMA_BIDIRECTIONAL);
> aa49cdd93be632 drivers/net/e100.c                Jesse Brandeburg 2006-03=
-15  2385 =20
> ^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04=
-16  2386  	if (memcmp(nic->rx_to_clean->skb->data + sizeof(struct rfd),
> ^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04=
-16  2387  	   skb->data, ETH_DATA_LEN))
> ^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04=
-16  2388  		err =3D -EAGAIN;
> ^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04=
-16  2389 =20
> ^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04=
-16  2390  err_loopback_none:
> ^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04=
-16  2391  	mdio_write(nic->netdev, nic->mii.phy_id, MII_BMCR, 0);
> ^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04=
-16  2392  	nic->loopback =3D lb_none;
> ^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04=
-16  2393  	e100_clean_cbs(nic);
> aa49cdd93be632 drivers/net/e100.c                Jesse Brandeburg 2006-03=
-15  2394  	e100_hw_reset(nic);
> ^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04=
-16  2395  err_clean_rx:
> ^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04=
-16  2396  	e100_rx_clean_list(nic);
> 89cd8b48e07522 drivers/net/ethernet/intel/e100.c Navid Emamdoost  2019-09=
-17  2397  	dev_kfree_skb(skb);
> ^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04=
-16  2398  	return err;
> ^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04=
-16  2399  }
> ^1da177e4c3f41 drivers/net/e100.c                Linus Torvalds   2005-04=
-16  2400 =20
>=20
> :::::: The code at line 2364 was first introduced by commit
> :::::: 1da177e4c3f41524e886b7f1b8a0c1fc7321cac2 Linux-2.6.12-rc2
>=20
> :::::: TO: Linus Torvalds <torvalds@ppc970.osdl.org>
> :::::: CC: Linus Torvalds <torvalds@ppc970.osdl.org>
>=20
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Ce=
nter
> https://lists.01.org/pipermail/kbuild-all                   Intel Corpora=
tion
>=20

Already reported with GCC (although I think Clang's warning is clearer
to understand...):

https://lore.kernel.org/lkml/201909180905.RsHmoV4Y%25lkp@intel.com/

Cheers,
Nathan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20190918040120.GA58365%40archlinux-threadripper.
