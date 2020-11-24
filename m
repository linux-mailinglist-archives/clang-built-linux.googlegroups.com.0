Return-Path: <clang-built-linux+bncBCP7VQF36ABBBHHP6X6QKGQEFCUMM2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id BA4D62C325E
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Nov 2020 22:14:05 +0100 (CET)
Received: by mail-pf1-x43f.google.com with SMTP id 9sf16641957pfn.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Nov 2020 13:14:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606252444; cv=pass;
        d=google.com; s=arc-20160816;
        b=pJGgIkeHlXCIawONNnimBk9qkgm1IaazGBbyk6ea2zgH+1/C5QfgNw5lo9aBLY8GLU
         R3mXaxIG3K6bVSGZsLVyLT2vfKKJrBSUiFqisP6as3d1eaJqpxKXhmXuM27773CzVSt4
         6yxHGDtXtAByOsknp6fQQD5KnczwFgTsZXNk0wD4hJR5Dlx5ewWFP9IKA16mKgzeKOYs
         6HxZWUbWKXmVpx8/bZ5B3zNwCkRcS9cYtYys0FBWtyYsFjVU7f2S9W0aQ3GrI0057PCO
         wElyZbwu0dINOVD4MlvdjWfyXDFwcMnn23wypSKisegtcmWMswNvCErSAYYRTY97lmJD
         8L1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id:to
         :from:cc:in-reply-to:subject:date:dkim-signature;
        bh=fYbYCUWZlCL0ej6msXhkCpq6X0CkWwVglv2DyU2qbXE=;
        b=cwEkagqaGFjfMXLorlS54XC5B3f+PmZhWoVSVhqoXXWD3XAgaYFSMjJSCO9iZ3n78T
         YwxWfbIgqS9qLezaIOZ8tnamqeLiWwnkMe6cip+YVlglTGp+hSQchXgNr2nqfkZNzLu+
         93Tul/lg+Rp3r2zOqzmNw0JMCzFoH4CujY4RUUxn37f8Syyo8umCv7wCc8lVchkKgSqc
         d94IqXWfXYF3A17ZksWeX2cR2/Rh4sSumi46ZUY0XhTaemxRNBuZGEeBpQVsSC2KWd3l
         0CnfytyGSaPmSE+ZvaeRCoZa9gNU2OEpQh8xNPMkDSJEAXdaxccl3+kdl2C3Vnspwl+N
         /qVw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=M4+iOo+q;
       spf=pass (google.com: domain of palmerdabbelt@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=palmerdabbelt@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fYbYCUWZlCL0ej6msXhkCpq6X0CkWwVglv2DyU2qbXE=;
        b=nq7fbtjf65Jn3aIYmbRZWsHVwIMkX858FzVypBm7B9tjJMXCB5yyfxJZZXFJSU109Z
         wV+g+IuDJZwpO0vAMVrAkehuBn33mAxhmy+yA5mM4lLsjtzLHjcISzw54RzRLgUp3uPv
         f9RwKsag5fLmmfOK9DudeEUUGz4H0LD7K0uKOKN0ic8EC2GSkWKQ85Ht4xjq9YpBL9hW
         1utI10aZP7hBgh76wT3hBmsG2od/1XXBgYHIKcKhldQeK7hioFWp2iuflVUoH4U62tFU
         W2fAYUuE4L31R/JGYWZhKKAZYFxhl9N+nIL2dtKe0AaCsv/9HwtjfKBUj1Okbo6n2qFQ
         yL+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fYbYCUWZlCL0ej6msXhkCpq6X0CkWwVglv2DyU2qbXE=;
        b=hRDj9r8jueJFUGTTzqJ9UGx5/DubmFrRlVMcnkDycfbwvmuoHdUomuhJ4OzbIU+io+
         UgHCwFCi7BTfHDLuRYcqEa0Zz6WWpix4QPCF2GDjf07moj+6N177r/dJ6FEJ0jgnCfDL
         RlkV9++frh+6hXujbzsWkXssolRljVoy7GQTNYcdSkGmLkDI0yeL7ESAyraRkEInm4UJ
         dRognF8/eG07dFB5mx98/6v6aVh6S5H8YZhPEkKcPrf6swUT0xPARv9xcHFIiYqfZhkW
         jjZzRkvai03tBOW1ZIkUf08RdqKeTNgPk4lBQ6RthKIDyGrv3zpbfgKsUiQezWEf3vlR
         aC2w==
X-Gm-Message-State: AOAM532XNJJvb95/8E+uP5H1wCX2+IecM+5Rc1cME2nYXAPiUI1SM70P
	9TJHt9xQf7tg0Bb7QanYErQ=
X-Google-Smtp-Source: ABdhPJzxdcFzRxhyAvGXeO0UmQcimQBv7+A41eYl5RzxsgAn9OUhnomS9Og92ttuECjS1dn3bSL8Hw==
X-Received: by 2002:a17:90a:5c85:: with SMTP id r5mr109029pji.199.1606252444541;
        Tue, 24 Nov 2020 13:14:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7556:: with SMTP id q83ls44624pfc.3.gmail; Tue, 24 Nov
 2020 13:14:03 -0800 (PST)
X-Received: by 2002:a63:1142:: with SMTP id 2mr248054pgr.103.1606252443844;
        Tue, 24 Nov 2020 13:14:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606252443; cv=none;
        d=google.com; s=arc-20160816;
        b=xP5FA2Fk5oHY7DWsRSjh0PXp0RRC6asKU9007FMPbZtrvzBUW18KYQ5pX2zryVNQg4
         I07El48XRzSi5rKbL5yTug9xuzAZf5tSVku7/Om7Z1jD4HXyc2VIANcmDVPcu8ViPPd0
         J/wnnlL4F7WrogQYcb3t99tqMG2FGen2hjSwVEv17BhljTfnYIThe7n3TlWgVtkJP7OS
         pgsV9cPABeLrq1YYXLHa4T9j5AQMkf3+urQMdlj2IugoFq34RysgqG8JfeMW91RzUeGL
         Lvt6kHpvg1AD0YgdcW6tSsi6C6+E1rywmYRNQlqBaZJFgyEKWoRYDt1OXaKWgHQenVIY
         d0+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:dkim-signature;
        bh=k2UmexVgKmIao4oRvUuGEqtTpOCfNvurJXj3LvuUbJs=;
        b=Pe0QtRAjaNIvfvERuigFImo4hhqIYFThKaGeXS2/v8aKvxhIXZFfyLRRzfeqY1bvBQ
         vQ47LVbki4ctbMQmerDRVY6TPrRc3X/Z4u7FQffKJ7qfB6wn12lAIwV6voev7B26n+mh
         cr4BkZDiHa1/97opbGLs9MdOXVEnToTR59aR7HXD/CQ2M2fsh8sit0oBpFOIXvX1J+zX
         Zrc6Jo77FluBiqxZYhfZCQ9+6S+wxe0tedSjX+XrGaiygG4R2kl5OvyCjPI+P/iTSa0J
         VjQLBusZOGp3J2t15aRehw6K9mGR6zne+zjVc9aeAC1nlDCSiKQS0sB1Dvq4mGP0gYFV
         KXSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=M4+iOo+q;
       spf=pass (google.com: domain of palmerdabbelt@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=palmerdabbelt@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id l8si16106pjt.1.2020.11.24.13.14.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Nov 2020 13:14:03 -0800 (PST)
Received-SPF: pass (google.com: domain of palmerdabbelt@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id w187so260919pfd.5
        for <clang-built-linux@googlegroups.com>; Tue, 24 Nov 2020 13:14:03 -0800 (PST)
X-Received: by 2002:a63:a62:: with SMTP id z34mr237913pgk.193.1606252443427;
        Tue, 24 Nov 2020 13:14:03 -0800 (PST)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net. [76.210.143.223])
        by smtp.gmail.com with ESMTPSA id q188sm7059158pfc.204.2020.11.24.13.14.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Nov 2020 13:14:02 -0800 (PST)
Date: Tue, 24 Nov 2020 13:14:02 -0800 (PST)
Subject: Re: drivers/clocksource/timer-riscv.c:28:16: error: implicit declaration of function 'get_cycles64'
In-Reply-To: <59ba6905-baef-02af-a424-41969f3ad0b3@infradead.org>
CC: lkp@intel.com, kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
  linux-kernel@vger.kernel.org
From: "'Palmer Dabbelt' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: rdunlap@infradead.org
Message-ID: <mhng-5f994c20-0b96-41b1-bb01-9aa8c71228de@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: palmerdabbelt@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=M4+iOo+q;       spf=pass
 (google.com: domain of palmerdabbelt@google.com designates
 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=palmerdabbelt@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Palmer Dabbelt <palmerdabbelt@google.com>
Reply-To: Palmer Dabbelt <palmerdabbelt@google.com>
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

On Tue, 24 Nov 2020 13:13:07 PST (-0800), rdunlap@infradead.org wrote:
> On 11/21/20 6:26 AM, kernel test robot wrote:
>> Hi Palmer,
>>
>> FYI, the error/warning still remains.
>>
>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
>> head:   27bba9c532a8d21050b94224ffd310ad0058c353
>> commit: d5be89a8d118a8e8d09cd74a921a808f17fbdd09 RISC-V: Resurrect the MMIO timer implementation for M-mode systems
>> date:   9 weeks ago
>> config: riscv-randconfig-r034-20201121 (attached as .config)
>> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project bec968cbb367dd03439c89c1d4ef968ef662d7c0)
>> reproduce (this is a W=1 build):
>>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>>          chmod +x ~/bin/make.cross
>>          # install riscv cross compiling tool for clang build
>>          # apt-get install binutils-riscv64-linux-gnu
>>          # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=d5be89a8d118a8e8d09cd74a921a808f17fbdd09
>>          git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>>          git fetch --no-tags linus master
>>          git checkout d5be89a8d118a8e8d09cd74a921a808f17fbdd09
>>          # save the attached .config to linux build tree
>>          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv
>>
>> If you fix the issue, kindly add following tag as appropriate
>> Reported-by: kernel test robot <lkp@intel.com>
>>
>> All errors (new ones prefixed by >>):
>
> CONFIG_RISCV_M_MODE=y
>
> and that prevents get_cycles64() in
> arch/riscv/include/asm/timex.h from being visible.
>
> I suppose that was intended?

No, I have a fix for it that I'm about to send out.  There's also a bit more necessary.

>
>
>>>> drivers/clocksource/timer-riscv.c:28:16: error: implicit declaration of function 'get_cycles64' [-Werror,-Wimplicit-function-declaration]
>>             sbi_set_timer(get_cycles64() + delta);
>>                           ^
>>     drivers/clocksource/timer-riscv.c:28:16: note: did you mean 'get_cycles'?
>>     arch/riscv/include/asm/timex.h:18:24: note: 'get_cycles' declared here
>>     static inline cycles_t get_cycles(void)
>>                            ^
>>     drivers/clocksource/timer-riscv.c:47:9: error: implicit declaration of function 'get_cycles64' [-Werror,-Wimplicit-function-declaration]
>>             return get_cycles64();
>>                    ^
>>     drivers/clocksource/timer-riscv.c:52:9: error: implicit declaration of function 'get_cycles64' [-Werror,-Wimplicit-function-declaration]
>>             return get_cycles64();
>>                    ^
>>     7 warnings and 3 errors generated.
>>
>> vim +/get_cycles64 +28 drivers/clocksource/timer-riscv.c
>>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/mhng-5f994c20-0b96-41b1-bb01-9aa8c71228de%40palmerdabbelt-glaptop1.
