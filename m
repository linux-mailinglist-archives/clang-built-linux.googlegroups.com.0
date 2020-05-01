Return-Path: <clang-built-linux+bncBDB63H54RYOBBA6CV72QKGQEJZWMJNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x637.google.com (mail-ej1-x637.google.com [IPv6:2a00:1450:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id C16CB1C0FD6
	for <lists+clang-built-linux@lfdr.de>; Fri,  1 May 2020 10:42:43 +0200 (CEST)
Received: by mail-ej1-x637.google.com with SMTP id bz19sf4229917ejc.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 01 May 2020 01:42:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588322563; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZVylYlCEon4bWQ8pVb1XmyeRzupP5yM12nV+PlcDxMyIVarwg9DqhC2tB6pQAtinLD
         YL115sV0hIRvHIbTgdgt+6JeahkZsSNsfurcOLPwdIwx6rf+LgPbDrJpDG5zxhSRgXQB
         3A88Ywf6pQyARqMFjBMyKLDvh/dFTx5IAkp84IDHO4VKQ5Eau8pFHbZcF5ljpn9dnjxL
         G+C4hMdGk/kQPjOcuxFh0D3wgZWIPxIbnIQsijUQC9pPlLezl495JFeDN2tGz4wUxTZR
         lf2mpHnb5b6tyuIh9n+hpqQtqgQVP33BJpv39y9xkcpqxScHEjQT5BlvBEl+U4FAiw73
         FDSA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=RXKx32DlPDuIWVkLwUGQfn9yqQL4+AFsdDZc1Zo9zh4=;
        b=ZC2tVqVt4SEVacC6DwBLBLDiD3PtA1p/WmYoS6Cf5tzfgg6TLrvlt6b9XLB3MDA/Qp
         Nx3HvHlFKsptouCtaZ7C0vcrwSqWykUjPOSt26UvybOHag3TeSBaQWvVgEkhMoeFAES4
         FXms7ZRWOLBPU0BoAZ+6t8xkoeaVnYjb9Z20vT+Rzya2gakUqHo+D5WomTgD0pWegSEY
         LeteejDAuq4tZ39sE/iI61Eh+wYgxgMDSEinhJ/Ms6uN5vtLyX6WZPmgx64udTIfUCSI
         7I4GBLgDvElijkCEDaqcfOVB2ZD/kdmgePyCa1nmBPA5wYNyNIWoQYXrlpkrH08moyy3
         VPmw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@golovin.in header.s=mail header.b=ARiE+ETt;
       spf=pass (google.com: domain of dima@golovin.in designates 5.45.198.246 as permitted sender) smtp.mailfrom=dima@golovin.in
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RXKx32DlPDuIWVkLwUGQfn9yqQL4+AFsdDZc1Zo9zh4=;
        b=IYGQWqdUIR1xM4JnjIOLBX9hJtn+xXsvjqs2W15oA3VVRo8y9Ub1kOh7G3dZjwf34l
         caq+HxEk1dX05IUl+uAqgPhvzW2HAoS3J/nqZyMnVQdzzS/JzbN2W6/RI2oSyH9fTqcv
         Sh2BzJXGiepMZI9ZEU18/AgvvJdWIrywFVVoT5DzsGmXKBus4ceAttFO3wWNButyYlzc
         AYvc7K08pfcdJYwckD1MUoo0UZfR9pdUFFLRyA+S4MOmbv5zVrsTX96NoLLWaLeyw7eH
         4rYviUhKpmKq+uShT/6f0j9J/krdRguKk4YgxFNfc2w99CaARxOvvd1+6d52QtWAu47C
         96qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RXKx32DlPDuIWVkLwUGQfn9yqQL4+AFsdDZc1Zo9zh4=;
        b=jUiawIqfvCerz8aPb3VSZhoPNL/g2XnoHVDjoHkMgRNiZiL73PSkJDCifossYDqLkF
         LGOq4wyHpyCd7XaPxOhUxSE3v+JNkenIlREiG2r8bDyRIh568V9Db+BjcHJ/vEcBYxgj
         HQcD8mQTmWTDiKERu8GDmepTt11nfp+U1C8W2QXYETodTeaYtLHQPwwnYqEPebRGIzgr
         yAzSWHYQQYq0bF3ajscQCElxnaTyQ/WIdYvygC7m/iOxh4/8LYBrAevstl2Ai3aq/HmB
         EGPfjxR1YkfBW5VYymBHs88b6x21Zrw0EdXDx496WBOlaBhBrkQ2PMY3wFBprpKwNDG5
         DvmA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubepPIQZey8xNsDglnsLleWwLI9nt8HX1OeSqLP8atrKjurRyRR
	YlDuQWM66SptLRnFD0wUQ+4=
X-Google-Smtp-Source: APiQypJaAaeuaqtfistLNbQKZpGAV9BQJtoq+ymOfcJhYWtidO5W5K1g8Vye+eAfUhCge/vx6fJL5Q==
X-Received: by 2002:a17:907:42d6:: with SMTP id ng6mr2130425ejb.265.1588322563467;
        Fri, 01 May 2020 01:42:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:c55:: with SMTP id t21ls2270642ejf.11.gmail; Fri, 01
 May 2020 01:42:43 -0700 (PDT)
X-Received: by 2002:a17:906:d291:: with SMTP id ay17mr2225658ejb.183.1588322562946;
        Fri, 01 May 2020 01:42:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588322562; cv=none;
        d=google.com; s=arc-20160816;
        b=02u4YirWePKXPsK5TjZHG1A2HNGpcDyYKV4YVeyIQboa6Li1J56JL+qzFxBvli9eKH
         a6vuru4en2TzyTY3EySMFtVIxkxRCuPV8pKvQGYbqmRRAf1nBL9BlV5K9NvBEho9p9Ky
         bNLzq5omk3nti1VntDv92f/cPB2t6qXbQ07emMR3dLcHfi8iOIBKNtMW65CPJn9abAhT
         hXNJxLOtn2RwE/V+FHvLZlvxNMm1ps0ikq+iI0y5KCI9RIBunN/yE2k2CW+Etnan8euh
         OPoIc6cZzPW9GgzyHOdNdLyyq967Rwb9yhsebO6aFLlvCP6vNHu6/jP71xLe16ifVVl0
         szNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=gan9a/JARj/+uZ3h35bsl+BDo6XiSEqZSpSCQqcjDAA=;
        b=ndnh/rECu+ICt9cFZw4JhjrNyyvWNdPxoSRL/g2HiiyRHncfMY7f/43JMq70tWt+Kr
         CI8cixWtp9HCTJFuv8y5tCZz6dwW2WQsePQ2PlAasKQAFVg7ScYoX89wOY0vrcWUh2K2
         VCoJ5gAbLwwsC55Sn+xDAZlCgmHwA3L9XkKgOHpa+CrWZuN9VnCNkQBqpjMBbJol5o/0
         3DiLyZrcvb8CgvC3fcdwnY5aidK3Qk9s9b6o4HnQb+xSDHT8IsbAIwf4Mh7cHrUtuH5v
         ea9rgzOris+kHa2IqvKN8ZuX0u1cKg8VBT1U96u0HK0/eKGoeZjobu7L0fAYXTd437vg
         VY7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@golovin.in header.s=mail header.b=ARiE+ETt;
       spf=pass (google.com: domain of dima@golovin.in designates 5.45.198.246 as permitted sender) smtp.mailfrom=dima@golovin.in
Received: from forward103j.mail.yandex.net (forward103j.mail.yandex.net. [5.45.198.246])
        by gmr-mx.google.com with ESMTPS id o23si171641edz.4.2020.05.01.01.42.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 01 May 2020 01:42:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of dima@golovin.in designates 5.45.198.246 as permitted sender) client-ip=5.45.198.246;
Received: from mxback27j.mail.yandex.net (mxback27j.mail.yandex.net [IPv6:2a02:6b8:0:1619::227])
	by forward103j.mail.yandex.net (Yandex) with ESMTP id 17D8367418E1;
	Fri,  1 May 2020 11:42:42 +0300 (MSK)
Received: from sas8-b61c542d7279.qloud-c.yandex.net (sas8-b61c542d7279.qloud-c.yandex.net [2a02:6b8:c1b:2912:0:640:b61c:542d])
	by mxback27j.mail.yandex.net (mxback/Yandex) with ESMTP id SUQtlbkE3G-gf7WPW96;
	Fri, 01 May 2020 11:42:42 +0300
Received: by sas8-b61c542d7279.qloud-c.yandex.net (smtp/Yandex) with ESMTPSA id 8KmUsRmuq5-ge5iAngf;
	Fri, 01 May 2020 11:42:40 +0300
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(Client certificate not present)
From: Dmitry Golovin <dima@golovin.in>
To: clang-built-linux@googlegroups.com
Cc: Dmitry Golovin <dima@golovin.in>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	x86@kernel.org,
	"H. Peter Anvin" <hpa@zytor.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Daniel Kiper <daniel.kiper@oracle.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH] x86/boot: allow a relocatable kernel to be linked with lld
