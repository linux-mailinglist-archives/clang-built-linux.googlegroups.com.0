Return-Path: <clang-built-linux+bncBCJP7WOE5UIBBTOS22CAMGQEHHHMKQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73e.google.com (mail-qk1-x73e.google.com [IPv6:2607:f8b0:4864:20::73e])
	by mail.lfdr.de (Postfix) with ESMTPS id B5E2B376B51
	for <lists+clang-built-linux@lfdr.de>; Fri,  7 May 2021 22:55:42 +0200 (CEST)
Received: by mail-qk1-x73e.google.com with SMTP id e4-20020a37b5040000b02902df9a0070efsf7133319qkf.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 07 May 2021 13:55:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620420942; cv=pass;
        d=google.com; s=arc-20160816;
        b=fw13HJSlx8cqAY7lUtnkBQzF0xQeiJJMNIlehZOgP8PyBAHjnlADt+y4pxxjhaOoRV
         CKdnahY+/xYs32L0gxUOEdPMwM+dJOokyi3bEWYLS0a64UiezUHLPADP3gbp/Wizs7uV
         iyaS5QKSRK+l6/YOXGQPsX09nzcy4JyaGtMZRsVr84pBOGFGjqo312mwTmUOlDMkghDL
         2IHHU85ernP8HU8vuQVI0nbNnyV9yjaXHkBA/nfmpi59cl/bI3egeSiikgiIVfH83RnQ
         aAKLJnA9IeyLkbujBP492Ucfz4Yue1h366yDQ+s7z75MsoCt+G64wfb5wxbIdGhpUSZv
         AW5A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=bZmhLcAODq9gmdirtMiwdZB+YHnG7DHm+Xkyn+kUQbc=;
        b=ZThq0M0kRydrp0XXrT9mp4grFA1F6ksVM8IKQ5vTJx0Ma7/X6J+NIzx7VQjMQIOr9Z
         iEDdhv93KxawA8Ocad1kRY3UeraNoylzPLLm0I4kG6oKSg5Wol9RAlvzYiuvkbLkKUdh
         ZW4hK+fgp62U87WAEch7u+Wp95TJYqUHtAy56Y/N6gIGlaYly7fzB/MLN1pltw0grgCp
         +XPdXn1jO46OyHMqjg5dtOyMeNRYks+t8dMahEeBl1moBwXkRRBUxzaQBzlpya3vyZUX
         XPJndSWMFQ2fISUZ8LdsiFOestHTsjpFTh+iE+CRD9/n+EwvbvUGwbeLOpJoHKybNrLl
         JA3Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=iD4tT85K;
       spf=pass (google.com: domain of dianders@chromium.org designates 2607:f8b0:4864:20::102e as permitted sender) smtp.mailfrom=dianders@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bZmhLcAODq9gmdirtMiwdZB+YHnG7DHm+Xkyn+kUQbc=;
        b=LmiQ9pZM2nTfSuMv5vVSS4Cc4SjPLhC3BApNVw+HZU07GrgZBPwrr4BrhfMA5IOYiD
         H7zlnO3XWBWeeTX0xMSsjlCKFV1LKGbuB3H1UInREHSP1Lsak2eqHG3a952nBSIuTk6e
         vXgY7XdzwXgDSp+XiZ3hpo0kNcrQgVl+/7Ymui3vIz6JohVf5DQc2pUe19keqJEIaKLX
         rtYdAJgEiRfxi+ASWsWChtyqGOcgXNE6oI0rlE0i9c2smXusRxMeOzRI1b9juSUu4o+Z
         I5vz/06bFtSfEUZ1KKkBDsZH3x9f68v8SeyO/BdZs/oEhAt49kokQvV/kR9jPVD6W7+z
         hpFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bZmhLcAODq9gmdirtMiwdZB+YHnG7DHm+Xkyn+kUQbc=;
        b=fTD6Sqg6BE0Uylp2xjSi6bvPTsWtCmHAcvvct6MQ+AY83HaH/Qrn7iADZ9/gPhz0ai
         fC85snZipttqTPnW2iHhyD0d9pgbxIyy0ssrgtxlABAWkjGShbnDu0b6rBlZkUxexTcy
         MMTtD2qx1Ag+NvRbJJZxcWKOeiklWxBEyBCH0i8xIwiGP2+/CyYeA8ue0NIZtSxaRTLq
         5Q9RBgP9jsnI+9Hugau2T3bE5kWL/kmg/Syf895W4PDD2LX5xgQkVzLvchQZFiM+wixJ
         Yv8qKqH4SwiN0eNeBYdG1um0UlPd2YxbofBovdhCBdcP35EKpJPluaw14dz3Wj98OcZP
         uSDw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532GNMx/pOEezXQtNxicQl9TiaLoAKcAyTt2EB0GmOOiJItJw61g
	XAjaIaTbfwGNoLW3YRTPPDg=
