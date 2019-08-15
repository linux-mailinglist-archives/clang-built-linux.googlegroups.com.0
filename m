Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBRH423VAKGQEZFX6S3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1938B8F5A2
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Aug 2019 22:19:17 +0200 (CEST)
Received: by mail-lf1-x137.google.com with SMTP id h13sf372697lfm.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Aug 2019 13:19:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565900356; cv=pass;
        d=google.com; s=arc-20160816;
        b=s4McudhXkOEIyQ4FCsGRSX90nv4Md0r+gb8xwgDEhGRN1qKEJXYwLYLnqtREvvrRUb
         kJ6HA05z8BIZ3X4TZcnsc1eEe23zX/fFNs6NA0bInKb7ayVO7Aq4MKz8FfuOw7gOpddO
         O5C2vG7RFz6bZMlW/Q3tOLqrLJ5X4JDZNglw/W1Cq7MMsnqCYa5Q5U4GlTFZqA0e1UIb
         NIgmpuc9m04uujQrL+gNgEdzMM4dRr+wl6qF5By+U8/jK/rgABX1VRFwRz6WlLVOrBUm
         OeWwB65v1QzcJfWsxMtoxMLCY1JgFmhS5Hn/gJJqTYHpeDCgqjyBrPAHdQvjvVMd+OP6
         KtCA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=f679qvhygtb4LRZg/akwmVgnMS65O+bs9srUl8XRLww=;
        b=z17JvDRoOVjQt1sH4egAxIVPIKedYM7mMrFbCkRi29vf8AtXmRI8+emA6DeSIeAP4L
         sCU5fzoHZYRgWghxGGsJMVCePaP13yy9WBIuO5ReYPXoQMBzi93R78f6ysZ37kqINUvZ
         pyYnDehfWUrk71Qwu+Mr63+7wbreiH9j1eJCuGvjlPBB9X0niSwOvczHF1q/zf1kzAJy
         3STPPML3xmwLnFvvUChi1TjEle33uzVOOmPC4CI71bBAX1+62YICKwAfwlBsEim6KFUf
         PBZiOFAodiXQ+6n9ojwfBwWRA2os28T9raOxbVN2/dj74SKbf86N4U921ynSzkBeovN9
         EF/g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AyJyIFKI;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=f679qvhygtb4LRZg/akwmVgnMS65O+bs9srUl8XRLww=;
        b=L5pdgtlVX1zjQLExV31iZytx5l7Q9H0UlcAZ9znMIChbOi0LARrRGiH4CADZ6nBqu2
         IPMnvj2poR7iIaA4N/AMGDk4dPMedr2e5/MCOQbPjsq3U78vps16bQXA1utY7jrHqxLS
         X+roTiLO96Oh/zBUZV2bdDBScppkRLsrqw4RAr1WRgUnD4AgRW95Tu+vCyWOL8aHf10D
         vAuMXrGnz95cbryi7MTnUTH0zXlX6vdNuwwPKwy2YRb+/l+rhFzK26rh0ew9Qiqxnm8i
         BmGxXZSAqHFnf+7VN7XZrLAfWmZDGoP46YoEs2OuU15CPKjzwRI3xt9/b+TJx+WAej4X
         2uPQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=f679qvhygtb4LRZg/akwmVgnMS65O+bs9srUl8XRLww=;
        b=G74D1ZajL1VmUCSMjglS0gaf+d1RgueWXn3cmR3yURqjbzPmpGEkz2t7JXeRHsMpSD
         e4mQBUOEXuOb4/wsQdkGUdbKvhuCZJmle0AX6rhQEHWE+GpPBiY74L1cof0K6N0FUuYA
         R1HG1iru8ZL8xDH4bA/cuC6wnorDqHNuc8s0cAxMMY5dMsnCISFBLaiQdTJB9eHc5XYk
         M87r52n4keAtcemV3KZWkEVZ7tX8D+MbYwgYbmjuAEtaBErCOVeuWgea20d8iRh/i6hk
         0+PQxNaJgGjMxpWVJDlk1DCvALDokvotvHkYK17XcEzbIlOZI0zFi1+6btNlrbvds0nd
         jVDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=f679qvhygtb4LRZg/akwmVgnMS65O+bs9srUl8XRLww=;
        b=fjjaOXGqNg6mqZ9tbYhFnJxg6yhpqt+rCX8GzxvA6UeRoGuXx+7wJkcLRzBzfc1cpC
         EVv7BTLI+kdyMmsL1hRhTAWy2oIwJG5EGVGmMqKBMqSMZeKEyAql4fWxFFHuqe9/2cLr
         0g4wezBzce3OVIVLXtf6feMtWwzPwG4F4AmVch58MNDtH/IDddFkbALHGjZxb050h6wo
         XaVL5gb50hYd1aZmIIcbcBPPT4YTsSbTlTetobjIV6ba/UpHIfixh9yBXDgf2pSSdyMg
         zk5SJWN1vEdS0cgxazBsK/ikghGVK1YwrzWLLMUqIazo6nqMAz+UpI4yZekJagl7U3xO
         DtxA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXtSuS2tmx1yEy6p+3Q/XsFBDulFh+B/ItawyC+IQ8XrurnqkJP
	5KFqvjx2F9W9kqsCZqdDRSg=
