Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBXENVT7QKGQEMDXN75A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CBB52E6FAD
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Dec 2020 11:37:18 +0100 (CET)
Received: by mail-pf1-x43c.google.com with SMTP id 193sf4381742pfz.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Dec 2020 02:37:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609238236; cv=pass;
        d=google.com; s=arc-20160816;
        b=kM/fYMvKV47HzW0xIQPXrWtU8YU7d76G40vtWY80Lf4KT9i6AcsnZYmebEMJ/nZGA0
         wfFvBtVEzvjCBEjg4ac2OIYOEpJLOJST5qjMhNseukILrNb0lixqhf9hKioDLvJpYfoi
         69esGJ21FhKHjRHIhj/wef311w7+bp+TyaNwCkItvUIWkO24xdGX6H07ptc6WxBpIDzL
         7COvY2EIQMSMYbH7G0PX/RdbWQ/R7sdHUDkc7b4MrNaApDQQhQnHlF/zq803nIxzoKr0
         GagfRzhM+aH10tl2gKeG6c4SYLRHKAZKeLLRjPqAWOZHi4lkbXgBITZhethxwYQtJyWh
         OjCA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=opB4n2kkxzNJaNS2xRXNHOuhjL5TxhVN6qIx9Ywdph0=;
        b=YLSTHCjxhdRGnAqNsANZxYvgNSosullYUQfyI53Mf7+YANYgpArEhTCSlRmYDUsJp3
         xe0f8oCt5KvmRjN8vH78iQ/WKnyT8yUg5nttNTUXUTPnIrt99tJA0Su+PTj/c/EcyKDH
         9RPeEAQtLkmh1MgFZC8bBx/sh332eQCnO9Ukk/HOgXJclTkYV9rAU/Zl/O5x/pOCbNVk
         m1NehoLA+PqoIyq491qCwJcgDkhNUo79f+G2Jz7dfP8nCZKY6kC2WdDWTiXQ5KFiNbut
         Rmq9MoDXfy6wLmtMsCXkqt5cW1hgzaHCeZs0oGHg3iNWl41D0+KPcZ0u3QFgPzXLx/QR
         nD0A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=UsD7T7wX;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=opB4n2kkxzNJaNS2xRXNHOuhjL5TxhVN6qIx9Ywdph0=;
        b=h3B++KuivG5OgMVVWyHB/I5cSuouVHP7ljsngfNlccWoZRvIL7Uwl4zrO4JBoC6nMS
         Sr2exTGLDIi6oDt+w7hFwylCdrkAFLrn7SPSBt+LV9kWEHR+WtHOWsIi+0Ax+V9N9Ckq
         t3lVbx7de3/iEDPwimYMksZuHScy9bM7W8+NJVo3xZICCt3mQAPE/CuY1Ni8bdkw+5LW
         Jou4oaznR8geCc86aMUjVYVIkJx2FppsPZXExpvp1bNj/MPJWt93y2hDxsrChMIvnMkb
         Ome+VtRb8DuDr8K3mr3/kjHf92V/irYMrdB7zxfCqL3ZcXy7Y8xc06b/ythDXwkjtAfb
         ASNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=opB4n2kkxzNJaNS2xRXNHOuhjL5TxhVN6qIx9Ywdph0=;
        b=BBDpFakqActoZwvTPuQFDu/FQ2ZiahsHgT6pMjdjPZ/SmIpMabNUo7+H+RN+SPMBlg
         f0fOYwYTeePu1hlnRygQXNLgKkuqwWxbbcnTDKCORWqFwD3bmT1SO3f3EVQzo5HMvZyI
         hXaG/OFrqt0v5v6fSV5dDXRFeFwPrsJabWY6/mjf9iAY+2tEpwnqNsFVw/gHn43/+XAC
         cmQK7vu1+guk1w8yGAlcOMa/baGYSBhZ66IXRywFi1IF9jQn6Efnwb/kjTvauG3HSv5p
         sCFJYIFnQiFLPpa6MOKUfNQgG/kXB1e5/nm8opUNMykRtCABD0slu/EdB82es1S0gGtE
         WJVw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533bzwbvFCGH7ftZSjMZtNApWVITvixMwCtqDtwl0mPp/MyjudKZ
	4tabhKSqbXjMIcRWSRjiQws=
X-Google-Smtp-Source: ABdhPJygtD3UKRvLMgr6AGn7Tj0OgBsXC4QUrzHhGbNBJoN4lLK7W/FBjZpJEnEnoW/SozBWEtjv4w==
X-Received: by 2002:a17:902:aa49:b029:da:e4a6:3934 with SMTP id c9-20020a170902aa49b02900dae4a63934mr48061752plr.42.1609238236586;
        Tue, 29 Dec 2020 02:37:16 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:bc47:: with SMTP id t7ls1177370pjv.2.gmail; Tue, 29
 Dec 2020 02:37:16 -0800 (PST)
