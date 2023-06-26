Return-Path: <clang-built-linux+bncBCMIZB7QWENRBLMS46SAMGQEFVTASVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 93CEB73E651
	for <lists+clang-built-linux@lfdr.de>; Mon, 26 Jun 2023 19:21:51 +0200 (CEST)
Received: by mail-lj1-x240.google.com with SMTP id 38308e7fff4ca-2b1d8fa45a6sf27766161fa.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Jun 2023 10:21:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1687800111; cv=pass;
        d=google.com; s=arc-20160816;
        b=eqwgBo/0HqGtbnrFhSJc4smLvPUeuDkEKhcBeCrBw8SH0GW1cBv9xn3JKPRwTshWbe
         dd0x8qPrp44umDK3k6xoP69HFZNs9bvm+IBD1uEYxjWNAUuX34InfU7SSWlXggmDTZ/U
         4eNgsqZ9F1y6U72iwJZ9rsCHmII1Kw1/2c/KYG8JUpnSJLQALTTxEjZLCYfWEfAh+4El
         taNiYFvHmYM4Oz5G25m+tJfvVp5VEHTc7w5FB/DNiIN8eUktksH4e7Z4TiVGl2omq8B4
         Wt1qUzFe+puafmpnj8DjDIVpZQSP3IkQl8NooAlrKE0IxaZ5Uun+JTVz2irBQgu4wzDs
         gmkg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:mime-version:dkim-signature;
        bh=VlP/wUESmN5dZZRoC1fJIrgIE1R/tT34h3scdN/idC8=;
        b=weCfNIRiVPD83h3SzJ7zgpkhLUJO3d724pE1hbrG0WBbSRWvktwU4Vm+JW3zAZ4hxS
         kymhMuS1dhjvZjD6lK/oUJdhFeMXZeTeMmT8iC2eNCCAHiyeS9p3j30kAvb22KJ2nUsL
         t9zfbCgSFvMFmanpMViysr505I5083ywQzhZxxRP58fkb/ncNJmVDiZB1Gdy4cWFPGk7
         3dCJ0Us9ogBCoWVPERifNIEXeJ3AgTp4C9Id5o7OTvRMCYA5kngZQKHXLmwnXpc0f2RL
         nRA8Zh9mHjtT4RfWcubjGWudvVmq3d5tKauvpnt3YHVp2jXI6f6I4jbbmH5A0gaP2lzU
         ELzw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20221208 header.b=joXIcqK3;
       spf=pass (google.com: domain of dvyukov@google.com designates 2a00:1450:4864:20::132 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1687800111; x=1690392111;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:from:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VlP/wUESmN5dZZRoC1fJIrgIE1R/tT34h3scdN/idC8=;
        b=D7O+6bt6MjInaInWcff8D+gFAKZIuEMderhuRDZq6FQ+R9JPngPy04mTk/lzu0qWAM
         MWGVRANXIuqFRWYpWKQvwYq6tiEiUnpyzeqApdCeQvufr63+8IFg1+P79DbmvG6zAVii
         CgJDnA55R554CWmAUwlYoiHYPSVM+v5/tc2VwiCzuQGGrLjcVgfKuKZziGfu5jC823bA
         M1/uiHGPMWOTMTQpmLtzY11Z9O4YcJo0XLIWwWj6rdtn99aS3bZi6PGPLnX2XYWN7Z9f
         mp5V1m5oqdN/r2K6Kl4C269iYzbEF4Y74edlMqf9G/hVVHTlf07ww7Gq5v9x44WBb3kP
         zKfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687800111; x=1690392111;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:from:mime-version:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VlP/wUESmN5dZZRoC1fJIrgIE1R/tT34h3scdN/idC8=;
        b=ZBwvnPWkoSQpT1Aja27xfvRyyI55Bmj9FY6OdBkfS74DGJo/8bHiSt1LfxkW9lPLT9
         W6bvtW9SR11lWepFFX22VJcP6oEDoFsj9vJ9tncnGlWWezCqtxGbNfvb6GwGKOFGes4C
         vZmYqn5YgNEqli2zwWVfTsquIwx5k9e7tUno50aq5oyxRYsu2kU+9rE6cVikDSl4c8YF
         braM5Zgtz1RV8c6StcqGJ/uXYLj+eXYzAmp+HMdQzaIFU/kYHkH9f5ZtkCgOrJJHWsX1
         t2H5mzO/jGUlCf7652s1Nx+jDbWWN8iBv5GI1u7vXdOnDSTgjWcrY84NppGvI78pU+1J
         TpZA==
X-Gm-Message-State: AC+VfDxJ+GtvjmGzVxrad/wcDZ7JvmMhE/sFrmNCGv4Yxeh+SV4x9Duy
	MG39Ccs/rjgsXWeqzMHcBHU=
X-Google-Smtp-Source: ACHHUZ6QIdpa6uolI7Vty5NdfAFNeWVMRLLZcsaIn/LMW+drzmUeytfGlIqoZVi/l3/djRqICyCMnA==
X-Received: by 2002:a05:651c:8b:b0:2b5:8ff0:4134 with SMTP id 11-20020a05651c008b00b002b58ff04134mr8590038ljq.34.1687800110146;
        Mon, 26 Jun 2023 10:21:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:19ab:b0:2b4:5c8d:cc68 with SMTP id
 bx43-20020a05651c19ab00b002b45c8dcc68ls390359ljb.0.-pod-prod-08-eu; Mon, 26
 Jun 2023 10:21:48 -0700 (PDT)
X-Received: by 2002:a2e:8057:0:b0:2b5:7a97:d517 with SMTP id p23-20020a2e8057000000b002b57a97d517mr8033919ljg.46.1687800108760;
        Mon, 26 Jun 2023 10:21:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1687800108; cv=none;
        d=google.com; s=arc-20160816;
        b=pOfNz0XH/gJsr/rJc4//WmKTo2XLO33hzBDgx0l1eJqBXhzfJvRFh1MuWKsf/2xf/U
         wkmpUD7EJZO0sKk6h0SmZmfSuX2zNdAuW9TfGp9NTbUiLD7ThXvQ3/RqZSWRdZLw8KME
         Wg32ljIS0foz9Ga8OBIsMdoS1AfyzPMp/TjmSKFIDpONPMnQIIpzptrN7XdQA4qguQXO
         OqSLupRJDQ9fv/bMCo6fYNTdpdT2xN6t27gW/j0nlFByUtb6Qjxdz7RqQKzhZZgGBSyJ
         R/Eln/EfuYuK9ZXLCwVdGJFCiDHed2ma6/jC8Gx8HrWEQN75/9TSYQvOYhkIpwJyGV0d
         wTLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=EXUwrqbW0CXJtQS1yFwwf9wv/D/LvsteOPvVyPaUfSk=;
        fh=OcuPgT8FYMyvpmpbsrF1Mfyx3mnQUSE4kqSkSm2k6gM=;
        b=LYtzWITJ5n7/em/MWWaS6cTrCknIrsyb7EX5MazRDG7BLVsEVQl1HOwkCTdnJXQUiL
         0ftawtp7Aq9coUo1WieIDDCYLt7elNCs/GVyaFg4l2mXe3BVh7aopbsKE0oZRwnllSro
         BUPjwknRSOwSCvnDd/air5t/SLtt1ax02YOkQNG3SrtWM8h4BDet/v0Szujc4lnixB1w
         kB+9MZ4fkeqT33VwLuB6lYB/z2qT504JyitdT4R/+BxM031X+MNCtIEd8z8pC7wbCTTL
         oHw3luuP+loJQFIvGta4WPljNOO89DkajYCK3WCNivjbfZNxJEJjESjpBB+xpmcWo+C6
         lYWw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20221208 header.b=joXIcqK3;
       spf=pass (google.com: domain of dvyukov@google.com designates 2a00:1450:4864:20::132 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com. [2a00:1450:4864:20::132])
        by gmr-mx.google.com with ESMTPS id cx26-20020a05640222ba00b0050bdc0e7cf6si384801edb.5.2023.06.26.10.21.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Jun 2023 10:21:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of dvyukov@google.com designates 2a00:1450:4864:20::132 as permitted sender) client-ip=2a00:1450:4864:20::132;
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-4f86840c45dso153e87.1
        for <clang-built-linux@googlegroups.com>; Mon, 26 Jun 2023 10:21:48 -0700 (PDT)
