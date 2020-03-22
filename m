Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB5GW33ZQKGQEIHIVGBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 83C6218EB73
	for <lists+clang-built-linux@lfdr.de>; Sun, 22 Mar 2020 19:16:22 +0100 (CET)
Received: by mail-pl1-x638.google.com with SMTP id z9sf7701848pln.10
        for <lists+clang-built-linux@lfdr.de>; Sun, 22 Mar 2020 11:16:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584900981; cv=pass;
        d=google.com; s=arc-20160816;
        b=rz34GG1MsNG6dBL+yEnAd1V5gYiM11Eu0PyDZwhP1U5J0N2kJ2LUnhLIjxlP+baOQj
         qEHLXoWNcBHelY/sfcZS/cG/YDQjG+egdUSqB457PSAGaK4v3c0Zw8VPFdZe2jwe44ce
         usKqrKIecG5TaPOxL9PCq+Xu0yyweM4iN+myqB6sB3N3xKXWXFdFr5kQ6IG+75F8Tkll
         Q+pXm/7i0Yegg0qc/CltpYlKw67md54416P06e79o95zwFSiNztdYYUka+7s0xXU4R7Z
         gsGBjX0Nfv853npy0UIkbWokmmvk2agPRvMjgCbMMHvlAqs2nGw3J1yIYCi70U2K/Wnd
         dSRQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=7GGsiK7RyAxF85QyrWvrHdEqRMI2TuukKHwMJZmbEMc=;
        b=sCPXqVjFKUA2zM27Qg3kwY+0C9X5V7cLnJ3H04j6Ob2pSUDLxcU39aOhIRi9CkInDa
         nBcUcIDZfmuVBf1rgOIrqPAGAd1LpRGIcAAYYR7/EbuIo/SLBJ1S49/wnMrQm0v6KRDG
         lCpEKCXgEWUtiv0W9OSPSmY7bnQg2nIPbhsZ8lAiR/3noUy32NKzJA1oSkN9rjjaCboX
         itYekWLkix7/Wv6Sphu4gHJ2IqgbkcUhOgNgXFLAC7ZeIGESVdswUlSPTSsT903NJ0sR
         CUyewA1zlCe/IRAEBE1qi4VHJ61EMc8OWnTlGETe5hSm6ajMRB0wfIZR+Nvq51Oqekc5
         m8TQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="e1M9im/A";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7GGsiK7RyAxF85QyrWvrHdEqRMI2TuukKHwMJZmbEMc=;
        b=akH+afyGZCXYsto1jCdAl/0YhBsDULdSXZH5BVCkN23uTrC57uB4YcEI/nsLpG6ioE
         YeX5xp3bSEuIcPEgHublhIhfmHZBbhR2rmWs0HF8mbmnRqPygwy6we3dPj14JQCIJray
         4OlMqzqdjqtkSQlHwh6MIzFFg3EYCI5dJ7l50d8pZqczawi3XxbsbVxxhpjHj3zFFd6L
         3t5Sj+ACL42A6fpezdCDn/pdrC1L+vchVw56I6nS4eSJ1ZFozGyPReFnfqzg3A2s6QBc
         E69Mmmbx/RS5n0xSnaJmiuwWPm1dXxaVW5TqkeUlaw2xVJo3ORYXAUnF6QtEicVD+qkK
         Rqfg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7GGsiK7RyAxF85QyrWvrHdEqRMI2TuukKHwMJZmbEMc=;
        b=MkqxUDcScuAqSx9hCcibh8Vy90Rx0P7YudSnCcXudXt1r7oCgU5UPg+wLsGKNYNIDr
         qIZw/oaZ4lLX+UIMOFQ73KdRySPE6vbq84RgSCmnQt6YnNxGbQ9rzKlSryggZQqfxUd/
         xq25upOsgC+YUGG0Yh7KvBvXaolyrAJDicBSS5RCaTiDGr0lhfkt4nnhfxiCAGzKeeoP
         asQluBgwu79m2Of5R2x9gsR7yCd4uF4Nv6lSYJy7F1O33aj4HtxJSH43IkRH2M6C0JZv
         i2zKbvTbw1tGVpnWQq96IxWh965p0j1s7M5vtr/isRdNWbDgwd62jrkswVyxwQozibBe
         G9YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7GGsiK7RyAxF85QyrWvrHdEqRMI2TuukKHwMJZmbEMc=;
        b=nFDQr1K107i5IV5+Sliym/ly08aBiwUxZIJlcVinYhilRtAWxiO8hoXodKXNqaql3B
         lRa1p3VRpEfjcx8UnmreAAICgBGXqEc+yrsEHv/HNIPFYDxjpixQWptKBAFoSnRxDhw3
         mPs8rhVuPmf8ZxYpBxM7I85ZrqBcy8oTW4f6l++qfqnVbKTDnt3Fiu7BGChBC7p+VdSr
         S+P+31lUYgpy75RGwlgbjhQ7q6LvU5gGWO0qFXTbTvi1QXYcGtaCTLij/qo2cWyPCXm7
         yuwWUMSFcBZjQ4fqW4Huh9jnx2b9Yv6RNgmsIZj276bcDnGqiS7hfg5Ji8i5iU6iNGvi
         thuw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2zbYjZQLkYjlTgWPywuYmK8QfC18IL9nnCWPGkJbQQVUSh3+pH
	r1Z9yBSH7gpWCPx1yHgqeC0=
