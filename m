Return-Path: <clang-built-linux+bncBDZ7JWMQ2EGBB7WARLZQKGQEWKLCJ2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id A3DDC17C604
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Mar 2020 20:11:59 +0100 (CET)
Received: by mail-qk1-x73c.google.com with SMTP id a21sf2209199qkg.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Mar 2020 11:11:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583521918; cv=pass;
        d=google.com; s=arc-20160816;
        b=RM6wFVptOG3FhfzEs/ifMjglpvUWY42jelF4AE5Pf95IAMaq+tTp0F7uNIdi3XciLn
         T3+tMWdRPrsUZJVW+IuF7ux/YddZr3KytOAPHEaF+5khPEV0sml2PmiJBrIvzXtld8Bv
         e4+JCbjoHnR2wORCRO/Kotu360d5a9ntjgAC75zizJDtFS9OiiXAoBtPTZrf/kjo3CKG
         KOwo1V5dyhRLEgFu9bWb+Z2lFv1fLRUqpNKsVLTpTQ4Yk/6u5me1/kK4XRIbNpMoSUs8
         +qkopkKYGGQAeH8/qdpdh1LQVtNFF35InzQtUy1r1HlCI6x7beE5pChQVWzQ+2ASPPww
         S0YQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=0Zlt3zgWVg5R0Lh21TIYTRH97CsVmXtghyCsrGdT6UI=;
        b=mBJ0F6MijbsYCcoAY5FU+dThmdI1QNsi9lg7Myg1DFyi1FhWtXYgxP7/kDabAO+qvV
         zuk0vTZ0QxJ1KxdQdC0FMyglIK90TcyyjzmFI7ESajMdDHuoVIIyOZ4LoIHbmnBXGmpx
         mwovzVRKY6s9LpYlhARVTwykBZf664FT6wDIczQ4cuHh0J+YvPDjbOcLpx2fC8GzkVJO
         HBPYw7HFdSVOxiGohirWvnk5eikrdCYZtctxp7hC4cNFnkqrVDUtGqlojff8XplkJawM
         WATznN3lhvQ3oCdu1v25HNIDlfBjqXlbP/4yKKGRDV+o4jkycfg1T5Holgt7XAse+rwD
         2Whw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=AdeQPfMv;
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0Zlt3zgWVg5R0Lh21TIYTRH97CsVmXtghyCsrGdT6UI=;
        b=JVUnm4Yf8ciTMWo/4K02b9T1iDbrW4Qo9KGcHXiwgeKL99ub2Yh/oVg8rBIV3AKYBL
         /rF4j9l+d18UdX7z0PzIQsse2BT3uIMyoPoJLkDYPGkAr1a2I+or388ZpCPL5yGpTO/d
         F+ErLklwxi1koWIcnqHRfvXSnmydiQrTeojzmBCw6Swd4RzwxOhxlxBQfAkMVsuVEJ7s
         gMTd8+M+KXLMIZ0M638o85Cx2dxbc47CkWzk96aQuVJ0SRPnx4BA1N39XsJSiKNp54ng
         NvHlvKGDLLLETey1VL9+5jWfQ0md8vaWnwXKQlIGM4D2PbDZ5sUvwW2aNjWcxLXFK1S+
         PRYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0Zlt3zgWVg5R0Lh21TIYTRH97CsVmXtghyCsrGdT6UI=;
        b=qKa8p7oDMD3dK3/l+N8+t0l52C/vqnPflk8hljz7Jmjac+eIOiRyRj4T6qHM+haPaC
         vXH1K2GbBUD2ZKUfdXmRBfEZ0vOmCa5ESCIupFYrITIy0du0op7oC/zssQLxnbeZ+Oqa
         OEzTCsBVfERZKFNBxRgCwHStSm6ksX+Mvh2BbUsFyPjKGzTD07Gjxu7KlQBBnfGutOoH
         KzizU3m+P6xTueKfhosuuyzPe4No8TTh441fF7RphkeyztJ/mgZi3haL1xC7BIQoahop
         X1bGd/U06uHaElS9zu4+NNmH2KjWoztkODxEMdbDUtjFHtchXINPWO/fZYzTro33JQQC
         eQWg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0XLmDqd8OM6UVlfeoD7AvOzSZFY5qZcqaqnL0Zv7W19Bs9brOW
	0bH2j4ftYNJ1bZTkXk/HCvE=
