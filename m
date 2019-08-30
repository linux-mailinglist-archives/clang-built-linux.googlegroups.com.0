Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBFU2UXVQKGQEQOME7OQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53d.google.com (mail-ed1-x53d.google.com [IPv6:2a00:1450:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id C0629A3BD8
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Aug 2019 18:21:42 +0200 (CEST)
Received: by mail-ed1-x53d.google.com with SMTP id y66sf1366602ede.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Aug 2019 09:21:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567182102; cv=pass;
        d=google.com; s=arc-20160816;
        b=YA7CVNmHC0lzwQXpVe5wADw1N3wRCn8Br5O+IPoZM8lUoNIBCKE6dD5zowYSF8Y3ZK
         Mb4vcCvwwlL4Bt2CwdmQKJlza0um1y2up5VaNMsf/6Dw5TUVt7+lbzb4vZfbxGrV36TS
         lYQK1PIXt848PyTrsHq6Nf3IGJnDyQokOkMJvzlK2+UbERuNVgsQbeFRH+uewJp67t0z
         KxE+ZkYAVEleDUO7t9xmKlO7Jee/wms23Y8rDTVl3fLfVeFtHU/YbK9wd+sQeeeX12d4
         VfLelOA78RggTh7J7gBqpqfKl3TuE3sgED7SontiBl7a3aCbLab+RgC8HSjCfN+2bIqf
         ql5A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=ReuisXK8Da3e/IyRjLjweU4OAuvG+0s6L2NFd/Yk7rc=;
        b=TgTH9ikcWzlC2L5HhwZZjngMUoxKlupYL5j2miy5jh6j318NVW7ByaRxDyWqD2Vp/I
         oy2zFATMx+Z8HkBCCdF7drkIZWo8LvovYhcMSWpOd8pOjIDXfo3sItfDweWshNN+xZfh
         +bDIY064QKw3dzRdIvO3f4lkr7kRkJ8vjkgRC5RMppR37kxht/19VP7b35wkBNmf6Uqi
         M3Hx+HD62Kevv2e+1qpJPcHdA0LWZV5+TwLiJpUVY+MtpMvfaOTgZ2L37eH857JphKyp
         EqsLUog89IMA1uoBmq0aLkE0zAOsFa1xp1CCBezCUSTjGRA7f3dd2KaLjQ5UM4lLMxyk
         0LjA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GaYlMoWl;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ReuisXK8Da3e/IyRjLjweU4OAuvG+0s6L2NFd/Yk7rc=;
        b=ndV60bB6XyD/HJ7HkKtzW19iSD4/HN1Hvg1cKeXNUmGhA7H743LRiStDk3tIiCGmKS
         YSnnrnuXHtqrPPXX++h9xMGDcWTdce+iAQb72wOQKsbegyIKpu+0qT5meU7bO38X6W+M
         prmRwWbdFAUoBBButHCms6rQ9j77DuA/EZkOXyiGV8s2irb8e9ou7Ul6iKuG8vVWKK/U
         JR6Ckl3epWCkEBqLjvIe5f6gC5lOuWhGd4/BHY/8HtrVpyELchlDRXZloc/SaXPgoWJ1
         ezcVvWbn+uD25JvxoILTRu277TtfQHxA1GRyHcuxPeMt2IriOPZEaqOb1aBO5G9QrhyN
         7Ifw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ReuisXK8Da3e/IyRjLjweU4OAuvG+0s6L2NFd/Yk7rc=;
        b=AMcPhMiZdBLuF0knSpwEhhFvDvWuPz5xMHcBSFACoO7nppbbFn7VXZUrwipcIkGOvq
         FN52rRJrb4b8qjKXZet+aqfF0h+6VbUeA6HeO6kbdH4bop3C7hIphJ6uoJ447cA8X+6k
         U7jCu2FEf1y1Fhiwtp5pycFQzKD82uHhDBaYST4ycUOOnYMrZISXGBKOzYIaRQvp0grU
         EIeCDp5qSBhp5edtsYs0StC8dk7vcdCczfMdOl7hfn5Oqyl6XEx0lU7CemsHKup3TlFw
         xPLhlhIEkU0CM+R52uqPKoyrlfv6p/dujzaCiLSzYizUU5YO2hcyxT6TZE+crEhvkHkS
         6JvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ReuisXK8Da3e/IyRjLjweU4OAuvG+0s6L2NFd/Yk7rc=;
        b=liuJZnHzGBXBrkx+U96Fv0OU+7+N14R3uMAE+feIX9wDRu4vvudA+H29K7cehfzKRP
         3V7GKgJPb/4e22uDwrYVf2xy6/GvHMU0mVra2aAmcrzZU1CAiHHCb/gDxyQMuKENbhgu
         vOC8LbA56YZg419yIiN0zeMt0EXoJr1TFBmylvaXzxTizsOMkrryCQVpdeA6d81/CFWx
         6YSMu4vfjGciyKSoI3cR5s6VpcohaUXx2dafBb6qqnHlccBsNlsTAR9kZtMKixW8ne3q
         xuKsFYZyGoJDxAICpTZOlPzlJIzaT/dP1F3bN7Op59LeByyQ9c/QTCZHPzkgxrZ/qebY
         xgMQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWEJHXVbxby+0+rQ3gJmWVT6M/0vENOprlOHXr7mXigBJFCq6rx
	uuIajRkVig+NAVFB8Q3VplE=
X-Google-Smtp-Source: APXvYqyXp2Bfz9aSFB/mlQPDkAv6iS1OuC5K0j+M600BmQwdDEaLQhBkQ94cAU9MJTutGoTh8T/giw==
X-Received: by 2002:a17:906:4b49:: with SMTP id j9mr7324350ejv.81.1567182102432;
        Fri, 30 Aug 2019 09:21:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:6a07:: with SMTP id o7ls1923486ejr.9.gmail; Fri, 30
 Aug 2019 09:21:42 -0700 (PDT)
X-Received: by 2002:a17:906:913:: with SMTP id i19mr8265042ejd.143.1567182101997;
        Fri, 30 Aug 2019 09:21:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567182101; cv=none;
        d=google.com; s=arc-20160816;
        b=FSJesiMxciYz/57wqCchFZsopGi+1u4vLLaENc3en6wbiJevpKU3VhbODF5Eg/f+Pl
         TdsEJnY2o+7GT00jkxziIPp2MEhwgq2vjOS7bQ47/+8GVIWXLLqBYQBSfu4Rxw8n13Mb
         RODYEArIs09FIMqT//NIc0M52Kaiidx3jZpbYbPtBR4Tdj6j7CJobL9G3/It4iFWMajB
         y9cCPJJzsaVKEnLZresavXlpWKs94dqv03t5vi4CXV1dooU69x3p0aEdvMAPJVSkdS3F
         FqsAA2KSYtafT7Q7P7gnlKVxG5PTey/Ualu4zS3VCrSBQmIfq6Mcb+J12Csm0BRZ62YG
         CMEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=kBsW47Vsdt0NBBp5D48wogRFwTF85YbPRl9ugiCL0fs=;
        b=lKRbqb39A5GybfVHsAz3WC00t7ESSWlkqiPc7BleSHEZWz8z/FKLjsPqv7qLJS2lVd
         vX1QT/JHj01ouazI8vw8EnE2o9W7cy6L2BW2UIlDbNJRtLOj2RaUpBAcbWLtJrTo+EfV
         SIIgCfJKjoBymBqC+mVVNA73sM33YAceSvQdmoRO77mRqYTxT7jxZn+Xuc2UyKB48jjB
         W/jhhyHOMh/L6nOcn9RdsXjm4FUX98PjPZ5MwKDZyno6Au9Jj1cy8Eeh2mo4rzIBpZvn
         k7MePqRJtoRsM4BBDDsE/yJ4JC7n1tsW5qTyeEDkmcC2FefFCdwn2Bn4l+PA2M6l0uGO
         f5kQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GaYlMoWl;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id f20si268684edx.1.2019.08.30.09.21.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Aug 2019 09:21:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Received: by mail-wr1-x441.google.com with SMTP id g7so7590572wrx.2
        for <clang-built-linux@googlegroups.com>; Fri, 30 Aug 2019 09:21:41 -0700 (PDT)
X-Received: by 2002:a5d:5612:: with SMTP id l18mr1641439wrv.177.1567182101511;
        Fri, 30 Aug 2019 09:21:41 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id u186sm13168391wmu.26.2019.08.30.09.21.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Aug 2019 09:21:40 -0700 (PDT)
Date: Fri, 30 Aug 2019 09:21:39 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild@01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] Add Support to use Resolving List
Message-ID: <20190830162139.GB34973@archlinux-threadripper>
References: <201908300357.wdIUBVhu%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201908300357.wdIUBVhu%lkp@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=GaYlMoWl;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Fri, Aug 30, 2019 at 03:31:04AM +0800, kbuild test robot wrote:
> CC: kbuild-all@01.org
> In-Reply-To: <1567063341-12330-1-git-send-email-spoorthix.k@intel.com>
> References: <1567063341-12330-1-git-send-email-spoorthix.k@intel.com>
> TO: spoorthix.k@intel.com
> CC: linux-bluetooth@vger.kernel.org, marcel@holtmann.org
> CC: marcel@holtmann.org
> 
> Hi,
> 
> Thank you for the patch! Perhaps something to improve:
> 
> [auto build test WARNING on linus/master]
> [cannot apply to v5.3-rc6 next-20190829]
> [if your patch is applied to the wrong git tree, please drop us a note to help improve the system]
> 
> url:    https://github.com/0day-ci/linux/commits/spoorthix-k-intel-com/Add-Support-to-use-Resolving-List/20190830-003531
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
> >> net/bluetooth/hci_request.c:735:1: warning: control reaches end of non-void function [-Wreturn-type]
>    }
>    ^
> >> net/bluetooth/hci_request.c:720:29: warning: variable 'params' is uninitialized when used here [-Wuninitialized]
>                            add_to_resolve_list(req, params);
>                                                     ^~~~~~
>    net/bluetooth/hci_request.c:694:32: note: initialize the variable 'params' to silence this warning
>            struct hci_conn_params *params;
>                                          ^
>                                           = NULL
>    2 warnings generated.

Should be fixed with the next version:

https://lore.kernel.org/linux-bluetooth/1567152832-873-1-git-send-email-spoorthix.k@intel.com/

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190830162139.GB34973%40archlinux-threadripper.