X-Google-Smtp-Source: ABdhPJw7TZgzfFNv76voT1C3kri+90dBfVqGJdWZoyEynw6M/TwViYzT+E71rURvLxfGO2g135vU4A==
X-Received: by 2002:ad4:4908:: with SMTP id bh8mr11876061qvb.55.1620420941801;
        Fri, 07 May 2021 13:55:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:3d51:: with SMTP id u17ls3425875qtf.10.gmail; Fri, 07
 May 2021 13:55:41 -0700 (PDT)
X-Received: by 2002:a05:622a:104f:: with SMTP id f15mr11077381qte.31.1620420941368;
        Fri, 07 May 2021 13:55:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620420941; cv=none;
        d=google.com; s=arc-20160816;
        b=TsQc8YxIIXMI2Uv1rTw+/QIL0z3OcaEZwQFB6GVTIYWAFZf6SQDZFX7ja7z133CC1m
         Y5ZcGhW8qqXLB53k8t6vqKOgiPbX22t7NBs9yPBwrseCe0sLdA0ODjoNrAz1Z1kjfJrv
         6iJG1VWuVUN2l/GTI+nKO1XJW0UJ5UBSoF9dWW/NfJqYQtCQvcivA/UC46Zpf1VJ1GLX
         Nl3SSeY7+g2ON+AkvGxdywfXRGjWxVs6epG2MWK+q5nZXenDRmZgo/GGdszrOjCBOvTW
         Yfk+AzdVfNyBgNiRvzxIYg5ypmAHCbza9kUwerdGwZD6ukSoU22FHyJ6Ei4JPq8DDrMB
         7whA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=fDVsOdAVuMhU9NSPpB3f6fpg/PnSrq0B5y1jEjDIJ0Q=;
        b=kr5hy5Jd5Epf45BZEpT7/0YuZ0gzXLhYtlw0gwI0wz+9LD5FxPSJlm1yJ81kX/aInI
         PO8WWCKweThgWovIiV676yvmsFY0DiW8KPOaR/5tmELeg90guZqVmjKQ34hLzS70zHPp
         vrpIWDirCvZBEu5onMZk2MfPm/beDaFh5M84FF0JVTmvGhTfGLwUjtxKyxjC0KqYjTmu
         XbAVr/4ltwVl1gpfUlHRNeIOSHvGvrerh1nk02jM/B4H4jFq5A28/1bD3jmUCYaIM+GK
         WZYN3m2wwLvG2HEQAZaV2olbIHeg+pTBCAM7d/7tM/Lvsa/SpGEncX6NrVDCKH3kj0c5
         c5iQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=iD4tT85K;
       spf=pass (google.com: domain of dianders@chromium.org designates 2607:f8b0:4864:20::102e as permitted sender) smtp.mailfrom=dianders@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com. [2607:f8b0:4864:20::102e])
        by gmr-mx.google.com with ESMTPS id h62si577383qkc.3.2021.05.07.13.55.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 May 2021 13:55:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of dianders@chromium.org designates 2607:f8b0:4864:20::102e as permitted sender) client-ip=2607:f8b0:4864:20::102e;
Received: by mail-pj1-x102e.google.com with SMTP id t2-20020a17090ae502b029015b0fbfbc50so6161026pjy.3
        for <clang-built-linux@googlegroups.com>; Fri, 07 May 2021 13:55:41 -0700 (PDT)
X-Received: by 2002:a17:90b:19c4:: with SMTP id nm4mr2729502pjb.102.1620420940597;
        Fri, 07 May 2021 13:55:40 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:201:3c7e:d35:3a19:632f])
        by smtp.gmail.com with ESMTPSA id ge4sm13161565pjb.49.2021.05.07.13.55.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 May 2021 13:55:40 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Seth LaForge <sethml@google.com>,
	Ricky Liang <jcliang@chromium.org>,
	Douglas Anderson <dianders@chromium.org>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Arnaldo Carvalho de Melo <acme@kernel.org>,
	Ingo Molnar <mingo@redhat.com>,
	Jiri Olsa <jolsa@redhat.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Namhyung Kim <namhyung@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	clang-built-linux@googlegroups.com,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-perf-users@vger.kernel.org
