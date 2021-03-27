Return-Path: <clang-built-linux+bncBCS7XUWOUULBBUVB7KBAMGQELNKKJZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 21A6234B3A6
	for <lists+clang-built-linux@lfdr.de>; Sat, 27 Mar 2021 02:56:36 +0100 (CET)
Received: by mail-pl1-x639.google.com with SMTP id a16sf3478365plm.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Mar 2021 18:56:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616810194; cv=pass;
        d=google.com; s=arc-20160816;
        b=IyyETk6eHAe0mUu+09hdn4k/J5rV3UFIU8kPQdmhI9A3YKzix3EX0YSMxXlOD3pOrB
         Ee2nMdx/mWennwajeWdhYdMFvqX37dLdLsRrc6KWUf36y0li8cVzSKvTmYHUNWZULjuQ
         zQ88K1456is5sDcboj0zXrif80OuypNIpz1EflACy5kjs/J4+Jg6hRVlsmzLIikueLSU
         wWBIrKHL/tO31ZKINH5mv/KzFl/qVpq7JnnJ04QeN344HGyzfVTrPNMzxNi50wBQD79q
         J9lyxlGsZhwebPGl/82hH2dof5jgfPzuogqvBRQCkTTlnULqngW3ZzKzvcDE3Als+bnn
         xS7Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=eL5PX8Eeg4NjfMdD+NvxtU0D8115UKn6kPXygO7bep8=;
        b=pKx3BsUMwmdnams7rXZ+kABLiXyBPG83Qu39fZmgNM7YsNC57Eg3rvB2rWLDvoYxDd
         h6MeTMEtjApXXNzW3gRBRqwnmxZY6fX7yp+BQwXP6YVgyfVtznN33+rg0JjSj2BhG6DZ
         UP3wCOqmicLn1lEFDkYPI/gggJWxJ7hqt7VHHjMITAHtBqNwCj1OK3FaICkChXBqZJ2v
         p1423GtLiY08C68i0EvJn9RQBxhpWhWshSMh9V2JbiMzf5IFporu4JIAUwORAuvXxtLj
         CcSdFXudwO3Odzzc00Pf/6zXBE0LDMZSp/KjUAZespCN1Fxa29EQ6WXBTOTZkO37FB+M
         sUqA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DwrU03JJ;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::436 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=eL5PX8Eeg4NjfMdD+NvxtU0D8115UKn6kPXygO7bep8=;
        b=eCCXTh6Hlexux7p1zagzrtGWkMU8W2w4FRhnS7cMoJ09qprXpJXUtQivwmCi+mWqIh
         PRh/2jwYWxQsh95z9IVJJX4o3LnX1ImWsX6pUwvhnp7llyvlPHnFIdnBQ/7oNg8w+VHh
         zOFccmKkckxVn5mWaPKqMxTY5wFwRoxK8K+uDqpuES2eyyTzipwocSbktokjxEOFVYRP
         fB+BdDdhXZsgWDcJKOCJqhjC97piYsGi3iDaNTR9WTwQqwRAosLR+B3veP3qVpXTJPCO
         oCRtWy2aC0P8HVVNg9WZn2QUmJoDxBiMRz5PHW/j/nLWBqNFKmO5L8jeY8A5o5bGRW20
         oWHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eL5PX8Eeg4NjfMdD+NvxtU0D8115UKn6kPXygO7bep8=;
        b=dyNy5PrM1KaKgnLPxAgBIb1obUTMNecBdwVVJcI8heUl7rEwcE89Zym7WCVzbKxPNs
         CsUFXROii1FfRt2BUu+m1cp9BtdiTbpbdI49nzYhANx8UYuHs4CDWXPiVP1/zkD2xk3q
         RIiGqch8Ncm5/2CWctGgAv5oALyUGfaiHzYhWf0oIZskW17xvO0PaDn/DGkWuA8eFXRX
         sQP4Z7uHp13QpHOwCLYQlx2PuiFXkk8i8y/01q1oZLgrrr3c3KsmFkkT/pWThbhuW09j
         mgoeBm+dGySdcGXZxRCzfhU0TkFaxQWJEjv05wTDWvkrDILvzHUsfjRxMPa0iQcmFNqr
         V8gg==
