Return-Path: <clang-built-linux+bncBDB3VRMVXIPRB566UCAAMGQENTEHCLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DF2C2FD140
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 Jan 2021 14:26:16 +0100 (CET)
Received: by mail-lj1-x238.google.com with SMTP id f20sf6627787ljj.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 Jan 2021 05:26:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611149176; cv=pass;
        d=google.com; s=arc-20160816;
        b=o8lqkfI3JXsMXHNdL4+328MLAgO7VWXnGfS/dmM7drb2fQsC6qjp95L6MsWd3+4AVL
         A7Dc3HmJ8S+CxSxWE1GQKlqb08/CtXiVtjRB2WuhXT0k1//42JUDVYdHBxxesbiMiIwk
         0e87zfPp3tGgQs0VA2uezOmX1BMexA9K33xfuK+19134F9XEXHZ8EiuUNftga6DsqDvu
         26ct2Ab/vmhpgybjYQV0VRb/82mFYMBIR4YpKsDh/P8bUzceouVevrM1wVw1mtH/v3K4
         lkMaYd3LZu2etcf4cTr9dSvAaIHvWjCVn/j0F76g6BvmPx0JFRyiJfbwdVZGfKa0PLhG
         lciw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:to:from:dkim-signature;
        bh=Z3ey16kHPuydmXjYA0oZ2SCVp6HxKnM+mzeLmuxBjSM=;
        b=xp0FpKbUp0GSCy4QAfxHlXdykn4l73yBI38rEkW0kBdhyCKpz+VXWiOTcwDJ1xm8dW
         D1JzmcvydVhxBgMIEPfCXOOCL/f56D5TMsRkqnW1rJNR1LT9ZFkSv3VCuxMwMozNqxbS
         9enK3gtM8e4tW+cUjZTuhM7r4xBRV69WuDldVZL+CuXjO6lZH0hbYnWhkIxcNXyqiq0c
         780i/zO9EX9x1WHmEqqjkPOHQB8wTJDo+lNG2k6iuSKswJ1VSt6rdNDNlVh6V8glJbYM
         840wq3yqvxCQEsS2Mb71xwT2uPWwIDSgHltRbzyKfJ5EaKHZgr/SpOoaMk0LYGCNxi1D
         ZJ8w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=YoQQYyi9;
       spf=pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=jgross@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Z3ey16kHPuydmXjYA0oZ2SCVp6HxKnM+mzeLmuxBjSM=;
        b=ZVFbrUvZ0T+03GT0g0tCMnY0wwHGjW2ll1d5XxQkGVXk++4r5O3dpN1BeSSUKW4ybd
         QmGEAudOD5SQTXduPGW+IzcgwVNsLW7bGpwTPpMbG4uDoydbWoBIl0+xEJvbWJe5zPnC
         sOg87MN0qlTAC4AVOOSabVnow08v7vCgPmThRpU2zTXHkBfCi5Hcqv3PKxuQtvwU606h
         7zB7gYXZc5jf1MgV6T42QuUtEyjJGY3VqaLYB7jsS0MAH5+50eBw9Hq2IrUUnTYtRVyk
         q9gj6BC/nebBeljfAXf1af0x+jc1V65y7LgaLFQI2mts87Iuw6wZZXj9cnwzvC18nOxo
         fElQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Z3ey16kHPuydmXjYA0oZ2SCVp6HxKnM+mzeLmuxBjSM=;
        b=hHFJuzjh6fe2PgOrA1MaNuoB0OjKXJhgHQrZ3k/8BYQCSHsZAqrlwLptcVpvqn5Jmg
         7xT/AMfqH6q/mmSjlH9LshKFv7oJLnKVoL11XSuYnhTkzDrz7+XfsrnSFBIeh4vfJV4W
         wVOW/zrfBzuEywO02Fhq89loAdXXSwNLt9ZlbFLdqWNmJoHFLzUBnVi/O5cerdP7F8KZ
         ZzV8WTBmKBc4GcjeGOFB+ZkZwtS1QMKXiJETnliM+7/nHdE1etGiG6lN1pelvhNYWsNm
         2O1RWVIWSL5okh5GTq78nsOLJWifwz23RiBRpGzgZaJRAcCOjNpxs9HahpIKVO2qH5ld
         arIQ==
