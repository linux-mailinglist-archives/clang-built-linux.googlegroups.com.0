Return-Path: <clang-built-linux+bncBAABB7NIQKBAMGQECPIBFYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 2278F32CE09
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Mar 2021 09:04:15 +0100 (CET)
Received: by mail-yb1-xb3d.google.com with SMTP id v196sf29827066ybv.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Mar 2021 00:04:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614845054; cv=pass;
        d=google.com; s=arc-20160816;
        b=b/oj4wOHVieUzVFekvJ+bh8qVZHO/ODHGb8Y73IJxNLHgZvjMQiiAmOpVSsE/1dR3o
         cpsg/smezxHBD1oVB5hkgRWhv783bEbkd8piqP/CAJ3TkHReCOBFNQrHFkwNmvdn6v4e
         pH4XMlflc3Bv5nWRnd9XjOqqUGc1SBkKCxa+eb86NpW7LMbcYbki+BAfN33BLyhD1q+k
         pfkRGDZuFLCUCIWSsSQ2v6sx1Vj12DjLOv5LirNbhTV6oJWkiUxQg7gPQg+E2lO9wztF
         SUYY2/MEwWrQxwpFpS3uH06JI/FtAHhzvL9LiZXAuKnTnLjHDP92/uGcf6WiHTuVqF6l
         Ym4g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=XNBcymeetC1vnSQPFq3M9SKexXZYHh8KSHN0boS89uQ=;
        b=r3RcIWRx/sB6dfx5tde0x1uvrnD/8iZxjJaUccG2S6MHGYXa52ZobB84Otv9LKRhsc
         A+4K5qQRbdDDKJ0EY9lZddSl533ZpFDuOikTQlyLJGax0iEwP4h5FTmEm3sb4mQBScCf
         sVTcEZRbVC5TQhrfT8GypV9PdTnGTS/vzqGjWLzquqT1a7w6+mpt39uRJMSJezEL8szI
         0twx22CWIlYfH6s03qOTfWhIIus3YysR555Lj26lul+hPjL1BMinb/+1MKDNzBU4Ddf0
         wr2T5mfyoip9VGCXi1xBvdjh2g4AOTGaAMwuGG4TBbF1jNWNzJCjYj16bIHA5wF5Aud1
         ticQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yangtiezhu@loongson.cn designates 114.242.206.163 as permitted sender) smtp.mailfrom=yangtiezhu@loongson.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XNBcymeetC1vnSQPFq3M9SKexXZYHh8KSHN0boS89uQ=;
        b=oJrGCdRqwZ38XXqjADrR2PDHzyG4hTgCrJqFY7cHC/oQhrzu/UCTpygaXd9PXPKs1e
         tZp4dpD6kHDA1wpObvTM0KeCbUEPdma95rhgmSLCCXc0E0L00F6LS85Oqmmewm6jrDeW
         BknouuDkLQ3jTk0g8WbBoRKtr2hVlvQ5RQ7AfbEiDPEve87guCbVJ7LI7zFXMmYXHLFP
         Bk6iT+YVl9laRLzHzjyUqI41uqe9XsaagVOkGdWsCJ3Ua+GepoAw8NeRZoxXIccHrp7t
         HEW1jXDGUg6Mtz2AuRVz4fEF6iuaw4C/FXew5KmUgrUqVIvkDADBVXq0TstajQRXSRrf
         LEBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XNBcymeetC1vnSQPFq3M9SKexXZYHh8KSHN0boS89uQ=;
        b=S/WlW8u/8c2c+xR4RksGqXl1AGPSTimRHZSRC7VdUSRH855wW0g9gCqDD76BausWeZ
         WjSajgw5ruoRjqFZWd2y4fIPBvt5eDMLNYvyMKRLLRzVO0ZMp+IdJpg3P2/5QC3UqNEh
         Ijoj7Ygh+hw37j5N6yM9Q0kh7gpzfEueenj4QGZoNkRp2R51jSFy3G4oNDWXhP0sBzPW
         Ttz7NWIE3iNWx9tvq2bzpUOcFZRJ18s4CAtmEnQLRURtxyaN9NFCzi+d4ep5bpxqGPC9
         UYT4pPs8mVX47SeWZLyHZY4qgWdcoxBKXzpxvZ/WifkMm5muriiS5+N+ZvUNKWxH9vjm
         e8VQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530AuxbhoOl42jkQVQRPUXwQxgw+3ktae2f+2iGHqnJIMdDEKk02
	vvddlFBJSGHi+n9hajCft1A=
