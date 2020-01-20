Return-Path: <clang-built-linux+bncBAABBEUTTLYQKGQEI6MYE6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-f62.google.com (mail-qv1-f62.google.com [209.85.219.62])
	by mail.lfdr.de (Postfix) with ESMTPS id 9006B14367E
	for <lists+clang-built-linux@lfdr.de>; Tue, 21 Jan 2020 06:18:11 +0100 (CET)
Received: by mail-qv1-f62.google.com with SMTP id dw11sf888295qvb.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jan 2020 21:18:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579583890; cv=pass;
        d=google.com; s=arc-20160816;
        b=A4QlnT+EYDLFNhTjlYNky570KF0AimIWYTPGpiEIZjeMZT3wmrk9F+1Ysn0cQIJpxq
         sOMBlyfAawfkfOkOJUVTjLmWOCNrg9e7f4C08Z9gTS1VAiXtIXVvK7mDxHya8M+kpzUE
         Q3KOt8vHoYwH0z0gfchvqYRY0FJfIdentYzjtb+RZMKatY2afDTybH4ZSvtj3kC1kh0O
         1YqwNDuRxCvb7vX342m9qL3IhhV1lVoGJ2wAGNUPyLFFXhy9KXx75XbNQFRtOOWZQgrd
         JMnD6UXnxzQzO0YNBWdlTo37rtvRgdVdHwDiBu4gK+eekKMBZrwMpVDUrs09Dbr8nnHo
         PzLw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:robot-unsubscribe:robot-id
         :message-id:mime-version:references:in-reply-to:cc:subject:to
         :reply-to:sender:from:date;
        bh=HmSLRvGGtDbI0HJU9I+yjQYN+vrqSh+aMSS+DYB7ukg=;
        b=K2vyg5OhDjCKs6eDjhupDHV4Ae1lr2zFJJ4pLMze8kBlWMoLBGFNVCSU+sXcB1EDLn
         xqq/Ih7+JOojOr9ZPvGE/qMLoiSaz5mcptnHtbd5yJPFqJXBvQ8W4F+WWaiWyq+zOTIW
         VHLrhpOOcDCgjXxP5IeHs1amB6dCzlSWSpm5Csf5ZDLtGJiK4g4G0+1UC9XczewT8Qki
         yNmB2NQ8bMG4i42W9OKGsl54pD+iXRolTY3Clc3mqypkvr8O99Cnz7hav5qvv+cXMvIn
         Q/kwb5IltG6Qh2mcsMxLPeO8kHoDGeFING9QnWb56POWhlp8J2H7j2gw3SRCl1XE8yR4
         eJVA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tip-bot2@linutronix.de
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:sender:reply-to:to:subject:cc
         :in-reply-to:references:mime-version:message-id:robot-id
         :robot-unsubscribe:precedence:x-original-sender
         :x-original-authentication-results:mailing-list:list-id:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HmSLRvGGtDbI0HJU9I+yjQYN+vrqSh+aMSS+DYB7ukg=;
        b=s6gNuWX37JDg8iILznX6CWVe6mbCzOJRY4/RGsc9ERZbs2kaK+srdNG5FAR4BCFMM1
         dS8XM/Rmo5evLPqOZIiuGmBRSdVieeOUktFqs0IXi5TfXo0JXZ/4J791BVijLgxZWDZC
         XK9Fu/mkJYiG9EVDT6XBnXMs7sVF4p6LNYOdDPdcG3f32OU/YWbxc1rboN/hxV2pqUZt
         4pXMjSfbz3jIYkf2iVDWBPDFC2Y5wzC6++9S+0jOzvRzmyt2wrRAzjev17neXLIxcULV
         Kw78ba0Td6HkTOmjKgbNh2VPVuGzwdpkJZ/1KKEjO4TgvN/cVYrSmDhfYWiC5E7p2EXf
         2X9w==
