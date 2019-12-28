Return-Path: <clang-built-linux+bncBCTNJS6RZAFBBQU2T3YAKGQEPZTYF7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id B6BF312BE1D
	for <lists+clang-built-linux@lfdr.de>; Sat, 28 Dec 2019 18:13:38 +0100 (CET)
Received: by mail-wr1-x43e.google.com with SMTP id z10sf11234104wrt.21
        for <lists+clang-built-linux@lfdr.de>; Sat, 28 Dec 2019 09:13:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1577553218; cv=pass;
        d=google.com; s=arc-20160816;
        b=spSIHRrbR8a01qzwbMKTrYTUVzpAgyCDX/jQnzrMb6CJLHZOyeLjXufEyPS0Y9xS3k
         vIMrAQzCb8ugoJoOyjeZpmE+qiTfHEVKbZq9NyvvRcHS561RUIvEABlgc3DMmfruWwnX
         w5rJfTValk0diNOmDH9PccJmA0etVKU36hjkj1DzIY+4uM2GFtptH3lZI4oAy6ML7dzb
         IG1Bv25z0ad0i+SxJGSyHK3dfucZ2DWdaefBntnbnHwHHLcVInKt9OyUcy+1aKr8dG9l
         wh4LUMX65VkZqcODACz1TBZZeVW03s/5UNDhCFDLbZx5dnCGCix3yTNx+VgIJW/sciD5
         vmBQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=yN5p2XHw4FOynEa6hbRSfV6QXz8rQpuuXggfUqeubvs=;
        b=R1jWzrAX7meIN34u5ycvLey4IA0i++48/WHQHowIoHrheB8xe7wZc0PR2tvtOneyI+
         TDLL6jjcvwkbrVZ0/TQlAGPlAJkc/xiZRGQSY7p6ksy/jSQC0snqKwL3I9m+DjK9OzXr
         ONFruzVjtjI4cM4dmX9BH4vqiIVggjROVRvnXTwhZWUeYV/mxsi5SvBhJ3J9floUIKLT
         VS3+tb8kl1rjRfI1ZKEfwNZuzz/sgjlpPQ/K9TXv2wHa9/3lNmpOcs9ASRmO9lufqWUl
         PZGaD/2+Lu2GR81V66gGeONobwEK6RWLu3DYRiWeloOAcqvqWngxSj8b1wDWEAw9uHO8
         qESA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mail@maciej.szmigiero.name designates 37.28.154.113 as permitted sender) smtp.mailfrom=mail@maciej.szmigiero.name
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yN5p2XHw4FOynEa6hbRSfV6QXz8rQpuuXggfUqeubvs=;
        b=IEEvNRXmAlBvS/Sw2G5tLH0fCAh5csDRp7OWfAGz4PvdXFuaAzoqBBiuvaAdb5zHw4
         HRiTIYmmShwko5CgBZnGd5mMR3BRDpEDjsMF0NE4Xk2l3nv9y+bd7oRnd0KNBYsDMV5h
         1PT9q6WqPT8RCoJR9+k6tsMKJ9ycPHzM62sn857WaAGpjZnTJFbYupA/xIjd/HEEnbve
         Ptgp2v5iY5zT6Uj5gfTSZNMzdZ5mi+OV2IeBuZ+O+j+QVzer/sDcI95zGYOv8AdFaC12
         Ivj8insgl1iyI3cQlArzF7YDMv/LvBZNRQw/He0g7NbMDnDF+0DgAET9FP/5944B3o7u
         W+oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yN5p2XHw4FOynEa6hbRSfV6QXz8rQpuuXggfUqeubvs=;
        b=jASyk+trv0tcKJySqX4XtN5UYKS/O4Pj5vtGDqYX7KJMegtRICw1tFzp2mrUBfzTdH
         9ASjqabMw/zm7z/yQg3drrRubd3btAH83mrjHaWCfQP9SehytAII6cenupaoDh+LzaC9
         DgBsh/jL232/uFZ8V05xBLvVSOxo4UW095OiJ7EykC4q1y+FJ4go6U0WBgKT/7OmOh3T
         kkt/XwRiSMIvhWpJblLYW5Zk6x8bxN346IqIv3atqfce4kasOiMZUIyN25DfQRk3ofr4
         GYS2DLkMguqlOcVxfw/l4IwlJv+hW5KVpT2Ql/vH9JDsHSiwWex8dKw2Dh1pwMzZvtx4
         sYBQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVoIiId70a52yEufwzBMUMCOP83CQ+CHVPdQxJGDdaHcmPgTmhc
	Im14QoRmznhJ0SNZnDSKEC0=
