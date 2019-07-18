Return-Path: <clang-built-linux+bncBDAMN6NI5EERBLVSYPUQKGQE474NYZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C6256D5E8
	for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jul 2019 22:40:14 +0200 (CEST)
Received: by mail-wr1-x43b.google.com with SMTP id b14sf14179778wrn.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jul 2019 13:40:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563482414; cv=pass;
        d=google.com; s=arc-20160816;
        b=ujV1zCIhivJ5LktFnY1S8j3vyikTtxq1pFy/anMKjP5+ZA44hWH0xNep6nktkfNDYE
         F6QxOJ3PYAezBncAn3Igehh1ZYJsgIkaMQX4z3xZX9XRwGN0KuFFtescu60VdTzkn4/w
         9sWcdwonKQFqE7vHiPTsxrAiiU5tlYWIZptShA4TmD5Y4CXS3fgVsibtqsrOw7VU+6Jm
         +Ct9vH/Psn9EfCZtKJniIVSe2iseS2a09Qryxpi0JYxgOod0exinGnIYMkCz6IeYtKV1
         f64ITvdKckloRgbY47MB97kCv1jDJJh3u3oqeGB7MAP3dykpkARIxOpN/BGzZlH2ueBO
         UevA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:message-id
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=n6+3sbN0qRTgGcrOOUXSV8Mxv6bW9RYOAVOO1LSMtwo=;
        b=VEvF98FRZsZH0uUFi4eCWJLuNdrxghDicMlNb+GKXj0vX3xAnVwyVNAYQqB2Orlh0X
         Y47HQ0sge2z/6cxOTjpUENUIyiX0SZjMQHhVfPPKB9a6/3Sx9pN6pEh5xvkc1JcjSEK7
         SF7yuPNmtezOZ/XCDrqaJ8Jc3eRCTklyyJHw12lJkN5ZUxD7AW9L3KEOw/3SbfP2cIpl
         Cr17beQsCEitHADfopFriu5oinWh93y2ZgHSgw/6ecw7eWSwXFU9kjRHZHbWmOVZYrtk
         BRK8ucsSi7tD8XMi4QV4lsT+DPBCQ1ZZu4HwEzXd1Pof3dWK5GdA3WnLivIGp/xcKvz7
         jSzg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=n6+3sbN0qRTgGcrOOUXSV8Mxv6bW9RYOAVOO1LSMtwo=;
        b=kjxqiMb+c/Nc9joBggCas5Wgkr6W+AHn7LD2ss4sa6r+fUJYnZ9Nk0P99MHgayvQWz
         L8ArIOMPSQ/4JPoJq5V1vJnwXOpE73bxDrxagC0q8kmNCOUwNlL7YQnb6LxkBpeSxk9f
         tKJLrxjMW+9+8UHMEebM7CLp+XZObJ+tzatH9dCZu9RRH6eLvPdQ6M4X2U4HaJV+EY17
         4CacF5CN1XJoFJiP+VR1L3KoyjGHEWCy4vKmFi+j3p+hzoWu8SKpMcAdX1Rluvnap95+
         g1SpxBaG9BcEYqNr7OKQSj4QjZCm90WAiLmwGbvmNqb6C8LsMMTOG+iHQ/aTyJZsI71U
         YFOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=n6+3sbN0qRTgGcrOOUXSV8Mxv6bW9RYOAVOO1LSMtwo=;
        b=oIMd7NNbN5hhB9iPGANkmtrWc0GveydgTVgfxGbaWWWoQY2b+scy5bMPn7xTGNc8x1
         yYoxMEv+hjJetyNZMpCccComfVN94FhN7mY9vcSGHO/YAi2MqBb2USflsGTI9h6TidXV
         l+OTPTRuKA+e9xbAf27K/lLtC8wicAD8KGNe+sQyuFcpyPdRReMmcyOs7VvBtBmP9kqY
         Y0jf37OXfGWpFgjj24ssv+EG6awPMLfjhqwB7IT9m8zxGOEwNF0tAYhkVGBi4UKblFIK
         yeKwYOc7ppR3Yi2Iv56ZJUJxWjwLm1lQbKz1bGErg1UXLfwP1zUvc4SqjacdYLHHEgIX
         dkTw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVUz+DGNU6Rrm2tKX8vjN6MNTGgPHsDIL/+cZjExbUfFeyQ1Jt8
	+nrFh3nPmfuPy9OANrZbhPE=
