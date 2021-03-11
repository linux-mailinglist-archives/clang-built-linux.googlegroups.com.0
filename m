Return-Path: <clang-built-linux+bncBDB3VRMVXIPRBXGPVCBAMGQE6SZASPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 7835433755F
	for <lists+clang-built-linux@lfdr.de>; Thu, 11 Mar 2021 15:23:25 +0100 (CET)
Received: by mail-lj1-x23e.google.com with SMTP id k4sf8657383ljg.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 11 Mar 2021 06:23:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615472605; cv=pass;
        d=google.com; s=arc-20160816;
        b=xloX7Iheh/nX5xmc7uQF/sKQDMN3Cu3AYL5TtHih50ZknQn4X0arKoM8+yRQiqSw8l
         MJyENwgSpieBVqNbfUB8DJ1+7bmyKO6ef+IpargQoVj8Ql9OBJOWXe1iRuMcwpaxLcjT
         vqH9lkkmJsVsER5/WO1s0A2zUXdAIqDKzSpGeYWEnFOTyGLMWcpc+se5P6QByI6rUI1x
         0gQggEHk/ol4rMdx/AgWlrLRCNFPMqbKrlGf9FtyYg388PRMMLdicErlG0KMlDCuMQcY
         4MtAmrZlZ1UgJ5fzRqhNum6j63esbEeri3Ktfy+eBX+3JbKt4YWmzixr6NRlo9NA2LDH
         R2Ug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:dkim-signature;
        bh=vMdwJ4HicnsENaAsO4veOZxmubPCS3FOa5VL3yaTr3Q=;
        b=VP7c1wX+Ixpow2YOv9elNweTfUdTkjRT65c4zte5JQ8/OxMiVfQlV61+TMxOGa1kk1
         xtdvAiwiS//QBGcXOF3hIqmc0dCNPng1U05X99LfV2OAynf0eg3x6hCtg8NlM/ZtpvUP
         kAtvI67kfj62NwlNtA7QbwiOvgGDpXmDj9T1WWYvKGBD/fqxnMUANyGL4PF+D7rgA2TI
         nTUTNLM0TV49RHMZRWPfdcK0WTGD66wWq12KB+PBNp0lqN+TqflRh3yPAp9MywscxWFI
         h5bwhX5dKedHJePcRqOcVisXXWMO9e9ZTVDtF0H5/AniRWCJqNe1f3VQYv+o7MnMMo0x
         gacg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=sjqqOUQp;
       spf=pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=jgross@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=vMdwJ4HicnsENaAsO4veOZxmubPCS3FOa5VL3yaTr3Q=;
        b=HY3BttZ0xUTgdBTPrFK2ca0kO2putP44XIgBqL3iuPRaxZL0bFJkbwmm1IkDELkoji
         5TezL02yeBgfLvEoxgn5yNWyunpwiBJXL1nUCvKt6u5a6xXxtBiqqmiIV8y0FAftyRXR
         /e4FB1Uzhcz0nXIhZFmIZctUNjwoE1oFNwFpHBDczxA1fdDEIDk2vgnU4LgL1Otxgl6W
         H4eD4chhTh2RWrp1iNYjKxkktR1COI+JCs2F+A0e9iqeNqvekqnVd2fNBNg6W/glLwRF
         SupT2duJVtKx+uvyD7Gl26TfxzWUh8mxjrOnqsrb+ku4dbDRhBsBqLa8x0uxIWPS14gN
         x/OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vMdwJ4HicnsENaAsO4veOZxmubPCS3FOa5VL3yaTr3Q=;
        b=IicM7Qie2DyxNTkLphMCkKMr2FZc7dsK5yUJlpliHanrhnJPa7x33Q5bsvUhM6QQSU
         xIG9+/Hw55w8p847WUXdfSNv/U5Qiej6FvZuy96s2bbjOi9kAMfYRra0KRHcWUCMp3l3
         v4NcuSPbXKeUV4GPwKm1FRRDGix959ItsMVil2AJUT7/+DpBi/yL3QMXuuSGeIKOh4j3
         jovHZYGtDrcEOdaNVrWPTPDEPNBypaq6E3tOlcQ8FnWrsZBmWkmG/4yzzC4kLWpduBau
         5M/+eFWTeZ5v6ZKcl0d5SSfeD5gX2vrSTpHTcHm4vOOB+RGhA2zEquwKKzl0nkiQRe8v
         dvRg==
