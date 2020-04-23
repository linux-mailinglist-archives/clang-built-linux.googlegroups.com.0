Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBSUGQ72QKGQE3DYFR7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id 107AD1B6103
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Apr 2020 18:33:16 +0200 (CEST)
Received: by mail-qv1-xf40.google.com with SMTP id dh14sf6676340qvb.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 23 Apr 2020 09:33:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587659595; cv=pass;
        d=google.com; s=arc-20160816;
        b=puWWdVaA+lK4W5PT/AwvuqgVZYA0AwKXhTMiWoT6fjWp9lD5LOEbJegG2PlXsQnWoN
         lepAr85d4d8fvQ0x2sIDhmjj/Ei4q2CskcIpoWvRo+tDtpEsDSCnSMtibolLfQezvqSQ
         NVjrJ3OD9qe7+ftCLGsn1MJYQ5hszhne8qt61tTHzbsi1jSBACDIw2Eh48b1u/T4O+8B
         dpyz+7HSLd9GjUP4SIl+Kj2dnvgA8lBWLo1KxupS0Z0KDq8MrU6+yOxNfmf3KztYF4vM
         XJ7vOt3NXMU1lIV5WoSicwBE5RFxf4/tt160RzrdKA1Oc67rnwztyQ9nOuxBvWioV5p2
         0cGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=n9xVMNNJS7CrlQNhtxaiX3LShZdliki8zVS9XBmdoIs=;
        b=zQvKjTqNh+obnwEEEYmYorvNNcGEve0f/I0/bJrd+WHTq7i2oF59p0RAGlR9wCkCdb
         XxVIQtE9vcfFZ/ZY479TGhJ5R8S/ZoKoVAyZy42vu3M+GkgrHewqRyXm9o+IWSkDkQ1A
         qUXdf60EAB2TZFaL8dTW5Mp4mLGYKEe0fUqG1vy4k0NNNZiD4EsPi9/RO5ghNR4VSHuM
         lJoTB3eRX6ufD4KMCiKd49knE5wn8iZjobna0je8/00gtTGYCKyAl1LctVnNFmjXSNY8
         AmWkQQlL1DydeQA95/WpY5gsWXFUZjuB8OwUwaEptjesNmmVSUxHu9iVI2sZMyVLIW+V
         Nsvw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MNYFFwO7;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::c44 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=n9xVMNNJS7CrlQNhtxaiX3LShZdliki8zVS9XBmdoIs=;
        b=YB0jGDt5cbMXCN7Gvy6BzMbIxqQ9r4SZ+N6+QsQ77fl+QA4DaqC7nCcKo/xYc3mzu4
         2vttKjGab/s6Bs+fTQEAj+mJUwD+Ju5omxS6WESphW88dWzKOUeYUoNoMozCwXORvbWp
         jGk+4pRSRktjfJI008WLmArApwIkT+DE5bWiTceJOZsyvLQOtBkbluw4isl/PoYYgRX3
         b+N64mW2W1K1YElBRI33N7Khb7u1EfhXCssM4weUbpzOxQ0mH5ymfy2wbYeTa4P+sYLF
         N00ltZYYfPHbOXYZF9FETySD0hjekX6IXsQt00w34kmYJK6G6cLFdUBznhwJCLXkM8W/
         FuSQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=n9xVMNNJS7CrlQNhtxaiX3LShZdliki8zVS9XBmdoIs=;
        b=gz7b8HPIifdDHxryJZ9wQJ/0sSEUEmEkCSPbF4q2bu9JAbEkZ4U2Lh7daU6O1CSqwL
         /1nVnIMkCk7eSWNZ/uC7sWlYcbyfJ6wM0i9WjZ3fZAbc2prrbG1L+AnwMSlWcclfPXTF
         EVn/EWVOCnHEUC+xR5Kl6ms+yB2MgSEA01MXzmURq3H6cL7Ww2mVCbbiapC/Avd5DjBj
         USZ6nMVEW+EZjAzjPJbZM4UE3S4Z1mmWpQw3P8pZ5S7f81N8KXsnEDkTIoJC0OickpC1
         QvsmI5UztcpjK11vA3BVniYt/bNKAdzO+EhCaGWZ5X+vbxSo92+BDDUVpiCiBiektFyk
         YZxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=n9xVMNNJS7CrlQNhtxaiX3LShZdliki8zVS9XBmdoIs=;
        b=aDbucNpBjuS/pbImAVoTURCxImcV61r0a0YjUqNkxGnMIl+zlQf0G22eWuIJ1lLB83
         CrPsFYp6D+wdrzEmeQbfGHZi474jleBM1SFQCwiyCQqeQwqy6DlIYqDlabCJFSw/+EJu
         zHfUvBI2kCl1obKtxCPVnSytK1XZcQgdoUlnnuPHhokk3Iv3NGZnlX7ifPPx6CLhXKr0
         GS3kpOC4jJ47Lv365qfh/GeWTEVHfNGWi7xBLeO50/yYyfwbKryUl2UEAlUqc9r3wSpz
         /2U1qmcaduBOL6BSJWjODidmu5PXJrz6IERCTj2jfnDp9zkmte+8iXvHrkD0EMjsponz
         /Jtw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZ1HjVcYK6PGwbrF3/J94L4ShC30wykmsvGi5XLVOSIgb0oYdgb
	5BQwEIfj0KR/R1KBrQ20a38=
