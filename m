Return-Path: <clang-built-linux+bncBDA5BKNJ6MIBB54U572QKGQEB72OTYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id EC49F1D0F9D
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 May 2020 12:22:48 +0200 (CEST)
Received: by mail-ot1-x33e.google.com with SMTP id g50sf7692362otg.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 13 May 2020 03:22:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589365367; cv=pass;
        d=google.com; s=arc-20160816;
        b=OuclXeeh3tgb0HKcp/u7TygGNHLT4meocos+OgKgA6qqCVXl150DnmSWw15fJ0tQQv
         PqZ0t+3F9Rd+/yNBuCexruMysITeeluEwA53lG2AHHSs6RnpP8ZVg321yQI5ClvE7KeB
         y74l+Jl/lTibgngXjPIUd35RTIJd43Av8RkoQf+MUP8dPk5MDqLWRyuo3wqj1McjCPty
         TPYvMRCb4ixLulX08HseFHPSWtK4CK3lUJo9dejg+wimnQk/nCFCStkODkXBXAJD8W9o
         rjqfC9vHxAf0SzHxF3FvDE8EkM38mu4+w2x/+sXrfR1V1nsw28lP5QtMzgMl11NlDOBL
         URiQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:organization:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=skZPw1CSf5uQ7VAFTYBEaZfotU9Mf3k+xTJwEu25eiY=;
        b=YBhzAlS7NXzAwpj8dssEOX7p1s6gZh2+BRVHr4JZ7q5AbJD8E4rmpLNlxnqCFn7J0S
         w/fBAOPGbbAm3w67/Itt9Egdb0m4KmbHYnnciwtU31lGHEo+8rjW5Caj7aTCnN53SGPP
         vcgqffykCCoY/mXMRpZxx9mXV6HLw7kQzZqw9EIp1amzGC/jY3PQnb0pppuAHadyTwkc
         Rlc3xWz1NwHK8u6XSsWzz0z3V9uOHsTT61VVgOAJjTGo14OqJ2Oz2Yd2s3UqxXSydv+U
         NRAEg47KJSOR/lIuEku+Nn1QwLDlh0OIVGFNIOrXH3wcW58ph6/Vaa/iyYPgWwNY5UMo
         FNhw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of andriy.shevchenko@linux.intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=andriy.shevchenko@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :organization:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=skZPw1CSf5uQ7VAFTYBEaZfotU9Mf3k+xTJwEu25eiY=;
        b=p7q/Y3ouV8ijMgvH3tblyt2C8ILFY67TzehDS1jdGN7fkWDtoOLdn9BQ6jWfVBrgAk
         7fWA9b+ID3Zh+LjVGBr2yawmpD5zL6zb/XqDH3sQgZU4gFOvSd1dNbZcsfvGKMNxXXmW
         9+OkAAHceFqqrRBR87jmHcaGPxIkF7EKHjGwD8pFJy0uJ/JyY5hYuxmjizJ1mZWD4Flt
         XIxT9T4PP1G6BNIk9pUEuYNFmTtAlouspZm4+j09LCPrQz4fT1/JkkuMPZBPOQrt0XYC
         7Z5nEl5EQwp/aDNmwBFNJhsiRZcP4a2XKm3/L1HlUWI45xr/RtJZB8g1lkO5sU3DTSt3
         oKGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:organization:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=skZPw1CSf5uQ7VAFTYBEaZfotU9Mf3k+xTJwEu25eiY=;
        b=ZD4XfTTmB4lNzDX59dgwRCF8l9GjNrNrvts4fbeq6QlWSBDUfmonFfgaMRQ3IQB2Fy
         o3PWbcyZhxhAMf179BaDC0dG1ZrliaIf+oB67UZ3VciDGm/zqYbMnuwnJeVP/75Lrd5O
         79cICflujO63a1jrkoUa4s2PDRNknbLf6moyykJw5sD6my2jOH+bemcXoe3nMAADLcI8
         xDfwxfJT2cP7L/OHYsnoETpmbAiXEDkGcVw0PhU0U/UKbQ+QXf9ZQo8nDMFQwbPUdTCp
         L7KcXAvWIoTQo/PStqnfUGUsZVF0/0F8bHQZPyfDWWa9te6OttO4LueDIEEfcUMtGoP1
         iwOw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZrAK2SS2VWrBZJGVaLpUuXftwQG8Ai/PQk4Z+Wzga/Eopm4Xmj
	NwdMP7Qa8T9AZt8ZfwZ/pt8=
X-Google-Smtp-Source: APiQypJMHYZeSoOsfCHdYsVMEbmKwdpELiH7uKP9VdFS0ELmdw1EIfxLGprrd8gi6PjpioPDtv1VzQ==
X-Received: by 2002:a4a:86cd:: with SMTP id y13mr12619547ooh.87.1589365367496;
        Wed, 13 May 2020 03:22:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:84:: with SMTP id s4ls413886oic.2.gmail; Wed, 13
 May 2020 03:22:47 -0700 (PDT)
