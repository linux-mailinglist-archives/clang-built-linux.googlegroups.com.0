Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBSET4LUQKGQEIS5JSXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id E70EF73415
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jul 2019 18:39:36 +0200 (CEST)
Received: by mail-lj1-x23e.google.com with SMTP id m2sf10062924ljj.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jul 2019 09:39:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563986376; cv=pass;
        d=google.com; s=arc-20160816;
        b=lkz1rsYwVvzjmTn1aRNNhpN4lrpFLWZNBls6MeSDkFl8E0P1fnxJwD7IAmil09o4/t
         mKUtoldfR8x8guFfp+Cl6hm2mFJRSyUGj9o48K1VeOvBdHsSgzjw0bH9PqvwkCtsZsro
         cgWWSNVvhyPQAElaoREPwf3eTbRbkx4x55//2d4uycTAM3bTsXi/Nt28W5EJqtV5yA1M
         N2ekQ4a8zwE5XIUe6qK1VlOZVdxA78qyiy9XVq0uVK20AjSQh3q+iAXuwTBl1xEzw8WK
         Q2UYZqDX/lxL65JZk93jfvfC1KdNJl7M+HSDSiII7hyy/srmSxPMyQdR2jMzXIK4OjF4
         XO5w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=IQyeTVFO4+2JR/ob3yinhbrJMd0V+wVXnfOB2k37LAA=;
        b=n82hpRV4q0r48WytWb9JyOQ3fuasgZEImuW9kGgizYRY/1W5xn8rWIiQ22JX4NZ2jm
         kgOdQ0JiXeDf+qgjuaMS2hGJBr1IxcxL2YYqcU7I64QxuQcRW5wmwQJLQDAJjcdTTUyW
         pGcYaLFbhC1cBXFGkkBni8OQyPGjaoEjLk5ej4bPcSQ3PsBNPMUxHu0UCrsBqdOutY1i
         diSG5fOzg+/F8NR54vSsLYFnNuGKilYz7Aix86dElCImheI4+BKEDXzjlTxE9v5xgJl4
         Qym8NSwRTdoa9Y5zrtba6KbIEFz+bmGZ9/e/eqyxBY4QEtGtIGf7z9nywBnWPHhupuvL
         JSnQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vVf5ULbW;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IQyeTVFO4+2JR/ob3yinhbrJMd0V+wVXnfOB2k37LAA=;
        b=qjG0MMJoXdH3MIXDQ60rwXo/iN6yvwI7nwhnttSRuKUMRgdGLzaZhGMh7KjiZ8zU8K
         28nlaWPz/1d/e1GRvvLcQYoGcqAP/Zza3HOnaueeLNlnlg3FBi98ue5lEUBc12YLevMs
         SoldlLiz6PzkdLXc/DeYwvMCDjJv0EMtrONNhV27OuraQz1yGHpCO+XjvA3QgWDp+/NL
         COSuKHxuPnUE30Sv3irnxtjA4/3DcJsFIfTZ+I8+8+bsPSnqb5z7ex2KaFFdnxFTdrRg
         uq/cUSn6YVt/DO2p18kBpCZKvimepmgZ5X1mAYl2OpSMTQtAfa756RB0CssIl2x07H3c
         TFsA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IQyeTVFO4+2JR/ob3yinhbrJMd0V+wVXnfOB2k37LAA=;
        b=b5X06KHSUdcSqqSTxLgXqwYH8XZyL/e7Kwel41Htz9ryrX2abXDml+N7yJNlCWO+Cy
         BJNE1zQhE67gOGHdwQal9TQ4kCS9MSs+T1GsHp2AlwuFhheTSUun47VUeH6lq38qOwQI
         I5GSc2qRqWBDQY7TniYPycz9ZlAdi0VL1NS+WMlhVFWgTlEfiln5tsnXT94mfAd9hcq8
         Eh+3o6VSP6oYbmbU5PX7dA35sl31FL7wGpL0zaGr3iFDdrvsGpuNw0L9mv8r3SQGVczU
         bhJHnZLfWLPoivnZ/MVbv5x8b6DUoittMssUCMMVgafT2lt8+Gfwz8iayKsD6+IqnrcY
         h8WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=IQyeTVFO4+2JR/ob3yinhbrJMd0V+wVXnfOB2k37LAA=;
        b=RSq9JAZrEvL9xFCmJu8us58Q59YOmxAHL9mvS/k7X+z4BqD3cg49em/O4E3elcV9wg
         Lqs2OrjUZGOzel/SMeE4oXE1iZMfKwZAOtxY0IfRpnj0+O6d6PcGKvfs9IcA15FggWtq
         WCeAeWz+vpNISUo0h1PNKE2jilLDyYFOCbfrmxyRVWc9mzDeXMY792INCXgZavskSrdu
         OAJSzPUiqrwrJdXC72cPrcxrzjoQM/yY/+91k3w3DRdB3ijVbWTRT0Ppd3FqhdI/jHrc
         JNO7//yNVGmvQPj5mKB/HI0riiMAZ9E/tgEYnWGcqnSF3lbVvZ3fXeVEgBqqYhasPcuq
         w4dg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVzrK1DSiEhYcWvAfyXVSFwFjfQ71LvJgfOrUQzT5DtQSBqe3Ld
	TG/LV40aQot6FZbqt5FfvOA=
