Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBOPB633AKGQELNOYF5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id C0B2A1F11B5
	for <lists+clang-built-linux@lfdr.de>; Mon,  8 Jun 2020 05:30:03 +0200 (CEST)
Received: by mail-qv1-xf40.google.com with SMTP id a8sf12912412qvt.7
        for <lists+clang-built-linux@lfdr.de>; Sun, 07 Jun 2020 20:30:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591587001; cv=pass;
        d=google.com; s=arc-20160816;
        b=i/934rHpBAj7NYAuWikX7s/1GsHDQYV+FPxYK+ttTJOo3kLedQNaPhiAq/H4oss934
         bE0YtfVE9FRgaiZwlttft+REWSGEDmDOtasL6uAzkloTZV67nx83xc9ZWZFvwYenKc7L
         1WjfWL/A9cvSkYoaGa2zkxWDi981ITAqyGRfCFTmm1WX+Ek9h1Pbc94I5S8W4hYylsRO
         Bvmw2cVYAUZWT+h65q+GhcHktmJtlFRc0+MdFYwZMOHzGXBk4mbMoyi469gKxCLbfrTv
         7wUyt9nWHntOzDg4nikoRkQjf6Ji9vVIkGU/5PbL+tRvmvEqyX0hHRoy6nrdX4qBWok0
         3v/w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=H3fGeImUCR8wptMcXtmbj0Xk3nAQV8dcBtr6W6msg/0=;
        b=tYM5dcSMhiPUIEWfFRtVwjqBmdyA4ng5OHGBGEG2iDlWd99WGdXehLq0rFdw4YgZhB
         fC7PBPvW53rMdIBfYxzkGyIATUizIlVKtejKW+aT0jQ8RQQfmKMlo5yUs1nmupuP3xQ/
         irz6iGYjvXo3RFnqvT345GQ1oo88BUGTlxe3M4ietmQBUxlurjpE8bYwMk7MvfIAiKRb
         R9dSMzyYtPBaoqSJgBh9/rbQQh/p0CCj+gvlLPo8nVAOhUPheVjb4BQLm7CqiIOnQZvu
         zEaG+SVpsYsab9zf1RkBK4jC5hd21kPsxm6PRk2b3yd2Ffp55LvIJwHK2NVxPVDocKq0
         xxag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oDWjToVb;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=H3fGeImUCR8wptMcXtmbj0Xk3nAQV8dcBtr6W6msg/0=;
        b=imHbeGiY/gy3ak7TeMggyTEzzEyD5/Bf2bc4kDkAO4/9T+2ESiKIbsM7FWs/5C/qQf
         fbrqonqdQQ5dYzPMbbQeo2eFrR9gyDgkoRHQWifK9/6NgNvSnAnz2NAy99iFZQ2O3vvU
         7QonluHxCuM9LVakUxq0AIQ7Af3Xv8T9hsHwD0dpD/pRwotbwIp+GA6g/SzRC/tKOcQz
         bw9xiGwRQ680aeh71J5PIf3gDscjDOFj/3JdiWMZKisUyICZgKMWfmnYddIAAwPlr34Z
         qmWuXO//Bq4WiVugWen11iur6lrusxaNA9B1MY7LomIL1NK+aFcRTCC8kx+TgrXDEaW0
         w9UQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=H3fGeImUCR8wptMcXtmbj0Xk3nAQV8dcBtr6W6msg/0=;
        b=NgtYjvmqg6UydZ0ucg1fnqnf5PN9XGqe5aVz8LufuOwrK8M3YACKsZw17P03D1kpwd
         KVK7NreccoVy/Mc189Uvm/UZTQ8vRTDlu8QHeanT1bdHJPSDrAMUVte+xW2s5WGau0Og
         G9qHK37FoWkRZ2J8jZHD13uITiLU8vXazWCwjbz7HRQRlzi5tYDnqXL2yGDj62YpFzX2
         ucnCJP8Om8s4r15DAdj7OR/YA/cwSHe4TFkOup0/nkLhvXeuIH5sHt7yGUHqk+AvdRWQ
         Kcx/ZVP4ANQlF6z7KK6u/W4+p7AL++JCG7gkT1o2bct5wzkMsGBOeRRcVNEHaRtGsryM
         xt1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=H3fGeImUCR8wptMcXtmbj0Xk3nAQV8dcBtr6W6msg/0=;
        b=lF7F+O7reUiEZ/RNRj8BHI3GZiWrDEdyO9ys1bJo6PMNuSNHDyihmUEGbKYnDBiezc
         E365fVHm8IPP4o8FFgjo5fMUsnM6dBcVz8IK1nIiYpiplOBIFtLiayxNJ6gMVhNFC7Iu
         aJStIAZibkGYn/s8r1LZ5y6HHgrp2F2AyxI+qw2LRwkGzDpsCLJHsfsJcwzMPn5+6zM8
         6RGmpQI4dIBOIUCitNKFJSEz5ZG1c4CQaUotjI1GAu77TIM5Dpa0ivmynZPbxcbRK+zO
         8EPFHZPXe7IWXOzhf3EWutBUQ44A6XBOsLAGs/dFvP7/kmwLdLmjdWL+mwbeAIlr5S6a
         p5wQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531XEzNHcY9JXByqD5qlKSabi4Gw7yrLtgMHzfolcU6EvwBfGTPA
	kmIkp8Bblktgjh0JTBrNmD0=