X-Gm-Message-State: AOAM533nZH76/3W/+AIKyDAL4YyTHUdlI7na3kPkX7bbsy1V/KLnIBpk
	zNJVC6u40Z3nn0RkDgKicy8=
X-Google-Smtp-Source: ABdhPJxEMLU4uK2RHi2h727u81+OpLejVuWD8jP4LAhK8PPNqMPnH3Bkgh7yyEyojwlGl/gutm89Wg==
X-Received: by 2002:a2e:6f18:: with SMTP id k24mr4156943ljc.225.1611149175886;
        Wed, 20 Jan 2021 05:26:15 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:b549:: with SMTP id a9ls4119815ljn.1.gmail; Wed, 20 Jan
 2021 05:26:14 -0800 (PST)
X-Received: by 2002:a2e:b16d:: with SMTP id a13mr1261401ljm.39.1611149174924;
        Wed, 20 Jan 2021 05:26:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611149174; cv=none;
        d=google.com; s=arc-20160816;
        b=07mkMhtThR5WLjYBEYhbhrDEMDLilJuljedEHoQclMcOzZK2UZljZTwy+oI5ZqLgrm
         K2Caav1gbbZ9sfJ4UfdSJ4PW8YbpxC1Sgtvh7IsH6J/6ELEVmI7erdGnwQbNXeohWodE
         wqfRCj2fbceMJCma42+sQdBtumiT7/Wj9raKUziTfvH07vfvUEykVYCNxR8ZiNnHFvW/
         lyNEBslXbHpiouZZSX1D2p5W9sTv9VN8nWvICy+8OrL3UzsMixUya+E+dTfyCTfiHfWZ
         4F2e+XLM/ZktVA/1iXI3xZFdEv4IsuK3GzBeE2FYwQDost6aoTZvWGMT23bth5MqhUu4
         GvJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:dkim-signature;
        bh=CpmyovsicWRsraKS/oNts+zojxJvItjt3KCZ7hy85ig=;
        b=N9of5i+xeFooeoSMaX8Xln9XBm4rdYjpyJpZktWYCHlpDtuwbSqg/qemgZOJVg0Th5
         ehjPfDZOvW6jTMO6tdKCIo4+dxPwx6vM1AwgbvL0xY2sE6hoDX+7KUDbDUN1d0v+lHO6
         Jp+FFJw1l2XLvkWgfRbWeZ2ZHfYBqkjdHtoy4yfb9y4teb5Xnq3IWWwZWUSHc3C0xyks
         dZmX+1++Qeb4gbpYTXHHcshYUGfz3gQgJCymb53rkyBk4sQ4igJDOxx9M21c6ihOthip
         ihBjxB0+WFsgRqvy8hE7WF7yCUbPtpTS76XfyOeB5An/RZH+FWR9luD5SiCi65qSWPbZ
         TVIA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=YoQQYyi9;
       spf=pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=jgross@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id 7si101147lfp.13.2021.01.20.05.26.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Jan 2021 05:26:14 -0800 (PST)
Received-SPF: pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id 0F7E4AAAE;
	Wed, 20 Jan 2021 13:26:14 +0000 (UTC)
From: "'Juergen Gross' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: bpetkov@suse.com,
	linux-kernel@vger.kernel.org,
	x86@kernel.org,
	virtualization@lists.linux-foundation.org,
	linux-hyperv@vger.kernel.org,
	kvm@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH v4 00/15] x86: major paravirt cleanup
Date: Wed, 20 Jan 2021 14:25:58 +0100
Message-Id: <20210120132613.31487-1-jgross@suse.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Original-Sender: jgross@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.com header.s=susede1 header.b=YoQQYyi9;       spf=pass
 (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted
 sender) smtp.mailfrom=jgross@suse.com;       dmarc=pass (p=QUARANTINE sp=NONE
 dis=NONE) header.from=suse.com
X-Original-From: Juergen Gross <jgross@suse.com>
Reply-To: Juergen Gross <jgross@suse.com>
Content-Type: text/plain; charset="UTF-8"
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

