Return-Path: <clang-built-linux+bncBDJKZSEQ3YKRB7X2ZXZQKGQEDZV37HI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-f60.google.com (mail-lf1-f60.google.com [209.85.167.60])
	by mail.lfdr.de (Postfix) with ESMTPS id B686018B8C3
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 15:11:10 +0100 (CET)
Received: by mail-lf1-f60.google.com with SMTP id g2sf935916lfb.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 07:11:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584627070; cv=pass;
        d=google.com; s=arc-20160816;
        b=MZAT6zrMu7j2VrvBwd/b6hUUOSTHy49OHz5St7NI1GdhtdQrj9ZGP1+8WZ8wlyCZDr
         OGODXQi1yMwOdJh1HpMFsSY2hs6imrFWpsnK1N4JZH9H2VQwFWdxPgVGy/UM5juOeOHK
         Pz93b+dOPaeWBvpqYHAPWfkQprwDWK2oPugp/IcgCuLuaQnEuO99OhK4DFrvhoppRlBS
         WzvjF84IZsi0qVbge9zz5dCxEzgQirZYqbWaPQ1adzU5QZhWwhziCHuhk/gHtc8TnM31
         SB2bAyIWaaNZt+B6kTWycv6lfTINEtrm1kuR3xzD98WQ1dbjxjbOMHi9oQ7K2e8q7YT7
         8tKA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:robot-unsubscribe:robot-id
         :message-id:mime-version:references:in-reply-to:cc:subject:to
         :reply-to:sender:from:date;
        bh=hefjLIWGnCcBPXCFMMbV5u2aqLZ5mg2cdd/60LWT45M=;
        b=i95MBrdJ1+cqEEbOByyqtDvCYvZokgpWKc08Ga2bGxg9Wcpw8qm1NqJTrmg7QE20qu
         SdPZ1vArjlFaXLWs024SFXdnE11iLcwjJ2W0YU9U7U5mVEascuAPm8h0y9MvbkZZgTK3
         mefQ6YkmhWd/FNWcSQ7tNot1SxpyREJl71xkS35u1aLujPeYTYpcfjzGJ2xBgEdGLGlw
         fQZUpDD1Pj11JOnHTiZgXg3x+XxGXh83BAqbUDQRUgH0GEFlAMk6OsM8A/lR4fBrBu/W
         g/QsAvuyb3YNZQ1piTjItRSYwLxEDKLh4I7gUYwDbwmaJ/exrtMnTgdyfJ56sylgWnfO
         py8w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tip-bot2@linutronix.de
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:sender:reply-to:to:subject:cc
         :in-reply-to:references:mime-version:message-id:robot-id
         :robot-unsubscribe:precedence:x-original-sender
         :x-original-authentication-results:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hefjLIWGnCcBPXCFMMbV5u2aqLZ5mg2cdd/60LWT45M=;
        b=bKpXCBFraHkkqBhD1QAMrHJYuoPzysH+EaBWY+GpCaz+a9uOkCmEL1DZxFQrTizDv5
         02b9/CYVrDpvx/HtHVUT2MkLagOkHaGxIOOz6Gu76X5TklZVJUSP6Pb2uNNISnN2gkKT
         kDyqvUykjVdGhVQdP2QS6+JMNa2nY5ReGaoL7S2uh4U9dNk7FtDYAyPkrW+6YAx+hNOZ
         KmxV8KJiEKd/GMpzAQ7ioBlXPpfRfGzTIh2fJ7UxuVRPMdK2ggIvGM57ewEoR1nlI68G
         zMlJDM4gB6yx3Vc2B4BPLWHCIJZnqg/9OS074AfBbaLmXmm+uU1321GoxpBPXrLVxGoD
         jobw==
X-Gm-Message-State: ANhLgQ0F6guAshYmrRgj+RMqEainTYMCGLJx6TIcNrYRjJefd/B3z6oo
	HIK/ERqRNwTltOP49N0FzEs=
X-Google-Smtp-Source: ADFU+vsqstrJ04yR6heb3xEE94Bt0JcDMBVYKi/Un+Yx6qwuHKlm+DzQ5x1jlSeTXveQDLioDzCN0g==
X-Received: by 2002:a05:651c:288:: with SMTP id b8mr2322407ljo.98.1584627070223;
        Thu, 19 Mar 2020 07:11:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:96:: with SMTP id 22ls578599ljq.0.gmail; Thu, 19
 Mar 2020 07:11:09 -0700 (PDT)