X-Google-Smtp-Source: ABdhPJx8lVW3lVCeycPlSkvVhkNO0gV3lV2FUiUgZtFmZnVVlXhgo0t0v+P7+vk2169FL6//+stYQQ==
X-Received: by 2002:a37:9a06:: with SMTP id c6mr21337439qke.33.1591587001373;
        Sun, 07 Jun 2020 20:30:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:9e92:: with SMTP id h140ls7381293qke.5.gmail; Sun, 07
 Jun 2020 20:30:01 -0700 (PDT)
X-Received: by 2002:a05:620a:1099:: with SMTP id g25mr19987138qkk.302.1591587001054;
        Sun, 07 Jun 2020 20:30:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591587001; cv=none;
        d=google.com; s=arc-20160816;
        b=ByZyU2NLmJTp8qBWkjACpv1EXghsBxtYJXHO9pmAOumgPKJvnH5/ZHZmItbIOO/okF
         aQ41Wb6evbA1yZqk9m4PcB4A9lSCxjTKcif6xrpoMkyc9rfvTlmSxR7Qar4dFI1Xr6eR
         xVmIuDw45jDhnt1tWUlz6btGawzly/SbxtFJwxfXKekgF6QoB3vybEt/TQfAvH4rHc9j
         n+HOC+acFBuewFlNRavCKcwyIR9XQJ7VChgCRkRxIN9vVq1LzWsV+q83WHAziHJg/2Jo
         hTgTYDb2JC7UdLlwZHiabb1pO6MJkUdK9gIQi760g6E5BX9duDujpsEs7Ad8Kw1j31ax
         tsnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ssuwDU+7RueF3hl9aVwq9G9IEBvExXPl4pQ9jjugJrU=;
        b=kSUtwf/+5rFZ4lIoY9butMwlQiDbW97dLyL1hfQLakwcFQGeeGtkkN6spY792Ng0+Q
         miaKWqpHNguPp01EYUpXenIVNDtMzXrHHtHQXR2M6IGulLP+jlzBFBHyS2oAreKwpbze
         DowLZ0GkjAwVzj9tP1QdW8v0PT8RccLwQsPMv1d2yz79m1tbvYgJW0XFeNl2LvKGl5Wo
         l95RHMqaHjxDBBbhpcrMabt1nF5s8rUpplQyycCcwJOpEUZQJHLKchEZo0ZskuYfMS1m
         OFgAFwkSD3Ai6NsSHbFdJ3xzOhq6sjjDFBLFq3XV6vAKSsd+cRv2ukT/Cx8M/ZFYj50Q
         cDiQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oDWjToVb;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id x37si339642qtk.5.2020.06.07.20.30.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 07 Jun 2020 20:30:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Received: by mail-ot1-x341.google.com with SMTP id g5so12496227otg.6
        for <clang-built-linux@googlegroups.com>; Sun, 07 Jun 2020 20:30:01 -0700 (PDT)
X-Received: by 2002:a05:6830:1dbb:: with SMTP id z27mr13408044oti.340.1591587000520;
        Sun, 07 Jun 2020 20:30:00 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:4111:8b00::3])
        by smtp.gmail.com with ESMTPSA id g126sm1153149oia.41.2020.06.07.20.29.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Jun 2020 20:29:59 -0700 (PDT)
Date: Sun, 7 Jun 2020 20:29:58 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kernel test robot <lkp@intel.com>
Cc: Daniel Gomez <dagmcr@gmail.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Lee Jones <lee.jones@linaro.org>,
	Sasha Levin <alexander.levin@microsoft.com>
Subject: Re: [linux-stable-rc:linux-4.19.y 2642/9999] FATAL:
 drivers/mfd/madera: sizeof(struct of_device_id)=200 is not a modulo of the
 size of section __mod_of__<identifier>_device_table=1504.
Message-ID: <20200608032958.GA1591794@ubuntu-n2-xlarge-x86>
References: <202006071903.heyMSUH7%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202006071903.heyMSUH7%lkp@intel.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=oDWjToVb;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Sun, Jun 07, 2020 at 07:58:06PM +0800, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-4.19.y
> head:   65151bf9f715983d62613a4d9196525eb64dda53
> commit: 7b24a4a363a90d8708d6b59046843eddf3eee1a7 [2642/9999] mfd: madera: Add missing of table registration
> config: x86_64-randconfig-a011-20200607 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project e429cffd4f228f70c1d9df0e5d77c08590dd9766)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         git checkout 7b24a4a363a90d8708d6b59046843eddf3eee1a7
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>, old ones prefixed by <<):
> 
> >> FATAL: drivers/mfd/madera: sizeof(struct of_device_id)=200 is not a modulo of the size of section __mod_of__<identifier>_device_table=1504.
> Fix definition of struct of_device_id in mod_devicetable.h
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 

LLVM issue (as evidenced by the warning showing up on a patch that is
from a year ago), please add this to the list of warnings to only send
to our mailing list to avoid troubling kernel developers.

https://github.com/ClangBuiltLinux/linux/issues/1045

https://reviews.llvm.org/D81346

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200608032958.GA1591794%40ubuntu-n2-xlarge-x86.
