Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBB6Q33WAKGQE7ALFU4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id ED6D0CC409
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Oct 2019 22:13:59 +0200 (CEST)
Received: by mail-wr1-x439.google.com with SMTP id q10sf3187223wro.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 04 Oct 2019 13:13:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570220039; cv=pass;
        d=google.com; s=arc-20160816;
        b=l0CjOqRsI+GXJz8ieQgkghlPthhzte+ky5hN0VQjkbQ9LZqCHkGYZy5fBno/JkASOR
         QAE5RTkn0ZKsMeCfNoC0JXJLb9e4pESWumRJ3X/1nkcaZQcTxNpMzsrSHWqM3aY0YiPb
         GOqxM7QkkqsRSU/X+snnM2fJCvYMCHVshBMi0k3/dbjx7+S5IJEV78zkPIoVL5D6HaQ1
         J6VYY3wQgQG0c1q4ODtOlFSN9ZuSs/JCiD/UFzAEfErQG2Nd+cFscHl7BrBnwLgliiKx
         nAxROxOx2fBvHhbc/Q3IumPVUn9A8AXCieOt4lppKG8QD2R4Yv5ghsXJ8AOTX1nKFl6r
         zQYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=DJfiH8kiF8S/L10ZYeLNw59YPi7j2m76dNiOEhiny14=;
        b=Mq7y2fp3+zb4IAac6wZPjbFeSNNfjgEm/NzoJbXIf/PzX1i7SGEU2+fpqI7hFmj/Uk
         VRY2HuHw/nz1ke3wQ/8ivFR8DDMt7/VxARYZCIy4Lvidbg/Y3XiymF1go8teCVT8gc80
         fqVM1szWAEqk84eo9mHCSfuyhJa3/lG0k0KmKv8vYZylSgYvg8iB2nsJa1ZUGP/GR0zE
         AsU1UgcsQvgCI5XnB7tH+INoXHS/J+sL+oI95apUzHZjGiG6hh1oPwtB36l3aV6DuMIJ
         y74h50g+uewNvV/FAoONivSxFiZZLMrohEZKg0fYU1kcES9fniBB57yZcsOICskq5mel
         BWvw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fe3CUszr;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DJfiH8kiF8S/L10ZYeLNw59YPi7j2m76dNiOEhiny14=;
        b=Hk41qqKYSQTKe0Va1ePgysQV8VBTu9oMPLhmSPtN3s6K+rcid6CN5L4P3Tiz6MtyHA
         RluVDmdvCRGkgr7rHPP79h2Y6jho6jONQO3RF8EqXbdRnRooCJsJhpgYVy3SOkImSQXG
         TbNxMBd4KHRU8/TRTBES2SRHNXA5Ecb9ZgaqDQgEmNVg3guyNZAixo6oKrFwgbBjuBcU
         zoHU8OMbR01ieOroW5TSNvnFeIlVp6MlcVEtdtKvWLNWrDgMQCBu0Pe9a9GjkXT+v90q
         NLcXhwXt3pChUbC583dnssZ0La+Ftybkcz/YufXmYBsSHYto08p6iZ5G0oIRiZsrf5VA
         WbGg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DJfiH8kiF8S/L10ZYeLNw59YPi7j2m76dNiOEhiny14=;
        b=evEngapjfCgOWNhPgnE6jM3HHmfLzXUbcplaE7bl31eVwJ8ce1daeWzr6sI+su6y/g
         6pss2IQNCbCOUrNA2ImvEGRh2I0CMMv2EefzlmUj9/qLbJLQ2TuNi+PgimRKMgpIlfXH
         9ONwUrrhDHH5HVBNrZhX0irBB4fTGzfqoduq3GlLkbNMPKdQ6zVAesVeOvjbVnVzpaNH
         Wh2lA6yXKxE3O/M+sEOeMrFNWNUSPPhKzW0wOV2AIyQ6WuMCPk01ZhsGr5yfb/RKXVvb
         Je04SrpblOdYANzGJkAQofNEy6DbBMMiYP/sUfawotblq8ty9kAqBtM93WYaRHZnQTqC
         HxlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=DJfiH8kiF8S/L10ZYeLNw59YPi7j2m76dNiOEhiny14=;
        b=hLrILUuHtodHx+SCVeBQqPPf44VpkICf08w7EQr1y3cEyEi3PTE3QvQrE3Wi9ht/yM
         EpZ0Na0NH850ZgXv4llHOTmt6L9rtZUb1HRqZWh0m/KjMA1hlv+jpJ5Xgl63Np3RWbpf
         qj1cOxcY4vjpMIi9vrVVbQlPb0htwvUyqFgnQdOWLgEultQBURcBKSVU8+rhTZrBtlmD
         KMBureAgDjZeRjHFqAF+fN1maaTe1qJukpqPTYTvHqdvJvqW0WuEY7zu3mFJrcEuLVGZ
         ubuvLhFIKLWmQV9FexdZssj79dK1oEhKGfW7dlxrTRvthz5bHfuxpM9Z4UWF+3SKnPbX
         Sfng==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXVYkbva7GST7rhWZw0h03vk5XECYa6mWnIglWlHhqEp1VHfXgL
	AXH7hbxbuNv2YWznlxzXTl8=
