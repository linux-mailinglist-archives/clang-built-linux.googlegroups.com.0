Return-Path: <clang-built-linux+bncBCT6537ZTEKRBF5HTWMAMGQEBQNQ25Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id B8D085A0E5B
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Aug 2022 12:48:56 +0200 (CEST)
Received: by mail-il1-x13d.google.com with SMTP id w6-20020a056e02190600b002e74e05fdc2sf14746988ilu.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Aug 2022 03:48:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1661424535; cv=pass;
        d=google.com; s=arc-20160816;
        b=dGYPuFmekzqoFOmeDjHNBwNeVhEwj2qq9jTi1l57+h5nZqD/S/EaItOu+4LowzXO83
         eHfB1NFBfT9SmcTQS+k02TzUPWtYJZqtDJvfLPUbJJtIkwxrkvGXAhOg2uIsqnNrW/Rc
         qSJsxeSghvVQSLH9Gsg3EbrfOxX3RZR3FMU0PPd065JIXeMiol0HDWxIwnq1gxBvzJT8
         m6KCQxEr203r9H+K9SgDvsYYJyjsd44eeiJNj5eM20CsDL1JTvLgeAZ+Ca6qQr8z5DiQ
         lXXQ1PYbXAk7ldR/VwQPwyipy8Aj+mmp5HgCFZRO/DNuqe/Pm36lpHY/6Kb6YkD8GnbO
         o9gg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature;
        bh=61lEWoUR+c+L2hSVs4yRzz6MFOW7mUF/WJ3CPCu0sj4=;
        b=DnFlVcatqGIcj7sAhWdkP4FA3amnUWX87F40uYjN5BQzPnkMlCd9G3FYJTTMyy6s0j
         idLN/93GjJqzCUBzdIJaS7XPbZ0H/usx/03O4fAL4b6UoduOu6csCyVpVb6863hq2rzN
         2fUV/jpbg9I0NVXJHJqvbn00rxaYnU7NKQMivYg0TOO4UnGjE5WTue0Q+nsjUTYa/CY4
         NoAxk7rr6lGXHIsKrsejvhdE7xTjGp+Qt9lfgzW69eOlmyi3B6r6wJMBVM3u22s8P098
         LNk/RnZsfX34I51m29HxKVDWpjuZPX/BIpp3TJR84h+790mBLRM/u/ahiyfuGHgT5GhA
         tkAA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=cBjJDG+O;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2001:4860:4864:20::32 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:cc:to:subject:message-id:date:from:mime-version
         :sender:from:to:cc;
        bh=61lEWoUR+c+L2hSVs4yRzz6MFOW7mUF/WJ3CPCu0sj4=;
        b=GIRl4APz0Pi9GoTS3/go5MXTJ20xr6R6/OKfxzS5Kc6Jc+nLvGDn9qRyZzPLP2ppPA
         bC83RD7I/G5+JxFRA1D95Q/xRtAjD1QpWIrYaSYLf2X8vlOFU63Lld4QiOdm6RuolRmS
         TfA4qXSCqTPoH+Mnn06PwaL6tsIPgSd3orTPBWnyMXRklB/78F59nB0eolGimUrsB0bs
         6zj2Tyy17/GZHR/+Y6S63hpwlEN6B0xyL9TDDhNwPefqYwTCdRSwUOxb6ytXbVEGE535
         UY+GJuEvpIU+4JS5/HizmQAvE5loL8NlqESsL14CHhFoAuOVpScKP1MrcU2CfzTYJM2x
         zOug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:from:mime-version:x-gm-message-state:sender:from:to
         :cc;
        bh=61lEWoUR+c+L2hSVs4yRzz6MFOW7mUF/WJ3CPCu0sj4=;
        b=qVISYSz2hXHhtUw5sh8cmkfGUmg/VjZLCEwDOed/70whFG7OL5Byh72ufSHKkOQnip
         jlad6tsnZ7F2vdNC0TNhlbPJ7zBKqexJgWsLwL5Ejy4nHKGsZaf7K1/sqRc9NbzaPP3M
         pBtFWqhWpJU/8nD6+6fZmwBUvxlYGrI7jbrHuWRjBQgVSvNS2MGxE/sa8eE4Ijj9BXdL
         J7iueyfRp61WLmTb2GgxF3z5mTQTw/2yAe6CtiDzIy6wLsgfJym14rm70tve9ldd8/rz
         nvqHw+PH2z4LUpx69mktRJik/aNiT4cYYkwrhcmZVOT5By2v9K/bhX66kKVJnVMiZPDE
         J4Dw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ACgBeo1KP0eQ08IKtJdVcnUEHi15V406uEkt+Td9Od4vrZWhLRlSe7AZ
	6y1717KoHHcfnq7hqH71s4g=
X-Google-Smtp-Source: AA6agR6v+U7sKLYMboYb+fwKODWWy/MLFb7wRWwIgxcpDr2jtbCjIuCoaackXF6oiKnXAEzvDcaPZA==
X-Received: by 2002:a05:6e02:1523:b0:2ea:5530:f579 with SMTP id i3-20020a056e02152300b002ea5530f579mr1524936ilu.320.1661424535386;
        Thu, 25 Aug 2022 03:48:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:9904:0:b0:675:803d:6fbc with SMTP id x4-20020a5d9904000000b00675803d6fbcls116278iol.2.-pod-prod-gmail;
 Thu, 25 Aug 2022 03:48:54 -0700 (PDT)