X-Received: by 2002:a2e:9b93:: with SMTP id z19mr2251288lji.64.1584627069719;
        Thu, 19 Mar 2020 07:11:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584627069; cv=none;
        d=google.com; s=arc-20160816;
        b=KcVNyWNhE744m1NjVoCamQG600uxBnxwxjNoNrfUJ9Llsymu8hJB57LNoVtSY+xc56
         CvWgB+y/OLORWNp51oDkaYOPLA/Go6hOyFBsP68gMqstqMiHtn5HwgQuush2U+hTl7eI
         2t5KByDNNJGY3vZSceEEZebYCeliQy1MNgAWZE4vPXd/dLnXX35Pleupa55UXY2dg22Y
         pK7lyKiDDa5LYO82Og3XAkphMA6ep/VzT1rGwIchDKv9hg/rq30zefKJqRZalXOfKrKI
         W1a5kAHpHPKH/aHgjzAkx79OVGDaNJmW5zDj8lt5tfbc8H7xKvsASB3nt4kDOIBbCWHI
         Hbsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:precedence:robot-unsubscribe:robot-id
         :message-id:mime-version:references:in-reply-to:cc:subject:to
         :reply-to:sender:from:date;
        bh=OofZZBY9T9tUUvKPWxEDpWnJeHKa64CnQaz53tXAIBw=;
        b=Tot+z70PlckjZubaIgwS/ejPuNdUzkMBFPwr6cPSokya7qD2Fm5RY+Jj1C5Ii1cHI8
         lF0papdLIRoplHateS4CxYug3KIeO4z8QKaUtQ2I9McoMU+PWudB2+qiFDftP9TCQnmH
         3fBYPwkrLSjcE2VNvgNzc4CtHwbT182sJp5SRqu5wTHdHvuDYAsBom//iPinYPj12+Zr
         skHPc6x4XQAh+wvD9iE+LgclF72xi9U+by9cKupdPefwPxgj76ZwZwNp1GR67xwBIn9H
         o+nuWhyoZOXIIWXEjhq7FWexDIfhUwcV45dYnV24azuX+EMSE/vz7IHsZuVUc9bIpPp8
         DbIw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tip-bot2@linutronix.de
Received: from Galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id b26si146034ljk.4.2020.03.19.07.11.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Thu, 19 Mar 2020 07:11:09 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Received: from [5.158.153.53] (helo=tip-bot2.lab.linutronix.de)
	by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
	(Exim 4.80)
	(envelope-from <tip-bot2@linutronix.de>)
	id 1jEvt4-0002NJ-KD; Thu, 19 Mar 2020 15:11:06 +0100
Received: from [127.0.1.1] (localhost [IPv6:::1])
	by tip-bot2.lab.linutronix.de (Postfix) with ESMTP id EA4E01C22A8;
	Thu, 19 Mar 2020 15:10:56 +0100 (CET)
Date: Thu, 19 Mar 2020 14:10:56 -0000
From: "tip-bot2 for Nick Desaulniers" <tip-bot2@linutronix.de>
Sender: tip-bot2@linutronix.de
Reply-to: linux-kernel@vger.kernel.org
To: linux-tip-commits@vger.kernel.org
Subject: [tip: perf/core] perf diff: Fix undefined string comparison spotted
 by clang's -Wstring-compare
Cc: Nick Desaulniers <nick.desaulniers@gmail.com>,
 Ian Rogers <irogers@google.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Changbin Du <changbin.du@intel.com>, Jin Yao <yao.jin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, John Keeping <john@metanate.com>,
 Mark Rutland <mark.rutland@arm.com>, Namhyung Kim <namhyung@kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, Song Liu <songliubraving@fb.com>,
 clang-built-linux@googlegroups.com,
 Arnaldo Carvalho de Melo <acme@redhat.com>, x86 <x86@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>
In-Reply-To: <20200223193456.25291-1-nick.desaulniers@gmail.com>
References: <20200223193456.25291-1-nick.desaulniers@gmail.com>
MIME-Version: 1.0
Message-ID: <158462705662.28353.6097630422293165073.tip-bot2@tip-bot2>
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
X-Spam-Checked-In-Group: clang-built-linux@googlegroups.com
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

The following commit has been merged into the perf/core branch of tip:

Commit-ID:     c395c3553d6870541f1c283479aea2a6f26364d5
Gitweb:        https://git.kernel.org/tip/c395c3553d6870541f1c283479aea2a6f26364d5
Author:        Nick Desaulniers <nick.desaulniers@gmail.com>
AuthorDate:    Sun, 23 Feb 2020 11:34:49 -08:00
Committer:     Arnaldo Carvalho de Melo <acme@redhat.com>
CommitterDate: Wed, 04 Mar 2020 10:28:08 -03:00

perf diff: Fix undefined string comparison spotted by clang's -Wstring-compare

