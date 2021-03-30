Return-Path: <clang-built-linux+bncBDA5BKNJ6MIBBQOWROBQMGQEM4MEOCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F90E34E415
	for <lists+clang-built-linux@lfdr.de>; Tue, 30 Mar 2021 11:11:31 +0200 (CEST)
Received: by mail-yb1-xb39.google.com with SMTP id d1sf7017909ybj.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 30 Mar 2021 02:11:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617095490; cv=pass;
        d=google.com; s=arc-20160816;
        b=bytmmKZV6HUKhOFOLEMsOOuUB74HNAc3Z2i7cH/hAQaOFZ8Gxb4TAvxxpcTRgUT+j4
         rBJ92fGOVzGeZ7wV9Cq+JNvWx9HnpW83iMPHO9EeoHFsInqSvGHA3VTOAxDG6sz+jGDj
         dpQfLooXqiGey/BaQ2QDWXtjj4pqLGh3wDS5x6PM7CpqQqSrRSydoKXeBmFMAVmAWrEQ
         mmIJhD+avjGKg30AmwhKlz/mIFXbj0+1ogJCe/aZW2blZAdZC7rgm+L39j4ha6wxGpcB
         17FbhMc1wbUrLgW0z1toWMSMMDSmsVEZzdnLiksrGu+S0fO4DNkV5xSxM6jmVv7OTZMZ
         QB3A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:organization:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=nflyOFAskCWCi1r7nvdDPTNug1cC2z99ljclu1iv2xk=;
        b=gBxa4uDGhzbA36Je5fN+c8e9EcZPDK7HbvOywOMDHU0TkcIIhF2546o/c7XoWb8B9R
         kxo9WbZeiWGIftzsv8m+/Ox47Pb6tlVd/QFIKoDMeIQqFieZUU0rI0gVcqZKDtzTNGY8
         O5VMLvSQ9dmqN5BNCPYnBBaPd7LuhayrI68ZBiTMBwQQz3+oJBKA7/RCtXrdcH9XlsJy
         3l+ONYegj4QboYoxHfTkXWRB1iqYNTRRcUIxUKBEumIDnEdlDcYEMWz59I5jY4hETCRg
         peLMs25DYBCE8ChV/F5Fcod/8k6H+yhoGtYK4oYPsp6Yf36CKB1w0I/Ip1/m6zIbMImx
         xl8g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of andriy.shevchenko@linux.intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=andriy.shevchenko@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :organization:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nflyOFAskCWCi1r7nvdDPTNug1cC2z99ljclu1iv2xk=;
        b=NMuhtdu80Vdco3xXkFqkVXosLfIIRvsgDz6x9og1Nhntp5E1zL9zL5stIhPK4YPKzi
         D0FLuOv1MTGtdU6qRtEqbQEdXRYfAVupMRqr0fYRZz/8gbsPzvaZLADgZIGbhvMuWVFK
         HrRXVJqx6d9hRGPcESPqXfdIg7qfnscfLfor8Z8z9U1k0ZPdfsFphbmYM6VdYCF2CGJ1
         5eOAgF5xdaLnUd0wcromXw3XFtAGN6PJgWKleP1ke7fYTLONcvcvzWLsk8DKOzfgrMpU
         cNIgQqm7Xw1rKxSQ1MjL3NAm1AujnCR2u+qcRG05WQ/8ZWqEcCTGYfGMWRtmwyIimSBT
         madA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:organization:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nflyOFAskCWCi1r7nvdDPTNug1cC2z99ljclu1iv2xk=;
        b=eKVO/yFHVI0FImxg5Jkc2i88NZbFlzMfBEfCAKjopHASn6RL+lzoAcvn6ZPBIMc6HP
         iE0/VXydqVNQAcut9QgT1mUC97h+0K68OTMLdaOihVOrqjf1zFqer5M2VQg0elHFbs17
         IAI5QOLkne7KgDv06FqUhM1CY9NrZujKppz8ncYZbbgWh287G5QtCbNeInG8S9R5jspw
         ITkjS0yU/UEKF5J63ZqMqS/aO/bGG19Q/vTWLBpPGRoXZpRl+1wyCoFyO5nOxML/FWof
         pLEWcDFCJx+WVhY5Fo92oOoTn79n9m8swxHPRxAqhvwliBO5XMghbbe+uy/tSzYFIIch
         SZMw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531USxZO2k9Dn0a+8MpyrLGIk9vXm9lLtcJ8EJqwpyXIvHTuZZ6z
	lcDhbF6YPnIMt0oMFhFLK3w=
X-Google-Smtp-Source: ABdhPJxjL31s4o8ztD/bDH7rOWJad2lHU99fQrmDHHEUGYyqqfDcCeWj+5io6By5UBqZNnF7stDJlw==
X-Received: by 2002:a25:d89:: with SMTP id 131mr39764501ybn.481.1617095489937;
        Tue, 30 Mar 2021 02:11:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:19c4:: with SMTP id 187ls3396726ybz.7.gmail; Tue, 30 Mar
 2021 02:11:29 -0700 (PDT)
