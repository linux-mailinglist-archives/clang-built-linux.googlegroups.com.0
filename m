Return-Path: <clang-built-linux+bncBCTJ7DM3WQOBBUNNUSDAMGQEY2FTIXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 51CE33A8AAB
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Jun 2021 23:08:34 +0200 (CEST)
Received: by mail-lf1-x13c.google.com with SMTP id bt32-20020a0565122620b029030e2ef98a19sf105050lfb.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Jun 2021 14:08:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623791314; cv=pass;
        d=google.com; s=arc-20160816;
        b=gqNHkZWAHFFAgWBD5+ay1u37Ij1NLSkFbKcl5MG8GMBz1QJSQE25zQpJae48amkSuE
         AVSeMBk+t1EyqkswkYZ8hGEN7Q8OVdL77QSG0y2sJycM/JULi8m4a2DocS3xDkEKFTov
         zFuFMkFKS/NXPAvQENjfrDHOjOoJb/bFmlcX/jWSTgYZSxatw/DmdE/nF/Qc7IcUnLUK
         8x2ZHqI7D0XDTmFLTIsrHLKouHsJ8Frl8wn19GNKhiyEGG91/oyqPE8JdQvf+dKopZ24
         zoKTvbEW2McD0+yG653Q31twFRfpdk5zO//FMWKhq7blvWZcG3CaIDYVvM1qM4JpzmR9
         iv1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=S7dMGdQ43dcLi5ii9jWi8LlQOjF7lEkrHoKW5mV6Ba8=;
        b=yrNuCeCk6AvIZ9dUPy7dl8/rAX1qe+BOxFKmps0Fi2GnuuNbLJp+JICxOu+HsnXzkg
         x3AbqNUf+FPNQarJeauB0qsjOjkLrYY5wk89zbOScdysIYm6RQNjMFj72LhKAMbj3amc
         Vxnt7GCWDqIoeLNXkqpmVoy9y1htwN7HkU7j/MYRMvuu/yMamB6YQH4eIhymBwf8pvZb
         +XcB51r5hZk5rd3gMZxoPJs1B14r3xToZ3QW/6F9fGSNDpfkfG+n9o6r9nwWyIpxCIhj
         lfowPxr/4uRy6TSuHubE1j0T+55Ox8rxUAQ8PZyhRZJ43PkQzy0DZ+2D4uQsxGn7/Oo9
         NwwA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of daniel@iogearbox.net designates 213.133.104.62 as permitted sender) smtp.mailfrom=daniel@iogearbox.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=S7dMGdQ43dcLi5ii9jWi8LlQOjF7lEkrHoKW5mV6Ba8=;
        b=reEdBf0hUB2JGCDcWCGcQ6w7SPh5RY9YJ30JLpAx548tcwMYydYJanBnzZpxgnnhWH
         P5EvPDYMZD7kg0FL6MH+z4cM+Gu23xieKtUrPd8xESa729CYBvdCTxfGiRFUFTUyj/Kx
         10Lkkdswye8zGlLP6t/cXbZCsLm6IqU7Yx2dSmzNsSFBiyNEYYcz1TVF2GpYz92vNXYR
         8eM0SGcVKEwKLn/TvVqSVZnmdF4v9vvB1jcfU+nmJduNyYEv9cfUE24Rrtp5eweYQ7kK
         +hiI1PGdi7W5gTrHHf2CBGQyYhB2Eww1cMt2LJCoK8c1wOYyyMF6py4MZz+T2qVqnTVn
         BzVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=S7dMGdQ43dcLi5ii9jWi8LlQOjF7lEkrHoKW5mV6Ba8=;
        b=uLQzd9qRIzR0l3luyxngQFT5dbVRIURnBRS90nDUZJQgSIiyOPSRdAWQ9qoRzgIYYm
         gEYMPrrd/8Axgpmul2tXG58pP7xMEVRXZKnsqyvriKu1Hr2EoIv3+twmlFFS0nVhOneO
         VPgIKby/ojxlWFHog4/YXBpdadAAEXiz5PNxAAZkOnqLzcv2LgqQ2135MwjfmxZ1JeP4
         YqiK+bQATJ85lfg8FU87fZpmJZu03bQs/Zl1JqunYjT6SkFwhz4MKZrNy8Wlu7NXkOIH
         kXTRjmPavXeQ0lrw20NzBKA0F/zy8Zg0HUIC8mfTSwCoPUBF4mxa2BgQjuah4JE0wPHi
         0AMg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5326Vi3xAYAE+t7S2f3CFBglS+jwsN8QxIphMxL6fYsgh5UTKZcV
	Xl0dSgdc2k7meN/YW5pgLFo=
