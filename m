Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBTEFWTVAKGQE3UJ5Q2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id B15D887163
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Aug 2019 07:21:16 +0200 (CEST)
Received: by mail-wr1-x439.google.com with SMTP id j10sf3236704wrb.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Aug 2019 22:21:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565328076; cv=pass;
        d=google.com; s=arc-20160816;
        b=IUsHbhRLjGjYj1R7npMsoWs7jce9OuWQTwN02mmB5gzhkP0yZ+sQtMDrcLBJEnkOiq
         Yck+tCV4h7gkLlm6Oy8WUYg1yTa3W4tGknhdwv9RKFN4nIqLGnKiT4rmba98usuE+D28
         ebGI6f4PofDLN7cl1rOBrqkFTAIhS97/r1LZSzzW9i66HIfr/hzHD1gqW5kA5l8H5ljU
         du6C9I9rMjOjfPkD7WSTmjBhiQUMBhe/0IP3NOu3NQ9HndabeOkRKyWwMBOPXmgZAkg0
         tyGGv4bnJ1XCzqLHWd1Pe3DM3q8G8NvJyrp+oNMUOpE/JcPcv9Upp9HqQoVd4TvmpDiq
         ldcw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=qVHSgpGltBHBJiDZqXX7S7DxZHzMj2+pMUDKk8lPxy8=;
        b=BkoLe4nVFjiyvFICBSjPy6h3EGGnu8Q2faItENMe4OTA4ckjaBrPqETb6XbKgtl/EV
         jiLjiJeH6SkVdi6OuTwtzV/q6IrOstAXUxmNiFhNoRoC9sAvtElqaTUGiKMud0CuSSck
         JEB+Xa5NjGHL3DGgyGhBd25zfOS+K5XBdZg3tW/CZRmleSAwSn4sFA2Vt74p/LHYCRHK
         rS5nPL8l6rXGSW/ySOpVf6Mx4uit6rPyU/1RZpmivvyj1AIaJNhgeIy5BX0K+7kx6+71
         sTgpEwf7mvgBT7+FakqgTvDKYW2PlDoI4GKbBWgza0mXHFNlHgeUeU6qj3b7fQXap6t5
         +E4g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="GN34Y4/a";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qVHSgpGltBHBJiDZqXX7S7DxZHzMj2+pMUDKk8lPxy8=;
        b=qUV4uSy2VQpLaIK+VPeMpZP/8/rPc2NGWP1toRLLKTeZNOEjW+/+qF9UG950A8IQpf
         yvt36uf6Pw+hNaeN/dYLV5hDZBPu1CTEzLPKRY2spvlXdH0L36mGVybLVXUm+Nix5Ycn
         hpRs5I6MP/+n4P8djYjDfUlFSCceNGMGuxkhInj9i4ct58atxmvpoWoS0zFvoC0DwbZX
         37bozexlo7Ew5qENprXrv58NI3aGESkhWxLJdLLBoFOviXmIuUOfW10tWQ3j1rjnQOty
         oEl8ESneOH2jV4q8gzRefwrNNxvKvjnPl8pDDG2qR3I/LMHwD+UDh2SrTHkMdZO5LjVL
         E7VA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qVHSgpGltBHBJiDZqXX7S7DxZHzMj2+pMUDKk8lPxy8=;
        b=bezfLf4jNW+9Git3jkPoCUKsPkWQkP8vjRLwEh8gxSs3Bk2srG+GQ6SRXn+kb53ym0
         J08/alP8pJRVltAnn24HlN7z3QVNA5hipQgjU80Gy1GLh83MuE4il1KXyuYGUahND6Aw
         77U9YT2P2QY4s0Xf2iXwWGAOHe41lNxte58P2SGlMLemBt/Y09xSmjIkejYq6JHWO46z
         KJojptRmCaQyGemb7mDSele+dGH0jXgBY/5HgtwRQw3cZtP/wSwB4XTV5GduKJraKbWA
         JbSyf8NhxYIKsYt1YpZKYSdIawdDEGT9JdpwFrQzwFzIT3qc+/54JprwllPecyL6rzXt
         zNVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=qVHSgpGltBHBJiDZqXX7S7DxZHzMj2+pMUDKk8lPxy8=;
        b=eT7g9P+7JOlfDaLd6TB9BzLwLUzCMvO0GiNw2L7Pall3XKegdfvLDKBvYZkfoxOifY
         cyscOZGhC36q46fEhsAVmJBJB062YiVz0ezrSb7y5+J/icYB7AcC8tNevC6Inu59Mvo+
         kpSUOyaXbkh6M6G8L+z/0YgUa3472fRvESg7/dboQ024+MyQ+BKqXG+bxVgdYfvq3cyH
         TxOQjpW8AmdQ/TZRUez5ZKDautf2bfVL/B4zjvrxJXJm9SPuPPuy4K0cz/wIqLnhcEWn
         4ycr+o02PNOarMUZK/aDmNhaw5w+ctMKhVByfqN4CW0ggdNoetURQ9h2YHXwIS5KqEWc
         UQFw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUwsG/dlrdN4OYa9IokLGble6q8m99n1PzoAsHXyB61e25o+M4P
	hkqEXn8m+UNQnBUCzLD98Vo=
