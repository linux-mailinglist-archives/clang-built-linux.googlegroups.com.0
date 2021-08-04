Return-Path: <clang-built-linux+bncBDYJPJO25UGBBX4XVOEAMGQEDIGFL5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x639.google.com (mail-ej1-x639.google.com [IPv6:2a00:1450:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E2383E069F
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Aug 2021 19:18:24 +0200 (CEST)
Received: by mail-ej1-x639.google.com with SMTP id q19-20020a170906b293b029058a1e75c819sf1048448ejz.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Aug 2021 10:18:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628097503; cv=pass;
        d=google.com; s=arc-20160816;
        b=ESEkPkUsvtpjo+1tNM7coZb9PAXGgl27ucCfqPKUbsoWxq6vocZ5JEyXpPI5ZMY/zJ
         wFGkFS/Yv6sxxe2/LPq0UFEPJjywB6J7SE1t7cT2Jt9S8RK1RlongYXckzO9AhvMxs4+
         PbcIGeo53nv/7FEPnS33RdPlheUfzGXck7q0M395V7znt5i0RgUar9JXrmQ/r46udK89
         dmawbK8D2jwnMO/ihbUHgOQJb9lM8UIS7iFaI1TL37aVQ8pdwgUF8HRTy+RN3HrVSPYB
         fC5Ob6I0kZk2qdysewgojdBCQGzobm+Jksa7mtL5fxwWGBdVg/dU6X/z+X3UbJM12MG0
         tykA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Q9RgeeanLggSVx3a5g1ogaDAeD1lF4SPmpDs7t0ZekM=;
        b=UAX5c7kXnl3U77j7ArBLktFujUTTjg3XKUC2D73+cWvEWN2BlfuykYYzDG/7DPC0Bc
         /jAFDN6VSjz9N65cWKpU1OX120f3mzSwey9msIjvHJ/NX247aapkevAKQ9d0wIBxmhTt
         V0yCPPSVdG435td7/OutDzsG9Z2PmaKTjlo+F0/q7j88y7vx0lo2RFHTRpL2zpKPsrfI
         4nEcfQfuR5PJipgXZ1+0U2OdY3KWWEy1wF3PzyYNgOVZ71h8kZP2CJCsumCzN9YG81en
         833Zj1weq/Quq/+ggcSKZdRWEv8oPd+vSP400r4c7VcRYudXKEAvMmL2Z9JSFClBY+uY
         cFyA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=s0SYWEmy;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Q9RgeeanLggSVx3a5g1ogaDAeD1lF4SPmpDs7t0ZekM=;
        b=qfhrI7ROCC2Ra5shMAUFsCGrAMmBImWiJSXzbKMq/Med886xAMNFYvEFInuxR9S4SK
         PvbtJmoPbvqQZcT6NsWkL12AfjHHinZjyeOQxlUoJFFpVJ3Sbd+wWk8khJRsXoiquHvA
         q+pkb9nAvUytKwjX9B+2FgwdXaR0PBRu805p8Dz0fVF61Uo0iebajM1o/nALjUDwHEcc
         4djKexL2B9nR2s7+FHP7gneSKbveHsAR77US7tVJgx0Q5NDG1IiMgUKpKecu+P0okAfq
         1B7xl1YgCMAkZO2QF6gapNIWSLly7b/UdKFlksHFNadRb4DSs06Esf0B9Io7gxG3kVLs
         BwgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Q9RgeeanLggSVx3a5g1ogaDAeD1lF4SPmpDs7t0ZekM=;
        b=PvNbhtRNrysDpdzMNDef7dPm6FW2YLkBOSSpz2bGvTHuqaQmD0rIyc7L75W/XmfqTZ
         tOJk1+K7SqnzpuFbEPcwaQR+TuAQWlmOBoX42MKPoBq5VfgmD8w61hUPKljY3HI/prwb
         NBuHAG33GEv/9R78ELbfIxeA8HdyqnqFTleo4lUorgYZ/wqitqMkTLoG4GR0UnzVc0t2
         MBp9sbYHNh78RRWlREVo6GJK6qEngxMPVyPZJgu9HZPFR6lcCyQDOvN4nDjwfhWLH9fL
         lwZ2BGs2jzXTQ657QRfGpUaQu2wKY8mLCUmKvwJGMTbEIiNz0PWP1kjs9sbZ9RgV5qj4
         0VrQ==
X-Gm-Message-State: AOAM530hIsVWUgPcPYULl+TmwF+EYF1rsmXh9S3TpowTe1FUZXvb1VfI
	g8rlyom9o01aU312LMcukas=
X-Google-Smtp-Source: ABdhPJyPCTsei8KZvXotKEQPi/bP35Jyx+KC5u0psLnv3CdSlh5uHTCztDg99pmfzTUlOzpO+Wo12w==
X-Received: by 2002:a05:6402:12c4:: with SMTP id k4mr968412edx.240.1628097503835;
        Wed, 04 Aug 2021 10:18:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:d1d6:: with SMTP id bs22ls1393251ejb.3.gmail; Wed,
 04 Aug 2021 10:18:22 -0700 (PDT)
X-Received: by 2002:a17:906:6d85:: with SMTP id h5mr241606ejt.305.1628097502849;
        Wed, 04 Aug 2021 10:18:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628097502; cv=none;
        d=google.com; s=arc-20160816;
        b=xLns2ee313qgGCFoRiGI04d4VQQQXexTdw2VVWgkBRWWeJgO8yXXeIlKw1roR5htn9
         Oz0qWQMXm/29O1Gg3yfjQRp7ZPYwxoYE+giMPW7e8ToaHyILqERl7WuuBM26ovZmRca9
         /+dHdw2D6sdJhyvth/pXRWBsmNF3MuS/VqKQG2dBA2c///NcnLoywz40H2WFjmEhGp12
         7t+pWmt3GgLBHx7OxSo6ff7k67aEsksnaAVYweCxS3ZK9/kiW5S/YsEXwFizFaExU9Cu
         trcvB/XUQJzyMaH0+yPkwGQwuRrCH2FIqR3QXk/78g6Mrt2rUNQ/xzMfMwXTa52Koim8
         lBTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=CEMSlLo/4eh/Hj8rGHRAwqVIGlNxyDjckrl7zG49UZU=;
        b=0tA++JafvrNOjYKVb3LCKKTAZK4gu20ksfrlc9VKbNzYwIIZCvV0lbmw3X8vyqti6u
         au2PwzkMbTO//vIyjFKtPTOtFpj6D11fg+1IVb2VYszu4JR6X+8LD1aTJPmmXm/rQXlx
         3sKMQMmX/mhYaXYdDYW+Df2SrBCxj7EnEFibxRZqJnAmxMs/OasxCfq0m99/+12xoRGr
         yFynngf8MCFwgppa6+Sb2qsZ13RbAv9Dl6ISUkbLng7QcxCtrcpvRhvHzdFVxvINIQmA
         ZmNS2vDLbmsFIWzhZZfEV/l4Q0J8OF+jDXqW8P1lkfschl9E7WuPEsNpR0rz8YQ4sOjU
         B0rQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=s0SYWEmy;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com. [2a00:1450:4864:20::12e])
        by gmr-mx.google.com with ESMTPS id z11si175917edb.0.2021.08.04.10.18.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Aug 2021 10:18:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12e as permitted sender) client-ip=2a00:1450:4864:20::12e;