X-Google-Smtp-Source: ABdhPJxDIpHXO+xfHZClSLWkaTeIznbFINU7W7cm7BnT74Mxd/gRQvMKMbY4fQZSrNh7whd2I6I29Q==
X-Received: by 2002:a05:6512:3c91:: with SMTP id h17mr998139lfv.214.1623791313792;
        Tue, 15 Jun 2021 14:08:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:86c7:: with SMTP id n7ls38599ljj.4.gmail; Tue, 15 Jun
 2021 14:08:32 -0700 (PDT)
X-Received: by 2002:a2e:8590:: with SMTP id b16mr1398974lji.342.1623791312616;
        Tue, 15 Jun 2021 14:08:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623791312; cv=none;
        d=google.com; s=arc-20160816;
        b=ZDKnzVQ8yRvdlMV25S228j5z4aDPK/k7LdBwOZMzXBUrrK6lmy9/ypIdD9D2Y7t+iS
         fq1v/lFribxj0Hdi+mKH0bnxLT+eNbm5dKTJyPqhKMaTtYvJzKV6GVyqULz5Ku1Y9iFr
         9YsQpBgUJ7evn2ymdOqVxkr97prYuhwmdNqT8wcUFq4BBroxKYGRHY480fGwrxYvxhVC
         nBvCpdDN/DYW8l+ttGyy4Q7oeuuDE1ktXhi+GAlSSt+X11+8Fx5zjxF7lS5ufJjHFNCF
         npHcRWYzWrkk+VMvGK2Cye+jo/7902TKXJwPWm9HzxIXeZepX5kccRMRPOekJzK2vQc9
         bfkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=xcUQq6kY0EaFg9vgo4O40iAPqg3rLd7W0goI4tZ7Juw=;
        b=c0Y6TNHQzqeTMXpcHG13Guozl4cLEF2u+Qc5VWsDI4GS33o8U6CghYkrPd0CITTQMU
         yzZsIfS+sKKaBUphj+XcJRkbchZOGpfUNPAQbcu7sakzCiz6PxdX9DjSPFZemsDeqUlh
         N1D5x4FkdemUb3TujHVkmt1m0KpgQg6ywKyn+HzAkP/LVRKTW1+y1iR/K+sAxUhd0Tbe
         ohmALN4aMMpU3VyS0fiK5dbyBQ5B4ztWA2aUDMVNm3HTxvIJyAbTCQcSLJeAfPTRtwqI
         lPnaxrv30KGCJGO9zD2IV/nsTsl0JSo6MTMYSwz3znmWKVfD9b4VXUj+bupzmOeaVvii
         Tn9A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of daniel@iogearbox.net designates 213.133.104.62 as permitted sender) smtp.mailfrom=daniel@iogearbox.net
Received: from www62.your-server.de (www62.your-server.de. [213.133.104.62])
        by gmr-mx.google.com with ESMTPS id w3si4513ljg.8.2021.06.15.14.08.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Jun 2021 14:08:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel@iogearbox.net designates 213.133.104.62 as permitted sender) client-ip=213.133.104.62;
Received: from sslproxy03.your-server.de ([88.198.220.132])
	by www62.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
	(Exim 4.92.3)
	(envelope-from <daniel@iogearbox.net>)
	id 1ltGIF-0004xO-Nz; Tue, 15 Jun 2021 23:08:19 +0200
Received: from [85.7.101.30] (helo=linux-3.home)
	by sslproxy03.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <daniel@iogearbox.net>)
	id 1ltGIF-000CCY-9W; Tue, 15 Jun 2021 23:08:19 +0200
