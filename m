Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBPMF3PZQKGQEGZEH4KQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id C07DF18E5D9
	for <lists+clang-built-linux@lfdr.de>; Sun, 22 Mar 2020 02:43:27 +0100 (CET)
Received: by mail-pg1-x53d.google.com with SMTP id b130sf7805429pga.3
        for <lists+clang-built-linux@lfdr.de>; Sat, 21 Mar 2020 18:43:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584841406; cv=pass;
        d=google.com; s=arc-20160816;
        b=QFN9p6w17rv1fRqTiiukb6AyntSGxE8VahuQDFEJI6OQw6RpI+kA51a1S1bdYbc9iL
         jZdf4lGbb1DXxvUTEYtbb7hEYNC1dLZQOSGwW16pIrWgFvSUfbQ/NxhIFQrjB63+rBV7
         yT6HKJVcw0dkpoGsi797CNRVXVMIkPfVHp4KFVUPuwonFc/o2j82bfnSqp2f/NGooxiP
         St+p8eGiRaYvqUv1uW+XZizVBDhe4ET7lzh7L/TA5+/NJBYiaIYy4UBr4R+n6uaZSzw2
         y8hZWF64n1te4k/XlacVbjpo7AqgxXcS5g45oysPBrfBp0sMhOvvx3vs2jZf8YV1N5da
         kHvg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=zjSfOMK24/HodhEVbdJjiDPWG+rRudNHphgUvPll0vE=;
        b=nffq7lLeB7Y0sDQfJAmjPNh/eZkrs5Wa7IB605rwbMPxKjt4ACIwKI2U1DZHgG5x+u
         S8XDnSt0gNKw5KsJG88IVrgCvCB5MDBNGsH1MdrTsEO3S1b2DNDtMdf25mVW5oOekUTW
         roCH8Cc4IVzlDvPQNB/4IsDaRCLhZLmRz4ZsCyqM/uomYB+1jDVcjA/smk5aMOwh1qkB
         rU/h9xK04b2moAWNu3/OfHyZV04DGgNMBPxvvuTCHrkbNLaaKgdIUnaXwPfGRljUbLBc
         eIny4clsbgSoMFhz+ErBdtJ3SU7IK1iA7fQvAZaLzc9/QBT2+tN9yqC66Z7F+efmuIuW
         QslA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PDcjDJsS;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zjSfOMK24/HodhEVbdJjiDPWG+rRudNHphgUvPll0vE=;
        b=tOLtF8kpVhsnKCkR7B25I1CK6FQGTu0Vy8VVYqd193dhGL0QPWQa+s8B1bK3mESXXs
         V4L5IeGzYVjQqB9Q5LIOSFxoo8iT4LkiqEoQ7zA6c/J0N/bvDZWtNzBzD47CHfOTqF+K
         WcAav6VoHRW/ZGWjh/ZiGx8rKX/ZaXfyOmUbDKxzZyv7DpfA49wS1YONnZe5ake5iNWo
         WtHdS6U1uKWqUrw+Cjg+r04lCmIFsmVMOwCDSobOh1cYbkYIXUQ9lcG2TTY8NIw/VIBh
         H09s60OqZwOOS1LPmggfo3+n4yF632HeFWlTeP2suxm9PMs49p5dxepR6I0VXZx8Yjpe
         /xeQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zjSfOMK24/HodhEVbdJjiDPWG+rRudNHphgUvPll0vE=;
        b=i0orx0PldDekLCN1c5X/FSNBizCTAOzdE+fttjR9RFz/WXm3SMrtYYfK4YDrT9f9DY
         d63HFn0Rd20ajaZIzOhsQAxLQzX7pVLqXmRqXL/HIPIa7JyT4beR9OxAYUOmH8LvvYjk
         ptaXSnbmmkGAwUZZ9vhgWD4TbrvBX2ab3uJOJCcTgC9VSssthOruNp5R43mbBHPj9Drn
         W0XwuJZhwMAOJF12c+GkS+Gep+P9d+vq7DaWx8ZkujWWGSTqT3vxt9MfxJ1ngGBy7a4/
         eM8Tr0Y4kItyeBAfT1Dk1fWg9z95mOc5yNOVNO0drWQqWtityTKYAyM8lZcFuVqUKrVO
         2R4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=zjSfOMK24/HodhEVbdJjiDPWG+rRudNHphgUvPll0vE=;
        b=JGqj0pmH13Cs2+dg+IOZ9vwhhTMGG5Ohc1+twPE2rIX6Q8zABo81tKB58F+LzEZWCh
         QLDWNX8BnQ1mYPonA7IZ3wC4kJmpm+EGy3+LdtOLIe8GoDAstz3GZ050tEg70tfrLldC
         PXQZnTj1lR5e5Vk66TIsi1Qqbr+cQjV98z3VWkTK3kc0t/VVnLlJAGp0YHIMvkT1UVVd
         cY6iGC6WPx6ssR+PtbFkb90SWEgjeweQDAfhF2zPD5hbHFqlUDpT5lWT5CFg65iFHPWf
         C+W8gqPKNaFR97rZPEuUTyIRqOVsIXX9ufIq+6Qs5CsU2enBtvXO/uCNZJUpJK6Gk7qH
         Tlpw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1WG88QJIbXHrZA4oDP1jOO8l0MGl6vSgr71kjPTwq0I5IcX5Kv
	il16D5CjblNFGQcqo7RynfA=
