Return-Path: <clang-built-linux+bncBCT6537ZTEKRBR76T6FAMGQEH7HINCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id B8550410ECB
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Sep 2021 05:26:00 +0200 (CEST)
Received: by mail-lf1-x13c.google.com with SMTP id a28-20020a056512021c00b003f5883dcd4bsf11219040lfo.1
        for <lists+clang-built-linux@lfdr.de>; Sun, 19 Sep 2021 20:26:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1632108360; cv=pass;
        d=google.com; s=arc-20160816;
        b=luk5NS2rly27ALJt0AA4L3BrIqNoUECXfWZgxXzqnPG0OenEEDAs+cy50DnMKVS3fu
         kMRt0SGvI6wuEHjRIHjC1nbd3lasA+iig+VdslZTh42ITb92tU0f/JcUYRQRom1UUmHj
         kFDo0Lc/ekPFgBwS0zNcHxBleK/hxGvT1mtLS12eOeKqnQxb6jeTda+MPHN/2ealinU5
         MOk0Wr25oKR/5Bx6G6k6nN1k0Wn3cPdNpfKM4tLq8TT7KDU2cr+8CnKv5aNdreLRMoPN
         Tko4d7YGuOtab+LQSNanBHQuVpWXQpM92NCh3GR6/EVZ8KOHjIirEHcDDRYocNk3YjJd
         FqpQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature;
        bh=GiyjaNyLaOT7B+8LeIL8LSY59kcCtjdOjHJwxfbzRP0=;
        b=gyjnDRHi8st4XZaHZJMaoF5pq+SXo1l7uyg6c8NjGwfh87LdjwyWeDj73xkZi8dx2G
         uSIyF56ukhRkpdoi/nr1oWHjbmRPPRBSNze2MRNhTqHoi0Q2acy8jFmu8h/bf3zyeh0L
         Mg88VbFNWZ1G4qJGsjgDHsPivZyeNPfnY5Kl0TVHgsitWJA6exxgKPql8R8ADvQto7VQ
         wiTxIlyqJnOxrhRzF1CAQzRTY6P3LeZkveGCLITovAl/XSVZUhZrrC9FscubsZX/WQIg
         roRu4fDn0sc794IQmYTT9DwHrwxQ2xgBojMs4kxueI1D5u8JEErYmkYlu0/eWZvOGNCk
         3Uxw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=ABbKko9j;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::536 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GiyjaNyLaOT7B+8LeIL8LSY59kcCtjdOjHJwxfbzRP0=;
        b=rRh121jLfySklV4EnN/706w51N8q5DnbCdgH2DDEYoXn/Tgyv7b8Xekbm6/qtQM/wV
         iLTSpt/FWwyxVesGMX1wLFWtqzuTXctOaNqoUS2R/HejDa7YouH6g3q1uxlKh2cWLAQd
         2pxmlU6b6SpguZ3uRtiPHOm00QBAPweirxzuYEEuwT3sFhDuVsRMTallgXAQcVLuEvwY
         nQCpbOiVgw2T5uopCxk4e6fwc/BDIbD5WtcLqecliLbMkjYxA59AE2+Fb+r24pNkb+4V
         A5witagQtT9I5SWR7p6VFNxu0Vf5rxUevyuqFmNbxqgoFDnBY6Xlp3Oy5/bU4+fLQI3M
         ggEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GiyjaNyLaOT7B+8LeIL8LSY59kcCtjdOjHJwxfbzRP0=;
        b=tKvWOEdmJRvrJWfQKgcHuTA3/76irbf0KY/icDi24GzfEESfceQPiPBwYceOkoSIM8
         xc+jU2gapGeHPpKtNQGAeDl9sOQECifmduSfR5I8XEqXIw4cX4GTxkAXNrEuweemCjpU
         OqtgivtfTlsz3FxN2sTKKsEsV5Ck54PydTro9PVINhdnQg8V0rYOG4bV4nuShGXKufOo
         qZsoW+Bjr0x0M9kW+RHNYuw4vZdqljizWnzT0X0TEWELec2/pFalSN628QErgQb/gFAc
         LHK7S7Sb5vbhcWqJwbNBznQXG1egc2A8NtVmjCK4M2Srw64Cnujcvv7SqmZIKLiT7kzC
         JO6A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532da8SrI8Esu1Md83n8FC51f5+t6xtucNSl8KsznLCsKwbr9r1T
	x9rghlRn/T85z8Fiba5N3yg=
X-Google-Smtp-Source: ABdhPJx1AVkP3tdG0lj2Kac2UcGKY0sannSU47IJpN8f9yRZzKnxeOead9z68+MVs2c0ajp8of/LkA==
X-Received: by 2002:a2e:544a:: with SMTP id y10mr12055ljd.323.1632108360256;
        Sun, 19 Sep 2021 20:26:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:881:: with SMTP id d1ls1546721ljq.11.gmail; Sun, 19
 Sep 2021 20:25:59 -0700 (PDT)
