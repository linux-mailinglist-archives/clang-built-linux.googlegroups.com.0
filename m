Return-Path: <clang-built-linux+bncBDM3FG7YWUNBBX6U7L6QKGQEUDY6RFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe38.google.com (mail-vs1-xe38.google.com [IPv6:2607:f8b0:4864:20::e38])
	by mail.lfdr.de (Postfix) with ESMTPS id 17ACE2C4802
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Nov 2020 20:02:56 +0100 (CET)
Received: by mail-vs1-xe38.google.com with SMTP id u14sf615993vsp.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Nov 2020 11:02:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606330975; cv=pass;
        d=google.com; s=arc-20160816;
        b=FpvHK06K7Bvmai0ViwTgGisNTyEU6z2D0joTVXnFfyYfG7wmwECySQTTRqjF5xpKjI
         PsZOGhukoe338oHq6H7ldtYaCIrzDHaUpGnbHsjXKES2Bo3EnVRJIgofigWdlPZsVR9D
         oxI8kKRKQglLaeko1Q6Wr2qhZr7nqUWh73O8YhUWPrOr3u4/al7RWvxu9qyrc6PrFDFY
         0MOSf5IdHpzyW/v6zihHkzn0r/zvu0K6HyOGFcH/x7JJkZvdcIRp1aD6tyqdUPE7jYPY
         g/r5ixgzZe/COoJqp4zmeO6PeCl25f6/UAF7K2mjtRZJRg6s/SzWTEIuYIh6hT0kJRdi
         puSw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=62B6Cmk1EHzWTd52jjaDZuHoED+3BYM/WZEAyoft/dY=;
        b=dulOHa+4WUSqoZCf2iXnncf3QBXgF2BiC2v9GPCrCrK764suckJzv/SKMbm7egjmGj
         N4eT9WiMN2EdvuRA7g+lEAhMQAlsSeT0rTANmqNCkFYymKbvIUE50BGqkxhL7CdYoNS8
         d2Sa5aS3GV67wIfyHgPKWpoZGbYyU0q3zY2MNPNIHMkbDYdK7aYGFOL6RYO/afRFmCdP
         ViWooK+E+RUSC/Vf2wMWXYxykkljV37T41wjgkCr1CUA4O71N/38VmgUVDGVofcVnv6j
         Pvrt66FMJrha67bpTB1GBi7f4YWfPshZAqdcp/HoP9covldBTT4UknSCfuLruZ8e0Q/E
         5czg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IyS9EQtQ;
       spf=pass (google.com: domain of jrdr.linux@gmail.com designates 2607:f8b0:4864:20::e2d as permitted sender) smtp.mailfrom=jrdr.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=62B6Cmk1EHzWTd52jjaDZuHoED+3BYM/WZEAyoft/dY=;
        b=XM8bxU2xMCPCsaVPCh+PjiJlB2MLTM/5Wap5fr107D0n+TsDkhcUD47N7kUDGPjik/
         hruAcBcsbvgXHK3wt3tAiTd5AMv6v4gMjC9ixdyiHFh/8iJg89E5UoYvnpCJQ+wJwF9L
         6w4oDMo7FJHecwPPxbwolNlsPwJJVaa+Hp3gA5qwC18rmP/oksriIqdrBTyaII0a+44e
         EUaIbsM6IhjrY7UFWxlO1Xc9leK2aCXC/B1yir1KvfYYkuNsUzi6vNhF6t03zReKL8ty
         peAUn+sFFBB1NtAS2r/Wcy8SwgabU8GbyWCwjYdJvx17Nd4idHWc6gGydAo3/2zXXBo+
         NSLw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=62B6Cmk1EHzWTd52jjaDZuHoED+3BYM/WZEAyoft/dY=;
        b=GGJ033RW2jF1AP1g1eUOx1wLCRDgaQKeL/s3ue+sPaywEI5XeqPUP6oziebhXFC46k
         NZ+lGOKIT5/cydO0+FHZf2IhqF8dYenS7ITG2e8BMTRjcX3w9n8tq1WusERwuGbManqR
         ezheK3j/habxAuvzii06SLtLADosdW+OdodoIauYdVS5EwhqExE/CXw1yVEbVV4efx7r
         EweoaUwz8WI09zHaa/S9K/xDnpmLYT+BBIFSbJi1giBQ2O5nzaX3K6m3MKcS4fPANDPI
         u10fyPLd44CyVJXVJaVVLo2b5TCS5XUNu2RuYtCstTsfxLfxGfLLm/kNou4GDPHG+8iP
         SJdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=62B6Cmk1EHzWTd52jjaDZuHoED+3BYM/WZEAyoft/dY=;
        b=mftebB32zmtGV5ba3LKz3XwhEGzPbqGwuG+/ku/ICos9d304JDJvhqTBvH2E1nLc+v
         2MHrlSUe4undOVGf5TM8nohaQTI4xKDwj7LZmhuX3AAuvhln9J25euOSX0pXqr9e7rrm
         q7kdJrOVsPsjSD9hY8fdWfb3CHGzZegUVNEgqvCCP+kzyBb8trKT2noczJBZPlvYEE58
         VAfLm8UbzkzY3vxN+fnjV17EjCgxfGwzx15BLSEuC6hGkGWjbFkzcjL/2j+0q3c+RRVn
         HO38wLjvcxP/qjw4yvNzlKCEnICAAF8MT+k44NycaQKbr/DftdDvcS9WsPtyPrBE/lgV
         UCOg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5302+nFSGJrMeKN3NYBIF+81PnmLAcqPcHCnNaZ3t2+bJ8tNfGMx
	Ca+h2O/j+xIMHPRjmqqkzaI=
