Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBZ7CS73AKGQEMGBM33A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id 11FA41DC57C
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 05:11:37 +0200 (CEST)
Received: by mail-pj1-x1040.google.com with SMTP id mt16sf4596871pjb.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 May 2020 20:11:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590030695; cv=pass;
        d=google.com; s=arc-20160816;
        b=cMmr9Y+EaqP4mQaQiDYhrd3u1reQ0l+grx/tllLIfv99FYhMLDz91vQSZRVvFWv3mX
         nHO1MAsAUG0m0BW6+f7IWWecBLUrbCNsSS3+yEip0cmzArP5Khc9yTe9gbMO/K3eeVSB
         1JO8BcbxJft7BmrXGgLVvLXBZHWvxt6z4yw/AQK/fVXJPY7n6bmJfNbrvQU+Q3ggQzil
         hIFZ1JZClyEPOESOembsuAsXeidvZyLjF85wuCKH3wZNo30sdXjdlCYsj5T8rWjkKW6e
         wzC8YRoDn5RwdODS0zZdKKWihBb3yzjEKt7iTYaDrPrnw9lNMxyiKhQO4gv7UOjpUgnO
         Njrg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=WIz517yaZe1AS2xUWLRq3JvbHJpNtwT+9BD4ICAj6dk=;
        b=WYZ30WTFRS0AR1n2dKV+Bok+qXd1uYmFfDCxHWhvJcLHnLdy7H16YSwd/gpROCsgbD
         B0FJRiB2IlmR+VmwWWu/y5c3CYe8QaNsf9j2esHVN4cR30G+S4WhDzKiwOxwiYlu4x38
         GQJKmkrz8TdvgsorI9ecevcskFjJZTv89ba71J0DgLMeZ20tIBiC89IZP6TqIceAKT0T
         SNrp5nHzMnNiNk+YkWhjefbTif88hCd4+DmJCb+P6yjcC7N/WYbaLlfYh53oeenowZqb
         s3kvSTKmetT8P0nC3AoFEU2lOGSEWjsC9LZWpxPbDEZzPYnRckanxU85r1t0Jv1TSzQ+
         xljg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=d4SMqksc;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WIz517yaZe1AS2xUWLRq3JvbHJpNtwT+9BD4ICAj6dk=;
        b=fvOkFnyC6C25KTMHLbxIeHpYCDbR0t6UEkMuChItpCYUU1wyLSrPG67c69xRDw5WKr
         cm2kNzTXQI97H27qLCxeUwv4HQwh2yZuOcZaeZi5pJc1K/8byCuSvWGKlV8ZxjffYU97
         mXdLJYcypqXfXEu4gbB9tERMR/9mVtR6TQfR6U9jDYCi+1Ab1mWoXs0inXbqbF8hTZMP
         oXU1odjohw85vq2ER3fgxrxrXXDD+VfLc1rfGys6+xjGdP9FHzVGhULECjcsRSwbFtXf
         Ucxnumd1OO2hcWF77V52FhDBe3A3ZH/3Sgxlkf4So3vRuk+vdtN/rwT5sAuln/sElC/T
         3E0Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WIz517yaZe1AS2xUWLRq3JvbHJpNtwT+9BD4ICAj6dk=;
        b=pUrHg74memwBEMjWNXecidkM/aZoXFFH1aUK+RKkCryxG2Qx8oDuZMPpCT8PLHL1ko
         KkcVPO+q35YLY1/VY0YZCNfc/D9lhdVZ34qDSCWz3TJSJ2RQRjN+K/xe4lYxtsbthZe9
         CQGWdFgf1pMrjWBGA4I2ynPvrTfDmgKScASYiOrtDJN49/p4NQ8TZv7mzL/raVDo++Pg
         hTrdjx3I9mcDMDElwZTCl31vaYgHYhaEUEtpWiXTq5737y61A6kPMJpdV91Hs1rTMIn1
         sxaoZSeexWZw/7P90I5c/DDb7JTp6UpQKoFF+ICaceSOjGSQx+WK+ROKVgT14L1MmP6p
         dU6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=WIz517yaZe1AS2xUWLRq3JvbHJpNtwT+9BD4ICAj6dk=;
        b=OMfnu1Snx0V65ZsrkNgxqy+A86n6uleELLvjEabZTfQv/yjqspkOS9eUCWAtonIEFT
         7tMo1QlCz6Uh2pVRcRfFhkbSEnDx7leL7k6MBTTeRL0bFaqBXnv1R9YsLPj98RDqmLTX
         lxm0V5XaMVlxT/6MSm1pJmmvMshPv0sFMTb//rOqM685PchBLUlzj+yq2YRgDge/O50A
         03kucJrvlO2220PRf+tCVM5b2+WZCeWhZwWkDUgRcEBiB+kEK4PY5MeJxq6faidkF9Wc
         uDzbiuDwTgrcZnmMrVHS24q/uUxK66blDrnUDZf4b+D+GlLOca5dyZc2F0IUCbyWaLSk
         E6pg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530q6c1R8so0GOD+BotpIfR7/q9TAzEDGYiAd/KVm9Xuj9VOu3vt
	NYBP0miwmKmJpdgTIDM/8Aw=
