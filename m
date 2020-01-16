Return-Path: <clang-built-linux+bncBAABBQGAQ7YQKGQEQ5C44HQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id B8AED140EEB
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jan 2020 17:26:41 +0100 (CET)
Received: by mail-ot1-x33e.google.com with SMTP id o14sf13542034otp.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jan 2020 08:26:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579278400; cv=pass;
        d=google.com; s=arc-20160816;
        b=FDij2CePh9A+Qmlov5evMF4/i0foe6UYXYnLWwvWzAFnlp/cCuR0m5o1I65Sj7L2c0
         Xp8F5hY4Y2fzNi6EQSjWtgZpZaIYZ/lP/b97GA0D238B52G0QQ6OKVJ2uhig+YhdWYhU
         Qca4vXB89o4Ov9ifrhsAk422LSWvS2XcCKaKrOUm0C4TcB9IGUlIjk2WF0Pv3rqSYOQE
         fNX/h9uGvhSpTxqlQG5wZxpal1X2EOX/EarW07tbPPRnprQ1XkEV4Bks4F3Zzx+UrT7H
         BJr3WMU64bQVJkc69q1ngCwBdv+vSVevokgYFgM4j/QFfRdmR9Ltbwrrc7mMBrJ4OQ1p
         WyEw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=0P6OOArK4mCiGjiBpx+unhpveBKkAR62dq1mNE/Chmw=;
        b=gWx85v1RfHLCZliOSD9YwnCLyf7ci23UspsDgmscsDAkieWu9p98yjd4Om1m094teY
         WQ9fTZZfNpO30TWCkyHmTT0QUH80gIf2QbSx60wSGjHzaxbX0qMYcun/8aC0kVsqDdZS
         PcvP91BeEx9sPW38U0tHQiQ5RHYSNM488LF+SUiaCGXQaeCHKqR4ZIjoBlBB0iZqnQlH
         0yADlV7SXH/DXrfzV+Yf3ikyhVM1re32O3+ATCeWy1HscXbB/oN3CPtshgXZjV8V0WaR
         Y+gdjeBX70Kwh8lcgFteNM4PU35CFtV6gJO7vu1gKZ1tCGpJVq749CyUcTbt5va+UrvW
         vpsA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=slYFaJok;
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0P6OOArK4mCiGjiBpx+unhpveBKkAR62dq1mNE/Chmw=;
        b=IFoaMIjyLq8kXDxxPJDKL1H+3eugelSCQfqts3BnT7CmBJvvc72hjPfXmKbXkiHyQu
         9g6JFMak1ROlLtoh8RoFaBKaGo0jP6ByWkm607yt2EJtWlFuDButV+NzaaVAhDmfTuq/
         UX4Q/MPe5Vl7ms0PAfbAW6DU6J0JEe7xFfbPpzJlWwKKGKnUFjlW4VIG6twLllrs/hwW
         jxGQZNFb7p5qOntIqieRiGnjqQ4l3Q1aX4+inq0g6vaKbba7WnNIUj7hyKDGfEy8oi8d
         a18Npb+XsOM76ZHrNz90lA6VcRgDvBNeSVFESAwn7+nXBpFG0j3YEbfdTLCzsP6B4TpL
         sZCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0P6OOArK4mCiGjiBpx+unhpveBKkAR62dq1mNE/Chmw=;
        b=i85lGayJVAka6PjDI4PpENQQtcy8UgdsDRn8JgtQnQ272qWlkl0ALkQ3B6GhLCaG6D
         wOJ9ZJ2zdecOJbBV58o2Ms8sftG417U8mb/1DmQ5NsRLbe9EOVofGdpK0iAm+L4l/gtR
         /bdY54gh5lHRx9SIaUViWuhAQy74zgNhPtzIPgD1OqTOxGfzb2VoW1oIXp20lycMbHQT
         tUWnk4zPg+xem1Rqc3D/qdl0CNMSUd5WRhg21yPFo/GRirBkjLodv0ltwKkaK3ZSzzSl
         BJZL0Q8C4SvhtkK/CGvI5m+MRIqVugXw1dtlcR2sERaLeGk3h7ri4iVDwbMXsJGIBgVC
         X2XA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVI3QopLDmE8usGrZK/AXxIbZ1j5O9ORQk6nvsvTDC/TLHy5L3J
	fHWy8INTZ1mFiyCVBzrBxRg=
