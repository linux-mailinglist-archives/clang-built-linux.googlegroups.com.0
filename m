Return-Path: <clang-built-linux+bncBCI27E5CQECRBRMTQOCAMGQEDRXOZBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id D274236768D
	for <lists+clang-built-linux@lfdr.de>; Thu, 22 Apr 2021 02:56:38 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id t64-20020a6381430000b029020997d0fbb4sf6099354pgd.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 21 Apr 2021 17:56:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619052997; cv=pass;
        d=google.com; s=arc-20160816;
        b=j4lNcnRJJAWfl67I6M0gYadkdtPx/GxN2gKlxiXWX5EnKj7NCskbVJgBSuZG6DcemC
         UcaREHEvXA+nhTfHBM+LN4FGrOI6xvaCqQ6AOSwfn+Njht8vykRHwMCCUVc1/aNePuyE
         jWvHGBQJ2B/Izxau8F4IBToPqg6D8rZBeHXTlhGBQo1M+M3G8gPmryv6vqyikV36fOip
         dm+jdZiv5yrLgqRB1FVCNKrRE/T3Y2pTF+4rmtTE0SMbbg9Q5ZlcCrkoxISeSZjLQYbR
         aWLqcWEYGjAM6UqQ/wrZEtB7p5UctCUSJgho0STUm9kbtJLS13EXWBIasfnZIkQFY6uf
         PXkw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=yHDnggRXvMSu/M4eOwOnSXAsABe969J0ok+7vf6BjLU=;
        b=wK2VWi8c0yb72DGjvYFCDtn5tJyBt/e5UCbI9+V3brxEPyCy7Kq9eeudJ7w2C4OGJ2
         i9vCaHNpgpiKeb6yePR85r19RVfptK7PpsACooro3TWKVJKFp8llkMv+XT5+ipixvC8C
         qkRp3dE+PpMyf8q8/T6y2XEp2/6kHohjpDbBKXQPwz1BtBOVw/Fohwfl0asCLthUP1Ij
         QqybmbPNghSv9sVhQaRJnyqYiVgVyY0zPB7xQaiQ9A0n9t3UzsWsreM993XYLCRT93To
         KWmwiEpjtbWLSKJ5HKtvOU5s90tRuSIHkY3UI9GXe06punmFJjzifGy1UK3803EkYX1o
         34Bw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="EY/Bkrwt";
       spf=pass (google.com: domain of 3xmmayagkewuulfdunrojrrjoh.frpfodqj-exlow-olqxajrrjohjurxsv.frp@flex--ricarkol.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3xMmAYAgKEWUULFDUNROJRRJOH.FRPFODQJ-EXLOW-OLQXaJRRJOHJURXSV.FRP@flex--ricarkol.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=yHDnggRXvMSu/M4eOwOnSXAsABe969J0ok+7vf6BjLU=;
        b=guxKtT8e6o4d3SthbUpkw+2V7flCBk3qjEaIAWI3CC9vVUngeXiu3VFPIzOy2IjA0C
         DBQX+c4PVeh6VjpMfr+paJ55Wb5ekxDBx9ul4f4oNEnn4tK71/MjpzCxjom0xy/WItST
         x3IRxKq3E9gSoArslATBIlpln/zVSRKmAL2XrtAPxlyRGqOVShi8JbcMA345S0PKgzSv
         1XJ+EdfkOsC8LgdXEk949ldV2J3TTd34iFOS0cBXtQi4t5DOe97ByddRI3HM8q9LS3rQ
         kX2gvOZd5RQISlMcIfwoZbFPW4ZucmA7deekAHBWpOxH3VDVOiCkmbbkvAUHEeQkOXJQ
         eizQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yHDnggRXvMSu/M4eOwOnSXAsABe969J0ok+7vf6BjLU=;
        b=uPl842H0w0HfeP94hbIfXmRzPXhe9OSDPvQX5nG7tY1OgZ/bz0625hfR3RCwWwoD3e
         G8aQCKl6uHEgWJdITCnc0xPZBXtYqGWelfTomH0EJ+hec3KdZjMe6dK+jFzjnHZ5rtN9
         O0zwqbSXjSEy9NbwGzlKDgmNg0ErYI5vmVmGFR33NKFRpxdvnIAWMabReseUN5VNA7od
         KEEKLigKyq9Y2bZtcnHNL5FpnAVjCr316UPPe7PFji9iwL2Tejzr50XdjU9UPC45OtFf
         dUWtrBqWZmb+rnWfJsxkp6Xf41J0K+Ias7mEh7tX4XnZ24kER6y3o0qJX4BhWVOOYYE/
         /kKg==
X-Gm-Message-State: AOAM530VUou3SfTmTze9FSE9JFau7EnXNpcVzbt1hDShEJtl9k3AEPig
	GifEcE6rMrMit7b2e9zpW8Y=
X-Google-Smtp-Source: ABdhPJyZE9AakYNxoi92b8kLBDUXj1nLvOl2al7CGkeFIbzo/bvS1TtEZE9f2MnQ7//g1ybJJFlcQA==
X-Received: by 2002:a17:902:7c0d:b029:ec:a243:cf9b with SMTP id x13-20020a1709027c0db02900eca243cf9bmr650682pll.75.1619052997603;
        Wed, 21 Apr 2021 17:56:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7d89:: with SMTP id a9ls1885065plm.7.gmail; Wed, 21
 Apr 2021 17:56:37 -0700 (PDT)
X-Received: by 2002:a17:90a:c598:: with SMTP id l24mr994266pjt.166.1619052997114;
        Wed, 21 Apr 2021 17:56:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619052997; cv=none;
        d=google.com; s=arc-20160816;
        b=tf18JdOo9J6+pM3sv90MgZ1pRBVvXm/+KjGfKaxBDFM6Qu/cCroP4+BaN3BBEEeoEi
         zd9MvFcKD01yCNdpWJdbIrwPt47JDOiBkTr2KJpbwLqzoFeSC3OZLWdZx25bi7uFozqg
         QNPPCq76iD/+Km2bMUWw4U664rrgj3pp3E6sXRxnB3ImUwI0bDTRBoZ0VdIqHNcgsbC4
         DRdY1ejdUWtPfDQNpYQQHcKWNLrc6ivLunAfMcdFhU01vj7CvUz6iOsTJFJWdldXwHqi
         Yjj2oj0JVxnS5TBstEJD8DRSNFnYJdqd3Cp47FnNqASMc3j+uRDNBfJAi0i8P6qmIems
         ZNhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=NzxbZ+GAahgmxduXaRkOwY3LO03b4qVXF2kZFZVIV+M=;
        b=EAYwuhxtq/c9vfnZhmlfq2NJjDGCgRZ/BkqLCSdcUF1ZRUKI9fEwsNqpfETA4bQSRP
         grs4MpYZFGeVi2NmPjwDI+Y+K3i+FQG/nQ3WsIPU8sbiBl/PZHDeNmwcffYVgif1xd/B
         rZyySn7wNL28PL15GE+OEqs6B0vuvpTt9ArS6fBvIiWNUngyZT5UPZKiz6D7C0EhNjab
         6ElBi0Fa4KMcaCTpqFX2yWsYsXLzmCrUA6oF9uO+Dl8O+YCiqlITn1e725U86nRLg6GO
         vBEm05T4dx/+BwvOS777g+v0ISGnlSPOhYcYLCPk/VLeBpBJn9BucTgSR85kzBfPJYEF
         kjDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="EY/Bkrwt";
       spf=pass (google.com: domain of 3xmmayagkewuulfdunrojrrjoh.frpfodqj-exlow-olqxajrrjohjurxsv.frp@flex--ricarkol.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3xMmAYAgKEWUULFDUNROJRRJOH.FRPFODQJ-EXLOW-OLQXaJRRJOHJURXSV.FRP@flex--ricarkol.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf4a.google.com (mail-qv1-xf4a.google.com. [2607:f8b0:4864:20::f4a])
        by gmr-mx.google.com with ESMTPS id q16si195196plx.3.2021.04.21.17.56.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Apr 2021 17:56:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3xmmayagkewuulfdunrojrrjoh.frpfodqj-exlow-olqxajrrjohjurxsv.frp@flex--ricarkol.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) client-ip=2607:f8b0:4864:20::f4a;
Received: by mail-qv1-xf4a.google.com with SMTP id r18-20020a0ccc120000b02901a21aadacfcso12653122qvk.5
        for <clang-built-linux@googlegroups.com>; Wed, 21 Apr 2021 17:56:37 -0700 (PDT)
X-Received: from ricarkol2.c.googlers.com ([fda3:e722:ac3:10:24:72f4:c0a8:62fe])
 (user=ricarkol job=sendgmr) by 2002:a0c:9ad7:: with SMTP id
 k23mr702884qvf.24.1619052996218; Wed, 21 Apr 2021 17:56:36 -0700 (PDT)
Date: Wed, 21 Apr 2021 17:56:21 -0700
Message-Id: <20210422005626.564163-1-ricarkol@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.31.1.368.gbe11c130af-goog
Subject: [PATCH 0/5] KVM: x86: Use kernel x86 cpuid utilities in KVM selftests
From: "'Ricardo Koller' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Paolo Bonzini <pbonzini@redhat.com>
Cc: kvm@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>, 
	Ingo Molnar <mingo@redhat.com>, Arnaldo Carvalho de Melo <acme@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, 
	Sean Christopherson <seanjc@google.com>, Vitaly Kuznetsov <vkuznets@redhat.com>, 
	Wanpeng Li <wanpengli@tencent.com>, Jim Mattson <jmattson@google.com>, 
	Joerg Roedel <joro@8bytes.org>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Ricardo Koller <ricarkol@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ricarkol@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="EY/Bkrwt";       spf=pass
 (google.com: domain of 3xmmayagkewuulfdunrojrrjoh.frpfodqj-exlow-olqxajrrjohjurxsv.frp@flex--ricarkol.bounces.google.com
 designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3xMmAYAgKEWUULFDUNROJRRJOH.FRPFODQJ-EXLOW-OLQXaJRRJOHJURXSV.FRP@flex--ricarkol.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Ricardo Koller <ricarkol@google.com>
Reply-To: Ricardo Koller <ricarkol@google.com>
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

The kernel has a set of utilities and definitions to deal with x86 cpu
features.  The x86 KVM selftests don't use them, and instead have
evolved to use differing and ad-hoc methods for checking features. The
advantage of the kernel feature definitions is that they use a format
that embeds the info needed to extract them from cpuid (function, index,
and register to use).

The first 3 patches massage the related cpuid header files in the kernel
side, then copy them into tools/ so they can be included by selftests.
The last 2 patches replace the tests checking for cpu features to use
the definitions and utilities introduced from the kernel.

Thanks,
Ricardo

Ricardo Koller (5):
  KVM: x86: Move reverse CPUID helpers to separate header file
  x86/cpu: Expose CPUID regs, leaf and index definitions to tools
  tools headers x86: Copy cpuid helpers from the kernel
  KVM: selftests: Introduce utilities for checking x86 features
  KVM: selftests: Use kernel x86 cpuid features format

 arch/x86/events/intel/pt.c                    |   1 +
 arch/x86/include/asm/cpufeature.h             |  23 +-
 arch/x86/include/asm/processor.h              |  11 -
 arch/x86/kernel/cpu/scattered.c               |   2 +-
 arch/x86/kernel/cpuid.c                       |   2 +-
 arch/x86/kvm/cpuid.h                          | 177 +-----------
 arch/x86/kvm/reverse_cpuid.h                  | 185 +++++++++++++
 tools/arch/x86/include/asm/cpufeature.h       | 257 ++++++++++++++++++
 tools/arch/x86/include/asm/cpufeatures.h      |   3 +
 .../selftests/kvm/include/x86_64/cpuid.h      |  61 +++++
 .../selftests/kvm/include/x86_64/processor.h  |  16 --
 .../kvm/include/x86_64/reverse_cpuid.h        | 185 +++++++++++++
 .../selftests/kvm/include/x86_64/svm_util.h   |  11 +-
 tools/testing/selftests/kvm/lib/x86_64/svm.c  |   6 +-
 tools/testing/selftests/kvm/lib/x86_64/vmx.c  |   5 +-
 tools/testing/selftests/kvm/steal_time.c      |   5 +-
 .../kvm/x86_64/cr4_cpuid_sync_test.c          |  23 +-
 .../selftests/kvm/x86_64/set_sregs_test.c     |  25 +-
 .../selftests/kvm/x86_64/vmx_pmu_msrs_test.c  |   8 +-
 .../kvm/x86_64/vmx_set_nested_state_test.c    |   5 +-
 .../selftests/kvm/x86_64/xss_msr_test.c       |  10 +-
 21 files changed, 749 insertions(+), 272 deletions(-)
 create mode 100644 arch/x86/kvm/reverse_cpuid.h
 create mode 100644 tools/arch/x86/include/asm/cpufeature.h
 create mode 100644 tools/testing/selftests/kvm/include/x86_64/cpuid.h
 create mode 100644 tools/testing/selftests/kvm/include/x86_64/reverse_cpuid.h

-- 
2.31.1.368.gbe11c130af-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210422005626.564163-1-ricarkol%40google.com.
