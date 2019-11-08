Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBPVISXXAKGQE3U6CAJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 5281FF4628
	for <lists+clang-built-linux@lfdr.de>; Fri,  8 Nov 2019 12:40:49 +0100 (CET)
Received: by mail-qv1-xf3d.google.com with SMTP id z12sf895436qvi.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 08 Nov 2019 03:40:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573213247; cv=pass;
        d=google.com; s=arc-20160816;
        b=Pw3B7F8Tz1Z+g7o7rHvdPQgh1PhRUivWVGl0i3LJhnG1pNPLBdSZ5pPRjGuBjvt/bw
         UG2Io7k2n5NLG6PUbU75aHB6FtCc/V0+Msxg8Y80+Dmh4CVCEjOUVQD2K4R+FXGa1MZl
         KYPITowijCgat48hZMSYh2Ml4trGph0woBDnbGE9DC0Yq/+Dtd/dqr5TrIwggT/+Fh75
         eqnD4f5CcavaaSm/u4ac7ierwUrTbELoouuBLEQVNXDe43g/EBzKMwF9nwWRrQzT7Bl3
         /rqalnYLdTnLov1QCscd2LuNHr8VotTWdnd0RzzKrY+uDyNCXsKIL1vi8nmXhh7N0+rQ
         TPHw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=2Grcg/wPqmd3ZscUxbFMuLqcBLQl5h6eHGeQ4eVGtVA=;
        b=C30PvitGQ+itamQo6xoAvmppwYD0CxKEhqHlWR3UhZk1r9Mw73zLwf7iR6DXkquCGv
         n7VwylIeCLy3tAN9d/5dsXckCIcyCE9XH6IXworDnVj6FHlOKBMDWja9UGxLKEpejorP
         kJLAhUNrWvwdn4LON00XEtk1vo1ZIAjCgN915Y0dhltJZJKydSEDWGPRrK86yOJX2SlT
         QEMKbylLozbcMj7GWHjMRa3GzBidHaB5vabX8OWFAcg6YqgmEsXIbEgf5/nMbHwgxTjY
         0h90AM5W7UzmgC93Aei/g7Y9XmNlRpcoT8sNpPXLZZ25A5j52QnaDY77KAwEpiDd4dhD
         86mw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=QoLYf2fq;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2Grcg/wPqmd3ZscUxbFMuLqcBLQl5h6eHGeQ4eVGtVA=;
        b=ngAvmHB7LlMuLwUkSnEw++W5bxhs+NHTcvlQKNqvsGZ8dq9cyCcYjEG/fkHfbRnQbY
         +9fflfipUPt4omnRYmxp3vN4DaYKGmp9TwInQFSVgKQwavCDmJglS14LF0te8o7Fwor3
         EQjNMX/xoDnumhiJ3ejDQ7kii0wMK3g6yzY3GCcCjB6Zc3FQUrxlSloMXt+1Kmnefsmg
         mb5O6d04SWt+oDp6gCMJuxLzcEPmxEntXkLG3T0FEkGgxUyO0FtLPxwodf222YROOWk0
         EHNo6oer4Ad6WoEC6/xQ8qmpP5YEiib24HuhHZgupDMmmVUJV8d1UFGYKjsb4mUH1R7P
         5Yrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2Grcg/wPqmd3ZscUxbFMuLqcBLQl5h6eHGeQ4eVGtVA=;
        b=P5kgWvbilu0Hvjolpbq7viuY2LtlIR5AtSk2xuhqUWDKVieFjw1C8bhhasSALRWZJi
         5QgqT9E1o2IymFIGzfSLM7VUu6Hoi73Wk17pFTbZrOg5evsNBhhlYjhOXB8jIXJ5s0pd
         wQFP10K5B+oRMGTNJkuJJQD+Zgo3TqAcyYrRGKoYbHg0HIpxB0mSAZfh5RMaVO1q/VMc
         NoPLD8ne4tTitnDYIL+6ZEXGDxJKqut+ZoKdJjhqVfx+1HhQchDRFKCwrlsOfJs6X7ka
         XTxTG2s8OzmRnIaVal3xEfteM8l37lYbkgGYgLYiXkO08NgIc+6TIoZYPo3dQj3Ikl03
         DjRg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUoJ2QZzRyPHHHlIizJgPixqUBnK/94jKjGOCm7VeJMmTAIPKzq
	WDvnLEcj4fLLLDoyJDVyl8g=