X-Google-Smtp-Source: APXvYqwYVeGDLJ6D9AZ7rXGrHnR0UtbL56q4BvH+4GvAKpRWu4XwE47kA5x+brphIo+1faX0Wh7kTA==
X-Received: by 2002:a5d:4b88:: with SMTP id b8mr9325771wrt.343.1577553218405;
        Sat, 28 Dec 2019 09:13:38 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:3c43:: with SMTP id j64ls3635643wma.5.gmail; Sat, 28 Dec
 2019 09:13:37 -0800 (PST)
X-Received: by 2002:a7b:c317:: with SMTP id k23mr25535718wmj.75.1577553217769;
        Sat, 28 Dec 2019 09:13:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1577553217; cv=none;
        d=google.com; s=arc-20160816;
        b=OmBGvCHV0AmvkK99t0I2RCDVec3ho1EIDr5j+8LGD7Yl/vP54WSJSAXbgJiQjdiIU8
         3QMqYeYf5zPDrZFP61I1dKw2dZzHSdsP7Mc9wMg7ndvqaUTaxVv83T/5QNwxTaFHYJGn
         dX3TYI8sFXhOqS8J0sbXfPGChsmUTOeHc0fAf5Wg/qgEPWMV41PcPHoMJIHgIuJP2zkX
         zHaF+kcUri9CiMJVz3k1q2324Mah2DdVcbB7EmZx2m6Pq/7Eti2qrBDkQpsIplzLAhUX
         jcOG8fpT+2X3Gy5tCkLzJMUivtpSPIfgJK4duNEB2byzJI89ps0eWpCy+TKGYAGtzgbw
         n4LQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=JDYGnx9/vZm+T4ZhSsWJi7dAV+VAdADhtUl7xgeDo0w=;
        b=Z/s4lPxjHUWoZffN2Z5PXVVykP3ZOU8kmR+MLvhZleOGH/ILPd1O3zJf0tPmCwj0CL
         mI0WE1doJUok9pCRmncwahXCprb3UMwWRNLgekpwy87Q24wVzIgLk5oyGaKCRkdLTGxn
         c+o6AbEaZTiFY6mCrl1w2VBEI2xrkOVLP58kg475pWcE0KO/wAP6+45gs9vnKGZLMWQn
         UoBoxNbcZUyJfmjrOIuXhbFZP5bKD2mp9aWanicNlk4ubxTxwYp/UDMZnhG+70y/Dbc3
         x6iSUy/gHc2OT/leQiupX8LKexiULrQLE39mtRvzwdOLaN9iM6qqzu1fSJI+aRfA47U6
         FI/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mail@maciej.szmigiero.name designates 37.28.154.113 as permitted sender) smtp.mailfrom=mail@maciej.szmigiero.name
Received: from vps-vb.mhejs.net (vps-vb.mhejs.net. [37.28.154.113])
        by gmr-mx.google.com with ESMTPS id m2si443497wmi.3.2019.12.28.09.13.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Dec 2019 09:13:37 -0800 (PST)
Received-SPF: pass (google.com: domain of mail@maciej.szmigiero.name designates 37.28.154.113 as permitted sender) client-ip=37.28.154.113;
Received: from MUA
	by vps-vb.mhejs.net with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.92.3)
	(envelope-from <mail@maciej.szmigiero.name>)
	id 1ilFeX-0003Tn-Tw; Sat, 28 Dec 2019 18:13:25 +0100
From: "Maciej S. Szmigiero" <mail@maciej.szmigiero.name>
To: Peter Zijlstra <peterz@infradead.org>,
	Ingo Molnar <mingo@redhat.com>,
	Arnaldo Carvalho de Melo <acme@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Jiri Olsa <jolsa@redhat.com>,
	Namhyung Kim <namhyung@kernel.org>,
	Dennis Schridde <devurandom@gmx.net>,
	Denis Pronin <dannftk@yandex.ru>,
	Naohiro Aota <naota@elisp.net>,
	clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: [PATCH] perf clang: Fix build with Clang 9
Date: Sat, 28 Dec 2019 18:13:14 +0100
Message-Id: <20191228171314.946469-2-mail@maciej.szmigiero.name>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-Original-Sender: mail@maciej.szmigiero.name
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mail@maciej.szmigiero.name designates 37.28.154.113 as
 permitted sender) smtp.mailfrom=mail@maciej.szmigiero.name
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

LLVM D59377 (included in Clang 9) refactored Clang VFS construction a bit,
which broke perf clang build.
Let's fix it.

Signed-off-by: Maciej S. Szmigiero <mail@maciej.szmigiero.name>
Reviewed-by: Dennis Schridde <devurandom@gmx.net>
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
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191228171314.946469-2-mail%40maciej.szmigiero.name.
