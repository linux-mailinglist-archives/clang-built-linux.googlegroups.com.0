Return-Path: <clang-built-linux+bncBCTMNG6YIIIODB4LQEDBUBCJOIEXG@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id B6D6A3154D8
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Feb 2021 18:18:26 +0100 (CET)
Received: by mail-pl1-x63f.google.com with SMTP id i2sf9838093plt.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 09 Feb 2021 09:18:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612891105; cv=pass;
        d=google.com; s=arc-20160816;
        b=cijK56cqLX0cQVEjJOCT/bR/LEHNEzAQG35QppAGdwQMXLNKpZVb6qDV15PxvgNH2r
         vngwLHCGaOl/T1vFiswCcqrJ6jM3kOky6BvKrLgAEGJl5lwGfy2k4J+6DodPqrMZLgo+
         If5WMX/i0FtyBXVzk+v8I1j+baxxxO4PmiRxejPDzsXJ8ujvtmHPOqX38N1AqlRt/Mcg
         lxByX4Si5K71IocWfJpmPHhG2YEnz9TFtVA1TnZLNhfPytQ05DAslg7YeBvh8xqGP98I
         NHDa7gWidv7k6sqz8eZ4rutFQEDd5a0tVXVS7Dxfo2jkLm0wpdgrPRc7oexmIG59H1Xf
         qMhQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=wffZYz6lwcaz6zLPwx06Hkthn23eX/sJyFCEaKIULjk=;
        b=QLfhRGCu0krIOx/uMNk/7g4N527lu2511CEtBxWX+BpC1jR4F1OYA/x6qtsYF1msku
         8laoQoCRWcTi0cTP5w6OoOReKvfOjRqQ4Px4RspB7evekB+7ERcVkNoEXcxhyhh72gsI
         iDyMqPs5MjiCYg8WGB58yLH72oHiwEOYAVoDLAw9SADMXI020iuHSHy8vAUFtCKuQT42
         euylZsTYsWUaGufJp2NVWD8FnAnQrur8AqhgPdQ+LBp3DZStFYplTExV/UKDzN2UWUef
         sADkKgHINGXrH9CIg2MNISqApLOkpAeHvscuAvCZ2Rl1U+VgkMfAoGvjGb4OzAaDh0Ky
         MRsQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fG2RtB4F;
       spf=pass (google.com: domain of george.mccollister@gmail.com designates 2607:f8b0:4864:20::32e as permitted sender) smtp.mailfrom=george.mccollister@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wffZYz6lwcaz6zLPwx06Hkthn23eX/sJyFCEaKIULjk=;
        b=qwlElEMSn+GLFZPx1ZkWDTyd3oORhYjsce/QlQul1F3Hpj0xYn26Nw0NAigt2x1SdQ
         A+kxKBfr4tDYLR5XAzPltltah4z5iBKFa+OsFv1n5YIyY/C78o3ynSqo5Ki0ewDC3+D2
         4FAaGE5rCVe8Vt8iUZanK4eiEaow86G1BUuIF1qe+jda+wruV/NBbW5C1Xkqe/GfotYE
         P4WpUCtcJUD6AJOtlzXtJ45u3FCICa/YTzgB8+QSMBhSGx8T6IyhOpIQRuDT6H6d89vv
         GygHZ/Sw1PZ4uktQgz+Mvx11F5wt8913Y+FPUCTRo7Pn6tliGclqGLZeKCNlwGB22YU2
         5Tjw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wffZYz6lwcaz6zLPwx06Hkthn23eX/sJyFCEaKIULjk=;
        b=b9vuFyedmv/gvAhoCHBLef5NShsIPaBgn/pPst/mq6jbG8vLgiiMIgOJRb/WdLahSJ
         qr12hbsi1orKBJ+OGtPAfpe9Pmds8ci82UJW81xVVYdD+TyBXu6/EQNGkcmXAHX94QCI
         u55qk3H/4iGgNXLVD0NK9A/4szFISpj8bM1MOEvkDk7WaOq8l0Fzdj2qgVGRVNV3qA5R
         X+C7ku1rEaU391ZF5I5zwOVABZRGvrq0K4NRTi6ZBreJbXXv1F3sBLQWmGBW31cUrWI3
         lap6XbdR16Tk8grxvE4RyFBBE8QzpmrdUuy0RQ+VEFoBnDOc2P6/V2RShU3TCbvLM8Up
         /2aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wffZYz6lwcaz6zLPwx06Hkthn23eX/sJyFCEaKIULjk=;
        b=QU+K5jO4DZlefPIMU80GtpopvKjfkvaQS6emCLbDob55Bt/mEcAf0tExhL/8VEpXRh
         usDF+no8O445M7GE+HuEBOZoSu0u3hSIhHFcbd3CCDpwEjHhMsDkT2ntHc8OnD7NshkW
         AlzU++SGTdsnOZmpMGnvBkP0hjF72KbQswMyD0CxgKe2RKhEozTPkOUVZzT935TcbzxH
         O+JFw5UKgWtCXWkA42+Z0Qfeu6WRzlxWFQwiNk0eFH3IMPedTlYlf/ztzJGbaj4dP6Ok
         rs+3cypai6QktwQnzdMl5LftU/Tfulzr/BQmIH2vBLK8BEiLHFcQvQhlVuld3EC8O8ZN
         urOg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530uSlNDjld2AndWwYZUDEgSfI4hB7JeUtj98cPAwbbVe9/aGBdA
	tQgbhRH2WrtJOE7cWFOLXt4=
