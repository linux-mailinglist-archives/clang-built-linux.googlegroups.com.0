Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBK73ZXZQKGQENMLAIDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7590118B8D6
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 15:11:56 +0100 (CET)
Received: by mail-lf1-x138.google.com with SMTP id b25sf932909lfi.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 07:11:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584627116; cv=pass;
        d=google.com; s=arc-20160816;
        b=OjHcVUND8vlHV0SZ3K6oUbnGWRVBwM4A+IaHFoiA9XEc5tIRpEviJxC2L0IphwEuw0
         lC03NobbTlCdxYScQJKcw9bQt3h+SHo7arFjL3+AafR/IB2sehFeFyU0nmOfO8zzfUeW
         1JEHKxRpQmATEzUky2k9U7urgATyAL+Gsvrp9+oIQR3niqZTWrCAffgdKOlu/3Xh+IeV
         b4i8aMR5auMePtAE/Yy3lA0BQ62KSo0OTisw1wd6oA0sCZL9KLxfSU0ceUzWu/3VJ4m3
         kA0J7KOZsvcPGRQNBPRseFxTEZqeSeIT6CkiTmnPscgs27ihBIG4wG6ijMASvYZio7N7
         BNng==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=iBzB9qf34bjBjudA4J6xolwnK7/C139V/Q1z0NCRWUc=;
        b=Gz+HrFgmB1OKnqF3ARwMrgmQm87kSgkMNq0KNfks56Q170OoGqjRsqUSEPWEfzde02
         n1w4KZ9MME4Xk5tscTDy/VyzuRfbl9jBsQVrEezICRC4D9/DS4AskO4PaUBbyp82StFh
         r04pSQFa8lfWA/svYdx24rvVLjTvONNDRFP5GZqECXIiNaXv4n3IGSHp4gEQFb10PjMP
         ksW7wF0+7Fr6k0WVne7H9Jfh7/u0Qwkibmy0RJuBnMEhYi7QznA/ihiUTG8kBETSh/cl
         wEMraB3y4IMR2ftZ/RpvZnQJc3tQS/YJnaSds881SukNDTQhhHqh/gVIwgX7DgN/q15/
         J6rQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iBzB9qf34bjBjudA4J6xolwnK7/C139V/Q1z0NCRWUc=;
        b=VDgEI9y1it+po/+WFFxXtxrr30KhjfEgQpRqzKVIMAcHjGh7fHCsI5wZR4zSetvBrR
         U1oRiK2mcvbd7EQaNIfYgyyiYxWmlWIXV4MvBvRtdCjb6GawfnxzdwmxbamwxzRzV6+v
         uAgYeGo/sOOiDdDRPUFTK8rxd0FfGmImakyyfllI4UolqDn/MD/HTYmhxfm/WHY7hNpE
         Eav6Zs+68bCL5h5Q3z63bl81gYZDgLLxIBsA6toIcqndqetJ4COx7B9hVvE+lO7G8XJY
         rvG78j7APesMUoyT0+Cyfw7B4l00lLBGZIG0KMWhNjF5WfYmQ41js+EH3bDhesjJPztb
         6i/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=iBzB9qf34bjBjudA4J6xolwnK7/C139V/Q1z0NCRWUc=;
        b=uN40QiOJR8AOHWMdEsHPUGO0GK8e8rYbQF3o3ei3jpOzenDsiIYXTwNWyO+LZjfPAs
         RCrGclgY2N8620sfIj1XCw24QgBaWYDDXJUddMBDByH3rWmmKXObYtfT8iDrclE3laQi
         jsCf910UXEAyy4LIcUNhG4tYLSZgG0hRMZE17c2J7VHJnfQuHo8m7SZbJk/cPLo+tK+K
         7bKVzZ0oQzy/jpSb3gDedAv7pThUtQ+ujm0aw5Hx8NCDBKq9f++mjIFDlNM5VWCBMj9w
         3OnhxqnEsCy9m+zaz+iZi+ERud+b6Uq2hdczjMW5r9bnTauR/4sRQF7q6hrgQeCN6yp7
         efxA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1HZ7zsNdd6nu/d5MRjH/XXIymaJ8M4yUyT51OzZ0K/wwKqasrb
	tPHle4dF30WRrsk4FsJhrJU=
