Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBJXGT32AKGQENQLO7QQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B46919E0A4
	for <lists+clang-built-linux@lfdr.de>; Sat,  4 Apr 2020 00:05:27 +0200 (CEST)
Received: by mail-qt1-x83e.google.com with SMTP id k27sf7877274qtf.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 03 Apr 2020 15:05:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585951526; cv=pass;
        d=google.com; s=arc-20160816;
        b=T8WKb5AQ+sgCxndvN9unz+iVBMajACfkpfQamuKPqOHVtW3x9BbLHux+4elBL29piO
         FPFFxb6Oupl4ibsaqwGxAsZnkpvQVt3nsuNlhxYPdxDQoSZn35euK7XuATS9Yu0wJpd8
         xVIPnfGBKc/HDhdm+vEHRmOxqLs9TH5pPYqo7wQJfAISdP5nYAouQvVtDKwNnvWGDjXE
         TuGAnDucmzCtR25Z0nLbe/WRDgbstb9xDImqbWnDH208dQ4Bi3q7K6xPJweo57I0H7Pr
         giPD3VtO7Fl508qip45nIkFndLficNo3B6VrBCvqmg+cHTTOLxbUc49Tgp+TNEt80FY+
         YTYg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=fHP8TzF1TYRnD2Ns55txzv0d+AsfCT0+BGVMLZVByrA=;
        b=UNl7p8ym73ZycRUseJI4WP8lx8nAOAoUCoSX0wpwMvAx8KcXt4I8OPyfidwsiNHgZ/
         IO3FIzeFIp9O350AowvJUoKIdGs+RPFUX3Ibrmdd/RrA/a0FMdV/dEmmUbBQ+/rUYwWo
         Xiwy7suYhtCUdhlA1FrFBVNdeh9Kbcw9y8xC4Uaar71x0SjncYjg1RfVULdxnCX+a+YI
         wGF6YGu8W8gDre3ljNn2XGJGZUZ2q/KUZ2yReloLy1XLH8Xm0pl+CHde4l5Z/npXzDcw
         +t6Lm54dZrF68pgxAOfW7dDb9TAfLjDa96tODcvHlrdLDyn123dulbYhoANzL33eSNS5
         bunQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=a3OkANdw;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::32a as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fHP8TzF1TYRnD2Ns55txzv0d+AsfCT0+BGVMLZVByrA=;
        b=L+mEE2uBYpfg29+ZhrEHe97QEW9Nq7RSjR+ni/pzqAez3eEtoMMVZF/ZwPj29kQzLC
         IMcc+rPLVCuHPzeKVUHXzh6wiZ6DhUc/16zzeXOXf/CJ3S/LyZ9gcvqw8BT+rGAXrO+e
         17cSwIdLbFe3IBsW2lzFhGjDuLMZ05Xd7eMX98gVMmn70kMdiwqaXiwVAHuo4k/fh/tg
         0v03HaiGSktyzym02e0VIYwpHzSePJSqS1GlFj3ivX15Vpr1ZTbSHbiEGAZ/Jy43Fp1C
         TqU88iDeA2FhvUWjIvJut7N4OdhWJqdy7FgikpKCxpTvxcL8Yi4ocCBP0iwxl5E3Cjcq
         ZYEw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fHP8TzF1TYRnD2Ns55txzv0d+AsfCT0+BGVMLZVByrA=;
        b=tM34Ud3Oo9woONer2nTkNDBiZ48XY5VDZmvRngfVsCl3YKAoEBiaiuzpmHON3vCucA
         1UMgPhXWWDeLm7fTInYmFVMO6vNik18fXRzk+DX5cidbGkcXyST5PjQeVyd+kEeSAjia
         3jKoXlXv1YC7n/YoAdEl230cztrqVxVzMWB4WElNUSq2BwRZlLU5RSbJunwfCiaI3Yn4
         AMWsX2KjPBeTGTw44+3cI8DCk5DLaUyfq+1vgjQdZjtuNUaQsWm96QUK8yYbKWQhW1/r
         C86k6Xdv6opLLH+4Ya3N6YhTgS/mfi8FYYZGq7uL4rncmBqCg4Mc6vPwZUDnqfVKhqu1
         +j8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=fHP8TzF1TYRnD2Ns55txzv0d+AsfCT0+BGVMLZVByrA=;
        b=M3Ekq1/A4U0X3pEpJ8ZlWcO+Uznq0DwdFYN3Kq9iZpBLdCxin8s6KmmW/n0saHF7ev
         mSxFmo2mVTvITDAIrZW+igEDoFrA+Ia9NQLF4KUVcYhPd5VGUEycFOtZ+Don9mlmhgDq
         5FiJCJ2y059ocgoIxq9NvVwNogOFiXZrc69JO5VKv1M2RtfxV5tcyYLTiuRGNI9yS+0+
         FHtZg7DA1RnZWFMwVw/9u0KFaebJMja0Kt3aB+Nii+PbC3tkO4WnU0xySkydFsNzMyyV
         P+VvRPrZy69ynycjRx95oHtKk9cAjnrlsaHYflrccoehFzf07F1HV7iLb7U1O1C7nn8c
         M/fA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYn0E5WAkqbDKJTtKeYyu545WM/MmqsUNH23viyRRBzkXCsXZap
	2dHtkuwCQ5zt6Mg44qTzA7I=