X-Google-Smtp-Source: APXvYqxs79IbaMQexKeOmUC8MOGcWw7VQtDe75W6Mpv1OQGxjOeVybYyw9WqHKiCcUTd2wR55izLwQ==
X-Received: by 2002:a5d:4085:: with SMTP id o5mr50881435wrp.101.1563482414129;
        Thu, 18 Jul 2019 13:40:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:96cf:: with SMTP id y198ls10876302wmd.5.canary-gmail;
 Thu, 18 Jul 2019 13:40:13 -0700 (PDT)
X-Received: by 2002:a1c:a584:: with SMTP id o126mr44856119wme.147.1563482413687;
        Thu, 18 Jul 2019 13:40:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563482413; cv=none;
        d=google.com; s=arc-20160816;
        b=d+FLTXYxbkaX4uEu9DL8pa0QC6NO32Dy/Hrnbjw9mu2jc5C1OD4IhePldYKlsl8I8E
         Lh/yqaCmPeGRA7FW1ibsaSkiUT7TbtejR/TsURhlrdCi4uKm0TmUoKGGWPSJ1dbmoNgQ
         ePm0/94nEXUWe324Xnl879pkcmcKN1XmB8sBOTQNUYW2fKHxoclxPWZghQ2W7+sw7BzN
         yPmm1XP0QMGKoY4m8kHpL+h9mZVxA3Ude7qimQHW3q3C8zcpHnOaPYU4Av1z07KPryal
         cY/zKVs0QzJQTf1Q61KsWouarZIgp8f0piPwcnsyBCPMU6LY3PKw+zUGY8sAFy4zI6Dp
         oFhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:subject:cc:to:from:date;
        bh=L45gkTKAW1DF31waLjHyOhtg7bkgby63BIyLF08BIz8=;
        b=cBSjuudwEaseYuYhcja2IpzIy/PrVl13T5Kqt4U6v+CnZXpHeX+gJjo1iiLg0BJfkY
         ER+ALtQai9O1R8nmkbM05bCsfUwDxxWsuZOzaHC23LslCUIY9yOxRM2xVyFAP8iP+Zda
         1O/Ae+t6aAZscZx7RvKPEibaHQ91VebG1JJ0N+VuvUYWSC+ta7tfbyoztIt2KfKAuuND
         yN+MNhxfvgBdUV2wCK9AKZQ8yLo1p8sUibdkAqGR41PHjalcoHhicKEZ4qiL6krbj2y1
         4vt+4JDTPBYom/0nYA6mfSlTNMjkyreH4ljnzwnrr9vixH9Ouf0PIuNzPf/ce6nod8E7
         YFCQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de
Received: from Galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id p15si1159974wmb.0.2019.07.18.13.40.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Thu, 18 Jul 2019 13:40:13 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Received: from pd9ef1cb8.dip0.t-ipconnect.de ([217.239.28.184] helo=nanos)
	by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
	(Exim 4.80)
	(envelope-from <tglx@linutronix.de>)
	id 1hoDCF-0003Zz-3o; Thu, 18 Jul 2019 22:40:11 +0200
Date: Thu, 18 Jul 2019 22:40:09 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: LKML <linux-kernel@vger.kernel.org>
cc: Nick Desaulniers <ndesaulniers@google.com>, 
    Nathan Chancellor <natechancellor@gmail.com>, 
    clang-built-linux <clang-built-linux@googlegroups.com>, 
    Josh Poimboeuf <jpoimboe@redhat.com>, x86@kernel.org
Subject: x86 - clang / objtool status
Message-ID: <alpine.DEB.2.21.1907182223560.1785@nanos.tec.linutronix.de>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required,  ALL_TRUSTED=-1,SHORTCIRCUIT=-0.0001
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of tglx@linutronix.de designates
 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de
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