X-Google-Smtp-Source: APXvYqwdnsiMmOLv4X/QL6a+x0KP/3MnOJ8g70pbfGEI76kvRPySJgc++JO1i5jLRNqAoAJEcqqvqQ==
X-Received: by 2002:a19:7006:: with SMTP id h6mr38252325lfc.5.1563986376532;
        Wed, 24 Jul 2019 09:39:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8854:: with SMTP id z20ls5375943ljj.5.gmail; Wed, 24 Jul
 2019 09:39:36 -0700 (PDT)
X-Received: by 2002:a2e:88d3:: with SMTP id a19mr3805601ljk.32.1563986376066;
        Wed, 24 Jul 2019 09:39:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563986376; cv=none;
        d=google.com; s=arc-20160816;
        b=H/2d9jx9T64ttE5/yzx9/Tgh4eAu3VoKeFdM6zm2Jt8d74SvDWcBOImkA4aYKL62JS
         AO9C/ZiRed/30zR/za+HzAD1V1rDAYuZKhZJevcqFJn0e9xbUNjre0R4bcOCPFkVuOVg
         Gvj9MtlIjQIKhNbjoGJGsATP1MELtkQopMo1+IwiZF2cPeJh0Ivfjq5nKsQO7nk+Q341
         DtDu0Z2F9t9cLxHLUg8HR7I1x2EUPvYnr5lSSzcAYJPcvRw9tOUsEHaUEOqrBwipLrVT
         futXDBkdSgYcSqZfOOJiGUoGSFWUZrAj2P/2mvJaBW1wGBTNhkYs5IVhkBf7HSj9VemJ
         NGCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=g/7ht1xTvmlLqREXSUb8hjIW3oN/WlPhzIwrxJcCUnw=;
        b=FjHmJ8yE50lc0rEVObsPMbG4BUQRP4GXRtJhIZCk45OGkH5AJVUYvLo0oru8JoHJP1
         EvX7MspeQtT3oRx//7UMzNzQkV7GWDWxpt/mrekuwOGVbG253krxhUzCciNcgv6bYw0P
         JJPhCyLUoVWWOjZztLPfUhNSXCLcnF4L0MhM5z+dX+HjuHk3vC0Dl+FX4UzD0eUlRrQ8
         r2q5rFUR2soq8GY3wqLYsY+4WKx2R7lxjthVG1W/YX+J/fH+G5u1kcKhPPI7fpbfA6gQ
         4useSyna6EEFp9ghtiomVbmVyHVO4MC3OvKhSV7/OweGpot3UcgnJaDDpulXhnOppJt3
         cUPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vVf5ULbW;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id b8si2079239lfp.3.2019.07.24.09.39.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Jul 2019 09:39:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Received: by mail-wm1-x343.google.com with SMTP id s3so42421245wms.2
        for <clang-built-linux@googlegroups.com>; Wed, 24 Jul 2019 09:39:36 -0700 (PDT)
X-Received: by 2002:a1c:ca06:: with SMTP id a6mr75754792wmg.48.1563986375273;
        Wed, 24 Jul 2019 09:39:35 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id u1sm42968498wml.14.2019.07.24.09.39.34
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Wed, 24 Jul 2019 09:39:34 -0700 (PDT)
Date: Wed, 24 Jul 2019 09:39:33 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>,
	Harshad Shirwadkar <harshadshirwadkar@gmail.com>
Cc: kbuild@01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH 10/11] ext4: fast-commit commit path changes
Message-ID: <20190724163933.GB69960@archlinux-threadripper>
References: <201907241807.oi8YsEpE%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201907241807.oi8YsEpE%lkp@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=vVf5ULbW;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Wed, Jul 24, 2019 at 06:28:54PM +0800, kbuild test robot wrote:
> CC: kbuild-all@01.org
> In-Reply-To: <20190722040011.18892-10-harshadshirwadkar@gmail.com>
> References: <20190722040011.18892-10-harshadshirwadkar@gmail.com>
> TO: Harshad Shirwadkar <harshadshirwadkar@gmail.com>
> CC: linux-ext4@vger.kernel.org
> CC: Harshad Shirwadkar <harshadshirwadkar@gmail.com>
> 
> Hi Harshad,
> 
> Thank you for the patch! Perhaps something to improve:
> 
> [auto build test WARNING on linus/master]
> [cannot apply to v5.3-rc1 next-20190724]
> [if your patch is applied to the wrong git tree, please drop us a note to help improve the system]
> 
> url:    https://github.com/0day-ci/linux/commits/Harshad-Shirwadkar/ext4-add-handling-for-extended-mount-options/20190723-001855
> config: arm64-defconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # save the attached .config to linux build tree
>         make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> fs/ext4/super.c:589:6: warning: explicitly assigning value of variable of type 'struct ext4_sb_info *' to itself [-Wself-assign]
>            sbi = sbi;
>            ~~~ ^ ~~~
>    1 warning generated.
> 
> vim +589 fs/ext4/super.c
> 
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Center
> https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
> 

Hi Harshad,

The 0day team has been doing clang builds for us and this warning
cropped up on your patch. This self assignment shouldn't be necessary.

Please look into this when you get a chance, cheers!
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190724163933.GB69960%40archlinux-threadripper.
