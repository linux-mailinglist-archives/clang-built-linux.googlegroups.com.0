Return-Path: <clang-built-linux+bncBC4Z7UNE2EIBB26AZT7QKGQEZOD6CCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id B0DE72E969C
	for <lists+clang-built-linux@lfdr.de>; Mon,  4 Jan 2021 15:04:27 +0100 (CET)
Received: by mail-lf1-x13f.google.com with SMTP id m67sf17073965lfd.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 04 Jan 2021 06:04:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609769067; cv=pass;
        d=google.com; s=arc-20160816;
        b=GcrRbnYO8rnVZFR/0F2i5vHpfI9887XKOOz86bmd4+2Jhg8yTvVsW0TCKuRV2OrY4z
         Tw2SzPLKHThLG6JAHVQsT4uzl3QbZK9Ltkv4wb1sMatb/CJzcianBDceDYDUOJu1GrpU
         g3zTD1ZulDmT4K4zRBEBBfnbomsQTiuy524Pyx1bbpH8YxXJ0sU0CbA4zWDiDzbq0UzH
         qihTKAh6jeggu+G9U9hUxcSu07RvXXKiJLQmUHLLmjczQmmuYiAJibWyaMRsH34eW8am
         NkDVpx0TgTw7rrye/971aac8dOFnzaQ9U8CsRenVad1e+qXjT5R5QytRBSzubfqjL39u
         enHA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:date:message-id
         :in-reply-to:subject:cc:to:from:user-agent:references:sender
         :dkim-signature;
        bh=FYQCItxSGXeOAlJOMN+L6z9IFiytz3DpWZQb4wlxqEE=;
        b=nY1+bNUI2m8s5NWMd2i2bAdBO3TUVqygrmcTnfeTO8sh/VJjcZihPRA+EqvTW0ktay
         BPoleg+EtarwlrmrOvNRPEm0GUx9w8RTCuud7KZ1pkQH60EQqCEks8hyrLzUQFFPDpQs
         QGKvXUuyWN+ekKajZa/zRGpUALWwzW4jIAaArIPV7Rk2UZ9WRcro100FsLXOeXeKyeBU
         0XWBYsUXzx7eK+F1Ad7vN66TR5TX1E/uhSg//G+nP4Kp7EP2GpRubtscApp/LkRmcvbk
         iaC1YUfaCbek2UyhJ0lNdqS1WMFJP4/gXN2QuufQ7HvvFSOxWPfRXjfmJRBsX9gM46Y2
         wHgA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@baylibre-com.20150623.gappssmtp.com header.s=20150623 header.b=tE3QbhnO;
       spf=pass (google.com: domain of jbrunet@baylibre.com designates 2a00:1450:4864:20::633 as permitted sender) smtp.mailfrom=jbrunet@baylibre.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:references:user-agent:from:to:cc:subject:in-reply-to
         :message-id:date:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FYQCItxSGXeOAlJOMN+L6z9IFiytz3DpWZQb4wlxqEE=;
        b=Rm2CpuHlpStgEVBqKT+o3AkVScDFBtvO5OU+CNQfp6NVENJp3tSDgUEuK0Vq/z5Nu8
         22MTjgqq+u4n1CB3DqaCrRMxmo7MxmCXz1yRCZibZoyosUvO7bco+GoH+xnqL+yJJyKb
         eAkN+0FmOm1PWz0DiyIknqECC7yVb//Sa4hZQ5VqRpu7mFHLFznjWo2m8U0Ym6hy7wyX
         mM6qo3CKuIozH1qA44Z1d2S2quZiWSv2IXu2+Yy/AzT9iQE3FtUhMeSBS44r8m80EjjT
         k8PjKS3OiGn/RmkPvBkqjkiYq1/E1JF5+bGoL/dtQJ8Vl7hsJD/ot4GewSXxgtLa+hQa
         AgFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:references:user-agent:from:to:cc:subject
         :in-reply-to:message-id:date:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FYQCItxSGXeOAlJOMN+L6z9IFiytz3DpWZQb4wlxqEE=;
        b=JlZpDRRJSGu4rvnL6lDgRB7/+yxwzNek3LHgrXKwCZ5D6CS4FF5YgQNleuCNmr8OkZ
         dy9z80MONn9MfvoDmWjBpdLFZib74uN/lb0GyOWZ9aPzT+Awzr6yCcaPe8FCDTEPx+KK
         9bAk2rNXaZQBhxgMqv9YJg87N17Qhn9VIXevrPvbaykQEcUSJC2BvTBGtg7nBieTXoDi
         apQBasu0Wzf12No5ee8Q0lWJx89dlKbCCWWDNA5grIThgvssYmkqW5eYpQb0bx4y1jH2
         RTtrgYBmNRV8Zu4Q5lko3ZZaEIoqO6ah7TfAblDhYm/wmRnIT1Dv3bN973kkZe/IVpOW
         zcAQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531aJThNBAlf+zKG53eFs+EQD8SMS3nk4vl0V8SByAo7MUPHtR73
	feMcxVBkPwo7DovVxhxPP4k=
