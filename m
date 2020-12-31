Return-Path: <clang-built-linux+bncBC6JD5V23ENBBEUVW37QKGQEFR3NWCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 96D4B2E7EB1
	for <lists+clang-built-linux@lfdr.de>; Thu, 31 Dec 2020 09:23:47 +0100 (CET)
Received: by mail-lf1-x137.google.com with SMTP id i23sf11335047lfl.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 31 Dec 2020 00:23:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609403027; cv=pass;
        d=google.com; s=arc-20160816;
        b=PqfiU0EJXyxNV9yvRDupigZZPWsGPU3att2eDZPM0EGu+JkVLe2Y6z03RTrj/wTLzl
         j6RUAHrVNKMsVDoeEIVVP86GwD4x3hJof6pOl71WuHVTzdRnXTTlk6hMBQDOtcDKFEhF
         M/5vaIcy65h7cq6S+CdusvVRwaKdwbowj095mX//ai4h7CIE+aMC0Jbj2FASlO+wCn7W
         kki6ucTo2TwmRaIHTWBbpHCb7F1aMuV0rSdLCAq6Jntex/T+qLY8gKvRoNCtEguy5kML
         sC7ukybzmbBr4jKnATE72XLf8E1XBmpOwxCfUx6xsWG9k554+NMLxfNATZDnGEzq9P+b
         IYBw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=2owpRl9V1unxgQRFq02wl0USb8vLyiE4m/jcc6+KGVg=;
        b=gF4eNUOSznb/v5niZUe1l4vqlrCmdOc770XkAFqj7IoFKI4owI21ykdVOgFo9BWodn
         ZnNRrNGkSfL4RQLNBDiEkufyyaFul28trrJd4adJ+Fv3p5rwiCknEEn1zHp5HeytM16+
         ClQd75TRoqwp4OAoNfS4Cyq6J3fdY3sNxvwUoMuWKxwzGazgRKPLkj647cxmq+NC4nSx
         0zT3nRSwnO2IL9bQATZLwFb4P6LcjiC85ONRiuk3C17nVza/+8WxPyexuOzEFclyH3aw
         IaASRSqcBalvKq/P+kKqHHXKjLGEVDu8fbioHIs1TOVpfzeq+kmAhlMt6oXamOnXknmQ
         9DsQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of k.kozlowski.k@gmail.com designates 209.85.218.52 as permitted sender) smtp.mailfrom=k.kozlowski.k@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2owpRl9V1unxgQRFq02wl0USb8vLyiE4m/jcc6+KGVg=;
        b=sVYynUEJQcW10sAesYPkTRFuMXzrSC6q+0NGbbUdSs5EYEh/RzS53CdC5+nAf9UP+Q
         9DGPgC9+eDCUTc3OToTrPoZhP0zJtn30RL2f8AFQfZeK5twl1eb1WaRm/r00Sq8SDQzh
         bsW+Z4ZhIH5OwmoNdPOX3zMhR84UFsWOPLnIkDhtJb7PAUStXJRWWRqwydZugMOF2d/q
         rSZ5XrkJ2W05fPGJbkYbHhd3tZ/K28xNgTBhsT0FtuVUSUadQZe0fM/zO6VGkdxjdJLU
         dnZN3hMpcHPwDY/McYtZdAis9JjZQHP4rkrHjSi2g7QkjcnvgPcodSoNw+Ehf2HndNt8
         yKBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2owpRl9V1unxgQRFq02wl0USb8vLyiE4m/jcc6+KGVg=;
        b=IrvxWfD9YkYpDs7/YXvelQXmSPN8zKae5R1UBNh05ZfjqMRzfAQ6PQCvyxpwKhusKf
         2wX1erLxSPKb+ICh353A/2oDiqw31eEVHh7k5fSmgkofEpEw9LEhm7e28iQuSbCZDY3y
         AKQZSd7reDG49SXnv9YZ1xL7UCq9a/L+KIgzZtUckKiI+YqlBleSFRcKvGvmHIgqVmNS
         GSa5+xM8DaRR/mH7TMi7jl16A86zSQLO4Cc56RClX+H9VWPUPyoiRuI9qeAFQ92B8sJA
         tTw1WJ2mvY5DGqVKSjt8kFMG232E0u5+HfGBLp3RhHpWxO1ufgZYhJxp9gzmPYAxwzQ1
         Ppjg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531vGtKtLNdKR9xq0wLs/vY4EO9/0ZziLrYL6pm2ehTuSATQ7AWV
	vrYm8iAvAs8q0TtD3s/oi2Y=