X-Google-Smtp-Source: APXvYqxR1CxyY7YHGQpdIVneXV4YVWLiFNiFOkjyan1XiBRqe+B/MYXNSe2NKIRRBsHSMaYQbugA6Q==
X-Received: by 2002:a2e:3807:: with SMTP id f7mr3469990lja.87.1565900356533;
        Thu, 15 Aug 2019 13:19:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:4285:: with SMTP id m5ls589223lfh.14.gmail; Thu, 15 Aug
 2019 13:19:15 -0700 (PDT)
X-Received: by 2002:a19:6753:: with SMTP id e19mr3333342lfj.187.1565900355672;
        Thu, 15 Aug 2019 13:19:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565900355; cv=none;
        d=google.com; s=arc-20160816;
        b=wNLWgIyhRb6/ooCBOrICneavUV8/iK6taScQD9lE37bSxqcFJtpSC4yTdHWAtY3mD/
         X/C3zkx/dCJaSV8Zb4bprHWcfukggwvJCUWNIc1UDW0g52i3Mct7snIQNIFMhpW39f9i
         h6QvKA7J/vUVbgPICUgaZAVFRGVKQlSG0VYaQ8A2+IYt+BvywnEbYrMlzpFqWXnUFm9b
         9e5SppWUOINNA0wGDU0ROvU1KhYo7mUcffUFCsxQd5J8vhqjffbeDTuV4ZoOozUGzoFT
         6OPCk6367cne+zIiOQeLs6c7DaixJxqtYEN3R1UZudsppWXjPJsbl+fFnZ8e/Gj2LaTt
         5+AA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=bD7Sgz1Gw6yUUWhbEBUYKm6TpJQ94Gdhqpp23NTfVU8=;
        b=YJSMnqN9+Df7AWdTlvljy5M/YETMUDQ+8uEiiyZ8RDmhkAmos5NoLIeOMV+UHl6AET
         RvDhEa4bOqMDXjt1R4ZtDfFsHsXt6Iv+jxCJUiYDt0HlwXrwGdignpt82OZT6KCPQlXj
         hUfL+WzAYPD250XCtoI2c23QUH4DQbjo8Z6n0kqAeVJ9ddQ5GZpVuwfYzOle0d4GClMq
         eEbrvuIm7j9PEZZoOlDSWlCPdK8YZk5ahxW1rnPvY2vZHXy1RgQkos7l+DKsi6309nYw
         YvbAS87wDDrhGkLEHtiboRw8XvIHKKZoSOIK+K1H4hQUWsinZz5NfvpXoiDsZJDFyms0
         b95A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AyJyIFKI;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id u10si206827lfk.0.2019.08.15.13.19.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Aug 2019 13:19:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Received: by mail-wm1-x343.google.com with SMTP id l2so2290473wmg.0
        for <clang-built-linux@googlegroups.com>; Thu, 15 Aug 2019 13:19:15 -0700 (PDT)
X-Received: by 2002:a1c:3907:: with SMTP id g7mr4078287wma.58.1565900354901;
        Thu, 15 Aug 2019 13:19:14 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id p7sm2277594wmh.38.2019.08.15.13.19.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Aug 2019 13:19:14 -0700 (PDT)
Date: Thu, 15 Aug 2019 13:19:12 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild@01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [chrome-os:chromeos-4.4 34/35] lib/lockref.c:157:2: warning: if
 statement has empty body
