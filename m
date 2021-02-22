Return-Path: <clang-built-linux+bncBDM3FG7YWUNBBT432CAQMGQE4E26PSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id CCDBE32208F
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Feb 2021 21:02:24 +0100 (CET)
Received: by mail-pf1-x43a.google.com with SMTP id t12sf7873610pfe.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Feb 2021 12:02:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614024143; cv=pass;
        d=google.com; s=arc-20160816;
        b=VmIykSE4AtEsUwA2yL0qjSBpaaFylJpFWAa/xqBIYiawLlxSE3zQPpr7/MKq1XR0ae
         WtzLzKNlsClMDktG9pY3gSmpB6S5F2hNbLNF4LD/jgUTsC34KMPixskQmfktuSOa/uDQ
         F5fGjy0SCJHhKjaH63hyLOB2gKVSroK2dGC5H55nHfDo4sydESO8GWqJEHDgFDv28E1Z
         hDmuEyVSHaVrfXbrVhJ+5Jo5sljCsxf+BN7js4Tz5PGbFGAK2rb0QW6lrFiUTHX3qibt
         FovTbLH4NfpouzWau4OSGoxCOUwjDC/0XUBpbY7ns6fYnGiE7WXJJPPv3B1hqMeefGPt
         t2dQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=lws6yh5KgLmRvPC+LhInttenF7ZkvdtIB6bR4l+ARG4=;
        b=sJwIgOgPyd5QMGiAI3yRwKjdn+9atOhgEC1pO2WW6E86+rzbN+G580ootm+DmB5TgL
         tjKRu/ow3Go94EauXZa2qYNoR5LWy67dzg+0UkjmBP8LBG/Glqndm1R3hQ2KBYZoVuF6
         suKXOvziToiDc2uZHFTcZOMAyf4YKUNEolqzz3d03ytcA8kJjAZu7c/RSQltk2sObrbC
         sbamuF3StPdvu7DI5/naNXdKGkBcWpGWXN7CMNZOfNRUvJX/vPQhnvyIELTDYpbWdzNv
         G9EhWP3lC7MLCiJ1RCdDabfNzfRct1cPKkaGjRobN3Q7IYiBZmJLiE0hvZrG/7ZvftKp
         JrTA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=s4pH8+Be;
       spf=pass (google.com: domain of jrdr.linux@gmail.com designates 2607:f8b0:4864:20::e35 as permitted sender) smtp.mailfrom=jrdr.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lws6yh5KgLmRvPC+LhInttenF7ZkvdtIB6bR4l+ARG4=;
        b=ILFYeSiirUdXSpLzxnNDGPX9i429FGJU9xOwR7v3AeA8lsmnNBNpYZ6ShVvVJ7SSHr
         cpEhFaId9zihgvokj2s0IbYXN/2I028ECSjNO9OyCeh0qAvCA6Dx86Ly5ujbJkFEyHYr
         dlQjSmy5Uce/DV26pHNFTgUfQ2DO5pq8jbnESOePA8e6kGdMfB+pul+1BJ1iAOUwLSZr
         X6ZkJb9+rBm0eXtAPNHmbkC5Am9vH+DIt3D6n7+/C0jsWQ9L71krw2oDAXXsodENGe1u
         s4EyBnnnRduIbFcoQ2jQxDVj/tbNQbVu96jjsKcgw31jKP6725jyZOQziQcv7oaCFUfY
         aZ0w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lws6yh5KgLmRvPC+LhInttenF7ZkvdtIB6bR4l+ARG4=;
        b=VsKRRoZyGn4CkEwDNm3Xl8N9nCEJHmgo4vJEqRgxL1GaL1jQo+ky1PbNdiTspzOgZZ
         2Jk6oEiYnPFkvLvG39rWLBJeagiWtJ7sOgJ2qvJnFjCe0MAAxjrMYjmWrVo8UgqVDxW8
         tthMF2CseH4eHXiAEM/GKYXwv+alGC2m2he0J8UlmkYEa7jp33ZGzr40n6W3n1scBXni
         nwTin73yKtHYoBUekZ1Z2sWWxBrLjLPn/OydWh6aD+c1RsBUltS4Ux+joE74dVGETxOI
         xMKbuXI3X2+hGtL0/ecWwtSgAM0Q/GmB2aXQkZbVqabg+NLWGu7wNaK0OnSNh6C12iMe
         Z/ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lws6yh5KgLmRvPC+LhInttenF7ZkvdtIB6bR4l+ARG4=;
        b=kw4GZpklieDtYyK1SJC8xbFQmJtSX55seNmJqsvQ/zUArkm1IuCcY+uuvRl3JLcNv6
         Bi3LTmuMMkb/Ca5Nf2RvVbWkElPKZpgsIDIA7tRHHqFZem3BKR0uVfltvULdmfYcYDAH
         CzYihZ44LhtKxgHdd3Pn5vNG2aH6GT7YumHDaPDh0ZL4dXXrQ+Sue1pz6/xVGc66hroS
         iORdGfk62EtaLT7c1u+/yFGrweke5AixIP7NsBnrp/jPru8GvnFpfLRPpa+Xls20L3Ju
         xqWZZbVkcGVjMW0HH7vK7YbJ3JTE1Sa4gr5sp99lRA1b6zOiUDLGClHo7UcUB38oAuw8
         ML8w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532xAChAG6mzcKu9In36efLijFID09iJGKRh4W1SQxpBK9WJAcdc
	f55Y55Si35sWCaTG5Jmt/Ms=
