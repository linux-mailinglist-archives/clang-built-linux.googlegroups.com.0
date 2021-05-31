Return-Path: <clang-built-linux+bncBCX7JJ6OTQGBBSG52KCQMGQEEOGYQ7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x640.google.com (mail-ej1-x640.google.com [IPv6:2a00:1450:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B115395839
	for <lists+clang-built-linux@lfdr.de>; Mon, 31 May 2021 11:39:21 +0200 (CEST)
Received: by mail-ej1-x640.google.com with SMTP id f7-20020a1709067f87b02903e18c4e1e85sf2237650ejr.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 31 May 2021 02:39:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622453960; cv=pass;
        d=google.com; s=arc-20160816;
        b=E0JcGnihW+8SyoRlAJ2aR3dNfKNb1dSxyhyxlH4d1aURnJ3UW33q5+/VsV7bzvTb04
         j0kW3osWNd1HOPXDhPaIMpBNIVRVHYfUlnnpquWndyCUW55WswsET1PLsMgY+QK/xFyu
         n/AIWJhwt+DV011LbpJJToH0ezt6aUgVWi8P0hhVUEFT6f+DJUIENxT3CII0D76NfyNF
         weghjuFAIQM4/NEfZOd7Eb118fxloe4Fv79O14ELm2lvedLARNmQ1UTIXMdCPfEEEJN7
         GciSFFiKojWzndr2eKnl/riM+tUrtlUNE9QIYXbhWP+tIZC2D9UPvbVQhuSXIahRqKRA
         EM/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=uDM55m/RjrFDOqnM2QzEubzXDpkh6vkIeAmR0IYSauo=;
        b=IPVPpppKZxMcoNdzdKfSkHQDa1UR/cNB1sVb9rt0n5z8dij1pSGUVBUWQDJxZ1Ej0k
         XkOemH3TsCaazmSA0CJUf3xP/rzl0ZT0wf/A8zfi5YIVMWOr0cWdjhU7eg/7bWy82gAd
         RheH0oSOH+YEulZ2zq+UnRlCpBcKEyRFCwMCl0U2dhpMt9QAmQLw69C7WR8yAX6qX+NM
         d0482ctbV1D7kJ2RlcgDH2Sv/+Xqbf2lpS9XsRO3Z51hOH8/PGop+FHdyvN/wjhRU3zv
         Z9OM2PbMLYPzLA49iJy509gdZzEDi/Zhub7A7V9HUvbRWPLguGx7zXH0RiMWGXIEi0Xz
         epXA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=M+iTDf6R;
       dkim=neutral (no key) header.i=@suse.de header.b=FO8sWbuE;
       spf=pass (google.com: domain of mgorman@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=mgorman@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uDM55m/RjrFDOqnM2QzEubzXDpkh6vkIeAmR0IYSauo=;
        b=mo9pHgxzpB16SKCP2xJhQZPSUSM3JSUCuhYVfPpb4qlJ89xsYuthCQ5NRbrD3QePkd
         HFny2vXn32qg7fI3D09XHAz4JaoRn0pUCrUJlPyzyLJvq9F14e6WYajdLpwZz807/X0h
         jzgqu5jz82v3If+YFbYqRzo9hFIyA7wIfPukxN5G5BvgMIdg3nlzGhdy5tnSX1DOqLbS
         vSK2mtOKGwA2mVeay8dRHUI7g8SCfh2AlwfTA/8XAr+Oi6tTB2foc1RqwX9LxmrGW4Qd
         0v+5vmssyst8XWb6cjn3smZi5tI0aCnoL1YBLtMVjFUOQOxr2mjPFsA6P6yVPHuyYWZA
         WprQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=uDM55m/RjrFDOqnM2QzEubzXDpkh6vkIeAmR0IYSauo=;
        b=YhcLBff+8Y/zK4F6gyEpddB0BzAz3GUl4i3j299YsWMEJyQ3BPwQ4zKj3Z2Ft8nJM9
         x1jOk1jfqsZkofm2Flp6oZCq9bhbICPo5dG+8bRGY7pr+DdczfGRPi4sYg8Q16eb3uBX
         GfS8y+B5EnCWUaggGs7uM16BapKXNTkCvIShnlOToUM4LuYBP52KwJ0/wSgdd4PEh0OM
         0ww56WzVRyh0aYbZGbV5Jj46bWwGd8YxyJB2/AInfOUeLHqlKN6wX8yLDLUbeHh59gYz
         jTs0y/r7TMVOUfVZLy+IClOwjaRIbFSrY+wkiroCBFVahNGThjG6uN9czE2RyLv1KkvG
         i78g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533djpdGm5S317QzWow59RwEpsaukLU/ykUE/DhNgxory8tbCrhr
	RDqIUuChZArv531ohyz/WCc=
X-Google-Smtp-Source: ABdhPJzFP7dd3gS5ZxOmK73uzKpEmZKR7qUx85fiTeQ/rS65kLRv90S2fYXML2fH3qDVsSWNI1G8cw==
X-Received: by 2002:a17:906:3b10:: with SMTP id g16mr22651815ejf.232.1622453960839;
        Mon, 31 May 2021 02:39:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:907:d2a:: with SMTP id gn42ls5896183ejc.4.gmail; Mon, 31
 May 2021 02:39:20 -0700 (PDT)
X-Received: by 2002:a17:907:10c7:: with SMTP id rv7mr21882615ejb.125.1622453959993;
        Mon, 31 May 2021 02:39:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622453959; cv=none;
        d=google.com; s=arc-20160816;
        b=mQCge678an+5DnTqfS0C89GtwM6FT4m3jS3R6pfZBcFRsYZ6MSiG7g5KmojrL+n/a9
         P1cPPn4Pqttgh55DyIxaUK6vDSmSM66+IaYC7YXD1CG1O1pUiI8N8vAJETmgI2p3Wety
         15p/CJbgq7xKIy6AL9ma8VvKQ3w/79sQwWK/Y6UMbxmHp91AiT03nEHeewmMmueHDbaw
         41xuhfLdHvmjXovggniwu7J28PrDhQ1VFxkp/lBcwdoe3X3Nt5FF4/mtZWD5a3VMLjL1
         PJhzW0xsQRhUAtDu1ZWLHcbvIpt16iGYDgVoihQyI86Scz9/gwpA5wgEnerwnSm9cxw8
         xpvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature:dkim-signature;
        bh=epzpCtO3yk3UqW2dc/ZAqzca2GcXaXGrD87V+hVMEcM=;
        b=bVzXckjDsWuS+17ULL3azAxn4obV27guE3JguiXDOK+tNu1Y4Vw+Yo0MmZlTx2vjm3
         g7+4bwZdlHHNPzxiexWwxZm2WcMu+8apqch/e44AqvV+QY88xnYSOxz76oYrK6ln7bFL
         XHk5hu3EllJEm2ErUIXjWuWXUWmomJo4sm88pPbQq14a+vGckWFNuI6zdfzvjatv4ZY2
         mO+6f9E0cb0CHNbNzbOUtneqP8IP38u/iJYKHsM1ITLvd4KnkeAJTzCb008rc4Q0vGJl
         qLlnV/DfAW8J9cCprnRWd4p6Zqu2/YNkNJHWpQZlaKkFtrZ6WI9ShhCC8xfvf5e/JzSU
         QibQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=M+iTDf6R;
       dkim=neutral (no key) header.i=@suse.de header.b=FO8sWbuE;
       spf=pass (google.com: domain of mgorman@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=mgorman@suse.de
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id f16si653568edy.0.2021.05.31.02.39.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 31 May 2021 02:39:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of mgorman@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id 890ECB4B6;
	Mon, 31 May 2021 09:39:19 +0000 (UTC)
Date: Mon, 31 May 2021 10:39:17 +0100
From: Mel Gorman <mgorman@suse.de>
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Linux Memory Management List <linux-mm@kvack.org>,
	Yang Shi <shy828301@gmail.com>,
	Andrew Morton <akpm@linux-foundation.org>
Subject: Re: [linux-next:master 5596/5886]
 arch/x86/include/asm/fixmap.h:103:48: error: use of undeclared identifier
 'NR_CPUS'
Message-ID: <20210531093917.GL3672@suse.de>
References: <202105301909.iEwOXNWt-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202105301909.iEwOXNWt-lkp@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: mgorman@suse.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.de header.s=susede2_rsa header.b=M+iTDf6R;       dkim=neutral
 (no key) header.i=@suse.de header.b=FO8sWbuE;       spf=pass (google.com:
 domain of mgorman@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=mgorman@suse.de
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

On Sun, May 30, 2021 at 07:58:14PM +0800, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   3e029760e6f8ce90c122c267a039ae73b3f1f5a4
> commit: 366e9aec4a22d77b869f1b7641a74fdd96f02b4c [5596/5886] mm/early_ioremap: add prototype for early_memremap_pgprot_adjust
> config: x86_64-randconfig-a006-20210530 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project bc6799f2f79f0ae87e9f1ebf9d25ba799fbd25a9)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=366e9aec4a22d77b869f1b7641a74fdd96f02b4c
>         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
>         git fetch --no-tags linux-next master
>         git checkout 366e9aec4a22d77b869f1b7641a74fdd96f02b4c
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
> 

Hi Andrew,

Can you please drop the patch
mm-early_ioremap-add-prototype-for-early_memremap_pgprot_adjust.patch?

-- 
Mel Gorman
SUSE Labs

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210531093917.GL3672%40suse.de.