X-Received: by 2002:ac2:4470:0:b0:4f3:a7c6:590e with SMTP id
 y16-20020ac24470000000b004f3a7c6590emr116784lfl.7.1687800106702; Mon, 26 Jun
 2023 10:21:46 -0700 (PDT)
MIME-Version: 1.0
From: "'Dmitry Vyukov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 26 Jun 2023 19:21:34 +0200
Message-ID: <CACT4Y+bif9Wek-g10F5y0aLbH=JbCcqryi2nOUAFxGFo0O2B9A@mail.gmail.com>
Subject: Thread-safety annotations for irq/rcu/atomic contexts
To: clang-built-linux <clang-built-linux@googlegroups.com>, 
	Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc: LKML <linux-kernel@vger.kernel.org>, Marco Elver <elver@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dvyukov@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20221208 header.b=joXIcqK3;       spf=pass
 (google.com: domain of dvyukov@google.com designates 2a00:1450:4864:20::132
 as permitted sender) smtp.mailfrom=dvyukov@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Dmitry Vyukov <dvyukov@google.com>
Reply-To: Dmitry Vyukov <dvyukov@google.com>
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

Previous Lukas' attempt to apply clang thread-safety annotations to the kernel:
https://clangbuiltlinux.github.io/CBL-meetup-2020-slides/lukas/tsa.pdf

I am thinking if the annotations can be used to check for functions
that must/must not be called from irq/atomic/rcu_read/etc contexts.
Namely, we create global fake locks that denote these contexts, then
annotate spin_lock_irqsave/irqrestore/etc as taking releasing these
locks, and finally annotate functions are requiring/excluding these
contexts:

void foo() require(irq_context);
void bar() exclude(irq_context);
void baz() require(rcu_read_context);

This may help to catch "suspicious RCU usage", "scheduling while
atomic" and similar bug types statically. I suspect it may also be
simpler (?) to do rather than annotating all normal locks.

Does it make any sense?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACT4Y%2Bbif9Wek-g10F5y0aLbH%3DJbCcqryi2nOUAFxGFo0O2B9A%40mail.gmail.com.