X-Received: by 2002:aca:f482:: with SMTP id s124mr26782818oih.128.1589365367134;
        Wed, 13 May 2020 03:22:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589365367; cv=none;
        d=google.com; s=arc-20160816;
        b=WnuV/EtFtMc8B0nsJZLusB/YyzxT2sKd9kxpcDtzSVBUAJ8gYtgaq+3jpVa4eL9jMp
         lmul6PSLPb5cm9F9XUNs6kZo4hPQ104OK8NevgyJ/S1+GaUW2Xpy6YW9+ZTfk14MHHcR
         ddftsId/JRhlP32/3E/xw13f/lUJFLwmHkoxkJr+9G/xHW4y/ZkwOr9RCK/Es/p3wDzN
         2W/LhKa+nYcug+mZ4l9DfNWyleMoogFFYvr3tWYnttEDSfO6BusxmrrhYmoxw5XGcLtS
         ImAa3zYUUCxMZ0mkLEQQco9rTFuba/xyWbW+GkCe3VtKInRbC1l4F3eATDSeVGzCxo6z
         rEXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=organization:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr;
        bh=KhRDsARQTHrJiTMDIrvgCRoRWQwRwYjPfFk5Zvxx23g=;
        b=HdF9DmCiUdz+QbVGddJ8f8AuL3RImvDDsKs6033IW1PcongIPXZdp6TurbEniIxAwo
         NopS0f9NgR3RKKVkK1VTq4R85BqLMFvjzqqRjNMoA+a2/bDDi/QxfJWh1BihGQuFNST2
         WZl59Ls9WlH6B9fgDWfNChYmNmiX+MFI+3eBzVbvi4L+AAn0YkOPdFUXrW2qofyTFUCo
         KVYykBghN6LaXXVYauR72K/LDt7QfOaFkRzQkc2NZ+RCwDeP3XC3jg+UduKSeg3yji89
         A3s0q3rIe5uJvC5zVvd2Jx/NMrzYiRvNPwXKTZnFjPTv9WhlroInTsLFcPMZzT/d7Eld
         MaCA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of andriy.shevchenko@linux.intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=andriy.shevchenko@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id w196si635355oif.4.2020.05.13.03.22.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 May 2020 03:22:46 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of andriy.shevchenko@linux.intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
IronPort-SDR: EoqLyxM46hCL4nTqt+WuEwPRKmTxbEJitonifzwFFPCokkOGwNlTfta+kDHiXBNu3Hs0NwT/6K
 lttxhPGmt9CA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 May 2020 03:22:45 -0700
IronPort-SDR: 6+Rw5lLxqdA9uScyogmeQV5iOUc2WT5NFeSreF85uIusSJr4GHOVlMHTkkXkgB25Cl2FkYlB6C
 wHvbJFvw3cvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,387,1583222400"; 
   d="scan'208";a="464083641"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
  by fmsmga006.fm.intel.com with ESMTP; 13 May 2020 03:22:43 -0700
Received: from andy by smile with local (Exim 4.93)
	(envelope-from <andriy.shevchenko@linux.intel.com>)
	id 1jYoXG-006POZ-NZ; Wed, 13 May 2020 13:22:46 +0300
Date: Wed, 13 May 2020 13:22:46 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: kbuild test robot <lkp@intel.com>
Cc: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <bgolaszewski@baylibre.com>,
	linux-gpio@vger.kernel.org, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com,
	Serge Semin <fancer.lancer@gmail.com>
Subject: Re: [PATCH v1 4/4] gpio: dwapb: Remove unneeded has_irq member in
 struct dwapb_port_property
Message-ID: <20200513102246.GL185537@smile.fi.intel.com>
References: <20200512184513.86883-4-andriy.shevchenko@linux.intel.com>
 <202005130651.mJCyUboB%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202005130651.mJCyUboB%lkp@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Original-Sender: andriy.shevchenko@linux.intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of andriy.shevchenko@linux.intel.com
 designates 192.55.52.120 as permitted sender) smtp.mailfrom=andriy.shevchenko@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

On Wed, May 13, 2020 at 06:53:09AM +0800, kbuild test robot wrote:
> Hi Andy,
> 
> I love your patch! Yet something to improve:
> 
> [auto build test ERROR on gpio/for-next]
> [also build test ERROR on next-20200512]
> [cannot apply to linus/master v5.7-rc5]
> [if your patch is applied to the wrong git tree, please drop us a note to help
> improve the system. BTW, we also suggest to use '--base' option to specify the
> base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
> 
> url:    https://github.com/0day-ci/linux/commits/Andy-Shevchenko/gpio-dwapb-avoid-error-message-for-optional-IRQ/20200513-025227
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-gpio.git for-next
> config: x86_64-randconfig-a003-20200512 (attached as .config)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
> drivers/mfd/intel_quark_i2c_gpio.c: In function 'intel_quark_gpio_setup':
> >> drivers/mfd/intel_quark_i2c_gpio.c:219:19: error: 'struct dwapb_port_property' has no member named 'has_irq'
> pdata->properties->has_irq = true;
> ^~

Indeed. I have that removed by other WIP patch in my tree.
Thanks!

-- 
With Best Regards,
Andy Shevchenko


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200513102246.GL185537%40smile.fi.intel.com.