X-Google-Smtp-Source: ADFU+vuG/7dRLnHJElVs6bTIw4e4zR9L+48Kh/VcWMSLpbnBdh+g6qpuseJCvvN5QNiJJ9TWhUPrAw==
X-Received: by 2002:ac8:44bb:: with SMTP id a27mr4320286qto.160.1583521918556;
        Fri, 06 Mar 2020 11:11:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:a784:: with SMTP id q126ls922550qke.11.gmail; Fri, 06
 Mar 2020 11:11:58 -0800 (PST)
X-Received: by 2002:a37:73c7:: with SMTP id o190mr4495298qkc.490.1583521918097;
        Fri, 06 Mar 2020 11:11:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583521918; cv=none;
        d=google.com; s=arc-20160816;
        b=0SIXVDU98YE5XoGneoYQ7NNww2Sw65RucXvddOXkPTtWTTif7v5rGJQBMUHU4Kzx4i
         MNZscOqebSL2JN4fKXTKgzgKSi6Sg1r8QSdlsdMGnYcKWod3Qq5IeHoiEbx/0mVa5lgU
         1Wox+x/on2C52PzwcWjQycgAfU0HBTMvbIHWhrjQ4Qor526h2RebIPZ8eKdYPIU9Ywoz
         VRm1mgqqO/3u9Xb4Hk20beni2aistetf7YDrZOIk6swS5cUQm9l+DiCO3QO/hjpKI4A5
         y0ZP0TAZINQUG2UpGB9JsRb20/4gOsD839kHL2oFqykCp8uNn2FujvOEe0GkXallsZiM
         p3jA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=sx8FghebRN6FxkEiLvclUNVhiOyB+5K99Zp/4LNolOU=;
        b=aXZAWu8PLrgR/ht0hIqYx9S3HcUy6j1oPXKSaavgPFhPCo7FspJnb3mwAZg1Noc2gI
         0d8pX+DGH+NfUh3TJVijHNqM2jnjx5dFKcTfNjHN0rHl0nCsBztSsMXcRzbJhHzhQT31
         OjoCQC0y+149IySZcwCbCMPM0vLxzz3GfNe7C6oNwGr/yyigzNWnpDD0Z4FQjgD7xQgx
         tONpo3kkHJeYiMIVrkBU3oK+w36gFkB2NV+YpCdBEaN2oXAE5BOjXsBaOoafwkQTYTQi
         XL0bUhulYJ2BF0XsQClsU5Xx60g06RjoMEq38z3FdXdPAXq6IxtmsCHwhOojkKymK3Ls
         86fg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=AdeQPfMv;
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 198si116094qkh.7.2020.03.06.11.11.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Mar 2020 11:11:58 -0800 (PST)
Received-SPF: pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from quaco.ghostprotocols.net (unknown [179.97.37.151])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B6C3F20684;
	Fri,  6 Mar 2020 19:11:52 +0000 (UTC)
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Ingo Molnar <mingo@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>
Cc: Jiri Olsa <jolsa@kernel.org>,
	Namhyung Kim <namhyung@kernel.org>,
	Clark Williams <williams@redhat.com>,
	linux-kernel@vger.kernel.org,
	linux-perf-users@vger.kernel.org,
	Nick Desaulniers <nick.desaulniers@gmail.com>,
	Ian Rogers <irogers@google.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Changbin Du <changbin.du@intel.com>,
	Jin Yao <yao.jin@linux.intel.com>,
	Jiri Olsa <jolsa@redhat.com>,
	John Keeping <john@metanate.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Song Liu <songliubraving@fb.com>,
	clang-built-linux@googlegroups.com,
	Arnaldo Carvalho de Melo <acme@redhat.com>
Subject: [PATCH 1/6] perf diff: Fix undefined string comparision spotted by clang's -Wstring-compare
Date: Fri,  6 Mar 2020 16:11:34 -0300
Message-Id: <20200306191144.12762-2-acme@kernel.org>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200306191144.12762-1-acme@kernel.org>
References: <20200306191144.12762-1-acme@kernel.org>
MIME-Version: 1.0
X-Original-Sender: acme@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=AdeQPfMv;       spf=pass
 (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=acme@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

From: Nick Desaulniers <nick.desaulniers@gmail.com>

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
index f8b6ae557d8b..c03c36fde7e2 100644
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
index c4b030bf6ec2..fbbb6d640dad 100644
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
index a08ca276098e..95428511300d 100644
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
2.21.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200306191144.12762-2-acme%40kernel.org.