This is a major cleanup of the paravirt infrastructure aiming at
eliminating all custom code patching via paravirt patching.

This is achieved by using ALTERNATIVE instead, leading to the ability
to give objtool access to the patched in instructions.

In order to remove most of the 32-bit special handling from pvops the
time related operations are switched to use static_call() instead.

At the end of this series all paravirt patching has to do is to
replace indirect calls with direct ones. In a further step this could
be switched to static_call(), too, but that would require a major
header file disentangling.

For a clean build without any objtool warnings a modified objtool is
required. Currently this is available in the "tip" tree in the
objtool/core branch.

Changes in V4:
- fixed several build failures
- removed objtool patch, as objtool patches are in tip now
- added patch 1 for making usage of static_call easier
- even more cleanup

Changes in V3:
- added patches 7 and 12
- addressed all comments

Changes in V2:
- added patches 5-12

Juergen Gross (14):
  x86/xen: use specific Xen pv interrupt entry for MCE
  x86/xen: use specific Xen pv interrupt entry for DF
  x86/pv: switch SWAPGS to ALTERNATIVE
  x86/xen: drop USERGS_SYSRET64 paravirt call
  x86: rework arch_local_irq_restore() to not use popf
  x86/paravirt: switch time pvops functions to use static_call()
  x86/alternative: support "not feature" and ALTERNATIVE_TERNARY
  x86: add new features for paravirt patching
  x86/paravirt: remove no longer needed 32-bit pvops cruft
  x86/paravirt: simplify paravirt macros
  x86/paravirt: switch iret pvops to ALTERNATIVE
  x86/paravirt: add new macros PVOP_ALT* supporting pvops in
    ALTERNATIVEs
  x86/paravirt: switch functions with custom code to ALTERNATIVE
  x86/paravirt: have only one paravirt patch function

Peter Zijlstra (1):
  static_call: Pull some static_call declarations to the type headers

 arch/x86/Kconfig                        |   1 +
 arch/x86/entry/entry_32.S               |   4 +-
 arch/x86/entry/entry_64.S               |  28 ++-
 arch/x86/include/asm/alternative-asm.h  |   4 +
 arch/x86/include/asm/alternative.h      |   7 +
 arch/x86/include/asm/cpufeatures.h      |   2 +
 arch/x86/include/asm/idtentry.h         |   6 +
 arch/x86/include/asm/irqflags.h         |  53 ++----
 arch/x86/include/asm/mshyperv.h         |   2 +-
 arch/x86/include/asm/paravirt.h         | 197 ++++++++------------
 arch/x86/include/asm/paravirt_types.h   | 227 +++++++++---------------
 arch/x86/kernel/Makefile                |   3 +-
 arch/x86/kernel/alternative.c           |  49 ++++-
 arch/x86/kernel/asm-offsets.c           |   7 -
 arch/x86/kernel/asm-offsets_64.c        |   3 -
 arch/x86/kernel/cpu/vmware.c            |   5 +-
 arch/x86/kernel/irqflags.S              |  11 --
 arch/x86/kernel/kvm.c                   |   2 +-
 arch/x86/kernel/kvmclock.c              |   2 +-
 arch/x86/kernel/paravirt-spinlocks.c    |   9 +
 arch/x86/kernel/paravirt.c              |  83 +++------
 arch/x86/kernel/paravirt_patch.c        | 109 ------------
 arch/x86/kernel/tsc.c                   |   2 +-
 arch/x86/xen/enlighten_pv.c             |  36 ++--
 arch/x86/xen/irq.c                      |  23 ---
 arch/x86/xen/time.c                     |  11 +-
 arch/x86/xen/xen-asm.S                  |  52 +-----
 arch/x86/xen/xen-ops.h                  |   3 -
 drivers/clocksource/hyperv_timer.c      |   5 +-
 drivers/xen/time.c                      |   2 +-
 include/linux/static_call.h             |  20 ---
 include/linux/static_call_types.h       |  27 +++
 tools/include/linux/static_call_types.h |  27 +++
 33 files changed, 376 insertions(+), 646 deletions(-)
 delete mode 100644 arch/x86/kernel/paravirt_patch.c

-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210120132613.31487-1-jgross%40suse.com.