X-Google-Smtp-Source: APXvYqzsafNbocjCkRKL/srtAv9C1eozeJIFWDLQ8/INlmaSJUbvg5gWXDmF283Bx8zgDVt0wVk16A==
X-Received: by 2002:aca:d806:: with SMTP id p6mr4049537oig.17.1579278400221;
        Fri, 17 Jan 2020 08:26:40 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1c82:: with SMTP id v2ls3051996otf.15.gmail; Fri,
 17 Jan 2020 08:26:40 -0800 (PST)
X-Received: by 2002:a9d:21f5:: with SMTP id s108mr6908549otb.152.1579278400036;
        Fri, 17 Jan 2020 08:26:40 -0800 (PST)
Received: by 2002:aca:fcc3:0:0:0:0:0 with SMTP id a186msoii;
        Thu, 16 Jan 2020 05:48:28 -0800 (PST)
X-Received: by 2002:a02:9f09:: with SMTP id z9mr28024493jal.119.1579182507949;
        Thu, 16 Jan 2020 05:48:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579182507; cv=none;
        d=google.com; s=arc-20160816;
        b=YPMmtzIhFAeWFi/R1kWkPee22oGDhzX16lRWHJFUPGopUdADCay3iSFJ22rafswbgA
         MGj3RWHCiRFNJQzy1MhaJKUW57eJS4l945kG8u99Z0zmYElBhT/6oQNqMXnvGqOHVGnG
         W2P96iB+SVmDaDjZKvwTeju6Z4LLdtUwn2Orh7buoFN1Z1da3cLVLiXZvPrwJ3WR9Xg7
         dTsgFBNQE2KRGuPwU2DNilZqTTlxP48smtzBRSuSazjHGkKhnU6zLjMc4CpoEeY+u7Z5
         qlFMjPrXk1APz6EqGmABtRqPSz3e0sifhR+9JuF/lR/Ud5mjukYtqIBY8ZpkupV4UNNO
         0XeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=E4vXSZZHeuKjMBuz4SJJgkj2ca30a2S2XXb5ZEklYt0=;
        b=EhoI1sc39YHh/gveyZuGikq38kSBQ0KspGCpiWfXgjOERaxYwAsowEjvSr565TAe00
         N93qDvs0g/j1FltPfeorA/DvK9laqhn89Gf7R2LYzQBYctOQ3cVnAmE1z5tUL8MQtO+X
         3D6T7V9G0sUNm/aVAd5lNr95U5GDc3gEKRf4O8o6MxVIacCf/jEYgJwLwAz5xkICb5do
         LJ8C5RV0JTUAuD8YfBCl8IGFihIjSP3psQnsjGf1N6NqsUyEbK5ExxzM7Vw47dN+szjA
         Z7GemMJj8m6QTLRrQZGRErIPj20Bml9aYsZk1ZfO+uv1DKwbPEgsh28s5PyFnI8+k5Hs
         FcUA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=slYFaJok;
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v82si1067159ili.0.2020.01.16.05.48.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jan 2020 05:48:27 -0800 (PST)
Received-SPF: pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from quaco.ghostprotocols.net (unknown [179.97.37.151])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 5BEAF208C3;
	Thu, 16 Jan 2020 13:48:23 +0000 (UTC)
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Ingo Molnar <mingo@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>
Cc: Jiri Olsa <jolsa@kernel.org>,
	Namhyung Kim <namhyung@kernel.org>,
	Clark Williams <williams@redhat.com>,
	linux-kernel@vger.kernel.org,
	linux-perf-users@vger.kernel.org,
	"Maciej S. Szmigiero" <mail@maciej.szmigiero.name>,
	Dennis Schridde <devurandom@gmx.net>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	clang-built-linux@googlegroups.com,
	Denis Pronin <dannftk@yandex.ru>,
	Jiri Olsa <jolsa@redhat.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Naohiro Aota <naota@elisp.net>,
	Peter Zijlstra <peterz@infradead.org>,
	Arnaldo Carvalho de Melo <acme@redhat.com>
Subject: [PATCH 01/12] perf clang: Fix build with Clang 9
Date: Thu, 16 Jan 2020 10:48:03 -0300
Message-Id: <20200116134814.8811-2-acme@kernel.org>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200116134814.8811-1-acme@kernel.org>
References: <20200116134814.8811-1-acme@kernel.org>
MIME-Version: 1.0
X-Original-Sender: acme@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=slYFaJok;       spf=pass
 (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=acme@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

From: "Maciej S. Szmigiero" <mail@maciej.szmigiero.name>

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
index fc361c3f8570..c8885dfa3667 100644
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
2.21.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200116134814.8811-2-acme%40kernel.org.
