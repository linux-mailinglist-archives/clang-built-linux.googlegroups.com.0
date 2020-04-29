Return-Path: <clang-built-linux+bncBCDITI7XW4DRBSWFUT2QKGQENWIYQ3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13e.google.com (mail-lf1-x13e.google.com [IPv6:2a00:1450:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A33F1BD4F8
	for <lists+clang-built-linux@lfdr.de>; Wed, 29 Apr 2020 08:46:35 +0200 (CEST)
Received: by mail-lf1-x13e.google.com with SMTP id b5sf408128lfg.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 28 Apr 2020 23:46:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588142794; cv=pass;
        d=google.com; s=arc-20160816;
        b=axSfYWANaTcD2euXjrjInS7eju5plOW7wsRQ6Tha/+HJdacKRlb4Vbf9HnA+7s2FML
         Fz12+JuOHavhJe/M3Lf93wukSdvbqY2Xn/XBSwru9Kvm5B+n7U4u/7GSXp32zjECY5yR
         1pnwevAoWlrbzahJXiOpBPhpPMZCk5HDGdgGuFg4xG08XmNGTt8w2SpLGoixLeSsGqQ7
         dtztQcHjvbICCKQ4fY7KqTBXu/4bV5Z/txlZKhTJmKQFbB9uMjjZPAa4U7gYtc46WNbU
         oUdv2h3YiWXCQYV2yq1PltvxLnp9PbV4cyOuu0gpshgQ3IypUqdH6LOVPxAhgBLoPuML
         PfdA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:user-agent:message-id:from
         :subject:to:cc:references:in-reply-to:mime-version:sender
         :dkim-signature;
        bh=H6/VU/Jpkf99GmqOi/t1PF1wUDOVWtUvhqW6y0NyWsg=;
        b=xU3WAj2VTWjCepgab12SwGmGH1kKok4lgv/E7o/NqBEKQc4HT6YUoqqwERboG453T4
         KWuAcuoSH4zJ6UVk/QjKxiaAOAjyquI2OPlxd1SwFK9YEPIy/Hg6a/4zT3ALYpYVbnKm
         USQxvt9uCn7OwWAwuKaj7y17pCLSJcvUBjH2exYuw4TtDt3afK/YI2OpfjetnA25lDfl
         Qwr2cphx+gI1/JH11ll66OQ7n5A1vnhgf2FxIAIpMZIyPvQCGKXw/j8tNZOXiEaUXr0m
         FYAvdDIRarH6sXw/eo/GtiZPeuWiHxzn7rU6IcDCVYGzfcYmXMQOpgmj6vEy0ZMwRotJ
         jlqg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 109.228.58.192 is neither permitted nor denied by best guess record for domain of chris@chris-wilson.co.uk) smtp.mailfrom=chris@chris-wilson.co.uk
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:in-reply-to:references:cc:to:subject:from
         :message-id:user-agent:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=H6/VU/Jpkf99GmqOi/t1PF1wUDOVWtUvhqW6y0NyWsg=;
        b=pH0baKCi5yewjitIog4yZZOG6bpA1Qq2Rzrj/wi5l5LKuk3fPEi8S/oHJd18CkRZnA
         sgknZIzhpW74FQjqoO75UDFvY+zl6hFMVacXyZVy1bXh8sXmOLMwiJGmhmmWAt0gw4FZ
         PaN4iw5QQ0dV92w60lQS5SiZtSYwhNf5B8bNnfvizJ2TWp/dSU1ZiPOoeWdkJLvNZyU4
         NDkVFAq7wYVs4dUMhOCiBTV3/JfJtH5fK/PjgDHvRA0Mvf2nX+ybkLZwkuYuBJFvBbmV
         WrKYeStRpiHD9lWFbVjNeBtOZ/6Uqg6c78RBkf6K/zSQltSGq+FT0L9J7Ih2G21BIbK7
         V2YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:in-reply-to:references:cc:to
         :subject:from:message-id:user-agent:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=H6/VU/Jpkf99GmqOi/t1PF1wUDOVWtUvhqW6y0NyWsg=;
        b=iA4IUbN0bIW9hxPw7lr0ww/FjiWHmxPUcfU+NCr6pEmMbuh4kLVhf/mD63r7e7a5wI
         Ip7wAIzxgN1EB/mkFf7IQ2uVLuHytsY0CPp+L8WmKVeHHoXFCusdE6mqDYQBaWIW7gLS
         mOZBr9XMRU9T1RdJQLXSB7H2TfndL82m5CXRbMTWWXFbPmtJkdc5fCsIzImyih+AFoz/
         pz0iNgYdoRdlG7wfp15RXXoapkCkdB28lRWC84GWXIQH86ooKwPzTi2TL7WEDpEm+YE/
         PYSmrSj5VCHrkHpukTokxC7WLHfMLSLh+lQUmxdKPRSLPplGtViLk321qWBWleJzXAO9
         92sQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pub/CI35WE3UN1eayGAowOP8ymBH0hbOkc8OEee0Y3UdZQERBIjv
	mmUXD8RU/+krf04stDXVHUo=
X-Google-Smtp-Source: APiQypJMfnW5LZaBpBi1gCLN6lb8TQ4ywj3gXCcrhAFVdKN6MtvwpfZZzZ/sDgkNogysVGQC2EpOtw==
X-Received: by 2002:a2e:740f:: with SMTP id p15mr18812960ljc.151.1588142794655;
        Tue, 28 Apr 2020 23:46:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:551d:: with SMTP id j29ls5828359lfk.1.gmail; Tue, 28 Apr
 2020 23:46:34 -0700 (PDT)
X-Received: by 2002:a05:6512:1109:: with SMTP id l9mr22140328lfg.12.1588142794020;
        Tue, 28 Apr 2020 23:46:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588142794; cv=none;
        d=google.com; s=arc-20160816;
        b=HmeBmJ5GZR7uKaPXzr5zVfOcJF+0f9zyjV/g4oUyvorE6MiKEvmnHgQy/wuzuIdMbh
         4NYr5swf/sAlXIyC1rYW7FqMNSr7bKYtqs87ygI9wgqaldCLb95c3fwmbTP4Y1sjLWHO
         OYYB8frwZFyl/GtfNeMzbXbIXCFa94gFpj5pntf6HQx89xNVn3gqESb7Uh3YW0vgcrxp
         xNT+ic7698NCcI3cHl4IbFDY+8nj2gN/FzUv22hzqYPF2igYfwxnZFR6zfIYhK+45NRW
         u7w+xXKEUC4SYTCvrJdjaOFknPEubXwjGvK/msOzLMpvIu+TEAn3qiVTvIpsf7LoY0cy
         QuVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:user-agent:message-id:from:subject:to:cc:references
         :in-reply-to:content-transfer-encoding:mime-version;
        bh=B5/bQpgCvuYxa4PVSFFXqoMmlCm/qR4apNK4BJhYdGo=;
        b=JEOkRVYZjA6vWkm+o70p6VWwPaQIySu56N4tMLvrDR7rAjS3XhvO6tJHHQJe8nCse2
         n6vemQvVhnu/vF24Ix40m1pbp5y1WMRJXrVl67BQog7KLQ5AJL9djvTEkydtaswj615O
         zLlLUaxBVLdGk2jjKQGuM2WNAIn9iQ9d+Kkk+zx0uNfiS9OjOBoXoYoMlY+uxecp4qhz
         rSdEkw4Jylp1trt/tQO/FNdrAxpFLggWSSZIiq0ezXIvskkmcdRigGBeLvOky1NIQeHk
         Bm5AIJN7LMblru3ZaPlY/3zcF3QqFWaFfVEgMapYAwFsT2Fp49lJmb+gLw6O39EG/i0v
         DUng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 109.228.58.192 is neither permitted nor denied by best guess record for domain of chris@chris-wilson.co.uk) smtp.mailfrom=chris@chris-wilson.co.uk
