Return-Path: <clang-built-linux+bncBDA63QVIYMOBBVM2U77QKGQERE2EUDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13e.google.com (mail-il1-x13e.google.com [IPv6:2607:f8b0:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id DB8012E3710
	for <lists+clang-built-linux@lfdr.de>; Mon, 28 Dec 2020 13:19:34 +0100 (CET)
Received: by mail-il1-x13e.google.com with SMTP id c72sf10159956ila.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Dec 2020 04:19:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609157974; cv=pass;
        d=google.com; s=arc-20160816;
        b=delySJNtXLVt6hUvrTvOLS4TFcgcvqIzfa8HsN0zPcpdXPiRdeTjoaQlUaE2ghQfOB
         sAvK9xZ415jWQw9An0CE4Myfm+dLR6E5QBgHMB7uroNdcpweDZInQQyA3mny2cumL4OB
         reAv4QR8ZlTlOOGZlmax7c+iMxNBFOJrrsh9gxZbwsSgih71lTzQ3uWins9cw0sG5gyW
         5ua2b/rlKIfJdBFefqqqHmxQ1AXWm5qMT2tm69gpDayE2ib38chQP7R6gv6L0lVp5Pf5
         r6nwW0zgkgcnN5mpQfNu+MAVrzPw3FFlUc6UWV5aiWE/G97+1n3geVI7ZErd1THD8Fr4
         T4+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=If2JiRLvHHvTGaVVoVT6hGxV2YlsnHXNqOY4djViCfI=;
        b=qfJELdQW+ioyYKyDqPlihWPhBwrGSQJ4g88q0NaZ38DgLK3FGmSzVlN7M2WvejCex1
         bGztXpfdDtHhQkFs5FeqnlbxW04xhLCSnEzizPDSn6bURznS0NBDEzYuoqmP/9PbjCok
         JpHRaOQVJ2zFuagUQNL4WBVVsorUFPtPi55FZjBf5tc1OaqPooCRHAAxm9ez92/GwoHL
         pUVASRBm2siccoCNnk68X/0Yg7mS6ljzgsa0rsWKmJpZe8L+bI4kfCANmaOD8+v3LA5s
         2LeK+HBnyS+qI2WPqmAOl8MyJc8DdsZ6b0npWEAZVD2+iXcZNObgZBrQs4TyQIHA7fpH
         pigw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kifHkrVS;
       spf=pass (google.com: domain of sergio.paracuellos@gmail.com designates 2607:f8b0:4864:20::32d as permitted sender) smtp.mailfrom=sergio.paracuellos@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=If2JiRLvHHvTGaVVoVT6hGxV2YlsnHXNqOY4djViCfI=;
        b=odHSM1GEcSjQrhQ99NPDlRWQQCPh5zAuFAozLBw7QWJXzV1KGJMyZ8qsKgfIxOQDYP
         /lgyI/uvXXTwNcYOy5mt0d69r7LkJa1e2f924kG1jjR6blJ3JdfGALKd/an3kFKNXvZg
         D0pUnLdpXY6m+TFl83Xusg6yK8XMx4phq9J1KV+8Qt8fN7zXU4dniQ7ai1WE4B1+wwTY
         YZtTo6EPsBmvS4pT7HiZzRPWikt/37aU4GkX8AnDOPSgiEIfXcadwQ2H1z1JmHIVtlD1
         SY/X70tZ9AVmybe4A3jh8poFx+XnpykRd+5AsRw+H+2mDGqk3z9TA1N/DK9PLQppa1AY
         ChQw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=If2JiRLvHHvTGaVVoVT6hGxV2YlsnHXNqOY4djViCfI=;
        b=UEOhvHgzoO3huvIV2GLVIbfr83dgi+Q9TDMUNp4rGdBcLmYsotydowEXLFjVykmA2Y
         VYYGbZBl0lZpgyAOfJOX0Yx3Y69tWZmR2VceumUg8ItXF8xKpEv92b+CyKCjjAS34eSx
         +VJlFvLBnV2gnqvXje5msBF3numgVXJXziqpfFFT3Cdg36uEWVRWHU6SPIW0PfoSuJhC
         Z2gfKvytfI5zjGHqOMJQssroDxQf2or1gAE7ACwR6LHDxFlYISKEmeH+DLh/NxMjYIOP
         AxmiyNr/kTGz/8sXy56HV/rLOJUY1FKgSHDHfH5gX9JIJkw5u+BT+KGcTf3z3Hbz4gcY
         A2ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=If2JiRLvHHvTGaVVoVT6hGxV2YlsnHXNqOY4djViCfI=;
        b=YiE+Pn6prpPkxF2VbJnESRDkO+6Tzz/DTW+ppwt3amm+zVNk2xHoArULCCdpV6ZjhB
         ud/bK6RwTzkkLbah4/paCtrPMusFhG0xsbMh/B3NdxpSM9Av7qzqeNqQthmRz2jCt9rM
         DIijNzmIIWhlLq8b7HfZe9NConppwgK16jFuRurb/lt6v6+JcUVBO1T2zcYGWxVZ8XgA
         PYb0ENWcBwN74zkclj1SqlLfsGosnnlxo8XIZHFcWjNB9sYV3yYgqBrDgg1StO7JnN+1
         7uwaHR24VYiIhtosljQ7NSLJf4AVy+w63u/Nm0VetUbCB00JwyKFkVAciMdwtPNWbtDc
         t4sQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532HODh9XaXFkX2h9PAxddqbAif/d24scTCXpS0wsoOD9Iv1ZxkT
	A7cD3i/4aGuAWOTk6H87uUg=
X-Google-Smtp-Source: ABdhPJx1TAgn7CPBQpYtLEmpZgV792SyEFKcjXExpIV8mDGw9mbBcfyAzqwlugMx0vHrZnIBbSWAJg==
X-Received: by 2002:a92:c6d1:: with SMTP id v17mr43354501ilm.156.1609157973877;
        Mon, 28 Dec 2020 04:19:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:9914:: with SMTP id x20ls8837631iol.7.gmail; Mon, 28 Dec
 2020 04:19:33 -0800 (PST)
X-Received: by 2002:a6b:f810:: with SMTP id o16mr36506702ioh.20.1609157973301;
        Mon, 28 Dec 2020 04:19:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609157973; cv=none;
        d=google.com; s=arc-20160816;
        b=E/UA4+rEnV8yMhREqX7JxmOts8XGeRDidteKxDw5aRi7qMJn+S7/4pC+pRYUJ8Arer
         aLYoxWzl8l9c/ilEYaYH6RZsv9IwRUacyuVYWHCscbOoTF7BK8FDT8fTmIhZDJFXFEsJ
         R29VSi40G853W2YSGVAh2wwLjvVBxCxW1Z854TJCaDBUmEuIY8miCTWVhDIaJJ0HwDbU
         oML2d2nKjtFQPuGYxhJSILoj/fmpBHPlz3MlbSCKnQbGAxPbURHx3T7W3u6ongB7SFF9
         Egt31f1NlTXEkTDMfsRMsd6kNO0Ppf9+SEEvZn+ohnWlhQEBp2WIN2zpzDy/J62xm4Ks
         Nlqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=kRRPWjvhb9GCGiPdnbC1lLZFrLRPu7On0IHDmAEES5o=;
        b=U0lkGj4+g5eCOhAZjdEEp6+1Wkbu1rpsvoJy15SMJmsJhTSjt00exLUzXHoeA7k8Jw
         qiN03/3pgpfh+Il6HzlAbU0o/Sp7QBMwReukPZtwHttX3TPmUK/QnR00ekZg+Bqj/MHb
         xjVcXR1b7qhox7hSj44FzTFxA3GaNf/5OYMnHIASzAWQQ/oNKQyytdimYk9LE7n4zyIf
         pb2eIOiz73bjCi4o0uWYnT/Oyo7wCT9EejutEnsdMRumjaKJyTQZN4qGKewnYyJ6aQ/T
         t46vFknu9mSyhbNLm5lRgsvwZMLJZggcxHXufMXni0y+atzXjha2HASKREJVNJwp1SbJ
         6LkA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kifHkrVS;
       spf=pass (google.com: domain of sergio.paracuellos@gmail.com designates 2607:f8b0:4864:20::32d as permitted sender) smtp.mailfrom=sergio.paracuellos@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x32d.google.com (mail-ot1-x32d.google.com. [2607:f8b0:4864:20::32d])
        by gmr-mx.google.com with ESMTPS id q4si2412327iog.3.2020.12.28.04.19.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Dec 2020 04:19:33 -0800 (PST)
Received-SPF: pass (google.com: domain of sergio.paracuellos@gmail.com designates 2607:f8b0:4864:20::32d as permitted sender) client-ip=2607:f8b0:4864:20::32d;
Received: by mail-ot1-x32d.google.com with SMTP id d20so8984059otl.3
        for <clang-built-linux@googlegroups.com>; Mon, 28 Dec 2020 04:19:33 -0800 (PST)
X-Received: by 2002:a05:6830:2144:: with SMTP id r4mr33060969otd.72.1609157972985;
 Mon, 28 Dec 2020 04:19:32 -0800 (PST)
MIME-Version: 1.0
References: <202012281956.yA1MDkod-lkp@intel.com>
In-Reply-To: <202012281956.yA1MDkod-lkp@intel.com>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Mon, 28 Dec 2020 13:19:22 +0100
Message-ID: <CAMhs-H8qN=PukxncoxVX6igvBScP-PU_=dGGiSmmLvMHpcDstg@mail.gmail.com>
Subject: Re: drivers/pinctrl/ralink/pinctrl-rt2880.c:365:12: warning: no
 previous prototype for function 'rt2880_pinmux_init'
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com, 
	linux-kernel <linux-kernel@vger.kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sergio.paracuellos@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=kifHkrVS;       spf=pass
 (google.com: domain of sergio.paracuellos@gmail.com designates
 2607:f8b0:4864:20::32d as permitted sender) smtp.mailfrom=sergio.paracuellos@gmail.com;
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

Hi,

On Mon, Dec 28, 2020 at 12:15 PM kernel test robot <lkp@intel.com> wrote:
>
> Hi Sergio,
>
> First bad commit (maybe != root cause):
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   5c8fe583cce542aa0b84adc939ce85293de36e5e
> commit: 518b466a21ad7fa1e338fa4ed9d180ef439d3bc0 pinctrl: ralink: add a pinctrl driver for the rt2880 family
> date:   3 weeks ago
> config: mips-randconfig-r012-20201228 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project cee1e7d14f4628d6174b33640d502bff3b54ae45)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install mips cross compiling tool for clang build
>         # apt-get install binutils-mips-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=518b466a21ad7fa1e338fa4ed9d180ef439d3bc0
>         git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>         git fetch --no-tags linus master
>         git checkout 518b466a21ad7fa1e338fa4ed9d180ef439d3bc0
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> drivers/pinctrl/ralink/pinctrl-rt2880.c:365:12: warning: no previous prototype for function 'rt2880_pinmux_init' [-Wmissing-prototypes]
>    int __init rt2880_pinmux_init(void)
>               ^
>    drivers/pinctrl/ralink/pinctrl-rt2880.c:365:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>    int __init rt2880_pinmux_init(void)
>    ^
>    static
>    1 warning generated.
>
>
> vim +/rt2880_pinmux_init +365 drivers/pinctrl/ralink/pinctrl-rt2880.c
>
> 0317d60de869786 drivers/staging/mt7621-pinctrl/pinctrl-rt2880.c John Crispin       2018-03-15  364
> 1d2d116a93f0e9b drivers/staging/mt7621-pinctrl/pinctrl-rt2880.c Sergio Paracuellos 2018-07-09 @365  int __init rt2880_pinmux_init(void)
> 1d2d116a93f0e9b drivers/staging/mt7621-pinctrl/pinctrl-rt2880.c Sergio Paracuellos 2018-07-09  366  {
> 1d2d116a93f0e9b drivers/staging/mt7621-pinctrl/pinctrl-rt2880.c Sergio Paracuellos 2018-07-09  367      return platform_driver_register(&rt2880_pinmux_driver);
> 1d2d116a93f0e9b drivers/staging/mt7621-pinctrl/pinctrl-rt2880.c Sergio Paracuellos 2018-07-09  368  }
> 1d2d116a93f0e9b drivers/staging/mt7621-pinctrl/pinctrl-rt2880.c Sergio Paracuellos 2018-07-09  369
>
> :::::: The code at line 365 was first introduced by commit
> :::::: 1d2d116a93f0e9bf0bca72da76a96edef8a1d36d Revert "staging: mt7621-pinctrl: replace core_initcall_sync with builtin_platform_driver"
>
> :::::: TO: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> :::::: CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

Already sent this morning: https://lkml.org/lkml/2020/12/28/16

Thanks,
    Sergio Paracuellos

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMhs-H8qN%3DPukxncoxVX6igvBScP-PU_%3DdGGiSmmLvMHpcDstg%40mail.gmail.com.