X-Received: by 2002:a17:902:d202:b029:da:d86b:78be with SMTP id t2-20020a170902d202b02900dad86b78bemr30022993ply.0.1609238235959;
        Tue, 29 Dec 2020 02:37:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609238235; cv=none;
        d=google.com; s=arc-20160816;
        b=I4W6Mp22d4P0DDl5QLxtses7PiDuD7kcT6PupPmvN51fTs3gYx2rqhch3RU5qwVhfF
         xnN5/VJJ8ibxrdfAzcZzQY4UP9HCtYH9wrYg3VOphduIIx8r0mJuPSYHq1UBp8mVdA/h
         TQpdDvKxnH3OhTXcaTvdh7Pv8d5ojBR9g51lDRPAUAN2dQwkDTqAwxrswWljUZtIjKIp
         cP3FWvoMrzrRzNiHFed/yf55GTK78AKUZQDCdv0C4CaVrt3Z8XMUbhMZ1zgI2xU0Bst6
         DFUGBYQu5uJSBCXbQ2iAWPx0whnmUZlTGXqdqczw8eSaw9n+85cH4M8T4imjzGBjP44P
         atnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Xtq2ja0YI4zrpsNS9l7IP5UQZAm+bluCuRxi32fqCB4=;
        b=utGTDMJBRx1Q2xdC9eyxgL3e5JuBIChjR9BOfd9iMCVDAdLApyX9LFlpFl+1DXla81
         SDZ3KAQNdTT/k/6p05VEN1LJNmZyiD27b+mMcIaDxXaL4HxfuF34dsPGyVRQjs0tT51x
         FYfy01sWY0lQ+wB2MoHVuEJSXZdZOvjhB/Y0SB7/lqRZdXaJt7FuXpQ5fwC7IH7yA7Jr
         IAwyTW/w2Y1te4HqT0rjmLLu4kq4X8aT3UescwBrSdnwBmY4aRhR5CXwzFGV9+VXwEps
         YDZCL/Zxio3VodGQqjUo+jbBQBp1IcQf5nR8mryFsL35BfoLpItTBVkqgmFh0z7FJs8Q
         rOuQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=UsD7T7wX;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r142si1743975pfr.0.2020.12.29.02.37.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Dec 2020 02:37:15 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id E1B83207C9;
	Tue, 29 Dec 2020 10:37:14 +0000 (UTC)
Date: Tue, 29 Dec 2020 11:38:35 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: kernel test robot <lkp@intel.com>
Cc: Jerome Brunet <jbrunet@baylibre.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, linux-usb@vger.kernel.org
Subject: Re: [usb:usb-testing 8/8]
 drivers/usb/gadget/function/u_audio.c:248:9: warning: implicit conversion
 from 'unsigned long long' to 'unsigned long' changes value from 4294967296
 to 0
Message-ID: <X+sHKyfBnrT/8dIG@kroah.com>
References: <202012291638.QiDQi3Gs-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202012291638.QiDQi3Gs-lkp@intel.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=UsD7T7wX;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Tue, Dec 29, 2020 at 04:38:44PM +0800, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usb.git usb-testing
> head:   32510cf5e554e8f2cecafea8b8cc11daa4afb9e6
> commit: 32510cf5e554e8f2cecafea8b8cc11daa4afb9e6 [8/8] usb: gadget: u_audio: factorize ssize to alsa fmt conversion
> config: arm-randconfig-r003-20201229 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project cee1e7d14f4628d6174b33640d502bff3b54ae45)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm cross compiling tool for clang build
>         # apt-get install binutils-arm-linux-gnueabi
>         # https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usb.git/commit/?id=32510cf5e554e8f2cecafea8b8cc11daa4afb9e6
>         git remote add usb https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usb.git
>         git fetch --no-tags usb usb-testing
>         git checkout 32510cf5e554e8f2cecafea8b8cc11daa4afb9e6
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> drivers/usb/gadget/function/u_audio.c:248:9: warning: implicit conversion from 'unsigned long long' to 'unsigned long' changes value from 4294967296 to 0 [-Wconstant-conversion]
>                    ret = SNDRV_PCM_FMTBIT_S24_3LE;
>                        ~ ^~~~~~~~~~~~~~~~~~~~~~~~
>    include/sound/pcm.h:170:34: note: expanded from macro 'SNDRV_PCM_FMTBIT_S24_3LE'
>    #define SNDRV_PCM_FMTBIT_S24_3LE        _SNDRV_PCM_FMTBIT(S24_3LE)
>                                            ^~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/sound/pcm.h:139:39: note: expanded from macro '_SNDRV_PCM_FMTBIT'
>    #define _SNDRV_PCM_FMTBIT(fmt)          (1ULL << (__force int)SNDRV_PCM_FORMAT_##fmt)
>                                             ~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    1 warning generated.

I'm dropping this patch from my tree now, thanks.

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/X%2BsHKyfBnrT/8dIG%40kroah.com.