Received: from fireflyinternet.com (mail.fireflyinternet.com. [109.228.58.192])
        by gmr-mx.google.com with ESMTPS id b11si87528lji.0.2020.04.28.23.46.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Apr 2020 23:46:33 -0700 (PDT)
Received-SPF: neutral (google.com: 109.228.58.192 is neither permitted nor denied by best guess record for domain of chris@chris-wilson.co.uk) client-ip=109.228.58.192;
X-Default-Received-SPF: pass (skip=forwardok (res=PASS)) x-ip-name=78.156.65.138;
Received: from localhost (unverified [78.156.65.138]) 
	by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id 21054240-1500050 
	for multiple; Wed, 29 Apr 2020 07:45:58 +0100
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
In-Reply-To: <20200429030051.920203-1-natechancellor@gmail.com>
References: <20200429030051.920203-1-natechancellor@gmail.com>
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, Nathan Chancellor <natechancellor@gmail.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Nathan Chancellor <natechancellor@gmail.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: Re: [PATCH] drm/i915/gt: Avoid uninitialized use of rpcurupei in frequency_show
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158814275688.18349.12896739005148519908@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Wed, 29 Apr 2020 07:45:56 +0100
X-Original-Sender: chris@chris-wilson.co.uk
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 109.228.58.192 is neither permitted nor denied by best guess
 record for domain of chris@chris-wilson.co.uk) smtp.mailfrom=chris@chris-wilson.co.uk
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

Quoting Nathan Chancellor (2020-04-29 04:00:52)
> When building with clang + -Wuninitialized:
> 
> drivers/gpu/drm/i915/gt/debugfs_gt_pm.c:407:7: warning: variable
> 'rpcurupei' is uninitialized when used here [-Wuninitialized]
>                            rpcurupei,
>                            ^~~~~~~~~
> drivers/gpu/drm/i915/gt/debugfs_gt_pm.c:304:16: note: initialize the
> variable 'rpcurupei' to silence this warning
>                 u32 rpcurupei, rpcurup, rpprevup;
>                              ^
>                               = 0
> 1 warning generated.
> 
> rpupei is assigned twice; based on the second argument to
> intel_uncore_read, it seems this one should have been assigned to
> rpcurupei.
> 
> Fixes: 9c878557b1eb ("drm/i915/gt: Use the RPM config register to determine clk frequencies")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1016
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Thanks.
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
-Chris

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/158814275688.18349.12896739005148519908%40build.alporthouse.com.
