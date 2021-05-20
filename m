Return-Path: <clang-built-linux+bncBCTJ7DM3WQOBBXNWTOCQMGQET6GVQNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x340.google.com (mail-wm1-x340.google.com [IPv6:2a00:1450:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id BCEEF38B943
	for <lists+clang-built-linux@lfdr.de>; Thu, 20 May 2021 23:57:49 +0200 (CEST)
Received: by mail-wm1-x340.google.com with SMTP id 129-20020a1c02870000b0290176ef5297e3sf3441038wmc.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 20 May 2021 14:57:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621547869; cv=pass;
        d=google.com; s=arc-20160816;
        b=RWFNuQre26RB2g0r1epPM67zdwKQH/C9crpum9eBaI+HW6jau2X/Dd+aXsQtQRRsYw
         I/LdJTHKUC8xsftAdDARGOFUdKCV6DDD5YWllVKUrqmTJC3t3pXYobmeW3B/WaJ4xfYN
         0yPqeJJe7v9Fg9jtgqy8LxnKotS6sr7AQ91v0W0wMT5UsN8MVrZvVvCDl1i34tRfgTQr
         yJ4SCAFL8Trk9G0q0AyYGqg4egHSwYjcXl2ok/Fgcw3GRbub3cNTVv9uT7qyzxnC2FOG
         8F6qtdfO5xLA2RzDeR+6EIG7Zqvn/SH/rQ7MjRWVIXkLhoEDmJni/CCg02YXGgiFS5Xl
         +3vw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=FKTUK9V6g4uwS4GkN6jdTT8PIBBo2SqmEjJ/CfzFHIU=;
        b=GHuM7Yu+cMKdMWE798v7YXPdDWb3PVZWw3ovoDsGPVwXuexQzVdjqkWlg/OE4O/2Xk
         rdyIZUu5tTtWmDsLIxCBYTBkqKqawiPTSCyovco/dpjWBIbx2Ejoj+XEY0gp3RaXxHWd
         z/Sp5kju0WB7JveecJ7854eWKCgvNW1NtoHxsdKKdLjqGl/N28AhyO8dbexZR/ycdE0D
         EAETp/78jdDnI/BPL7VlenQ1qLZvZUSky018DW/qlKCZO5ZDqmFW73BuUkjexOZFrfrU
         XS0edhd4UqZ/9Z71OniII+TxpVxqDK/XChJMyH58lHjaIvzthwabesctOnbkWCAgTZW8
         imJA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of daniel@iogearbox.net designates 213.133.104.62 as permitted sender) smtp.mailfrom=daniel@iogearbox.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FKTUK9V6g4uwS4GkN6jdTT8PIBBo2SqmEjJ/CfzFHIU=;
        b=cWj0jMj+BhxCH5MAe+mZWkBN1eQVpjiy1Ibzsg+DsEWv6ImRyxzyyD/73pszGiCqhl
         Ofm1w3vEuwRpX+YRb7eqyHNKgL5iUBHKzMBmuyxapqXuUSSanJX9ZdOYjLdAS4v7wo29
         8ELI+DZVFQYC0L8BaS8nElK/8/Q4fzFRf/nSbetoEglIMU1r+lRamVKp2zU41kjXSnuZ
         2uVlIMuKF5I5YoHFM6PnRftH3Mj6WkQgmckpUpalJ5h2UsavRGSspIWO10CbrwjL34B1
         sss71tvfMYF4gBJIiRdrdRYmLB4tCTiVW74iCkeWwnpCbgcWHB2UGCpwJDY3PTpvwsxG
         kEMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=FKTUK9V6g4uwS4GkN6jdTT8PIBBo2SqmEjJ/CfzFHIU=;
        b=CWmK/R/roYZ4CNgeHwsKKJJ0Rwa4L/VI2asI/ZwTVmvJUoA1J7nursBS8tuwxJ5n65
         aRZM8neqBtH5H6dmUWi9PZRGWwpQvuPytkeVvFsz50/a3SPfX8vzksh6WxcEaTS7esAn
         TiqPcbtA1V+ATAc9vKLxHps/dsRiPbVXfq/sI7yMN2WafwstcxKGIh+IF9SCt5+PCuNS
         XUz2x3Eg/3CwNselBQpRRrtH9o1Q8SvgOZlHmbWcJp6MDPAjKzkzppU89MWAK9ZuxZ8M
         XX9RHLW4S5xbrFTJM2Y/jdPF8p/cY1TNM/EtWYebpIVX4pj6Fbh/EgCz/DKYJBLjKpsF
         e+yQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530TlqqtY4ChQOTPe6HUEKyUBERQe9pgNcZ0Yk5jT2HLWJp+yq8u
	Eh7X5xwvgy/MBiEvkHo/3RY=
X-Google-Smtp-Source: ABdhPJyxeJO3P+58LOI7QQq0tfVusXWu0rBK9Lb6sTCYbCKdaSC/n9+Xz8E4RLYIbTzY74ZhuuMz5A==
X-Received: by 2002:a5d:68ca:: with SMTP id p10mr6399888wrw.30.1621547869447;
        Thu, 20 May 2021 14:57:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:1909:: with SMTP id j9ls5292191wmq.3.canary-gmail;
 Thu, 20 May 2021 14:57:48 -0700 (PDT)
X-Received: by 2002:a1c:3954:: with SMTP id g81mr5664274wma.61.1621547868538;
        Thu, 20 May 2021 14:57:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621547868; cv=none;
        d=google.com; s=arc-20160816;
        b=oCDekG70zhYLRRCzNdBai981ujxkckvKGzI9nUN5aQL3utL+Ujd3cos5XysNDTRa0K
         4hputOvyav86SeiJWm7vCq02KKE3Mu1X1fWqhTKBMYooWbKRVt0d0aRHBlPVNxrO0Lvz
         gdNSm3UI+c2whNM/UZ4ky0M9upTnXwz5tgoptirULTvc9gVv+EOzt295fbuvpNHc781Z
         djlbM/r16b4nTsfl6GjeM5G/Syyqa4Jug2WHkiQCx7sSS9gdVdpFpOFJyS5Qi/G3XEPH
         jQOs40ul1F4ZN3J6K17ir24go9K9ER6w0F4zo4XMWl1To+C8j5FKtxMvl+zrcpvgsk51
         xV+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=g/Xu3N2DP+beE3fQez+5e+gGF1bLEejE/vWJu46RcmA=;
        b=c550r734SWB2JJpI9iWwgfzvreMAkMlSct0NAWZEacg9HXrDdn4ZsQeo+GIK1tncYZ
         wsRXhNYP+pO9cJqLkPXWwDugfxlJLQruIxoLpVd/Bzh93HXTP4zORSTvLHkdlhZX+zd+
         7fIf9wKUlesyken4/x/w6bI5EdlB92ASYgVaMOadU2TATWAHKUyLuv255t6WkWuy0Ejh
         piBBh6tuPGzn51NHr7Vu2+MGMtyyS36ZhM2lB4K0eiPnGo1H4OsIJKE90bNJtF91Dgc0
         /WqYotmt2hMgxGWfbDdDy+8UTkeWEd6ckCQvPxfZjm+SanYYOjO1PjDpb/uWDDDvMDJC
         hrPg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of daniel@iogearbox.net designates 213.133.104.62 as permitted sender) smtp.mailfrom=daniel@iogearbox.net