X-Google-Smtp-Source: ABdhPJwYODb+YNr44xIsO2nsNEGwhVx9SgeKvGLT5IMA7J50IuKeOcueDFDxVPM57noJWafdnZ/MEQ==
X-Received: by 2002:ac2:5981:: with SMTP id w1mr34110092lfn.374.1609769067281;
        Mon, 04 Jan 2021 06:04:27 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8055:: with SMTP id p21ls14219795ljg.5.gmail; Mon, 04
 Jan 2021 06:04:26 -0800 (PST)
X-Received: by 2002:a2e:3c01:: with SMTP id j1mr33977266lja.258.1609769066137;
        Mon, 04 Jan 2021 06:04:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609769066; cv=none;
        d=google.com; s=arc-20160816;
        b=XJB0neyWzpbe/mv6nbwYQ9R8cR5pNLtrRWv1gb84LF9S7TU3ezktz8atjP4BiiCf0s
         EqKl4NFkq0NXGl2v14OINuh+6RE7pYargrtYJrFVbAtbbTkY/zbHbf81nGZc2y/ibF7A
         SIB2RcaZY9wqbdX813vC9m4f4GPzToDqBrowUf+29dFhzBdNncgsLBAg5ibbbW+2ERoO
         a8ypBXy8nWJVcz9VezpJPNifbhtFcmRo0Cx5jzi38LD6+BM763OprHvjUjiVFnp0iZ+U
         q6TPOq+Lbj497CM8zU1NQQgq3so8k73F0MbSe9gbpcnYo90xMf4LXwRvx5fcyxEcIfMr
         vTvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:date:message-id:in-reply-to:subject:cc:to:from
         :user-agent:references:dkim-signature;
        bh=BcFI2Nw3xVQxOuv9tvr4E6ehVLieVPuxYqFfccqeGX0=;
        b=McDzv5YUN4oOQeePbBEAnMMyU9n8TkaGpRwDH1VJwa8m8xcRZQpg+hqhZTepA7+uzF
         AQ9RRPwvJmDl55Z5BtZq8TWRA4B5swdNkaaan8/CcSr40jJYPbP70hivRWxrg086TpRI
         4b2rVLftdUMGMzKbq8T4G3fPt6l77NlgCzGt3xzrBXa62jFbamh3uNjYdP/gmZdjJmB1
         h/MM6ukYXE+EQSCMftUBZy6w9V/gGsK4WYwlCxo4/r6vkuzTLHdp9gwX+6wdhm2CS1GZ
         qVLiCo08PNVVFGPxxooW3rBAyyBdWJ0Sr+YeiYMtRpcHG9fnSWzXkDtxo/sIc9NTQk9h
         2hZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@baylibre-com.20150623.gappssmtp.com header.s=20150623 header.b=tE3QbhnO;
       spf=pass (google.com: domain of jbrunet@baylibre.com designates 2a00:1450:4864:20::633 as permitted sender) smtp.mailfrom=jbrunet@baylibre.com
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com. [2a00:1450:4864:20::633])
        by gmr-mx.google.com with ESMTPS id r12si1701609ljm.1.2021.01.04.06.04.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Jan 2021 06:04:25 -0800 (PST)
Received-SPF: pass (google.com: domain of jbrunet@baylibre.com designates 2a00:1450:4864:20::633 as permitted sender) client-ip=2a00:1450:4864:20::633;
Received: by mail-ej1-x633.google.com with SMTP id lt17so36916392ejb.3
        for <clang-built-linux@googlegroups.com>; Mon, 04 Jan 2021 06:04:25 -0800 (PST)
