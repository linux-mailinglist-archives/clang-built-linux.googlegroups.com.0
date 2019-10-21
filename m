Return-Path: <clang-built-linux+bncBDZ7JWMQ2EGBBCPKW3WQKGQEL7J66GY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3a.google.com (mail-vs1-xe3a.google.com [IPv6:2607:f8b0:4864:20::e3a])
	by mail.lfdr.de (Postfix) with ESMTPS id C2B3DDEDE2
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Oct 2019 15:39:22 +0200 (CEST)
Received: by mail-vs1-xe3a.google.com with SMTP id p10sf2873772vsn.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Oct 2019 06:39:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571665161; cv=pass;
        d=google.com; s=arc-20160816;
        b=ASF1H62XIxXTdI4SMzgRmYJqAHdM5znCQZMRXQtURFKh6E47vwoTabpCbWm7UfgTMo
         S0zF6Eox421uhtbSJZiAL5KYK4wGfu9OEc+wEOO/slvWdQNMK+TUiNhyyoHOeVvyb575
         2sXqEpLIstddCb1FzMu8YbathsG/5LkquoLoqQrEXLTpCGe2BQOZIu/rJnq85z7l9mqW
         azzN2Ufcx94Bhzo9fnwuT9J3Zy6JLeYAYB087SwWzxXYY9QAgfT7glEhWgv46qQkpJMw
         qKADXUae5rRZ1yijjgaMwqUBa8RjQ20aVjPnUTQyeTsQw5xNYTQw9i6hrSN660f51Xq+
         G46A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=QOhRecDLa2im75JIucHN8YWFzGsuR8V6PJMON3PN3Wk=;
        b=d0Fid6YpVvxVzozQDP/FVP5O9bGsuADKE7wBFmupyjAjgQUdTYgLdj+UmhUy0piKJg
         rEqN+tnQeALBGc5vwH7TQImYn2qUjnCq4C16IsFVK/zTDfKDofDEmisOgpUFSIVE7afe
         ZTez6MNmVC9WSrsj0tUIRYwM+O8hZ1KwyWh+NjqIyFG4J5xr34qaauWRAPNJkT7/FenF
         rsbOLVbyX2L9IEcWBULkACx6lm3XG6XdK0yMJU2RqWGvDLflK1VYtt+wb+FUOIaP8lGT
         xdbQfs405x2EWcHC+vi00SoRatIW/K4z18KUcqWP8EzL4gI6DkzrUICoiehRLq+rkax4
         8oIQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=PI94byNr;
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QOhRecDLa2im75JIucHN8YWFzGsuR8V6PJMON3PN3Wk=;
        b=D/R/L4rRFVYx2B1A/r5RpXn3UG2mlJxrsnW78XL4ZrDgsDlAbT0aSlqa0jZgjjxRk7
         M7m9VI3CAmxzGVdo5dkTO/bcOUuvejNoBkUo07OXM+38UO8X5cw13ZTToJKNwMpL3jPm
         6OoLV68pOoiVktEyy4gbz9Il0yGcbCsVlz0it11BWQ0myLLlYIbV9vMKNeEvRjW13oCr
         LuhAPuVqoY0K5LTklxxtAVvLqxrghy2visQ/HDERLC75v/jyY9EIma12U4YtZROgJYRt
         TioHonzZuCXIGa8RNQe5mxo5Pr6gLc+xWPwJW9Vu5cs4dB6QXjKuUUp5VOrGqv3bvOmX
         tGeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QOhRecDLa2im75JIucHN8YWFzGsuR8V6PJMON3PN3Wk=;
        b=OfIpNY9n+zbdRN1Ikk46eku3ZSya6DBCSUMoGONzoedXZy93NS2lUsXSpMVc2p9w/c
         5gkhb5qMye9E0FJPAblvr0Tw9YMPpEhTrPEeegmlJVXQGduKIWX4uriO4q5CXzKbjlSC
         +RLlJ2fAjgEze66l5QfjVoku3rUYb0fgcZXOLctc+S88XAihHa5XJE0vZWIHbvW0+I8S
         E9MjT9CIkw1UyJeqs5Zv55s06FsELzwG+Ufc4UQezjzAOLC4/FtrdsCbHghVfw2+Z26j
         2n/ULXwp3gKVSLG8WWAXvwzBW2vBmNaR7+Y5l0+pHC6FapF4P2SUMSWJXibVn7mECuJH
         1cwQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU9/4U0TLdQP284ys1AtUtp6DDB3FO3Z4N4Yh7sInV1gnE43FZS
	HXLywskVE6Pvm8XpRMZB9nY=
X-Google-Smtp-Source: APXvYqwwbBBBu+U5cQbx/u2fLGtUaXKiLRJFz63MJq8naF2Jg+4NRBWHhEVi3l7Loyz53SnX39Vw2w==
X-Received: by 2002:a67:8841:: with SMTP id k62mr13776743vsd.101.1571665161794;
        Mon, 21 Oct 2019 06:39:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac5:cde8:: with SMTP id v8ls507313vkn.15.gmail; Mon, 21 Oct
 2019 06:39:21 -0700 (PDT)
