Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBC7GYDVAKGQE2YIU2LA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 4839C89247
	for <lists+clang-built-linux@lfdr.de>; Sun, 11 Aug 2019 17:23:56 +0200 (CEST)
Received: by mail-wr1-x43e.google.com with SMTP id s18sf7747780wrt.21
        for <lists+clang-built-linux@lfdr.de>; Sun, 11 Aug 2019 08:23:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565537036; cv=pass;
        d=google.com; s=arc-20160816;
        b=TYqxhzH0Jo+rqpPZqlD1Ee5ZH3waQqWfOeKu0XCdwrW0KNNNONZ5JG62usLDmVXiAr
         MXv3fHhaDHQVCOLv7aRDhxsvJ7Ft2Npr0i1temheaxb3+Pun5DFm8Wka8DaF+ZgFHkFb
         /peZbqmA61SX3DK/PBuSI6DOD2LHYaFJUVmzyCGChjJ5alSbZf58Rcn0hZ9vSl1hLmMi
         EOOPnbZB+cyFGfC96fMokHbUaizeF+UktrKDlhqU+sqOpj8AEf9ihjfE+ZSwBloZ43yk
         GqnV7g3CthRd2VeddjeTVwbyVdf/TR/a0btqqVnGOTd3QfHH0vqLei8Uivc30SA1+RLO
         Auag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=T1l/0FdXfGXf0fMFWkE2fSOQcz7K+0sGLvaNN5NYuVI=;
        b=QEAF88ojxYtpvBexcJg8AjFhQ9VwtO0xBi0vnW0OmYnmdpmNITsEmTi6JCF9kIee9J
         DNkXM2C43NqDQegz7qvdXLNRMXy8CimcLhMrPvMv67u91mrvAN/8I4cHs6yDsxTx3JHe
         6rTylxuHd/slIX6tmALw6jTd/u3NUMAxMFPkYMQI/T4r1177c6La+OGzmUrLK35565bz
         G71GlpqGgHECBtV/QlMP77cJS9gIMeHJ0AeEAprvS9eWi5Mp8MByw1U7yVacAAJirQn6
         f9kDNtngVtloZ+/eLc/77EgaY40dwCEpthVGqxq6Q68szX801KdkmWerjBxTKWgWWU/t
         xlJw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eloZLUZY;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=T1l/0FdXfGXf0fMFWkE2fSOQcz7K+0sGLvaNN5NYuVI=;
        b=lMg7kqCI2hXjMkQftOXb5N26ty7krA63s1IjCfGmJtNPc3xX4uP7WfzqHBpPRN0Km7
         2ua7lGCTqJmiNY9mlsnWpciy8MMnbeXKCqBu5sLKJpWdSTbDnZtt1wh95lmRWEh2Jcfh
         Q8jZzXEH4fvyUhE9ZEcfanq71HjfAcsqgxnV4WdIJUoPm6YmPSJ60J3isLYwmx8iXEUZ
         yqHnVWn5sFBteZe7Ipop+0QcK8YFaQQEtYpnSrX6w3V4IDGm2RMuN5G1+k69e1FPLIEE
         0H99K6eCxmovVZ8x/8ASvXplcby4rDya1MjZpG1o0swK43oODHQihUGsLAKte+a2a0KA
         nLkA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=T1l/0FdXfGXf0fMFWkE2fSOQcz7K+0sGLvaNN5NYuVI=;
        b=ZjUVsq702tmgi7re40Xa13fVxnj3tyofJalyQPa2spV1Bb6jo5Fo48bypZju9zIfhH
         wStgakb40ik1J8hNMOO4KnkhAELPS7Xx6DEWjV8iQpbA1WV4EImPVuz1P5Enu+saC9Az
         2jeWCQDcIgu9+Qug4b/rjhsRetaaxmPXzR2GQXd000rciEp14K7Uup1aO1qda15FN/r3
         t/HxVeRev3aKJQnoYzrbse9ZfzQya5c9cZhDQDDO5Qnd7nCvtH/1dT4xXqGEQwmaKxq7
         croHz5nBdMLhqMSCuM+2guPowrVyT/W/zoKA0dG4KlfYC+D1Pd4XVZZrifgNE9P1H2LT
         9q+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=T1l/0FdXfGXf0fMFWkE2fSOQcz7K+0sGLvaNN5NYuVI=;
        b=YeJuml2ao0onRto4lFuQxjTtdYd4isKl3fQWLzfyIJ08YKWoeEM9PVAzKduh9LHVM9
         3bpOPIb8ZE0iZAr38IVwWiHgHeO6K4FX2Nv+HW3a8AyrlERSN3aisjQaEVb27fxHxLbU
         sfEPdPHS5hlxfUaUtFIyv2Un7X9Vvhlwig7GfkPT80jDR/8euJTM7pzQnPkVsySItFhX
         l8KTnoGQB9lEu7K/poVsmyYkY8MsouCiihh6oRJPTJjU13//q0W2BbuU1/SWt52doSbZ
         OtmMI+Br4+XLYrH2/Am8CSJ5kdhFI7J6HSu/Mx/zFkoLJCvuqZFzOAYFpIhURHh0yFS0
         uuMg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXPdrhDNoQq87WpQryY+eLOrGtx3LAXiWMIGhHH/jS+KtIoSI6b
	2j3JEMZYRENRBjGEIpt3G/k=