X-Google-Smtp-Source: APiQypIYyfI/4Qde4HZk9dO+/V/dyZmbFZsh78U8O0sh0rQEZWjKWtiP133T20X+eplrfMWTgEJfhA==
X-Received: by 2002:ac8:5216:: with SMTP id r22mr4949586qtn.266.1587659595055;
        Thu, 23 Apr 2020 09:33:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:7542:: with SMTP id b2ls3344609qtr.1.gmail; Thu, 23 Apr
 2020 09:33:14 -0700 (PDT)
X-Received: by 2002:ac8:6655:: with SMTP id j21mr4823105qtp.11.1587659594677;
        Thu, 23 Apr 2020 09:33:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587659594; cv=none;
        d=google.com; s=arc-20160816;
        b=gaXwMfBTj40k3ya9qQl1/lXHuxpnhjnklOMEBljBQtHD8BXLiTBSuwVqoUj9PiWuGk
         7eWvHzyxl+Kt49GVOm/a6niC3qqZwBq3f90zgwPgijW+rjEJgy7if+SSKBU2XC66KjDg
         owlA5gise2/kyVqn44VQ1d59hTOLX6Y0k6cTBVJoDPpYoQNxQR2hFs+/5TuW2/ZRrR8G
         BAdf5sDwTBFxlN0wPBpZjT4x3AqGC5agM4y+f/xTw7VQNMu1gX4pM3jUrepzFICp35dh
         g6IOLa5o7TEsgu9hYSZHoR6fA94ilF1kW3SzknaKcysOhoVp9SQFm5p3dptCHdKwHf7r
         zBRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=+P4exUzF4xLf5Y60Fmf3k7cdV4ADYZbeIV1x1d0wOko=;
        b=kJY37Vje5G0MXwvFjaDSc7YhvqfyVlEKjJlVpsAuW/ABeYNQGaKr/6m/eZ1ZRAp1PA
         kjLe5UVVaYatIS9CaWS2dAXXxG4HhPhUDN+TJRUJqbXmkTL2wNdZYi0Z8ZXLZzInoJYW
         uHnn/dhmtQiXeaaB4Z9pMkzu0aSfOUwGphNDWkH2c8IK8EBjbmJ4LcGh94FJLC8w2NjV
         U8qj0cy85QA0yZlhbu74pUEk4IeXEwaVN5nsZKOM9oFlZMbliZg3YVx5dvsACgSbIxzU
         iDmzc7eBd+5yuiZlrt09vkddzXhGTwp/FKdlG8isjMltarAXx9l/eBcMiWxBsf3l7CRL
         0OVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MNYFFwO7;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::c44 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oo1-xc44.google.com (mail-oo1-xc44.google.com. [2607:f8b0:4864:20::c44])
        by gmr-mx.google.com with ESMTPS id e7si199001qtc.5.2020.04.23.09.33.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Apr 2020 09:33:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::c44 as permitted sender) client-ip=2607:f8b0:4864:20::c44;
Received: by mail-oo1-xc44.google.com with SMTP id p67so1433319ooa.11
        for <clang-built-linux@googlegroups.com>; Thu, 23 Apr 2020 09:33:14 -0700 (PDT)