X-Google-Smtp-Source: ADFU+vt0lKJ/IN28VEt77ZGPH4pVMI04LOj88M4jQC8JgNYghkz1FVFz2wozQeWqxuFR6xZFvIQUtg==
X-Received: by 2002:a63:f243:: with SMTP id d3mr15483571pgk.254.1584841406089;
        Sat, 21 Mar 2020 18:43:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8493:: with SMTP id c19ls6094851plo.8.gmail; Sat, 21
 Mar 2020 18:43:25 -0700 (PDT)
X-Received: by 2002:a17:902:a702:: with SMTP id w2mr15699073plq.107.1584841405597;
        Sat, 21 Mar 2020 18:43:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584841405; cv=none;
        d=google.com; s=arc-20160816;
        b=m2CQFK1OeQbKAV5EZFxsqZoe1rDPMz9Oj9I49WLxZqGreBYUtRQ8Ry5hrqTFH2kQTH
         j10qFVu5qd7I5DgUYlTEZ2GQiPKMuVAG067dsmxYhfl4bhkU9w2y2DPx/y/OIOCN1LmD
         5tAlIcNZWROPEnIwW+gPmO8J9tFJvHaFit9SUq9C24x2sMQTqxklLUY3QoE5lNng4FsT
         rG8RUXfYQc880T6yW5PGwgY4B4B54/pguLT172edbp/+/RycUQVA9RJh6o3zN8x1AA6w
         9CMnJ7VAM3t2kumVyR5873+kgRYpt3tMrVo24XglA8wyVyOhNAZwu8kiXVpgAkMASNn7
         /GzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=EqgIqhjr9S3rh4hgUtrMwvgmvccqhF23Dg3Mr7rcvyY=;
        b=RgSDeFODfXS7iLiO50esi7g1ETFIaGro43ySLrd0l0PUjOrsmR2xpOYyuYUNcOnHDj
         ady4HgPN4n3RDRSffL3b0NhFv+vVb2NzBnIDLd6cVhKbCVmYrDpNh8w4ANXf4Ni/O/9S
         f8F41Z9eFgbS6YJfZm4MME033NPKkMHxnTASPce9TeiaeCYlasNasJw5rB9PFJ2GuynV
         8uYxEHNEZ3Tf3H0VAey/VYPvd70wxpKOeFtm1PiGFwhvxwzVI1tmJP13RZB49p1dXjyU
         Ctb7z+Ap9MtoUfoNWZjw+okDCAsjrSp3QzbauWQNPWbdxZbWaXVjP6FilyoGCEeYReKG
         s7eg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PDcjDJsS;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com. [2607:f8b0:4864:20::241])
        by gmr-mx.google.com with ESMTPS id y5si169227plr.4.2020.03.21.18.43.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Mar 2020 18:43:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) client-ip=2607:f8b0:4864:20::241;
Received: by mail-oi1-x241.google.com with SMTP id q204so3175342oia.13
        for <clang-built-linux@googlegroups.com>; Sat, 21 Mar 2020 18:43:25 -0700 (PDT)
X-Received: by 2002:a54:4584:: with SMTP id z4mr11935093oib.41.1584841404771;
        Sat, 21 Mar 2020 18:43:24 -0700 (PDT)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id s203sm3691133oib.8.2020.03.21.18.43.24
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 21 Mar 2020 18:43:24 -0700 (PDT)
Date: Sat, 21 Mar 2020 18:43:22 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: Lubomir Rintel <lkundrak@v3.sk>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com
Subject: Re: [lkundrak-linux-mmp:lr/8250-json-schema-v1 1/11]
 security/integrity/ima/ima_template.o: warning: objtool:
 ima_init_template()+0x16: can't find call dest symbol at .text+0xd0
Message-ID: <20200322014322.GA22793@ubuntu-m2-xlarge-x86>
References: <202003220521.bbjMGALC%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202003220521.bbjMGALC%lkp@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=PDcjDJsS;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Hi all,

On Sun, Mar 22, 2020 at 05:51:26AM +0800, kbuild test robot wrote:
> Hi Lubomir,
> 
> First bad commit (maybe != root cause):
> 
> tree:   git://git.kernel.org/pub/scm/linux/kernel/git/lkundrak/linux-mmp.git lr/8250-json-schema-v1
> head:   985ea0ca6c03cba1c420d45d7d9f5eb8b5ae0b2f
> commit: 66310878601807a6eef4a00cca39300b60f8dd0a [1/11] xxx build dtc
> config: x86_64-randconfig-h002-20200321 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project de6cd3e836e10ca1b893459d38e7052b7513d55e)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout 66310878601807a6eef4a00cca39300b60f8dd0a
>         # save the attached .config to linux build tree
>         COMPILER=clang make.cross ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> security/integrity/ima/ima_template.o: warning: objtool: ima_init_template()+0x16: can't find call dest symbol at .text+0xd0
> --
> >> drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt2.o: warning: objtool: x_tune_dvbt2_demod_setting()+0x92a: can't find switch jump table
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 

Please ignore, these will be fixed by this series, which is in tip:

https://lore.kernel.org/lkml/cover.1581997059.git.jpoimboe@redhat.com/#t

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200322014322.GA22793%40ubuntu-m2-xlarge-x86.