clang warns:

  util/block-info.c:298:18: error: result of comparison against a string
  literal is unspecified (use an explicit string comparison function
  instead) [-Werror,-Wstring-compare]
          if ((start_line != SRCLINE_UNKNOWN) && (end_line != SRCLINE_UNKNOWN)) {
                          ^  ~~~~~~~~~~~~~~~
  util/block-info.c:298:51: error: result of comparison against a string
  literal is unspecified (use an explicit string comparison function
  instead) [-Werror,-Wstring-compare]
          if ((start_line != SRCLINE_UNKNOWN) && (end_line != SRCLINE_UNKNOWN)) {
                                                           ^  ~~~~~~~~~~~~~~~
  util/block-info.c:298:18: error: result of comparison against a string
  literal is unspecified (use an explicit string
  comparison function instead) [-Werror,-Wstring-compare]
          if ((start_line != SRCLINE_UNKNOWN) && (end_line != SRCLINE_UNKNOWN)) {
                          ^  ~~~~~~~~~~~~~~~
  util/block-info.c:298:51: error: result of comparison against a string
  literal is unspecified (use an explicit string comparison function
  instead) [-Werror,-Wstring-compare]
          if ((start_line != SRCLINE_UNKNOWN) && (end_line != SRCLINE_UNKNOWN)) {
                                                           ^  ~~~~~~~~~~~~~~~
  util/map.c:434:15: error: result of comparison against a string literal
  is unspecified (use an explicit string comparison function instead)
  [-Werror,-Wstring-compare]
                  if (srcline != SRCLINE_UNKNOWN)
                              ^  ~~~~~~~~~~~~~~~

Reviewer Notes:

Looks good to me. Some more context:
https://clang.llvm.org/docs/DiagnosticsReference.html#wstring-compare
The spec says:
J.1 Unspecified behavior
The following are unspecified:
.. Whether two string literals result in distinct arrays (6.4.5).

Signed-off-by: Nick Desaulniers <nick.desaulniers@gmail.com>
Reviewed-by: Ian Rogers <irogers@google.com>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Changbin Du <changbin.du@intel.com>
Cc: Jin Yao <yao.jin@linux.intel.com>
Cc: Jiri Olsa <jolsa@redhat.com>
Cc: John Keeping <john@metanate.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Song Liu <songliubraving@fb.com>
Cc: clang-built-linux@googlegroups.com
Link: https://github.com/ClangBuiltLinux/linux/issues/900
Link: http://lore.kernel.org/lkml/20200223193456.25291-1-nick.desaulniers@gmail.com
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
---
 tools/perf/builtin-diff.c    | 3 ++-
 tools/perf/util/block-info.c | 3 ++-
 tools/perf/util/map.c        | 2 +-
 3 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/tools/perf/builtin-diff.c b/tools/perf/builtin-diff.c
index f8b6ae5..c03c36f 100644
--- a/tools/perf/builtin-diff.c
+++ b/tools/perf/builtin-diff.c
@@ -1312,7 +1312,8 @@ static int cycles_printf(struct hist_entry *he, struct hist_entry *pair,
 	end_line = map__srcline(he->ms.map, bi->sym->start + bi->end,
 				he->ms.sym);
 
-	if ((start_line != SRCLINE_UNKNOWN) && (end_line != SRCLINE_UNKNOWN)) {
+	if ((strncmp(start_line, SRCLINE_UNKNOWN, strlen(SRCLINE_UNKNOWN)) != 0) &&
+	    (strncmp(end_line, SRCLINE_UNKNOWN, strlen(SRCLINE_UNKNOWN)) != 0)) {
 		scnprintf(buf, sizeof(buf), "[%s -> %s] %4ld",
 			  start_line, end_line, block_he->diff.cycles);
 	} else {
diff --git a/tools/perf/util/block-info.c b/tools/perf/util/block-info.c
index c4b030b..fbbb6d6 100644
--- a/tools/perf/util/block-info.c
+++ b/tools/perf/util/block-info.c
@@ -295,7 +295,8 @@ static int block_range_entry(struct perf_hpp_fmt *fmt, struct perf_hpp *hpp,
 	end_line = map__srcline(he->ms.map, bi->sym->start + bi->end,
 				he->ms.sym);
 
-	if ((start_line != SRCLINE_UNKNOWN) && (end_line != SRCLINE_UNKNOWN)) {
+	if ((strncmp(start_line, SRCLINE_UNKNOWN, strlen(SRCLINE_UNKNOWN)) != 0) &&
+	    (strncmp(end_line, SRCLINE_UNKNOWN, strlen(SRCLINE_UNKNOWN)) != 0)) {
 		scnprintf(buf, sizeof(buf), "[%s -> %s]",
 			  start_line, end_line);
 	} else {
diff --git a/tools/perf/util/map.c b/tools/perf/util/map.c
index a08ca27..9542851 100644
--- a/tools/perf/util/map.c
+++ b/tools/perf/util/map.c
@@ -431,7 +431,7 @@ int map__fprintf_srcline(struct map *map, u64 addr, const char *prefix,
 
 	if (map && map->dso) {
 		char *srcline = map__srcline(map, addr, NULL);
-		if (srcline != SRCLINE_UNKNOWN)
+		if (strncmp(srcline, SRCLINE_UNKNOWN, strlen(SRCLINE_UNKNOWN)) != 0)
 			ret = fprintf(fp, "%s%s", prefix, srcline);
 		free_srcline(srcline);
 	}

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/158462705662.28353.6097630422293165073.tip-bot2%40tip-bot2.
