Return-Path: <clang-built-linux+bncBDJKZSEQ3YKRBFM6RXZQKGQEFQTHQNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-f57.google.com (mail-wr1-f57.google.com [209.85.221.57])
	by mail.lfdr.de (Postfix) with ESMTPS id 021AA17CCA7
	for <lists+clang-built-linux@lfdr.de>; Sat,  7 Mar 2020 08:36:53 +0100 (CET)
Received: by mail-wr1-f57.google.com with SMTP id u8sf2101852wrq.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Mar 2020 23:36:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583566613; cv=pass;
        d=google.com; s=arc-20160816;
        b=wiiWUTmND+r86xlBiELi8cPQDhtvT8PGF8KDc/iO3GWc8Zvu12QfqqHXcLW+38gbtj
         oWceFgvlVX7WRxsjJA6ZIriJ/ZqOl2me6aidR0Aw9REbtp/6QRGrRGZcF0BR5ts4jS2J
         kljpc7WCaX3yXFay6JVYeAhqS6l9COhCWIbUBYA5jiab3pWA3+gqMd/nF8lP3+9Z7Vjq
         lWUUlRoVqE2PoMS+QyLvB4vtryiUhfeZKoY4rFq19up5abYd4LO/vEn8uRk2J8QtrPeS
         WmSgDjhyq/MI8v6uQzcKkCmkTiXRf1sePM+c23EZK9YDn8UwWWWt5WAu9y+YvDJ1b082
         blqg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:robot-unsubscribe:robot-id
         :message-id:mime-version:references:in-reply-to:cc:subject:to
         :reply-to:sender:from:date;
        bh=n9t/+ASjO/1nxbL08ScyNlIY4MvtJwMzucM7sPQ9pgw=;
        b=HmTj1uxWYWBDST1sYVwlFaQcEFWGTz5Sxf7x3gjKoyDAhdZVuHXzsXvNOMdzOdt9BD
         rO6OkDknKaV32gxvvz3kzTSKA7CfxPCoR7uCvi7/aeGoZ/sfxKoxGkFRbIUh4pfsO6AS
         SKUslMwhd3snV+Aij2X5ilRiQi76ajlf8aRsH4CzyAYkecruebeLHJMI4VBeMko8L8SC
         QAedsSGbr0ZyUD4U+MN4K5t5TTxyPy054y9429kRFaBGKQDoYezMJ1f9j66FvpuGK7V3
         FU0cH5yTGBtQaVct8ZzrZtFeEqRSaBQNZeaR57BRZySMGr/E7qkwl5Y0YlpvG9bE9uFO
         HDMA==
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
        bh=n9t/+ASjO/1nxbL08ScyNlIY4MvtJwMzucM7sPQ9pgw=;
        b=XIGyA0B13xRdCwhrti1AhgQpXH8CVRYjvSgcR11DUSSABisX9UoF1Gem9dhnX9KnvA
         KZQrHi57qm2qn3zW0su5PoMHDo2M64NjX2mIBDx20GscrfmCp02PNBCoYrkD6BGgTEHw
         vP1JRo9XrAjuRBPMCXxEE6MRpP88QTd1FfGR9meV4Vc78Vv1Zx0HIdmKPcD7aJIa+wwh
         5DPY/YYAbtLTMGWK7gu3xkDy3sLYTR4/qqs1Io2oYvlWLwysKcXTuZB5wiHMpTWGI39v
         bAFle1VzyRks1z7lSai/+GtomTHWIsgGNTBrt6t8W+6gLoPunJF2eGezHmp7piVVPny2
         vUQw==
X-Gm-Message-State: ANhLgQ0IfOll7LkDD+UWhMfuR2mwkzkFadap1VSyvMFbKdNrYtminmBC
	w7JI2/OD/23W0DyRw9XAXbk=
X-Google-Smtp-Source: ADFU+vvDdf5Ce5QXUGyrGB0UuEEKcUHJw88uNRtewWHR+fM4HGo50We0mk9SN3N5yXDUpY/R8m9P/A==
X-Received: by 2002:a5d:4acc:: with SMTP id y12mr7600103wrs.385.1583566613701;
        Fri, 06 Mar 2020 23:36:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:5233:: with SMTP id i19ls92393wra.6.gmail; Fri, 06 Mar
 2020 23:36:53 -0800 (PST)
