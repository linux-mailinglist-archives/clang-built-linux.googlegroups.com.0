Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB6MG4X3QKGQEAEI4EHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93e.google.com (mail-ua1-x93e.google.com [IPv6:2607:f8b0:4864:20::93e])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D0F520CB6B
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 03:27:22 +0200 (CEST)
Received: by mail-ua1-x93e.google.com with SMTP id 90sf4043013uab.11
        for <lists+clang-built-linux@lfdr.de>; Sun, 28 Jun 2020 18:27:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593394041; cv=pass;
        d=google.com; s=arc-20160816;
        b=B3F8t912qOrN5VhXqAXskXUII7Sgbr4vRr80hNT/KRKm269hFq/ZrQJPDphN/g4/nJ
         BFApAAVL4Zy+eTiASxfQevR4P+OM+fQuNBQE42imR84HffUQXw6Z3O2jq2ubsBsNw2ws
         hBbQr26UFOHp7dkI0p3e//w1nSVWKjfcPQUV/KXsNm7xC9Z+CYrMpjMfwR0LsN8P7Ai1
         dXASf0t/zw7gBYmHpi1K+RBm3slRtHaK87cBjy+CdQBCy2RZV+1xV9uHmsSTc/TKDg3t
         5yENscyyMYrEnP+J2Nf+IiqOGxGwtDEAlp/0TS/W6V/UoHBgKu+A2EC7vLRnm5h6UKa2
         SeQg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=VxaxEOURyUGb/c6tQQu9ij+ldLEIGxmogmxRfraPZ/o=;
        b=Qs4sxPt7fUcwme6ZdoVeh2YJeFxOWYsNAy6uaLaDLk3QqLJ6JICMhiEc9muyn+yq5G
         u5cOwjYujbwfjkvu3SEYTz+zBPE0uiPeJnTmheWzt1RqtQ6DfHycQKExJbrmWFoWM0uP
         S9pyF904Yt2aFjPx9ms+rKV5GEv1tp6TLZ5G2zdZ/I7u1raV09Io+XOcL+CFg3kpt9V/
         Un0AgBabCHgKUkQ84MRYJIGqFS8bifZmvK1eDhGo9uQNFWIq6hAtcnP14FXqZsDEZMHv
         GovWY/W1/8Kfdvu7wT0w68ebR3pMNV47B0bK6sgSuqFfI2Tzsmr6d5X5aGnSqqdzPDl2
         UaAA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="jh3B/FWA";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VxaxEOURyUGb/c6tQQu9ij+ldLEIGxmogmxRfraPZ/o=;
        b=FUosj8d2C8eodpwMeXKDMIdThEkmWtzP4ksr20ZRg3KTDOG0hU17cUGcTnBnu2pzBq
         S4DsGU9qJLoQ+nZWacaRonL8Q72AOz6c6CRYzMeHv1uhB2KIQiKkIkMoTJ+M7VhA3wag
         EASxA7r7ezDTn6Qe8tXaEzKa9Z7c9NT1kmAXG5q+Rx02qn9rd1Wbfv7D1wbMz6MUWnoP
         RKzr/sttEXxmMSSE0C3T8YtWDKdb+HZuG3RYZjwjlpTrl5VfKPTyhvbhgTTC+0t7C2tJ
         JjWQQLoRFUFzTgsFtLi4JLjChFkw8DeED281FAfpViGyM6a8p/Nt42ISVi5PM3KntWaZ
         oYUQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VxaxEOURyUGb/c6tQQu9ij+ldLEIGxmogmxRfraPZ/o=;
        b=VlsSFnHKm34Cgvjmv4AdGcYqCt5FunyjA6H0X14StCeWbP9bCnJyAHc0fEHhJ0IXXT
         BWcoyQzVMijDBHZFnXenhla59O8RLNYId6aGpPVqhaW2vaq47h2BayJCv5wruMRrQ7sF
         CivFWhhN4gUmjcUMQmHBcNHiZVLHFGrdmb5krNkgjR7gKA9wNP91e1gRIEsL7EIHLaUX
         vB/brxkwBedJrqRzZX43/2Ww1sThToLoSggda2cijVfqCFCq6EFaYaQuLPPQIVT7HiQ3
         W2SzZfdDuMKDAEv/+LuYSPn6BbjcB8sKuq2dVaQgFRrU67E006VzZdJI3EI9pVVHj2wQ
         FuYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=VxaxEOURyUGb/c6tQQu9ij+ldLEIGxmogmxRfraPZ/o=;
        b=knaEdI/Io+37FmdwaDQqsA/InD6Jg80l6Cn9iGXF7pHGfjaOgoKBRhWhAa4qFsm7Kj
         TNac7Rkj9P8eom15IeWFnofsj/MxCw3CkcZNfFELTy/XCH/U2LBzu9smVFIJNQjFIYed
         GxL8lVepeXY3130MORTV5qAD5/Xqifg3Bhj9CGuLDNYendIH/hq9bTJntH5Hgym/uCWz
         vMMyG7n78ZWDb63GFHyKu1tYXPh7+rMKsAyCuNDdhqw/gsB7kNdQVVQFfDKLH3uxQXwx
         q0Z3IBSs5ljX74Q5peJf/jxTRVGot+PF4tgTqkavzg56H6IbyQeyQxJwOg13Lxho8TCI
         n2Hw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533GgLoMJ5ocYdgqDX4p2WxtuZPJbtZn2EC64z5soWmx81gP68BM
	Lb1NZ/bQEvhNWEWl1XAmhOk=