X-Gm-Message-State: AOAM530eR9bK+kKlNSmmWWB5BWaRHdoBgowtTVoXO6d9HwtrQK9AAGSA
	JfRvT9enpGRmWYOKVP6OQDg=
X-Google-Smtp-Source: ABdhPJx60Yz+sxzuXk7vsNrPbptBjPsRt9YdsHFIurx6cjZGX00qk2QWSOeJjw8RRg4qlUlpYr6oRA==
X-Received: by 2002:a05:6512:10c5:: with SMTP id k5mr2353499lfg.583.1615472604973;
        Thu, 11 Mar 2021 06:23:24 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3993:: with SMTP id j19ls905363lfu.3.gmail; Thu, 11
 Mar 2021 06:23:24 -0800 (PST)
X-Received: by 2002:ac2:5f1b:: with SMTP id 27mr2446063lfq.425.1615472603922;
        Thu, 11 Mar 2021 06:23:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615472603; cv=none;
        d=google.com; s=arc-20160816;
        b=fxmDXqa2kFubhQnUjubQWT6IOUSiBpcnO1C7tVjKoevE5aZEMKwbQm1w32U7ZrO+UZ
         BA+bQq+GrayVmRC3WHC1pjfFxP3F79t75kpmAsiesW5h0VHluDLi/4YafGYPLrZGB6EV
         WwxmrOv/h/+zPVHixyn9l5eEyqWNoi7+47Xltd90DR9K2l7JWST3CMbXKrhbjfKxfeFd
         6w5cMmIpDHlD2ALmKG/RXq+uNvndBsCAbPH//Snnx0bOBjwsJ2Xrvl00gKCJ3kD/fS65
         qdnmps1qWGGH5IRErNOA356f5/OK0KTR4UoAqxI466t8NuYCksTdqDHejC9Y+y3F1qrT
         SzpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=po4QZsHAN+vzX5uvzJmshXlPCac7n69c5r9Fdn0dvCo=;
        b=wg65EE9TWgNnVL0U95oGbJhbd5kpUl0eKTDLf96wodSCxBWdiACHUmijSG/OH0TvWv
         JKcRyv0/likGFfi7LdcV79NmOqQSNbyeTzm/6QbmkgvPKnEHSgEFWv0k74lwymmy8Z/f
         WKECItAYuBszR5JwX3s0EZccfwaHjGYaeD5pFPZ486Ye7Vaw97gGvhqGgG2k2e7/rSyQ
         s7ZY1aGTR8cwzevS0S9rikVhkqr7pQjqagH00D9kmy3CWSSbVwrZD7Or9BoGy7A26q8Q
         TdtmoINwTkHb3KfdWYr9ffWjrpKhOc9UU+Td2hkhaHk07/8lka3hx5HQ/aASZCGS0Inr
         TrRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=sjqqOUQp;
       spf=pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=jgross@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id v3si128841lfd.4.2021.03.11.06.23.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Mar 2021 06:23:23 -0800 (PST)
Received-SPF: pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id DB47BAC23;
	Thu, 11 Mar 2021 14:23:22 +0000 (UTC)
From: "'Juergen Gross' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: xen-devel@lists.xenproject.org,
	x86@kernel.org,
	linux-kernel@vger.kernel.org,
	virtualization@lists.linux-foundation.org,
	linux-arm-kernel@lists.infradead.org,
	linux-hyperv@vger.kernel.org,
	kvm@vger.kernel.org,
	clang-built-linux@googlegroups.com
Cc: Juergen Gross <jgross@suse.com>,
	Andy Lutomirski <luto@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	"H. Peter Anvin" <hpa@zytor.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	Jason Baron <jbaron@akamai.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Ard Biesheuvel <ardb@kernel.org>,
	Deep Shah <sdeep@vmware.com>,
	"VMware, Inc." <pv-drivers@vmware.com>,
	Russell King <linux@armlinux.org.uk>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
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
	Boris Ostrovsky <boris.ostrovsky@oracle.com>,
	Stefano Stabellini <sstabellini@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: [PATCH v7 00/14] x86: major paravirt cleanup
Date: Thu, 11 Mar 2021 15:23:05 +0100
Message-Id: <20210311142319.4723-1-jgross@suse.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Original-Sender: jgross@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.com header.s=susede1 header.b=sjqqOUQp;       spf=pass
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
be switched to static_call(), too.

