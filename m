Return-Path: <clang-built-linux+bncBDQ2R56ST4HRBDPK46BQMGQEWPUP7RY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3f.google.com (mail-vk1-xa3f.google.com [IPv6:2607:f8b0:4864:20::a3f])
	by mail.lfdr.de (Postfix) with ESMTPS id E89F4362964
	for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 22:35:26 +0200 (CEST)
Received: by mail-vk1-xa3f.google.com with SMTP id x5-20020a1fae050000b02901d9ecb9b8d3sf2939146vke.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 13:35:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618605326; cv=pass;
        d=google.com; s=arc-20160816;
        b=fxie+qW8//bmGLUl9W2UDAaQ6oktc6KpG1a4kEcQzVyW8oRt1qk+f9YZTygtP5b89C
         sF/XKeKic/2E/3//auu4MyF22PfMgWnPbzmXv8ZI4T/tsnQfeamXMUVbLgFpThNTZZRS
         oZpYHAFdwnh9jQtpKH6/dOg/hMtPuyWyoZBugJmWQAr52qOmkyjNe5IFv7pb5JNwZ/xN
         B6aGTgzzMMczi+a/zaIYRE2TUWOz6lZ5Q+UP98qFfRkW89+g9DsBcFWdx9RKeI6fMfjD
         f9ObYBAeKHliDbfKQorxRPuMK+fDz/uP4PoGWPqw+UsLxpLanmMVVvJ7cVG8mvIq6QR7
         eeag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:from:subject:references
         :mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=4y2N7wEYwq3pByiJTNQYF1B2b9IBDDZbcMzwB8YfXv0=;
        b=wPvkEEGQwUckVuXRfQgBd3W6GgVqkgBibF3FF5oJIKImBdf/RRgQhZ7NS7rDT5KxH6
         zvgqS3CTyanLgP0yLj6Eyf7KlhqwbNk+juf+N10pFUBWMH825KHiFIPmjDnx6Govfn62
         Wx8n5fqtqSv1eJqkQYoUYUiv4SEvhD6sXpd5C1FoZlg6dWAEXBcDyEngkJUHA8h/s9sj
         NzxX16tXMbCKFsd2XQBEi1SK/RMKqfpaRZ7AQZ6zgSZYvyMoCUpDecAIEzjoR1Nf3yG6
         uJBo/7N2T1k3BmKNx6KXWgxGWsTCaOk8+ycbji0vOp3deWLuvIDbAWrvryPzQqYOz2nd
         7Upg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sV4uzzHj;
       spf=pass (google.com: domain of 3dfv5yackeegtskxmksqyyqvo.mywmvkxq-lesvd-vsxehqyyqvoqbyezc.myw@flex--jiancai.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3DfV5YAcKEegTSKXMKSQYYQVO.MYWMVKXQ-LeSVd-VSXehQYYQVOQbYeZc.MYW@flex--jiancai.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4y2N7wEYwq3pByiJTNQYF1B2b9IBDDZbcMzwB8YfXv0=;
        b=LAFhRfRMk3s4+sYONAbIHLhoxDDtKeI2Jw0XmPI7lfg2qSOUnXcGvvc5TXd/UFcC8z
         wtmc25iHH551FrJpxfuPEZx+tf15UM88RsK9aI3N788kqkiJhCWWpvyrGH7Lyzqb657V
         yNn6yVfPXdBKYQc6FQk4N0usRRidpUdsroPwCRXyrQtWZaxwBm/3LSrEofTnStuFWlIG
         xm6Gy/Vf6e0qZgG5HouWYA5nJE+EMBZE/46vNIx0Awrw9kEuSR4ssXlmB37i+nPYx5Tb
         okKwwMqDA/pH/VgVo/KH3bb+FyT4uttpGR+02Av4NwJkp7V/fhuJIBSZxQuC+ETbeRXw
         DUxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4y2N7wEYwq3pByiJTNQYF1B2b9IBDDZbcMzwB8YfXv0=;
        b=lvkdPqG19aTpdf6Jzf19JC5B11o2PQm8h9ZE4ZL6HNy81cwR5r/VDrmw/c4T6C2zpg
         /SsIJTZhgVDOBxCF09ls7QAH0TygKqP6AnmQ//98hA8JAxczjzbTgDiY2CTWiXfUMlc8
         nUqhqsyA9vZLhMIIpnQd3zjgh/N+7Kigr5FJ7rGVJIrqSy28Q89juWuNaoKbyiIrWKRg
         yhfJ8yRcGwwDHhoc1I1ovB7xLw0lnMOW2bx0KjEiBY8IAIaY1o3uVF8trd7ACLWWRuRC
         DVSaAqQeH9GpSoX5UVgymp6oiqFrZDpgqPSXGAKmAUtN+lzbNgtAwBiA8DkbohOx3XTv
         Xtcg==
X-Gm-Message-State: AOAM533dp5MwbqlLQPPA5yT8vXPNlf9Mk4rmak5Shb3QaTx7dNofBICB
	61iGF4Z5Lnpe4Zwy2FXJ478=
X-Google-Smtp-Source: ABdhPJyAalLc3xbXMtkQR4YLOnyyAYhn4q4NUoDhogTnutBKO4XBkznvqO5DTZdXK4y6iSc42AwwHg==
X-Received: by 2002:ab0:5593:: with SMTP id v19mr1124056uaa.50.1618605325888;
        Fri, 16 Apr 2021 13:35:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:555a:: with SMTP id u26ls1015945uaa.1.gmail; Fri, 16 Apr
 2021 13:35:25 -0700 (PDT)
X-Received: by 2002:a9f:24ed:: with SMTP id 100mr1098543uar.45.1618605325387;
        Fri, 16 Apr 2021 13:35:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618605325; cv=none;
        d=google.com; s=arc-20160816;
        b=VNFdMcjLo3CWv+aOWG5ziZyjHuCNWrZve9kTy7s3eav2RzVbV6qhQLcKNiNrTORfwm
         Ys/tzzfecbm45/8zHdf5VUGzIgDrnXFKHQvO55OZTcTm1xFAPoVL1IFDolCIgLcCq0lh
         eu4jKz3a4+s2IGI76vHg+m4Vkl5ezec3T92w4PSSb/S77Xe4fEj4WLxW5Ojk+jD+Jq1h
         nQ9uaykzhF7jj/die+7l4QwVZR6xSmhNhRd4nhHLEh8BUxjYkE+GiylGSbpmue7acYS/
         BcnBparzBkitEiTQUKBQGwjtTbkVBbFjDUVql53ozsWXPBh2r2PVYmbZh+gcwCfbsutK
         JgPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:from:subject:references:mime-version:message-id:in-reply-to:date
         :dkim-signature;
        bh=Q8aau1UBqJXGOugSq4JjsK2GmL5sgcCnZiQBPgmr8g8=;
        b=K6MAQsmWgsM7v0YSS0/EcmEUOQdQuwbAYr2ABnO+m4n7zKpmnuYl6KIOuUY4Ah7LDw
         qaK14m3weBm/0YkOYLiRTpcW8JWL1rtsK5X4BhOZOOXeLir634YpZjuA0q4R1diWklgG
         CKLZZ5MieEnardMoS/4Yv7CPz1rt46Wj2tVW9tE20ZzpN5iMamHZgK20gZdZrpQkmpRG
         suyep9vRd3EhtVWXAe9ChM5d6uj+ktXSY695Ro4rNSA/voK8mc5g0SJ63jB96zWutknl
         mRLtC7wn3LoB6nFJom5e5Ik2cbT3RHExc6Rb3slj4ZMONNPQ/z+vg7W9+1Hl5OwWrkZ4
         Ytbg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sV4uzzHj;
       spf=pass (google.com: domain of 3dfv5yackeegtskxmksqyyqvo.mywmvkxq-lesvd-vsxehqyyqvoqbyezc.myw@flex--jiancai.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3DfV5YAcKEegTSKXMKSQYYQVO.MYWMVKXQ-LeSVd-VSXehQYYQVOQbYeZc.MYW@flex--jiancai.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x84a.google.com (mail-qt1-x84a.google.com. [2607:f8b0:4864:20::84a])
        by gmr-mx.google.com with ESMTPS id i11si102099vsm.2.2021.04.16.13.35.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Apr 2021 13:35:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3dfv5yackeegtskxmksqyyqvo.mywmvkxq-lesvd-vsxehqyyqvoqbyezc.myw@flex--jiancai.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) client-ip=2607:f8b0:4864:20::84a;
Received: by mail-qt1-x84a.google.com with SMTP id e6-20020ac85dc60000b029019d9cbbc077so6753212qtx.11
        for <clang-built-linux@googlegroups.com>; Fri, 16 Apr 2021 13:35:25 -0700 (PDT)
X-Received: from jiancai.svl.corp.google.com ([2620:15c:2ce:0:a547:67f6:5e32:5814])
 (user=jiancai job=sendgmr) by 2002:a0c:c707:: with SMTP id
 w7mr10808461qvi.11.1618605325023; Fri, 16 Apr 2021 13:35:25 -0700 (PDT)
Date: Fri, 16 Apr 2021 13:35:21 -0700
In-Reply-To: <20210416181421.2374588-1-jiancai@google.com>
Message-Id: <20210416203522.2397801-1-jiancai@google.com>
Mime-Version: 1.0
References: <20210416181421.2374588-1-jiancai@google.com>
X-Mailer: git-send-email 2.31.1.368.gbe11c130af-goog
Subject: [PATCH v2] arm64: vdso: remove commas between macro name and arguments
From: "'Jian Cai' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Cc: stable@vger.kernel.org, gregkh@linuxfoundation.org, sashal@kernel.org, 
	ndesaulniers@google.com, natechancellor@gmail.com, manojgupta@google.com, 
	llozano@google.com, clang-built-linux@googlegroups.com, 
	Jian Cai <jiancai@google.com>, Ard Biesheuvel <ardb@kernel.org>, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jiancai@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=sV4uzzHj;       spf=pass
 (google.com: domain of 3dfv5yackeegtskxmksqyyqvo.mywmvkxq-lesvd-vsxehqyyqvoqbyezc.myw@flex--jiancai.bounces.google.com
 designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3DfV5YAcKEegTSKXMKSQYYQVO.MYWMVKXQ-LeSVd-VSXehQYYQVOQbYeZc.MYW@flex--jiancai.bounces.google.com;
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
https://github.com/ClangBuiltLinux/linux/issues/1349

Suggested-by: Ard Biesheuvel <ardb@kernel.org>
Signed-off-by: Jian Cai <jiancai@google.com>
---

Changes v1 -> v2:
  Keep the comma in the macro definition to be consistent with other
  definitions.

 arch/arm64/kernel/vdso/gettimeofday.S | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/kernel/vdso/gettimeofday.S b/arch/arm64/kernel/vdso/gettimeofday.S
index 856fee6d3512..b6faf8b5d1fe 100644
--- a/arch/arm64/kernel/vdso/gettimeofday.S
+++ b/arch/arm64/kernel/vdso/gettimeofday.S
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210416203522.2397801-1-jiancai%40google.com.
