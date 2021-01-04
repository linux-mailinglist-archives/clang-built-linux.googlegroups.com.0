Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBQ6FZX7QKGQEEALCD3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf38.google.com (mail-qv1-xf38.google.com [IPv6:2607:f8b0:4864:20::f38])
	by mail.lfdr.de (Postfix) with ESMTPS id 044E42E9D50
	for <lists+clang-built-linux@lfdr.de>; Mon,  4 Jan 2021 19:47:33 +0100 (CET)
Received: by mail-qv1-xf38.google.com with SMTP id j5sf25878395qvu.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 04 Jan 2021 10:47:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609786052; cv=pass;
        d=google.com; s=arc-20160816;
        b=OlYt/FT4zo7XH1L3ZEtws1Rh8pXJw0scvT0bly/1PGtMqEFcBuvEQI6rAtXcOYxCoD
         oAhwd5m1sS2euDEXni18XwkqtpYInG/V9RS4dS5wrdYTIcvHwHGrCsFVa9ScPZsceoH2
         9+R+Xd0DMpM+IzgTEDH6RT+1I1IUoy7pBtPesxataP5ZiKk7BalcEb8KDRA4m8G4BByx
         706hmyJy/+JrqL5u81WCrb3Dp6Xjig/i1hnNplKIVKiqJCsTv9fR3zu6XLq50paFxT1p
         Ju5ZSbUYw1R8eSHG/q6B8FMMOFYtI/dmnaZ+oQQcuswLbiL5Nqo1pU37pjNlhgJMEM/B
         bmjw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=QuGkveZfOe5oEW//WKd+eR/FNP2MyY0tFGyjPl4sJOM=;
        b=JNeBYpw6a5UGwwXYExQLZqexbCFAQJ3B8TouGcnxNyqs+NJaw2hUjT02Ya+1ahxZzI
         Tqyz+BfEoCFCYEcaWC3a2OW/ELoRJvADsxsdfacKMZ4exfevkoMSRP1U6wuxcYjLzs8T
         uXx9I3BUBkx8T0PaWumhabaOUPpV4hfPcC6Fea7DJjzRbM4jcGlkRGY/rt+Ol9IsWp1w
         pRWkbUad8KQ5JF7yNTk8EmgXaUrMtIYJd1U0I3kiqtUR7T7Z327wQfYKpD346J4aNnMQ
         UAAv88TykggTaBMXBwwYLN87YRPnpzgIQsIL/9qOpX3/XRJcrUd9qWbZ6a610ebe+xaI
         sFWQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="EBM/hk2n";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::82c as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QuGkveZfOe5oEW//WKd+eR/FNP2MyY0tFGyjPl4sJOM=;
        b=fTEQBs3aj9ixlczvI5YSsc8nXSUbCdfXSSdz+yacKR+tlrg3gJV0Zm55tbMKnlIDI7
         a5w+krC9S4dHZUCGLt6MnpnjgWRnJoJr5JdTIFZFaUs5Zb4ND+qeVK2luL+B2mpWrZet
         CrC4zjMGzNsMDh4iiy3d2FcYQOwwMKOZJD0/jSkSvzzIMNVwHIV+qDAeM3GDNwMZ7eit
         V+D11e5TSehFarF6QPVsHWBKwx0wSOBiygQpRz0pJYyN79zhz+2gDJ2EAlsIV58VII4a
         opJuzGd9/NywWIe4Vru2WtcvXqDHYua+8k4g/2xfqVNcJ1ErcUgQuXvUQN45lu3D++Au
         yRRQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QuGkveZfOe5oEW//WKd+eR/FNP2MyY0tFGyjPl4sJOM=;
        b=ufwx1fD0gki8l+PEBiXoMecb3EZyNDN4+OodDhNinl/rJcDWLxaUe6apfU23Fu4F8p
         DUcETV265wA+Tbsvk7J5baloDVyc2jog1qZvGvZooj1wXZoIPX4Z4PFn/dCLzX9RGtG2
         m4dym9U7RCYBe+65pBk9ZfnfHo2e/mVduh8p/MONbPy03JpL2qAqp2pzo3QAj9o8LTZs
         jxVM55htGXk84dANZxrY6cQtZcPnlaUhUCnNk0E/u9yAymWa2fp/FHUeDaEBOIEdCof0
         l/3JAwXXum5kUdIUDkJGLWObaRnFwc5eI0Y3ELqab6HTkuo6/yv6J4nB0WBNKgVivpFH
         YgRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=QuGkveZfOe5oEW//WKd+eR/FNP2MyY0tFGyjPl4sJOM=;
        b=Xors6bYZxwjJfDGAw/XhHDn/BAwP+bDigN4oKJ8/2/QG/JkTIQmPtvFT4yKMf4yc9Z
         noDGV46xj8nO406jJ3+bUwYHOaWanGh8zpKT40TwXFkE3sSoHELUiYNh1jdOJxURgkYx
         yoBf/oKs2m9Ch7BONDbK8Y5WU6AfWzBdNEyVXbwEXmVhX3kA4DEGK2QguiJm3zm5cisb
         zQdBDDmLl9FYcsYIEWJE6r6zKdu/whuK/Pd4u12DPoZZXy3yQpTw20mD38rp9cifaut9
         RIet1gptjUvkHEfDxKU+Woj9XOWiZNUKbs5Lh1pXBJWblYiTfZNeGRYLO2sTM14kwgDc
         JkSA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5317hySjar56H3zgL6iYt74s69yCet2fTxokW19GZ/iAvoB9hgy3
	H/KedKsy0HfOVw/nozAkTp4=
