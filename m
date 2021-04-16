Return-Path: <clang-built-linux+bncBDQ2R56ST4HRBAFI46BQMGQEVEXS3DQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x239.google.com (mail-oi1-x239.google.com [IPv6:2607:f8b0:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 9395436278A
	for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 20:14:25 +0200 (CEST)
Received: by mail-oi1-x239.google.com with SMTP id s9-20020acadb090000b0290101bacefaa4sf9742968oig.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 11:14:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618596864; cv=pass;
        d=google.com; s=arc-20160816;
        b=J648iZQyjz8GhBEgRrPaONNIW76SHQtdpwYbFldAfjFXc8k7BH1uBV/alwi1M6f2WN
         LxxPlU1dIPbkg4dm4lcscnBxexWEcApUx2nJ7FnQBMTeVrNA6VMmk31JlPENqcwg5Wl5
         M7WPMpyltdFk3vNTcXoPl5L6Y7XESJkxTxj5nGQzZ3zfrCUWC0e1GC3kqYLPx1MqWmQy
         lLdd8l7/QEDN++/JLK7bGA62K2nOttV9MIP0rPrePv7e0KW2/dIk2gYYaKsvCbXOMnI9
         BG9wG9NsmEFU8qwGGGPBGafTS4NBZ7CAEvBVJ0eubGsfMpvp4x5/xJH4xcaqRltoNODk
         xYiQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=ZKKrgX0Fyo9ydRW4v2ZwoE7UeFl74CiEZ61BKlkx1ek=;
        b=rJba+s3+33MlgD3Vt4VNAB4wMlEPavh1wxoJ5LSadbFZp7UJWlGWPI38VWYUoXNM4a
         8Wbi351UW84ZJVlPeAXvrcs3sMbGs79f1M/9S76YeOrhj44ownKhQGoYhOds91yZnJtu
         rcOgmDNznOeuVVrAVo2ipU9c7x7PYVuKEzaMZgVEXK/fJev+S8jqyS1Py76ySguKPRDB
         R3pZxSdPgJc0JMKev4UrHP1xlfwmz+2F1QORRr89d3sJHG9T9Al4XIbkaiw7CKd7Ij5f
         NdrzS+qN9r16qAM44NPPEBEJVvRPWf+ZdtRV9Knrsk02v5gOiBc+BQiGvfu+eKN02dH/
         n7jg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=O2eSLkh0;
       spf=pass (google.com: domain of 3_9n5yackezgba2f42a8gg8d6.4ge4d2f8-3madl-dafmp8gg8d68jgmhk.4ge@flex--jiancai.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3_9N5YAcKEZgBA2F42A8GG8D6.4GE4D2F8-3MADL-DAFMP8GG8D68JGMHK.4GE@flex--jiancai.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=ZKKrgX0Fyo9ydRW4v2ZwoE7UeFl74CiEZ61BKlkx1ek=;
        b=tWqXwAgiuPV34i0JG8WBWCYYleWrYMAiYdU9Dl7z3geQ3fFMDetrkp/Mwk4U6moBs/
         yBnJb4JbkHUtAaHwlyJ+PqzRv4FXwriRG0SVVCrK8cc4ENGRYPdSZFUhXNq/vlwOYpEw
         Dsu1/X0gpDXqajdSxlfIrmUlK5YUcZDHNoX7B+S73tOPTL1jtnMvSdsQ6FCDiU40RZUf
         ishOeBTSJo8iovjacj2H0Aw23vacNYeFy4Ir9dYaoiul+nDzf//WjtggWGHjXK8IMA4j
         tGv+2oJOCJl2fSE+HlPKcOn1Yf3g5wGzbEQDnbNQc3OrHORqxONEIdwXnQUaHld+rTam
         /1/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZKKrgX0Fyo9ydRW4v2ZwoE7UeFl74CiEZ61BKlkx1ek=;
        b=Zo53awtT2p0UKUz0GcUeUpyPkrVbv8brs1QXC7yA5oMNPIf67fP1gjjZwqH7UAXMA2
         7ExzN+ekS721Qata61MNnkuEreofXGRcM/E02AqD0ksgrbvpvhA47153t1qIyGlnkNpU
         /uo78cTZQJAa3//sLxSVKYoGx9riqqW30aVf03cofcTQOmiIZAT2IsvfosfS2pUZ/iup
         nvkETQzEaPd7iYjNf1DuL1o/1GrPIBNNKaTUaPahOyEAj8sajYxFZ4ECTKFa/0w3wqKa
         uDtGzigrsXbcQYkL8pDjlzGY3sxeJ1Fu2RiXYT6nEUJRv+wSHW+9V3eGHv1mgOx6mqpb
         XhBw==
X-Gm-Message-State: AOAM531BXiyrb8kfUjXdP6XZPwllFcHg5jwSiGFZCI08HduWf75fhJFb
	A80Bkr1/kvB2sRpaY4ffT6k=
X-Google-Smtp-Source: ABdhPJzi7TA0s42bjxMh48jIjRTfa6wjbPBz9Q2uKTqIrdt3gFT5cMGD1G4SdnuDPCLhTlBkSLEasQ==
X-Received: by 2002:a05:6808:9a1:: with SMTP id e1mr7348118oig.31.1618596864570;
        Fri, 16 Apr 2021 11:14:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:664f:: with SMTP id q15ls2583869otm.3.gmail; Fri, 16 Apr
 2021 11:14:24 -0700 (PDT)
X-Received: by 2002:a05:6830:14cd:: with SMTP id t13mr4767578otq.74.1618596864098;
        Fri, 16 Apr 2021 11:14:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618596864; cv=none;
        d=google.com; s=arc-20160816;
        b=qJz3csLwMWx65H5bshOmA1e7VexRB/6dQasOAohzQYz0gziarT7S0fYq3BLwVW/rQr
         wNntctkcJ+JTNTsHv9l2SCiaw9UsUjCHzZhvbiNHdaGUOWck5ZMpz1M9WOZa2xGTnfGX
         UEykBEboX61p0/kxsmsTE7kYsiM2d02CT/NTosd7iR6jzspkT5qFhqYIBJJBHksiornJ
         7GyOj2JsQjQPkCdWBlozKqa4VVwxUQ2QjvwHpIJCrhUHuL0PtjNv5rjkZVQ6pPV0FTUB
         fwNWE+8HVZFvrLdvQAk5tELGmvmGFC1j/ve4B328p6FIgcDB0oiVgz8FhacsT0VBjctl
         6ZJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:from:subject:mime-version:message-id:date:dkim-signature;
        bh=J0KDa3jTK0DIbbwUod70tP0pr/xuL0WrxnWOY2JT/FY=;
        b=Vd5wpCXzho0v3gVDGOBDUX00GjNzU8icEo5zKNSdDtfkbhdwSlv8no1pn146jVkJKU
         BIUq20LQ5U31u4VyvCf4nAREP37IMPE3ep4dO+ltSU0uDQjc/c+sEey4mdxEKVPiqZpU
         j+Evsv1vxR0JPcwgUY1jIaNruiNlzwvIVYTK7z4Aq6zT6cbuj6tUmSj7YdNLd/QB+OXe
         1lDG0BQ0aZer7BqJgFgPXnnVfkY96BQBhvf6ujTNtLYK3ilNhg8C1b91s69wDWUwdMy7
         XHNfDELZFe3DLtCaFR/45ty9zLG1TDYtsV1Pg+qt20NCZ1ylZQKOSY6sNs5WDMRhe/ML
         U4wA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=O2eSLkh0;
       spf=pass (google.com: domain of 3_9n5yackezgba2f42a8gg8d6.4ge4d2f8-3madl-dafmp8gg8d68jgmhk.4ge@flex--jiancai.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3_9N5YAcKEZgBA2F42A8GG8D6.4GE4D2F8-3MADL-DAFMP8GG8D68JGMHK.4GE@flex--jiancai.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id m62si539243oig.5.2021.04.16.11.14.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Apr 2021 11:14:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3_9n5yackezgba2f42a8gg8d6.4ge4d2f8-3madl-dafmp8gg8d68jgmhk.4ge@flex--jiancai.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id p75so7081273ybc.8
        for <clang-built-linux@googlegroups.com>; Fri, 16 Apr 2021 11:14:24 -0700 (PDT)
X-Received: from jiancai.svl.corp.google.com ([2620:15c:2ce:0:a547:67f6:5e32:5814])
 (user=jiancai job=sendgmr) by 2002:a25:a1c5:: with SMTP id
 a63mr589391ybi.72.1618596863636; Fri, 16 Apr 2021 11:14:23 -0700 (PDT)
Date: Fri, 16 Apr 2021 11:14:21 -0700
Message-Id: <20210416181421.2374588-1-jiancai@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.31.1.368.gbe11c130af-goog
Subject: [PATCH] arm64: vdso: remove commas between macro name and arguments
From: "'Jian Cai' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Cc: stable@vger.kernel.org, gregkh@linuxfoundation.org, sashal@kernel.org, 
	ndesaulniers@google.com, natechancellor@gmail.com, manojgupta@google.com, 
	llozano@google.com, clang-built-linux@googlegroups.com, 
	Jian Cai <jiancai@google.com>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will.deacon@arm.com>, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jiancai@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=O2eSLkh0;       spf=pass
 (google.com: domain of 3_9n5yackezgba2f42a8gg8d6.4ge4d2f8-3madl-dafmp8gg8d68jgmhk.4ge@flex--jiancai.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3_9N5YAcKEZgBA2F42A8GG8D6.4GE4D2F8-3MADL-DAFMP8GG8D68JGMHK.4GE@flex--jiancai.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Jian Cai <jiancai@google.com>
Reply-To: Jian Cai <jiancai@google.com>
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

LLVM's integrated assembler does not support using commas separating
the name and arguments in .macro. However, only spaces are used in the
manual page. This replaces commas between macro names and the subsequent
arguments with space in calls to clock_gettime_return to make it
compatible with IAS.

Link:
https://sourceware.org/binutils/docs/as/Macro.html#Macro
Signed-off-by: Jian Cai <jiancai@google.com>
---
 arch/arm64/kernel/vdso/gettimeofday.S | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/kernel/vdso/gettimeofday.S b/arch/arm64/kernel/vdso/gettimeofday.S
index 856fee6d3512..7ee685d9adfc 100644
--- a/arch/arm64/kernel/vdso/gettimeofday.S
+++ b/arch/arm64/kernel/vdso/gettimeofday.S
@@ -122,7 +122,7 @@ x_tmp		.req	x8
 9998:
 	.endm
 
-	.macro clock_gettime_return, shift=0
+	.macro clock_gettime_return shift=0
 	.if \shift == 1
 	lsr	x11, x11, x12
 	.endif
@@ -227,7 +227,7 @@ realtime:
 	seqcnt_check fail=realtime
 	get_ts_realtime res_sec=x10, res_nsec=x11, \
 		clock_nsec=x15, xtime_sec=x13, xtime_nsec=x14, nsec_to_sec=x9
-	clock_gettime_return, shift=1
+	clock_gettime_return shift=1
 
 	ALIGN
 monotonic:
@@ -250,7 +250,7 @@ monotonic:
 		clock_nsec=x15, xtime_sec=x13, xtime_nsec=x14, nsec_to_sec=x9
 
 	add_ts sec=x10, nsec=x11, ts_sec=x3, ts_nsec=x4, nsec_to_sec=x9
-	clock_gettime_return, shift=1
+	clock_gettime_return shift=1
 
 	ALIGN
 monotonic_raw:
@@ -271,7 +271,7 @@ monotonic_raw:
 		clock_nsec=x15, nsec_to_sec=x9
 
 	add_ts sec=x10, nsec=x11, ts_sec=x13, ts_nsec=x14, nsec_to_sec=x9
-	clock_gettime_return, shift=1
+	clock_gettime_return shift=1
 
 	ALIGN
 realtime_coarse:
-- 
2.31.1.368.gbe11c130af-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210416181421.2374588-1-jiancai%40google.com.
