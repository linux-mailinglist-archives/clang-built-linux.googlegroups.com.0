Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBVPTVGAAMGQE4Q6U5JQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DEB92FFD0B
	for <lists+clang-built-linux@lfdr.de>; Fri, 22 Jan 2021 08:08:06 +0100 (CET)
Received: by mail-yb1-xb3d.google.com with SMTP id r1sf4593730ybd.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 23:08:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611299285; cv=pass;
        d=google.com; s=arc-20160816;
        b=dg0HrBh1irF9kLkIAvV1kQ19e7cXMXA3T5MUBmnOC3RRBE+HClGAQb7MAqcJ0rUDZo
         onJjDPTbHa3nVNyWgL9FHOWHCl7EXILKasVPnmdnJdAaZ4okzvKB1Fz01Asc9WNWp7OG
         9MId646KgFC+31bMMQhfY6G1gvwMzuGbW9tp9rYY478E43d91jOMCMyzb/1TzdnJ4vHZ
         ODMMAxrSA4498G6mJIKPSNsx6uMIC2M/uMQ+eoS6XbJDFXtamE8xRBUCVbGIjeaAwtYN
         7nWiXYSyVlszRSnA7HQXcGxrHBj9hIe+pyEGxtj+Yld++j4ONoECsgKs7jKvirjamUC3
         z94A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=cFxwS5PW7yrU39y+5MoT2UJdgPUI1bQmzXRlICxfD1M=;
        b=IgJNataOXV5wUD5CqDmqELJrpdoNHkPiTb4ul5sYHKEV870Qy0wEGwjheosEjWNrmn
         94iIheNNbr4vxa1BtxZKRAO+yprT9mryu6LK7vcToJL3decBNditU2SIIvT3LFDE0rr9
         Aqc5CvzQDUNwcb9mo+DD2Z/I2Ko7l0YEsZs84kNpK9NATF7MqiwMrsIuO/AvLSryqYBL
         KOwKHKNy6anfIUOu3Sl6AjNC3Vbf5Aesz/qz0nbFcw0SCAsZO51L/d7Jb3SteVr1jujT
         c6HVdFxTUJLtV8ZaduGNT5yApBfKRndyNQHI2woG/e7wrBfOjl7HJrZ14GuyC4Q+il16
         3lTQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qOlTtoh2;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::72d as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cFxwS5PW7yrU39y+5MoT2UJdgPUI1bQmzXRlICxfD1M=;
        b=emweK6+Y/hWCQB/XwNKT3iJPLfgNqGl/rDHaIkomD317cn2QlziKTI2pZ9XX+UAZoY
         UdMlyrTj+lrRTzDmsFVsfuwb4/o4JOhu+9zUdDSLVXD7NGBEq1h3D0OoukMlB6TtOuXo
         ai5fnCHmIn+Ae4USHbgeXYpGc61S3qN9okVMEDXA6L9JCX3N0tT7gu1t6BkOR4hejXJX
         B0JO6RFuIp1vvOO91eYyDVWOc1sPiIGeio+d0c6qmavTRNlY3d71PdH915lxPvahE1HM
         wG/KjITGmG+wIhHsIevb5neWbvxcF8PlnpTpO9mwnhJDsmcNbpfkLzeltwvho0UW7a/H
         rgzw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cFxwS5PW7yrU39y+5MoT2UJdgPUI1bQmzXRlICxfD1M=;
        b=YEMQbmzYL8myfUrHVMATQ13DoF0ju4WnstS9Rj1mrYY+ysoGx+NWAG3txYqz0ef3FX
         O+9H8Jq50cz9LT77mJ3FCGISAh83Ufq7/FIs0t4qbpRARCirueNZ7IefTpbFSPl8JWVr
         PbzVs5u/0orEPl5mi1rNc+DBKMeG5FEdgZBvQAdkWd0kk24asMXnh9wIaICVORVbskKb
         q0H9vmBzOAKZo1YW3iDvWDd93uNIFF8CmKjTbSqSsDKsIsDv5arZS6phGRa49iaUaLXt
         D8648T1c0rs4eoVNZ7w/H/JEeei7HvlcyjVEHQ9ZMVuvqwSOF1r656Dnt1K1mCAO9rfR
         lCeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=cFxwS5PW7yrU39y+5MoT2UJdgPUI1bQmzXRlICxfD1M=;
        b=msJz7BmyT5o5YYJgK2m7kDIwkemivA6A16W1U7JThho9amYu/PAmUdszlRapdKClXM
         dMh4iwnXEIeLYp83phqajM+pjZr5qP2WvJCidAvJk5dpOWmCL1LJEnfQaRlPdXuwknuf
         KhF4zDYe0v+hzfL5dRKpEk+lOz1gm7byqc2vjC7LAO4WYBO23qrMnildWk0UY15oUI2h
         rmJZpOL2a6Zf64KZEVM062Ir3rvhfpRETuFyekgCjbB/OeJwdCswdYeWDk74UUs7Gwcn
         uxM7hl+i4MWGtNGtwlCpljhdzcYO1T4eER+d0nMto8gPkk31J7Tcxg1GOpWFfmb6AeCF
         kLqQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5325vmdHkDGmPlcN62wNNEzOJC4GxpdHcWIjXDLM4WDoPfQMTFet
	EoNjGY81i6boZqELD8pHiVs=
X-Google-Smtp-Source: ABdhPJzYkTVUq6c3uWxwiu59nqnaZmb5a+u+SyPXVIDXpYhPzTcIW89dpdepy1zy2Iwv1l4dvdK1Og==
X-Received: by 2002:a25:2505:: with SMTP id l5mr4494724ybl.292.1611299285407;
        Thu, 21 Jan 2021 23:08:05 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:ff19:: with SMTP id c25ls2565748ybe.2.gmail; Thu, 21 Jan
 2021 23:08:05 -0800 (PST)