X-Google-Smtp-Source: APXvYqzBSSPAWwOukgzeYjeZOvs0GonI3bP8XPQhwGan5j2AM5sGp6IECo9aNdcln6Z4f2gTqzxO6Q==
X-Received: by 2002:a1c:107:: with SMTP id 7mr8340612wmb.84.1565328076376;
        Thu, 08 Aug 2019 22:21:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:7018:: with SMTP id l24ls580652wmc.3.canary-gmail; Thu,
 08 Aug 2019 22:21:15 -0700 (PDT)
X-Received: by 2002:a1c:2d4:: with SMTP id 203mr8220204wmc.105.1565328075453;
        Thu, 08 Aug 2019 22:21:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565328075; cv=none;
        d=google.com; s=arc-20160816;
        b=avsoghys23ASiE/xrRCLXROLIperWyDbrHXu/tvYFYKc9lqXcM+ox6Kuv+ovadjp42
         H44pp9poClXvZwmA/yT5GrvgdjB3Ih/hAN+pqk77W8tq/UabZ1Qq8Kgt2kIC1TrJiDfR
         wKxu0dFA+1JVhSWZ2ZPFbjOyYhznJJPdG0QVPl1d4cqFBtOfTUDwrKh6fZX7rsBJtTB5
         1lFmsHP92gNLVguwydiSBMXfVwC1dokgegNbg2gVuuXJVeCIsqxaMN6FAf1L6S8biFFb
         Oh4a+3nu5LlF656hXFT5Eh8q5mP0pk0FfnGZSb/aSBl6LQYbPkF8Pdvn3fdlzqPJMxQr
         sxfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Bxwb7Oi91vntmtIadIoQVgi3I7PuUghs429JWV0ar/8=;
        b=BPdTtd0hLh7xbpkJVa4EIJbrZQmhh30WyOjslQF2bqpgFf0NeGqOWH0WVxUWqfgCS1
         Eif1HyKer2IovYfBs4gCMNVahClkfhR99ArYtk2Qx2eCCNO1QFyCnbLB855TuLVgNTV3
         yzDIVVsSLZD2NtkN5gTJ+lCtdwujYQZE+ESfuJJhVQbVhkq00TBSt68TVQJ5//lgVIAh
         K3Oppwn5OYejNy48TPOIgTBc1bJnsHMOCI23Mhcwo/U3rPTv7geNlxlnNTv32V88R0b7
         3waHpxMR/H9EYXpL0RR9x2H8FZ99U3MqDNgD5SeAfbNUkEtgh8R7cIQHTvLNPqnO46WG
         a2Bg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="GN34Y4/a";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id r189si43766wme.4.2019.08.08.22.21.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Aug 2019 22:21:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Received: by mail-wm1-x341.google.com with SMTP id z23so4418734wmf.2
        for <clang-built-linux@googlegroups.com>; Thu, 08 Aug 2019 22:21:15 -0700 (PDT)
X-Received: by 2002:a1c:6c14:: with SMTP id h20mr8724655wmc.168.1565328074893;
        Thu, 08 Aug 2019 22:21:14 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id s64sm3230852wmf.16.2019.08.08.22.21.14
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Thu, 08 Aug 2019 22:21:14 -0700 (PDT)
Date: Thu, 8 Aug 2019 22:21:12 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild@01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [sound:topic/hda-bus-ops-cleanup 2/3]
 sound/hda/hdac_bus.c:228:6: error: implicit declaration of function 'readl'
Message-ID: <20190809052112.GA49835@archlinux-threadripper>
References: <201908091239.vT9jf3Lj%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201908091239.vT9jf3Lj%lkp@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="GN34Y4/a";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Fri, Aug 09, 2019 at 12:07:42PM +0800, kbuild test robot wrote:
> CC: kbuild-all@01.org
> CC: alsa-devel@alsa-project.org
> TO: Takashi Iwai <tiwai@suse.de>
> CC: "Pierre-Louis Bossart" <pierre-louis.bossart@linux.intel.com>
> 
> tree:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/tiwai/sound.git topic/hda-bus-ops-cleanup
> head:   d4ff1b3917a529bdc75592af6b1504ad6c4029f7
> commit: 19abfefd4c7604993d1c31e098a3f48bdafe334d [2/3] ALSA: hda: Direct MMIO accesses
> config: arm64-defconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout 19abfefd4c7604993d1c31e098a3f48bdafe334d
>         # save the attached .config to linux build tree
>         make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
> >> sound/hda/hdac_bus.c:228:6: error: implicit declaration of function 'readl' [-Werror,-Wimplicit-function-declaration]
>            v = readl(aligned_addr);
>                ^
>    sound/hda/hdac_bus.c:241:6: error: implicit declaration of function 'readl' [-Werror,-Wimplicit-function-declaration]
>            v = readl(aligned_addr);
>                ^
> >> sound/hda/hdac_bus.c:244:2: error: implicit declaration of function 'writel' [-Werror,-Wimplicit-function-declaration]
>            writel(v, aligned_addr);
>            ^
>    3 errors generated.

Already reported with GCC:

https://lists.01.org/pipermail/kbuild-all/2019-August/063041.html

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190809052112.GA49835%40archlinux-threadripper.
