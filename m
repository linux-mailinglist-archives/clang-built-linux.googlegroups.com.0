Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB5HK2KAAMGQEH7JS3BQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id CC0F030913D
	for <lists+clang-built-linux@lfdr.de>; Sat, 30 Jan 2021 02:25:09 +0100 (CET)
Received: by mail-pj1-x1038.google.com with SMTP id ez7sf6567606pjb.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 17:25:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611969908; cv=pass;
        d=google.com; s=arc-20160816;
        b=pXgGiOOjNtEbQzCuuLIw3txP6XBTRxr5tqcujJQwIavwz9J3jxrf9TMQ3umJm0JPat
         iUpKCojDg9io01uyUW5aEhF7hD9smBtY25APfmMRWY0W125za8yyolbUPchtfoMCylGX
         zqHx8lNlQLldCKwD80R6LWfKNDK8yOnPmG/EQS/wN30YTQ1td/QOFboClPfsPCf5oUaB
         mOaHGnXYY8JLrtoq2UGtOcwvXC3XECg7thCsgZvQVnWTTmG0kh7Y6nuE9tPVE+SMznAc
         dTN0OUKNsT6DSHzcYKTrQIsayA//47LFWdd8ZP76H09Cc/OMkSuHMkoe8SNa5vTujc7r
         1jDA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=vr+KUVMM7MMhIhihK8yv2uilEH4f6ZBXraVtW0oP7oI=;
        b=n3rBwOXTVGBHHO397hWvhKlJeMnt9tjHKa6VxaMI/Z2kWSBBfzKvv/CVtxxa4apsRD
         MlCQOuGwZXbKJVvkjDDNdrPDSg+fosETSDk5UKVGIM88m7ME7wlgmx9uOHUC4YKTBmKT
         mAhreOOLc4G4br4vFPCcpJnVhrxrwXD/8Vy8lci1MI4DEnI9SqWbc2EHYfz2OhfJzckf
         6vBuQ9tnYbniu8jd/wez89UEssv1Fv6zKc1eu1/GBD9QoXa1Ueu45p39E2vrqkLcOSe2
         NNnXNV1QPVAGDYnnDuHImHM+sz7WOixCxN0XPT9AknOU+hdd1JAjBOMprT/zLwGvEOS1
         9s6Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=RZJS22Il;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vr+KUVMM7MMhIhihK8yv2uilEH4f6ZBXraVtW0oP7oI=;
        b=m6tUTBaumrLE7XmptV6Zc3XwISxUeQNyUu+nefHx8lVZqvEQec8Hv4abmCbbc4dWwn
         jt6gXpFvBpyJwFZN/0m0pax5nNF6zaobbHKZY3ZdOXjqaq/JB9bFT6hzVgIGfkXHIs02
         KihYMIXHl1XtEdNOSyw6FJINR+3/7lzx1wL/9R9QspexAaQPentHaHvEbrTz+TMPBLFu
         mA89GAU8uNnbZgH/zACTjTQELfPZZyLn62yr19K7X3h2S5QnlX6b9aapLfCe8CeNQh3V
         3nM5h5jceHOTx2uvVvKSio92Dr+gFh9EjO2c7CHrhZBeGd+Su8UvCNvks1Dcw/MA9j4k
         xe9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vr+KUVMM7MMhIhihK8yv2uilEH4f6ZBXraVtW0oP7oI=;
        b=OZfd7wFGht7bWfT++FIIdyyzFVKUegZ/olSSeIgDTWjaanQzFwlTvCCiuzn0IPDmLh
         IOEhMlkNhx2bExZwv54/bRS+knuzsMHdclMCLGDM4T9qU18rLKbi4koJp+kr751WWhb/
         NBRrCt01OMyfsUFwabAN/HAWR5Hz4U2VRqpqsHVjsFFtEhsMDs8A5lDPuz6KtVFZQEzZ
         zIkz0p8l/jdnGOej7J4Me9e2sYGEGHaQ/2P7nF1FRtBk8tWe9hPbu35BlWU/NxiEdS8q
         xXQmXXm/3GWygKrVFpv9WIp2lZC27q7QdkK+2z0t/LcAxcsh3krSZVYK2giSK9iwgXNp
         5sWA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530mLbTHaQNyurKeFIQz2Gf1Mu3U35YfzScBelyA2TyHRlOAmlIB
	/SPCL5GnvyKNAZ8EF7SjBnw=