X-Received: by 2002:a17:906:f9da:: with SMTP id lj26mr65324472ejb.467.1609769065595;
        Mon, 04 Jan 2021 06:04:25 -0800 (PST)
Received: from localhost (82-65-169-74.subs.proxad.net. [82.65.169.74])
        by smtp.gmail.com with ESMTPSA id cb14sm23859541ejb.105.2021.01.04.06.04.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Jan 2021 06:04:25 -0800 (PST)
References: <202012291638.QiDQi3Gs-lkp@intel.com> <X+sHKyfBnrT/8dIG@kroah.com>
User-agent: mu4e 1.4.10; emacs 27.1
From: Jerome Brunet <jbrunet@baylibre.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kernel test robot
 <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 linux-usb@vger.kernel.org
Subject: Re: [usb:usb-testing 8/8]
 drivers/usb/gadget/function/u_audio.c:248:9: warning: implicit conversion
 from 'unsigned long long' to 'unsigned long' changes value from 4294967296
 to 0
In-reply-to: <X+sHKyfBnrT/8dIG@kroah.com>
Message-ID: <1jturwx0gn.fsf@starbuckisacylon.baylibre.com>
Date: Mon, 04 Jan 2021 15:04:24 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jbrunet@baylibre.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@baylibre-com.20150623.gappssmtp.com header.s=20150623
 header.b=tE3QbhnO;       spf=pass (google.com: domain of jbrunet@baylibre.com
 designates 2a00:1450:4864:20::633 as permitted sender) smtp.mailfrom=jbrunet@baylibre.com
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


On Tue 29 Dec 2020 at 11:38, Greg Kroah-Hartman <gregkh@linuxfoundation.org> wrote:

> On Tue, Dec 29, 2020 at 04:38:44PM +0800, kernel test robot wrote:
>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usb.git usb-testing
>> head:   32510cf5e554e8f2cecafea8b8cc11daa4afb9e6
>> commit: 32510cf5e554e8f2cecafea8b8cc11daa4afb9e6 [8/8] usb: gadget: u_audio: factorize ssize to alsa fmt conversion
>> config: arm-randconfig-r003-20201229 (attached as .config)
>> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project cee1e7d14f4628d6174b33640d502bff3b54ae45)
>> reproduce (this is a W=1 build):
>>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>>         chmod +x ~/bin/make.cross
>>         # install arm cross compiling tool for clang build
>>         # apt-get install binutils-arm-linux-gnueabi
>>         # https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usb.git/commit/?id=32510cf5e554e8f2cecafea8b8cc11daa4afb9e6
>>         git remote add usb https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usb.git
>>         git fetch --no-tags usb usb-testing
>>         git checkout 32510cf5e554e8f2cecafea8b8cc11daa4afb9e6
>>         # save the attached .config to linux build tree
>>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm 
>> 
>> If you fix the issue, kindly add following tag as appropriate
>> Reported-by: kernel test robot <lkp@intel.com>
>> 
>> All warnings (new ones prefixed by >>):
>> 
>> >> drivers/usb/gadget/function/u_audio.c:248:9: warning: implicit conversion from 'unsigned long long' to 'unsigned long' changes value from 4294967296 to 0 [-Wconstant-conversion]
>>                    ret = SNDRV_PCM_FMTBIT_S24_3LE;
>>                        ~ ^~~~~~~~~~~~~~~~~~~~~~~~
>>    include/sound/pcm.h:170:34: note: expanded from macro 'SNDRV_PCM_FMTBIT_S24_3LE'
>>    #define SNDRV_PCM_FMTBIT_S24_3LE        _SNDRV_PCM_FMTBIT(S24_3LE)
>>                                            ^~~~~~~~~~~~~~~~~~~~~~~~~~
>>    include/sound/pcm.h:139:39: note: expanded from macro '_SNDRV_PCM_FMTBIT'
>>    #define _SNDRV_PCM_FMTBIT(fmt)          (1ULL << (__force int)SNDRV_PCM_FORMAT_##fmt)
>>                                             ~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>    1 warning generated.
>
> I'm dropping this patch from my tree now, thanks.
>

Tested on 64bits platform only, sorry about that.
I'll respin with u64 which is the actual type of "hw.formats" .

> greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1jturwx0gn.fsf%40starbuckisacylon.baylibre.com.