X-Google-Smtp-Source: ABdhPJyxycwmRchBZ0Wz9dzpVEg0utKNNZxZMiYhEBmJQ/X9X6cRCWUQoy6k5g2DDiGo44XKTfMVng==
X-Received: by 2002:a0c:aa55:: with SMTP id e21mr76753625qvb.43.1609786051970;
        Mon, 04 Jan 2021 10:47:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:6790:: with SMTP id b16ls29676535qtp.7.gmail; Mon, 04
 Jan 2021 10:47:31 -0800 (PST)
X-Received: by 2002:ac8:7352:: with SMTP id q18mr70927243qtp.167.1609786051352;
        Mon, 04 Jan 2021 10:47:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609786051; cv=none;
        d=google.com; s=arc-20160816;
        b=qwLcjtylzZ2uP/KV9Ga3xIlriyTJQkP71sZZi+fkq4LpXP7BkaOyuajCPmgkuBaVm+
         6LCl8c8WFE2DpCpkz5WcrfNrORJiBe9SxbS5uJRj+f2G4ijK539d+Pl5gZ5lvLPgPYgA
         J3xlk2U7z0bD1pwBE5/s4R7YbmZEwyKbVAC4BbVbHDjkilvOSHPB8tu+7ZSGUkQwrgIo
         /ICKDKdQjYdAu9OB757TkqwUPVSAhCHamkg54deCcf39cqfOPJ9jrvAMJKcO0SUIqxwK
         Wd1mFRJxp9UbRWgxTjdrsTwVTO1aHgmmcpGRQYrRSjMnuy/21UUC6sbyTJONvAyNhpVJ
         tBJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=YmvW4Q6DWWO7XERZwXDi7sTEzjHDHI29ZxH9utRkJCM=;
        b=RsXPBbOrjcT2sFtZ4z6hIg3/2rQNPSb9CFHxbRDx3YT70AarhBn3jtDaJ1QiEPlDgM
         fBej885p9P+OtMJEU88YzR8HFtFVbu/oV45sEeVKNIPUq7UTDQuJTttESpHNCPfnR5s2
         4FQCrUKjFnM6x/O/F19sBLTMdt9TueacoMOk9txxS3x1KiNKhBefs3bwAjEz9akvLZFD
         WVCaKQ7TLmuT0jy50YwEmwqxQg0A0CrjDmY7MeTiYMhzytEb901bWBqpgzvpT0wiKgc2
         WEMeR7juBmIEwZ7IbjJERINtpprY2oxE26BtVYh/ATzEfe4pgerNA66h4z6BJmwriGT6
         RYfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="EBM/hk2n";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::82c as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x82c.google.com (mail-qt1-x82c.google.com. [2607:f8b0:4864:20::82c])
        by gmr-mx.google.com with ESMTPS id n18si4168023qkk.7.2021.01.04.10.47.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Jan 2021 10:47:31 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::82c as permitted sender) client-ip=2607:f8b0:4864:20::82c;
