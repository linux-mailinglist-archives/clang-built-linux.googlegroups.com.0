Return-Path: <clang-built-linux+bncBDUIPVEV74KRB7F2VCBAMGQEXK6QGXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x340.google.com (mail-wm1-x340.google.com [IPv6:2a00:1450:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A177337427
	for <lists+clang-built-linux@lfdr.de>; Thu, 11 Mar 2021 14:39:09 +0100 (CET)
Received: by mail-wm1-x340.google.com with SMTP id c9sf1549936wme.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 11 Mar 2021 05:39:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615469949; cv=pass;
        d=google.com; s=arc-20160816;
        b=rVbvawraa9++UQjPHjRFI8pLEzVCFP87eU5dK2NjDcCJQF7+EFrm8GJBRGYJreN2Yd
         NpSigWkAH0ZoVXUa2BBvllAQOORZGutM+ez9FyhkCm86yCJdDEocVUUVTMejigJuyuSV
         AKiwfca4kvAjQOQz1vTp6Y1MMOD2gx+aMylNC3mesvnHP6dPT5CK4J8AOXTV58Nt3h+p
         qOvu9Y0Z1WPIJh9lGYFSTh2DbvY6T3kr6WSpPtI4sh9plF833kGIs9dpLNBWED54Pdm3
         NwmtulSWvlKtt9gVpxQmYUh4DfxQ8k5L9Z0i7U4Eaj36hA1VnMFO2v9kN3cE/M2UKPJV
         6wDQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature:dkim-signature;
        bh=v0hOIJuE7B5el3yX93ALteKve14f6nELNQ6GrtcMUaE=;
        b=WzFzdZ1oOPnjO+NzxbZeyXavYt6AapQV5s4UBbmVIRClyNttCkhk0+kz+AumSI/csy
         7Mub+9agBuP+M38EyQoi4H/INj72X31UsulaZScU6PRuMCupGyMFm6cYTDceA+CssXPA
         tifW9IePFBOxIjwvnNIJDzhbe/4QMTO07rztEnrh+M03dAXEEAMjVTIOGdTV0BFgwd81
         rVjjzevA7A8QosQFhL1r8LxHqpI0IZqttXvCI+Og7vXJcgN2VZ9iuwC5leAAUTLmpkXQ
         hiCYNdKwEgcOVzxXxzUAvW2yCxKjcbZUfACahKMHE/SN3tZBS/JSPboD+jdtKUFzjMjk
         u3sQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OGoMc3qn;
       spf=pass (google.com: domain of luzmaximilian@gmail.com designates 2a00:1450:4864:20::430 as permitted sender) smtp.mailfrom=luzmaximilian@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=v0hOIJuE7B5el3yX93ALteKve14f6nELNQ6GrtcMUaE=;
        b=sDT/Mb/H9l+sy9opwthwJscHmkEcicJjakfT8hSzEMsVgaSzARhkLOaIlklBPMCaZ3
         zrIc9ZnacBau8eKsCsJv/mD0qKsarVEL/aTCz39yUAXOdWrr6A3k3gexIyPVGe2ObWNk
         4EliW55qec1vjWx3JMYkEZDeajocCuHGzORFEEAvx9UwfHAYVmS0EJ0J3mNLr7t/yKuz
         GXAeorSSiRHS1FQg+TaVR0N5AW9YfBGz66fFy2eX3RkFMLFTzbm6QGHW0rf6oFkECnQc
         gRrB863QtemolcpRZVmqXMJ9bEdDDnaUppTAonOfTkTosAvzsBX2nkl9BlPfUJo0v0fB
         1QgQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=v0hOIJuE7B5el3yX93ALteKve14f6nELNQ6GrtcMUaE=;
        b=VpLtMiTU5r+YTXEEPuVkt5PJMHAGMsC9ufVk+k1GmMrn0jfbaon5NrsoebLQ6iImVM
         fd4wsAxHWhxCwH8pYZ7FOc2Tp+KcmnCsr2VDhIgVaClSlI7CDPV/cSkUsGoKWS7AKUxp
         dsoLzKrhiHdfMuKdMsIuo5v9t0+EXNow4DEH4XeB7O3v7vCKfP717YTAOC6Ndhl/gkv5
         pUl8zVYDmleW6BZn7N98XumrOiVHk67/YfX9PGpDOaHmzZ2zLe0BJI1wUbeExJ+kgTsm
         IOf+WCe145ajvU5A33BbMu+oZ3ZhZqJxRPVxy+SK0XrPnhGm7qN5uxPf3bk6KeJWt0nQ
         6JcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=v0hOIJuE7B5el3yX93ALteKve14f6nELNQ6GrtcMUaE=;
        b=PHIQ1hR2KcFyZxc9uLcVJAL76Qpc3FwRIAamoTVIqOovFRoE9eLdLe4tiwPqC5W+gD
         SzKg9rPde4rXoEyHDx4h92r1y+zyVTuR+FU8Cftpq2qdQvWkzjqueObVlJbBUvDfvaa2
         m6WimgF0PSyM0tK6pifNLvL3oiB7eGufPHbp4Uwfy3tMbtyvmxDLQT2d9tO1UgjeMi5J
         vSPDn6Flp54atCN7YAhzGgipeJBpF9vAEYvEeo1+oQe++bOG6+iVlQOYX3RIpQmm4Pmr
         +uLAZtVYALke6nH4HtssLfUi1SPRNSxhvtUwTzgTj3EfPWDvJHWnHU9RCRzeq0gEddk1
         e+RQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5330gWD1jH9kPXW9rau1ChJSgta0sMIkuU5AkVJitf+ERePkkS2q
	q/KCPZ571yyu0kcyrrmpxjg=
X-Google-Smtp-Source: ABdhPJzo2t77lF4/RkTcskhILAwZ4SBXqMlzv8AymYemvH5u3fNpd9tKfws1ienNMUAKDJZ9JaGstg==
X-Received: by 2002:a1c:e084:: with SMTP id x126mr8361330wmg.37.1615469948893;
        Thu, 11 Mar 2021 05:39:08 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:bd84:: with SMTP id n126ls2893388wmf.2.canary-gmail;
 Thu, 11 Mar 2021 05:39:08 -0800 (PST)
X-Received: by 2002:a1c:32ca:: with SMTP id y193mr8254656wmy.56.1615469948039;
        Thu, 11 Mar 2021 05:39:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615469948; cv=none;
        d=google.com; s=arc-20160816;
        b=Z+cbFcJE4Bz+kQmwnbRSsK8DrGrwZC88D4ZpB3CHivHyT1Wbln4BqqIw6tWKNyGaea
         eonKnz5PkVaZxUbo4qhFG57hhzxvMhqFqGv6OJqa4Mc2EmHzzEuJR2bUZta64t1IdOdg
         d6yEforKrGJkN9ilWLoSejx39DdmGmiyh9BEzQVrT75B57raFRzNhDjv0t+Ib5wVAvRT
         ucTz4x2QHeGiYvNgtnPXIsoSsvzrztWKzMgzIrTPo12JCaKPEz9KGDaf4uNy1wmNfxWI
         H25No+4wfKNDEwz9Vu8eRtxep8+RD/k82Pl1gEO4QbN481oFln3rcaRR3Yl94mOaAqAF
         HCwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=3aBSqhOa/RrVtCl7+qmV29JSn7bXYesRgGx4dSYwJ+U=;
        b=lecekMgRwuhCW3mGkpSgBj8GB85Wo1NqhveeSgaxyQNJ5LLAhE5zOAZU1I/KyVY8Op
         FkAuxuFjSK/wGqcSMXKuhNOnjC0C6lRwdTge37d4Vylg2AmnFYRWuipNoBZeAhm6lnEL
         ZVifnTQTmpR4tKhQBCJQjdQ5BZDX11n5e9mmAGC6501tlZAIh1pCK4P9VdwgpBLEYhOJ
         kBbb/oNKD9En622wESO+w5GZrnfyIRwoX/O9hDnfG7fKse7M8IHxVe0C36NDhO7yrtsT
         oygBWYbK4CghZqBq4yyl/JUBaw38fDf/LqG+wrv2G7LViQH+oQ3My3tKIPJCW9Ef0ExX
         6tQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OGoMc3qn;
       spf=pass (google.com: domain of luzmaximilian@gmail.com designates 2a00:1450:4864:20::430 as permitted sender) smtp.mailfrom=luzmaximilian@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com. [2a00:1450:4864:20::430])
        by gmr-mx.google.com with ESMTPS id i22si131798wml.2.2021.03.11.05.39.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Mar 2021 05:39:08 -0800 (PST)
Received-SPF: pass (google.com: domain of luzmaximilian@gmail.com designates 2a00:1450:4864:20::430 as permitted sender) client-ip=2a00:1450:4864:20::430;
Received: by mail-wr1-x430.google.com with SMTP id b18so1903650wrn.6
        for <clang-built-linux@googlegroups.com>; Thu, 11 Mar 2021 05:39:08 -0800 (PST)
X-Received: by 2002:adf:c641:: with SMTP id u1mr8847471wrg.332.1615469947681;
        Thu, 11 Mar 2021 05:39:07 -0800 (PST)
Received: from [192.168.2.202] (pd9e5ac74.dip0.t-ipconnect.de. [217.229.172.116])
        by smtp.gmail.com with ESMTPSA id l15sm3835547wme.43.2021.03.11.05.39.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Mar 2021 05:39:07 -0800 (PST)
Subject: Re: [linux-next:master 1430/3917]
 drivers/platform/surface/surface_aggregator_registry.c:398:25: warning:
 implicit conversion from 'int' to '__u8' (aka 'unsigned char') changes value
 from 65535 to 255
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 Linux Memory Management List <linux-mm@kvack.org>,
 Hans de Goede <hdegoede@redhat.com>
References: <202103112158.loq4oyJu-lkp@intel.com>
From: Maximilian Luz <luzmaximilian@gmail.com>
Message-ID: <8c252429-5000-0649-c49f-8225d911241b@gmail.com>
Date: Thu, 11 Mar 2021 14:39:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <202103112158.loq4oyJu-lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: luzmaximilian@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=OGoMc3qn;       spf=pass
 (google.com: domain of luzmaximilian@gmail.com designates 2a00:1450:4864:20::430
 as permitted sender) smtp.mailfrom=luzmaximilian@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On 3/11/21 2:06 PM, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   98546348153dee5f8ced572fd6c4690461d20f51
> commit: 797e78564634275ed4fe6b3f586c4b96eb1d86bc [1430/3917] platform/surface: aggregator_registry: Add base device hub
> config: arm64-randconfig-r026-20210311 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 574a9dabc63ba1e7a04c08d4bde2eacd61b44ce1)
> reproduce (this is a W=1 build):
>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>          chmod +x ~/bin/make.cross
>          # install arm64 cross compiling tool for clang build
>          # apt-get install binutils-aarch64-linux-gnu
>          # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=797e78564634275ed4fe6b3f586c4b96eb1d86bc
>          git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
>          git fetch --no-tags linux-next master
>          git checkout 797e78564634275ed4fe6b3f586c4b96eb1d86bc
>          # save the attached .config to linux build tree
>          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
>     In file included from drivers/platform/surface/surface_aggregator_registry.c:12:
>     In file included from include/linux/acpi.h:35:
>     In file included from include/acpi/acpi_io.h:7:
>     In file included from arch/arm64/include/asm/acpi.h:12:
>     include/linux/efi.h:1093:34: warning: passing 1-byte aligned argument to 4-byte aligned parameter 2 of 'get_var' may result in an unaligned pointer access [-Walign-mismatch]
>             status = get_var(L"SecureBoot", &EFI_GLOBAL_VARIABLE_GUID, NULL, &size,
>                                             ^
>     include/linux/efi.h:1101:24: warning: passing 1-byte aligned argument to 4-byte aligned parameter 2 of 'get_var' may result in an unaligned pointer access [-Walign-mismatch]
>             get_var(L"SetupMode", &EFI_GLOBAL_VARIABLE_GUID, NULL, &size, &setupmode);
>                                   ^
> >> drivers/platform/surface/surface_aggregator_registry.c:398:25: warning: implicit conversion from 'int' to '__u8' (aka 'unsigned char') changes value from 65535 to 255 [-Wconstant-conversion]
>             { SSAM_VDEV(HUB, 0x02, SSAM_ANY_IID, 0x00) },
>             ~                      ^~~~~~~~~~~~

This is a false positive:

>     include/linux/surface_aggregator/device.h:71:23: note: expanded from macro 'SSAM_ANY_IID'
>     #define SSAM_ANY_IID            0xffff
>                                     ^~~~~~

Here, clang complains that the input is SSAM_ANY_ID. That is a special
value which has special considerations below. The SSAM_DEVICE() and
thus SSAM_VDEV() macros are intended to only allow either __u8 or
SSAM_ANY_ID as input in this place.

>     include/linux/surface_aggregator/device.h:126:63: note: expanded from macro 'SSAM_VDEV'
>             SSAM_DEVICE(SSAM_DOMAIN_VIRTUAL, SSAM_VIRTUAL_TC_##cat, tid, iid, fun)
>                                                                          ^~~
>     include/linux/surface_aggregator/device.h:102:41: note: expanded from macro 'SSAM_DEVICE'
>             .instance = ((iid) != SSAM_ANY_IID) ? (iid) : 0,                        \
>                                                    ^~~

Here is the special handling for SSAM_ANY_ID. So there is an implicit
conversion from iid, which may be __u8, to int (i.e. the type of
SSAM_ANY_ID), but there is at no point any implicit conversion of
SSAM_ANY_ID to __u8, as clang alleges.

Is there any way to silence this warning in particular without
suppressing it (e.g. by explicit casting) when users of this macro
_actually_ input any non-u8 and non-SSAM_ANY_ID value as iid,
leading to an _actual_ implicit value-changing cast?

I believe GCC does get this right and only emits a warning if a
non-u8 _and_ non-SSAM_ANY_ID value is input.

Regards,
Max

>     3 warnings generated.
> 
> 
> vim +398 drivers/platform/surface/surface_aggregator_registry.c
> 
>     396	
>     397	static const struct ssam_device_id ssam_base_hub_match[] = {
>   > 398		{ SSAM_VDEV(HUB, 0x02, SSAM_ANY_IID, 0x00) },
>     399		{ },
>     400	};
>     401	
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/8c252429-5000-0649-c49f-8225d911241b%40gmail.com.