X-Google-Smtp-Source: APXvYqy3HgJLquxv5FTyJc3Zn2Hxf3/KSWKfrBC+qHl/msN/V1DTiXZlrUu35hrFE3jld5RoVICLsg==
X-Received: by 2002:a05:600c:2192:: with SMTP id e18mr4560943wme.83.1565537035956;
        Sun, 11 Aug 2019 08:23:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:ec43:: with SMTP id w3ls2896732wrn.14.gmail; Sun, 11 Aug
 2019 08:23:55 -0700 (PDT)
X-Received: by 2002:adf:f481:: with SMTP id l1mr30072550wro.123.1565537035510;
        Sun, 11 Aug 2019 08:23:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565537035; cv=none;
        d=google.com; s=arc-20160816;
        b=0xxBNtEcTP06KEL/QezCxKim81IUgJCv9mpioE/345+2BABbcv8lBDA6aa/0DT8FCR
         RVi1dSQ81ZRAgm5bbFgN3HTZzwrmS8IYEtNhjnRN9J5xmLG/QMAALTDk5h/KBq65xdx8
         O02Fz3SqBJuoFmehVIoOXZSZ5CHnqq2sCM95ou2XxBZ/+7RzBvhmroqAkCl3/L9ZoPe7
         nJ84wIEa2IrO/zJ9p0C8n+yZUKp5mF5jE/I7cDBoTQVJ5g/4CopacJQA3pGKFceH9xY+
         JDzvw0x1LbqLZ1gd9j3KwBV+JEk7cx4uC7tZcLQkVay1Sk50arxis4yRruGbMj/csv+y
         8Srg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=OnhJfU5Y4IWdXXV/f31kXlBTL4ui8I+lZ7bmXZptf0s=;
        b=kPmvr2d7lpbhL0T+zRxBclWxJvToXPBbauC9gUOSwkPyPhGjP88UW5sY7H7BqXF7FL
         h2awQzuKA+y5Se9s7dCPZtGn4n3/UPxsK0C6R2rRc24ZVA3u1Z+aNpveFMWf5O9Bj8Cr
         00EYGeOnWs7IE8qW9nXS+kNhnaupEF5e/qts3f9Pa+7k8cQFFpKGs5EKhJ39GPDx7yuQ
         GQ4ClJPUkJgtwsCQnlV4aFb3RFjn49twMKg9vS4HsY3yY9f5j1gDy8u0kN0M8gNrOXE6
         1hvo0UyrhSexBFc25qxDxKKDxINeNo6RqTaYKblMyHvx+01DxPnP4sssSgp3AKCzD4Bx
         T5uA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eloZLUZY;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id f13si654280wmc.3.2019.08.11.08.23.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Sun, 11 Aug 2019 08:23:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Received: by mail-wm1-x341.google.com with SMTP id e8so8981782wme.1
        for <clang-built-linux@googlegroups.com>; Sun, 11 Aug 2019 08:23:55 -0700 (PDT)
X-Received: by 2002:a1c:a00e:: with SMTP id j14mr22559759wme.141.1565537034812;
        Sun, 11 Aug 2019 08:23:54 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id s2sm9725128wmj.33.2019.08.11.08.23.53
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Sun, 11 Aug 2019 08:23:54 -0700 (PDT)
Date: Sun, 11 Aug 2019 08:23:52 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild@01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [pm:xps13-9380-20190807 9/11] ERROR: "pcie_aspm_enabled"
 [drivers/nvme/host/nvme.ko] undefined!
Message-ID: <20190811152352.GA78637@archlinux-threadripper>
References: <201908112153.rYSTkN61%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201908112153.rYSTkN61%lkp@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=eloZLUZY;       spf=pass
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

On Sun, Aug 11, 2019 at 09:04:56PM +0800, kbuild test robot wrote:
> CC: kbuild-all@01.org
> CC: linux-acpi@vger.kernel.org
> CC: devel@acpica.org
> CC: linux-pm@vger.kernel.org
> TO: "Rafael J. Wysocki" <rjw@rjwysocki.net>
> 
> tree:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/rafael/linux-pm.git xps13-9380-20190807
> head:   23cd54587772e6ff6d98914fd0905c8e925494fd
> commit: 7c89bd8eda40bd6d94958956e0228dfcf9fe60c6 [9/11] nvme-pci: Use PCI bus-level PM if ASPM is disabled
> config: arm64-defconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout 7c89bd8eda40bd6d94958956e0228dfcf9fe60c6
>         # save the attached .config to linux build tree
>         make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
> >> ERROR: "pcie_aspm_enabled" [drivers/nvme/host/nvme.ko] undefined!
> 
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Center
> https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
> 

Already reported with GCC:

https://lists.01.org/pipermail/kbuild-all/2019-August/062986.html

Should be fixed:

https://kernel.googlesource.com/pub/scm/linux/kernel/git/rafael/linux-pm.git/+/669bb99afdff7f6255f217202b153b63b75a5723

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190811152352.GA78637%40archlinux-threadripper.