Folks,

after picking up Josh's objtool updates I gave clang a test ride again.

clan is built with https://github.com/ClangBuiltLinux/tc-build.git

That's using the llvm master branch. top commit is:

  0c99d19470b ("[OPENMP]Fix sharing of threadprivate variables with TLS support.")

I merged

  git://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git core/urgent

into the tip of Linus tree to pick up the latest objtool changes.

Here are the results for different configs:

1) defconfig

 objtool warnings:

  drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: .altinstr_replacement+0x88: redundant UACCESS disable


2) debian distro config

 objtool warnings:

  drivers/gpu/drm/amd/amdgpu/atom.o: warning: objtool: atom_op_move() falls through to next function atom_op_and()
  drivers/infiniband/hw/hfi1/platform.o: warning: objtool: tune_serdes() falls through to next function apply_tx_lanes()
  drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: .altinstr_replacement+0x86: redundant UACCESS disable
  drivers/gpu/drm/radeon/evergreen_cs.o: warning: objtool: evergreen_cs_parse() falls through to next function evergreen_dma_cs_parse()

 Build fails with:

  clang-10: error: unknown argument: '-mpreferred-stack-boundary=4'
  make[5]: *** [linux/scripts/Makefile.build:279: drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_resource.o] Error 1


3) allmodconfig:

 objtool warnings:

  arch/x86/kernel/signal.o: warning: objtool: x32_setup_rt_frame()+0x255: call to memset() with UACCESS enabled
  arch/x86/kernel/signal.o: warning: objtool: __setup_rt_frame()+0x254: call to memset() with UACCESS enabled
  arch/x86/ia32/ia32_signal.o: warning: objtool: ia32_setup_rt_frame()+0x247: call to memset() with UACCESS enabled

  mm/kasan/common.o: warning: objtool: kasan_report()+0x52: call to __stack_chk_fail() with UACCESS enabled
  drivers/ata/sata_dwc_460ex.o: warning: objtool: sata_dwc_bmdma_start_by_tag()+0x3a0: can't find switch jump table

  lib/ubsan.o: warning: objtool: __ubsan_handle_type_mismatch()+0x88: call to memset() with UACCESS enabled
  lib/ubsan.o: warning: objtool: ubsan_type_mismatch_common()+0x610: call to __stack_chk_fail() with UACCESS enabled
  lib/ubsan.o: warning: objtool: __ubsan_handle_type_mismatch_v1()+0x88: call to memset() with UACCESS enabled
  drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: .altinstr_replacement+0x56: redundant UACCESS disable

 Build fails with:

  ERROR: "__compiletime_assert_2801" [drivers/net/wireless/intel/iwlwifi/iwlwifi.ko] undefined!
  ERROR: "__compiletime_assert_2446" [drivers/net/wireless/intel/iwlwifi/iwlwifi.ko] undefined!
  ERROR: "__compiletime_assert_2452" [drivers/net/wireless/intel/iwlwifi/iwlwifi.ko] undefined!
  ERROR: "__compiletime_assert_2790" [drivers/net/wireless/intel/iwlwifi/iwlwifi.ko] undefined!

 This also emits a boatload of warnings like this:

  linux/fs/nfs/dir.c:451:34: warning: variable 'wq' is uninitialized when used within its own initialization
      [-Wuninitialized]
        DECLARE_WAIT_QUEUE_HEAD_ONSTACK(wq);
                                        ^~
  linux/include/linux/wait.h:74:63: note: expanded from macro 'DECLARE_WAIT_QUEUE_HEAD_ONSTACK'
        struct wait_queue_head name = __WAIT_QUEUE_HEAD_INIT_ONSTACK(name)
                               ~~~~                                  ^~~~
  linux/include/linux/wait.h:72:33: note: expanded from macro '__WAIT_QUEUE_HEAD_INIT_ONSTACK'
        ({ init_waitqueue_head(&name); name; })

Thanks,

	tglx

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/alpine.DEB.2.21.1907182223560.1785%40nanos.tec.linutronix.de.
