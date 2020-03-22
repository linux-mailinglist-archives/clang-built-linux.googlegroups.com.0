Return-Path: <clang-built-linux+bncBAABB7P73XZQKGQEHRAWAKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id EB90318E985
	for <lists+clang-built-linux@lfdr.de>; Sun, 22 Mar 2020 16:10:53 +0100 (CET)
Received: by mail-lf1-x137.google.com with SMTP id c14sf2285693lfp.22
        for <lists+clang-built-linux@lfdr.de>; Sun, 22 Mar 2020 08:10:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584889853; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZzodvzbbYsV+l+/SO3571UTWMxZzZhVd/WvEWjWumzwhYfTrtKurVYHlmeXu1uDkTf
         dCxZs/51O8m1amVha/jkY2m/1v4Ae7Cnij55MGPGliEludz2dN+Brv/7dhxRc2EtO0M3
         DqFEt2ZqaewoYyHPBUdxGAarNuPolsywHpW6Rfk3Wxv1HeVr85HEiKqK/PgCag9ERqQu
         WL9m8oMwEFnD7s4VAQNc8gmnmn2aB7Fyn1wFx7YvvRZAgP9saZGO7d766ztI73DVw0bI
         o8DfDz9Rquy5dA/ZLwGiH9zTIaF/dVD5/O/Zo6eRUNGO//EKkpyeYAY7y46/9G3J6PgF
         TOTQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:organization:from:references:cc:to:subject:sender
         :dkim-signature;
        bh=GvPfSrq/UE3e5qKgJ1BdB2NtXdg8WMl0WGKD9eRJ4yg=;
        b=lYY9wjJeN3YZ/NVuU9xDwfiSB2uShExQAn5Ecbia0Iuf27U2bfEXIzRsJTaLs6LGHU
         NsuROId2GBgFQ0kzRX6sTytFxKIRKqlrYJRrT6o5SOzGgwNgOK8UTppy3VmI6RR37eBE
         ykGUseXcxtWGRnXS2B9U4ETnQ2FsuHA2779Xyw7PT0zA3W5xMj5ReeyxoyjqYMn2ABlC
         OVKU6iA1OvDNaJjrkGWObvcMoGa/liX8DZ07CCO6CN2JUdQZX5GSMIgwp7aULq+x9a4h
         XmDIJT0cr+/VRXFxuKznPFBMJPJQai4kn2rsFrfL3jfOeDT05u/Vjo5yLd4RbB4Lm+Ec
         8DaA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GvPfSrq/UE3e5qKgJ1BdB2NtXdg8WMl0WGKD9eRJ4yg=;
        b=nVS62aUFbbpzqMslK7j1WloIrA6Wr8xqSkBk/1fXwUkvOLX8kI/Y20XqzwuSf4JTPy
         lEiF5jaCUPu8WLmgynLnRWFK6t4mhJ8zi+KY8nIvLzbM0s9RZOEuY/K/QGIDNu+XzLsr
         3XE24/RmMcgUxRW8SadhUDTcSoGMTymLKFap5VO4Hjx1Ij/jSJ+7cSpezD2+VftLwYwj
         vKM5/FfGf4KZk3x+m5w4dkILemzhGrffTCBbJegL4mguNYRy8rktPn6J0NE2sGAdF/6/
         HmbxIwz5XKrHFXbUF6BMNR4i57ss0Jza1uu9vLBBd0doCFuheVQ1ZVcvyfbbocY2N7yI
         OMVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from
         :organization:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GvPfSrq/UE3e5qKgJ1BdB2NtXdg8WMl0WGKD9eRJ4yg=;
        b=nVRJYOKJ2qtuSLFkGEGMtjToNbtNEgHYLAVrgGJjTy1rD/wO8mRHGhVgC7ztVfJC7O
         ONOyEPhkPIg0yaXv8rni6JWqJcGxGedv84Mgrqa2KEJgUkP/Upswcd4rCqQdTPQCzLn2
         SPtBOosfhRzQiQJqh2LtW8XrTqEuYbK5ROpZVIMgD3J46HXcgj7TIrcACrOrCvOoEv5w
         MCsryFuwBksznZT9X6ESFVMM8rmop+D4+6bXTTOZ01jaayCNNMHadk6xdtvgB17riXtP
         uO4NsxZkPRz/UpbDRBxH/XgsPzA1LaV0orKqQmfQdQ0Md46fwDAO7dcZ4j1mxhy6fHeX
         7Fog==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3rEMr7ysmiSJnJQvUXcnPyDekl860D42ujOBjDEnTzdTCFpdpe
	LhspK0UK1YZ3pL3Ga/3zn4E=
X-Google-Smtp-Source: ADFU+vvzS+VAGouPUHUVGZMl5bYSP0uhLGwswf5v6tZGRFTnmv/rPiqtCC5irNusqX46j9/z1CZiqg==
X-Received: by 2002:a2e:b804:: with SMTP id u4mr1714739ljo.159.1584889853415;
        Sun, 22 Mar 2020 08:10:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:10c2:: with SMTP id k2ls1657906lfg.9.gmail; Sun, 22
 Mar 2020 08:10:53 -0700 (PDT)
