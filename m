Return-Path: <clang-built-linux+bncBDV2D5O34IDRBTP4SGEAMGQERYMFJLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id A0CA73DC119
	for <lists+clang-built-linux@lfdr.de>; Sat, 31 Jul 2021 00:33:50 +0200 (CEST)
Received: by mail-yb1-xb38.google.com with SMTP id j9-20020a2581490000b02905897d81c63fsf6544318ybm.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Jul 2021 15:33:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627684429; cv=pass;
        d=google.com; s=arc-20160816;
        b=yY3bQv7FvWSUjIrLVOnPJgW0VlXwM1pzPwsH2OAWLveaXh2++hz/yESxsOs2Q0vC5+
         dnT6BXIrNf+9gwnmh/Q7ImCK5j2jYHmAbX9QNkJa5k83v+30p9QB2tfPTNbOnosQS0iV
         i4jIzrHFz53JWFFH2isecjVqeYEsD62aDNzHHYFBEEniSIRlBSEbUCmLTyEQ3ac8s6Od
         0xFvKGhRi3Id+yScXLqAGh0CdXS6JUBt9VcGMj7msFoYkJ6mUaza0j6ksucGimFmTUC/
         YR2cP/oB2EuC4mE/WL7tujx42kPPZAhgEdVjoeDaDZSznCQVJh9c5mYmQVVlUmj1kpHp
         Zbkw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=TVBOLmSZBLaoohX7GEfaI9/Oz2tv3lKGeadyhQqrHug=;
        b=wfIJw7E48d51j1k8/MBsH4OxUZXbOzw9eGckLk7mfy+ZuEuV36yGMTOP1FHlqYubqS
         3MhcrBtmTgf2BU8rttPgBMfioRVXD5WWNessAaCoYpXapFYnFw/F1YP+cjUG3ZSre02e
         D0iOMMaoBQvXgcTEtbza79jJ4OnjjJ4M44CEf2SZaTR9+bFugIgM6QK/AoQcOeeQeGfz
         pXtjE1SPZTXJxX+LvoL+toHZAmUiLsk3CipjT9Bj/UC3CdDfqGYtYoP9PCe9by2ygytB
         8MyHwT9SPAiIpp4270IDcR+LNU9v0DdimzTvt+wcXTjwvbQJSTH1PYP3uVbaYeJWh/eu
         gBUw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=uVkpEhPw;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TVBOLmSZBLaoohX7GEfaI9/Oz2tv3lKGeadyhQqrHug=;
        b=lBJ4gOf04SapHnjmRjiAL3vZesWy0DC3009CJC7wZ6GxoMO488J2lHfHDkCugZGuK/
         ONEh0Yiecfxbxu23VrN55sxnYVKbzIVS0wDH0GppXbPcxVqerfVb9IIkAzVZf9mGGafh
         tVlG4w92OSM/Cyv77gSFITwDS1oPS+eHt4z+4/ZiTpz8JBQ8Mi0puPSU67h1esGsyMly
         9j91Gj0Efi9CcYs9AdXilUTQjxSfu6rYWa71XmH6OI4w/y/BwkRFLG94cUlrkfjIXwZ1
         hH6GV/MvtDndcfgVm9+vN4qvZlfOI5gs1T2QJuErSeOhe5sGLqIBjeG+wNnbjhUFlrN3
         c1Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=TVBOLmSZBLaoohX7GEfaI9/Oz2tv3lKGeadyhQqrHug=;
        b=nBKiDWCpZEMUKibJ6zQ+qQWF/bi5KrKayFkzYin9Kv7r0Nwb7DE9m6zGm7MnKWFf32
         qKpUGOlxDqkdZ5VAnczlflZV7WLVXc5rrG27Dm0uJiNRhGvK23GZUeycxE6MEnGesclP
         sb8BAKA2GsCopGsqvdRsG+B/E9hWucvMpOM/+7/dQoJNbPUWYEG+p+W9H9SMl3qgNo36
         rk65/SYjVb1OhWkrISnLPYaJhJNATeYBRO92iG8zDErR5nokNxC50WRS0SaUaSziIUJ8
         QIN9NyCtp44VbkEZbzAL0+5pdbxK4U93Mh1r3J7uE8CRbhsagiwA+rv/Wm5S0vnn8aww
         dYOA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Xo5jIjFXAxLh/wa4EfY3oslNgWRy/8Z1WOycpP7KHy/SNDZIp
	KiMjfPCl73VQpcfDgk0GT8A=
X-Google-Smtp-Source: ABdhPJznUAWKxGdub0ZC8xDu7SX38Ph1z652KphXGrJ8mxdTQewuo/ZYm4W+EKX32ZyNZU8nTmrJ7w==
X-Received: by 2002:a25:2396:: with SMTP id j144mr5760369ybj.481.1627684429697;
        Fri, 30 Jul 2021 15:33:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:6e04:: with SMTP id j4ls1486069ybc.7.gmail; Fri, 30 Jul
 2021 15:33:49 -0700 (PDT)
