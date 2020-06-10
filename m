Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBO72QT3QKGQENE7PPAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id BC33A1F5C6C
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Jun 2020 22:06:20 +0200 (CEST)
Received: by mail-qt1-x83d.google.com with SMTP id p9sf2911842qtn.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Jun 2020 13:06:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591819579; cv=pass;
        d=google.com; s=arc-20160816;
        b=u4StigPkrHOIMx9o7fsYzl4KNe6R++oWnuxS4TEWUfBmrf+m/2/9ncEp6jd3DoDkCy
         nQnnCH6TfBmo+wSG/daSgcB7rmqm4lvtu/iL6cP2YvMFu4gEdl1KGFW9+6sDHyD92hfB
         UeFe3mwW6aUrHxFdfHFaYswjOv9huE+GDgOy+ucts1DyYj7qPkfU3hd/eNlqz5aWLi65
         0q1rKPZxJYhW//bIocFo+FIbp5N85copj2pyI9Dkb8Rb8kj8KAojNxm39Ck/ew1Lmyrg
         X2FxAbO7kAtrtSMF5jIGseAuU+eyphFTuPUmfckvvxHlNO8MaweVRDrRKyFyIvNuykWe
         shYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=4AhQrBWMsFksbxasKz+XmCtTVOmPsZpKXzahPTBa854=;
        b=uxojyhcnhM/xNzvP1HI2kY3DZn5Fbg3BJ7gmhxIN1PqBtNPiNjT06+++3WUYvyy8rt
         /XDbbrB47BKOm9imMWqn4qQebtngim1GJ8dNrs4NklaTpWqSl4xfdOCyP9h9Z84lr74C
         fQkZCToUvITfP8C3NUwAgs7CZEJpO2xoe6EYT9QwEEaHmPrwO+FeXCirD1sApXRfWZVI
         S6y9sPYpsOlk7Ni0j8oFy3KuJtwsHjAWNOrNsi1DDv/Kys3YBnqcF6us9bR6WGWtG0/U
         rMtaSonmgZvntiYyQaRmdLd84fCbiZCnmOyA+qGFrDea/c5uIIOSYUKV/o8u2w4UMaJl
         Va7g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=hCN0RPOR;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::634 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4AhQrBWMsFksbxasKz+XmCtTVOmPsZpKXzahPTBa854=;
        b=glfKdzihRDXp5wYnxYG/ZH9Q5zsoxnb0j7tNtM/pi/KGTxl7cUHijfcmeBHHN4Luf/
         wEQsalNpdzuHqitXfAODEj0R7lzZa74UL8LUY8m9c2DRD+t3bVKAXqOTaUz2dEd0Pp7j
         CSuMXBWkADre/6nB6KL0zGgnhCvnrygPtpM+0zpE1s7AN8Pw9/4/KXZdfmZPgSHnsGkG
         86DhNB611IBDs69DvEeRu1xQnfACIGv+JWu5FXxH0vDX6GSkt3t6Lr3x3+uTAZyVHDYG
         MN942Ts6sjwrefFsFB/am7q6pLWnOzpXsAuUVPUsscx5XjdPCNShafsFGBxjwT/0Qy9I
         bxog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4AhQrBWMsFksbxasKz+XmCtTVOmPsZpKXzahPTBa854=;
        b=HkSO6Lam7flxcVr+UDiYC7BxMFe3vo/KSGF0JLPqRiXCs2lTPkzVvqf4RIX+OjphOZ
         bUq1KLIp+mtclnUvCkrW1hIKVrKHY/7D1bJggIgnL+nh7m+qulGA9Fg+lGZvvTSLGTGH
         J2Ll5wpGMrRbleLDaD3/+0bSLeBNqWnGeYq0VdzHHeSzrDP1s6uwWsRLszuWg2hS/lgW
         5eZE2Q2BvUCWAWAoRmaz+NsyClaiiBfX9USN6sgb6mshZCMpgkzZd3T1+JCYVb9a8a7/
         5skHsJYaXK1XR1YAcacEH8XVj6nsz9tk5vW+Pq39LwB8Auwvpw78BOSM1QGqeQFVq/LC
         uukA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531mLC+6JX0/2BcFSA60rBvwWpIQr5b7FWFzedrcCXV68Y1gCFaE
	ZtgJpoW0dl1dYFfTwYiPhdg=
X-Google-Smtp-Source: ABdhPJx9bzUOi+MfBpo9HfVD4iEWj7lKXDtpQuRtU5QKaBefTwIR3brHqOQ3EQNDEFvqOg6SDIboTQ==
X-Received: by 2002:ac8:4e4a:: with SMTP id e10mr4892126qtw.203.1591819579443;
        Wed, 10 Jun 2020 13:06:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:658:: with SMTP id 85ls11721040qkg.4.gmail; Wed, 10 Jun
 2020 13:06:19 -0700 (PDT)
