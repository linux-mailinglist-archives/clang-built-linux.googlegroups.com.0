Return-Path: <clang-built-linux+bncBCS7XUWOUULBB4NVUT7AKGQE7GYCJLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13b.google.com (mail-il1-x13b.google.com [IPv6:2607:f8b0:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B6092CDBBD
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Dec 2020 18:05:54 +0100 (CET)
Received: by mail-il1-x13b.google.com with SMTP id f2sf2313914ils.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Dec 2020 09:05:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607015153; cv=pass;
        d=google.com; s=arc-20160816;
        b=I3XbU2sSdPQUcm8W3BIIDSDjqfw7O/103l5NHKTddUNf76NoAzFHtgAivee/QUjP1L
         Vx3dHzSLITKUP0YQY9n8t2gUKX3OGVrmZN6+w7qpleWDcvlZ1px8N63MTo/dMsG+sH6g
         lNNQ8WjYebfoxT2e9NZg1bYuJ9FoXKqF58hbClaZE7uxU9XW5gfujYduXwqzTeRcSly/
         IE3mZEexEnIrSEyUXZlfXIcZmWMXT6tEAQo4CUjqMDNfi2r3BeFmP2jhxVDwSvRIy1WF
         9UxyL2Crnw1cQ794ioo7ml28pY+SU70PdKQoiAvLI0BQAzuTDITifFjmm+8i11tjbAlV
         G0/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:sender:dkim-signature;
        bh=xiuRhl3kL76pNe27Vxu8w72e8pES+8Hu+pKfxgc3Yhc=;
        b=c75LLz4xAFcPxrFHKmOKot2cJ5STn8upIms/69OuZqps4lEIl3OjBi/2O04p7/b7is
         B78KqwndaiiXgh4Mj9+20jfkptzvxflJvaXEiXfPmTlvr7+pzxBV74VA5ZXRpc14xssA
         6ty9a963cKFTpj8I9MDqAyQEygij+nYrp/YBi0F2nacV6gbf0EeJe9hP8lQWH//sE+S8
         UFlK4Lici3qr4aCcBkM7m1qGkHN0AZiW6nWR8rfm2PgyVLG4uvw9eS6fSamwuJZ9iUmf
         8m5zof7KjqP/618xyoUoH18hgYX/SBqrOF6+38LJrUhVzNJg4rNXZZlDwLYL4CnYOye7
         dFZA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="ePOWK2/6";
       spf=pass (google.com: domain of 38brjxwckeu83r918rfx55x2v.t53t2r4x-sbz2a-2z4bex55x2vx85b69.t53@flex--maskray.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=38BrJXwcKEU83r918rFx55x2v.t53t2r4x-sBz2A-2z4BEx55x2vx85B69.t53@flex--maskray.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xiuRhl3kL76pNe27Vxu8w72e8pES+8Hu+pKfxgc3Yhc=;
        b=WFGkmnepClVkJh68cGIFW3MWdAnWPfKzOGe80wq+r3N8qwTG1gr+wkUQpmsN967M1J
         G+n6TKLZBs9aL0JsbQMMc50sZRa0xze8nk5x3Yj2++Dwe0EcZRMCPNmQvYnhrQlmJbF2
         uZctpMnByP3s34HMoZeXd6DCS1JpGqUJA5z9K7NzTKFPvOajleHmebmyAZjXca0SE3zn
         Sx7SE8+SOnRj5k4a/ZqW6cOG2UJPSrOQ4vJcmcyVqQj5pUnp2ivTGPyETqcbygZdLiVq
         QFSMJZH55q1MW0oQAvIUwlNbNm/FQ6hi6naPO+DT/b171MflQ5vtxOiURNG9WfnXVosp
         rulw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xiuRhl3kL76pNe27Vxu8w72e8pES+8Hu+pKfxgc3Yhc=;
        b=iFEeteCUYOC1jIMV/fuCFIypKPGlhKgY3PuuCYmIlTNhDpT6mQ+Gop0UU1SEW8EGIa
         9cflEFG0HBMepwnY43z3iokB3FhoihVjrIxJpT9oO8JtcGo1DaMCmPkT5UlriGB9qd0Q
         vzO8Y7/ngjfw+PNePMBe80EtuGaBxM0LEsivwVrlLRsaJ8xBMLY3VCFcJLLZpiX/eUGc
         ZND15XjTcvVLt6zu3UrXRCYV5PeGt6ZDew/I0wjlY/xiVakArj41Wq3VUd1U/Fh1ku5E
         OXE9DrsokACyeZwnnzQGr+RlkQ3hebaawGzNw4o3hS3QjkUSDab2XBQZapNXNC3mYe8B
         a8ww==
X-Gm-Message-State: AOAM532CkdQQw7uUw4Pwj7EivedCLPoOes55UnmkvnqN3siZVjCG/Hia
	hltKOQObRiMCEkh8zUPSt8A=
X-Google-Smtp-Source: ABdhPJx/4pA/Gq0QYyIRoavak+zZJGyIQ+hgrHCHU5NJNf4DcG7aWJ0mhdnXqmnPRUiJiZyDihCjQQ==
X-Received: by 2002:a5d:89ce:: with SMTP id a14mr104886iot.85.1607015153371;
        Thu, 03 Dec 2020 09:05:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:8c86:: with SMTP id g6ls1017172ion.0.gmail; Thu, 03 Dec
 2020 09:05:52 -0800 (PST)
X-Received: by 2002:a6b:7108:: with SMTP id q8mr124482iog.204.1607015152808;
        Thu, 03 Dec 2020 09:05:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607015152; cv=none;
        d=google.com; s=arc-20160816;
        b=YXJoEjn8LD9DvbKk2Swami71wnQTbeDmoXj/R68KGo3VO5jsFqgCNA/YWc7gP95Fem
         hsIuWozvzpa55kWVe/Wh6erSwMs7f4FH+0gK1T5N8zT5MQJveeFecLsya2dUfpAgEQDW
         ailIvpmHfJOdZ9MPQQATtZviyy3fqmgK1UqKjlaa/6VfCUa64huufvG72OzylsKNwAxT
         HRhBd4oZ8+QYk1GUbNvwATM0q8wES8dIAZDv+hvHC9jRBXxARYV9ivPdosza9A66QpWB
         zUgIAM6pM2BteuDKJYcW2/LVbm4I2Zw0hQgJVNWR24dVyc8HuFwBQ4dJ6eXgThUerY5A
         xcDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:sender
         :dkim-signature;
        bh=Qbrb8i2YfiEPDxlw+wvNXikUmpcEcy9BW/zou/d27Yk=;
        b=hoOn/cyC2n+4B3CM1SDbOhLy3Og/xZE7lC4/NkJIL3vncadSB4UXI8DZc5ulswJuDh
         k1Zbcrugo7Qea/t/Omjwma5hjnpRBr7pJ1jSpUS+O/eV+OZUx5zXWz8RLYxYsiARhI/6
         q9oosNxvtyCmecJ1kPxtrsjP1ZZOJwgPMDqN6pEYiRpQklMw++XBiJo6cSezb1s5/etY
         legKqk1h/2xG8cAOi4aoY5A+x5KTaQXQOWRskzh5jSxwm4su8GRcQerjjAIUtnT1NJL6
         Jam0FeVAzO27lrst0u+1r28LoUuk0SWZmLn2LAksCSgvbGZ4X+PdifgrbPpa0YSxngDQ
         Q6Ag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="ePOWK2/6";
       spf=pass (google.com: domain of 38brjxwckeu83r918rfx55x2v.t53t2r4x-sbz2a-2z4bex55x2vx85b69.t53@flex--maskray.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=38BrJXwcKEU83r918rFx55x2v.t53t2r4x-sBz2A-2z4BEx55x2vx85B69.t53@flex--maskray.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x84a.google.com (mail-qt1-x84a.google.com. [2607:f8b0:4864:20::84a])
        by gmr-mx.google.com with ESMTPS id j1si1767ilk.3.2020.12.03.09.05.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Dec 2020 09:05:52 -0800 (PST)
Received-SPF: pass (google.com: domain of 38brjxwckeu83r918rfx55x2v.t53t2r4x-sbz2a-2z4bex55x2vx85b69.t53@flex--maskray.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) client-ip=2607:f8b0:4864:20::84a;
Received: by mail-qt1-x84a.google.com with SMTP id x3so2029983qti.15
        for <clang-built-linux@googlegroups.com>; Thu, 03 Dec 2020 09:05:52 -0800 (PST)
Sender: "maskray via sendgmr" <maskray@maskray1.svl.corp.google.com>
X-Received: from maskray1.svl.corp.google.com ([2620:15c:2ce:0:a6ae:11ff:fe11:4abb])
 (user=maskray job=sendgmr) by 2002:a0c:b18a:: with SMTP id
 v10mr4180101qvd.46.1607015152255; Thu, 03 Dec 2020 09:05:52 -0800 (PST)
Date: Thu,  3 Dec 2020 09:05:29 -0800
Message-Id: <20201203170529.1029105-1-maskray@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.29.2.576.ga3fc446d84-goog
Subject: [PATCH] firmware_loader: Align .builtin_fw to 8
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Arnd Bergmann <arnd@arndb.de>, linux-arch@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, 
	Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Fangrui Song <maskray@google.com>, kernel test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="ePOWK2/6";       spf=pass
 (google.com: domain of 38brjxwckeu83r918rfx55x2v.t53t2r4x-sbz2a-2z4bex55x2vx85b69.t53@flex--maskray.bounces.google.com
 designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=38BrJXwcKEU83r918rFx55x2v.t53t2r4x-sBz2A-2z4BEx55x2vx85B69.t53@flex--maskray.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

arm64 references the start address of .builtin_fw (__start_builtin_fw)
with a pair of R_AARCH64_ADR_PREL_PG_HI21/R_AARCH64_LDST64_ABS_LO12_NC
relocations. The compiler is allowed to emit the
R_AARCH64_LDST64_ABS_LO12_NC relocation because struct builtin_fw in
include/linux/firmware.h is 8-byte aligned.

The R_AARCH64_LDST64_ABS_LO12_NC relocation requires the address to be a
multiple of 8, which may not be the case if .builtin_fw is empty.
Unconditionally align .builtin_fw to fix the linker error.

Fixes: 5658c76 ("firmware: allow firmware files to be built into kernel image")
Link: https://github.com/ClangBuiltLinux/linux/issues/1204
Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Fangrui Song <maskray@google.com>
---
 include/asm-generic/vmlinux.lds.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
index b2b3d81b1535..3cd4bd1193ab 100644
--- a/include/asm-generic/vmlinux.lds.h
+++ b/include/asm-generic/vmlinux.lds.h
@@ -459,6 +459,7 @@
 	}								\
 									\
 	/* Built-in firmware blobs */					\
+	ALIGN_FUNCTION();						\
 	.builtin_fw        : AT(ADDR(.builtin_fw) - LOAD_OFFSET) {	\
 		__start_builtin_fw = .;					\
 		KEEP(*(.builtin_fw))					\
-- 
2.29.2.576.ga3fc446d84-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201203170529.1029105-1-maskray%40google.com.