X-Received: by 2002:a25:7107:: with SMTP id m7mr48075861ybc.55.1617095489508;
        Tue, 30 Mar 2021 02:11:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617095489; cv=none;
        d=google.com; s=arc-20160816;
        b=B89b8Ij/ZXsO4BFswvBLg/WBgKPlu8L5G5tL7qPlp69nYKOiQSrlfph/AxBX4+bbI+
         HlEkI1icNn2tvvEoHx1+ZM9Ky90gB1nyKSL+1u740+ceADci9lGTJIoPUOCmGd5foIW5
         xUw3e7e9nqCxdhqK1E/zsSIfzMn8JiOmciyjcjaqgYnoy9C1xUQW2fWK03GKaFcfyQZ9
         SJA1NdmhkIDr5f95mbllRk1YDN4Q7tuP2UOH8eAKBpk1sG0ZpQ2Zl4XAUwxkR0YSWnaJ
         yYU7SwxdAjqyzBG9PI2/O5VUHssGfO/aruLbaCaGBJEe7Zg5M8RMBygIu7qZs1VuJPdQ
         nKKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=organization:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr;
        bh=qRhI3qZ/cg2q88i9MzN6CffPASgsxSO3phlClAzo1a4=;
        b=UaVq9MQOlFSt3r1C7z0ERPlMP9Rwsw5Du2CAtMXfouU1tvx8v9o6zWlJoyLNrfOATs
         TXqbzug+ngL3TejlO9uze0x8jP4DsAEHlEESoTeSxmDCKxJNPmTh7ldy36G5NjzG/3Qd
         4hP+vPk1cs9XyCq0bdhnS+W9hc3jT6V8butydo3jqZ7Yl8NK0EenK9i1FCVGqOCjesck
         FDY1F3LbgbIDi/JgxQD2RsaF/QeJjZHD+027F0A/xg9DRxrmrE/z0Bp8ZXYmn/+Baq8n
         pOFCgB8Q6onUk0Wc+WEacceQJdwGHSlySQZKP3SXgQCGyHp48i3jyXuAE2fcWPg775ha
         8Cnw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of andriy.shevchenko@linux.intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=andriy.shevchenko@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id s18si1089287ybk.5.2021.03.30.02.11.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Mar 2021 02:11:29 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of andriy.shevchenko@linux.intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
IronPort-SDR: DJBg53ou3IXCPXTufsg3GSNzZfD+spodfOB5X3KhJGW9qqDINf7zFW0AAuZFZdKjtkWvAnrYDd
 tvH8siqZFQyg==
X-IronPort-AV: E=McAfee;i="6000,8403,9938"; a="255718518"
X-IronPort-AV: E=Sophos;i="5.81,290,1610438400"; 
   d="scan'208";a="255718518"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Mar 2021 02:11:27 -0700
IronPort-SDR: O0sJ8Xyqkh70WaHzZKdmtJsXz3DLYaQQNQSefRmwVolhxJHoG4DTwSmhiJJJ3rISvRnCwbmro/
 cIlGf3oyt+Mw==
X-IronPort-AV: E=Sophos;i="5.81,290,1610438400"; 
   d="scan'208";a="376768019"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
  by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Mar 2021 02:11:26 -0700
Received: from andy by smile with local (Exim 4.94)
	(envelope-from <andriy.shevchenko@linux.intel.com>)
	id 1lRAPD-00HHjH-2v; Tue, 30 Mar 2021 12:11:23 +0300
Date: Tue, 30 Mar 2021 12:11:23 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: kernel test robot <lkp@intel.com>
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
	kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Linux Memory Management List <linux-mm@kvack.org>,
	Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [linux-next:master 7313/8469] drivers/gpio/gpio-sim.c:388:34:
 warning: unused variable 'gpio_sim_of_match'
Message-ID: <YGLrO9lsfvnWYY5Z@smile.fi.intel.com>
References: <202103301259.dhlOOcXV-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202103301259.dhlOOcXV-lkp@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Original-Sender: andriy.shevchenko@linux.intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of andriy.shevchenko@linux.intel.com
 designates 134.134.136.100 as permitted sender) smtp.mailfrom=andriy.shevchenko@linux.intel.com;
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

On Tue, Mar 30, 2021 at 12:15:04PM +0800, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   9d49ed9ca93b8c564033c1d6808017bc9052b5db
> commit: 3f0279eb9e3767f37939358a42054c226503233a [7313/8469] gpio: sim: new testing module
> config: arm-randconfig-r001-20210330 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 482283042f795ecc27838a3b2f76b5494991401c)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm cross compiling tool for clang build
>         # apt-get install binutils-arm-linux-gnueabi
>         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=3f0279eb9e3767f37939358a42054c226503233a
>         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
>         git fetch --no-tags linux-next master
>         git checkout 3f0279eb9e3767f37939358a42054c226503233a
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> drivers/gpio/gpio-sim.c:388:34: warning: unused variable 'gpio_sim_of_match' [-Wunused-const-variable]
>    static const struct of_device_id gpio_sim_of_match[] = {
>                                     ^
>    1 warning generated.

of_match_ptr() should be removed AFAIU the case.

> vim +/gpio_sim_of_match +388 drivers/gpio/gpio-sim.c
> 
>    387	
>  > 388	static const struct of_device_id gpio_sim_of_match[] = {
>    389		{ .compatible = "gpio-simulator" },
>    390		{ }
>    391	};
>    392	MODULE_DEVICE_TABLE(of, gpio_sim_of_match);
>    393	
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org



-- 
With Best Regards,
Andy Shevchenko


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YGLrO9lsfvnWYY5Z%40smile.fi.intel.com.