X-Google-Smtp-Source: ABdhPJwR2dxSVN5A9ZRmZRrbl6VHPLHixlDeegAJfFGdWZmT2gwoVP1zrVTvc2x2kkoTJF75JIk9OQ==
X-Received: by 2002:a62:1a0d:: with SMTP id a13mr7135466pfa.229.1590030695389;
        Wed, 20 May 2020 20:11:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:5457:: with SMTP id e23ls269339pgm.4.gmail; Wed, 20 May
 2020 20:11:35 -0700 (PDT)
X-Received: by 2002:a63:4c0b:: with SMTP id z11mr3455960pga.348.1590030695039;
        Wed, 20 May 2020 20:11:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590030695; cv=none;
        d=google.com; s=arc-20160816;
        b=zbipYThTzDiDVzuvYqBeFQIq8eeXXGQ1dZzNiXjGo1kGzChOuMd5zKSITsVSHOX7TJ
         g93x6gBbMCpsO0YgEt8AMxvz/d5tlHV+ulfr0rXM0saiNTRnTtCGk1Wryg1sI/Ui4eTd
         SZe+GxBol8L3jKxXoeFNcha+amreRIIpUMQedn8kc4Ddiwqd8cNHdfqhhnEy4MAa03x1
         UXp9fC5Ju8IP6ufByTUddj9bQXXm2y8wYRhJj0zXujVG67ePBVnoFfX1AL2XHWzEjjCg
         AfpSvp97FLl2uN6RihJhh9rFCMhiqvXDiOEg9o/agPXUN7czlg9cfMvgD7V9f7/OYrZN
         vLqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=3enY41Zu+SqaraRfDzsMkolGEEa4AUaclXlhr1xH+3s=;
        b=kDA8YdlfH5okLdKtsWrz+yZ1L638iPJ6eJTsBsqYfwXTqeW86laxKIqfY/+i/y1VYt
         37A+KSu4AsYLxwKDG+q2phxOPa5ph695hhzmOmM93quB7L4TM4AvzB6LoB3Pk5Fh94X/
         tBzDwfnB5AFIlelzxSbyyj3a3XHZK5IgpqxaW5zuju1o0fAWyz00m4F9quiTUapgdWzb
         Rlw7NKF+V51cF1lOaJM8qbeEKlvKbVwSx9zVsNpUmrGLjcBHWsakjYegnYVfqeSU95k1
         oiU3gtI7YWjDKyUulItkPssjeQIst4G+EWood+YMZhq149S7rMFZkf2yzbpeeigWhkCp
         RerA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=d4SMqksc;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id g6si288641pjl.1.2020.05.20.20.11.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 May 2020 20:11:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id 145so2582651pfw.13
        for <clang-built-linux@googlegroups.com>; Wed, 20 May 2020 20:11:35 -0700 (PDT)
X-Received: by 2002:a63:5a4c:: with SMTP id k12mr6724078pgm.50.1590030694596;
        Wed, 20 May 2020 20:11:34 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id q5sm3208764pfl.199.2020.05.20.20.11.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 May 2020 20:11:33 -0700 (PDT)
Date: Wed, 20 May 2020 20:11:31 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [mips-linux:mips-next 73/100] ld.lld: error:
 arch/mips/vdso/elf.o is incompatible with elf64-tradlittlemips
Message-ID: <20200521031131.GA3346528@ubuntu-s3-xlarge-x86>
References: <202005210848.bsU04gBM%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202005210848.bsU04gBM%lkp@intel.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=d4SMqksc;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Thu, May 21, 2020 at 08:08:50AM +0800, kbuild test robot wrote:
> CC: linux-mips@linux-mips.org
> TO: Nathan Chancellor <natechancellor@gmail.com>
> CC: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
> 
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/mips/linux.git mips-next
> head:   c9c2e9c596e90fcf9ee0bf16672f7b938f39b913
> commit: 2ff906994b6c2b949c5bf65330a8abb5dde9c8e5 [73/100] MIPS: VDSO: Use $(LD) instead of $(CC) to link VDSO
> config: mips-randconfig-r023-20200520 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project e6658079aca6d971b4e9d7137a3a2ecbc9c34aec)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install mips cross compiling tool for clang build
>         # apt-get install binutils-mips-linux-gnu
>         git checkout 2ff906994b6c2b949c5bf65330a8abb5dde9c8e5
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>, old ones prefixed by <<):
> 
> >> ld.lld: error: arch/mips/vdso/elf.o is incompatible with elf64-tradlittlemips
> >> ld.lld: error: arch/mips/vdso/sigreturn.o is incompatible with elf64-tradlittlemips
> --
> >> ld.lld: error: arch/mips/vdso/elf-n32.o is incompatible with elf32-ntradlittlemips
> >> ld.lld: error: arch/mips/vdso/sigreturn-n32.o is incompatible with elf32-ntradlittlemips
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 

https://github.com/ClangBuiltLinux/linux/issues/1025

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200521031131.GA3346528%40ubuntu-s3-xlarge-x86.
