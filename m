Return-Path: <clang-built-linux+bncBD6K324WS4FBBIOQ735AKGQEZKCYDZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 36E24269320
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Sep 2020 19:28:02 +0200 (CEST)
Received: by mail-lj1-x238.google.com with SMTP id x24sf27971ljh.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Sep 2020 10:28:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600104481; cv=pass;
        d=google.com; s=arc-20160816;
        b=jQjzFvmtRULLc6ITV4uxZHTjM3H1u0d6AI7el4rbU2liteNTGsk9tkN5VG0pJT0jPV
         HEJHz9DK8LqKE0xdD4ADE/mzMIEWlVHV/WzFzMAlHYyv0F39TNw4CQfROM3eG7mSwQdP
         W8UHXrHenu6gvEOF0yhh5r1dA93doOpeshMXeSL78o9cUDEIc9wOxNUt5HiCYiTzvIRY
         V0gAWV2WCDyAQfmtb4gwDouExAbkVh7L95wwmxWip0yJ2B9WWsljQ3QZJRznnqC1Nvcy
         +3P4jgXXjNDbQ4ahGsTw+E5yshVDclG6/9ngfaMVRKoUD1ezho/wci7NGNzeQizYmVY4
         BruQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :mime-version:message-id:date:subject:cc:to:from:dkim-signature;
        bh=5KxRpZm9LVTNGQ4OZ8KlwF018locP7KZ5j8G4uMEC/Y=;
        b=RYAUyvVsN1W1PhSQkJypFbvfvF2nThBx6Gr6jHpC5iW67urR7l4B7sLcrynH0KJZ24
         bPNuHg1uIiMx8FhRC43+vok3yIwyYgZGH4Zd0DZ/HO7CECJaKc1Vn4eeXKaqx122Y/of
         dhZYi4b/kWTH4cDMmfD6YkQFrXPB0IiubqvHJTbGGmpK3Fqr4SPPr7sHzCXjCBFWSECx
         v767D/3Oo/NoY/FQEIbETUyXPXJoJOjYeXqZYcjz6E2ci1EAyReyRY4iXyQ7u/yFpiU4
         QfcQ17Uz91l6t+MEx3iIqThgyEK0/lh87iWjNi9VLK912fUSXgLu/4FOZHQwgiOjz3B7
         J/dA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gFAAaw1W;
       spf=pass (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=georgepope@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=5KxRpZm9LVTNGQ4OZ8KlwF018locP7KZ5j8G4uMEC/Y=;
        b=PgSEvvOVEQuPbOpk8aWowfiuZJ/p3cRYgGFLQr6Xh21zdXC6I/stYyFCrtLCjFCxew
         J3gQ0bCHUmkmOOMqHf3fyCfPEZ+wQ6AtjCD3/fh/fkhYd1QU1u6qIbQol/rc8tL5DVuh
         TWgk4P9+GcmAs2gv8usPiH/+ryFJHtCdEfr8Ubfe94xYuSYrI33haelw5sz4qaBeea7r
         TZmmz3ELFob5eEwHa3L4JYjYfT3Ri3kE3UBlXHIqq/yfLFS7quL45lfuhadRPywwb+ai
         bALfMzT/ClKpiec4YHWprepOyuPiEOOH4hyNWDtrEBjcTBVw9Hm9kPjOKsMKFAMm63iB
         ZvIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5KxRpZm9LVTNGQ4OZ8KlwF018locP7KZ5j8G4uMEC/Y=;
        b=LcInFm24QeJAJhNazmS/U+GtN98IOY64t026JuivGIaiOqA2xj2YCDN8ZYxJ/KaQCB
         e2+WP7QUMRcHjq/vD9DKanm3GRPXBAghKAfpiHJEDPpsNOv+8GimS3Wq/y42bHoZjzO3
         RqgRyuHeBNLFrSbwHayKWnQT7FAA3ZIimXBGJF+8NSs6wcVM8/YOQ4WhUTh6TprPd21r
         1JLvkfVMNb6r+BrdiA1N8a2JMksVYIiTkZX0X1gpSVDa4RH08vFBe48D34WwsPa2PmJv
         S+QyPOheg1aLnwIDn/KSE7rdteZ1Kp5hYQ5HimDoNKD/Cbcmzs1+Sdg6lTEoPlf39gK7
         2Jcg==
X-Gm-Message-State: AOAM533a2QwCp5y/dZ0SO0W3CpyemG9j5GPZI6rmz7g5lk/88GaUKwlj
	0v4PNoDlw7s7OEQmvxBHbsg=
X-Google-Smtp-Source: ABdhPJzIUWW1UuO8k/SCPl+y3lM/Xi9TSiI7TbDEO3KPhTdKX5ETPIn5NTbOoSQyEBD7alNBoaJKfQ==
X-Received: by 2002:a19:6d5:: with SMTP id 204mr5568694lfg.109.1600104481754;
        Mon, 14 Sep 2020 10:28:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:544e:: with SMTP id d14ls312557lfn.2.gmail; Mon, 14 Sep
 2020 10:28:00 -0700 (PDT)
X-Received: by 2002:a19:a406:: with SMTP id q6mr4982473lfc.556.1600104480699;
        Mon, 14 Sep 2020 10:28:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600104480; cv=none;
        d=google.com; s=arc-20160816;
        b=0VOywfXYgCr+9R1KPjjfGWmMhhOLDMLtdJZndPFrdCOVR5wF7QFH83KvbRFwqRObLl
         5K6zAlRo0DjSQ6QHNVRJGbHrWUUu+BGhrYziyaB95Kgtg4qRXYv2xpx7bcFjwUicFs+6
         gQTC6WK3pXw4M1UM8eHiU3kSaosHZ0Wl7Hq5FwRabDP75jFAYMWImfw/xaD0wDc/G0Zy
         ND9+7SI4MLAiluD3Dy7Ffv87aluIfASkX0KjOYrZG7esAO9U2IfdjGZG+nAQehhKW79O
         1vJk/GCYBNbXKLVfVBsWRqXSSnPB/DJSEELW23R/M+tFAN1AINrOXd8RYtTuTpWIB4d1
         C5Zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=AMQigiH2Yj3ljq0v4heVqWDyhdHIO/cGF9bhez3idR8=;
        b=gBfTTsRBsgA9OsIglAnpvpQ6wcNL77zx8ZVssnOlK5i4kTY6yfneLAQ4hpZWuewvrO
         oTywjvEtuHqwnPpFe40EH5eb/hpAyFDxapTqkjArGfxla4urSHr0NIefQHIZx+ccm5Xq
         wjfq7V6f32P5vkxPtqrIKC5I7jl1G2oJo+lDriEY99SjhStwXOHDL00j2TfXW6GTBB3k
         qvbjFB4eGvNtRvygj/CztMVAnR9Is7v+3d7E7jvI2yV5pbihYlVYL7ujvrenvsN12MZz
         jxrnmeQGPK4Wb/fs31nXLZp7ZWNM6WvAhse1KWHpga+mPwHgQhHqHuuVBCa8mDI1YNjs
         2h/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gFAAaw1W;
       spf=pass (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=georgepope@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id v191si216448lfa.6.2020.09.14.10.28.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Sep 2020 10:28:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Received: by mail-wr1-x442.google.com with SMTP id s12so465495wrw.11
        for <clang-built-linux@googlegroups.com>; Mon, 14 Sep 2020 10:28:00 -0700 (PDT)
X-Received: by 2002:a5d:680b:: with SMTP id w11mr18141747wru.73.1600104480318;
        Mon, 14 Sep 2020 10:28:00 -0700 (PDT)
Received: from localhost (49.222.77.34.bc.googleusercontent.com. [34.77.222.49])
        by smtp.gmail.com with ESMTPSA id h186sm20919367wmf.24.2020.09.14.10.27.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Sep 2020 10:27:59 -0700 (PDT)
From: "'George-Aurelian Popescu' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: maz@kernel.org,
	catalin.marinas@arm.com,
	will@kernel.org,
	masahiroy@kernel.org,
	michal.lkml@markovi.net
Cc: linux-arm-kernel@lists.infradead.org,
	kvmarm@lists.cs.columbia.edu,
	linux-kernel@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	james.morse@arm.com,
	julien.thierry.kdev@gmail.com,
	suzuki.poulose@arm.com,
	natechancellor@gmail.com,
	ndesaulniers@google.com,
	dbrazdil@google.com,
	broonie@kernel.org,
	maskray@google.com,
	ascull@google.com,
	keescook@chromium.org,
	akpm@linux-foundation.org,
	dvyukov@google.com,
	elver@google.com,
	tglx@linutronix.de,
	arnd@arndb.de,
	George-Aurelian Popescu <georgepope@google.com>
Subject: [PATCH 00/14] UBSan Enablement for hyp/nVHE code
Date: Mon, 14 Sep 2020 17:27:36 +0000
Message-Id: <20200914172750.852684-1-georgepope@google.com>
X-Mailer: git-send-email 2.28.0.618.gf4bc123cb7-goog
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: georgepope@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=gFAAaw1W;       spf=pass
 (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::442
 as permitted sender) smtp.mailfrom=georgepope@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: George-Aurelian Popescu <georgepope@google.com>
Reply-To: George-Aurelian Popescu <georgepope@google.com>
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

The main problem solved is logging from hyp/nVHE. Because the nVHE code is
independent from the Linux kernel the logging mechanisms aren=E2=80=99t wor=
king.
For this purpose a generic kvm_debug_buffer is designed. It is composed
from a statically allocated array and a writing index and comes with a set
of macros to facilitate it=E2=80=99s usage. To avoid concurrency problems b=
etween
cores, the kvm_debug_buffer is defined per_cpu. The buffer is checked every
time when the code returns from an hvc call, by modifying the kvm_call_hyp
and kvm_call_hyp_ret macros. The buffer=E2=80=99s writing index is reseted =
to zero
inside of the el1_sync entry.

Since UBSan=E2=80=99s handlers are living inside the kernel, they can not b=
e called
inside hyp/nVHE. To enable UBSan new handlers had to be defined there. To
store the data from the handler, the kvm_ubsan_buff is defined. It can stor=
e
logging data from the handlers in a new defined struct called struct
kvm_ubsan_info. Each handler has to encapsulate it=E2=80=99s data inside th=
e new
struct and write it into the buffer. The kvm_debug_buffer.c file is
responsible for decapsulating the data and calling the kernel handlers.
To check if UBSan works correctly inside hyp/nVHE the last patch comes
with a test mechanism, that calls UBSan when the hyp is initialized.


George Popescu (14):
  KVM: arm64: Enable UBSan instrumentation in nVHE hyp code
  KVM: arm64: Define a macro for storing a value inside a per_cpu
    variable
  KVM: arm64: Add support for creating and checking a logging buffer
    inside hyp/nVHE
  KVM: arm64: Add support for buffer usage
  KVM: arm64: Define a buffer that can pass UBSan data from hyp/nVHE to
    kernel
  Fix CFLAGS for UBSAN_BOUNDS on Clang
  KVM: arm64: Enable UBSAN_BOUNDS for the both the kernel and hyp/nVHE
  KVM: arm64: Enable UBsan check for unreachable code inside hyp/nVHE
    code
  KVM: arm64: Enable shift out of bounds undefined behaviour check for
    hyp/nVHE
  KVM: arm64: __ubsan_handle_load_invalid_value hyp/nVHE implementation.
  KVM: arm64: Detect type mismatch undefined behaviour from hyp/nVHE
    code
  KVM: arm64: Detect arithmetic overflow is inside hyp/nVHE.
  KVM: arm64: Enable the CONFIG_TEST UBSan for PKVM.
  DO NOT MERGE: Enable configs to test the patch series

 arch/arm64/include/asm/kvm_asm.h          |   8 ++
 arch/arm64/include/asm/kvm_debug_buffer.h |  61 ++++++++
 arch/arm64/include/asm/kvm_host.h         |  12 ++
 arch/arm64/include/asm/kvm_ubsan.h        |  53 +++++++
 arch/arm64/kvm/Kconfig                    |   3 +
 arch/arm64/kvm/Makefile                   |   4 +
 arch/arm64/kvm/arm.c                      |  46 +++++-
 arch/arm64/kvm/hyp/hyp-entry.S            |   6 +-
 arch/arm64/kvm/hyp/nvhe/Makefile          |   5 +-
 arch/arm64/kvm/hyp/nvhe/ubsan.c           | 164 ++++++++++++++++++++++
 arch/arm64/kvm/hyp/nvhe/ubsan_test.c      | 115 +++++++++++++++
 arch/arm64/kvm/kvm_ubsan_buffer.c         |  75 ++++++++++
 lib/Kconfig.ubsan                         |   5 +-
 scripts/Makefile.ubsan                    |   9 +-
 14 files changed, 561 insertions(+), 5 deletions(-)
 create mode 100644 arch/arm64/include/asm/kvm_debug_buffer.h
 create mode 100644 arch/arm64/include/asm/kvm_ubsan.h
 create mode 100644 arch/arm64/kvm/hyp/nvhe/ubsan.c
 create mode 100644 arch/arm64/kvm/hyp/nvhe/ubsan_test.c
 create mode 100644 arch/arm64/kvm/kvm_ubsan_buffer.c

--=20
2.28.0.618.gf4bc123cb7-goog

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200914172750.852684-1-georgepope%40google.com.