Subject: Re: [PATCH v5] bpf: core: fix shift-out-of-bounds in ___bpf_prog_run
To: Eric Biggers <ebiggers@kernel.org>, Edward Cree <ecree.xilinx@gmail.com>
Cc: Kurt Manucredo <fuzzybritches0@gmail.com>,
 syzbot+bed360704c521841c85d@syzkaller.appspotmail.com,
 keescook@chromium.org, yhs@fb.com, dvyukov@google.com, andrii@kernel.org,
 ast@kernel.org, bpf@vger.kernel.org, davem@davemloft.net, hawk@kernel.org,
 john.fastabend@gmail.com, kafai@fb.com, kpsingh@kernel.org, kuba@kernel.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org, songliubraving@fb.com,
 syzkaller-bugs@googlegroups.com, nathan@kernel.org, ndesaulniers@google.com,
 clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com,
 kasan-dev@googlegroups.com
References: <CAADnVQKexxZQw0yK_7rmFOdaYabaFpi2EmF6RGs5bXvFHtUQaA@mail.gmail.com>
 <CACT4Y+b=si6NCx=nRHKm_pziXnVMmLo-eSuRajsxmx5+Hy_ycg@mail.gmail.com>
 <202106091119.84A88B6FE7@keescook>
 <752cb1ad-a0b1-92b7-4c49-bbb42fdecdbe@fb.com>
 <CACT4Y+a592rxFmNgJgk2zwqBE8EqW1ey9SjF_-U3z6gt3Yc=oA@mail.gmail.com>
 <1aaa2408-94b9-a1e6-beff-7523b66fe73d@fb.com> <202106101002.DF8C7EF@keescook>
 <CAADnVQKMwKYgthoQV4RmGpZm9Hm-=wH3DoaNqs=UZRmJKefwGw@mail.gmail.com>
 <85536-177443-curtm@phaethon>
 <bac16d8d-c174-bdc4-91bd-bfa62b410190@gmail.com> <YMkAbNQiIBbhD7+P@gmail.com>
From: Daniel Borkmann <daniel@iogearbox.net>
Message-ID: <dbcfb2d3-0054-3ee6-6e76-5bd78023a4f2@iogearbox.net>
Date: Tue, 15 Jun 2021 23:08:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <YMkAbNQiIBbhD7+P@gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Authenticated-Sender: daniel@iogearbox.net
X-Virus-Scanned: Clear (ClamAV 0.103.2/26202/Tue Jun 15 13:21:24 2021)
X-Original-Sender: daniel@iogearbox.net
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of daniel@iogearbox.net designates 213.133.104.62 as
 permitted sender) smtp.mailfrom=daniel@iogearbox.net
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

On 6/15/21 9:33 PM, Eric Biggers wrote:
> On Tue, Jun 15, 2021 at 07:51:07PM +0100, Edward Cree wrote:
>>
>> As I understand it, the UBSAN report is coming from the eBPF interpreter,
>>   which is the *slow path* and indeed on many production systems is
>>   compiled out for hardening reasons (CONFIG_BPF_JIT_ALWAYS_ON).
>> Perhaps a better approach to the fix would be to change the interpreter
>>   to compute "DST = DST << (SRC & 63);" (and similar for other shifts and
>>   bitnesses), thus matching the behaviour of most chips' shift opcodes.
>> This would shut up UBSAN, without affecting JIT code generation.
> 
> Yes, I suggested that last week
> (https://lkml.kernel.org/netdev/YMJvbGEz0xu9JU9D@gmail.com).  The AND will even
> get optimized out when compiling for most CPUs.

Did you check if the generated interpreter code for e.g. x86 is the same
before/after with that?

How does UBSAN detect this in general? I would assume generated code for
interpreter wrt DST = DST << SRC would not really change as otherwise all
valid cases would be broken as well, given compiler has not really room
to optimize or make any assumptions here, in other words, it's only
propagating potential quirks under such cases from underlying arch.

Thanks,
Daniel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/dbcfb2d3-0054-3ee6-6e76-5bd78023a4f2%40iogearbox.net.