Received: from www62.your-server.de (www62.your-server.de. [213.133.104.62])
        by gmr-mx.google.com with ESMTPS id t1si179576wrn.4.2021.05.20.14.57.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 May 2021 14:57:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel@iogearbox.net designates 213.133.104.62 as permitted sender) client-ip=213.133.104.62;
Received: from sslproxy03.your-server.de ([88.198.220.132])
	by www62.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
	(Exim 4.92.3)
	(envelope-from <daniel@iogearbox.net>)
	id 1ljqfo-000Ca3-Fx; Thu, 20 May 2021 23:57:44 +0200
Received: from [85.7.101.30] (helo=linux.home)
	by sslproxy03.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <daniel@iogearbox.net>)
	id 1ljqfo-000K2E-B1; Thu, 20 May 2021 23:57:44 +0200
Subject: Re: [linux-next:pending-fixes 118/395] extable.c:undefined reference
 to `arm64_bpf_fixup_exception'
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 Linux Memory Management List <linux-mm@kvack.org>,
 Alexei Starovoitov <ast@kernel.org>
References: <202105191005.n805ieKd-lkp@intel.com>
From: Daniel Borkmann <daniel@iogearbox.net>
Message-ID: <020bb9c5-e029-80ef-aa01-784cb34e2b58@iogearbox.net>
Date: Thu, 20 May 2021 23:57:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <202105191005.n805ieKd-lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Authenticated-Sender: daniel@iogearbox.net
X-Virus-Scanned: Clear (ClamAV 0.103.2/26176/Thu May 20 13:14:29 2021)
X-Original-Sender: daniel@iogearbox.net
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of daniel@iogearbox.net designates 213.133.104.62 as
 permitted sender) smtp.mailfrom=daniel@iogearbox.net
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

On 5/19/21 4:20 AM, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git pending-fixes
> head:   8bb1ba5daf09803b0c243a53d34f6ae1da8acc23
> commit: b24abcff918a5cbf44b0c982bd3477a93e8e4911 [118/395] bpf, kconfig: Add consolidated menu entry for bpf with core options
> config: arm64-randconfig-r034-20210519 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project ceb1ac9812cb0972cfa34cecc5e5704ae2a22063)
> reproduce (this is a W=1 build):
>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>          chmod +x ~/bin/make.cross
>          # install arm64 cross compiling tool for clang build
>          # apt-get install binutils-aarch64-linux-gnu
>          # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=b24abcff918a5cbf44b0c982bd3477a93e8e4911
>          git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
>          git fetch --no-tags linux-next pending-fixes
>          git checkout b24abcff918a5cbf44b0c982bd3477a93e8e4911
>          # save the attached .config to linux build tree
>          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
>     aarch64-linux-gnu-ld: Unexpected GOT/PLT entries detected!
>     aarch64-linux-gnu-ld: Unexpected run-time procedure linkages detected!
>     aarch64-linux-gnu-ld: arch/arm64/mm/extable.o: in function `fixup_exception':
>>> extable.c:(.text+0x44): undefined reference to `arm64_bpf_fixup_exception'

Reproduced, fixed and squashed into:

https://git.kernel.org/pub/scm/linux/kernel/git/bpf/bpf.git/commit/?id=6bdacdb48e94ff26c03c6eeeef48c03c5e2f7dd4

> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/020bb9c5-e029-80ef-aa01-784cb34e2b58%40iogearbox.net.