X-Google-Smtp-Source: ADFU+vvPEYr5fNYTRVkVslTkzbi65XoOczawcToReUzEH4bAC1slSa2veC259+2VwWWPhKbnfBLqIg==
X-Received: by 2002:a17:90a:c244:: with SMTP id d4mr21256384pjx.136.1584900980997;
        Sun, 22 Mar 2020 11:16:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:834a:: with SMTP id h71ls6322382pge.4.gmail; Sun, 22 Mar
 2020 11:16:20 -0700 (PDT)
X-Received: by 2002:aa7:94a5:: with SMTP id a5mr20927805pfl.67.1584900980569;
        Sun, 22 Mar 2020 11:16:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584900980; cv=none;
        d=google.com; s=arc-20160816;
        b=okw2tzVOUqdK6w2ZX8c/KLogzUl3zr4+tfZ2a8fRySTFdqmuIOYxjQFYlp0QvBQu8h
         /p7eQP6Y6IaG45oZ0oM4jD4wvNttPMTs9rBclccwjyoSJ1qzAw/DUOPqrYdZIdJvtTjz
         SeFgpXenypsAVRO6aunFMa7KQ1PoL72klBmWHgaKbcu8J0DG994JQnfzSbC1qcjGbx4k
         jb4N/ZTn5lMPsgD+2cgXy4hf8BVn4TWJAlyzODG1AbW1JgfjC3pwMuBJdls1KMU1i6YQ
         U9AbbwzyW/ee5R22S13qvR0xD9HV90rvqquS+gRyB563L4Tg6PzwVgZm6+mECdpO2TaW
         Cbvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=JDuSL6rujU2cEsnhtVONk3Y2ZLncmIFLv5DspKNTj4g=;
        b=mI1ouMxl9U1XiE1tdxmtX89S2HGcPaYaQg+NjAzYI5dtcXawE1TIeteiiPjlvGgcLs
         4mJbGBqaxd+u9DKHQ+/UYk31p5HzKWZo6dtbqenc53UNGIGGTNihNM+178fnuY59nH7O
         QLugMqeytQiRQbSgKjsrxcbaI6ew8UsDl9a1Nn2beNvkWv291gsqn11tOGjzEOBthWV7
         CDQ08IDgQCsz51M5adDi1W3B3DJxNryFV+eWK/7guDTueof4nPjTEB4MtIP/rDiRFm6D
         +8TnQTkl4mtu7AojHZ1nufmaOczyox/GEN2QRLlFwrH7nDN61Pkpo6iH3xIvEcui2PWM
         +t5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="e1M9im/A";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id y5si261614plr.4.2020.03.22.11.16.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Mar 2020 11:16:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id bo3so4960276pjb.5
        for <clang-built-linux@googlegroups.com>; Sun, 22 Mar 2020 11:16:20 -0700 (PDT)
X-Received: by 2002:a17:90a:354e:: with SMTP id q72mr20275201pjb.174.1584900980113;
        Sun, 22 Mar 2020 11:16:20 -0700 (PDT)
Received: from Ryzen-7-3700X.localdomain ([192.200.24.84])
        by smtp.gmail.com with ESMTPSA id 144sm1509626pgd.29.2020.03.22.11.16.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Mar 2020 11:16:19 -0700 (PDT)
Date: Sun, 22 Mar 2020 11:16:17 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Coly Li <colyli@suse.de>
Cc: clang-built-linux@googlegroups.com, kbuild test robot <lkp@intel.com>,
	kbuild-all@lists.01.org