Received: by mail-qt1-x82c.google.com with SMTP id h19so19162716qtq.13
        for <clang-built-linux@googlegroups.com>; Mon, 04 Jan 2021 10:47:31 -0800 (PST)
X-Received: by 2002:aed:2cc5:: with SMTP id g63mr71971517qtd.327.1609786050961;
        Mon, 04 Jan 2021 10:47:30 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id q3sm37748990qkb.73.2021.01.04.10.47.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Jan 2021 10:47:30 -0800 (PST)
Date: Mon, 4 Jan 2021 11:47:28 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kernel test robot <lkp@intel.com>
Cc: Mordechay Goodstein <mordechay.goodstein@intel.com>,
	kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Luca Coelho <luciano.coelho@intel.com>
Subject: Re: drivers/net/wireless/intel/iwlwifi/queue/tx.c:310:18: warning:
 result of comparison of constant 262140 with expression of type 'u16' (aka
 'unsigned short') is always false
Message-ID: <20210104184728.GB243045@ubuntu-m3-large-x86>
References: <202101030910.Lehj6xQW-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202101030910.Lehj6xQW-lkp@intel.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="EBM/hk2n";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::82c as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Sun, Jan 03, 2021 at 09:51:17AM +0800, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   3516bd729358a2a9b090c1905bd2a3fa926e24c6
> commit: 0cd1ad2d7fd41e0de4969fd1dd0aa846c99830d1 iwlwifi: move all bus-independent TX functions to common code
> date:   3 months ago
> config: powerpc-randconfig-r001-20210103 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 20670ba44066df0aae536822b7f7834ee3198c0d)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install powerpc cross compiling tool for clang build
>         # apt-get install binutils-powerpc-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=0cd1ad2d7fd41e0de4969fd1dd0aa846c99830d1
>         git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>         git fetch --no-tags linus master
>         git checkout 0cd1ad2d7fd41e0de4969fd1dd0aa846c99830d1
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> drivers/net/wireless/intel/iwlwifi/queue/tx.c:310:18: warning: result of comparison of constant 262140 with expression of type 'u16' (aka 'unsigned short') is always false [-Wtautological-constant-out-of-range-compare]
>            if (WARN_ON(len > PAGE_SIZE - sizeof(void *))) {
>            ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/asm-generic/bug.h:188:25: note: expanded from macro 'WARN_ON'
>            int __ret_warn_on = !!(condition);                              \
>                                   ^~~~~~~~~
>    include/linux/compiler.h:56:47: note: expanded from macro 'if'
>    #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
>                               ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/compiler.h:58:52: note: expanded from macro '__trace_if_var'
>    #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
>                                                       ^~~~
> >> drivers/net/wireless/intel/iwlwifi/queue/tx.c:310:18: warning: result of comparison of constant 262140 with expression of type 'u16' (aka 'unsigned short') is always false [-Wtautological-constant-out-of-range-compare]
>            if (WARN_ON(len > PAGE_SIZE - sizeof(void *))) {
>            ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/asm-generic/bug.h:188:25: note: expanded from macro 'WARN_ON'
>            int __ret_warn_on = !!(condition);                              \
>                                   ^~~~~~~~~
>    include/linux/compiler.h:56:47: note: expanded from macro 'if'
>    #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
>                               ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/compiler.h:58:86: note: expanded from macro '__trace_if_var'
>    #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
>                                                                        ~~~~~~~~~~~~~~~~~^~~~~
>    include/linux/compiler.h:69:3: note: expanded from macro '__trace_if_value'
>            (cond) ?                                        \
>             ^~~~
>    2 warnings generated.

This warning happens due to PAGE_SIZE being 256K, which is larger than
u16.

$ rg "PPC_256K_PAGES|PPC_PAGE_SHIFT" .config
CONFIG_PPC_256K_PAGES=y
CONFIG_PPC_PAGE_SHIFT=18

On most configurations, which will use 64K or less, this check is valid.
I am not sure how it should be dealt with, aside from increasing len to
u32.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210104184728.GB243045%40ubuntu-m3-large-x86.