X-Google-Smtp-Source: ABdhPJyUKg5YdsOpCB3wwtMNkXw9HS5aEgI1iqHNspNTWgqQYlYOQC72dlq+XXIVYGxccO7isU5jSg==
X-Received: by 2002:a67:2901:: with SMTP id p1mr2247369vsp.43.1606330975145;
        Wed, 25 Nov 2020 11:02:55 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac5:c753:: with SMTP id b19ls192959vkn.7.gmail; Wed, 25 Nov
 2020 11:02:54 -0800 (PST)
X-Received: by 2002:a1f:9889:: with SMTP id a131mr3610973vke.15.1606330974674;
        Wed, 25 Nov 2020 11:02:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606330974; cv=none;
        d=google.com; s=arc-20160816;
        b=ZFvMYiJARf8GMGfOv14G82sOYxbkfz+dPY805eo/YWVdrG855ddRuSEWHvaRDiXtKX
         KBOXEQYNtaRu22lirULMUhnoQmfe8ljMPini6wgnKW99rc1+i1mRhy1yEyIT9vpCQdEQ
         LBYgPCcB+8WQ65HHWztg0e90U2kGzEoqtuzPjCCpQ/N6lfgos6kCJeMiLVF5vjme1fuE
         CVe76UUODIfgtcHIqi9JRM9dk855Pdk5dc6zvC4hQAzoJ+/oTsJcdcWp0irYWccfKcnR
         8JmMel7qDuwc4dxjuzvCI9FIu2vgS1m3FrFwOJCj29gZ9FplzxtdT3+Me3NG81+tr288
         IqKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=mUMLqjn6dQoOs8/v04ldifMzL9V+HOiPQXPCd5/YG8k=;
        b=05VKBihPVZCjUN6SAp1TLZkSQjq5wak44sg0Kk9MwWhYuMeftOTZ+G7t1N/KG3h8vt
         DBDEZdMfvro3azkhItQhxscdenmKYmtPZouc+cPWiEgJlwpeIIZMC199bq2RV9A9yjDI
         DXN3M3caGZ9gHidWi4naAGl1XE0UK0rb0sofxS9q6N4Jp/Wk/UvdHpVjx3TFbNk7tp8r
         FZ/QHdcE47e37+f0dN7q+eCa24Qk41esQewpEn9ymwUl/0OJ2s3HHNu/cjAzwXy5ivLk
         Wj0h4rG2q3cD3USb7nzU/6++t5cMFseOJ+Ksbw0OLDQg6hNiw62BTGLf4NQ++UG0VJM1
         GUSQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IyS9EQtQ;
       spf=pass (google.com: domain of jrdr.linux@gmail.com designates 2607:f8b0:4864:20::e2d as permitted sender) smtp.mailfrom=jrdr.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-vs1-xe2d.google.com (mail-vs1-xe2d.google.com. [2607:f8b0:4864:20::e2d])
        by gmr-mx.google.com with ESMTPS id r18si140054vsk.1.2020.11.25.11.02.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Nov 2020 11:02:54 -0800 (PST)
