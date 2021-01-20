Return-Path: <clang-built-linux+bncBDB3VRMVXIPRB4PMUCAAMGQEEC2D2OY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C9C22FD1F1
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 Jan 2021 14:56:02 +0100 (CET)
Received: by mail-lf1-x139.google.com with SMTP id v187sf8755480lfa.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 Jan 2021 05:56:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611150961; cv=pass;
        d=google.com; s=arc-20160816;
        b=MyZ6PMdGITE88cfHUeafTA9mYe1Pq7epbJUOOqbJG5de5AUL51Rz35lyFHuQ2ksKSp
         CMi4sPYUv5H7yzii9+xDS2EtjbEqLrpwRqw7u5egZsCQbJSlXo23rLmwUwsf2A/yxZUO
         3dWwV9pO7bd/QJ93zc6vgnhtYynFkN7IyDSy6TedTC2TApqRxA4leKyHnjgMNgexV+52
         yulvG6rx8bi2WDqjRJ/uLqysDA4TY6s9tdxSCnwuSvf3BXtRUtkE22tuqSOlEFVZ3G0r
         OgReMXui3duP+AJoOgsMnSVURDp5wqc6VqLLDSRLcy5IDK8Kt//BKLnr3M6+mS+nCz7z
         rO+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:dkim-signature;
        bh=deee4SGuHXLfesLbhVtOntyIEchlyXTpgiZXM/Y4tH4=;
        b=bRiqxG02UKRa4dKJuSvn5zI+4ZdgWYKzYXeuhGwyuo52wf+Vn5I/TyS2ImQmgZiNVa
         jBf6QY/schoO9RkrfrBTOAJPTOKiGF04sN9iobSu4KlU/MZurWSirtOdq46//10l1SSr
         Kzs2kHanKVjxT5qJ8QEjy0SsJRme/dYH7Ou1BXCURh5ASkMh8oz0aZ8kKMIHFW7jJjXc
         rQWL6Ic2BcSTUwhmmX3Sn6+XbNslii9V1wvEpClM7CY3y12SYn0xiomG5Xb06tG0YYxD
         mCZ9nhJNteRB2xqWnc5Xt8fD7fWoFaTr0o/iIiI6jcqZjrL0cEfhUS7LaPhMRZ4NMnzV
         n32A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=u4mfyPjh;
       spf=pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=jgross@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=deee4SGuHXLfesLbhVtOntyIEchlyXTpgiZXM/Y4tH4=;
        b=FfJGUhkkLhKI3MusIU6tojeOcu6yv1A3NAE59U7lmWuaoTosKxQPiaw8gu4Fc5VyCK
         ZXZPx0imZV/rt8GPwEq7seSooXY93H19TgVV7JGE/2yjPOBi1PU/Vm8nwUrJiqFvZBpv
         zsWDB4rS8NtuvGbE8aGg5V/SF44s8o4RZb9hIgAXjkkHLVomXgknDm8x1ZU+vjgXBDR2
         cOCFDxTdocpazLQSXLxBDyutDUJBnSIJh5GoiFBl+HxAB8ebL35HdFFRQB90jUuVw4aN
         FqBVVwowjIsamw4xGpEgyUhkzRJAF9Y1IfOsR8kc+k+VmWj/9CmT8dlodCHsskxii70M
         zk4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=deee4SGuHXLfesLbhVtOntyIEchlyXTpgiZXM/Y4tH4=;
        b=fL8CRHQ+i5kE8a0eDXPFQN7/W4vuO66h/WSZc5JaptrHlJxJQLr4ojGKe2lEAv+IIc
         9aTEq6vS1oYcVugiy2bZpMrBAI+YOJ9oT5Ir5wfm/8rzuEnmfA/AFUz2I6CmSZ6ISQEc
         ojlk8tbvb6ojI1n8mgFt+nagFM468SrKV2tgS4J5kmNR4+mzc97cb+QvPXnvzW2oCPS1
         b81NbVpkfFSipTEg2mYIkNLyXqk6fRcEq8ReQX+pf5AniPmOTD1vUKKMq9rjl8sMEu4+
         Cnt6S+ircoM5zUSt/+T/ZJQLoRwP8iBr2BjARoRLqVTOmohGwL9YkCiFFUER4s18J0ld
         uh0A==
X-Gm-Message-State: AOAM533CqgRAIaLj42Jab+LMRoAx9GbHq3ggRaK+C3nf5GrhrrGnkguL
	GhNdO6t28x3qi/Yw3dlXUOY=
