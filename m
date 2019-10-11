Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBSFDQHWQKGQEXK2SD4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33e.google.com (mail-wm1-x33e.google.com [IPv6:2a00:1450:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 135BDD3CD3
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Oct 2019 11:56:25 +0200 (CEST)
Received: by mail-wm1-x33e.google.com with SMTP id 4sf2565394wmj.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Oct 2019 02:56:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570787784; cv=pass;
        d=google.com; s=arc-20160816;
        b=rcGIfH6vDfZw+gkFUj5J+8KXXO2CALZDx4HdBaHyYs1+XC8y/7F0dJgo1hf8IZKNaA
         saymvz2Hc1HYD6+v2UzE6SYuhF9wdY86360cEE/MZZC/Bq9o5vgQpsQBE9EPy2cjsMXG
         lv1jJStCNEZKSktvtSKPDkUsasXQ5Ioxcxu/sZvOzjVWBWf+EGPBYFvLUhBcvbqHE+4E
         eRaA3mGVbZnP9tiWoiupAs+ZAHpU1xohpZQeUvRribQo0RA118m8pSOkvdGcV7fq96wh
         /tPWeQvbd8CqvvaocGSJQcfM+4jsnEI3hlNYXrWq+aVhwPbECPBSG1VGn+ScRxM7WVOG
         IFRw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:mail-followup-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=VJliO2udYKfECpseZaD0qXJtqZ9tHvujdBFLZuozH+s=;
        b=O0aQIsNXeOc+ERtedQRiE/cU7OQ8vxVRho5GwFgC2iaAWQyRscnR5YNpgYfqaPwiJt
         I3wR/USYFIMLJhovnl614rdzNm3jSCEntbMv7mslbY06hI+7JDoUGlpAuuGuY5mmUO10
         P3P6O1s8ziSS1vQgp/BJzOukauM+iB0f8KKKamiHDbdcPB0qZBPrqtLeOkpbXzKd6/5m
         1jRji2k9sYysv+5w3p2j7khzVYvMoXwrZELBksFjM6j3A0spqS9Zy6oduA3mDOEwl/M0
         8QZ2RM99NggbCM8bgGu4JRmpJ26nWsn5JU+h8W2DR+uXoGBLCcFrLA+6XnrjXexx+3VA
         bRkg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=KLkB1k+s;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mail-followup-to
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VJliO2udYKfECpseZaD0qXJtqZ9tHvujdBFLZuozH+s=;
        b=TrOAQBRqNyj7Yn5RYwfiiniyldGKNMjPKIzyH7G2IWI+LkuK8UpiMJx0vu+bGZSbRc
         0LeCoMwQYHeY29A1S6CFOC9i4MpqjaCZ6CHUBbi9dnBvvU/ZndZR7hndJFnyvp5roiN2
         9BbJRtUhkGmyXa5eZMnGUHOqEjz8bu5fI469yQhZfz9Oxru/JfMxqZDbJMquDt57UOHT
         M8KL7oLo+W7eFeU/s0pMmqHababhLF62qnaCjcXUYvi+Zbf0qVN8KpVkkc7h8eOki7lp
         vESHCx3hsHjNRmSJAraBLmPAeOm3cxWQxXJZwflxjvjwkzwnMzVLYmQO50KLxIN5ThUf
         5THA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VJliO2udYKfECpseZaD0qXJtqZ9tHvujdBFLZuozH+s=;
        b=I2o26K3EDYfCP1QRTYFcSFNGKPXa2IEaHEWiqZpZRZC/1D0uSMd0sohyAsWk7rQNSu
         oADFKbH9KG7uVJdBnATNL/tozRIwcqEFAss6a/GoB0y3UEJvJnuoqCkFb2CyLHUvPBjQ
         8gu51QpDX9XBo+AQ1yek+RX5YG8Ct2yG9iKRW5o1usGKhOTrOTDOB34M0RR4ZpCwqYL8
         Cl6ZDun7MH03aXIi4xBh6ZZH1JWB8hZjIb89SYfZxKaa1YCB1Y+c6V4EHpJbeUQhyBE6
         hGsfq0gEPxYtH6/cCs2p7rVKpsUbeyJIkdBPB2tWkPQbgfvjfOywbM3snFh0W//juZi2
         MAMQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU01qvmL0UmqqXDZDhZRAIGkV3Z6qb4cBm2snACN3GAN/ZM+LuK
	oQpauTxGFxn4ONdAakZhbaY=
X-Google-Smtp-Source: APXvYqx29mAA5NpSQPPn4twlRzAKW75jmr242LRyrciCq8vA4aSTeXgIpm6qxCIGmJ5zF9creRi+Hg==
X-Received: by 2002:adf:de07:: with SMTP id b7mr12085214wrm.295.1570787784731;
        Fri, 11 Oct 2019 02:56:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:db07:: with SMTP id s7ls2385260wri.6.gmail; Fri, 11 Oct
 2019 02:56:24 -0700 (PDT)
X-Received: by 2002:adf:f90f:: with SMTP id b15mr12470279wrr.76.1570787784295;
        Fri, 11 Oct 2019 02:56:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570787784; cv=none;
        d=google.com; s=arc-20160816;
        b=VEwOpMJN4em3hVhygsiaDVC68E7O64LKspaXW+uipRPBknCrHHgOuW+VSciUA9yBJa
         8UQJTGBjoctEtH9SjVQkr65yx8iGXeIDiSSSege/23fRuhUJ5OOWKGt+2JrGq9E8WH4x
         T1mvGrGm6UACaxIOdf06H3Kkm15lxlnfJx0HO9O8AHo2TkRr7RZ9PjVbbYceps01JZc/
         vpqxZIrxVK6EvGNjt68CgUZxj91tfSQkmQia6ijIyYDRjhFNlGNwsJ2Hs3GFLK3U/GF4
         Hh2G9ZNOwd/qI808G6IFsTL+ugVIQSLhEkfY3FLq6LTp0YISoTVXZCzB6eiblDVThTO8
         MYCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=pWOkKXMMhlTx5AzJ2yss3zoDHNMcN+4G3JZ21wCHuz0=;
        b=08sQLqM4Y2YX4e4ulZ9Ks/K8haIrjFEKzzpIfYzCqxtmgWVGLsTPWSNSmEDex9knEp
         n3bYSV3SbaSNrzkdmnnBZvmmCswvMKDdxpi4GSLRga7pZttZcbiqUSa8nSXRFCn3uvGt
         OOz3c+xZZcBnT4sNhnjbVEJZQSNvudtUfsx/fh8j6E13XBcKSA8FlQdZ5yBodqoOmEIb
         xIctDpfU1/3gI1YTMkGg0iT2MuXWm2BAN5TPVrTtEiU5AsdqLdVJW3xLwsPEnYBZE5g9
         s7iIxGdf+A+Ax8AWZKaiGgQ6tV2jz7fQiPbsg8/2NFeKCzq5EnSwhyJMiaCD7g2mEWH9
         FvAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=KLkB1k+s;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com. [2a00:1450:4864:20::141])
        by gmr-mx.google.com with ESMTPS id n16si562127wrs.4.2019.10.11.02.56.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Oct 2019 02:56:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::141 as permitted sender) client-ip=2a00:1450:4864:20::141;