Date: Fri,  1 May 2020 08:42:13 +0000
Message-Id: <20200501084215.242-1-dima@golovin.in>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Original-Sender: dima@golovin.in
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@golovin.in header.s=mail header.b=ARiE+ETt;       spf=pass
 (google.com: domain of dima@golovin.in designates 5.45.198.246 as permitted
 sender) smtp.mailfrom=dima@golovin.in
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

LLD by default disallows relocations in read-only segments. For a
relocatable kernel, we pass -z notext to the linker to explicitly
allow relocations. This behavior is the default for BFD.

Link: https://github.com/ClangBuiltLinux/linux/issues/579
Signed-off-by: Dmitry Golovin <dima@golovin.in>
---
 arch/x86/boot/compressed/Makefile | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/x86/boot/compressed/Makefile b/arch/x86/boot/compressed/Makefile
index 5f7c262bcc99..7214751e1671 100644
--- a/arch/x86/boot/compressed/Makefile
+++ b/arch/x86/boot/compressed/Makefile
@@ -57,6 +57,9 @@ else
 KBUILD_LDFLAGS += $(shell $(LD) --help 2>&1 | grep -q "\-z noreloc-overflow" \
 	&& echo "-z noreloc-overflow -pie --no-dynamic-linker")
 endif
+ifeq ($(CONFIG_RELOCATABLE), y)
+KBUILD_LDFLAGS += -z notext
+endif
 LDFLAGS_vmlinux := -T
 
 hostprogs	:= mkpiggy
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200501084215.242-1-dima%40golovin.in.