X-Google-Smtp-Source: ABdhPJwqJ40NNpAdaZkJa3Tb2C+DuHCdczHotkECKB/S95qJQ5BDH6N7ejuxk7ykYpWA4awLtcy7ZA==
X-Received: by 2002:a17:90b:1105:: with SMTP id gi5mr4985064pjb.26.1612891105364;
        Tue, 09 Feb 2021 09:18:25 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:374b:: with SMTP id ne11ls1797836pjb.1.canary-gmail;
 Tue, 09 Feb 2021 09:18:24 -0800 (PST)
X-Received: by 2002:a17:902:bd97:b029:de:abc4:fec7 with SMTP id q23-20020a170902bd97b02900deabc4fec7mr21698373pls.7.1612891104645;
        Tue, 09 Feb 2021 09:18:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612891104; cv=none;
        d=google.com; s=arc-20160816;
        b=SCYM8bdb47GJya9CJb6piAgCBpcR/LOV63ElPP2S/H0Egyi18vTO50unijIoR3VMFH
         JDOomeOskNz4ElfoUkcfXoZcPhoo8iEfJ3UxZ5hqT2hJSNb4NuCyoj0Xe/+eW9Dlhh56
         Zpm3vjSjEHo40IqUFgk8VcRDeBtC5qWUir4B3nQmVbxsUXvCRX7rNrL5UDpVeYwPYdDL
         nV9tO7CyvR9z2mfj6Uap/xIkg7OksQfnnSKVRTzi3sYqy272ut143UHUnquPjbbUWOQ0
         25tgk4lK/qNR24PbJFvNM+zOArTXvSUWiFbY6tSvL7R1TYW1cQ8xEYir0r7B74zSm5B+
         FjTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=QY7kQDHxUgMlJkA2AQGwx0SUPpLYoccxOTueugt+18w=;
        b=JLFPE+36dAZAsIPHxo2DtOQ29m3TfRDJODCD2sodrMlPM/ZYWnUAJ5oBtu6f+pYQyF
         5U1LEiNRLaTcW0fNgR1rUh05guh4Lt7aWz7AQFvKBO98R//42NfcV8h2Bcyjw+IdkfQB
         PXj27qaaKDV+DCu+VR4T2FJ9DxlWAzQSdo2RVsD6AnOwHbFeo91grxPyfC5PiOxpDysM
         rGMajPB+YuAr6zg4TDdm7VQQlYmce5NoFKdBmUQpeaYn3tGPYNjjU9AHhMaS2SERnfYa
         ejp43E6pL7MPyIl8Cgix7iJr0noyGy0QIKROSyuXjISwvDQ1W0c7TJQzpFT8c/AyX30f
         tH6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fG2RtB4F;
       spf=pass (google.com: domain of george.mccollister@gmail.com designates 2607:f8b0:4864:20::32e as permitted sender) smtp.mailfrom=george.mccollister@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x32e.google.com (mail-ot1-x32e.google.com. [2607:f8b0:4864:20::32e])
        by gmr-mx.google.com with ESMTPS id d13si919420pgm.5.2021.02.09.09.18.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Feb 2021 09:18:24 -0800 (PST)
Received-SPF: pass (google.com: domain of george.mccollister@gmail.com designates 2607:f8b0:4864:20::32e as permitted sender) client-ip=2607:f8b0:4864:20::32e;
Received: by mail-ot1-x32e.google.com with SMTP id r21so9655428otk.13
        for <clang-built-linux@googlegroups.com>; Tue, 09 Feb 2021 09:18:24 -0800 (PST)