Received: by mail-lf1-x141.google.com with SMTP id w6so6607231lfl.2
        for <clang-built-linux@googlegroups.com>; Fri, 11 Oct 2019 02:56:24 -0700 (PDT)
X-Received: by 2002:a19:2287:: with SMTP id i129mr8197729lfi.43.1570787783666;
        Fri, 11 Oct 2019 02:56:23 -0700 (PDT)
Received: from khorivan (88-201-94-178.pool.ukrtel.net. [178.94.201.88])
        by smtp.gmail.com with ESMTPSA id v1sm1836900lji.89.2019.10.11.02.56.22
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 11 Oct 2019 02:56:23 -0700 (PDT)
Date: Fri, 11 Oct 2019 12:56:20 +0300
From: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
To: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Cc: ast@kernel.org, daniel@iogearbox.net, yhs@fb.com, davem@davemloft.net,
	jakub.kicinski@netronome.com, hawk@kernel.org,
	john.fastabend@gmail.com, linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org, bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com, ilias.apalodimas@linaro.org
Subject: Re: [PATCH v5 bpf-next 05/15] samples/bpf: use __LINUX_ARM_ARCH__
 selector for arm
Message-ID: <20191011095619.GA3689@khorivan>
Mail-Followup-To: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>,
	ast@kernel.org, daniel@iogearbox.net, yhs@fb.com,
	davem@davemloft.net, jakub.kicinski@netronome.com, hawk@kernel.org,
	john.fastabend@gmail.com, linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org, bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com, ilias.apalodimas@linaro.org
References: <20191011002808.28206-1-ivan.khoronzhuk@linaro.org>
 <20191011002808.28206-6-ivan.khoronzhuk@linaro.org>
 <fa252372-b518-213c-b6f1-60520831e677@cogentembedded.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <fa252372-b518-213c-b6f1-60520831e677@cogentembedded.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=KLkB1k+s;       spf=pass
 (google.com: domain of ivan.khoronzhuk@linaro.org designates
 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Fri, Oct 11, 2019 at 11:46:54AM +0300, Sergei Shtylyov wrote:
>Hello!
>
>   Sorry, didn't comment on v4...
>
>On 11.10.2019 3:27, Ivan Khoronzhuk wrote:
>
>>For arm, -D__LINUX_ARM_ARCH__=X is min version used as instruction
>>set selector and is absolutely required while parsing some parts of
>>headers. It's present in KBUILD_CFLAGS but not in autoconf.h, so let's
>>retrieve it from and add to programs cflags. In another case errors
>
>   From where? And it's program's, no?
from KBUIL_CFLAGS. it's programs.

>
>>like "SMP is not supported" for armv7 and bunch of other errors are
>>issued resulting to incorrect final object.
>>
>>Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
>[...]
>
>MBR, Sergei

-- 
Regards,
Ivan Khoronzhuk

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191011095619.GA3689%40khorivan.