X-Google-Smtp-Source: APXvYqxKCXfIxcDtF9Fpuum4luA8o16axsWB3MS0iW7Tm9Yn2/QcE+9PRTwMYqFAWZVTBna9a7PpTw==
X-Received: by 2002:adf:f34c:: with SMTP id e12mr13288222wrp.320.1570220039629;
        Fri, 04 Oct 2019 13:13:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:9d8c:: with SMTP id p12ls3173631wre.1.gmail; Fri, 04 Oct
 2019 13:13:59 -0700 (PDT)
X-Received: by 2002:a5d:4a09:: with SMTP id m9mr13122399wrq.93.1570220039005;
        Fri, 04 Oct 2019 13:13:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570220039; cv=none;
        d=google.com; s=arc-20160816;
        b=tj0U9lJHjinjRyG0giR0Z/DKQK/IV0cxZn8ts9Od13T0ksXMSUhA5YRmskRVm1qXuQ
         j6MiePcCB1ao3xKnRsD/empzTNBKWdm+N2PwS55oTrS1xIz0/UK3OqiydTd1XspYFPJN
         EcQquE8wvoDSIM7Po9i2rO0ir/whblBEt8mRkpMsVEB+3xXhjaFmm6vvF7ksd7bVE28p
         w8mSbuFAulW13e54PJiGztYR64POE+SwA7vDVocjREuTy1upgbxKpLe8Ou5fxfvWfW5o
         SUuPzoqV2E9Dfpe808mOkdhjYdGvoSsdKZ5NHa5tamhKePa550UqsuE6prEYn91Esc9p
         1NWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=AClpPP5Ygp9m5t2rGd7TdW9O2PMVufRoRyuqqBat2Uk=;
        b=DRR6kOzJMy3j1enkjpyABmGboIADMlQGJk+k/XYrVDGX5zWoKgT+u4+t7xJHf5aJ28
         Q6oU34AATCgopsQNlrFreF6ljOKqV2KNOMv1bErvH7XZa/Zj6PglmDeMhDU9nccEmZnu
         Er86xFKE7EnvcLkEUM3x9qFjrWbna83izmgVrNKMXedrbcIutir4sbzJZYdUVEL/rvZg
         50kS4ZdTgGhEeEj2r69d9fI8A9qxNe+Bljsk8EAYXTPRWBJmH1ly9EBb5UtU5xVhlnz0
         FDzCfiJglVvB1+9RNa+R9/EEgwaqAOvpscsWpP9mhpMmybahieMPoSF0zGpUvK2Ry/+7
         YGAg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fe3CUszr;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id r1si392738wrn.2.2019.10.04.13.13.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Oct 2019 13:13:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Received: by mail-wm1-x344.google.com with SMTP id a6so6974381wma.5
        for <clang-built-linux@googlegroups.com>; Fri, 04 Oct 2019 13:13:58 -0700 (PDT)
X-Received: by 2002:a1c:c91a:: with SMTP id f26mr6831603wmb.85.1570220038480;
        Fri, 04 Oct 2019 13:13:58 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id a204sm12164541wmh.21.2019.10.04.13.13.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Oct 2019 13:13:57 -0700 (PDT)
Date: Fri, 4 Oct 2019 13:13:56 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild@01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH 2/2] gpio: Add xgs-iproc driver
Message-ID: <20191004201356.GA1481487@archlinux-threadripper>
References: <201910041217.SRJGEvfb%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201910041217.SRJGEvfb%lkp@intel.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=fe3CUszr;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Fri, Oct 04, 2019 at 12:13:55PM +0800, kbuild test robot wrote:
> CC: kbuild-all@01.org
> In-Reply-To: <20191004012525.26647-3-chris.packham@alliedtelesis.co.nz>
> References: <20191004012525.26647-3-chris.packham@alliedtelesis.co.nz>
> TO: Chris Packham <chris.packham@alliedtelesis.co.nz>
> CC: linus.walleij@linaro.org, bgolaszewski@baylibre.com, robh+dt@kernel.org, mark.rutland@arm.com, rjui@broadcom.com, sbranden@broadcom.com, bcm-kernel-feedback-list@broadcom.com, f.fainelli@gmail.com, richard.laing@alliedtelesis.co.nz
> CC: linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, Chris Packham <chris.packham@alliedtelesis.co.nz>
> 
> Hi Chris,
> 
> Thank you for the patch! Perhaps something to improve:
> 
> [auto build test WARNING on gpio/for-next]
> [cannot apply to v5.4-rc1 next-20191003]
> [if your patch is applied to the wrong git tree, please drop us a note to help
> improve the system. BTW, we also suggest to use '--base' option to specify the
> base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
> 
> url:    https://github.com/0day-ci/linux/commits/Chris-Packham/gpio-brcm-XGS-iProc-GPIO-driver/20191004-093320
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-gpio.git for-next
> config: arm64-defconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 288079aafdbde5d408db86a697ee5b19a0902f1d)
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
> >> WARNING: vmlinux.o(.data+0x827c8): Section mismatch in reference from the variable bcm_iproc_gpio_driver to the variable .init.rodata:bcm_iproc_gpio_of_match
>    The variable bcm_iproc_gpio_driver references
>    the variable __initconst bcm_iproc_gpio_of_match
>    If the reference is valid then annotate the
>    variable with or __refdata (see linux/init.h) or name the variable:
>    
> 
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Center
> https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
> 

Also reported with GCC:

https://lore.kernel.org/lkml/201910041155.jvjq6Kc7%25lkp@intel.com/

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191004201356.GA1481487%40archlinux-threadripper.
