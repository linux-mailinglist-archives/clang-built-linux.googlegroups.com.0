Return-Path: <clang-built-linux+bncBDWIJUMT74BRB3GY5GAAMGQEART43XA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3b.google.com (mail-vk1-xa3b.google.com [IPv6:2607:f8b0:4864:20::a3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2497230D63E
	for <lists+clang-built-linux@lfdr.de>; Wed,  3 Feb 2021 10:27:09 +0100 (CET)
Received: by mail-vk1-xa3b.google.com with SMTP id y84sf5380551vkd.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Feb 2021 01:27:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612344428; cv=pass;
        d=google.com; s=arc-20160816;
        b=SO6+MDUV39cmFm251VvZBFOXhmnoQ4EEd+awvarc2tckHZhrNFlhYTmUlxJksodjEW
         4N1pV67j3PjPLz7tzm8tOV8iyGR8h7Jn8WSVfW82Yjb4Fn42wPSJfSwcO7IfqZLT0TnH
         WilpwPVZjNFj8qZaXZRTie5uQ8A4O5SGirwIQV/eOTwtDZLt5chqzdyD0dtf6DM4Zc8Z
         xb046IjAKYONjSxCimEwKEI/ImKoMyInWdlWOVKLapxUw4VmQoqb+Y+IKyAAyRQY2pz+
         yHn6tA9QF1SWS1ivuB/RXC6sAVm3wqOS4Dg3rLEbW5YnkzdU8aXFb5L67W4IZNp2BQFl
         c2DQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:user-agent:references
         :in-reply-to:subject:cc:to:from:date:mime-version:sender
         :dkim-signature;
        bh=bTmFj1/GWZNmI4djWrf42Sc0TZef7c+R48fVz14+wFA=;
        b=ZLEMyP9bUSZEsXYJDTBC1Fo9Pn9SxEi/FgcPX0emDJvSODe2IbJ6bwBIlt1wNEFimI
         dUlNE5+yM7qfzrviyNdaGv9/z7HWVagMLKkfICd/8aA+/FXG4UWK9TLuVO+oxMvRY9H6
         iTwW8Go4Sh14LAHkX0wam/zaHmx9Uj5YsbLsm0g20JQBNFUxPmXsr2lpVn8peedj8F2o
         g4iDesfv29ibq8qx5zUh5JaBKz/z+aZQoaU5HLNytTsYeMmETm5TJHQXS37gdOO+LPM8
         zkVOPO6+XmVqzi+29w5veS69ld4vv6Qjyc9fAa/MT5khQ/vLgMmzW1X7i65Hmygcl6c5
         3YRw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of maz@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=maz@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:date:from:to:cc:subject:in-reply-to:references
         :user-agent:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bTmFj1/GWZNmI4djWrf42Sc0TZef7c+R48fVz14+wFA=;
        b=GQMd8NX1+wjsZJuK54DbPr2e0KZhC5oT7pNocGhiC6Uasbtg77mreGKii6tVMJQtxS
         zkHm/TcB8phNRFhP8TAdf3DqOYAXSD1kkTyXQnLGJwAwQtiFem8BHbsgCklkvbsOF5ke
         Wdmcx12vvkyyXqukVbqQZ50hara+JnBNvQj77dS/8ipzo5og2BHnOhibqFGY3TLcXbHV
         E0OdMwWN7ZoJDmWEnGvl98j3MK2CW7dh/EL2/Rw5JJBSh1W0EsCWJ5W3AzEtZ8FL+A0U
         0W1Hog95F/VesyPJ9NK13p7I7IgvyV2k07h6WHv+Tm81UZRmoo6ZM/5q+9eA4Jx4FPbC
         1tMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:date:from:to:cc:subject
         :in-reply-to:references:user-agent:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bTmFj1/GWZNmI4djWrf42Sc0TZef7c+R48fVz14+wFA=;
        b=HWWEW7p84L1D78V1urwR/AW1nOw4lIxpNJBAk6P606m6K/A2S1SjsBD6PIJxkbMY0E
         evO0A4DlHqhOtFn8NuxMK9Jkpbo8NIkDgrA5ww3J0+O2IT6Zulx/YXmA6zpDsyXL4n5Z
         e8//YAfDVhPRsHHAgAd+AltxT2J6aiQVDYDkd/0+RgRLN9+cj6BYL/C1wMlE4taOirxR
         qDznjgNRd0VKjwIfez6A1E0+1F7VjvFcmy6EOewyezOb2ZP7pZ0V4Synh0pOuacOXLu6
         0TMP9LegJqvU5na+NvEvzT/xxlH7ntYsEH6yVWePy4e/vf41HPAq8b/nKJiwe+w1Y0bs
         zl4w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531q/lCD5Fft6A3lsztURZzzHozL8qyBLOdUeDbuOu1FtHu88vR/
	c5dMF/ABD8u83HiDLdpcqRM=
X-Google-Smtp-Source: ABdhPJwqMTu2WVXy3AXVoiR+4z4cgRjlmCAeOwfU3E4ZxXHXZTcULMI03k0vdrQKYjohpaxKjmFrjQ==
X-Received: by 2002:a1f:a283:: with SMTP id l125mr1136860vke.19.1612344428158;
        Wed, 03 Feb 2021 01:27:08 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:c0c:: with SMTP id a12ls109939uak.0.gmail; Wed, 03 Feb
 2021 01:27:07 -0800 (PST)
X-Received: by 2002:ab0:32d8:: with SMTP id f24mr1273204uao.34.1612344427734;
        Wed, 03 Feb 2021 01:27:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612344427; cv=none;
        d=google.com; s=arc-20160816;
        b=rQmcDkpC8wUmqNxeT047qgGVeZbLkgHrFcXZKtheeDehocAQI/RLVKSlBT2s45DWDX
         LXWX+yTmCkHClZvCGd4+2eeiXx2rUfQ9XBgyZDIIGG/MxQWRFig8f3y0lZMemxJup2BJ
         5gxH82jon+raZhlhXJC4hiIIEQer+fjhe/1S2swRZIqepDEe7f0yQmVB5WC8FV5aBzKn
         ZgzJvMy1ITXgvtabZwDSh63k8zfcXk0K2/ImOpFxC9IAKkcgGE2zigg1/pBULa1hC4AP
         D3oNjgOunOZ8I5nWUDyRA5FKnploALhSJVNdziglxntvotf9QsfW/wWTRqInvvDEVdnm
         iyiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:user-agent:references:in-reply-to:subject:cc:to:from
         :date:content-transfer-encoding:mime-version;
        bh=dG1OcFyg0aEIb/SZA6d75Hk2eej24+d6WippCDwRINo=;
        b=oJtiQEUvuW7IOfgrBPMzQWKYCSsZxz4VAGx4ue66k2plPCUP1IJmnMFXpwLSfKennc
         9eW3Y0b+h4jk7LF6S0sEWnQLnOIu9JzDZBQzFMZnKktQM/1y05WbAnI/nL68SgZEl4KU
         lTmhMsxEoymPKVRCg6azXeT7ntP5VoV8xh9ADxIWv8IM9b/LOQprQuNFexQ7Xp3y+gzR
         bbY4DbUI9hQC3czcEX5Jq2g9iH06f6/+P1KGcVI7hKk/d6POUyTPO9s0eBDeUXOJMw+n
         CiqMbG9yNYob/r0tUX89xRuxB/KDsRSRL/zJZ0zHWGqToGKmfte9l/Ons/W5ZBB0YfRc
         vVuQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of maz@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=maz@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j25si96384vsq.2.2021.02.03.01.27.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Feb 2021 01:27:07 -0800 (PST)
Received-SPF: pass (google.com: domain of maz@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org [51.254.78.96])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 5C01064F6C;
	Wed,  3 Feb 2021 09:27:06 +0000 (UTC)
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
	by disco-boy.misterjones.org with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.94)
	(envelope-from <maz@kernel.org>)
	id 1l7ERE-00BiKt-6O; Wed, 03 Feb 2021 09:27:04 +0000
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Date: Wed, 03 Feb 2021 09:27:04 +0000
From: Marc Zyngier <maz@kernel.org>
To: kernel test robot <lkp@intel.com>
Cc: Will Deacon <will@kernel.org>, kbuild-all@lists.01.org,
 clang-built-linux@googlegroups.com, linux-arm-kernel@lists.infradead.org,
 Jianyong Wu <jianyong.wu@arm.com>
Subject: Re: [arm-platforms:kvm-arm64/ptp 1/7]
 drivers/firmware/smccc/kvm_guest.c:12:13: warning: no previous prototype for
 function 'kvm_init_hyp_services'
In-Reply-To: <202102030600.pWU6P0hf-lkp@intel.com>
References: <202102030600.pWU6P0hf-lkp@intel.com>
User-Agent: Roundcube Webmail/1.4.10
Message-ID: <c87d2ce394cdaabb0874d8614837c586@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: lkp@intel.com, will@kernel.org, kbuild-all@lists.01.org, clang-built-linux@googlegroups.com, linux-arm-kernel@lists.infradead.org, jianyong.wu@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org); SAEximRunCond expanded to false
X-Original-Sender: maz@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of maz@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=maz@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On 2021-02-02 22:55, kernel test robot wrote:
> tree:
> https://git.kernel.org/pub/scm/linux/kernel/git/maz/arm-platforms.git
> kvm-arm64/ptp
> head:   fecd9f021d3220b48d00597bd8e04e4fa6fd9dee
> commit: 0f90140a1f02cefb2ce98a94d7f01f5892b95fc2 [1/7] arm/arm64:
> Probe for the presence of KVM hypervisor
> config: arm64-randconfig-r032-20210202 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project
> 275c6af7d7f1ed63a03d05b4484413e447133269)
> reproduce (this is a W=1 build):
>         wget
> https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross
> -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm64 cross compiling tool for clang build
>         # apt-get install binutils-aarch64-linux-gnu
>         #
> https://git.kernel.org/pub/scm/linux/kernel/git/maz/arm-platforms.git/commit/?id=0f90140a1f02cefb2ce98a94d7f01f5892b95fc2
>         git remote add arm-platforms
> https://git.kernel.org/pub/scm/linux/kernel/git/maz/arm-platforms.git
>         git fetch --no-tags arm-platforms kvm-arm64/ptp
>         git checkout 0f90140a1f02cefb2ce98a94d7f01f5892b95fc2
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross 
> ARCH=arm64
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
>>> drivers/firmware/smccc/kvm_guest.c:12:13: warning: no previous 
>>> prototype for function 'kvm_init_hyp_services' [-Wmissing-prototypes]
>    void __init kvm_init_hyp_services(void)
>                ^
>    drivers/firmware/smccc/kvm_guest.c:12:1: note: declare 'static' if
> the function is not intended to be used outside of this translation
> unit
>    void __init kvm_init_hyp_services(void)
>    ^
>    static
>>> drivers/firmware/smccc/kvm_guest.c:44:6: warning: no previous 
>>> prototype for function 'kvm_arm_hyp_service_available' 
>>> [-Wmissing-prototypes]
>    bool kvm_arm_hyp_service_available(u32 func_id)
>         ^
>    drivers/firmware/smccc/kvm_guest.c:44:1: note: declare 'static' if
> the function is not intended to be used outside of this translation
> unit
>    bool kvm_arm_hyp_service_available(u32 func_id)
>    ^
>    static
>    2 warnings generated.
> 

Now fixed with an include of <asm/hypervisor.h>

            M.
-- 
Jazz is not dead. It just smells funny...

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/c87d2ce394cdaabb0874d8614837c586%40kernel.org.