X-Google-Smtp-Source: ADFU+vtjfOTj5Npy1h8yp3mVCYgIuqLqJld9T3vPEqEAp+mBpI9+ZO6KX9VPvr5UHcgwMB/DOgiUug==
X-Received: by 2002:a2e:90c4:: with SMTP id o4mr2169267ljg.287.1584627115981;
        Thu, 19 Mar 2020 07:11:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:96d9:: with SMTP id d25ls565688ljj.11.gmail; Thu, 19 Mar
 2020 07:11:55 -0700 (PDT)
X-Received: by 2002:a2e:2e13:: with SMTP id u19mr2336621lju.3.1584627114300;
        Thu, 19 Mar 2020 07:11:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584627114; cv=none;
        d=google.com; s=arc-20160816;
        b=aNDjmQ++rrtdoSw4pt4FvTahpvb9h50NzHAQr6M8MiIZioK+VUJ5i0NAsxnaLi2Vkp
         fCVMt/fJHYfo+dRfy0kWL/d7qO/Jnk/1h3v2xB0HN9RNL4ig0Urd/wKqK1WBbKVQK8ie
         WYLTw0og3K6KrFxksJcZXXjfgV66A3YbLj9WOoYc1g+XtpXcIIuQQQc7Zv796eTlNm+l
         D+g1Ba5Ul71ZCoVdv6Z6EXfjZNYcAfN62c8XT0WUMDNXSR4YZVAZx4iH0YvEOOB0Auoa
         9HLtbpOHt/MnaNQQve5Q6fdwKtmlruoOqOYKDqWHV7Fh+E/RGIpE+vpFTKyrKTMY6UxG
         aPwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=7koaPVKkbdNUJIMXJImPrrEKqw/oiapmZ3/FhThiBnU=;
        b=uoX/MdE7kCI876NmfknLn5LZyNQrhPPeueM4jvdiPgVDSbA8kpiQpDXR1Nb5cHTQ69
         RUULKjzDljaTqm/aSXp4yZh9PK0OhKm7dcdVu+vmzcx1Qrm5dFZ1ZinX3JCDzeJ656cA
         VdHrIbUXV5yW8qM1UWjYkeBUV14cVk2AnwX2R+DtQ2/Ic4SOUo339UsQOPeGhVrpDNuu
         776rcC75gTSd5WU/L5dtJuH2E4KB+G1zf6staNvofAq8FX8ejNJlU4UXnAGxUT8yLvKt
         pYimcG45O/vWJIAsymbV55P8qags1386qRL9AbzJoUU4ET6ObpLpO88lWzHbOgc52fCg
         xY9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id d12si118791lfi.2.2020.03.19.07.11.54
        for <clang-built-linux@googlegroups.com>;
        Thu, 19 Mar 2020 07:11:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0647B30E;
	Thu, 19 Mar 2020 07:11:53 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 05C843F52E;
	Thu, 19 Mar 2020 07:11:51 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will.deacon@arm.com>,
	stable@vger.kernel.org
Subject: [PATCH] arm64: compat: Fix syscall number of compat_clock_getres
Date: Thu, 19 Mar 2020 14:11:38 +0000
Message-Id: <20200319141138.19343-1-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Original-Sender: vincenzo.frascino@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172
 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
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

The syscall number of compat_clock_getres was erroneously set to 247
instead of 264. This causes the vDSO fallback of clock_getres to land
on the wrong syscall.

Address the issue fixing the syscall number of compat_clock_getres.

Fixes: 53c489e1dfeb6 ("arm64: compat: Add missing syscall numbers")
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will.deacon@arm.com>
Cc: stable@vger.kernel.org
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 arch/arm64/include/asm/unistd.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/unistd.h b/arch/arm64/include/asm/unistd.h
index 1dd22da1c3a9..803039d504de 100644
--- a/arch/arm64/include/asm/unistd.h
+++ b/arch/arm64/include/asm/unistd.h
@@ -25,8 +25,8 @@
 #define __NR_compat_gettimeofday	78
 #define __NR_compat_sigreturn		119
 #define __NR_compat_rt_sigreturn	173
-#define __NR_compat_clock_getres	247
 #define __NR_compat_clock_gettime	263
+#define __NR_compat_clock_getres	264
 #define __NR_compat_clock_gettime64	403
 #define __NR_compat_clock_getres_time64	406
 
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200319141138.19343-1-vincenzo.frascino%40arm.com.
