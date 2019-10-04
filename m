Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBCWR33WAKGQED2VS42Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23a.google.com (mail-lj1-x23a.google.com [IPv6:2a00:1450:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D391CC40D
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Oct 2019 22:16:11 +0200 (CEST)
Received: by mail-lj1-x23a.google.com with SMTP id y12sf2060993ljc.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 04 Oct 2019 13:16:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570220171; cv=pass;
        d=google.com; s=arc-20160816;
        b=D438JA9hwArILuRmKJjyWq2BvTQ2BLvGZptY/YtktSymcpHI0bT1iHW9M34tF9ySJg
         srBFGShRtsblmZDManEtWkodM1yxvSXBBBPgdZ5DHOEZdX625D09Vx28bufAgicyr0hK
         DLQSHcl6sTRHQVI44gY5Tn7ie5Dgv8oVtA+qxLYT2zbRnZZ7t84LzzADDkp7/TVYk46c
         iLM5lsdIwuZ7Jcu8lrn47Ds2RoSYIM73cng5lCavj7Pt9KoxpG5u8eOoCZlSGBYytMaY
         qM1yWV2yfozqIy3RqkeEewrVkepaOT6k1L6uN3HSnZ3Y9a+gWAZJ+EUQTP90cYl7Z/HS
         1bbQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=4TT8rwRdMTsyzat0ufabSEoI0cMBXFDC1+Czdkt5UF8=;
        b=ONpEnYgZ7sPjzLlKKMyxOOkfrf7++mQshihuWYUaRcDK/Dw0sdA1uvU594k3tOVdvc
         /O63dT+BmA7ICMCLEmHii5ykwM2fNded7P5YfL+oaJdL+opIXAETV30nuga6CjtGo0zz
         jYzkt6l7Pm/oCVE4Ugpy+G/iKkdHSR6Sqbhk1UDX0fbvBWGwTSqF/2/kDj73jLr17DlS
         rGIg8jecasoK9OLNafNFKGSGcL2N96LFwVLZAr//wd6syUyLRWv0eOqx5+VZBu87Yfjc
         ZkAd1+yx8hWIEJyYNtVb4QTVY9uAoAF3cGQwf6cpKBku+sAvXFI97UjR/KQle6gEOc/o
         KYPA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Zi5OntwI;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4TT8rwRdMTsyzat0ufabSEoI0cMBXFDC1+Czdkt5UF8=;
        b=onRk3JysHs04GlzjZrVJxY1lbJEBEskQ7PAiNiOiNa3pwSHx/eNzj1SELemUCyUFvT
         OJri3qtVZXPUhg+bdvxWA5nFPj2clcFLH5T06LCCr/E6X4UsJ4llI7ZvI89CZeDmzR4a
         hvoebdkSI/+Tyb/3sVxjXTcm6WZYDv3D2SHLwj5cLJA8MEd/DN18YBizAQsQWkR7NSMH
         wxYYw3EO3PmXMNILY/OfBtyIjt8tj1mx2x1b1uVThB3QX4roWnkSR+47xnvY+pwDu2l8
         3d0WqIYrM2CQCDWE5oZ6OmwcyuP4l0hV1oj5baatJIpQc+oJ7aPpdgNfxLkZOFw2VLgv
         90IA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4TT8rwRdMTsyzat0ufabSEoI0cMBXFDC1+Czdkt5UF8=;
        b=f6lHZPXqJSmC7wo9q+j4ZBJu2AB6v+jCL6Sk0lzUp+NPEm+Ucs2PAWQLJS/6IX/8mY
         7z1hr19HwMwbgF3SkvVL8OKRqZf44n5iysiTF4vqD2KvgcYjl6g6CFyrrmxUxTH6LFxG
         FZaXBKlK6UAeq2+k1VJAZ/bYVDiHLPFlNTXG5RGb1dbJuYDq/XYmO2Lf9i5kpjUqehy1
         zhQh/vG1th0gBzzyB78R/fYdk/YXw2SyGMSE0WdQ1lWqOt/g2Qmg60aV9gc8YvTZqdFg
         i0QybaOzSaryfzglR9W9lFuflHhXvC+UifFQItL8zr+QkkzWXL4UyMWpgsz7pieADVck
         8XJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4TT8rwRdMTsyzat0ufabSEoI0cMBXFDC1+Czdkt5UF8=;
        b=ehVAUVhwcalJtjBE7P46JqoiSqRORTwm/eajJS27jVCyud8F60866bIU4ay+FrjjBU
         F3JX8SOuAzOFkyjOMQyFF3Z1bef/Qf1nFg1AQ5RQj5peRQydGnS99pEQF6Akl+l+KpSO
         rfZKqCJouCgWzaEL3wlhAQhEyTMY8cvp9VLgUq0/LTJ/jRJ84o9aWhM5DirU+QzPP1As
         Rp4WbmQHkDp/nfRLY/mwYIQP4tdy9mnioHgFmyh7lmxqMdQpxlSPNUYXtzfw0vZG3zLH
         9WG3AKAF8ZkEW0bvokPzMV+AwpUYCTef2rmuLtZ5ojSKy57NP2velhxiEZxuK91NJ8tP
         YUCQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWN+n7TvtCt1C99UoR90VpFawo1yesp7EKTjIWRAQl8C/252Q8Q
	MOMU5qlZr7W8i2k6JwurnLM=
X-Google-Smtp-Source: APXvYqwYbSRtiW7TNam6ZWtom0w5qg+CZPzMQ7nYHTnzEo6VkoDhgcG4Imflm2et4XeeeRdY4TOvFw==
X-Received: by 2002:ac2:4a89:: with SMTP id l9mr3263116lfp.122.1570220170986;
        Fri, 04 Oct 2019 13:16:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:f613:: with SMTP id x19ls1043756lfe.16.gmail; Fri, 04
 Oct 2019 13:16:10 -0700 (PDT)
X-Received: by 2002:ac2:593c:: with SMTP id v28mr9670642lfi.11.1570220170505;
        Fri, 04 Oct 2019 13:16:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570220170; cv=none;
        d=google.com; s=arc-20160816;
        b=BTxg/FayovmjaxyS1TYBFUWVkkdfs/UwsmNIlV5b77wDplx9Ky6OhDirhNwJJWxo57
         Evv3e6HVmDjvLhgKmRMfnY/j1toA70ximIOjwYc79peBSo7vciCYUhzsriN08WQeeDVY
         /LEuTO13vPsxaJC3BXsdSBy7WTA/bwccFWAp1S0geOLKvAw+NlEyTHoEz6lC3UNh04aJ
         Iy6gZw4vUpsl52nJXVeyWafmneEKF2ir/PWZU4ATBwtwglEbG03M2zxm8TxJWMqgIIi3
         oFZ5NOMN7akYexUTzTOB2Y10EAMNpdzzXWBO94HJkv/t5abFFKdLBn3dMgp2vjz5B7k+
         PZjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=y3QE5zImtdCdAZW6YywpA7k3DY9FFYs9tVfk1czEBTQ=;
        b=AZWp0I6IkiEXxcNEpmkvkl2dAv5AewjJhvHauEIqqGsJarCLef6TfFCI7wEfbS0AzG
         cyMKdbitqtGDztTEeViHL/JEIUblIGEcNk33v54JRQx5zktNpacjeEcB61cM4wTN03JT
         r7diqkCDX56pIJlBeyZDr6dnghbnoMLsT6r26wMikrn4JyW9vjwNsBm+tg7JMlzIjhJl
         KL70ADmle2VRU9NbGRypXXbqSoQGEyxJRkzCkJ1V/RReXkCrFlMZaiVBrNlHUaOv+Bjl
         LcPVQJO/3j8EPM4RZzK30LxryLCCxrywt43y15SMSx4IioXgjeIqk7sp/Dv1Q3v4U6t8
         vvMA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Zi5OntwI;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id h6si293038lfc.3.2019.10.04.13.16.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Oct 2019 13:16:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Received: by mail-wr1-x444.google.com with SMTP id l3so8589464wru.7
        for <clang-built-linux@googlegroups.com>; Fri, 04 Oct 2019 13:16:09 -0700 (PDT)
X-Received: by 2002:adf:e692:: with SMTP id r18mr1356011wrm.339.1570220168759;
        Fri, 04 Oct 2019 13:16:08 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id a13sm16528791wrf.73.2019.10.04.13.16.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Oct 2019 13:16:08 -0700 (PDT)
Date: Fri, 4 Oct 2019 13:16:06 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild@01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [ast:btf_vmlinux 8/8] kernel/bpf/core.c:715:37: error:
 redefinition of 'search_bpf_extables'
Message-ID: <20191004201606.GB1481487@archlinux-threadripper>
References: <201910041511.aaM2ypR3%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201910041511.aaM2ypR3%lkp@intel.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Zi5OntwI;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Fri, Oct 04, 2019 at 03:07:12PM +0800, kbuild test robot wrote:
> CC: kbuild-all@01.org
> TO: Alexei Starovoitov <ast@kernel.org>
> 
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/ast/bpf.git btf_vmlinux
> head:   775e8352888bbabe4a630f588737e6f76bb2afb4
> commit: 775e8352888bbabe4a630f588737e6f76bb2afb4 [8/8] bpf: add support for BTF pointers to x86 JIT
> config: arm64-defconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 288079aafdbde5d408db86a697ee5b19a0902f1d)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout 775e8352888bbabe4a630f588737e6f76bb2afb4
>         # save the attached .config to linux build tree
>         make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
> >> kernel/bpf/core.c:715:37: error: redefinition of 'search_bpf_extables'
>    const struct exception_table_entry *search_bpf_extables(unsigned long addr)
>                                        ^
>    include/linux/extable.h:41:1: note: previous definition is here
>    search_bpf_extables(unsigned long addr)
>    ^
>    1 error generated.
> 
> vim +/search_bpf_extables +715 kernel/bpf/core.c
> 
>    714	
>  > 715	const struct exception_table_entry *search_bpf_extables(unsigned long addr)
>    716	{
>    717		const struct exception_table_entry *e = NULL;
>    718		struct bpf_prog *prog;
>    719	
>    720		rcu_read_lock();
>    721		prog = bpf_prog_kallsyms_find(addr);
>    722		if (!prog)
>    723			goto out;
>    724		if (!prog->aux->num_exentries)
>    725			goto out;
>    726	
>    727		e = search_extable(prog->aux->extable, prog->aux->num_exentries, addr);
>    728	out:
>    729		rcu_read_unlock();
>    730		return e;
>    731	}
>    732	
> 
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Center
> https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
> 

Also reported with GCC:

https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org/message/TRSGKMVNC236T62FGGD4IT7OO6HZVOCV/

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191004201606.GB1481487%40archlinux-threadripper.