X-Google-Smtp-Source: ABdhPJwKOtmZ2AXpfd14uX9uUlhHMsclMBtWBWNrFXSMb3eI34zRh4MVfYDTegWH4Pon53LAW5P6tQ==
X-Received: by 2002:a2e:6a11:: with SMTP id f17mr26836410ljc.202.1609403027070;
        Thu, 31 Dec 2020 00:23:47 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:6145:: with SMTP id m5ls3549499lfk.2.gmail; Thu, 31 Dec
 2020 00:23:45 -0800 (PST)
X-Received: by 2002:a19:ac06:: with SMTP id g6mr19497565lfc.611.1609403025909;
        Thu, 31 Dec 2020 00:23:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609403025; cv=none;
        d=google.com; s=arc-20160816;
        b=iZHc/N0xBT7vPOj3/9QG5JTkvrGRVbzTQ06efx5Udxw9QyKeDZfn3A1BFuLG8jD4wf
         WURMZf/cSbsFoPVY04nsMsDvQArOwuvf8x8JkkvNCmzPYd7R98lz+DcF5kOQNVtLNwkP
         1pBuO8DTsPqDwqknybJwauJbo3Kg9x0KP812Nvqh0ds6yuB8Xg0fXQiupWJN+X2gIQ+n
         lsnXgsKaOfLm6ngnRX2tf6dJOfmrP/7jpvbdPeHZTWIXOafDcVzVqUeYFu5j7wTljyCA
         LgV9g32ee6oq+Q6twbAhAgcGEOjrm+PLKbiGuTgNKhfh6TjXJM6q1cr2Bh1hBsWd7zVX
         La/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=kqzRY01tygJ6pUx5jGvzhBZAlXxkHVGqTADIKUw745g=;
        b=D2fg5EnuZPG201uIpYyHj8KeKwl5ldBBmA0xhPf5eBLCNTFUR+vWoHSzItAjYfGRaD
         W2xa6H+icCsfSEHWnxi0EBRxPGqNkOUvItfikQimbweDyzFa2AirGVD9W2KgVG+a+3Tx
         jG9OLmpnB2qbZv/q36ccDN0Uimmv3mTzuN/mXkSSREjAygtnqTW0ezB1rMGSKYRyodjo
         x6vJPtzv91Q8bIgXlN6VOyR1a6SWWyZfgXinCKRfbdzKSW54N4nx5Qm0gY0dgmCmm+mJ
         cmCI1bUsoJIcBPA2OYas9EzW9Ucg91BEr8XlOcntkOl8a+z8hutFmTSVCUsbv8MSWll/
         uBfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of k.kozlowski.k@gmail.com designates 209.85.218.52 as permitted sender) smtp.mailfrom=k.kozlowski.k@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com. [209.85.218.52])
        by gmr-mx.google.com with ESMTPS id h21si1757876ljj.6.2020.12.31.00.23.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Dec 2020 00:23:45 -0800 (PST)
Received-SPF: pass (google.com: domain of k.kozlowski.k@gmail.com designates 209.85.218.52 as permitted sender) client-ip=209.85.218.52;
Received: by mail-ej1-f52.google.com with SMTP id ce23so24615035ejb.8
        for <clang-built-linux@googlegroups.com>; Thu, 31 Dec 2020 00:23:45 -0800 (PST)
