Return-Path: <clang-built-linux+bncBCI27E5CQECRBGXTU2CAMGQEIKKH3CA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id 23FE636DF99
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Apr 2021 21:38:04 +0200 (CEST)
Received: by mail-pj1-x103b.google.com with SMTP id f2-20020a17090a9b02b0290150d07a9b81sf11856208pjp.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Apr 2021 12:38:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619638683; cv=pass;
        d=google.com; s=arc-20160816;
        b=rViTjt7Gj1MfoLKD6EtaJ4qQfXoCZiu8T4aEWaBox8LoPcooxrX20BfWgDO4IyMrlh
         Uh4SyTwrUobs3PcXQoI3BC/XDJjbricb92y3fGQ3Qk89jDXad5WJCJ5FmkmWj1WS0Gom
         fnzMbXKcwcqnn31xh7yKcAQNEiNz0WKNXCYamYm0EhcP/VXCuOmElSHboR8iIe37rJqt
         /zKLHHg47L6Sp2IxCoAmXHvo5THpfK6q5K4/6gla3AhUIFQQOkyoDETGQI1wm/NYE9aJ
         YBto1AVYyXVC/6gCjjztjKra6x2bW69oCD4fr83iIsx2u5Ta3t15edKBBOzolGQhNWzR
         WLTA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=UQlLdwPJrJUY5DdU7hlkro1AqziGXwI5ljAIwsyJmqU=;
        b=j6dTVnaNk0MPgFua4egwdpvYtJs/hzIe4czzbVAM53B3ZITSE4Sa/n86DJO2HQpqFz
         k1GpDCAeAocZTOBgEqybJKKQU1JqSWZKuxMMX+PcL7oKp/kdimN4VwMgc8JJcEicZxuG
         EYDi1bNfeift+qOXW1tYOUlrF7ytlt4Ge96tU/AGpWcXaK2gTqR9/OLuT+WwoPfryO5q
         aYOd+Z8s52MQ5YzCQ0oQJyC2Pj0Mjrkiky/t+JGOLRT0qGrkoCQROvPWhmCJdTrE1u+3
         2BpUrEkx86IO4p3jmWlpXxZVeS3sn/XVk3OX7NG8QPFXeY3jtoObYLtxn1Bjar2G96s+
         GnNA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="UHp/r+M7";
       spf=pass (google.com: domain of 3mbmjyagket4wnhfwptqlttlqj.htrhqfsl-gznqy-qnsz2lttlqjlwtzux.htr@flex--ricarkol.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3mbmJYAgKET4wnhfwptqlttlqj.htrhqfsl-gznqy-qnsz2lttlqjlwtzux.htr@flex--ricarkol.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=UQlLdwPJrJUY5DdU7hlkro1AqziGXwI5ljAIwsyJmqU=;
        b=OOUBNHLIJD7rYMYrJl0DzxkT2VFr03JgSniE0oNjnZ0ZY0/uAD2100W2DKUVQsUlPW
         TvEDxZz6QbpCGztQIbY3NnoEUTT5V0sjk565ikEcQ55kUqr/ydu4Ji1eAoeqlE+ScSLo
         4+1LnXvCilBKUswiiMdEJewjP+VQQWbuaCG+7d20aEJMm4RsEP9dmCCL7dDLHi5vGUZI
         fFaNa+uYePTtie67zyIIduMH7KsOSFKy/wV0sx5bur1s4ewsQr8hX4E87jtj1R1mYNKd
         ilJUr3PMcBP5u48u0yKAjMRT57PzAv+02UCub4OI7PRCE87xvXCTlx/PdgxBjguEMpoz
         di0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UQlLdwPJrJUY5DdU7hlkro1AqziGXwI5ljAIwsyJmqU=;
        b=Xji17/1eGfTX0p23CQTgE+WcsZWwPCmVAQIP7TA4PPW2QukrhbjKSroDdfXS/ueZOG
         JD9onTrl4Lt8bcXJaZdjf8TMSrnAHeF+KbCnYNDKy9EToH0QinDaaxyEcYMyw940oYVf
         A1SkCnbRK9MfbJBtUO+EluetRazyG0u63KJvHGP56pLg73OsJgX/pckHlm70GyJm1yBO
         IeDL9vYUtoXhH1szJHJ1bZon8xpV/kqPNmOhIpZFZmOHg8wNUDkwZYPY60smHxCRcyN4
         3FJScs8MyJ50bwjOr/hg+Y4LPZHWyIOMwhtu9hb8fcRtXDPEVSSc31hUJcIjMWA4I/db
         xmjg==
X-Gm-Message-State: AOAM533OlrmdPUWH5QjP3YrNSdG0jw9yE1oTcq6b3Jw60QeV7z/vzJTC
	uI8hCkSNrGkNe4XRmFGE56A=
X-Google-Smtp-Source: ABdhPJw0rRh3PifW7tNyDpgXiTg3tOA+D6FZ+b4o8d4+JqcYPawmvqvOvHEtvVApgG/trYf0pKLjEQ==
X-Received: by 2002:a17:90a:ad09:: with SMTP id r9mr5699538pjq.2.1619638682791;
        Wed, 28 Apr 2021 12:38:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:2cc5:: with SMTP id s188ls345167pfs.5.gmail; Wed, 28 Apr
 2021 12:38:02 -0700 (PDT)
X-Received: by 2002:a65:42c3:: with SMTP id l3mr28376629pgp.258.1619638682211;
        Wed, 28 Apr 2021 12:38:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619638682; cv=none;
        d=google.com; s=arc-20160816;
        b=TmIiMzz+ET9F6V5LFhMPjztR2aSSuA535jUmJoUwQGK6fh2djZ00dVK2D2iX4rBqrF
         v7f3t9lb0leTH8rqEVixmDG+GrG/gY+v6u6eJcIg6nXMcqTVT0Tn49iImkATE2p0SUyk
         EDKkI4GF/JRWOqDhRo7DB3vnQKwhjZdU1W9IElqD0qeUN9dRDgJOitXGnlBYCU5XwSXI
         M3GCQmNbcbVFK+5rCNoFd3YiPOi0YEgJIYRe0T3OvmtqhzxHtSnf7Nh9A3fPbYn+5YA1
         7lMs38nrAWfe22A6LCTBtTGwC+P6riFDGIeH3fN+hzrme2UwzGxx29iVR2fQsxlRoNR9
         vdKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=6lY0wVxKSFoGmS9bVqfbfPkbINkSpYIK0/Bfq4EeuDU=;
        b=SwbB2QPBQY/N0/OUS71XdH76XLx5yEShJitu1Df79WUxlVS0WkIJfApUFIbc41H7LD
         NlTSdQMWwzo6nTGhEqBr00fMrYrsjabvzKxlueaHX4P+NakTp2JquQHESouIrC8bjCqE
         LJPEAZlkP1AJhhmq0D25TUlbkQKaf24caJLbVe503NN5EH+RLvUuBJrxf4mkQzZWb4t2
         okT6GEtvfHaGEi5yItUx9WWzTDm4eUbtJu3pMlLmb1/fcUncP0/NPsBEHDAnDRlByyfh
         6DXfMHXyFuEFJmjDx5OHk9K2n1BY6q/myOnaS66gC/0xyBpdsrS9NcpG5kURy/dKzufo
         hYmA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="UHp/r+M7";
       spf=pass (google.com: domain of 3mbmjyagket4wnhfwptqlttlqj.htrhqfsl-gznqy-qnsz2lttlqjlwtzux.htr@flex--ricarkol.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3mbmJYAgKET4wnhfwptqlttlqj.htrhqfsl-gznqy-qnsz2lttlqjlwtzux.htr@flex--ricarkol.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id e20si85295pjp.0.2021.04.28.12.38.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Apr 2021 12:38:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3mbmjyagket4wnhfwptqlttlqj.htrhqfsl-gznqy-qnsz2lttlqjlwtzux.htr@flex--ricarkol.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id u3-20020a2509430000b02904e7f1a30cffso43008575ybm.8
        for <clang-built-linux@googlegroups.com>; Wed, 28 Apr 2021 12:38:02 -0700 (PDT)
X-Received: from ricarkol2.c.googlers.com ([fda3:e722:ac3:10:24:72f4:c0a8:62fe])
 (user=ricarkol job=sendgmr) by 2002:a25:99c1:: with SMTP id
 q1mr40283071ybo.517.1619638681487; Wed, 28 Apr 2021 12:38:01 -0700 (PDT)
Date: Wed, 28 Apr 2021 12:37:50 -0700
Message-Id: <20210428193756.2110517-1-ricarkol@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.31.1.498.g6c1eba8ee3d-goog
Subject: [PATCH v2 0/6] KVM: x86: Use kernel x86 cpuid utilities in KVM selftests
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
 header.i=@google.com header.s=20161025 header.b="UHp/r+M7";       spf=pass
 (google.com: domain of 3mbmjyagket4wnhfwptqlttlqj.htrhqfsl-gznqy-qnsz2lttlqjlwtzux.htr@flex--ricarkol.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3mbmJYAgKET4wnhfwptqlttlqj.htrhqfsl-gznqy-qnsz2lttlqjlwtzux.htr@flex--ricarkol.bounces.google.com;
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

Patches 1 and 2 add a script for checking that kernel headers don't
drift from their original copies. Patches 3 and 4 massage the related
cpuid header files in the kernel side, then copy them into tools/ so
they can be included by selftests.  The last 2 patches replace the tests
checking for cpu features to use the definitions and utilities
introduced from the kernel.

Tested the arch/x86 patches by building these combinations:
  ARCH=i386 allmodconfig
  ARCH=i386 allyesconfig
  ARCH=x86_64 allyesconfig
  ARCH=x86_64 allmodconfig
  ARCH=um alldefconfig
  ARCH=i386 alldefconfig
and the selftest changes on both x86 and arm64.

Thanks,
Ricardo

v2:
- Add script to check for kernel headers drift in tools
- Sync header that is currently failing the check
- Move header copies under tools/testing/selftests/kvm/include/x86
  instead of tools/arch/x86/include
v1: https://lore.kernel.org/kvm/20210422005626.564163-1-ricarkol@google.com

Ricardo Koller (6):
  KVM: selftests: Add kernel headers sync check
  tools headers x86: Update bitsperlong.h in tools
  x86/cpu: Expose CPUID regs, leaf and index definitions to tools
  tools headers x86: Copy cpuid helpers from the kernel
  KVM: selftests: Introduce utilities for checking x86 features
  KVM: selftests: Use kernel x86 cpuid features format

 arch/x86/events/intel/pt.c                    |   1 +
 arch/x86/include/asm/cpufeature.h             |  23 +-
 arch/x86/include/asm/processor.h              |  11 -
 arch/x86/kernel/cpu/scattered.c               |   2 +-
 arch/x86/kernel/cpuid.c                       |   2 +-
 tools/arch/x86/include/asm/cpufeatures.h      |   3 +
 tools/include/uapi/asm-generic/bitsperlong.h  |   1 +
 tools/testing/selftests/kvm/Makefile          |   2 +
 tools/testing/selftests/kvm/check-headers.sh  |  64 +++++
 .../kvm/include/x86_64/asm/cpufeature.h       | 257 ++++++++++++++++++
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
 22 files changed, 630 insertions(+), 96 deletions(-)
 create mode 100755 tools/testing/selftests/kvm/check-headers.sh
 create mode 100644 tools/testing/selftests/kvm/include/x86_64/asm/cpufeature.h
 create mode 100644 tools/testing/selftests/kvm/include/x86_64/cpuid.h
 create mode 100644 tools/testing/selftests/kvm/include/x86_64/reverse_cpuid.h

-- 
2.31.1.498.g6c1eba8ee3d-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210428193756.2110517-1-ricarkol%40google.com.