X-Received: by 2002:a1f:acd0:: with SMTP id v199mr13005995vke.5.1571665161317;
        Mon, 21 Oct 2019 06:39:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571665161; cv=none;
        d=google.com; s=arc-20160816;
        b=lKImAugcXMNR3O9XElzwCYAdsxXO5qKyz8Hi/ZDTFDNUxy6JYpd166lEJQtkMH876o
         WbvRQBnjye5dLpH5bBUbbKqFTRhYBYE+A3nr0PXexO/QiMavlg80tw69PswaqUJ4QCF/
         jplLMePtAdZQiMpXHtHmE0KfitVlk8qV5Mx9MHi3eGiSIFM2sUFyf9dHItesxwu83mME
         iu380pxgZGe7RFtWfT82waKtG+8tkIcvSPL/ejd0/W2IvWlL/D8mexRpVZuJA07Gi6f2
         K9L5dMasavVNkr8kcntfn/FE43KaKhbY4kdrVqIZK260uJ2kRRcg6KT08pvkAo4wF8aB
         +RRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=SO4MbwsZSJNEBjI+48DsGR/MnBcIdc3EBJtz0hNdyTw=;
        b=VzXrMePVpP/0bLl9ExLjfaXYttjNPgYaETVa5pbhIaCa9Cqx3R0JdRsRnc73AJdsu7
         ILgxbvo2JcYAfcByTlv4DAlIoRKQQNl2rLJnMH2KuUHvmEaSMXZN6JTur3r+HTrZZgpg
         uq2v83JnbYyM7eGczlS5fbhHgiGSmDkjsqwZinIrEDtPYYEp7tQFd6YIfkAn+vYni2Q1
         HBxyDyTvAaxUoRUoBBNuU9qdiZBFdwHsB0Mgf/YoMGmHMZj+EKSNFhnBWjS7zElovuC9
         8XLYQP1jmIhTOLBKuIL5onH5wAP7A7JGooypBrm9CjYWt/ncbaNNVvhekRUHpfNR6ln1
         ZPdQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=PI94byNr;
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p18si704922vsn.1.2019.10.21.06.39.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Oct 2019 06:39:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from quaco.ghostprotocols.net (unknown [179.97.35.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C407120679;
	Mon, 21 Oct 2019 13:39:16 +0000 (UTC)
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Ingo Molnar <mingo@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>
Cc: Jiri Olsa <jolsa@kernel.org>,
	Namhyung Kim <namhyung@kernel.org>,
	Clark Williams <williams@redhat.com>,
	linux-kernel@vger.kernel.org,
	linux-perf-users@vger.kernel.org,
	Ian Rogers <irogers@google.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Jin Yao <yao.jin@linux.intel.com>,
	Jiri Olsa <jolsa@redhat.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Song Liu <songliubraving@fb.com>,
	Stephane Eranian <eranian@google.com>,
	clang-built-linux@googlegroups.com,
	Arnaldo Carvalho de Melo <acme@redhat.com>
Subject: [PATCH 11/57] perf annotate: Fix objdump --no-show-raw-insn flag
Date: Mon, 21 Oct 2019 10:37:48 -0300
Message-Id: <20191021133834.25998-12-acme@kernel.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191021133834.25998-1-acme@kernel.org>
References: <20191021133834.25998-1-acme@kernel.org>
MIME-Version: 1.0
X-Original-Sender: acme@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=PI94byNr;       spf=pass
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

From: Ian Rogers <irogers@google.com>

Remove redirection of objdump's stderr to /dev/null to help diagnose
failures.

Fix the '--no-show-raw' flag to be '--no-show-raw-insn' which binutils
is permissive and allows, but fails with LLVM objdump.

Signed-off-by: Ian Rogers <irogers@google.com>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Jin Yao <yao.jin@linux.intel.com>
Cc: Jiri Olsa <jolsa@redhat.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Song Liu <songliubraving@fb.com>
Cc: Stephane Eranian <eranian@google.com>
Cc: clang-built-linux@googlegroups.com
Link: http://lore.kernel.org/lkml/20191010183649.23768-6-irogers@google.com
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
---
 tools/perf/util/annotate.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/tools/perf/util/annotate.c b/tools/perf/util/annotate.c
index efc5bfef790a..eef8aa87db66 100644
--- a/tools/perf/util/annotate.c
+++ b/tools/perf/util/annotate.c
@@ -1966,13 +1966,13 @@ static int symbol__disassemble(struct symbol *sym, struct annotate_args *args)
 	err = asprintf(&command,
 		 "%s %s%s --start-address=0x%016" PRIx64
 		 " --stop-address=0x%016" PRIx64
-		 " -l -d %s %s -C \"$1\" 2>/dev/null",
+		 " -l -d %s %s -C \"$1\"",
 		 opts->objdump_path ?: "objdump",
 		 opts->disassembler_style ? "-M " : "",
 		 opts->disassembler_style ?: "",
 		 map__rip_2objdump(map, sym->start),
 		 map__rip_2objdump(map, sym->end),
-		 opts->show_asm_raw ? "" : "--no-show-raw",
+		 opts->show_asm_raw ? "" : "--no-show-raw-insn",
 		 opts->annotate_src ? "-S" : "");
 
 	if (err < 0) {
-- 
2.21.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191021133834.25998-12-acme%40kernel.org.