X-Received: by 2002:a19:6144:: with SMTP id m4mr10421228lfk.192.1584889852949;
        Sun, 22 Mar 2020 08:10:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584889852; cv=none;
        d=google.com; s=arc-20160816;
        b=rWwL+IZ0gbyyXKXBdAcV1rpLB0c9Qby9M5ePVJw1xQNwoMo5yUFPiTUa/zRmSywd9B
         KzqqnydMzi0bmb7xyobn0LQjs60zfxyHq3o93gltnq0fNBO21Y20g8JMsk0g3qQB8d8K
         L3CW1hS8TKlcmkTpGuOs2qavZSbDo3Gyk/iMsbnLioNq+A1JskcEiZWX6pH2uYMmcT8m
         Gtv6aIGEduUaYYk2ajWyD37vEfYv9kDKUBPEH5wbQQTz3iRelt10OIb+UnmztSZsjPO6
         X0EDvMzfmWwSoNOaEvuK/I3ZhqoJ/NBbhibzPRgRIBndT8ExIcBkdKmglQPf3z/vGT7G
         1Vsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:organization:from:references:cc:to
         :subject;
        bh=gl5i3fR6OxPR0OBSBZI/cHxqz6wdQM/omajVHUNc3XE=;
        b=v3WlCjtuRRb34vhgXj9XynkglXUXbBX91tMk7xytTTyc/wezCYc9bE5VlE4L1BQNCo
         hDqWrLBVGMLrFWY1nGXBd99e18MrDV17Yh3h4PuhUt0Y9toQKKCsSCTD0/CfN78j9JEe
         u66MjcAD14q2JwKbZ0VlrpiwHxLK+WhC+0clLz6Qdo5d3CCWfu86Gvpi1kx8HlJpBq3i
         cVlT6qDbBFv8zSJZfW9UosNFgbgXjnmECDe2NLDhfuYnmeKixUKavYEVUdB2JF4cXD1O
         tak6pSXg9Wr8+aF5KEibJi+onHUcF7A4wqBvzA6vRKigfSP2rHC3hGXqBXhi9M3XQ+s0
         AmNg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id d12si669663lfi.2.2020.03.22.08.10.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Mar 2020 08:10:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx2.suse.de (Postfix) with ESMTP id 0455CADBE;
	Sun, 22 Mar 2020 15:10:52 +0000 (UTC)
Subject: Re: [bcache:for-next 1/6] drivers/md/bcache/btree.h:379:14: warning:
 redefinition of typedef 'btree_map_keys_fn' is a C11 feature
To: clang-built-linux@googlegroups.com
Cc: kbuild test robot <lkp@intel.com>, kbuild-all@lists.01.org
References: <202003222210.WdnyW3kZ%lkp@intel.com>
From: Coly Li <colyli@suse.de>
Organization: SUSE Labs
Message-ID: <8f189588-b161-ebdc-7e8d-86c09e779508@suse.de>
Date: Sun, 22 Mar 2020 23:10:46 +0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <202003222210.WdnyW3kZ%lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: colyli@suse.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted
 sender) smtp.mailfrom=colyli@suse.de
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

On 2020/3/22 10:57 =E4=B8=8B=E5=8D=88, kbuild test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/colyli/linux-bcac=
he.git for-next
> head:   3c607cda4737b90dd2aa998da6fbd0e3604b9bf6
> commit: 0bfb95b7429676e3c44a0398a6dec1f8a8b78058 [1/6] bcache: move macro=
 btree() and btree_root() into btree.h
> config: x86_64-randconfig-d002-20200322 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project d779=
ee152ceff1fd52b3530014a6b10bbaa2d4b7)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbi=
n/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout 0bfb95b7429676e3c44a0398a6dec1f8a8b78058
>         # save the attached .config to linux build tree
>         COMPILER=3Dclang make.cross ARCH=3Dx86_64=20
>=20
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>=20
> All warnings (new ones prefixed by >>):
>=20
>    In file included from drivers/md/bcache/btree.c:25:
>>> drivers/md/bcache/btree.h:379:14: warning: redefinition of typedef 'btr=
ee_map_keys_fn' is a C11 feature [-Wtypedef-redefinition]
>    typedef int (btree_map_keys_fn)(struct btree_op *op, struct btree *b,
>                 ^
>    drivers/md/bcache/btree.h:263:14: note: previous definition is here
>    typedef int (btree_map_keys_fn)(struct btree_op *op, struct btree *b,
>                 ^
>    1 warning generated.

Is there any suggestion on how to remove this warning. For me I assume
this is not a problem because Linux is built by gcc by default. But I am
not an expert on such problem, please offer hint if anybody may advise.

Thanks.

Coly Li


>=20
> vim +/btree_map_keys_fn +379 drivers/md/bcache/btree.h
>=20
> 48dad8baf92fe89 Kent Overstreet 2013-09-10  378 =20
> fc2d5988b5972bc Coly Li         2018-08-11 @379  typedef int (btree_map_k=
eys_fn)(struct btree_op *op, struct btree *b,
> fc2d5988b5972bc Coly Li         2018-08-11  380  				struct bkey *k);
> fc2d5988b5972bc Coly Li         2018-08-11  381  int bch_btree_map_keys(s=
truct btree_op *op, struct cache_set *c,
> fc2d5988b5972bc Coly Li         2018-08-11  382  		       struct bkey *fr=
om, btree_map_keys_fn *fn, int flags);
> fc2d5988b5972bc Coly Li         2018-08-11  383 =20
>=20
> :::::: The code at line 379 was first introduced by commit
> :::::: fc2d5988b5972bced859944986fb36d902ac3698 bcache: add identifier na=
mes to arguments of function definitions
>=20
> :::::: TO: Coly Li <colyli@suse.de>
> :::::: CC: Jens Axboe <axboe@kernel.dk>
>=20
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>=20


--=20

Coly Li

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/8f189588-b161-ebdc-7e8d-86c09e779508%40suse.de.