Received: by mail-lf1-x12e.google.com with SMTP id n17so3004891lft.13
        for <clang-built-linux@googlegroups.com>; Wed, 04 Aug 2021 10:18:22 -0700 (PDT)
X-Received: by 2002:a05:6512:39ca:: with SMTP id k10mr196778lfu.547.1628097502271;
 Wed, 04 Aug 2021 10:18:22 -0700 (PDT)
MIME-Version: 1.0
References: <202108041936.52T4sUU6-lkp@intel.com>
In-Reply-To: <202108041936.52T4sUU6-lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 4 Aug 2021 10:18:10 -0700
Message-ID: <CAKwvOdmOTNTGvGeaRKSp4f6M1PC-HQLjMoaeQU6WM9ygxuU5_w@mail.gmail.com>
Subject: Re: ERROR: modpost: "__raw_writesl" [drivers/i3c/master/i3c-master-cdns.ko]
 undefined!
To: Chen Rong <rong.a.chen@intel.com>, Philip Li <philip.li@intel.com>
Cc: Nathan Chancellor <nathan@kernel.org>, clang-built-linux@googlegroups.com, 
	kbuild-all@lists.01.org, linux-kernel@vger.kernel.org, 
	Andrew Morton <akpm@linux-foundation.org>, 
	Linux Memory Management List <linux-mm@kvack.org>, kernel test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=s0SYWEmy;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12e
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Wed, Aug 4, 2021 at 4:39 AM kernel test robot <lkp@intel.com> wrote:
>
> Hi Nathan,
>
> First bad commit (maybe != root cause):
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   d5ad8ec3cfb56a017de6a784835666475b4be349
> commit: 6fef087d0d37ba7dba8f3d75566eb4c256cd6742 hexagon: handle {,SOFT}IRQENTRY_TEXT in linker script
> date:   4 weeks ago
> config: hexagon-randconfig-r023-20210804 (attached as .config)

cool, one of the first reports from 0day bot of hexagon :)

> compiler: clang version 12.0.0
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=6fef087d0d37ba7dba8f3d75566eb4c256cd6742
>         git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>         git fetch --no-tags linus master
>         git checkout 6fef087d0d37ba7dba8f3d75566eb4c256cd6742
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=hexagon
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>, old ones prefixed by <<):
>
> >> ERROR: modpost: "__raw_writesl" [drivers/i3c/master/i3c-master-cdns.ko] undefined!
> >> ERROR: modpost: "__raw_readsl" [drivers/i3c/master/i3c-master-cdns.ko] undefined!
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmOTNTGvGeaRKSp4f6M1PC-HQLjMoaeQU6WM9ygxuU5_w%40mail.gmail.com.