X-Received: by 2002:a37:64c6:: with SMTP id y189mr4907378qkb.353.1591819579070;
        Wed, 10 Jun 2020 13:06:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591819579; cv=none;
        d=google.com; s=arc-20160816;
        b=jYRUo6jCdQkDQw8IRfBjy6k1Jmjs2l4uV089XKdTN6AFt7k5heXnk0pVtz8MVD2gWB
         XNep/ztOlkYuFVpDHK2cSOi6SXCi6wCQJf71kgEcn4wCJYHxMUloD7aFdyhBvbcrCn68
         ugXlqxP1C01IsnjLU+VIecO3K1VLZ/PH1Jocu/x4p7J0M03zd2TfcYV3qQRtAa8RyGS5
         hr/yZhvpqDHFTihWZG/UJCbWjAy9e5kOFdTc8V+8ga0haEo8+tr+bAPMGOd5cEH0c3qD
         J3EJw6BH4vKNYm2xoBZpZIcJlAXFytyjuE49tleEq48WFybGZYaVS4xA+bFOw4DHTRqQ
         /sHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=oWdtRhQPznuRb3ZzT54cHb+KYCVRfWV3n67rx4rmzEY=;
        b=CghGNqB43LlSZgI5wcrgp9vjdjngmpgTzkAcvJF78ibO3J4eVTM9ZW0gVDBxWpNbhw
         fLZjgvW3mqNvU8PpNP3+yUYMXFLeS3OoG9Z0rBZEOW20VtN+7/Mwr7bGd4o0xxLxAsnb
         OMg28JeFbbron+QzprlfTQTO6mZqhHSCiuIuyfaG7ytG/DiLI+gMzILG2ycZSPezvvUX
         4q6KgXUzrp4NcGsSI2YzEA0LD1itfutlGjTXtqj1W75LpElxHRqNrcRx+l5l5dQOLDu9
         2RGJJYem0AXVrm9wf9CqIlU+qhRL19NNqX42O693ajA88mW8Yrlb7mnEQclj+cXZh5lO
         QWfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=hCN0RPOR;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::634 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com. [2607:f8b0:4864:20::634])
        by gmr-mx.google.com with ESMTPS id w123si57487qka.1.2020.06.10.13.06.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Jun 2020 13:06:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::634 as permitted sender) client-ip=2607:f8b0:4864:20::634;
Received: by mail-pl1-x634.google.com with SMTP id x11so1375819plv.9
        for <clang-built-linux@googlegroups.com>; Wed, 10 Jun 2020 13:06:19 -0700 (PDT)
X-Received: by 2002:a17:90a:1ac3:: with SMTP id p61mr4856978pjp.23.1591819578267;
        Wed, 10 Jun 2020 13:06:18 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id k126sm725421pfd.129.2020.06.10.13.06.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jun 2020 13:06:17 -0700 (PDT)
Date: Wed, 10 Jun 2020 13:06:16 -0700
From: Kees Cook <keescook@chromium.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: kbuild-all@lists.01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	kernel test robot <lkp@intel.com>
Subject: Re: [kees:devel/seccomp/addfd/v3.1 3/5] ld.lld: error: undefined
 symbol: __scm_install_fd
Message-ID: <202006101304.527001D@keescook>
References: <202006102110.8dtctAJf%lkp@intel.com>
 <CAKwvOdnYGQs9suorx_EERZ5cMkZtvQBKqoU7Q0DsgYhOVH5kTw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdnYGQs9suorx_EERZ5cMkZtvQBKqoU7Q0DsgYhOVH5kTw@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=hCN0RPOR;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::634
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Wed, Jun 10, 2020 at 09:26:21AM -0700, Nick Desaulniers wrote:
> + Kees (LLD errors are hidden for now)

Thanks! Yeah, I have some trees in a kind of RFC/POC state (and I got a
stack of various errors I've been cleaning up), but I didn't remove them
yet from kernel.org because they're linked to from ongoing discussion.

-Kees

> 
> On Wed, Jun 10, 2020 at 6:32 AM kernel test robot <lkp@intel.com> wrote:
> >
> > TO: Kees Cook <keescook@chromium.org>
> >
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git devel/seccomp/addfd/v3.1
> > head:   9a69dc243008619f599573f8fad6e4ab224cc19a
> > commit: e298dd6511d45bb8dfe849d6440afee6832f1b64 [3/5] pidfd: Replace open-coded partial __scm_install_fd()
> > config: x86_64-allnoconfig (attached as .config)
> > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project bc2b70982be8f5250cd0082a7190f8b417bd4dfe)
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install x86_64 cross compiling tool for clang build
> >         # apt-get install binutils-x86-64-linux-gnu
> >         git checkout e298dd6511d45bb8dfe849d6440afee6832f1b64
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> >
> > All errors (new ones prefixed by >>, old ones prefixed by <<):
> >
> > >> ld.lld: error: undefined symbol: __scm_install_fd
> > >>> referenced by pid.c
> > >>>               pid.o:(__x64_sys_pidfd_getfd) in archive kernel/built-in.a
> >
> > ---
> > 0-DAY CI Kernel Test Service, Intel Corporation
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> >
> > --
> > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006102110.8dtctAJf%25lkp%40intel.com.
> 
> 
> 
> -- 
> Thanks,
> ~Nick Desaulniers

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006101304.527001D%40keescook.
