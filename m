Return-Path: <clang-built-linux+bncBCS5NQE5SUJBBFE3SL6AKGQEQG4KZSQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3c.google.com (mail-vs1-xe3c.google.com [IPv6:2607:f8b0:4864:20::e3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 420FA28BEB3
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 19:08:38 +0200 (CEST)
Received: by mail-vs1-xe3c.google.com with SMTP id u198sf4333875vsc.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 10:08:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602522517; cv=pass;
        d=google.com; s=arc-20160816;
        b=sYHoOoSTF1aDyeHcOeQTDQ5AHtdhmCgT43bn8sOGLCd81+1XFV3BebbhNxNN+s/DEZ
         n7ibUeMDyHgELkpKEf14Q+9kM7U9ew/ENhqmu/sMrlBhDPw7y7gSmDhdukW4YTiKg/EW
         COUo0nNb9dGuH7iiZkvoWsRsT4vGqofn4f9p6Ly2qQMb80zOrzE9rPNsNGCiD4QYXCFu
         QXITSoQqwqefRp9uMOXIGC13ldo573lMAzdtiRQGLEtLN/oPFTIRvbHeHi6t3PIVNLLE
         8Kg6kzL5LAo2JmOT10vydEN9cmrs/lY3AUEO4z1USKDcnrpdsaEYwny+TPAkI1eVzuYz
         5iyA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=OaNAkklihWVIVyFsE0KjCKjO3peYezEidZqMj3F09Dc=;
        b=Ypn4ujr2Zt9OWFQ6xhVe5XYqdIa/jywTxCALy1FbNPy+0NG1D5laVUKBcnHemWxuJ0
         HpSKvLr6j+GcfHBlOCqHcFnckIT68G3wJHeYco+8qaoZwFZrnoNgRbCbSqYQXzaPx0Ko
         RPFuMvHwhxTBoO29AM0jNL1mlXhnzQZStDp/D9+Wk+P8oKN2PU8DXhWrTdfpvryzTz9F
         xLWtYpDujPBHsSJTdTwxXhbJVmSBzvkzjZhgANRtJeo5GHbuQQzWE7pCqF76AnkzG95c
         UEiuqDeUpGvkv2N7Nwx1QNsSLPEYI7CasFUnI9Rt4Q0XhR/z+ghkwn7Zzem93JeNYCgZ
         kApA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="rcDnF/aV";
       spf=pass (google.com: domain of ujjwalkumar0501@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ujjwalkumar0501@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OaNAkklihWVIVyFsE0KjCKjO3peYezEidZqMj3F09Dc=;
        b=AN0P6o4h7vwVhhnOxZlgXtg803mvOQQ9qWcp2ks+eBMV0rjc3ZrFIqoO2KclpvSn1M
         eDYShYi2Bo3asqCHUhiFGmdJr7dnODyr5cfs+BP3c386QHWGNGhk59dcxN40tQJTIKbc
         GrXxircm4+W8wjdOhWCQaFgsrHtunlQNjAaKJvS/toyMWQD+zRjMwPo09JXZ1Uuaai9f
         DKu9zYYFcar1RaGzpo1y+YyqQgcQRXJboyHFsiZWS2EIfkND/0ErxQzOpGYSktdhmFc+
         FnpKnDMY3tf0Y8IvDZC4BC9Rb6xPIYheXzux1YGke4Ze1oENZH6HTjF05bGyXaoYv5zs
         DcHA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OaNAkklihWVIVyFsE0KjCKjO3peYezEidZqMj3F09Dc=;
        b=IJKXByoQowIUoP/Lh1WRIqzV8+tjJW2i3XJ1V0JoJP/bpiU+SVgL+Re9+xKu04GI3+
         5L2RnOlLEwACCExJnuYwa8htVayW2yvjhxLhKZTpPNcwBXiXVZkYCk5nVQXef2cboYVY
         A+DfUqtAHZvuECKFwjWA8xERsnBuY9OsFcBF3nYF2r2fjzB+SVKzZlo8uBvDp/0e45Rk
         C1MsEKAVGRErHFBa3FYu9k7IDGn0d5XH0kvFiuVe2E1jY07IAIkM7T348P9YbHmw/EV+
         phJ/F1lBhAQIkEl/c0chokEInrRelRcm79WbVouz04T38/38a4zh/KPSuZ+YdsGG3Dnc
         cFDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OaNAkklihWVIVyFsE0KjCKjO3peYezEidZqMj3F09Dc=;
        b=A29MVYDJoTPxA+yn3BectBi32btLi55ZkLtXKOnCdBh9tTQZhHb1e/9E2fmDAMtFUa
         /pKNQQ5Bf1W8Q47CaKNeuvHh8QtsgudR3A9K94I57vHYRT8AaLayPU/WaBDYuhk/RlqB
         J+A78RXMiTej5BVo/fXrfWjTO+bczwKWN9xOzCJ3FXrxYi29fFre+bTxmMo94wrhcRXY
         oifgndCk5osNYX4EPUvsaIcWzJ3Y4P72S3YghBfqoquwMzcl6jLimYZcr+ATqNRLdo0Z
         coDAlGEKt8n8FjRDHRxxhtD1UEL0jUsAiy+HazzrfBk1jO6Jv9Osf6AXuVuMcwGo0x4f
         NUtg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533eMPiHq8u47z04MWQusI/dstZCNpWiTAa8NSEX3jxRNRHQXZEr
	xztQl0xVCiWPRUKcbviNUDE=
X-Google-Smtp-Source: ABdhPJxp77SPDlZOafdEby/dk35G0WLbHh7dL708DqWoPBhnK35eyT3SSHxcp6d+vnQiFRN9Nnb1RA==
X-Received: by 2002:a1f:9c12:: with SMTP id f18mr13509242vke.14.1602522516890;
        Mon, 12 Oct 2020 10:08:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:e7c5:: with SMTP id e188ls815878vkh.10.gmail; Mon, 12
 Oct 2020 10:08:36 -0700 (PDT)
X-Received: by 2002:a1f:1852:: with SMTP id 79mr14044222vky.6.1602522516379;
        Mon, 12 Oct 2020 10:08:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602522516; cv=none;
        d=google.com; s=arc-20160816;
        b=I3htD6AXmTgep7nzaEbruMdWuTMcBtpISWDxtLvClGtmc598bygqvTQOPSUMmCKE4m
         lzkRVXvRjKOIYKLj3uBUu57uhBU9R/PbauA19kabdxtsMRiUgskvtujIf5xV0o8yqa9X
         Tl53jx6ShO8/zIOzlfxVK85y5o+9dqXN2DV5lba2db1R0ooDrKMGICWUZu6WKyR2ufcO
         1z39qRjPhnT1UmznWCfAw5lN42Exi27uBxonVlstHKxX24DJFHo5TFwgEYd9CXKIKi+y
         NdtFUFQmXpNUrNQusJ/S3EHq/i3IJNX+oSOoPYmT/MHNIpGIBsVkoyHjYh7bFjbtaSGu
         KV1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=88AU0+hOtEr3LX7JPS56bloXLsETwbX3NL4vxoI6fR8=;
        b=BtvuONGACYMXhfXAnAmEgElc4RT7Wq4j3JM0Z4kN/SkVpARxI7pYBOvCQdHcLMqVpN
         9TiXpKIce6wlmDlR2JpE1VjChjmrikJ80ShoWGanVNQDtVQA8rdXO+dxv9eFOWDQifYy
         IhXZD0qq7+jXbQMyq9PF5JTBjGhzpaF95Dph4tKUFTBIhsCb6465LOkE288bz/Ya5mtV
         6ooY5RLz1PTS60QSrb3wYWr5v3XpXa+Bm/2fICmYgAcv5BsDVAcpB54Mh1TI2TsPm3oM
         fucMEDtf2iBaZ8LHgtdTxDSNnvrEG0UmyP6o1/BSOkgV+kEYrNemgdyOZJG9PCg/FbUD
         32Ew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="rcDnF/aV";
       spf=pass (google.com: domain of ujjwalkumar0501@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ujjwalkumar0501@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id e21si1125726vsj.2.2020.10.12.10.08.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Oct 2020 10:08:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of ujjwalkumar0501@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id r10so14903692pgb.10
        for <clang-built-linux@googlegroups.com>; Mon, 12 Oct 2020 10:08:36 -0700 (PDT)
X-Received: by 2002:a17:90b:4d0d:: with SMTP id mw13mr21103770pjb.192.1602522515412;
        Mon, 12 Oct 2020 10:08:35 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:a404:280a:90bd:7a49:dcda:1fb1])
        by smtp.gmail.com with ESMTPSA id x16sm20494337pff.14.2020.10.12.10.08.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Oct 2020 10:08:34 -0700 (PDT)
From: Ujjwal Kumar <ujjwalkumar0501@gmail.com>
To: Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>
Cc: Ujjwal Kumar <ujjwalkumar0501@gmail.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Kees Cook <keescook@chromium.org>,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-ia64@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	linux-kernel-mentees@lists.linuxfoundation.org
Subject: [PATCH v2 0/2] use interpreters to invoke scripts
Date: Mon, 12 Oct 2020 22:36:29 +0530
Message-Id: <20201012170631.1241502-1-ujjwalkumar0501@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Original-Sender: ujjwalkumar0501@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="rcDnF/aV";       spf=pass
 (google.com: domain of ujjwalkumar0501@gmail.com designates
 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ujjwalkumar0501@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

This patch series aims at removing the dependency on execute
bit of the scripts in the kbuild system.

If not working with fresh clone of linux-next, clean the srctree:
make distclean
make tools/clean

To test the dependency on execute bits, I tried building the
kernel after removing x-bits for all files in the repository.
Removing execute bits:
for i in $(find -executable -type f); do chmod -x $i; done

Any attempts to configure (or build) the kernel fail because of
'Permission denied' on scripts with the following error:
$ make allmodconfig
sh: ./scripts/gcc-version.sh: Permission denied
init/Kconfig:34: syntax error
init/Kconfig:33: invalid statement
init/Kconfig:34: invalid statement
sh: ./scripts/ld-version.sh: Permission denied
init/Kconfig:39: syntax error
init/Kconfig:38: invalid statement
sh: ./scripts/clang-version.sh: Permission denied
init/Kconfig:49: syntax error
init/Kconfig:48: invalid statement
make[1]: *** [scripts/kconfig/Makefile:71: allmodconfig] Error 1
make: *** [Makefile:606: allmodconfig] Error 2

Changes:
  - Adds specific interpreters (in Kconfig) to invoke
    scripts.

After this patch I could successfully do a kernel build
without any errors.

  - Again, adds specific interpreters to other parts of
    kbuild system.

I could successfully perform the following make targets after
applying the PATCH 2/2:
make headerdep
make kselftest-merge
make rpm-pkg
make perf-tar-src-pkg
make ARCH=ia64 defconfig
ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make prepare

Following changes in PATCH 2/2 are not yet tested:
arch/arm64/kernel/vdso32/Makefile
arch/nds32/kernel/vdso/Makefile
scripts/Makefile.build

---
Changes in v2:

  - Changes suggested by Masahiro Yamada
    $($(CONFIG_SHELL)    ->  $(shell $(CONFIG_SHELL)


Ujjwal Kumar (2):
  kconfig: use interpreters to invoke scripts
  kbuild: use interpreters to invoke scripts

 Makefile                          |  4 ++--
 arch/arm64/kernel/vdso/Makefile   |  2 +-
 arch/arm64/kernel/vdso32/Makefile |  2 +-
 arch/ia64/Makefile                |  4 ++--
 arch/nds32/kernel/vdso/Makefile   |  2 +-
 init/Kconfig                      | 16 ++++++++--------
 scripts/Makefile.build            |  2 +-
 scripts/Makefile.package          |  4 ++--
 8 files changed, 18 insertions(+), 18 deletions(-)


base-commit: 2cab4ac556258c14f6ec8d2157654e95556bbb31
--
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201012170631.1241502-1-ujjwalkumar0501%40gmail.com.
