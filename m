Return-Path: <clang-built-linux+bncBAABB4PWWX7QKGQE4UVTABA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 556E52E7E8D
	for <lists+clang-built-linux@lfdr.de>; Thu, 31 Dec 2020 08:19:14 +0100 (CET)
Received: by mail-wm1-x33b.google.com with SMTP id b194sf878583wmd.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Dec 2020 23:19:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609399154; cv=pass;
        d=google.com; s=arc-20160816;
        b=LxgNUmK71iO5Zl/cBTmDYgZrpLzfNJK6JTGLOkMWuwNNTYP54RzkbuATaUV0JsjUaV
         MNROq9MVMZsjvx6lM4xkYP4GgqFkMX0CqmpPfu1L388du2XO5Dj57Dfz27cobv0LZR/0
         gxwgq+Qs73VyM0eBjvoJVOSpTZ+tTuRuQNjOeLp1N10Fy3sCU1n2JzdSoZgcMJKSnbqT
         0PTOYNyNs5bTrCsFSmtIW9sLZEM/3D2C9xF7fJbN1cUUGnlWDtzZi5cOuaDgVN0njeQo
         425lweUGdSyNIwAYJ5UJQ68QYaHNXH3vSUsw+k4FplDDWLuVqpy6GrKKxC+babWjs26h
         cR6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:reply-to:cc:from:to:date:dkim-signature;
        bh=6DKwdxq80ew70/ClqIfVOnjl/IpeMqOmmT1Gk82POVQ=;
        b=H9KfiDrlD+C5c8UMrMRF8nwez6n8CGPisaqhDrgHAEoyhTGjuao267KcDttrXYuuF5
         8Bp+cjUJ04UoUyutBr9sdFUQ6lCOysniigzsB0F6EQVvYth47EDJo5M9rNFF4sBoVh83
         dA+lUZ4EamybeMP+xYKPuwdiQ6jwOBeGz1pCZChcSpN1tkgOwj0ibuqExLexaDaLBWKl
         5C0UUgcf9A31JMj2NsDHKp0sRapEZxw+Pz0g4g2drNKbYuYzWIH3jO7viNNRrHr368mv
         Vpz7UdkChhs2oKDva96DsRLd4nf6QUZaOI54FeXu9KmxXkU+RZXqSLGTtcjO4Lv5P7eK
         yqYA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@protonmail.com header.s=protonmail header.b=JdD0MUs4;
       spf=pass (google.com: domain of timon.baetz@protonmail.com designates 185.70.40.134 as permitted sender) smtp.mailfrom=timon.baetz@protonmail.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=protonmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:to:from:cc:reply-to:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6DKwdxq80ew70/ClqIfVOnjl/IpeMqOmmT1Gk82POVQ=;
        b=T7ER6wEnnhkxw1PdTRVZq2pMaYagvrvYL3jc8ElaD0NYj8nWaEIXsT+vjppzBWOIVN
         I3PWSHpGNA9iwylg3kgu7fw64yt0HGuKepinNnecebCLpe9Ffvy8mbbH0ob+yKRx0vDH
         iXXeSaSI/M5gyCFpx4qUbILyCGMVARJXClxbNnYj2Lgs8V6sv4aQOn2W8tWAV3RnZ9OX
         BFNGy7dOLhD3WgStFg9a313HGBH2knBOxpyzQdNH5RADVj3pTWAbCXv5QedNGaqb7LQF
         t3oCa19z87mogMeooU2wxfXV1/98fQqUkycp7oV7FsQgnISUybbp9+qH49ZsFo1KT53p
         vqnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:to:from:cc:reply-to:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6DKwdxq80ew70/ClqIfVOnjl/IpeMqOmmT1Gk82POVQ=;
        b=Y/GoEj3QxfPQu54NcTkRtDp60KaZREcEMkV7pIeu1Kl2Z7MymZyE0ueuZnXmc5Q3wx
         VHNvwFWp6UHJM+SraxB867sG9fGtDLQAX6DUUh1zVKW3k3SRLEUYKLHMgUiWXAFt34vB
         USIpnRpBLL0pcskjeoAFnjCCfxT0cMGlWEpimjb7/lCp1dewM8zAlfoUI4xZFcZieXSM
         IpSfOwtCneZIli2SW8fh3ouUV00NLhM9R8FH/KhLU0wXV8B2ie7B97J7npS377HjVTxw
         af0EVtpkEZDeRpiHQnUS4GmlgJpQxRWF67NuU6q/z9DtdlvuoywTcKDSjOokuP9STayR
         KQxw==
X-Gm-Message-State: AOAM5333F5wwXhZopOXBevA3blLLCz7s+qOmbxIDxXPKk9D5tkdJ+wl3
	mC8AKBZEUu3qaL9/zfHrYEY=
X-Google-Smtp-Source: ABdhPJyeXu2axfgkUb7yN7q5D8o3OYS05ncwn1Qu8T68HAWoMUe27rwuYIHVmJsQ1lAzKagJB7qbeQ==
X-Received: by 2002:a1c:98c7:: with SMTP id a190mr10663198wme.184.1609399154044;
        Wed, 30 Dec 2020 23:19:14 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:1d8a:: with SMTP id d132ls3572254wmd.0.gmail; Wed, 30
 Dec 2020 23:19:13 -0800 (PST)