X-Received: by 2002:adf:ead0:: with SMTP id o16mr8475884wrn.239.1583566613179;
        Fri, 06 Mar 2020 23:36:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583566613; cv=none;
        d=google.com; s=arc-20160816;
        b=h2jtDE1kjxHG4P09s6cmSlgtIzUSqp8RQnz4klfXspRREFq7lc+4JP3YZLlbpw1/d1
         bTiwUYWIr2ZBJ4YoY0T1iTh6MCJE5/qQ0mi3e4d5t36moxYr+PF+NgthEJEeF+Bd3HHW
         qeN3d5d1ANGLG81JxsnHBSh7mmqtiYjGzpe2HM8IhqsgrUKU0eSbyWhQdn4AsW3wIqnQ
         5daSto8oi3hHsWYm3I4eWrAbUNESU4mzOEED8g6ofdoKS2lDvlaMTXh33EV7btKTDreZ
         lnJJa6NaLV/7aduOij1ksiVa8jLdrwFNSnjtX6p2fgp7jlJnAXCzGj+6SIEJkRL1mNNd
         uXtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:precedence:robot-unsubscribe:robot-id
         :message-id:mime-version:references:in-reply-to:cc:subject:to
         :reply-to:sender:from:date;
        bh=6dThfqDyIQ3JqEi/S7CGAGBjBEn288UItH6fO0rTw80=;
        b=SmXwB+tW5yWmYkvVdBn59lUGD8V0NUDWo/NxC6gdTb8eY8kW5RiIBSN5Qmr5s4FDRY
         eVjzX/VUueDbrm994KHxqDaY7gpLX4sv1uyn3E4FcngtxAcTDpxpzLfltVIlAySOq5pe
         oyEHQwc+/Sh+3XrtGJZuh3MJ5DdH/b64W3thiFIoRKNB0/SkwrrXWmY3KRpSlNVfS8iS
         aE73emvvCFmvhTBfWuPT4j/BdCm2wNNXe7MYJD5AC2G1rKCc9FsIZsf9zkPdD9Lk4JHw
         AxyyFiq56MrBz+6TDLDzrY+sbmACexihhl6EMY9QsQhoETX6OvLTRVC7MGtL76uOKdhU
         E2Cw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tip-bot2@linutronix.de
Received: from Galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id u9si217190wri.3.2020.03.06.23.36.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Fri, 06 Mar 2020 23:36:53 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Received: from [5.158.153.53] (helo=tip-bot2.lab.linutronix.de)
	by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
	(Exim 4.80)
	(envelope-from <tip-bot2@linutronix.de>)
	id 1jAU0v-0004Hm-8L; Sat, 07 Mar 2020 08:36:49 +0100
Received: from [127.0.1.1] (localhost [IPv6:::1])
	by tip-bot2.lab.linutronix.de (Postfix) with ESMTP id E35DC1C21A5;
	Sat,  7 Mar 2020 08:36:48 +0100 (CET)
Date: Sat, 07 Mar 2020 07:36:48 -0000
From: "tip-bot2 for Nick Desaulniers" <tip-bot2@linutronix.de>
Sender: tip-bot2@linutronix.de
Reply-to: linux-kernel@vger.kernel.org
To: linux-tip-commits@vger.kernel.org
Subject: [tip: perf/urgent] perf diff: Fix undefined string comparision
 spotted by clang's -Wstring-compare
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
Message-ID: <158356660863.28353.13163883291738121062.tip-bot2@tip-bot2>
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

The following commit has been merged into the perf/urgent branch of tip:

Commit-ID:     cfd3bc752a3f5529506d279deb42e3bc8055695b
Gitweb:        https://git.kernel.org/tip/cfd3bc752a3f5529506d279deb42e3bc8055695b
Author:        Nick Desaulniers <nick.desaulniers@gmail.com>
AuthorDate:    Sun, 23 Feb 2020 11:34:49 -08:00
Committer:     Arnaldo Carvalho de Melo <acme@redhat.com>
CommitterDate: Fri, 06 Mar 2020 08:30:29 -03:00

perf diff: Fix undefined string comparision spotted by clang's -Wstring-compare

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/158356660863.28353.13163883291738121062.tip-bot2%40tip-bot2.