X-Received: by 2002:a25:b84e:: with SMTP id b14mr6084164ybm.237.1627684429184;
        Fri, 30 Jul 2021 15:33:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627684429; cv=none;
        d=google.com; s=arc-20160816;
        b=RAT6bL9iSBurmhyIn0gLDsO2BUFYIxcDgnlpuBeOQ/cNc4dWHIgZMrVv4CnoCE67Fz
         N6D+gJxIKR78Hw9kYjCpHrdkNkMztnxr+PcbW2D9iF5ZIQRcXavOQkXiFWq+Bsn4OFcp
         IfcM+k07+OOdGUIOzwCR5jaqTtVudd7t0JeLJomwH/o+jFECfZHSqaCOA6B/yLacwxHF
         q3pgxi6b3X+EvH10rUf/GMWObFup5dJp3SmJyFRB4qEoHoWdMeBhYyn2Rs4kxBZdiyH0
         vZXGMLaqhbhR2iwhgQkkNQdWV1YjNkEZu5hndSnuyFxzhqJFVpVEA/ru4+Tzw9q42Frk
         m6Gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=BQTjsw+UIinxocEC0qr+MREl4u9UoUD4PRqQWjNAf6g=;
        b=nxSLyUGyRWmoCSTgKrufGozPmmygPLYMUQBiG1VUHayGQSne/JQkMHhDpJW3WtARlH
         oKG4iFazvGbCKZ65E9G532MqLgEUIchwl89f1NB2VG415SEktcyEoGthUoFiZPQt+U/T
         AxSIqb93fIQKjrEXtakdChnG0m9UH9ObCrpfkSMCNOZA8vZLvJ/nTlEN3A+hXcHsetVB
         OZjmctc7SVagzMBxhKou8I5NzcdxOrmLBZt4zNRIPwCGn8bGABmEgT1C9c7XStsD77B2
         CH4CXuAvYCzn+v7bfbsJrlXo307pKoFtpFpdsmNh+7XxuKTUWWTX77KbmNKUlZcXrf18
         z7mg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=uVkpEhPw;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by gmr-mx.google.com with ESMTPS id z205si285677ybb.0.2021.07.30.15.33.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Jul 2021 15:33:49 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from [2601:1c0:6280:3f0::aefb]
	by bombadil.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m9b4b-00AR4y-Ak; Fri, 30 Jul 2021 22:33:45 +0000
Subject: Re: drivers/gpu/drm/amd/amdgpu/amdgpu_acpi.c:1046:11: error: use of
 undeclared identifier 'pm_suspend_target_state'
To: kernel test robot <lkp@intel.com>,
 Pratik Vishwakarma <Pratik.Vishwakarma@amd.com>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
 linux-kernel@vger.kernel.org, Alex Deucher <alexander.deucher@amd.com>
References: <202107301618.ENDZx6ZW-lkp@intel.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <6662aaa4-f1da-56bf-08c4-9af562bb61cd@infradead.org>
Date: Fri, 30 Jul 2021 15:33:43 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <202107301618.ENDZx6ZW-lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: rdunlap@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=uVkpEhPw;
       spf=pass (google.com: best guess record for domain of
 rdunlap@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
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

On 7/30/21 1:17 AM, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   764a5bc89b12b82c18ce7ca5d7c1b10dd748a440
> commit: 91e273712ab8dd8c31924ac7714b21e011137e98 drm/amdgpu: Check pmops for desired suspend state
> date:   3 days ago
> config: x86_64-randconfig-a002-20210730 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project c49df15c278857adecd12db6bb1cdc96885f7079)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=91e273712ab8dd8c31924ac7714b21e011137e98
>         git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>         git fetch --no-tags linus master
>         git checkout 91e273712ab8dd8c31924ac7714b21e011137e98
>         # save the attached .config to linux build tree
>         mkdir build_dir
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross O=build_dir ARCH=x86_64 SHELL=/bin/bash drivers/gpu/drm/amd/amdgpu/
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
>>> drivers/gpu/drm/amd/amdgpu/amdgpu_acpi.c:1046:11: error: use of undeclared identifier 'pm_suspend_target_state'
>                            return pm_suspend_target_state == PM_SUSPEND_TO_IDLE;
>                                   ^
>    1 error generated.


A patch has been posted and accepted.

https://lore.kernel.org/lkml/CADnq5_PPYtdb17WLtgjeS3THXBeHw_DyMKueZ4LP8cVS1G8Tcw@mail.gmail.com/

-- 
~Randy
Reported-by: Randy Dunlap <rdunlap@infradead.org>
https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/6662aaa4-f1da-56bf-08c4-9af562bb61cd%40infradead.org.