X-Google-Smtp-Source: ABdhPJybrEsriZfg9+GD26L2mtd2O22exfohntljKAXFk530uDNeiT3WdtdZO7u+8OlJfwR/gsxNjA==
X-Received: by 2002:a62:1516:0:b029:1b6:8e43:dad7 with SMTP id 22-20020a6215160000b02901b68e43dad7mr6832033pfv.64.1611969908500;
        Fri, 29 Jan 2021 17:25:08 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:f683:: with SMTP id l3ls5238215plg.4.gmail; Fri, 29
 Jan 2021 17:25:08 -0800 (PST)
X-Received: by 2002:a17:90a:c789:: with SMTP id gn9mr6997242pjb.101.1611969907920;
        Fri, 29 Jan 2021 17:25:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611969907; cv=none;
        d=google.com; s=arc-20160816;
        b=tEYIl/TVh4soVBBOBKNuJZ4SseHnMb0HjgKl+ltJIHXIU+MZqBhuSK4rcN8uGEqDGx
         mfVMjXXlRj40lX5wQmfjC5EAN95bS17ugA7ZvmgB0xSAvmQe0BySP+xv17oQuvBjXbfG
         sSAWZoR+/2VJUMchBp/ZtcFUH5frXVkcQ5uIVE56uckNrrD6fPvJWF9zSm3tWkb2j6zV
         PZFX6F8/CaCu+Chv0kNoTDHDE3DbSym0hGJLnnroG6az7AyagVXyYghvJy2iVAIeAh+R
         4CF38UcQJasZtAgUZoQ2W9UVA5I4J7OVlKZCgw9WBEh0QCUd98FXF3dE7tAtZmNBlK22
         CCQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=AU/VPGFlJn5EvrJXg6ospybAEbqfTPlyGNWmUI8DZLY=;
        b=t0s5K7w5HvlxWWVt5sYb/jG/rMMr5Kc+JsZeD/AeDeaEHGi5Sno4HXNOQ8vy+7Rd24
         a07Po4h3adCoKH75HIHv3C3tgyiYQ5uTqK5yiis+OXbIQg7D+i+Nfx9bwxG0G23HwTof
         2xnTcAb3pgBU6lVmDeyEv3hHjfxaXy+ZkdHkmkSVxUmSbIrikz684R/4EAZ+CL3AA0q6
         huKxRxr6a0TxiYDH2NJ5GzS+bdd3PdaEhv7SjxzBYS3NNreUboI5IFp5gjYvO7AnoZ0M
         kpPLtPWBFNqOdvy0P+o1SPEnHQ9GG+Jn0OW9jv8vK7XWczqI9XOLbaCGEHvqZV5cm/Gy
         xpzw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=RZJS22Il;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n3si492459plx.5.2021.01.29.17.25.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Jan 2021 17:25:07 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id EC2C364E00;
	Sat, 30 Jan 2021 01:25:06 +0000 (UTC)
Date: Fri, 29 Jan 2021 18:25:05 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: kernel test robot <lkp@intel.com>
Cc: Kees Cook <keescook@chromium.org>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
	Ingo Molnar <mingo@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from
 `arch/arm64/kernel/ftrace.o' being placed in section `.eh_frame'
Message-ID: <20210130012505.GA2709570@localhost>
References: <202101300946.OtCDTkmd-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202101300946.OtCDTkmd-lkp@intel.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=RZJS22Il;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Sat, Jan 30, 2021 at 09:21:49AM +0800, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   bec4c2968fce2f44ce62d05288a633cd99a722eb
> commit: b3e5d80d0c48c0cc7bce56473672f4e6e1210910 arm64/build: Warn on orphan section placement
> date:   5 months ago
> config: arm64-randconfig-r013-20210130 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 275c6af7d7f1ed63a03d05b4484413e447133269)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm64 cross compiling tool for clang build
>         # apt-get install binutils-aarch64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=b3e5d80d0c48c0cc7bce56473672f4e6e1210910
>         git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>         git fetch --no-tags linus master
>         git checkout b3e5d80d0c48c0cc7bce56473672f4e6e1210910
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
>    aarch64-linux-gnu-ld: warning: -z norelro ignored
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `init/main.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `init/version.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `init/do_mounts.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `init/do_mounts_rd.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `init/do_mounts_initrd.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `init/initramfs.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `init/calibrate.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `init/init_task.o' being placed in section `.eh_frame'

https://lore.kernel.org/lkml/20210130004650.2682422-1-nathan@kernel.org/

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210130012505.GA2709570%40localhost.