X-Google-Smtp-Source: APiQypLjBXtgnSmRTo0kQ+Z4uEy0VzJgbD0vASU3k58024ADi8AeBI2fJS5MyV64P8rnJdYQAF96nw==
X-Received: by 2002:aed:37c3:: with SMTP id j61mr10761390qtb.284.1585951526458;
        Fri, 03 Apr 2020 15:05:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:2a79:: with SMTP id k54ls4673841qtf.0.gmail; Fri, 03 Apr
 2020 15:05:26 -0700 (PDT)
X-Received: by 2002:ac8:304d:: with SMTP id g13mr6925148qte.221.1585951526074;
        Fri, 03 Apr 2020 15:05:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585951526; cv=none;
        d=google.com; s=arc-20160816;
        b=pxWclkQJadW7zMiNsygcE4zdhkvPghXHVuGMGuHP76/DuO1tqcFKi9HIQeImA3Da9M
         mQawojBp3i8e5pyBckCoT9gXbhHMpH+uIMYEb6QzPQ8EJNUAtQpuhcETum4jPJHvF9jA
         3PNxlh20K2vRAjDW2cdfjt7irn1lvywVn+U78S1Kr+PHb8Svv8MsgdT7djukEsudYcFA
         pTluj2wcUr1cqFlr413UtuH/0qHwSoH+IFnauwpPFfPy8FwbBzNiy37GNvGQId2CT2Zh
         j5iCoH/6Mbh3AdagNY12GDCok45tRASbKKIiM8ZVJqOJeqiEVAms/cmaSDPTlLhJDWsI
         2EQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=OxYhnPRPAqTJqi35OqTvCICUNq7k4lEgiRinnrrqGGc=;
        b=DhQQD3MeU9Zsx6yLyPeljXuCDfcW0TvyUkeKGffycCvEbTS0099owvMc4n209V/Bqy
         hXtI1zftdTWBR1vgiP/h6qR0iv3R4/08c1D06TdozvNKlpqMb+h8r/TqZGxFlepid2DV
         2Q7B32ZjaCvjj2vHBoaJeTn4iTrh/bDnNOJTDTycI62awFa5Ivrt+YskVPJlgv3jUxfo
         dSUTn0vdzFExK8btRUYizRq9iHXVOOzMvFv81k2asSyKg4XeUuYScdYajsQW5oxR642w
         mOG7MJJtIcg3bPbhNLh1pOQavdVlwX9RlbSzqgP90IJlmMsqGBBxZYFmJt6qi8RRYMEk
         Jlkg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=a3OkANdw;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::32a as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x32a.google.com (mail-ot1-x32a.google.com. [2607:f8b0:4864:20::32a])
        by gmr-mx.google.com with ESMTPS id j56si801406qta.0.2020.04.03.15.05.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Apr 2020 15:05:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::32a as permitted sender) client-ip=2607:f8b0:4864:20::32a;
Received: by mail-ot1-x32a.google.com with SMTP id c9so8905220otl.12
        for <clang-built-linux@googlegroups.com>; Fri, 03 Apr 2020 15:05:26 -0700 (PDT)