X-Received: by 2002:a17:906:fcda:: with SMTP id qx26mr52993070ejb.213.1609403025366;
        Thu, 31 Dec 2020 00:23:45 -0800 (PST)
Received: from kozik-lap (adsl-84-226-167-205.adslplus.ch. [84.226.167.205])
        by smtp.googlemail.com with ESMTPSA id b21sm38890888edr.53.2020.12.31.00.23.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Dec 2020 00:23:43 -0800 (PST)
Date: Thu, 31 Dec 2020 09:23:42 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Timon Baetz <timon.baetz@protonmail.com>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	MyungJoo Ham <myungjoo.ham@samsung.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	Lee Jones <lee.jones@linaro.org>,
	Sebastian Reichel <sre@kernel.org>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 3/8] power: supply: max8997_charger: Set CHARGER
 current limit
Message-ID: <20201231082342.GA2591@kozik-lap>
References: <20201230205139.1812366-3-timon.baetz@protonmail.com>
 <202012310753.axvdsSG1-lkp@intel.com>
 <20201231081754.09aad125.timon.baetz@protonmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201231081754.09aad125.timon.baetz@protonmail.com>
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of k.kozlowski.k@gmail.com designates 209.85.218.52 as
 permitted sender) smtp.mailfrom=k.kozlowski.k@gmail.com;       dmarc=fail
 (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Thu, Dec 31, 2020 at 07:19:07AM +0000, Timon Baetz wrote:
> On Thu, 31 Dec 2020 07:22:22 +0800, kernel test robot wrote:
> > Hi Timon,
> > 
> > Thank you for the patch! Yet something to improve:
> > 
> > [auto build test ERROR on regulator/for-next]
> > [also build test ERROR on pinctrl-samsung/for-next krzk/for-next v5.11-rc1 next-20201223]
> > [cannot apply to robh/for-next]
> > [If your patch is applied to the wrong git tree, kindly drop us a note.
> > And when submitting patch, we suggest to use '--base' as documented in
> > https://git-scm.com/docs/git-format-patch]
> > 
> > url:    https://github.com/0day-ci/linux/commits/Timon-Baetz/extcon-max8997-Add-CHGINS-and-CHGRM-interrupt-handling/20201231-045812
> > base:   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git for-next
> > config: arm-randconfig-r004-20201230 (attached as .config)
> > compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 3c0d36f977d9e012b245c796ddc8596ac3af659b)
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install arm cross compiling tool for clang build
> >         # apt-get install binutils-arm-linux-gnueabi
> >         # https://github.com/0day-ci/linux/commit/3a597219bbfc1f9a0b65b9662b7b95bbb7cf728f
> >         git remote add linux-review https://github.com/0day-ci/linux
> >         git fetch --no-tags linux-review Timon-Baetz/extcon-max8997-Add-CHGINS-and-CHGRM-interrupt-handling/20201231-045812
> >         git checkout 3a597219bbfc1f9a0b65b9662b7b95bbb7cf728f
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm
> > 
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> > 
> > All errors (new ones prefixed by >>):
> > 
> > >> drivers/power/supply/max8997_charger.c:261:9: error: implicit declaration of function 'devm_extcon_register_notifier_all' [-Werror,-Wimplicit-function-declaration]  
> >                    ret = devm_extcon_register_notifier_all(&pdev->dev, charger->edev,
> >                          ^
> >    drivers/power/supply/max8997_charger.c:261:9: note: did you mean 'devm_extcon_register_notifier'?
> >    include/linux/extcon.h:263:19: note: 'devm_extcon_register_notifier' declared here
> >    static inline int devm_extcon_register_notifier(struct device *dev,
> >                      ^
> >    1 error generated.
> 
> This is failing because CONFIG_EXTCON is not set and *_all() don't have
> stub implementations in extcon.h. Should I add a fix for it in this
> series?

It is not problem of your patchset, so up to you.  After your changes
the driver still can work fine without CONFIG_EXTCON and CONFIG_REGULATOR.

Best regards,
Krzysztof

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201231082342.GA2591%40kozik-lap.