Changes in V7:
- dropped patch 3, as already applied on tip tree
- new patch 3 (patches 1 and 7 have been added to V6 late)
- addressed comments by Boris

Changes in V6:
- switched back to "not" bit in feature value for "not feature"
- other minor comments addressed

Changes in V5:
- patches 1-5 of V4 dropped, as already applied
- new patches 1+3
- fixed patch 2
- split V4 patch 8 into patches 4+5
- use flag byte instead of negative feature bit for "not feature"

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
  x86/alternative: merge include files
  static_call: move struct static_call_key definition to
    static_call_types.h
  static_call: add function to query current function
  x86/paravirt: switch time pvops functions to use static_call()
  x86/alternative: support not-feature
  x86/alternative: support ALTERNATIVE_TERNARY
  x86/alternative: don't open code ALTERNATIVE_TERNARY() in
    _static_cpu_has()
  x86: add new features for paravirt patching
  x86/paravirt: remove no longer needed 32-bit pvops cruft
  x86/paravirt: simplify paravirt macros
  x86/paravirt: switch iret pvops to ALTERNATIVE
  x86/paravirt: add new macros PVOP_ALT* supporting pvops in
    ALTERNATIVEs
  x86/paravirt: switch functions with custom code to ALTERNATIVE
  x86/paravirt: have only one paravirt patch function

 arch/arm/include/asm/paravirt.h          |  14 +-
 arch/arm/kernel/paravirt.c               |   9 +-
 arch/arm64/include/asm/paravirt.h        |  14 +-
 arch/arm64/kernel/paravirt.c             |  13 +-
 arch/x86/Kconfig                         |   1 +
 arch/x86/entry/entry_32.S                |   6 +-
 arch/x86/entry/entry_64.S                |   2 +-
 arch/x86/entry/vdso/vdso32/system_call.S |   2 +-
 arch/x86/include/asm/alternative-asm.h   | 114 ------------
 arch/x86/include/asm/alternative.h       | 126 +++++++++++++-
 arch/x86/include/asm/cpufeature.h        |  41 +----
 arch/x86/include/asm/cpufeatures.h       |   2 +
 arch/x86/include/asm/irqflags.h          |   7 +-
 arch/x86/include/asm/mshyperv.h          |   2 +-
 arch/x86/include/asm/nospec-branch.h     |   1 -
 arch/x86/include/asm/paravirt.h          | 167 ++++++++----------
 arch/x86/include/asm/paravirt_types.h    | 210 +++++++++--------------
 arch/x86/include/asm/smap.h              |   5 +-
 arch/x86/kernel/Makefile                 |   3 +-
 arch/x86/kernel/alternative.c            |  52 +++++-
 arch/x86/kernel/asm-offsets.c            |   7 -
 arch/x86/kernel/cpu/vmware.c             |   5 +-
 arch/x86/kernel/kvm.c                    |   2 +-
 arch/x86/kernel/kvmclock.c               |   2 +-
 arch/x86/kernel/paravirt-spinlocks.c     |   9 +
 arch/x86/kernel/paravirt.c               |  75 ++------
 arch/x86/kernel/paravirt_patch.c         |  99 -----------
 arch/x86/kernel/tsc.c                    |   3 +-
 arch/x86/lib/atomic64_386_32.S           |   2 +-
 arch/x86/lib/atomic64_cx8_32.S           |   2 +-
 arch/x86/lib/copy_page_64.S              |   2 +-
 arch/x86/lib/copy_user_64.S              |   2 +-
 arch/x86/lib/memcpy_64.S                 |   2 +-
 arch/x86/lib/memmove_64.S                |   2 +-
 arch/x86/lib/memset_64.S                 |   2 +-
 arch/x86/lib/retpoline.S                 |   2 +-
 arch/x86/xen/enlighten_pv.c              |   4 +-
 arch/x86/xen/time.c                      |  26 +--
 drivers/xen/time.c                       |   3 +-
 include/linux/static_call.h              |  26 +--
 include/linux/static_call_types.h        |  18 ++
 tools/include/linux/static_call_types.h  |  18 ++
 42 files changed, 473 insertions(+), 631 deletions(-)
 delete mode 100644 arch/x86/include/asm/alternative-asm.h
 delete mode 100644 arch/x86/kernel/paravirt_patch.c

-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210311142319.4723-1-jgross%40suse.com.
