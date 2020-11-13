Return-Path: <clang-built-linux+bncBDS5JPEL3IIRBW4AXP6QKGQE7GCX7AI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x639.google.com (mail-ej1-x639.google.com [IPv6:2a00:1450:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 60F872B21F1
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 18:20:28 +0100 (CET)
Received: by mail-ej1-x639.google.com with SMTP id p6sf4430886ejj.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 09:20:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605288028; cv=pass;
        d=google.com; s=arc-20160816;
        b=jxWUxoJyPpuU2r4ixx0YtajFUXby1X7rOCMX/GCkim2/XarxkAnVyQI4oFyb4EhlDa
         ekFpcrzrqZ6mZsB1sx48nNIhdkPJAemi6/rk5Md4EomFgTtkCk1hV7jp2vb2stgUDYAt
         98VjTN90QI8UUmcoxjIArtdCnDLuslxuLFMbjLk82M3hLUWZdVLvbwJ/Nh93WCX8deRI
         aB8uKzojRWoqmo+KOPguP1sOhW+KDnZZjJYmceTWw25QOa2RfzbK2Cy3ZnmwZdBY8HpM
         Cj16Gh7wi+HENCaOsHQ4+Bhk9FKuzZa7fw7QksrVKYCW75yDUDt7AFoDAlbW9ezJrjgv
         ouTA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=NNux8DhnpS/8CB1UdwbJdiNilf8dfzxTl5yEG+F9l70=;
        b=IllO5KkUKbxloB/UMx/Sy1J2Ip2r+3jGWGPD9qizRA4DdeEv1XaDRyHl+AWAO9XXFM
         ZEjE7H/xUqDLrj3OmKJ/q8Oly1TsZh8j2XCR+zv79jewrPM12wsWiaexdOp3Z0Gp8ZuX
         sKnvzcyZ9ojqERGAA4tzGVllAebBKJDMteTCevJR6sc/yH8tympXMiUSUwijsrvmLd60
         Jhv2rP7Xj0WV3Wmhc0ZFDGQREMy+Y6ZlWDZw8hsHWiuw7z07UCPSuNeSC5S9M9DrgERO
         TO5GRMr4sW7txRNbNdwnWXX6fdT92FFeD19WqiAUcyX3scjKkEbmUO9CIXJkmjHMxVbg
         k1Gg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hRL+SO3M;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::644 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NNux8DhnpS/8CB1UdwbJdiNilf8dfzxTl5yEG+F9l70=;
        b=Xm7/hBS/29eonIXoOwn+lUQ1QYFTUGOeLAwrtX//54iKxY+BBknJ9G5r4U6a1tVSkf
         uZ7ukWANQGDtURKWVFkqxxFapK7SULMu24IazxueZCOsu0KYNRj73UPUSlwrFCGGtPOY
         Qh+pRSDJgDlnufc+1bvXRi30eFm3chSu5PTLxYptwmaEjJmUQdy8Q124ZYvCGmaJMiT7
         wMyfSGma3Ciw+D9/mfKt6DNFWUZvrmZbS9QaEzKG1pMJ87F69Tm/U3LaELCaYi69qd8l
         YSn0HSM++wkz6rW+zE8YiJrubO7MIwaQ5jX5+yLIDX9pH5txOZuVoMIbXPz1X/ye1SlC
         5OQg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NNux8DhnpS/8CB1UdwbJdiNilf8dfzxTl5yEG+F9l70=;
        b=kyRq8/znJxflk8brFU3fRvRqtlaJIw0o2V5+7EWcJZeq0RXA3tZc3Ms3HyAL25LlEx
         xbZxgx0lhgBFuIzBz7T7zYmP2oAqYC1vbqrskDeQGMu2I15Vbi6cwVeXJemd41LD7Dfq
         bo1fpIMVkLvHEnlSSVTeTe/51rumLNkbZoU50AITVdwpRKkWSuH1DyodA5u+f5PnHARH
         4BqkY88y5jOFx32ldP7VnzsltTcnazaYi4QU/kN20/UzJjR/8jWC3e0jlhuwdJmuxgmG
         eYtt5kjBOMF4UR0POSia2FUSRQa1kCn159AATwYbxrSB6nYlNBdUrm1lKcVC5EX1+f3S
         9pPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NNux8DhnpS/8CB1UdwbJdiNilf8dfzxTl5yEG+F9l70=;
        b=rIBnSxZivxBa+MoWrwMDwHkyPy3Dft1F0+ww8sg3NwWAG2OdEKQPPk4/MFbBOAfOEP
         DCBMUYYrGAGs4aIYNK5UirZ0nAYlw/GT2cjDGuAryChoh5EhTBwcldAdLf4+xXfHo62d
         1t+YWcFG/3Z1yUgwYewtxkcB3IgkcMO+4jitgWC9g6aM4M/NE1Kp5lxw0l1CC3fzNpso
         WglfFmef1VamY0IpqYpT/K1D9poCwtuC4PV5+o4wuStO37cghwlF6OgGtxTHizwwrIB4
         uoGSAsSNjHx0mRf+mH0lOCahaz350fRVIMHK6h2Kcifsgq1QiE3YvcYSUgui+dCpetBk
         Mk3Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532iOzQp2RIMRmcELiGsqZAuOvsxqzwjXHUX4kGVFt+u1eZmjmom
	S+gXTuG715I0MoCGqcUO1yc=
X-Google-Smtp-Source: ABdhPJwvWe01s2PYjGzDDJqrbh+jVEs3D6VtCxdmZwTrMw6n7ebb+U9+rkLU3UjOWSJvh+bqLEakqQ==
X-Received: by 2002:a05:6402:3064:: with SMTP id bs4mr3674751edb.258.1605288028099;
        Fri, 13 Nov 2020 09:20:28 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:b246:: with SMTP id o64ls204443edd.2.gmail; Fri, 13 Nov
 2020 09:20:27 -0800 (PST)
X-Received: by 2002:a50:d615:: with SMTP id x21mr3614626edi.200.1605288027043;
        Fri, 13 Nov 2020 09:20:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605288027; cv=none;
        d=google.com; s=arc-20160816;
        b=hdlU6lyZkwT9FRjbdh92mG5Ufx5HQaQKkO4WQnWW21LR0uEfiyD5nCJ8Y2cHJWQjU/
         KuqLg2Vk68ZqUAsE3hhywGH7SR90drrqcRf2pg5d6XJvC7UTDuUm3EHqTLKhkOvA/M43
         haOklCa7zfgryKeCrdeVM+lCtI3WDOSiwjiTgQDx1girPuvhG7n0mxWT6Sc/Lc1urRxC
         3VHsON/aOV9Dv/ao6A7qcC1HeCjiA9dSEOJorlM/ouYa/orJsNjJrZ5Bs9XzBRMDIbAc
         eErmviMKVkL8aGx0s/wYj8UPyKkRsBrueFnV52cG2EUg3lRQDIS8ycIWi50Gffqxg4H6
         ZGRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=sjc8KniBtNjED/lBoWeTXk5F0n8iK1Duyq0rjSX4Y94=;
        b=nLoq6uWABITLpmHKXCxCjun1dQhbATikOl0akPxa62e2FUimPiCB9YdfhpryD22TxA
         OZrcVN/8CNFwOJt6+RgBAD9Jhmz+DdVG0/Q/AbxxxCYj2E+wQ2ULRuBUoEkth0IeArOI
         Nt+7CxSOIYgAnFdg931qwGScZkJ9e4dlc+WybGDC4UechAjxouiWSRFfsY3WR3ZwOPM+
         kIflOFhRlwX8aPcwnTxadrwTo9fW6WyATLTV+pMkjWj9Red/KqQuoiFl7ZVfCOAqf9/C
         vCqrk5ygiTthIK+cRG6KMT80qcF7AqwbVCJTH9RzKNDKV2e0XB2XdSyha5EqdUFv5bO/
         fcnQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hRL+SO3M;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::644 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ej1-x644.google.com (mail-ej1-x644.google.com. [2a00:1450:4864:20::644])
        by gmr-mx.google.com with ESMTPS id v21si206436edd.4.2020.11.13.09.20.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Nov 2020 09:20:27 -0800 (PST)
Received-SPF: pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::644 as permitted sender) client-ip=2a00:1450:4864:20::644;
Received: by mail-ej1-x644.google.com with SMTP id me8so14561013ejb.10
        for <clang-built-linux@googlegroups.com>; Fri, 13 Nov 2020 09:20:27 -0800 (PST)
X-Received: by 2002:a17:906:3813:: with SMTP id v19mr3050721ejc.462.1605288021328;
        Fri, 13 Nov 2020 09:20:21 -0800 (PST)
Received: from felia.fritz.box ([2001:16b8:2de6:6700:3137:43ab:602a:9934])
        by smtp.gmail.com with ESMTPSA id rv19sm4152379ejb.38.2020.11.13.09.20.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Nov 2020 09:20:20 -0800 (PST)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
To: Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>
Cc: Darren Hart <dvhart@infradead.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Tom Rix <trix@redhat.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-janitors@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>
Subject: [PATCH] futex: remove unused empty compat_exit_robust_list()
Date: Fri, 13 Nov 2020 18:20:12 +0100
Message-Id: <20201113172012.27221-1-lukas.bulwahn@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: lukas.bulwahn@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=hRL+SO3M;       spf=pass
 (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::644
 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Commit ba31c1a48538 ("futex: Move futex exit handling into futex code")
introduced compat_exit_robust_list() with a full-fledged implementation for
CONFIG_COMPAT, and an empty-body function for !CONFIG_COMPAT.
However, compat_exit_robust_list() is only used in futex_mm_release() under
ifdef CONFIG_COMPAT.

Hence for !CONFIG_COMPAT, make CC=clang W=1 warns:

  kernel/futex.c:314:20:
    warning: unused function 'compat_exit_robust_list' [-Wunused-function]

There is no need to declare the unused empty function for !CONFIG_COMPAT.
Simply, remove it to address the -Wunused-function warning.

Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
---
applies cleanly on current master and next-20201113

Thomas, please pick this minor non-urgent clean-up patch.

 kernel/futex.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/kernel/futex.c b/kernel/futex.c
index 00259c7e288e..c47d1015d759 100644
--- a/kernel/futex.c
+++ b/kernel/futex.c
@@ -310,8 +310,6 @@ static inline bool should_fail_futex(bool fshared)
 
 #ifdef CONFIG_COMPAT
 static void compat_exit_robust_list(struct task_struct *curr);
-#else
-static inline void compat_exit_robust_list(struct task_struct *curr) { }
 #endif
 
 /*
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201113172012.27221-1-lukas.bulwahn%40gmail.com.