X-Received: by 2002:a05:651c:54e:: with SMTP id q14mr21918706ljp.152.1632108359217;
        Sun, 19 Sep 2021 20:25:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1632108359; cv=none;
        d=google.com; s=arc-20160816;
        b=rVUIhS9ggJqp0MiIWnYjKWlD8+SPMn0cClH/jAENJ7i2V0ZmtIi0F08z7DcyQBy+ok
         OoYd4so1RQoI2Boqubwah6cFElEnOKiiXX1ISqaN0f2knebosvG5s6Eiu7halraS/uzQ
         C5DhNsQA3T4xEhyItVZn4onEXKFXLdJ7qu/Fv0+klfLsCeO0WzEkRHs04p4QVNd3UU0V
         11eSz6AG0pXt7+Oi3riHifWjnS8cxiwfv2xwY40Z+jpmsxQJynGgnRWusv/EMwf+a/Th
         +ao8mY8LcB3xAySh0UK76VRXFfwmyuyDkzmZakrtORGSxQC8+LGl6bmKx+vaNYwT3QYi
         kJEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=UyH5g5gkFhjfVaHvBZg29/bQ5+iZMioda5dgko5wWww=;
        b=G8RDUAEvwm30We2JU4iZxeBIaFIZQ8EuVQAlX1muh7MjggIUHvms89jmST613UJ32n
         zJeaxqIVpPBOt3XKl7A47IOtuZe0/2QGlaGgUhBmxfNuyklOldkn8qG6Ju75IyXXI7d4
         D3Qw2D0lUo6sUARGn5x0aSMpfpo7L7k7Ab8nNS5ySzx4int34lc+3qJt8txnOO2inzNn
         EtR0mTH4x1OC2L47dkiTErDo/E5hcgfssPOSSc3WYsKoJQ3UDXwQ8Fu2LzpTjVwlRK48
         kz3xNP/Buc7K1aNXELQToV3dF+30HyYXSLcBXKeIL/8SZ3uqu8EAKCCPlLsI4RIRCUAv
         KaJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=ABbKko9j;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::536 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com. [2a00:1450:4864:20::536])
        by gmr-mx.google.com with ESMTPS id o4si84914ljj.3.2021.09.19.20.25.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Sep 2021 20:25:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::536 as permitted sender) client-ip=2a00:1450:4864:20::536;
Received: by mail-ed1-x536.google.com with SMTP id co2so9001893edb.8
        for <clang-built-linux@googlegroups.com>; Sun, 19 Sep 2021 20:25:59 -0700 (PDT)
X-Received: by 2002:a17:907:7601:: with SMTP id jx1mr25835157ejc.69.1632108357657;
 Sun, 19 Sep 2021 20:25:57 -0700 (PDT)
MIME-Version: 1.0
From: Naresh Kamboju <naresh.kamboju@linaro.org>
Date: Mon, 20 Sep 2021 08:55:46 +0530
Message-ID: <CA+G9fYvoyDqbCnmcVMHCO3Zxn9=FGTjyTH9u=7FT7rCz-dh6JA@mail.gmail.com>
Subject: x86_64: clang-10: <instantiation>:2:2: error: unknown use of
 instruction mnemonic without a size suffix
To: clang-built-linux <clang-built-linux@googlegroups.com>, llvm@lists.linux.dev, 
	open list <linux-kernel@vger.kernel.org>, X86 ML <x86@kernel.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Linus Torvalds <torvalds@linux-foundation.org>, Andy Lutomirski <luto@kernel.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: naresh.kamboju@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=ABbKko9j;       spf=pass
 (google.com: domain of naresh.kamboju@linaro.org designates
 2a00:1450:4864:20::536 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
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

[Please ignore this email if it is already reported ]

Following build warnings/ errors noticed while building linux mainline
master branch
with clang-10 for x86_64 architecture.
But clang-11, clang-12 and clang-13 build pass.

<instantiation>:2:2: error: unknown use of instruction mnemonic
without a size suffix
 lsl %rax, %rax
 ^
<instantiation>:1:1: note: while in macro instantiation
LOAD_CPU_AND_NODE_SEG_LIMIT %rax
^
<instantiation>:2:2: note: while in macro instantiation
 GET_PERCPU_BASE %rax
 ^
/builds/linux/arch/x86/entry/entry_64.S:887:2: note: while in macro
instantiation
 SAVE_AND_SET_GSBASE scratch_reg=%rax save_reg=%rbx
 ^
make[3]: *** [/builds/linux/scripts/Makefile.build:379:
arch/x86/entry/entry_64.o] Error 1
arch/x86/entry/entry_64_compat.o: warning: objtool: .entry.text+0x215:
can't find jump dest instruction at .entry.text+0x21a
make[3]: Target '__build' not remade because of errors.
make[2]: *** [/builds/linux/scripts/Makefile.build:540: arch/x86/entry] Error 2
make[2]: Target '__build' not remade because of errors.
make[1]: *** [/builds/linux/Makefile:1868: arch/x86] Error 2


Build config:
https://builds.tuxbuild.com/1yNlOcqNwVJJje4WbGjSV4ZeBh6/config

Reported-by: Linux Kernel Functional Testing <lkft@linaro.org>

meta data:
-----------
    git_describe: v5.15-rc2
    git_ref:
    git_repo: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
    git_sha: e4e737bb5c170df6135a127739a9e6148ee3da82
    git_short_log: e4e737bb5c17 (\"Linux 5.15-rc2\")
    kconfig: [
        defconfig
    ],
    target_arch: x86_64
    toolchain: clang-10

steps to reproduce:
tuxmake --runtime podman --target-arch x86_64 --toolchain clang-10
--kconfig defconfig

https://builds.tuxbuild.com/1yNlOcqNwVJJje4WbGjSV4ZeBh6/tuxmake_reproducer.sh

--
Linaro LKFT
https://lkft.linaro.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BG9fYvoyDqbCnmcVMHCO3Zxn9%3DFGTjyTH9u%3D7FT7rCz-dh6JA%40mail.gmail.com.