X-Received: by 2002:a9d:e82:: with SMTP id 2mr16732508otj.287.1612891103970;
 Tue, 09 Feb 2021 09:18:23 -0800 (PST)
MIME-Version: 1.0
References: <202102070252.HkjUQntk-lkp@intel.com> <CAFqt6zZm7rAZ=eqJWoWNojT-s+pmdnYL7MbbCPBE89fk6Q6szA@mail.gmail.com>
In-Reply-To: <CAFqt6zZm7rAZ=eqJWoWNojT-s+pmdnYL7MbbCPBE89fk6Q6szA@mail.gmail.com>
From: George McCollister <george.mccollister@gmail.com>
Date: Tue, 9 Feb 2021 11:18:12 -0600
Message-ID: <CAFSKS=MMCJySR3w0RfwY4uWi35VEGpLZHF2HDzRiHAP35iapNg@mail.gmail.com>
Subject: Re: [linux-next:master 3824/6048] drivers/net/dsa/xrs700x/xrs700x_i2c.c:127:34:
 warning: unused variable 'xrs700x_i2c_dt_ids'
To: Souptick Joarder <jrdr.linux@gmail.com>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org, 
	clang-built-linux@googlegroups.com, 
	Linux Memory Management List <linux-mm@kvack.org>, Jakub Kicinski <kuba@kernel.org>, 
	Florian Fainelli <f.fainelli@gmail.com>, Andrew Lunn <andrew@lunn.ch>, 
	Vladimir Oltean <olteanv@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: George.McCollister@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=fG2RtB4F;       spf=pass
 (google.com: domain of george.mccollister@gmail.com designates
 2607:f8b0:4864:20::32e as permitted sender) smtp.mailfrom=george.mccollister@gmail.com;
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

On Tue, Feb 9, 2021 at 10:33 AM Souptick Joarder <jrdr.linux@gmail.com> wrote:
>
> On Sat, Feb 6, 2021 at 11:32 PM kernel test robot <lkp@intel.com> wrote:
> >
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> > head:   59fa6a163ffabc1bf25c5e0e33899e268a96d3cc
> > commit: ee00b24f32eb822f55190efd1078fe572e931d5c [3824/6048] net: dsa: add Arrow SpeedChips XRS700x driver
> > config: x86_64-randconfig-a011-20210207 (attached as .config)
> > compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project c9439ca36342fb6013187d0a69aef92736951476)
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install x86_64 cross compiling tool for clang build
> >         # apt-get install binutils-x86-64-linux-gnu
> >         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=ee00b24f32eb822f55190efd1078fe572e931d5c
> >         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
> >         git fetch --no-tags linux-next master
> >         git checkout ee00b24f32eb822f55190efd1078fe572e931d5c
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> >
> > All warnings (new ones prefixed by >>):
> >
> > >> drivers/net/dsa/xrs700x/xrs700x_i2c.c:127:34: warning: unused variable 'xrs700x_i2c_dt_ids' [-Wunused-const-variable]
> >    static const struct of_device_id xrs700x_i2c_dt_ids[] = {
> >                                     ^
> >    1 warning generated.
>
> I think, this can defined under #ifdef CONFIG_OF.

Was this robot reporting this warning for other DSA drivers? A lot of
them appear to use of_device_id in the same manner (unless I'm missing
something). Do we need to do something DSA wide to deal with this?

>
> >
> >
> > vim +/xrs700x_i2c_dt_ids +127 drivers/net/dsa/xrs700x/xrs700x_i2c.c
> >
> >    126
> >  > 127  static const struct of_device_id xrs700x_i2c_dt_ids[] = {
> >    128          { .compatible = "arrow,xrs7003e", .data = &xrs7003e_info },
> >    129          { .compatible = "arrow,xrs7003f", .data = &xrs7003f_info },
> >    130          { .compatible = "arrow,xrs7004e", .data = &xrs7004e_info },
> >    131          { .compatible = "arrow,xrs7004f", .data = &xrs7004f_info },
> >    132          {},
> >    133  };
> >    134  MODULE_DEVICE_TABLE(of, xrs700x_i2c_dt_ids);
> >    135
> >
> > ---
> > 0-DAY CI Kernel Test Service, Intel Corporation
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-George

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAFSKS%3DMMCJySR3w0RfwY4uWi35VEGpLZHF2HDzRiHAP35iapNg%40mail.gmail.com.