Subject: Re: [bcache:for-next 1/6] drivers/md/bcache/btree.h:379:14: warning:
 redefinition of typedef 'btree_map_keys_fn' is a C11 feature
Message-ID: <20200322181617.GA769@Ryzen-7-3700X.localdomain>
References: <202003222210.WdnyW3kZ%lkp@intel.com>
 <8f189588-b161-ebdc-7e8d-86c09e779508@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <8f189588-b161-ebdc-7e8d-86c09e779508@suse.de>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="e1M9im/A";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Hi Coly,

On Sun, Mar 22, 2020 at 11:10:46PM +0800, Coly Li wrote:
> On 2020/3/22 10:57 =E4=B8=8B=E5=8D=88, kbuild test robot wrote:
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/colyli/linux-bc=
ache.git for-next
> > head:   3c607cda4737b90dd2aa998da6fbd0e3604b9bf6
> > commit: 0bfb95b7429676e3c44a0398a6dec1f8a8b78058 [1/6] bcache: move mac=
ro btree() and btree_root() into btree.h
> > config: x86_64-randconfig-d002-20200322 (attached as .config)
> > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project d7=
79ee152ceff1fd52b3530014a6b10bbaa2d4b7)
> > reproduce:
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/s=
bin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         git checkout 0bfb95b7429676e3c44a0398a6dec1f8a8b78058
> >         # save the attached .config to linux build tree
> >         COMPILER=3Dclang make.cross ARCH=3Dx86_64=20
> >=20
> > If you fix the issue, kindly add following tag
> > Reported-by: kbuild test robot <lkp@intel.com>
> >=20
> > All warnings (new ones prefixed by >>):
> >=20
> >    In file included from drivers/md/bcache/btree.c:25:
> >>> drivers/md/bcache/btree.h:379:14: warning: redefinition of typedef 'b=
tree_map_keys_fn' is a C11 feature [-Wtypedef-redefinition]
> >    typedef int (btree_map_keys_fn)(struct btree_op *op, struct btree *b=
,
> >                 ^
> >    drivers/md/bcache/btree.h:263:14: note: previous definition is here
> >    typedef int (btree_map_keys_fn)(struct btree_op *op, struct btree *b=
,
> >                 ^
> >    1 warning generated.
>=20
> Is there any suggestion on how to remove this warning. For me I assume
> this is not a problem because Linux is built by gcc by default. But I am
> not an expert on such problem, please offer hint if anybody may advise.
>=20
> Thanks.
>=20
> Coly Li
>=20
>=20
> >=20
> > vim +/btree_map_keys_fn +379 drivers/md/bcache/btree.h
> >=20
> > 48dad8baf92fe89 Kent Overstreet 2013-09-10  378 =20
> > fc2d5988b5972bc Coly Li         2018-08-11 @379  typedef int (btree_map=
_keys_fn)(struct btree_op *op, struct btree *b,
> > fc2d5988b5972bc Coly Li         2018-08-11  380  				struct bkey *k);
> > fc2d5988b5972bc Coly Li         2018-08-11  381  int bch_btree_map_keys=
(struct btree_op *op, struct cache_set *c,
> > fc2d5988b5972bc Coly Li         2018-08-11  382  		       struct bkey *=
from, btree_map_keys_fn *fn, int flags);
> > fc2d5988b5972bc Coly Li         2018-08-11  383 =20
> >=20
> > :::::: The code at line 379 was first introduced by commit
> > :::::: fc2d5988b5972bced859944986fb36d902ac3698 bcache: add identifier =
names to arguments of function definitions
> >=20
> > :::::: TO: Coly Li <colyli@suse.de>
> > :::::: CC: Jens Axboe <axboe@kernel.dk>
> >=20
> > ---
> > 0-DAY CI Kernel Test Service, Intel Corporation
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> >=20
>=20
>=20
> --=20
>=20
> Coly Li
>=20

You have the same typedef defined twice in btree.h, hence the warning:
once on line 285 and again at line 401 (in your current for-next branch,
at commit 8aefeeef7d34349097c5687c22396f4b8dd942f4). It also looks like
bch_btree_map_keys's declaration is duplicated as well (line 290 and
line 403).

Removing one of those will suffice, they appear to have the same value.

Cheers,
Nathan Chancellor

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200322181617.GA769%40Ryzen-7-3700X.localdomain.