X-Google-Smtp-Source: ABdhPJy1WU6vvq36ojObCbCKylWGMGZsYsbePLqXG8rJrxuhKyJ3AYKyy/3aayHVgPoy1wkUD/Eiiw==
X-Received: by 2002:a17:90a:bd90:: with SMTP id z16mr26280147pjr.88.1614024143489;
        Mon, 22 Feb 2021 12:02:23 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:ba17:: with SMTP id s23ls170028pjr.3.canary-gmail;
 Mon, 22 Feb 2021 12:02:22 -0800 (PST)
X-Received: by 2002:a17:902:6846:b029:e3:8217:8eed with SMTP id f6-20020a1709026846b02900e382178eedmr23627599pln.60.1614024142845;
        Mon, 22 Feb 2021 12:02:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614024142; cv=none;
        d=google.com; s=arc-20160816;
        b=gTCpFZN49KIWnqiuFYfSkvKYrLTFfL/IvmXZUJUeZvq6fUEvwE7TZXn+OgFhD3BpQ1
         yV1RJhLL3q2OTRVotfMbPMZ+S3kDkAk/+G4n4gIlL08koQoTqsBn10ZOgLJR1JzUPVpg
         76HnvlumLKmVNFdWoV5e6BIeqlW/nx/2ntBU8XnbyB4ttPsvq7tMSvQtjBfiKGJSCdxI
         rv9UONHH0Ty36zUKbq29nGafAoMDjVtRuHnzR5lWx8utndSXW9ySYk/KtCXxoy1X4gO5
         81rtS+NG4VyNYaaVqOeK3RrpexpZH/APMdyE+VZ3EpK6S4SV/ENeQs6slJ1EYCkrWl7a
         quAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=1s+B5WtuYqSSpszySjpGGDqv3WX1BW5kV55DZgvvQNA=;
        b=iSS0Bm76mi/tQQGT8lo7Z4teAqnNr3i1wJY1gSwSxsBhJf2eJZ0dFxY3vQnU1fawhV
         dVTpZH7fPcX5xdzJ5EkvKC3cR/PfXz8QWShWDw7VUkMEKmYcSWyZzryV8yGuYf/TSPWv
         ARABRJ+y8ot4RSYGd2WuC08ym+JaXHT/MDSL8xcy0s2HXj58gHspVWb6OS67+J5elgw2
         yttHUavOTEHjwGQuohTvHPgjIWVd5yK5tnnI8GMPJrnNukP0ebH697aVFfu9jFrWTjps
         /gNHv5wC5GXPJ/npA36wMiesGgpzCiSSfHy0SlwE/NLKZQAqxjU9JcB5PvRDyjDp0xZU
         V75g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=s4pH8+Be;
       spf=pass (google.com: domain of jrdr.linux@gmail.com designates 2607:f8b0:4864:20::e35 as permitted sender) smtp.mailfrom=jrdr.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-vs1-xe35.google.com (mail-vs1-xe35.google.com. [2607:f8b0:4864:20::e35])
        by gmr-mx.google.com with ESMTPS id g7si24798pju.3.2021.02.22.12.02.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Feb 2021 12:02:22 -0800 (PST)