X-Gm-Message-State: AOAM532uLoA+6kgJi50IwPz3fY7Nbpo4VYZ11KpWKgdHjixAI6Vsgjn6
	MuY1HZixVs8JMwFli5cUotY=
X-Google-Smtp-Source: ABdhPJwfzYxu1W2IiDbLdQDsx4yI16hQMLZNdSedHaHj1UJBWnO/RDlpDnLVrG+si78fg3noxVUaZA==
X-Received: by 2002:a17:90b:ed0:: with SMTP id gz16mr16209124pjb.106.1616810194382;
        Fri, 26 Mar 2021 18:56:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:1315:: with SMTP id i21ls3905090pgl.8.gmail; Fri, 26 Mar
 2021 18:56:33 -0700 (PDT)
X-Received: by 2002:aa7:988e:0:b029:21f:4b9c:fd57 with SMTP id r14-20020aa7988e0000b029021f4b9cfd57mr14506993pfl.72.1616810193850;
        Fri, 26 Mar 2021 18:56:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616810193; cv=none;
        d=google.com; s=arc-20160816;
        b=u+eihJrc2C7f/+VMUGx4xXBgRnyzH9I0+mp7+uX1yDoeYyT3udnC8D4bRhFg7eWqo1
         GVi5xoHMb9IdSnloc4rBKcr6FZkznFkN8pEMf1tCWfZo9FkhxwiDUFTtsm9p2gD1GJoG
         Nrx+yIIxb4/0fNNEtd0HPdkHE0fmBZ0xRULlTbY40alBhpRRjel5YzKaMxSII/s8oTXb
         d5011y+BL8X63fOCI7+ccV+iQO5Yb4u3Po/gv42J914OjvySFBRx7cLGRgjtlfnlD072
         JNnEMtkql8gbZ1QPH68buE5IdRc1h11F7gSMs8lyIB9mHQvaXMqJENCLMPppmpdYYm3D
         2ugQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=faYFDe+Adytg87HgOtz6HNNmF/jVigxYTlJk0XlAIQ0=;
        b=q1xJ2d/4LX0YHdZ2VDse00HTcwJm+fJYIxIuAt2rsGte1tVzCxvi4AWwYQuVPKBpRa
         ybsAMwNhQvjNMT6hAC+TMzrdJHZAO5GSMVajMvFIm2R22xG8rR1sa/wGRak4Se3ZUrkD
         V/xgFgIgxv10qkcJDl8+2xA2Vof2sqtbnzeLzc8EKCFy9DTm5DgkAu47BnsdZYkee9lv
         IPWREH5LrUNkHDNJ2IDx5KklRKplk8MEnX3jM+NsGNuDnsCm2B1wHXLf8o1aLWe6UBDy
         G1/mgjxofvTGR651Gf318PzgnIyQbtm4QEA3PPjqv1jvSWSSetS3lHAiQlN2IbN2Rv5E
         6aUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DwrU03JJ;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::436 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com. [2607:f8b0:4864:20::436])
        by gmr-mx.google.com with ESMTPS id d2si615000pfr.4.2021.03.26.18.56.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Mar 2021 18:56:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::436 as permitted sender) client-ip=2607:f8b0:4864:20::436;
Received: by mail-pf1-x436.google.com with SMTP id x126so6004526pfc.13
        for <clang-built-linux@googlegroups.com>; Fri, 26 Mar 2021 18:56:33 -0700 (PDT)
X-Received: by 2002:a62:d414:0:b029:217:24b8:a5b9 with SMTP id a20-20020a62d4140000b029021724b8a5b9mr16044288pfh.41.1616810193297;
        Fri, 26 Mar 2021 18:56:33 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:5dbf:19de:725b:1861])
        by smtp.gmail.com with ESMTPSA id 22sm9722499pjl.31.2021.03.26.18.56.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Mar 2021 18:56:32 -0700 (PDT)
Date: Fri, 26 Mar 2021 18:56:29 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nathan Chancellor <nathan@kernel.org>
Cc: kernel test robot <lkp@intel.com>, Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Albert Ou <aou@eecs.berkeley.edu>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] riscv: Use $(LD) instead of $(CC) to link vDSO
Message-ID: <20210327015629.eecu77zvm4iri657@google.com>
References: <20210325215156.1986901-1-nathan@kernel.org>
 <202103262325.9ejJuOqf-lkp@intel.com>
 <20210326235839.zgfvmtfxrb3hy6i4@archlinux-ax161>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20210326235839.zgfvmtfxrb3hy6i4@archlinux-ax161>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=DwrU03JJ;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::436
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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