X-Google-Smtp-Source: ABdhPJxxkWHJIHl8uxM9FmQVKfkJq4JgMGWvknOxi/fuOt5GKZ8tlPFhA8iE38i0wY8jE+4IuoeP5A==
X-Received: by 2002:a2e:810c:: with SMTP id d12mr4299841ljg.400.1611150961812;
        Wed, 20 Jan 2021 05:56:01 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:6145:: with SMTP id m5ls2966622lfk.2.gmail; Wed, 20 Jan
 2021 05:56:00 -0800 (PST)
X-Received: by 2002:a19:8b8b:: with SMTP id n133mr4268084lfd.278.1611150960851;
        Wed, 20 Jan 2021 05:56:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611150960; cv=none;
        d=google.com; s=arc-20160816;
        b=Mt26DU2oFYsyW3/u53xjLsfTkNgGL26YzWiycinYWAQszMpBBEWFyN7MzWcNBlPYO1
         0Mhb6Dpjfdh73fcbH7TEwmeoJ62seHGwThFWLkCxT7BCTIRw/YdZaLMO46SSNpdgQ02E
         WSEG2BLQFxxDgOPEHEq7MulUlIVx1UkHHAQmG7QfRbgmkjdFWjFJIwAcCS6InVP4Kci5
         onb6R0nKtJ7jJfSQ15jGiLWaclPXLrGDpsdMQOuPfrenUhqMhMjY4aWVmGdjNPWtjCKs
         LI0Z9oaEQviQ+ntOSyhuMPea/6eLh2pBodUHrwdhLuJHD3972aqoZrjB+fZHbbj2dwaU
         w1Sg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=+aDp550Lm+rofMztKr13LGN261/aN33kUiCXnXHZSts=;
        b=mJYwXngiefPOPBaHQdvX7oAcABaWpDcrE5pvWI86IE3GfdQkyzRC55sbjLQjf8QeqY
         uTenxlC1q0jezsKQHDmPZdu0Hbi1b+Yv0A5qU7u9db8UryL+eATQJS1trQKWYuZz6aZh
         pnwLam6gkeHn9XU/icGGYkdE7ozJAN6VQW91UQdeQjBPiegZxmLQXgIj9D0TN0h6d810
         UcTzRZhQy4HR1v+RkFZZMrJ770SE+v6PwqDQddsfacZ/XDzchtt34IiOTErNdSepKipr
         AnAszcRzgJF4EhFGdJQjk0lyl3GmJDrCnrFKTlcvjqXBAFSLI0eQwUH0ro4N3ayRB63+
         rr1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=u4mfyPjh;
       spf=pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=jgross@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id t21si69678lfe.3.2021.01.20.05.56.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Jan 2021 05:56:00 -0800 (PST)
Received-SPF: pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id D8566ADD3;
	Wed, 20 Jan 2021 13:55:59 +0000 (UTC)
From: "'Juergen Gross' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: xen-devel@lists.xenproject.org,
	linux-kernel@vger.kernel.org,
	x86@kernel.org,
	virtualization@lists.linux-foundation.org,
	linux-hyperv@vger.kernel.org,
	kvm@vger.kernel.org,
	clang-built-linux@googlegroups.com
Cc: Juergen Gross <jgross@suse.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	Jason Baron <jbaron@akamai.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Ard Biesheuvel <ardb@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Mel Gorman <mgorman@suse.de>,
	Ingo Molnar <mingo@redhat.com>,
	Michal Hocko <mhocko@kernel.org>,
	"Paul E . McKenney" <paulmck@kernel.org>,
	Borislav Petkov <bp@alien8.de>,
	"H. Peter Anvin" <hpa@zytor.com>,
	Boris Ostrovsky <boris.ostrovsky@oracle.com>,
	Stefano Stabellini <sstabellini@kernel.org>,
	Andy Lutomirski <luto@kernel.org>,
	Deep Shah <sdeep@vmware.com>,
	"VMware, Inc." <pv-drivers@vmware.com>,
	"K. Y. Srinivasan" <kys@microsoft.com>,
	Haiyang Zhang <haiyangz@microsoft.com>,
	Stephen Hemminger <sthemmin@microsoft.com>,
	Wei Liu <wei.liu@kernel.org>,
	Paolo Bonzini <pbonzini@redhat.com>,
	Sean Christopherson <seanjc@google.com>,
	Vitaly Kuznetsov <vkuznets@redhat.com>,
	Wanpeng Li <wanpengli@tencent.com>,
	Jim Mattson <jmattson@google.com>,
	Joerg Roedel <joro@8bytes.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: [PATCH v4 00/15] x86: major paravirt cleanup
Date: Wed, 20 Jan 2021 14:55:40 +0100
Message-Id: <20210120135555.32594-1-jgross@suse.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Original-Sender: jgross@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.com header.s=susede1 header.b=u4mfyPjh;       spf=pass
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

[Resend due to all the Cc:'s missing]

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210120135555.32594-1-jgross%40suse.com.