Message-ID: <20190815201912.GB119104@archlinux-threadripper>
References: <201908151725.RAU7ovIx%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201908151725.RAU7ovIx%lkp@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=AyJyIFKI;       spf=pass
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

On Thu, Aug 15, 2019 at 05:41:33PM +0800, kbuild test robot wrote:
> CC: kbuild-all@01.org
> BCC: philip.li@intel.com
> TO: cros-kernel-buildreports@googlegroups.com
> 
> tree:   https://chromium.googlesource.com/chromiumos/third_party/kernel chromeos-4.4
> head:   5a6016061c6229a93ab01182469242faac59f3ba
> commit: 2e62e34f0efe804c7e229ab9ea6b259510a404b1 [34/35] UPSTREAM: include/asm-generic/bug.h: fix "cut here" for WARN_ON for __WARN_TAINT architectures
> config: arm64-allnoconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout 2e62e34f0efe804c7e229ab9ea6b259510a404b1
>         # save the attached .config to linux build tree
>         make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> lib/lockref.c:157:2: warning: if statement has empty body [-Wempty-body]
>            assert_spin_locked(&lockref->lock);
>            ^
>    include/linux/spinlock.h:400:34: note: expanded from macro 'assert_spin_locked'
>    #define assert_spin_locked(lock)        assert_raw_spin_locked(&(lock)->rlock)
>                                            ^
>    include/linux/spinlock_api_smp.h:20:35: note: expanded from macro 'assert_raw_spin_locked'
>    #define assert_raw_spin_locked(x)       BUG_ON(!raw_spin_is_locked(x))
>                                            ^
>    include/asm-generic/bug.h:157:47: note: expanded from macro 'BUG_ON'
>    #define BUG_ON(condition) do { if (condition) ; } while (0)
>                                                  ^
>    lib/lockref.c:157:2: note: put the semicolon on a separate line to silence this warning
>    include/linux/spinlock.h:400:34: note: expanded from macro 'assert_spin_locked'
>    #define assert_spin_locked(lock)        assert_raw_spin_locked(&(lock)->rlock)
>                                            ^
>    include/linux/spinlock_api_smp.h:20:35: note: expanded from macro 'assert_raw_spin_locked'
>    #define assert_raw_spin_locked(x)       BUG_ON(!raw_spin_is_locked(x))
>                                            ^
>    include/asm-generic/bug.h:157:47: note: expanded from macro 'BUG_ON'
>    #define BUG_ON(condition) do { if (condition) ; } while (0)
>                                                  ^
>    1 warning generated.
> 
> vim +157 lib/lockref.c
> 
> e7d33bb5ea8292 Linus Torvalds    2013-09-07  150  
> e7d33bb5ea8292 Linus Torvalds    2013-09-07  151  /**
> e7d33bb5ea8292 Linus Torvalds    2013-09-07  152   * lockref_mark_dead - mark lockref dead
> e7d33bb5ea8292 Linus Torvalds    2013-09-07  153   * @lockref: pointer to lockref structure
> e7d33bb5ea8292 Linus Torvalds    2013-09-07  154   */
> e7d33bb5ea8292 Linus Torvalds    2013-09-07  155  void lockref_mark_dead(struct lockref *lockref)
> e7d33bb5ea8292 Linus Torvalds    2013-09-07  156  {
> e7d33bb5ea8292 Linus Torvalds    2013-09-07 @157  	assert_spin_locked(&lockref->lock);
> e7d33bb5ea8292 Linus Torvalds    2013-09-07  158  	lockref->count = -128;
> e7d33bb5ea8292 Linus Torvalds    2013-09-07  159  }
> e66cf161098a63 Steven Whitehouse 2013-10-15  160  EXPORT_SYMBOL(lockref_mark_dead);
> e7d33bb5ea8292 Linus Torvalds    2013-09-07  161  
> 
> :::::: The code at line 157 was first introduced by commit
> :::::: e7d33bb5ea82922e6ddcfc6b28a630b1a4ced071 lockref: add ability to mark lockrefs "dead"
> 
> :::::: TO: Linus Torvalds <torvalds@linux-foundation.org>
> :::::: CC: Linus Torvalds <torvalds@linux-foundation.org>
> 
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Center
> https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
> 

I think this would be resolved with commit 3c047057d120 ("asm-generic:
default BUG_ON(x) to if(x)BUG()") upstream.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190815201912.GB119104%40archlinux-threadripper.