X-Received: by 2002:a25:5c44:: with SMTP id q65mr4317111ybb.394.1611299284998;
        Thu, 21 Jan 2021 23:08:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611299284; cv=none;
        d=google.com; s=arc-20160816;
        b=uiMDOqxwbDhjhQAcbTxUryjVWoYrF3HQ2y7wIlulA3PFoVd3/wTWKeVJMmOA2Fmbru
         vlDgWeFQVjRpCP/oH92/61qfkLsPRWjtBoJQPCjHpNc5TqHLxOPt4s2/H8itKQ22h4Cb
         f8j58+VO7QaYH2kV4LLSR37Q/gfa2kWASk1RL3iVDe78pM9oSrVAISlrCx5qGvDhweLd
         K9C4BMDToJnR/KrkMBGbJ0nlFacHw07sXoKxrKlIyqZgOl2Z9q/vo8lPy2CHA6QTcXXw
         weXEh58Tjgn5B56aDnYt/N6x8QtHEHANiVNC2Fp+apWP/jyFST3RvuRhQjKvozBKtGyD
         FPWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=vmMfFppZkK3hlDi2fZ5GjzFDLVbQdDDB/UVAy+8OTqM=;
        b=P5yPyxdKbN5yRJjFt3+2Mze5nDyPkN2x8eVp0VX8trcp1mqZDEJ2PFLCN1MWoQr5lf
         feMbR16WYlF2MYnty4YPoIanRfs4w3qnz+Fd2EtQab4B7F2tBkKDiZXTea/cqjczio0B
         3LlgN5XaiqfsYQoT3iWBsAWJtnfYXY5XFobcD57lGqFwz25OQUKALKqETehBHDrzAiU6
         feDA8Lbzd+v0+EUYt8BsEjjMWQbq4vutzacm/t4Xwmc6mPms/d7UPZNZpfpBZW92V5sL
         QwGn8Uc439rEVjyr/8We5NJBhrL/IBf1duW1XBDTx7wt2Y1+EuPyhKOaVMJoNVDfZOEV
         Nqqg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qOlTtoh2;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::72d as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x72d.google.com (mail-qk1-x72d.google.com. [2607:f8b0:4864:20::72d])
        by gmr-mx.google.com with ESMTPS id x13si944444ybk.3.2021.01.21.23.08.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Jan 2021 23:08:04 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::72d as permitted sender) client-ip=2607:f8b0:4864:20::72d;
Received: by mail-qk1-x72d.google.com with SMTP id 19so4257704qkm.8
        for <clang-built-linux@googlegroups.com>; Thu, 21 Jan 2021 23:08:04 -0800 (PST)
X-Received: by 2002:a05:620a:16d5:: with SMTP id a21mr3629728qkn.188.1611299284630;
        Thu, 21 Jan 2021 23:08:04 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id c7sm5548702qkm.99.2021.01.21.23.08.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Jan 2021 23:08:03 -0800 (PST)
Date: Fri, 22 Jan 2021 00:08:02 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kernel test robot <lkp@intel.com>
Cc: Palmer Dabbelt <palmerdabbelt@google.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Subject: Re: arch/riscv/kernel/vdso/vdso-syms.S:2: Error: junk at end of
 line, first unrecognized character is `@'
Message-ID: <20210122070802.GA3498705@ubuntu-m3-large-x86>
References: <202101220925.JILgZfQl-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202101220925.JILgZfQl-lkp@intel.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=qOlTtoh2;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::72d as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Fri, Jan 22, 2021 at 09:41:35AM +0800, kernel test robot wrote:
> Hi Palmer,
> 
> First bad commit (maybe != root cause):
> 
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   9f29bd8b2e7132b409178d1367dae1813017bd0e
> commit: c2c81bb2f69138f902e1a58d3bef6ad97fb8a92c RISC-V: Fix the VDSO symbol generaton for binutils-2.35+
> date:   3 months ago
> config: riscv-randconfig-r002-20210122 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project bd3a387ee76f58caa0d7901f3f84e9bb3d006f27)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install riscv cross compiling tool for clang build
>         # apt-get install binutils-riscv64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=c2c81bb2f69138f902e1a58d3bef6ad97fb8a92c
>         git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>         git fetch --no-tags linus master
>         git checkout c2c81bb2f69138f902e1a58d3bef6ad97fb8a92c
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
>    arch/riscv/kernel/vdso/vdso-syms.S: Assembler messages:
> >> arch/riscv/kernel/vdso/vdso-syms.S:2: Error: junk at end of line, first unrecognized character is `@'
>    arch/riscv/kernel/vdso/vdso-syms.S:4: Error: junk at end of line, first unrecognized character is `@'
>    arch/riscv/kernel/vdso/vdso-syms.S:6: Error: junk at end of line, first unrecognized character is `@'
>    arch/riscv/kernel/vdso/vdso-syms.S:8: Error: junk at end of line, first unrecognized character is `@'
>    arch/riscv/kernel/vdso/vdso-syms.S:10: Error: junk at end of line, first unrecognized character is `@'
>    arch/riscv/kernel/vdso/vdso-syms.S:12: Error: junk at end of line, first unrecognized character is `@'
>    clang-12: error: assembler command failed with exit code 1 (use -v to see invocation)
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

I believe this is https://github.com/ClangBuiltLinux/linux/issues/1266.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210122070802.GA3498705%40ubuntu-m3-large-x86.
