Return-Path: <clang-built-linux+bncBCRIZROPVQPBBEG46GAQMGQEA4GVFFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3a.google.com (mail-qv1-xf3a.google.com [IPv6:2607:f8b0:4864:20::f3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B74C3276AF
	for <lists+clang-built-linux@lfdr.de>; Mon,  1 Mar 2021 05:31:13 +0100 (CET)
Received: by mail-qv1-xf3a.google.com with SMTP id d15sf11608663qvn.16
        for <lists+clang-built-linux@lfdr.de>; Sun, 28 Feb 2021 20:31:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614573072; cv=pass;
        d=google.com; s=arc-20160816;
        b=kwgRAuDerkxS/GebzcfHHIRVIGPdxdoqK9l35cPpR3ligR9C4ovgDUY3nSxczunrBS
         neR1zF157GU3hNs7LNVniS5LSSzmirkceg0cEWnNSq3lFaMjkXvIwg6imXR8ItvENrBh
         UqkJT7k85dv3iR6eXL2Ss4yIz3E9FanFLa2Lu0QEbLTk3ngJ0mdYuAAXGawuszpEaT0G
         ry2RA4N3nfwcG3EmOGLgH+jxlqNIHot47c69N1D+xFaza/wAL+3slYFKydGv6w58K8uL
         CL3e+Nm1u/g3i0Nd6W7vSPXqeeVr9Zk1wwntQvK1gg8ZzQ7f+XeF5tXAr1jz3HFKjhzi
         dOrQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=2Du9/rf95mM9iTn7qlge+FDZLSNIvnau18MtUNcTvqg=;
        b=DJlNJIRA6du1FCt9z1RWBPE10fDYDvU6T2en/rI1xeurPD23HSf9+754y3EHDHKMBZ
         C6zybFoCMbEtiXbxlCGJvtpA7eWMUdmFUkU1em0iJ++h74uczXLVhOr9y8m4Alpctu0P
         KGC9Ac+r/+Fa+lDgey4Jb+/sBYlXpSkCbXO3lWhlgHfZuyc7h5ppT12pm4vV/PBmYiQa
         hov6qRP09lNwFaonjDdC4AoRP8sGam/0AtbxwBeVLxnmaG4GftUqd+vFjsnCMC1L9g2A
         EjhPQ5sZiohYaxm/7uoNKv72bDYkHy7KsbJJT1ew8zkMSwXjPcSVG7utk7MTui7jeOO7
         5/zg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=ZCAPQW3o;
       spf=pass (google.com: domain of viresh.kumar@linaro.org designates 2607:f8b0:4864:20::435 as permitted sender) smtp.mailfrom=viresh.kumar@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2Du9/rf95mM9iTn7qlge+FDZLSNIvnau18MtUNcTvqg=;
        b=cuIHQW16KH9IFZyY1UAr6tGA0A2RQ7OkKWUf2ZYLUa0PlsJKfE/hKzkNgVdPwVhCJy
         Lp9yxrZQsFoFAoZ+Seycftq2EbGx9BaXvRhTMZXinu09Cxl5Xjuc+f9nuwYij+jYrrOI
         jrkL/l+Nw6E8UlX5BoGhkbWfKv5Ive3wwIFJgSCkCeA5QQlUhupRiyFJcDx+LrB9V1JK
         vkJW4SZK/ONfg4rTNdrqTb+TvwhOUftdVKvInpekyUXOyTOUnAQwONaNA1JTq6ZLPm7q
         AgjQHsgq1D26XJ4AbNQfevmixq3eFkfh2webIKlIYqKonDZKShF52iSyZ4tAUpUokM2U
         YSXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2Du9/rf95mM9iTn7qlge+FDZLSNIvnau18MtUNcTvqg=;
        b=M+BupNkJm5NJQ/CQ1G/AjHLSmdSkCqubXAMaw4Zv+jVK6SGNEALM0ORCvSsiO97Cpj
         D/kXUPRPu5vA+E4MQVIxMHLDYETq+QqNfOcIEam+7jEbaRmZawIT5XaIMAx4BxYGbYxC
         ni+krwl5sj+79AGQfxFcznjZzFLaGp8u1S2Gutwt2ZFAqysN+MD5iQscaRbg1NbIaRid
         hsODsOKfg9WOtGRt5YDvT3qGQisy5uhZ/XQgn2RUGVPcJe9i4KqdUfrasN7Ish8Mciat
         qqpmiAeTWlZBM6/H0nurdQO0NJcuNrJIVJAvr097gcZgk+6aMh2924U4VbyW/Z6vdnUI
         Hs4A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533lWrVuhMSv5Hg/Q8l0OFJCFXJ+gjcm8Wl3IQ5wS7Kv23RtR/R6
	9mfsOgJ50Ec05xtnj8KoH9Y=
X-Google-Smtp-Source: ABdhPJzjGGgD+W2E4eXVMffNj6jx27CmnYVjrzvI3L5CXag5uAX/NzkYjqJ0c5K4onkW1KRIW1qkjg==
X-Received: by 2002:ad4:52c2:: with SMTP id p2mr13321593qvs.39.1614573072153;
        Sun, 28 Feb 2021 20:31:12 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:7c5:: with SMTP id 5ls5069521qkb.8.gmail; Sun, 28
 Feb 2021 20:31:11 -0800 (PST)
X-Received: by 2002:a05:620a:714:: with SMTP id 20mr645017qkc.192.1614573071720;
        Sun, 28 Feb 2021 20:31:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614573071; cv=none;
        d=google.com; s=arc-20160816;
        b=zbjWCQem/hK2fv8M9g9LIdHLrkBbC7qP+e7c0FTEL7YZjV2Itsf8mBc3qVfUNwVuLL
         5dwBfTAUOQsXeNfPBlvUOP639LM5skiQN2eGfYoojp3w8YMzqUbeUO63Zktl0w2UX36D
         6OWDLW/otDp3Cf7Z1hdCMmH2poLMd7zu4tR7X9JPrslNM7eNDCpbotK1bNeUtaNRldh+
         nuwmI5eHt/S1ysP61fgZocquapxueC1klOfOwDs8PRvUXLo+wrXonxdGuTfGE5HTV1Kh
         tuDzES+TiuAa9Z6YXT+dlINkBM7u4gwjZqnadeBEwpICUTbdnbd9URosKtuQaUAxflVC
         funA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=mSJn4TXBF6F/cVvF14ipvDPkOG0Djovk3aa2cutiBzI=;
        b=WGvLx+2GKMKt1u5HkFKKWfuPu5xYhoTcpFj1h56DptsIie++SJIHFN5NFl8KAbhmCR
         Nw6PrN+Jcyp4w9MwyPY21+6eiw0dmXko9rVPt2s2QzyeKmsHZ2jUbrm2Y3asYU2A4tzx
         pgfTrQZNtuxJEPzi4T7iOAXH/rxQ5vxhRmPxXYSZjmLFzdPgdUDgA0Xi9BFqjmMCVVTf
         DiuuKm4c6EEfCBNv/SuUN7JVpiLHSffniuDePDxxNsg3xtDDSVP4Cjl5ZCTDbzPBjpYs
         fvx1U90Q2vfl1RvVsVevTYfd7a0IDEha5KJPuz754O3JxVoCEX+VVawaRnlpYUnzvF/d
         BHoQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=ZCAPQW3o;
       spf=pass (google.com: domain of viresh.kumar@linaro.org designates 2607:f8b0:4864:20::435 as permitted sender) smtp.mailfrom=viresh.kumar@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com. [2607:f8b0:4864:20::435])
        by gmr-mx.google.com with ESMTPS id b4si695576qkh.2.2021.02.28.20.31.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 28 Feb 2021 20:31:11 -0800 (PST)
Received-SPF: pass (google.com: domain of viresh.kumar@linaro.org designates 2607:f8b0:4864:20::435 as permitted sender) client-ip=2607:f8b0:4864:20::435;
Received: by mail-pf1-x435.google.com with SMTP id w18so10630845pfu.9
        for <clang-built-linux@googlegroups.com>; Sun, 28 Feb 2021 20:31:11 -0800 (PST)
X-Received: by 2002:a63:c702:: with SMTP id n2mr12041155pgg.382.1614573070993;
        Sun, 28 Feb 2021 20:31:10 -0800 (PST)
Received: from localhost ([122.171.124.15])
        by smtp.gmail.com with ESMTPSA id w188sm15948916pfw.177.2021.02.28.20.31.09
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2021 20:31:10 -0800 (PST)
Date: Mon, 1 Mar 2021 10:01:07 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: Re: drivers/opp/of.c:959:12: warning: stack frame size of 2064 bytes
 in function '_of_add_table_indexed'
Message-ID: <20210301043107.h73hc4vkhl76dmju@vireshk-i7>
References: <202102280251.dKJVeVYC-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202102280251.dKJVeVYC-lkp@intel.com>
User-Agent: NeoMutt/20180716-391-311a52
X-Original-Sender: viresh.kumar@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=ZCAPQW3o;       spf=pass
 (google.com: domain of viresh.kumar@linaro.org designates 2607:f8b0:4864:20::435
 as permitted sender) smtp.mailfrom=viresh.kumar@linaro.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On 28-02-21, 02:11, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   3fb6d0e00efc958d01c2f109c8453033a2d96796
> commit: 406e47652161d4f0d9bc4cd6237b36c51497ec75 opp: Create _of_add_table_indexed() to reduce code duplication
> date:   4 weeks ago
> config: powerpc64-randconfig-r002-20210227 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 83bc7815c4235786111aa2abf7193292e4a602f5)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install powerpc64 cross compiling tool for clang build
>         # apt-get install binutils-powerpc64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=406e47652161d4f0d9bc4cd6237b36c51497ec75
>         git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>         git fetch --no-tags linus master
>         git checkout 406e47652161d4f0d9bc4cd6237b36c51497ec75
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> drivers/opp/of.c:959:12: warning: stack frame size of 2064 bytes in function '_of_add_table_indexed' [-Wframe-larger-than=]
>    static int _of_add_table_indexed(struct device *dev, int index)
>               ^
>    1 warning generated.
> 
> 
> vim +/_of_add_table_indexed +959 drivers/opp/of.c
> 
>    958	
>  > 959	static int _of_add_table_indexed(struct device *dev, int index)
>    960	{
>    961		struct opp_table *opp_table;
>    962		int ret, count;

Is this a false positive ?

-- 
viresh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210301043107.h73hc4vkhl76dmju%40vireshk-i7.