X-Google-Smtp-Source: APXvYqyT67cMxnDxqnmHTEEYP1CdYKR+sRp/PG6qA2QDCG/ym8pN01dP+Foe40k8S1tMh/HLDzvB+A==
X-Received: by 2002:ac8:7943:: with SMTP id r3mr421091qtt.49.1573213246811;
        Fri, 08 Nov 2019 03:40:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:68a:: with SMTP id f10ls2783160qth.5.gmail; Fri, 08 Nov
 2019 03:40:46 -0800 (PST)
X-Received: by 2002:ac8:293a:: with SMTP id y55mr10021467qty.118.1573213246512;
        Fri, 08 Nov 2019 03:40:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573213246; cv=none;
        d=google.com; s=arc-20160816;
        b=YfOYOtV+P7dN3emIjUnrp2GHV6PweKMA8nUBVgmRM5CCfFDOO/By7TlcFngqBrxN17
         EjOvUC5leWjFDUgIhq5pNAS+1fhUbR0CBEyX+plZdzuS9OqB40N9Qw8RVwxJ7Y3oWZjo
         xILiWzWchHRmuKoksbXo25XW1AW9qZd2IB/noBDei/BvYWoh/BNJ5h+9RZwGTpP3ZnSx
         668ZXRu12qsOnSibN/tUG8x6VO+a9t+l4/5PXlNWAyCR71dVgdE9fYmEexg5hBlsyeNq
         vDHW5bOeX/aK4H0m1oZWjB0G+AoDY5vE/qSm8Uwa6ZOtbOryxVRvAZl0L3c0WEpGOEov
         gIVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=bZ5tRTHHa1AabiYbm8OHeuHvJgkCE9l9/uH3wqct7Tw=;
        b=VgI9eMRArY9cSFz5c5SouXAarUbQIY3koQisInH1jRzP6HMVPoqyLLvi11Q5qr8Jld
         CBd0YKOoOx2lqLqPDLnJDTGbSNfVGdx1EN5M95J9mNIO1tC58aLOWbuFhur70uJPLSRN
         09NwTUo6+L70lxjJjQY4KX3YEDMGSWsFLH5/hRkD2AnpvvGJRZ3wmyyYYYC7CDobtP9e
         SON9hO4lg1HaODZGy8tOOuPUlrABWJBT5vQ8ObSxjFHU5/9ZU7AV/gIy6or1n3Q5Oat6
         dm/W7aMTX1dQ9PRBzd34xUI/cZY/c0omCg3ko1ZfddD9db720LzT6zH5plHqNyazfzhj
         srDA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=QoLYf2fq;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z90si290770qtc.3.2019.11.08.03.40.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Nov 2019 03:40:46 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 75469222C4;
	Fri,  8 Nov 2019 11:40:44 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Peter Zijlstra <peterz@infradead.org>,
	Philipp Klocke <philipp97kl@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 114/205] sched/debug: Explicitly cast sched_feat() to bool
Date: Fri,  8 Nov 2019 06:36:21 -0500
Message-Id: <20191108113752.12502-114-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191108113752.12502-1-sashal@kernel.org>
References: <20191108113752.12502-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=QoLYf2fq;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: Peter Zijlstra <peterz@infradead.org>

[ Upstream commit 7e6f4c5d600c1c8e2a1d900e65cab319d9b6782e ]

LLVM has a warning that tags expressions like:

	if (foo && non-bool-const)

This pattern triggers for CONFIG_SCHED_DEBUG=n where sched_feat() ends
up being whatever bit we select. Avoid the warning with an explicit
cast to bool.

Reported-by: Philipp Klocke <philipp97kl@gmail.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Peter Zijlstra (Intel) <peterz@infradead.org>
Cc: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: linux-kernel@vger.kernel.org
Signed-off-by: Ingo Molnar <mingo@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 kernel/sched/sched.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/kernel/sched/sched.h b/kernel/sched/sched.h
index 9a7c3d08b39f8..c32322c73e22a 100644
--- a/kernel/sched/sched.h
+++ b/kernel/sched/sched.h
@@ -1393,7 +1393,7 @@ static const_debug __maybe_unused unsigned int sysctl_sched_features =
 	0;
 #undef SCHED_FEAT
 
-#define sched_feat(x) (sysctl_sched_features & (1UL << __SCHED_FEAT_##x))
+#define sched_feat(x) !!(sysctl_sched_features & (1UL << __SCHED_FEAT_##x))
 
 #endif /* SCHED_DEBUG && CONFIG_JUMP_LABEL */
 
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191108113752.12502-114-sashal%40kernel.org.