X-Gm-Message-State: APjAAAWUkd4mecI3XMDa7jMVqMg16TRs2k5P1UG1YlbDD91mz+1nMUib
	u4qmc75qxnGe5nSdcqh8+1c=
X-Google-Smtp-Source: APXvYqx5qaL8tAe4BBXwl+d8u+eUXuArci8UArJaIMwLTcjTDj4Vyu4HFqHmGC51VRWrVU12WjPfXg==
X-Received: by 2002:ac8:187b:: with SMTP id n56mr2827039qtk.173.1579583890370;
        Mon, 20 Jan 2020 21:18:10 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:2712:: with SMTP id g18ls192273qtg.3.gmail; Mon, 20 Jan
 2020 21:18:09 -0800 (PST)
X-Received: by 2002:ac8:7501:: with SMTP id u1mr2836517qtq.149.1579583889907;
        Mon, 20 Jan 2020 21:18:09 -0800 (PST)
Received: by 2002:a05:620a:22eb:0:0:0:0 with SMTP id p11msqki;
        Mon, 20 Jan 2020 00:27:18 -0800 (PST)
X-Received: by 2002:a17:907:375:: with SMTP id rs21mr19705088ejb.351.1579508837807;
        Mon, 20 Jan 2020 00:27:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579508837; cv=none;
        d=google.com; s=arc-20160816;
        b=ozIKcUOq53RCO0FXjnp7igwHe6K00WmEA4jAc2u2AUt/JWu7bulccIYLNkmZlBEJzp
         q3UPKRcj0QV1I1d/OrtcPs9gAzkM3H5piv5ndl0DSDySZJ/vfsQLLObl/cS4wrJ1ZRYt
         Kfb74GcPLT9m/aohhegXA+rttSAOoiUqfcdm42A27WWhbixATh5ynmZ9w6lTYOuPMOpm
         EP8EETWRBX870Nv4wBBLkkEl4J0LyudEfYHUKV0R+otB/cdv75IZLcdgBK/Aw2tQYR22
         sAHS5fqOtdrX5G3e6iZpWJ3pOGZBuZTfQH5u+69ztcJSyA/UYugCY0FOp732RDExmV7Z
         URqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:precedence:robot-unsubscribe:robot-id
         :message-id:mime-version:references:in-reply-to:cc:subject:to
         :reply-to:sender:from:date;
        bh=W2Rnnzs0kiQy+BG0cqC3sO+eou9c2S4tkpdjtsLWdL8=;
        b=yNiG0xRpaG9jj+f3/cfWblhezHJvJsV2ev0u3hTAkoYMLl/cxx5HpLH8sb/TKRj4zf
         tpIaCrcEianFnkdhcwyUpXLxZt4gHjJjtRtijqPn1ebRN+VJ8Zw0MDAJ9Th3BaYqau0I
         CR9Yq0T7VInk6MmeK8OQtuxu9s08HqEKaW4CNu0BBcbBqqm+Q/jZCVgR3xXMiArLjW6P
         5v5uZgl8C0QKT7FIDJYCrGHHm8BSFDmU9lpZeSJkJPf4ws97tzT1nebBruJbzXpLIQTT
         6A5ryOWT/eLieY8ifgV/JD7MV5t+NwLcIA5yxPLkuwIGdIWazNBxsaa4k/qte7A65ZYf
         +Xqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tip-bot2@linutronix.de
Received: from Galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id d29si1482786edj.0.2020.01.20.00.27.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Mon, 20 Jan 2020 00:27:17 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Received: from [5.158.153.53] (helo=tip-bot2.lab.linutronix.de)
	by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
	(Exim 4.80)
	(envelope-from <tip-bot2@linutronix.de>)
	id 1itSOy-0002up-QL; Mon, 20 Jan 2020 09:27:16 +0100
Received: from [127.0.1.1] (localhost [IPv6:::1])
	by tip-bot2.lab.linutronix.de (Postfix) with ESMTP id 68C631C1A3F;
	Mon, 20 Jan 2020 09:27:15 +0100 (CET)
