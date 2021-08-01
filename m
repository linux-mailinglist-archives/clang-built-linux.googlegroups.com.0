Return-Path: <clang-built-linux+bncBDRZXY4CYYORBQUITKEAMGQEB5LG4XY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id 06C883DCB59
	for <lists+clang-built-linux@lfdr.de>; Sun,  1 Aug 2021 13:23:48 +0200 (CEST)
Received: by mail-vk1-xa40.google.com with SMTP id ay39-20020a0561221827b0290258f8a28c55sf1367748vkb.6
        for <lists+clang-built-linux@lfdr.de>; Sun, 01 Aug 2021 04:23:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627817027; cv=pass;
        d=google.com; s=arc-20160816;
        b=UtfPox206I77Pbe1taFOcKEz2nm54963KXV3w9gFZB7KrwROPqrAQGM8/cLNICtCk1
         frHUP/hvDm/2g/0FT4fcjzKFldn1eBKkrLMzwfnoiM0EOFwMY89YfrbU9T06prb803Dj
         HuiW6aJoqVgmHwzht8LDu4nMaH7JfbSxSNrRWT6fJI/SHlxE2vY3n3Kw9gFlDtmW2v27
         jpxF6TWM/hhO4yL9zy9flCPrhazv/kX0oqVRnk1MCsNyDS3cqPzTQ51pttNSBkRUpWf9
         e+KDM6qvmoqwPBqJ7lYHG9yjyG5HMZsFbD9JQVMPm3aN/bRP6/Kn0YKV+53mG0WSphlE
         gTgA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=maa7SXFVez9uHjkmz3zEWFYX4/bqlAZWPyYczFZSBUE=;
        b=F8HU6kTAqTafZlPIpe4ctWraJz66qbCA8AduoPcQuQ8PljBx/GmSSI+Vv/vXR/7Y9X
         Ltk6E2LQhfUaWzSXYHgLc++cspgMr0tVikCx0srfmj8Me7GIc1njJxFKEGmf90Uu4IEh
         9bp42c1RL82mN7gEvsin36hlZWFNrYOi5WNlZiblG05scb3cQid/swMskEeZrjnuE2aG
         1hhAmlfq3TuG2H64Hwl5Di/81003eIZka+dYDoNJrkKH45hcjjAPiTgyu1FXTp0UnsfJ
         BrZeuWE+bOIxMhqMvkSvt8nSylBU5ccDpAa+TlUsUT6o9MeHKYKdoR9g8SdqIzq0bmrn
         rXSw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=EMjyp0Yg;
       spf=pass (google.com: domain of hdegoede@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=maa7SXFVez9uHjkmz3zEWFYX4/bqlAZWPyYczFZSBUE=;
        b=T66xidxLkvhFtNZqcTEUmUltvEpjB09rcIPHveMIu6rSlaIac+XIpStUHwkywApAhI
         XLuETipXV6po5EowYmB/fJIwbNK9Jq/2tO2OtbqO+Wc7HdBVjxg78l9zqFXQS7kThmNR
         4dhpd7r5HVXVflJP1Y5U+N56zPTEbGDFnXZL4dx3oEcBd0W6BSJlCTn3tAYWdRGbrm1s
         9/0W94BdR+Uxysij8T2Q7HWLgh3WsQ/n80KqVQrl8SmLqGvo7G9uPBIX7WVwmk/TUsXp
         s/SxWLdjqQlBjU2JA7x1gPOKJM5DUuw0DMJpiqgbn6oeFOUuKk50f1gq4hbBtc5ONWUG
         VO2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=maa7SXFVez9uHjkmz3zEWFYX4/bqlAZWPyYczFZSBUE=;
        b=byyAKqViRP3i77f9G/uNBGxd5TNfcU4emJ3n0l2wZvoy6XYxiRQY+EXGk33SlGqrqr
         X5tOOH1gZ6f7wjhQuswu1EQuYlMBxE4znCTYMqQEshMWosoxC0F8fIl98JmYzUUGKWeF
         Eg3F8jm5okUFS6AHZdAq9MulQ/SXtykmvalb6+zkjCtfFKq+Z289X2Qh7uO3QXlnxD2W
         o3DRZS/xMV7rSNXWw+HaHDmZ4LqEKRbC3Qa99nVABuUQsafDvAC3xKJwAzK9v4+Ie6w1
         67ZJ9c5LRrwLhzAcJrDX1OvVv2rTEYZgUSkxCYg1CobOKhGEkrNJrwk82poLUqexPYvn
         9u5Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530yLxnSGjgG9+FyLUcV9IPMJAWhjZqH6lLw5SK0Wh8n2f2+eckL
	ilHdl6ik3OVSTfRqBK9FoCw=
X-Google-Smtp-Source: ABdhPJyul1YUAJBk6bUzxzVIQ4xMEDjDXwotOJv86Nr4K2UPGccTOKyIZ18Tj1nY8HXI8t8aNDh1Nw==
X-Received: by 2002:a67:2442:: with SMTP id k63mr7300516vsk.16.1627817026988;
        Sun, 01 Aug 2021 04:23:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:a81:: with SMTP id n1ls1150843vsg.8.gmail; Sun, 01
 Aug 2021 04:23:46 -0700 (PDT)
X-Received: by 2002:a05:6102:21dc:: with SMTP id r28mr2476489vsg.50.1627817026314;
        Sun, 01 Aug 2021 04:23:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627817026; cv=none;
        d=google.com; s=arc-20160816;
        b=i7EY84KMF6W48bKMOb/HiaTLygCE+GfE0x4UjznzTqRlq23u8bvv2h7ZOBxjhGD2TQ
         nh24boWYY66t4iGZHr5eIQD10JYidK2XrI05e5f9cL0Zq340FVaEGRng8DuWm8LiROT1
         rwDFRl3KJ3lBLQnKRe5xALqjioB034cPnXg9yjtbDUpX+8L0Oc4TdR+qzFEZl+No+xYU
         zMBOvm8FybRMzCUAPsoQY8yR2oDtbVe/KI4M8rAxbCSHnvfWUrDDqdUtmkUAUEhU+X7P
         qgu3/exJpPUC3TMgoZb73taYrtD18gyYs75vXTQu8mD3aEmQbTjhzIkP0rSj5Mqe5DCw
         +SjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=o8QNA7ce8DEEodq4/D8HbUWcpJrQnr1dbruWfk5MIkA=;
        b=g1fLQy4bMD+Ti5Ns4TZ9b+vu6FURXHcBv8i+Hm+4W/BpBiFYH+tzzLQTvsBSfrfRAp
         pgnW2/Sf46xjcgPV+AtY0IOkbF7gmq+oL2aJI5BkQW0+ydyo0XaLSsDh/S19YT4Zyhmq
         HLeKw417nooiQRmSr71ppYhH7JZr3o09klYGPQ3nvAM5R5uvKap12tEYhmhct+krXHww
         NE/ukYiZrXZpKg7RsXJhfsQXQdHcNoTkitniRPZ50CFjFINBbSenRWHQP0zL2kLJDJCu
         JPuExmNI6ZQbc1bRBpeKMi4Nm3wRojRGTNt/GWwo06ErqGXgpAVLdIqGHZjo2i+3zuoT
         hxog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=EMjyp0Yg;
       spf=pass (google.com: domain of hdegoede@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id n18si470393vsk.2.2021.08.01.04.23.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Aug 2021 04:23:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of hdegoede@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-102-sUfSCzEuMY-vW4BepMmiYA-1; Sun, 01 Aug 2021 07:23:42 -0400
X-MC-Unique: sUfSCzEuMY-vW4BepMmiYA-1
Received: by mail-ed1-f71.google.com with SMTP id de5-20020a0564023085b02903bb92fd182eso7211734edb.8
        for <clang-built-linux@googlegroups.com>; Sun, 01 Aug 2021 04:23:42 -0700 (PDT)
X-Received: by 2002:a17:906:688e:: with SMTP id n14mr10849189ejr.67.1627817021668;
        Sun, 01 Aug 2021 04:23:41 -0700 (PDT)
X-Received: by 2002:a17:906:688e:: with SMTP id n14mr10849178ejr.67.1627817021474;
        Sun, 01 Aug 2021 04:23:41 -0700 (PDT)
Received: from x1.localdomain (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl. [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
        by smtp.gmail.com with ESMTPSA id gv7sm2968484ejc.5.2021.08.01.04.23.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 01 Aug 2021 04:23:41 -0700 (PDT)
Subject: Re: [PATCH v2 08/10] power: supply: axp288_fuel_gauge: Refresh all
 registers in one go
To: kernel test robot <lkp@intel.com>, Sebastian Reichel <sre@kernel.org>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
 Andrejus Basovas <cpp@gcc.lt>, linux-pm@vger.kernel.org
References: <20210730095607.57541-9-hdegoede@redhat.com>
 <202107310035.iKiQEb6J-lkp@intel.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <ad94a3cd-9a57-35db-b989-7133b16e702a@redhat.com>
Date: Sun, 1 Aug 2021 13:23:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <202107310035.iKiQEb6J-lkp@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: hdegoede@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=EMjyp0Yg;
       spf=pass (google.com: domain of hdegoede@redhat.com designates
 170.10.133.124 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

Hi,

On 7/30/21 6:14 PM, kernel test robot wrote:
> Hi Hans,
> 
> Thank you for the patch! Yet something to improve:
> 
> [auto build test ERROR on power-supply/for-next]
> [also build test ERROR on v5.14-rc3 next-20210729]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
> 
> url:    https://github.com/0day-ci/linux/commits/Hans-de-Goede/power-supply-axp288_fuel_gauge-Reduce-number-of-register-accesses-cleanups/20210730-175716
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/sre/linux-power-supply.git for-next
> config: x86_64-buildonly-randconfig-r001-20210730 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 4f71f59bf3d9914188a11d0c41bedbb339d36ff5)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # https://github.com/0day-ci/linux/commit/1ff192ccce54fdfce899447999a60a195537460c
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review Hans-de-Goede/power-supply-axp288_fuel_gauge-Reduce-number-of-register-accesses-cleanups/20210730-175716
>         git checkout 1ff192ccce54fdfce899447999a60a195537460c
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
>>> drivers/power/supply/axp288_fuel_gauge.c:219:8: error: implicit declaration of function 'iosf_mbi_block_punit_i2c_access' [-Werror,-Wimplicit-function-declaration]
>            ret = iosf_mbi_block_punit_i2c_access();
>                  ^
>>> drivers/power/supply/axp288_fuel_gauge.c:268:2: error: implicit declaration of function 'iosf_mbi_unblock_punit_i2c_access' [-Werror,-Wimplicit-function-declaration]
>            iosf_mbi_unblock_punit_i2c_access();
>            ^
>    drivers/power/supply/axp288_fuel_gauge.c:268:2: note: did you mean 'iosf_mbi_block_punit_i2c_access'?
>    drivers/power/supply/axp288_fuel_gauge.c:219:8: note: 'iosf_mbi_block_punit_i2c_access' declared here
>            ret = iosf_mbi_block_punit_i2c_access();
>                  ^
>    2 errors generated.

Ugh, so I guess that it is possible to build a x86 kernel without iosf_mbi support
enabled. Given how the I2C bus to PMIC is special on devices with an AXP288 PMIC
and special attention must be made to coordinate accesses with the SoC-s
P-Unit, allowing building of the AXP288 code without IOSF_MBi makes little sense
(this will lead to a very unreliable kernel build) so I'll do a v3 changing the new
depends on from X86 to IOSF_MBI.

Sorry about all the churn because of this Kconfig depends issue.

Regards,

Hans

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/ad94a3cd-9a57-35db-b989-7133b16e702a%40redhat.com.
