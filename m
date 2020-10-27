Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBIP33X6AKGQEDKGUVKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3e.google.com (mail-oo1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A9F629A265
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 02:53:38 +0100 (CET)
Received: by mail-oo1-xc3e.google.com with SMTP id n5sf2125460oov.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 18:53:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603763617; cv=pass;
        d=google.com; s=arc-20160816;
        b=R7LUvNSuMIEsGjcCSX6ImW8hpEJfZ/WyB4vd3iJw5e5+H9N4yl42ppmf+Gh8k+VxmG
         iqcub9bBsEM4ZXuiImjGxMPbne7B6edPPOIYFLh/JZJmGZzxiTO4wum3VQo2VZxf1BYH
         fqyxdZEX6dSB5O/XMyx+Q0KdXTOQ+pVHUTGBStEKg5kT9K1cQJt7RsaVXPc616eHbN/e
         v1+0Oik8eO5utbtZJhuc0h8ltHdIIXz7NY2sXEJx/MTWiw6pLD9q3WTPC8Bkke+1KYGT
         thlkCRK0BhAfDQgvQKwvJpyFp2jUoGcA3XjFA1KLXixnw+uhzXN7NPbbzGeQfZySOkF3
         8deQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=a9+QQsMzmHMFQXSuCZTyBFlWxzUbGn0WgdKYDStCr4E=;
        b=Jm/TdJF0vU6woXSseUxEaY08br/EHYKZzPYPL8NSCjVT+tQNWeNUJD9TOWvk2kezGD
         uq+ADpEBee56Sep2xuC4hiXuJNYEjPiwljbVg5cmgfZMfkdyvL1hSVY4CkOHuIZv6hRq
         M7L7It6tvyqIuuPS+CiPM9qNqkHj05FL1LO5fqUTlxPWZ6utJc8szHsF8C6YnKrIqdsG
         RknDA9l1ZdWbuF79wnuZtzdr9qUBQmTfxxVaEUADQiT9q4DsVWGunzE7BdofmInOb1KA
         IL0Sxgqd4hnJEl7DYs2c07yRZ8HasImx9REwQR3Rj3JstGFf2b6yYEZUA6BwTDtfyr67
         9T7w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="amUt/D8W";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=a9+QQsMzmHMFQXSuCZTyBFlWxzUbGn0WgdKYDStCr4E=;
        b=TUxZJ64tdNpYbeqptsSBqn85lyY+/PoAuS4HHc2CC/qyaSmENRa/nx9iA1gc31imHU
         akAX2nrmwFr6q8iCufSPlMe1UZRmtZv2w1maNTMwMQdJeWXa8BltedpFWWt+tnF488RS
         /apsoxOwT6iE/mKpY4Vladz3qwwR/8Y3qcTfajkq0oORpBvt+fYNuTKkzLWDsGwm3FKB
         exLE47QnXUNpd/Mp7P38dZVmOpEz2gwFTVpMs5CSl6ER/gJdKoC3FSlQ+76qNnXjV30F
         UK1un9P1bm+fU5JJNlPTM5TPyR7oUM6DePABCsXvEr8Y/7bAfU2oqD2MzSam6y874R3/
         +5mA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=a9+QQsMzmHMFQXSuCZTyBFlWxzUbGn0WgdKYDStCr4E=;
        b=n83JW7EUdsFjS8ASUSNKH187u4447lRMmVUj5e4Py/e7qDutR/sawa7oZpMioMfxuq
         JN8bbzYhUC9bQBE/TYGtRlMJfUhukiSgT7f/8cANf2l1mL0KxHJosJSQi+a02abR0RFC
         JMy47nGlxERnkr6F0MU9Iq4eaLio6OZTidNn/SbQzTW/56yzoJ9akoTv9ydm+W49YAuY
         hR6LfhvR4Fj27JShcExvCTQoY1W+s+QC1c8o+Gv5EwNxd64+YAcaDfUOgZMmGjHvFfXz
         ZGgisE0vwX+H6Mr+u2BkzG1dpL0BDbaYPJig3ZOrw+mTkw8Jn2lcIvidp5gTvkTucvAr
         5bYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=a9+QQsMzmHMFQXSuCZTyBFlWxzUbGn0WgdKYDStCr4E=;
        b=Jr5KLtQCIzr7nE8MrQOuQJJ+IbXigbCfH5GGstPsDZ0rp74p5ygU7SC+LrgQ3/XpsF
         iZDUgRL64k64PeMq+Y8uZrsClNGPSCjLawgsA4/7aRypYwnn5QekEj6+sIK7C3568erT
         Tr0rgoIfYwMFkH/8PoGwpd7eEzUviauvdQBbe7+PzR/EIVrVVB02t3jzZ4LpbgVlG5pE
         ubSsAmnwqo8oxtv/YlUiXDir0ZAk18lNUOwoPZHlGH4+mXVIXL1aGzAT3gaJTG8ElMcY
         UNjwXW8AZHcZMDAMJzuCW6lHgfj+FXhjlOciM6y+2zSBjP3kwoMY0sH2bw5OkP5qh9k8
         oecw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5317J1G3WVjSZ51aPS1Se9wfw3T3ahUPPXi/PZmVWB5CZBre7Cvh
	Ak9dSoMgEP+LX5jIJxC01eU=
X-Google-Smtp-Source: ABdhPJw4q3uKldP9ClAhcJT+q/Ltmu/0n3YyY7tnm15fToFOdRPbaDIENXEGeDdneN7mBgSXxcXMbA==
X-Received: by 2002:a9d:4504:: with SMTP id w4mr13383318ote.36.1603763617569;
        Mon, 26 Oct 2020 18:53:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:20cb:: with SMTP id z11ls2619040otq.9.gmail; Mon,
 26 Oct 2020 18:53:37 -0700 (PDT)
X-Received: by 2002:a9d:744e:: with SMTP id p14mr6022131otk.135.1603763617253;
        Mon, 26 Oct 2020 18:53:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603763617; cv=none;
        d=google.com; s=arc-20160816;
        b=RL2jUNVhF0FbcxInmkhFDf4kaOhWoQsY91t+n2JGS43ZnL85DKHaWbM1tZm2a167bX
         8L+YHfcx5Dsce/shTPiKZ8BPLJ7vQtVF1DeKjlcmQWvpa7/8IcbTGk9h77dSPepUlWB8
         q9Lg5C+jpd13pvpeyYaD6VL9PaL4Siw8s+ZRhlBIrbD3cYLgac9VLPWiLAi81sw42tbQ
         s5VFjWBxMgcDlnSGw21ixzh0A0wwQXGIqVbkd+woAqnM428Zko0Ow9z9/N7v+zdfWkTm
         8MoWYzqGUB/NAnpnmglBFaZm2tbbhVinJ0K2vzkxyjjbCj5RcyN7iwj/z4KiT7ZVLaAi
         CR/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Jaq2W3xchM9KI6J/OXjGhaLPINcfLLrG9R/EockJfhY=;
        b=BwjBusKQzYMYRqLKrW7jqrvBCFE4NgNABRrrntA0qdAWg5PDPIjMT6SwTHjszVLhqR
         BiIqS0mOvpHQdR2+nZ4qCpwkqHp00p2uSxwCYPrnKKR/VjMsjdwNCZovxbNVkVrLFF1m
         w0YwSzQCPcyzb24h+cyk/zl6ZqIMUBTSsUcWMJ/9v5xjAD9ywiUt+dEkjZNIBYzNB65m
         3VlF0XMtXuSn4UxsSb13BGTQEHe2PGcnY877qO1Y2QXgkzPW5pACh5Ah7kPbixeErbPD
         WeiCpEAmYr7Y5d1ERlEORXGhVx2oj2QY1bjS4aGBrhykjOizqTdELV9+SYXRDJSjcqeo
         UvNA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="amUt/D8W";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com. [2607:f8b0:4864:20::743])
        by gmr-mx.google.com with ESMTPS id d20si7837oti.1.2020.10.26.18.53.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Oct 2020 18:53:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) client-ip=2607:f8b0:4864:20::743;