Date: Mon, 20 Jan 2020 08:27:15 -0000
From: "tip-bot2 for Maciej S. Szmigiero" <tip-bot2@linutronix.de>
Sender: tip-bot2@linutronix.de
Reply-to: linux-kernel@vger.kernel.org
To: linux-tip-commits@vger.kernel.org
Subject: [tip: perf/core] perf clang: Fix build with Clang 9
Cc: "Maciej S. Szmigiero" <mail@maciej.szmigiero.name>,
 Dennis Schridde <devurandom@gmx.net>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 clang-built-linux@googlegroups.com, Denis Pronin <dannftk@yandex.ru>,
 Jiri Olsa <jolsa@redhat.com>, Mark Rutland <mark.rutland@arm.com>,
 Namhyung Kim <namhyung@kernel.org>, Naohiro Aota <naota@elisp.net>,
 Peter Zijlstra <peterz@infradead.org>,
 Arnaldo Carvalho de Melo <acme@redhat.com>, x86 <x86@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>
In-Reply-To: <20191228171314.946469-2-mail@maciej.szmigiero.name>
References: <20191228171314.946469-2-mail@maciej.szmigiero.name>
MIME-Version: 1.0
Message-ID: <157950883517.396.18261374196273837423.tip-bot2@tip-bot2>
X-Mailer: tip-git-log-daemon
Robot-ID: <tip-bot2.linutronix.de>
Robot-Unsubscribe: Contact <mailto:tglx@linutronix.de> to get blacklisted from these emails
Precedence: list
Content-Type: text/plain; charset="UTF-8"
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required,  ALL_TRUSTED=-1,SHORTCIRCUIT=-0.0001
X-Original-Sender: tip-bot2@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of tip-bot2@linutronix.de
 designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tip-bot2@linutronix.de
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

The following commit has been merged into the perf/core branch of tip:

Commit-ID:     411c0ec0b8131457cf52812de29f11dcbf491ce6
Gitweb:        https://git.kernel.org/tip/411c0ec0b8131457cf52812de29f11dcbf491ce6
Author:        Maciej S. Szmigiero <mail@maciej.szmigiero.name>
AuthorDate:    Sat, 28 Dec 2019 18:13:14 +01:00
Committer:     Arnaldo Carvalho de Melo <acme@redhat.com>
CommitterDate: Tue, 14 Jan 2020 12:02:19 -03:00

perf clang: Fix build with Clang 9

LLVM D59377 (included in Clang 9) refactored Clang VFS construction a
bit, which broke perf clang build.  Let's fix it.

Signed-off-by: Maciej S. Szmigiero <mail@maciej.szmigiero.name>
Reviewed-by: Dennis Schridde <devurandom@gmx.net>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: clang-built-linux@googlegroups.com
Cc: Denis Pronin <dannftk@yandex.ru>
Cc: Jiri Olsa <jolsa@redhat.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Naohiro Aota <naota@elisp.net>
Cc: Peter Zijlstra <peterz@infradead.org>
Link: http://lore.kernel.org/lkml/20191228171314.946469-2-mail@maciej.szmigiero.name
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
---
 tools/perf/util/c++/clang.cpp | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/tools/perf/util/c++/clang.cpp b/tools/perf/util/c++/clang.cpp
index fc361c3..c8885df 100644
--- a/tools/perf/util/c++/clang.cpp
+++ b/tools/perf/util/c++/clang.cpp
@@ -71,7 +71,11 @@ getModuleFromSource(llvm::opt::ArgStringList CFlags,
 	CompilerInstance Clang;
 	Clang.createDiagnostics();
 
+#if CLANG_VERSION_MAJOR < 9
 	Clang.setVirtualFileSystem(&*VFS);
+#else
+	Clang.createFileManager(&*VFS);
+#endif
 
 #if CLANG_VERSION_MAJOR < 4
 	IntrusiveRefCntPtr<CompilerInvocation> CI =

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/157950883517.396.18261374196273837423.tip-bot2%40tip-bot2.