Received-SPF: pass (google.com: domain of jrdr.linux@gmail.com designates 2607:f8b0:4864:20::e2d as permitted sender) client-ip=2607:f8b0:4864:20::e2d;
Received: by mail-vs1-xe2d.google.com with SMTP id u24so1747372vsl.9
        for <clang-built-linux@googlegroups.com>; Wed, 25 Nov 2020 11:02:54 -0800 (PST)
X-Received: by 2002:a05:6102:a07:: with SMTP id t7mr3605629vsa.30.1606330974457;
 Wed, 25 Nov 2020 11:02:54 -0800 (PST)
MIME-Version: 1.0
References: <202011250629.dqxhnqms-lkp@intel.com>
In-Reply-To: <202011250629.dqxhnqms-lkp@intel.com>
From: Souptick Joarder <jrdr.linux@gmail.com>
Date: Thu, 26 Nov 2020 00:32:42 +0530
Message-ID: <CAFqt6zbn713UgkuTGSGg+Nm+Rsa4KC2FFt2PBLibm5CwGkVzJA@mail.gmail.com>
Subject: Re: [linux-next:master 6721/7715] arch/s390/kernel/vdso64/getcpu.c:8:5:
 warning: no previous prototype for function '__s390_vdso_getcpu'
To: kernel test robot <lkp@intel.com>
Cc: Heiko Carstens <hca@linux.ibm.com>, kbuild-all@lists.01.org, 
	clang-built-linux@googlegroups.com, 
	Linux Memory Management List <linux-mm@kvack.org>, Sven Schnelle <svens@linux.ibm.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jrdr.linux@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=IyS9EQtQ;       spf=pass
 (google.com: domain of jrdr.linux@gmail.com designates 2607:f8b0:4864:20::e2d
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

On Wed, Nov 25, 2020 at 4:11 AM kernel test robot <lkp@intel.com> wrote:
>
> Hi Heiko,
>
> FYI, the error/warning still remains.
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   d9137320ac06f526fe3f9a3fdf07a3b14201068a
> commit: 80f06306240e0ad1c75116111be11950474dfda7 [6721/7715] s390/vdso: reimplement getcpu vdso syscall
> config: s390-randconfig-r015-20201124 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project df9ae5992889560a8f3c6760b54d5051b47c7bf5)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install s390 cross compiling tool for clang build
>         # apt-get install binutils-s390x-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=80f06306240e0ad1c75116111be11950474dfda7
>         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
>         git fetch --no-tags linux-next master
>         git checkout 80f06306240e0ad1c75116111be11950474dfda7
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> arch/s390/kernel/vdso64/getcpu.c:8:5: warning: no previous prototype for function '__s390_vdso_getcpu' [-Wmissing-prototypes]
>    int __s390_vdso_getcpu(unsigned *cpu, unsigned *node, struct getcpu_cache *unused)
>        ^
>    arch/s390/kernel/vdso64/getcpu.c:8:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>    int __s390_vdso_getcpu(unsigned *cpu, unsigned *node, struct getcpu_cache *unused)
>    ^
>    static
>    1 warning generated.

I think a declaration would be more appropriate.

>
> vim +/__s390_vdso_getcpu +8 arch/s390/kernel/vdso64/getcpu.c
>
>      7
>    > 8  int __s390_vdso_getcpu(unsigned *cpu, unsigned *node, struct getcpu_cache *unused)
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAFqt6zbn713UgkuTGSGg%2BNm%2BRsa4KC2FFt2PBLibm5CwGkVzJA%40mail.gmail.com.