X-Received: by 2002:a05:6602:1554:b0:688:87a6:e1a4 with SMTP id h20-20020a056602155400b0068887a6e1a4mr1335662iow.49.1661424534881;
        Thu, 25 Aug 2022 03:48:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1661424534; cv=none;
        d=google.com; s=arc-20160816;
        b=xaLbwYU+iP/HgK87FaZr5QdXK3S36w9TnMGLFmV8hXt5NJ6x9r7aX6F9e++3Ig4XW9
         bEePfjjzGWMI0x9WKk6EOSwAKjMvvu2TC5PnNeCvqIzoYoE7wPDOrpoxh5HsvwSi1T3j
         PG1ppTZOVFC7jx5aAPpnDAI9qxieQYfZVvOkBDbLykA69ibenKnQgPRC/LbMvOWf1R88
         TN1s/6E1QTTrzZfynYKKyrK58EZrRXft+XqeAY1UJ4I19n+CYJJ78XSfdfyYu2kF5cZu
         +wAftux76ZhqrQioS26uUj1YWWywweDNaIZFYIOZK+sHi/kZUevRKfTJCeXNIjTxqS0l
         NJtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=8yezS67UjohYjkR2uYPnl+2W/QH+CI5jH+JmDR2etME=;
        b=G82n+hDRxlJsizgVWJ2oLJyZjDPbm/6zDFvDTpH9IeEoeHPZ1YmuBYZzQKpUzTF3v/
         O9Kr4C7Yt5+JtCv91S3qREISJJnP9Wb4Yp3DlB6pJSv49K0mdM7w9j86N9mCdINT0UxC
         G9eewRbQrclGaKt8cnWKLgXJP3gqAC1ojOr58Pschdho3fwMQ+X+cnU/i8k9dV5gKdDt
         9HL4f1Mm+TSaR+qN6iBdbVYbbRYiU1bZSDtYfWDwxgJnIYUZjxXZ07uBxAxSfB62aBQz
         oZtLxb/Jqw8v/8BYBvhq9UpLWTZXCVCjJUBZLegvDfOuOjbFpmlsEPM1fL9A2XqtDqXc
         /HIA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=cBjJDG+O;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2001:4860:4864:20::32 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-oa1-x32.google.com (mail-oa1-x32.google.com. [2001:4860:4864:20::32])
        by gmr-mx.google.com with ESMTPS id t24-20020a02c918000000b00349d2c84c0fsi76436jao.0.2022.08.25.03.48.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Aug 2022 03:48:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of naresh.kamboju@linaro.org designates 2001:4860:4864:20::32 as permitted sender) client-ip=2001:4860:4864:20::32;
Received: by mail-oa1-x32.google.com with SMTP id 586e51a60fabf-11ba6e79dd1so24339081fac.12
        for <clang-built-linux@googlegroups.com>; Thu, 25 Aug 2022 03:48:54 -0700 (PDT)
X-Received: by 2002:a05:6870:a18c:b0:118:5b96:1cc4 with SMTP id
 a12-20020a056870a18c00b001185b961cc4mr1599384oaf.290.1661424534425; Thu, 25
 Aug 2022 03:48:54 -0700 (PDT)
MIME-Version: 1.0
From: Naresh Kamboju <naresh.kamboju@linaro.org>
Date: Thu, 25 Aug 2022 16:18:43 +0530
Message-ID: <CA+G9fYvHLy63+jV3qMtHtQLufoeEpAjrteQ7+2Dvdt8CcGk9MA@mail.gmail.com>
Subject: [next] kernel/smpboot.c:435:6: error: variable 'oldstate' is used
 uninitialized whenever 'if' condition is true [-Werror,-Wsometimes-uninitialized]
To: Uros Bizjak <ubizjak@gmail.com>, Andrew Morton <akpm@linux-foundation.org>, 
	regressions@lists.linux.dev, lkft-triage@lists.linaro.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Nathan Chancellor <nathan@kernel.org>
Cc: Linux-Next Mailing List <linux-next@vger.kernel.org>, "Longpeng(Mike)" <longpeng2@huawei.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: naresh.kamboju@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=cBjJDG+O;       spf=pass
 (google.com: domain of naresh.kamboju@linaro.org designates
 2001:4860:4864:20::32 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
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

The x86_64 and i386 clang builds failed due to these warnings / errors
on Linux next-20220825.

Reported-by: Linux Kernel Functional Testing <lkft@linaro.org>

kernel/smpboot.c:435:6: error: variable 'oldstate' is used
uninitialized whenever 'if' condition is true
[-Werror,-Wsometimes-uninitialized]
        if (atomic_read(&per_cpu(cpu_hotplug_state, cpu)) == CPU_DEAD)
            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
kernel/smpboot.c:449:6: note: uninitialized use occurs here
        if (oldstate == CPU_DEAD) {
            ^~~~~~~~
kernel/smpboot.c:435:2: note: remove the 'if' if its condition is always false
        if (atomic_read(&per_cpu(cpu_hotplug_state, cpu)) == CPU_DEAD)
        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
kernel/smpboot.c:428:14: note: initialize the variable 'oldstate' to
silence this warning
        int oldstate;
                    ^
                     = 0
1 error generated.
make[2]: *** [scripts/Makefile.build:250: kernel/smpboot.o] Error 1

Build link: https://builds.tuxbuild.com/2Dpvef6uVvzHMztbfQRmxJfPXZT/

Steps to reproduce:
-------------------
# To install tuxmake on your system globally:
# sudo pip3 install -U tuxmake

tuxmake --runtime podman --target-arch x86_64 --toolchain clang-14
--kconfig https://builds.tuxbuild.com/2Dpvef6uVvzHMztbfQRmxJfPXZT/config
LLVM=1 LLVM_IAS=1

--
Linaro LKFT
https://lkft.linaro.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BG9fYvHLy63%2BjV3qMtHtQLufoeEpAjrteQ7%2B2Dvdt8CcGk9MA%40mail.gmail.com.