Subject: [PATCH 3/3] arm64: perf: Add a config option saying 32-bit thumb code uses R11 for FP
Date: Fri,  7 May 2021 13:55:13 -0700
Message-Id: <20210507135509.3.Ib4ca8cf998782d53b9613b12a6aca65605b91c72@changeid>
X-Mailer: git-send-email 2.31.1.607.g51e8a6a459-goog
In-Reply-To: <20210507205513.640780-1-dianders@chromium.org>
References: <20210507205513.640780-1-dianders@chromium.org>
MIME-Version: 1.0
X-Original-Sender: dianders@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=iD4tT85K;       spf=pass
 (google.com: domain of dianders@chromium.org designates 2607:f8b0:4864:20::102e
 as permitted sender) smtp.mailfrom=dianders@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

The frame pointer story for 32-bit ARM/Thumb code is a bit of a
nightmare. See the patch ("arm64: perf: perf_callchain_user() compat
support clang/non-APCS-gcc-arm") (including the inline comments) for
some details.

Apparently, all hope is not lost for some resolution to this story.
Recently it's been agreed upon that the frame pointer should be R11
across both ARM and Thumb. This should, at least, allow us to crawl
through mixed code.

Unfortunately I can't think of any automagic way to figure out if code
is using R7 or R11 for the frame pointer. We'll force the person
compiling the kernel to choose one or the other.

NOTE: apparently as-of right now (2021Q1) there are no compilers out
there that actually support this. Thus this patch is untested.
However, it's so simple that it feels right to land it now while
everyone is thinking about it. I have, at least, confirmed that
tracing Thumb code produced with the old compiler _breaks_ when I set
this option. ;-)

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 arch/arm64/Kconfig                 | 12 ++++++++++++
 arch/arm64/kernel/perf_callchain.c | 12 ++++++++----
 2 files changed, 20 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 9f1d8566bbf9..f123736ac535 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1062,6 +1062,18 @@ config ARCH_SPARSEMEM_ENABLE
 	select SPARSEMEM_VMEMMAP_ENABLE
 	select SPARSEMEM_VMEMMAP
 
+config PERF_COMPAT_THUMB_FP_R11
+	bool "Assume userspace 32-bit Thumb code uses R11 for Frame pointer"
+	help
+	  Historically R11 was the frame pointer (FP) for 32-bit ARM code
+	  and R7 was the frame pointer for 32-bit Thumb code. This resulted in
+	  the inability to use the FP for stack crawling with mixed code.
+	  The 2019Q4 Issue of AAPCS revised the frame pointer to be R11 for
+	  BOTH ARM and Thumb. If your userspace was built with this new
+	  standard then say "yes" here.
+	depends on PERF_EVENTS
+	depends on COMPAT
+
 config HW_PERF_EVENTS
 	def_bool y
 	depends on ARM_PMU
diff --git a/arch/arm64/kernel/perf_callchain.c b/arch/arm64/kernel/perf_callchain.c
index b3cd9f371469..c8187acdbf3f 100644
--- a/arch/arm64/kernel/perf_callchain.c
+++ b/arch/arm64/kernel/perf_callchain.c
@@ -311,12 +311,16 @@ static void compat_perf_callchain_user(struct perf_callchain_entry_ctx *entry,
 
 	/*
 	 * Assuming userspace is compiled with frame pointers then it's in
-	 * R11 for ARM code and R7 for thumb code. If it's thumb mode we'll
-	 * also set the low bit of the PC to match how the PC indicates thumb
-	 * mode when crawling down the stack.
+	 * R11 for ARM code and R7 for thumb code (unless you've got a really
+	 * new compiler). If it's thumb mode we'll also set the low bit of
+	 * the PC to match how the PC indicates thumb mode when crawling
+	 * down the stack.
 	 */
 	if (compat_thumb_mode(regs)) {
-		fp = regs->regs[7];
+		if (IS_ENABLED(CONFIG_PERF_COMPAT_THUMB_FP_R11))
+			fp = regs->regs[11];
+		else
+			fp = regs->regs[7];
 		pc |= BIT(0);
 	} else {
 		fp = regs->compat_fp;
-- 
2.31.1.607.g51e8a6a459-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210507135509.3.Ib4ca8cf998782d53b9613b12a6aca65605b91c72%40changeid.