X-Received: by 2002:a05:6830:11c1:: with SMTP id v1mr8389738otq.264.1585951525659;
        Fri, 03 Apr 2020 15:05:25 -0700 (PDT)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id v15sm2377206ook.37.2020.04.03.15.05.24
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 03 Apr 2020 15:05:24 -0700 (PDT)
Date: Fri, 3 Apr 2020 15:05:23 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: Christoph Hellwig <hch@lst.de>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com
Subject: Re: [hch-misc:blkpg-partition-cleanup 9/12] ld.lld: error: section
 .rodata at 0xFFFFFFFF82095000 of size 0x4825DE exceeds available address
 space
Message-ID: <20200403220523.GA47625@ubuntu-m2-xlarge-x86>
References: <202004040615.MoRVOS1v%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202004040615.MoRVOS1v%lkp@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=a3OkANdw;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::32a as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Sat, Apr 04, 2020 at 06:03:20AM +0800, kbuild test robot wrote:
> tree:   git://git.infradead.org/users/hch/misc.git blkpg-partition-cleanup
> head:   01672c8132693a6767aa9004a257e961d719da53
> commit: 16e04bac5857f1eb45baa64b5952d2c88d3fd1ab [9/12] block: mark invalidate_partition static
> config: mips-randconfig-a001-20200403 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project f68cc2a7ed766965028b8b0f0d9300a0460c3cf1)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout 16e04bac5857f1eb45baa64b5952d2c88d3fd1ab
>         # save the attached .config to linux build tree
>         COMPILER=clang make.cross ARCH=mips 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
>    ld.lld: error: section .text at 0xFFFFFFFF80200000 of size 0x1E9207C exceeds available address space
>    ld.lld: error: section __ex_table at 0xFFFFFFFF82092080 of size 0x27B0 exceeds available address space
>    ld.lld: error: section __dbe_table at 0xFFFFFFFF82094830 of size 0x0 exceeds available address space
> >> ld.lld: error: section .rodata at 0xFFFFFFFF82095000 of size 0x4825DE exceeds available address space
>    ld.lld: error: section .data..page_aligned at 0xFFFFFFFF82518000 of size 0x2000 exceeds available address space
>    ld.lld: error: section .got at 0xFFFFFFFF8251A000 of size 0x8 exceeds available address space
>    ld.lld: error: section .rodata1 at 0xFFFFFFFF8251A008 of size 0x0 exceeds available address space
>    ld.lld: error: section .pci_fixup at 0xFFFFFFFF8251A008 of size 0x0 exceeds available address space
>    ld.lld: error: section .builtin_fw at 0xFFFFFFFF8251A008 of size 0x0 exceeds available address space
> >> ld.lld: error: section __ksymtab at 0xFFFFFFFF8251A008 of size 0x146DC exceeds available address space
> >> ld.lld: error: section __ksymtab_gpl at 0xFFFFFFFF8252E6E4 of size 0x12498 exceeds available address space
>    ld.lld: error: section __ksymtab_unused at 0xFFFFFFFF82540B7C of size 0x0 exceeds available address space
>    ld.lld: error: section __ksymtab_unused_gpl at 0xFFFFFFFF82540B7C of size 0x0 exceeds available address space
>    ld.lld: error: section __ksymtab_gpl_future at 0xFFFFFFFF82540B7C of size 0x0 exceeds available address space
>    ld.lld: error: section __kcrctab at 0xFFFFFFFF82540B7C of size 0x0 exceeds available address space
>    ld.lld: error: section __kcrctab_gpl at 0xFFFFFFFF82540B7C of size 0x0 exceeds available address space
>    ld.lld: error: section __kcrctab_unused at 0xFFFFFFFF82540B7C of size 0x0 exceeds available address space
>    ld.lld: error: section __kcrctab_unused_gpl at 0xFFFFFFFF82540B7C of size 0x0 exceeds available address space
>    ld.lld: error: section __kcrctab_gpl_future at 0xFFFFFFFF82540B7C of size 0x0 exceeds available address space
>    ld.lld: error: section __ksymtab_strings at 0xFFFFFFFF82540B7C of size 0x4115A exceeds available address space
>    ld.lld: error: too many errors emitted, stopping now (use -error-limit=0 to see all errors)
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 

Hi Christoph,

Please ignore this, your patch did not cause any issue:

https://github.com/ClangBuiltLinux/linux/issues/786

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200403220523.GA47625%40ubuntu-m2-xlarge-x86.