X-Google-Smtp-Source: ABdhPJwVw4xi7mLb/+qOXRAzIvJ0CuWN4svRXklJ8EkKQGuIi1a/wChwKdDQ8PL+GKmMyFO7CPPrng==
X-Received: by 2002:a25:df95:: with SMTP id w143mr4647099ybg.102.1614845054190;
        Thu, 04 Mar 2021 00:04:14 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d8c7:: with SMTP id p190ls2422309ybg.6.gmail; Thu, 04
 Mar 2021 00:04:13 -0800 (PST)
X-Received: by 2002:a25:cf02:: with SMTP id f2mr4745345ybg.99.1614845053373;
        Thu, 04 Mar 2021 00:04:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614845053; cv=none;
        d=google.com; s=arc-20160816;
        b=XTWgD9iJnBuccBD2Adr3w6Zw5+rPr/NrPDWxBcQ2hewB/pxwEEOlLmDfZYXFN7kmFz
         10wkjXYm7Bb0YOFmRSpxWrazN5ekmaGOj9UrjXYF2kRwcVtpVXTNQfnE1Hod68gq7GTe
         3o2ZC5iRQPK57uH/cZ0ClZ2V6WxknkLp3+xZIJ5v/ICyVjKPTQ2Zu47fdeJfM94b/pmo
         wFoJpPadAkvATSSi/y7qHkwhKsXyuLzBrY3cgqvMYZLcJtZShmThLTfhucCbidUXFe11
         r081GiJebqPURqAl5ufSnaUK9RzkAxNvasHxWuuTPU/naCObuKe60PSyOPRjzBR96EQG
         sZ+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=qtRzxmk9f1VIr/cXHIltlvQ2W0mu0Qk9iWw0jCZbLc0=;
        b=IM1WmbTmmwXZUtXBn5Upy9lnCFpP/cgepnYEGMPxFzs2n8BNIspixFrQR5fA7Lxumw
         Hl3bHJcop6c+uVjJQj1fTzpeLqGSpAafw+xUZSWWA/44zdto3rkA1l+oLYgISo2W8irg
         GSG9uPUAfm6IJfRXEQucnrb7E4itaeYsqqPrHuHX6eCYAeJkD7vIT6MC4ub8BPM07NHg
         sF+A2/sEYcGnKmi47csb2RKNA4zDrKtObs1Ol6Zu1SqY+OVn5+M98SFzP0cwjpEb3B+b
         27ydURt4lTaoqmIt4XNxM6J3h5Ml96tGOhqROpNmUYMxOUuz8CLqNJYaPcbUAEErwXbp
         PM+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yangtiezhu@loongson.cn designates 114.242.206.163 as permitted sender) smtp.mailfrom=yangtiezhu@loongson.cn
Received: from loongson.cn (mail.loongson.cn. [114.242.206.163])
        by gmr-mx.google.com with ESMTP id s44si2073486ybi.3.2021.03.04.00.04.11
        for <clang-built-linux@googlegroups.com>;
        Thu, 04 Mar 2021 00:04:13 -0800 (PST)
Received-SPF: pass (google.com: domain of yangtiezhu@loongson.cn designates 114.242.206.163 as permitted sender) client-ip=114.242.206.163;
Received: from linux.localdomain (unknown [113.200.148.30])
	by mail.loongson.cn (Coremail) with SMTP id AQAAf9Dxr_BwlEBgYTwUAA--.9025S2;
	Thu, 04 Mar 2021 16:04:01 +0800 (CST)