X-Received: by 2002:a4a:bb10:: with SMTP id f16mr4021122oop.43.1587659593810;
        Thu, 23 Apr 2020 09:33:13 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id k12sm764896oik.30.2020.04.23.09.33.12
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 23 Apr 2020 09:33:12 -0700 (PDT)
Date: Thu, 23 Apr 2020 09:33:11 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: Dirk Mueller <dmueller@suse.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	David Gibson <david@gibson.dropbear.id.au>
Subject: Re: lib/mpi/generic_mpih-mul1.c:37:13: error: invalid use of a cast
 in a inline asm context requiring an l-value: remove the cast or build with
 -fheinous-gnu-extensions
Message-ID: <20200423163311.GA6774@ubuntu-s3-xlarge-x86>
References: <202004232041.oMgr2Xiq%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202004232041.oMgr2Xiq%lkp@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=MNYFFwO7;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::c44 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Thu, Apr 23, 2020 at 08:00:47PM +0800, kbuild test robot wrote:
> Hi Dirk,
> 
> First bad commit (maybe != root cause):
> 
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   c578ddb39e565139897124e74e5a43e56538cb33
> commit: e33a814e772cdc36436c8c188d8c42d019fda639 scripts/dtc: Remove redundant YYLOC global declaration
> date:   4 weeks ago
> config: powerpc-randconfig-a001-20200423 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project bbf386f02b05db017fda66875cc5edef70779244)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install powerpc cross compiling tool for clang build
>         # apt-get install binutils-powerpc-linux-gnu
>         git checkout e33a814e772cdc36436c8c188d8c42d019fda639
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
> >> lib/mpi/generic_mpih-mul1.c:37:13: error: invalid use of a cast in a inline asm context requiring an l-value: remove the cast or build with -fheinous-gnu-extensions
>                    umul_ppmm(prod_high, prod_low, s1_ptr[j], s2_limb);
>                    ~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    lib/mpi/longlong.h:790:20: note: expanded from macro 'umul_ppmm'
>            : "=r" ((USItype) ph) \
>                    ~~~~~~~~~~^~
>    1 error generated.
> --
> >> lib/mpi/generic_mpih-mul2.c:36:13: error: invalid use of a cast in a inline asm context requiring an l-value: remove the cast or build with -fheinous-gnu-extensions
>                    umul_ppmm(prod_high, prod_low, s1_ptr[j], s2_limb);
>                    ~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    lib/mpi/longlong.h:790:20: note: expanded from macro 'umul_ppmm'
>            : "=r" ((USItype) ph) \
>                    ~~~~~~~~~~^~
>    1 error generated.
> --
> >> lib/mpi/generic_mpih-mul3.c:36:13: error: invalid use of a cast in a inline asm context requiring an l-value: remove the cast or build with -fheinous-gnu-extensions
>                    umul_ppmm(prod_high, prod_low, s1_ptr[j], s2_limb);
>                    ~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    lib/mpi/longlong.h:790:20: note: expanded from macro 'umul_ppmm'
>            : "=r" ((USItype) ph) \
>                    ~~~~~~~~~~^~
>    1 error generated.
> --
> >> lib/mpi/mpih-div.c:99:16: error: invalid use of a cast in a inline asm context requiring an l-value: remove the cast or build with -fheinous-gnu-extensions
>                                    sub_ddmmss(n1, n0, n1, n0, d1, d0);
>                                    ~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~
>    lib/mpi/longlong.h:750:21: note: expanded from macro 'sub_ddmmss'
>                    : "=r" ((USItype)(sh)), \
>                            ~~~~~~~~~~^~~
>    lib/mpi/mpih-div.c:99:20: error: invalid use of a cast in a inline asm context requiring an l-value: remove the cast or build with -fheinous-gnu-extensions
>                                    sub_ddmmss(n1, n0, n1, n0, d1, d0);
>                                    ~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~
>    lib/mpi/longlong.h:751:20: note: expanded from macro 'sub_ddmmss'
>                    "=&r" ((USItype)(sl)) \
>                           ~~~~~~~~~~^~~
> >> lib/mpi/mpih-div.c:99:16: error: invalid use of a cast in a inline asm context requiring an l-value: remove the cast or build with -fheinous-gnu-extensions
>                                    sub_ddmmss(n1, n0, n1, n0, d1, d0);
>                                    ~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~
>    lib/mpi/longlong.h:757:21: note: expanded from macro 'sub_ddmmss'
>                    : "=r" ((USItype)(sh)), \
>                            ~~~~~~~~~~^~~
>    lib/mpi/mpih-div.c:99:20: error: invalid use of a cast in a inline asm context requiring an l-value: remove the cast or build with -fheinous-gnu-extensions
>                                    sub_ddmmss(n1, n0, n1, n0, d1, d0);
>                                    ~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~
>    lib/mpi/longlong.h:758:20: note: expanded from macro 'sub_ddmmss'
>                    "=&r" ((USItype)(sl)) \
>                           ~~~~~~~~~~^~~
> >> lib/mpi/mpih-div.c:99:16: error: invalid use of a cast in a inline asm context requiring an l-value: remove the cast or build with -fheinous-gnu-extensions
>                                    sub_ddmmss(n1, n0, n1, n0, d1, d0);
>                                    ~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~
>    lib/mpi/longlong.h:764:21: note: expanded from macro 'sub_ddmmss'
>                    : "=r" ((USItype)(sh)), \
>                            ~~~~~~~~~~^~~
>    lib/mpi/mpih-div.c:99:20: error: invalid use of a cast in a inline asm context requiring an l-value: remove the cast or build with -fheinous-gnu-extensions
>                                    sub_ddmmss(n1, n0, n1, n0, d1, d0);
>                                    ~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~
>    lib/mpi/longlong.h:765:20: note: expanded from macro 'sub_ddmmss'
>                    "=&r" ((USItype)(sl)) \
>                           ~~~~~~~~~~^~~
> >> lib/mpi/mpih-div.c:99:16: error: invalid use of a cast in a inline asm context requiring an l-value: remove the cast or build with -fheinous-gnu-extensions
>                                    sub_ddmmss(n1, n0, n1, n0, d1, d0);
>                                    ~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~
>    lib/mpi/longlong.h:771:21: note: expanded from macro 'sub_ddmmss'
>                    : "=r" ((USItype)(sh)), \
>                            ~~~~~~~~~~^~~
>    lib/mpi/mpih-div.c:99:20: error: invalid use of a cast in a inline asm context requiring an l-value: remove the cast or build with -fheinous-gnu-extensions
>                                    sub_ddmmss(n1, n0, n1, n0, d1, d0);
>                                    ~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~
>    lib/mpi/longlong.h:772:20: note: expanded from macro 'sub_ddmmss'
>                    "=&r" ((USItype)(sl)) \
>                           ~~~~~~~~~~^~~
> >> lib/mpi/mpih-div.c:99:16: error: invalid use of a cast in a inline asm context requiring an l-value: remove the cast or build with -fheinous-gnu-extensions
>                                    sub_ddmmss(n1, n0, n1, n0, d1, d0);
>                                    ~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~
>    lib/mpi/longlong.h:778:21: note: expanded from macro 'sub_ddmmss'
>                    : "=r" ((USItype)(sh)), \
>                            ~~~~~~~~~~^~~
>    lib/mpi/mpih-div.c:99:20: error: invalid use of a cast in a inline asm context requiring an l-value: remove the cast or build with -fheinous-gnu-extensions
>                                    sub_ddmmss(n1, n0, n1, n0, d1, d0);
>                                    ~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~
>    lib/mpi/longlong.h:779:20: note: expanded from macro 'sub_ddmmss'
>                    "=&r" ((USItype)(sl)) \
>                           ~~~~~~~~~~^~~
>    lib/mpi/mpih-div.c:120:18: error: invalid use of a cast in a inline asm context requiring an l-value: remove the cast or build with -fheinous-gnu-extensions
>                                                    add_ssaaaa(n1, n0, r - d0,
>                                                    ~~~~~~~~~~~^~~~~~~~~~~~~~~
>    lib/mpi/longlong.h:725:21: note: expanded from macro 'add_ssaaaa'
>                    : "=r" ((USItype)(sh)), \
>                            ~~~~~~~~~~^~~
>    lib/mpi/mpih-div.c:120:22: error: invalid use of a cast in a inline asm context requiring an l-value: remove the cast or build with -fheinous-gnu-extensions
>                                                    add_ssaaaa(n1, n0, r - d0,
>                                                    ~~~~~~~~~~~~~~~^~~~~~~~~~~
>    lib/mpi/longlong.h:726:20: note: expanded from macro 'add_ssaaaa'
>                    "=&r" ((USItype)(sl)) \
>                           ~~~~~~~~~~^~~
>    lib/mpi/mpih-div.c:120:18: error: invalid use of a cast in a inline asm context requiring an l-value: remove the cast or build with -fheinous-gnu-extensions
>                                                    add_ssaaaa(n1, n0, r - d0,
>                                                    ~~~~~~~~~~~^~~~~~~~~~~~~~~
>    lib/mpi/longlong.h:732:21: note: expanded from macro 'add_ssaaaa'
>                    : "=r" ((USItype)(sh)), \
>                            ~~~~~~~~~~^~~
>    lib/mpi/mpih-div.c:120:22: error: invalid use of a cast in a inline asm context requiring an l-value: remove the cast or build with -fheinous-gnu-extensions
>                                                    add_ssaaaa(n1, n0, r - d0,
>                                                    ~~~~~~~~~~~~~~~^~~~~~~~~~~
>    lib/mpi/longlong.h:733:20: note: expanded from macro 'add_ssaaaa'
>                    "=&r" ((USItype)(sl)) \
>                           ~~~~~~~~~~^~~
>    lib/mpi/mpih-div.c:120:18: error: invalid use of a cast in a inline asm context requiring an l-value: remove the cast or build with -fheinous-gnu-extensions
>                                                    add_ssaaaa(n1, n0, r - d0,
>                                                    ~~~~~~~~~~~^~~~~~~~~~~~~~~
>    lib/mpi/longlong.h:739:21: note: expanded from macro 'add_ssaaaa'
>                    : "=r" ((USItype)(sh)), \
>                            ~~~~~~~~~~^~~
>    lib/mpi/mpih-div.c:120:22: error: invalid use of a cast in a inline asm context requiring an l-value: remove the cast or build with -fheinous-gnu-extensions
>                                                    add_ssaaaa(n1, n0, r - d0,
>                                                    ~~~~~~~~~~~~~~~^~~~~~~~~~~
>    lib/mpi/longlong.h:740:20: note: expanded from macro 'add_ssaaaa'
>                    "=&r" ((USItype)(sl)) \
>                           ~~~~~~~~~~^~~
>    lib/mpi/mpih-div.c:129:16: error: invalid use of a cast in a inline asm context requiring an l-value: remove the cast or build with -fheinous-gnu-extensions
>                                            umul_ppmm(n1, n0, d0, q);
>                                            ~~~~~~~~~~^~~~~~~~~~~~~~
>    lib/mpi/longlong.h:790:20: note: expanded from macro 'umul_ppmm'
>            : "=r" ((USItype) ph) \
>                    ~~~~~~~~~~^~
>    lib/mpi/mpih-div.c:137:17: error: invalid use of a cast in a inline asm context requiring an l-value: remove the cast or build with -fheinous-gnu-extensions
>                                            sub_ddmmss(n1, n0, n1, n0, 0, d0);
>                                            ~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~
>    lib/mpi/longlong.h:750:21: note: expanded from macro 'sub_ddmmss'
>                    : "=r" ((USItype)(sh)), \
>                            ~~~~~~~~~~^~~
>    lib/mpi/mpih-div.c:137:21: error: invalid use of a cast in a inline asm context requiring an l-value: remove the cast or build with -fheinous-gnu-extensions
>                                            sub_ddmmss(n1, n0, n1, n0, 0, d0);
>                                            ~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~
>    lib/mpi/longlong.h:751:20: note: expanded from macro 'sub_ddmmss'
>                    "=&r" ((USItype)(sl)) \
>                           ~~~~~~~~~~^~~
>    fatal error: too many errors emitted, stopping now [-ferror-limit=]
>    20 errors generated.
> 
> vim +37 lib/mpi/generic_mpih-mul1.c

Obviously not caused by that commit but I sent a patch a week and a half
ago:

https://lore.kernel.org/lkml/20200413195041.24064-1-natechancellor@gmail.com/

https://github.com/ClangBuiltLinux/linux/issues/991

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200423163311.GA6774%40ubuntu-s3-xlarge-x86.