X-Google-Smtp-Source: ABdhPJxf+xN0nHkgK/6jsZlVKCPmstHU2t2457JlyWycSneA8wMWIfySXfsFqXQRJrwpW9WH9iuvMg==
X-Received: by 2002:a67:2e4d:: with SMTP id u74mr857772vsu.215.1593394041146;
        Sun, 28 Jun 2020 18:27:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:3201:: with SMTP id y1ls693228vky.8.gmail; Sun, 28 Jun
 2020 18:27:20 -0700 (PDT)
X-Received: by 2002:a1f:4355:: with SMTP id q82mr8180519vka.69.1593394040693;
        Sun, 28 Jun 2020 18:27:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593394040; cv=none;
        d=google.com; s=arc-20160816;
        b=Jppf+RflGRN+uECtLtGyvI+N6ewuBRP6B0YeW4cC01tVewxmpK2Nu9fT/qSeOR1krB
         KSr2xSEOsrxNnuUjbbOUjJi1szUeGfUWdK0jO85wH+1DK2+N4buG1nMshooYoFu5pbQF
         J7/7mexJra061ejjmK+FtMzdfT0MAqW6pMJ4DJvHzRJ0cxrukjIK6ExQwHBXn8KH9DAD
         fPlGY/namLsnc+krVg8HrBslWh9Ess+9zhXF7LAbh8G5CgwO3uM9HEHd+DSNQWlSY05t
         V/qdO2jf3PWmDKbKfGF57i/O+OY3sjvPGrP3hyb2tRJB0/uZsV17xdQc2TdYIguS8UcC
         zaBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Gh7kWWVKsF9AXFjxenEEethkKnBVmujHc0Hib+mjddU=;
        b=CPJ8Xmdy6QWHMsU+PEZC9kEzUby8VLG1zy6k8H58275qbXSZ4/OWGs9FIYeci6q2pT
         6Wzjx6i0RIaJBqucimqN0h71W0ur2WPktOA/gHTtPGlQ7z5KJ9FhSovJSwcEaEe0gNla
         pVEsf/jK6zwKbcqnkmoiapwbgKpMEh0zjHoocyRBJ/IyyzAg8PpFgVLRxkqBFWQaKEDS
         u+czbBL5bu+7YT851K+UHch8ObfQmW4K2X1YjRNd7/TRnecL5Qmt6u4ItV5rPO6yJq5O
         C9ZlVzN3buO57Q2zapjg+BJM0QyO4zpvfjnH+Oa3xob7M1X/VUTuKYHeKm+bHXikvXMx
         Yt2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="jh3B/FWA";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id a68si1308197vke.1.2020.06.28.18.27.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 28 Jun 2020 18:27:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id f6so3278678pjq.5
        for <clang-built-linux@googlegroups.com>; Sun, 28 Jun 2020 18:27:20 -0700 (PDT)
X-Received: by 2002:a17:90b:2042:: with SMTP id ji2mr15425800pjb.68.1593394039667;
        Sun, 28 Jun 2020 18:27:19 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:1000:7a00::1])
        by smtp.gmail.com with ESMTPSA id p12sm31877756pfq.69.2020.06.28.18.27.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Jun 2020 18:27:18 -0700 (PDT)
Date: Sun, 28 Jun 2020 18:27:17 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v8] mm: Proactive compaction
Message-ID: <20200629012717.GA3662774@ubuntu-s3-xlarge-x86>
References: <202006281339.1Xf3f9pI%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202006281339.1Xf3f9pI%lkp@intel.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="jh3B/FWA";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Sun, Jun 28, 2020 at 01:55:45PM +0800, kernel test robot wrote:
> In-Reply-To: <20200616204527.19185-1-nigupta@nvidia.com>
> References: <20200616204527.19185-1-nigupta@nvidia.com>
> TO: Nitin Gupta <nigupta@nvidia.com>
> 
> Hi Nitin,
> 
> I love your patch! Yet something to improve:
> 
> [auto build test ERROR on linus/master]
> [also build test ERROR on v5.8-rc2]
> [cannot apply to mmotm/master next-20200626]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use  as documented in
> https://git-scm.com/docs/git-format-patch]
> 
> url:    https://github.com/0day-ci/linux/commits/Nitin-Gupta/mm-Proactive-compaction/20200617-044614
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git a5dc8300df75e8b8384b4c82225f1e4a0b4d9b55
> config: mips-randconfig-r001-20200628 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 8cd117c24f48428e01f88cf18480e5af7eb20c0c)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install mips cross compiling tool for clang build
>         # apt-get install binutils-mips-linux-gnu
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
> >> ld.lld: error: undefined symbol: __compiletime_assert_306
>    >>> referenced by compaction.c:1898 (mm/compaction.c:1898)
>    >>>               compaction.o:(fragmentation_score_zone) in archive mm/built-in.a
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 

I am fairly certain this is the same error that I hit (with both clang
and GCC) and reported earlier, this should be fixed:

https://lore.kernel.org/lkml/20200623022636.GA1051134@ubuntu-n2-xlarge-x86/

https://lore.kernel.org/lkml/20200623064544.25766-1-nigupta@nvidia.com/

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200629012717.GA3662774%40ubuntu-s3-xlarge-x86.