Received: by mail-qk1-x743.google.com with SMTP id h140so10387602qke.7
        for <clang-built-linux@googlegroups.com>; Mon, 26 Oct 2020 18:53:37 -0700 (PDT)
X-Received: by 2002:a37:6cc1:: with SMTP id h184mr16165qkc.18.1603763616750;
        Mon, 26 Oct 2020 18:53:36 -0700 (PDT)
Received: from ubuntu-m3-large-x86 ([2604:1380:45d1:2600::3])
        by smtp.gmail.com with ESMTPSA id z2sm7788367qkl.22.2020.10.26.18.53.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Oct 2020 18:53:36 -0700 (PDT)
Date: Mon, 26 Oct 2020 18:53:34 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: "Paul E. McKenney" <paulmck@kernel.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org, kernel test robot <lkp@intel.com>
Subject: Re: [rcu:rcu/test 76/76] drivers/dax/super.c:21:1: error: use of
 undeclared identifier '___srcu_struct_ptrs'
Message-ID: <20201027015334.GA842991@ubuntu-m3-large-x86>
References: <202010270828.0bL3aIGL-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202010270828.0bL3aIGL-lkp@intel.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="amUt/D8W";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Hi Paul,

On Tue, Oct 27, 2020 at 08:50:52AM +0800, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/paulmck/linux-rcu.git rcu/test
> head:   784a6343c3660446ae62db13628b20e9f876100f
> commit: 784a6343c3660446ae62db13628b20e9f876100f [76/76] Merge commit '3650b22' into rcu/test
> config: arm-randconfig-r026-20201026 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project f2c25c70791de95d2466e09b5b58fc37f6ccd7a4)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm cross compiling tool for clang build
>         # apt-get install binutils-arm-linux-gnueabi
>         # https://git.kernel.org/pub/scm/linux/kernel/git/paulmck/linux-rcu.git/commit/?id=784a6343c3660446ae62db13628b20e9f876100f
>         git remote add rcu https://git.kernel.org/pub/scm/linux/kernel/git/paulmck/linux-rcu.git
>         git fetch --no-tags rcu rcu/test
>         git checkout 784a6343c3660446ae62db13628b20e9f876100f
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
> >> drivers/dax/super.c:21:1: error: use of undeclared identifier '___srcu_struct_ptrs'
>    DEFINE_STATIC_SRCU(dax_srcu);
>    ^
>    include/linux/srcutree.h:135:34: note: expanded from macro 'DEFINE_STATIC_SRCU'
>    #define DEFINE_STATIC_SRCU(name)        __DEFINE_SRCU(name, static)
>                                            ^
>    include/linux/srcutree.h:127:13: note: expanded from macro '__DEFINE_SRCU'
>                    __section(___srcu_struct_ptrs) = &name
>                              ^
>    drivers/dax/super.c:70:6: warning: no previous prototype for function '__generic_fsdax_supported' [-Wmissing-prototypes]
>    bool __generic_fsdax_supported(struct dax_device *dax_dev,
>         ^
>    drivers/dax/super.c:70:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>    bool __generic_fsdax_supported(struct dax_device *dax_dev,
>    ^
>    static 
>    drivers/dax/super.c:168:6: warning: no previous prototype for function '__bdev_dax_supported' [-Wmissing-prototypes]
>    bool __bdev_dax_supported(struct block_device *bdev, int blocksize)
>         ^
>    drivers/dax/super.c:168:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>    bool __bdev_dax_supported(struct block_device *bdev, int blocksize)
>    ^
>    static 
>    drivers/dax/super.c:452:6: warning: no previous prototype for function 'run_dax' [-Wmissing-prototypes]
>    void run_dax(struct dax_device *dax_dev)
>         ^
>    drivers/dax/super.c:452:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>    void run_dax(struct dax_device *dax_dev)
>    ^
>    static 
>    3 warnings and 1 error generated.

Please drop commit c1370c128cf4 ("srcu: Avoid escaped section names"),
it has been fixed in a different way as of v5.10-rc1, in
commit 33def8498fdd ("treewide: Convert macro and uses of __section(foo)
to __section("foo")").

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201027015334.GA842991%40ubuntu-m3-large-x86.