On 2021-03-26, Nathan Chancellor wrote:
>On Sat, Mar 27, 2021 at 12:05:34AM +0800, kernel test robot wrote:
>> Hi Nathan,
>>
>> I love your patch! Yet something to improve:
>>
>> [auto build test ERROR on linus/master]
>> [also build test ERROR on v5.12-rc4 next-20210326]
>> [If your patch is applied to the wrong git tree, kindly drop us a note.
>> And when submitting patch, we suggest to use '--base' as documented in
>> https://git-scm.com/docs/git-format-patch]
>>
>> url:    https://github.com/0day-ci/linux/commits/Nathan-Chancellor/riscv-Use-LD-instead-of-CC-to-link-vDSO/20210326-055421
>> base:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git 002322402dafd846c424ffa9240a937f49b48c42
>> config: riscv-randconfig-r032-20210326 (attached as .config)
>> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project f490a5969bd52c8a48586f134ff8f02ccbb295b3)
>> reproduce (this is a W=1 build):
>>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>>         chmod +x ~/bin/make.cross
>>         # install riscv cross compiling tool for clang build
>>         # apt-get install binutils-riscv64-linux-gnu
>>         # https://github.com/0day-ci/linux/commit/dfdcaf93f40f0d15ffc3f25128442c1688e612d6
>>         git remote add linux-review https://github.com/0day-ci/linux
>>         git fetch --no-tags linux-review Nathan-Chancellor/riscv-Use-LD-instead-of-CC-to-link-vDSO/20210326-055421
>>         git checkout dfdcaf93f40f0d15ffc3f25128442c1688e612d6
>>         # save the attached .config to linux build tree
>>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv
>
>For the record, I tried to use this script to reproduce but it has a
>couple of bugs:
>
>1. It does not download the right version of clang. This report says
>that it is clang-13 but the one that the script downloaded is clang-12.
>
>2. It does not download it to the right location. The script expects
>~/0day/clang-latest but it is downloaded to ~/0day/clang it seems. I
>symlinked it to get around it.
>
>> If you fix the issue, kindly add following tag as appropriate
>> Reported-by: kernel test robot <lkp@intel.com>
>>
>> All errors (new ones prefixed by >>):
>>
>> >> riscv64-linux-gnu-objcopy: 'arch/riscv/kernel/vdso/vdso.so.dbg': No such file
>
>This error only occurs because of errors before it that are not shown
>due to a denylist:
>
>ld.lld: error: arch/riscv/kernel/vdso/rt_sigreturn.o:(.text+0x0): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
>ld.lld: error: arch/riscv/kernel/vdso/getcpu.o:(.text+0x0): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
>ld.lld: error: arch/riscv/kernel/vdso/flush_icache.o:(.text+0x0): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax
>
>My patch only adds another occurrence of this error because we move from
>$(CC)'s default linker (in clang's case, ld.bfd) to $(LD), which in the
>case of 0day appears to be ld.lld. ld.lld should not be used with RISC-V
>in its current form due to errors of this nature, which happen without
>my patch as well:
>
>https://github.com/ClangBuiltLinux/linux/issues/1020
>
>Linker relaxation in ld.lld for RISC-V is an ongoing debate/process.
>Please give RISC-V the current treatment as s390 with ld.lld for the
>time being to get meaningful reports. We will reach out once that issue
>has been resolved.

>TL;DR: Patch exposes existing issue with LD=ld.lld that would have
>happened without it in different areas, the report can be ignored.

Yes, lkp frequently reports this error. It can be suppressed by using
-mno-relax... if ld.lld is picked.

Hmm. This motivated me to file
https://github.com/riscv/riscv-elf-psabi-doc/issues/183
R_RISCV_ALIGN friendly to linkers not supporting relaxation (riscv_relax_delete_bytes).

>Cheers!
>Nathan
>
>-- 
>You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
>To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
>To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210326235839.zgfvmtfxrb3hy6i4%40archlinux-ax161.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210327015629.eecu77zvm4iri657%40google.com.