From: Tiezhu Yang <yangtiezhu@loongson.cn>
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>
Cc: linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Xuefeng Li <lixuefeng@loongson.cn>
Subject: [PATCH v3] MIPS: Make MIPS32_O32 depends on !CC_IS_CLANG
Date: Thu,  4 Mar 2021 16:04:00 +0800
Message-Id: <1614845040-12995-1-git-send-email-yangtiezhu@loongson.cn>
X-Mailer: git-send-email 2.1.0
X-CM-TRANSID: AQAAf9Dxr_BwlEBgYTwUAA--.9025S2
X-Coremail-Antispam: 1UD129KBjvJXoWxJr4rtr17JF4kKF1rWry8Zrb_yoW8XF1rp3
	ykKa1DKrs8GFyrJFWkWrykWr1av3ykJayFvF9ayw17ZasrZa409r1SkF1IvFW7Ars2qay0
	grZ3W347JayjyFUanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUUkG14x267AKxVW8JVW5JwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
	rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK02
	1l84ACjcxK6xIIjxv20xvE14v26ryj6F1UM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26r4U
	JVWxJr1l84ACjcxK6I8E87Iv67AKxVWxJr0_GcWl84ACjcxK6I8E87Iv6xkF7I0E14v26r
	xl6s0DM2AIxVAIcxkEcVAq07x20xvEncxIr21l5I8CrVACY4xI64kE6c02F40Ex7xfMcIj
	6xIIjxv20xvE14v26r106r15McIj6I8E87Iv67AKxVW8JVWxJwAm72CE4IkC6x0Yz7v_Jr
	0_Gr1lF7xvr2IYc2Ij64vIr41lF7I21c0EjII2zVCS5cI20VAGYxC7MxkIecxEwVAFwVW8
	ZwCF04k20xvY0x0EwIxGrwCFx2IqxVCFs4IE7xkEbVWUJVW8JwC20s026c02F40E14v26r
	1j6r18MI8I3I0E7480Y4vE14v26r106r1rMI8E67AF67kF1VAFwI0_JF0_Jw1lIxkGc2Ij
	64vIr41lIxAIcVC0I7IYx2IY67AKxVWUJVWUCwCI42IY6xIIjxv20xvEc7CjxVAFwI0_Jr
	0_Gr1lIxAIcVCF04k26cxKx2IYs7xG6rWUJVWrZr1UMIIF0xvEx4A2jsIE14v26r1j6r4U
	MIIF0xvEx4A2jsIEc7CjxVAFwI0_Gr0_Gr1UYxBIdaVFxhVjvjDU0xZFpf9x0JUSeHgUUU
	UU=
X-CM-SenderInfo: p1dqw3xlh2x3gn0dqz5rrqw2lrqou0/
X-Original-Sender: yangtiezhu@loongson.cn
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of yangtiezhu@loongson.cn designates 114.242.206.163 as
 permitted sender) smtp.mailfrom=yangtiezhu@loongson.cn
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

When building with Clang [1]:

$ make CC=clang loongson3_defconfig
$ make CC=clang

there exists the following error:

  Checking missing-syscalls for O32
  CALL    scripts/checksyscalls.sh
error: ABI 'o32' is not supported on CPU 'mips64r2'
make[1]: *** [Kbuild:48: missing-syscalls] Error 1
make: *** [arch/mips/Makefile:419: archprepare] Error 2

This is a known bug [2] with Clang, as Simon Atanasyan said,
"There is no plan on support O32 for MIPS64 due to lack of
resources".

It is not a good idea to remove CONFIG_MIPS32_O32=y directly
in defconfig because GCC works, as Nathan said, the config
should not even be selectable when building with Clang, so
just make MIPS32_O32 depends on !CC_IS_CLANG.

[1] https://www.kernel.org/doc/html/latest/kbuild/llvm.html
[2] https://bugs.llvm.org/show_bug.cgi?id=38063

Signed-off-by: Tiezhu Yang <yangtiezhu@loongson.cn>
Acked-by: Nathan Chancellor <nathan@kernel.org>
---

v3: Update the commit message suggested by Nathan, thank you!

 arch/mips/Kconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index 3a38d27..f6ba59f 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -3318,6 +3318,8 @@ config SYSVIPC_COMPAT
 config MIPS32_O32
 	bool "Kernel support for o32 binaries"
 	depends on 64BIT
+	# https://bugs.llvm.org/show_bug.cgi?id=38063
+	depends on !CC_IS_CLANG
 	select ARCH_WANT_OLD_COMPAT_IPC
 	select COMPAT
 	select MIPS32_COMPAT
-- 
2.1.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1614845040-12995-1-git-send-email-yangtiezhu%40loongson.cn.