X-Received: by 2002:a1c:1fc4:: with SMTP id f187mr10590849wmf.107.1609399153423;
        Wed, 30 Dec 2020 23:19:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609399153; cv=none;
        d=google.com; s=arc-20160816;
        b=J4fxn5pmCAMLdYgf+kdp5Ojuh4WTgOBTZzWug2LhtByygL85466siHpx+THUExHnbA
         i8SXvA0gxlXNeF9RzS8MddU0zgD4b1JqufB+CVAh33QkVeVl+llLKIhk/z4k4h03d1+h
         4nf+V3j4YCXsUGJwm319ziwnykwbEKFuoq/NSKhe/gyqd2IW4mgZwqVIJARj/49iontb
         myd013Zhb8ZfgjlEIBrAum4gviCGfICfKScrKgpqgBdfgDe7OLbiO2zeOtJa31sCrOGA
         b+pnB807hpioAr76CXS4drZz3sqZw7AdHq4gwa45g8Z3q+vxo+/EN5qFL/EXqHbRN1P7
         A22w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:reply-to:cc:from:to:dkim-signature:date;
        bh=YoZwhQ90gbl0VD+Jy67qWsHVGWfPpx7CAqbFb3UqWG0=;
        b=v/5rUpytveiI5Rqp93v6aNLJpzgJGbPEffWWV9QpdZYfvJdAJg1R1KA+vEUbFxvnrl
         mxAL0CPC18nQcF/7mWfZ00fLbcqpFt/8hvtbg2up6SxTrjIU5nwzC5/ZO1R56ATV/Oip
         rIl/PqFo4oL223lRVra94990bUTScfUBTe7sTQDWbUtYM48kDdURFX3fF4j2YKrfBmzA
         4qyEC0C082/Kw3+4tokOYAbXt4Nt+d6z7C+qbNcGx3h27BO9kkTzqJ5aWL1Ekr2U05rB
         C0Xk87Dqyzz2yQMcaiPs9COAq1WCI86cAYCtDcAVd1LmFwHC8k8E6+KqdQovXVuj9Pgf
         3E3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@protonmail.com header.s=protonmail header.b=JdD0MUs4;
       spf=pass (google.com: domain of timon.baetz@protonmail.com designates 185.70.40.134 as permitted sender) smtp.mailfrom=timon.baetz@protonmail.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=protonmail.com
Received: from mail-40134.protonmail.ch (mail-40134.protonmail.ch. [185.70.40.134])
        by gmr-mx.google.com with ESMTPS id n8si1576984wrr.0.2020.12.30.23.19.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Dec 2020 23:19:13 -0800 (PST)
Received-SPF: pass (google.com: domain of timon.baetz@protonmail.com designates 185.70.40.134 as permitted sender) client-ip=185.70.40.134;
Date: Thu, 31 Dec 2020 07:19:07 +0000
To: kernel test robot <lkp@intel.com>
From: "'Timon Baetz' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, kbuild-all@lists.01.org, clang-built-linux@googlegroups.com, Marek Szyprowski <m.szyprowski@samsung.com>, Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>, MyungJoo Ham <myungjoo.ham@samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>, Lee Jones <lee.jones@linaro.org>, Sebastian Reichel <sre@kernel.org>, linux-kernel@vger.kernel.org
Reply-To: Timon Baetz <timon.baetz@protonmail.com>
Subject: Re: [PATCH v6 3/8] power: supply: max8997_charger: Set CHARGER current limit
Message-ID: <20201231081754.09aad125.timon.baetz@protonmail.com>
In-Reply-To: <202012310753.axvdsSG1-lkp@intel.com>
References: <20201230205139.1812366-3-timon.baetz@protonmail.com> <202012310753.axvdsSG1-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM shortcircuit=no
	autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
	mailout.protonmail.ch
X-Original-Sender: timon.baetz@protonmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@protonmail.com header.s=protonmail header.b=JdD0MUs4;
       spf=pass (google.com: domain of timon.baetz@protonmail.com designates
 185.70.40.134 as permitted sender) smtp.mailfrom=timon.baetz@protonmail.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=protonmail.com
X-Original-From: Timon Baetz <timon.baetz@protonmail.com>
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

On Thu, 31 Dec 2020 07:22:22 +0800, kernel test robot wrote:
> Hi Timon,
> 
> Thank you for the patch! Yet something to improve:
> 
> [auto build test ERROR on regulator/for-next]
> [also build test ERROR on pinctrl-samsung/for-next krzk/for-next v5.11-rc1 next-20201223]
> [cannot apply to robh/for-next]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
> 
> url:    https://github.com/0day-ci/linux/commits/Timon-Baetz/extcon-max8997-Add-CHGINS-and-CHGRM-interrupt-handling/20201231-045812
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git for-next
> config: arm-randconfig-r004-20201230 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 3c0d36f977d9e012b245c796ddc8596ac3af659b)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm cross compiling tool for clang build
>         # apt-get install binutils-arm-linux-gnueabi
>         # https://github.com/0day-ci/linux/commit/3a597219bbfc1f9a0b65b9662b7b95bbb7cf728f
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review Timon-Baetz/extcon-max8997-Add-CHGINS-and-CHGRM-interrupt-handling/20201231-045812
>         git checkout 3a597219bbfc1f9a0b65b9662b7b95bbb7cf728f
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
> >> drivers/power/supply/max8997_charger.c:261:9: error: implicit declaration of function 'devm_extcon_register_notifier_all' [-Werror,-Wimplicit-function-declaration]  
>                    ret = devm_extcon_register_notifier_all(&pdev->dev, charger->edev,
>                          ^
>    drivers/power/supply/max8997_charger.c:261:9: note: did you mean 'devm_extcon_register_notifier'?
>    include/linux/extcon.h:263:19: note: 'devm_extcon_register_notifier' declared here
>    static inline int devm_extcon_register_notifier(struct device *dev,
>                      ^
>    1 error generated.

This is failing because CONFIG_EXTCON is not set and *_all() don't have
stub implementations in extcon.h. Should I add a fix for it in this
series?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201231081754.09aad125.timon.baetz%40protonmail.com.