Received-SPF: pass (google.com: domain of jrdr.linux@gmail.com designates 2607:f8b0:4864:20::e35 as permitted sender) client-ip=2607:f8b0:4864:20::e35;
Received: by mail-vs1-xe35.google.com with SMTP id l15so3322637vsq.4
        for <clang-built-linux@googlegroups.com>; Mon, 22 Feb 2021 12:02:22 -0800 (PST)
X-Received: by 2002:a67:99c6:: with SMTP id b189mr14675067vse.58.1614024141070;
 Mon, 22 Feb 2021 12:02:21 -0800 (PST)
MIME-Version: 1.0
References: <202102192159.vSI24Z2E-lkp@intel.com>
In-Reply-To: <202102192159.vSI24Z2E-lkp@intel.com>
From: Souptick Joarder <jrdr.linux@gmail.com>
Date: Tue, 23 Feb 2021 01:32:09 +0530
Message-ID: <CAFqt6zbmMj5wtRp8kuy-QhZ+KxXLAzj8eP==YWnpEFq8fxqoVA@mail.gmail.com>
Subject: Re: [linux-next:master 6011/11791] fs/nfs/super.c:90:40: warning:
 unused variable 'nfs_ssc_clnt_ops_tbl'
To: kernel test robot <lkp@intel.com>
Cc: Dai Ngo <dai.ngo@oracle.com>, kbuild-all@lists.01.org, 
	clang-built-linux@googlegroups.com, 
	Linux Memory Management List <linux-mm@kvack.org>, Chuck Lever <chuck.lever@oracle.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jrdr.linux@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=s4pH8+Be;       spf=pass
 (google.com: domain of jrdr.linux@gmail.com designates 2607:f8b0:4864:20::e35
 as permitted sender) smtp.mailfrom=jrdr.linux@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Fri, Feb 19, 2021 at 6:34 PM kernel test robot <lkp@intel.com> wrote:
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   ff90dfd2579b2c7bc1f0baa0cb99c918c6c1ec64
> commit: 02591f9febd5f69bb4c266a4abf899c4cf21964f [6011/11791] NFSv4_2: SSC helper should use its own config.
> config: x86_64-randconfig-r034-20210219 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project c9439ca36342fb6013187d0a69aef92736951476)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=02591f9febd5f69bb4c266a4abf899c4cf21964f
>         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
>         git fetch --no-tags linux-next master
>         git checkout 02591f9febd5f69bb4c266a4abf899c4cf21964f
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> fs/nfs/super.c:90:40: warning: unused variable 'nfs_ssc_clnt_ops_tbl' [-Wunused-const-variable]
>    static const struct nfs_ssc_client_ops nfs_ssc_clnt_ops_tbl = {
>                                           ^
>    1 warning generated.
> --
> >> fs/nfs/nfs4file.c:410:41: warning: unused variable 'nfs4_ssc_clnt_ops_tbl' [-Wunused-const-variable]
>    static const struct nfs4_ssc_client_ops nfs4_ssc_clnt_ops_tbl = {
>                                            ^
>    1 warning generated.
>


CONFIG_NFSD_V4 not defined.

>
> vim +/nfs_ssc_clnt_ops_tbl +90 fs/nfs/super.c
>
> f7b422b17ee5ee David Howells 2006-06-09  88
> 02591f9febd5f6 Dai Ngo       2021-01-28  89  #ifdef CONFIG_NFS_V4_2
> 0cfcd405e758ba Dai Ngo       2020-10-18 @90  static const struct nfs_ssc_client_ops nfs_ssc_clnt_ops_tbl = {
> 0cfcd405e758ba Dai Ngo       2020-10-18  91     .sco_sb_deactive = nfs_sb_deactive,
> 0cfcd405e758ba Dai Ngo       2020-10-18  92  };
> 02591f9febd5f6 Dai Ngo       2021-01-28  93  #endif
> 0cfcd405e758ba Dai Ngo       2020-10-18  94
>
> :::::: The code at line 90 was first introduced by commit
> :::::: 0cfcd405e758ba1d277e58436fb32f06888c3e41 NFSv4.2: Fix NFS4ERR_STALE error when doing inter server copy
>
> :::::: TO: Dai Ngo <dai.ngo@oracle.com>
> :::::: CC: J. Bruce Fields <bfields@redhat.com>
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAFqt6zbmMj5wtRp8kuy-QhZ%2BKxXLAzj8eP%3D%3DYWnpEFq8fxqoVA%40mail.gmail.com.
