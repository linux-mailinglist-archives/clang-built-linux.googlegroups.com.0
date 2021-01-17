Return-Path: <clang-built-linux+bncBDRZXY4CYYORBG5YSKAAMGQELHOQAAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93a.google.com (mail-ua1-x93a.google.com [IPv6:2607:f8b0:4864:20::93a])
	by mail.lfdr.de (Postfix) with ESMTPS id 6146E2F9517
	for <lists+clang-built-linux@lfdr.de>; Sun, 17 Jan 2021 21:20:44 +0100 (CET)
Received: by mail-ua1-x93a.google.com with SMTP id a48sf4079659uad.16
        for <lists+clang-built-linux@lfdr.de>; Sun, 17 Jan 2021 12:20:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610914843; cv=pass;
        d=google.com; s=arc-20160816;
        b=djrkZbjFtTSZPX3K5g81WZa0IR5M0hXluWSO7H4IR1moiqNADr14DNV/4dpcmEdC/N
         Mesky0zgAOOhadwG4Lhw1lg0SUZVYIHawNbWOzDbkWS9m5fmspzNML3d8c/GGze52qSV
         aWPwvQeebwyEuGXvdHy9qC1rowIxottczr8P0wgK1fxSJHa5RaNYufo0u5c1Z9He7C+1
         P1DzFaCq+0E/GSPl3rbHzvIG5OvjSHRp3H2DJm/GtbFjjS+jCyaekf9uYiCq6pIih8+s
         95UaylAqr/PcVfTzJTyruIBdqNjGxg6iK8wD9zu+GuZ1ZsBbuAIdAuS/mvV2HBSs1jYV
         yz6w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=1sY9Ov0EdCDEfhh1q9T7Y/BVoiW0qdpOlIt0TTjHmus=;
        b=Zpkk73tiObdezsC6x0SbO3yqXltXMf0N1a4/4dSsNNb5vG4yz4pMYXNH7S6AZyKyEb
         aQ9MEMHdUbvucXe+JE9L6tj7qC/inuoCez+DpF0bhAxPPHG0y8NksDnT2gggerkuTHE5
         fs8IFmUAhKrkkmA+Lm6qnsyAhFArDcb6djYebBclC9EtnFX8Opi3KzbotYa+UaWHQ6YW
         dTQkZZVF/S79nVOzxAX6t9U+gSdOxaxeIq7KOLFIPhdLTxdO1uFAzmznk07Q0yWrhkRF
         yQJNC0ea6S+E+PAq/+M4iNRtryKipISisZQIOTEdlqNQYLYkRGLCYOZPXItURwqLa0kW
         /sdQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Nx7hxire;
       spf=pass (google.com: domain of hdegoede@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1sY9Ov0EdCDEfhh1q9T7Y/BVoiW0qdpOlIt0TTjHmus=;
        b=EjEss10INhJqQ7n4DUTOTSfKmJ5A2O+Y3RjgVfOkuZy2iXd5M+sapNNJEjtzerNcn8
         TO7dU+T4Sx7kD+i24Efa8H6yeRPYQ1Akqc5yWJNFlkqOxjk//qNZVHMa9z+QnHluamCU
         HYwa5s3HZZ3vEjWZRMLas3mxWv+pQS3TlSPWFh7CvDfXKH9sqVslwrqGWttS8QvS8xCt
         O/MNILxEFTwLK6g0kAUZ4tuj5w36rCXZLhgZeK3af9DFh3cjxXrnaE2USZvs5wv8g53Q
         66+WeSyrtsfZ/R05tULvgaT2pg0RmLIabHYMUpcmOhe4mXOToj07KSfXKql5ee4P98D9
         r/EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1sY9Ov0EdCDEfhh1q9T7Y/BVoiW0qdpOlIt0TTjHmus=;
        b=Eb9PxysgU3WpIeu97yUSkMoAbj3DSze0xgTnKxvn8dHCEcoumHD7ze3sHiV5eH99B2
         VVrmYFT+l5pah3qPDXX3euQKrky1TxwWN74h0Z79IqEq5XxaUR/J8YZEvJBzBY9nNpM4
         i2iKDDW+5MWYRJJPxaeN23cGL48YQQs4PXZW4zvY3qyNzSNkho2CTMD8O/l50ZjYTy+P
         zlYQluC6lQ+9Y/H+uFEZw/eLsmXj1UcrjDUGCgxjbcKmGIEGYLWQ5gQWrvQ2+UYxU9B2
         4QKxMKq5GuYUpweqWJY06U2oTUVyKbkHz55FYl9p1cWz9gpLMwm4aeeSorw1CtA0urD0
         tv0w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Qu2S+en+hQPwn+zMtTb65p99uijKRZWwtd2uS0/WuefILXKlW
	Wq5WAo/tPfAg9yv2N8ocCHE=
X-Google-Smtp-Source: ABdhPJwywFVW8wCT53q6o85O3yWSsR3uGsj+Q6V4QTHJ/T9RbscaUYPP52wLATMMjPLqveIpzmm4vQ==
X-Received: by 2002:ab0:1d93:: with SMTP id l19mr14613694uak.130.1610914843287;
        Sun, 17 Jan 2021 12:20:43 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:22d4:: with SMTP id a20ls1989012vsh.10.gmail; Sun,
 17 Jan 2021 12:20:42 -0800 (PST)
X-Received: by 2002:a67:8a8a:: with SMTP id m132mr16720179vsd.31.1610914842872;
        Sun, 17 Jan 2021 12:20:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610914842; cv=none;
        d=google.com; s=arc-20160816;
        b=sjh90wWd8wVOdpnQfViTpppEd/jGm8AjC4TFicXP8pR6SCK8RFThJMGmrT4Af+8jyM
         efbrfZOBOD9nGIf9xryVLfN6uD574ugsGdSV+NV8g+OrVgNhhfAeblW7FzN5JtX9cJic
         irRhyi48GeXkzfUsrpQnG17gcNE/cwaAyHsWXlVYLgNfFr9oShPGplMJq4qooKZPN6E5
         dcQqU7XjXKk0bPY7JfTXeoXdr+ajPxamycKuTDVt+YIzIS9hwPSgSFRyiwBpNEI8vbED
         SnzRPHMk/LU8mfjAzsHjzoj1oz9DfJbkT3rjd2PkLTB1SqZqv6TKy4kPRRO1vPyPBXrR
         yeNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=N8PoxYkRiuA8dJ81iu1GAMIR7YCbWodAr580vw1QV28=;
        b=o57zZ6Y7OpJ7SDPZbQru/nhs/lNLdDoE70u59l3ovY4qefWe5DzRYwJVH0NXK2XmPX
         LVHjzVdzQmSjiAdYRSu7La2aHo3g+veLDW8+HAsj1NHw3hClKZ8WthI+tZJ0vlZ6jhdh
         +khx8T5A9UAoDZpXKLc8hKEDtRtX8NB8y2FG3B911qihdjJA1HyZSIxobCXQqFpRwvrf
         /Ka2tNfanTerZh9KefleyYOUsUjIgkA0CMxIcJi4O7WFkdm0t+8QWgLeyzs3sEruQuh8
         E8Y03Uj32IAqiOoIDV89Mw03y6zEQhqUoq8w7n9GNr2MrlzVysxLbAInPNxVe+mgnAfq
         AG+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Nx7hxire;
       spf=pass (google.com: domain of hdegoede@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id r13si1168118vka.3.2021.01.17.12.20.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Jan 2021 12:20:42 -0800 (PST)
Received-SPF: pass (google.com: domain of hdegoede@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-588-ibjK5frvNmiW8g44ouQ7IA-1; Sun, 17 Jan 2021 15:20:39 -0500
X-MC-Unique: ibjK5frvNmiW8g44ouQ7IA-1
Received: by mail-ej1-f70.google.com with SMTP id g24so4633600ejh.22
        for <clang-built-linux@googlegroups.com>; Sun, 17 Jan 2021 12:20:39 -0800 (PST)
X-Received: by 2002:a05:6402:1751:: with SMTP id v17mr4057062edx.289.1610914838096;
        Sun, 17 Jan 2021 12:20:38 -0800 (PST)
X-Received: by 2002:a05:6402:1751:: with SMTP id v17mr4057058edx.289.1610914837949;
        Sun, 17 Jan 2021 12:20:37 -0800 (PST)
Received: from x1.localdomain (2001-1c00-0c1e-bf00-37a3-353b-be90-1238.cable.dynamic.v6.ziggo.nl. [2001:1c00:c1e:bf00:37a3:353b:be90:1238])
        by smtp.gmail.com with ESMTPSA id gt18sm7199324ejb.104.2021.01.17.12.20.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 17 Jan 2021 12:20:37 -0800 (PST)
Subject: Re: [PATCH v2 3/5] mfd: arizona: Add support for ACPI enumeration of
 WM5102 connected over SPI
To: kernel test robot <lkp@intel.com>, Lee Jones <lee.jones@linaro.org>,
 Cezary Rojewski <cezary.rojewski@intel.com>,
 Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
 Liam Girdwood <liam.r.girdwood@linux.intel.com>,
 Jie Yang <yang.jie@linux.intel.com>, Mark Brown <broonie@kernel.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 alsa-devel@alsa-project.org, Charles Keepax <ckeepax@opensource.cirrus.com>,
 Christian Hartmann <cornogle@googlemail.com>, patches@opensource.cirrus.com
References: <20210117154717.77969-4-hdegoede@redhat.com>
 <202101180352.D075IBWE-lkp@intel.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <128c932f-d2b6-c9f6-dc67-585244a39d7a@redhat.com>
Date: Sun, 17 Jan 2021 21:20:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <202101180352.D075IBWE-lkp@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: hdegoede@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=Nx7hxire;
       spf=pass (google.com: domain of hdegoede@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
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

On 1/17/21 8:06 PM, kernel test robot wrote:
> Hi Hans,
> 
> I love your patch! Yet something to improve:
> 
> [auto build test ERROR on lee-mfd/for-mfd-next]
> [also build test ERROR on asoc/for-next v5.11-rc3 next-20210115]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
> 
> url:    https://github.com/0day-ci/linux/commits/Hans-de-Goede/MFD-ASoC-Add-support-for-Intel-Bay-Trail-boards-with-WM5102-codec/20210117-235249
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/lee/mfd.git for-mfd-next
> config: arm-randconfig-r021-20210118 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project bfd75bdf3fd62d4f5e7028d4122f9ffa517f2a09)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm cross compiling tool for clang build
>         # apt-get install binutils-arm-linux-gnueabi
>         # https://github.com/0day-ci/linux/commit/ff3c43e0ca3dd07a3b671ee3be84b9c607dff305
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review Hans-de-Goede/MFD-ASoC-Add-support-for-Intel-Bay-Trail-boards-with-WM5102-codec/20210117-235249
>         git checkout ff3c43e0ca3dd07a3b671ee3be84b9c607dff305
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
>>> drivers/mfd/arizona-spi.c:194:7: error: assigning to 'int' from incompatible type 'void'
>                    ret = arizona_spi_acpi_probe(arizona);>                        ^ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    1 error generated.

UGh, the test-robot gave the same errors for v1 of this patch-set; and I checked,
but I could not find the problem. Since there was some time between v1 and v2
I assumed that I had already fixed this in my local tree, but I now see that
this is caused by a bug in the #else block of the
#ifdef CONFIG_ACPI
#else
#endif

in this patch. I will submit a v3 of this patch-set fixing this.

Regards,

Hans

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/128c932f-d2b6-c9f6-dc67-585244a39d7a%40redhat.com.
