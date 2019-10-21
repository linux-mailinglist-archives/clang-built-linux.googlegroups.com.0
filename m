Return-Path: <clang-built-linux+bncBDZ7JWMQ2EGBBAPKW3WQKGQE3PHU24I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id F1D64DEDDC
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Oct 2019 15:39:14 +0200 (CEST)
Received: by mail-qt1-x83d.google.com with SMTP id x50sf2921724qth.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Oct 2019 06:39:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571665154; cv=pass;
        d=google.com; s=arc-20160816;
        b=jO3ZZwbdy1Opzhk54eGPYWYm8Lc6RGcqFbgPA3XpHzT2TwLSKuVyZeQeZY/gaZ/rGa
         VBI9PH5rbeY+con4yq9yecLGSvCFEhcIMXxhJmux2OmVaVnp6mvFShh8lKC1kUyiLA0V
         Rgw12sFMExoXh4vcUD2RRkYgm4ObsM3x7wnR8eY0qjrz3G3uLDzsGpAj8FkIcoF14/XT
         cFGmlMSoR99iKFEMTzQdNLGo+2oRHUA7Iz1qf295B5K+ZTMszcVJcfg5LbOQljZiQbyo
         ugmI/QjWQCTXOlg9lfk04lVZiDHJgET/Sg6+Dj9I70Zj2XmDPePm/sx3Wps0J1O31KvB
         QYvw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=YmykZlkC1X6QAKXUzWrNvFnjEgFwNR0nkvpvC5VbjJA=;
        b=aBqEbndp5bpzgFJ6/lLIn3w/3ttkIFgdQArc6gNJIhx9g+UPfqdgGOmJ4Sqb3910/a
         RsdSrnRxpFsqdUrRhjUz0IZLfSa7qQkXh4eyA1bUrHhLrXKm28ZZyYoL8DccfwvcvUJm
         5Iwtaye6DG9VBC5vziydS3w1Fl70XvaG2/6uEIWdLmMJ0m8nJkm+aBtZ76RiE3/MF5Vt
         kbkk8PcvpRppixmXulzWFSZGmKdQ69tV9wl4+i+bp1zn+sjpJ02NsCPz4lGdlbQWEtu4
         x//89Ltdu3Oln4f3Copyw5kQAseQL1nVdHTx9z7QUZcJsmIqtHRSjs+cGOa4T76nX0/n
         0C+w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="j/HgQYS+";
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YmykZlkC1X6QAKXUzWrNvFnjEgFwNR0nkvpvC5VbjJA=;
        b=LIRTOLegTa6KIdRVZJXrrPiQNf7CJHPCtEnYQhscLc2EfOAU9rnQc3DBfgmM2t9OOS
         sBJWWBs1REuj4joZzLKAzzeFqoQEXn1LnpV173GynmRK/0P8/K39TTzYmYDmjyigBGlZ
         j3+VVGqwuWwtVP8M/S0UFHsSTPxDH3K+HSlc8zt3ikdKdh+yGWvGQXkAgi3+O5Y4QCVx
         cISUW2M23JFqdiqauoHoiHX1Dcxaz0fnHGL55qGZ5F8nhnSaiIJ08A4Xhk0dZJJ6AYcO
         vJZq2KO+6CU4TU0laLAzkVWcq+Ue5TBTTQG4PJexyv6+eaND7X38n+5XlL5tW9ysvRLz
         c7IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YmykZlkC1X6QAKXUzWrNvFnjEgFwNR0nkvpvC5VbjJA=;
        b=WK/GFS6B7aZ4QAFCkyUn+0+859mZ6m7YcA+UDQwm5FzcsfJiLO9zEwE7zFeHVpRzAV
         Xy1FrZu6etTWVJgRVzwGYA0ahw8DHyQtYww8iZWlwcKgxZjMwLTo+YB77EyKW9c4W4FO
         0TtKFCIMlDmTG/MOq5K6Qs9nj3rnd4HSzgl5FqF9ORwnCqz5G3ySQO2ikHJvDL1qykEJ
         37441umyAz9tFgMOUsZ1aSjC+umcwUYY92u4zlq+aDT6w07g/GMs+cl6JBEw2vMhDSPP
         ctXQape25dRW0VfbST3XK1fXskTdCwWjTsjz8IkHTHdXSQ1hLlS4FqqMqNCFnUbuQOpp
         3Vzw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWtXJ/9lHCDih1pmT0xe2LMO28xuDOQFtDOg1ub1hB+2K3AVxH3
	SM6OSDOV4JPRo+9g2jbpe/4=
X-Google-Smtp-Source: APXvYqxHnHnsDhq2Jrtod1rBK76QdKrzWsZr7KC4YCwdsmY1LMOUKOjBxnWBp6UkBmgwPDyETYKGYQ==
X-Received: by 2002:ac8:7194:: with SMTP id w20mr14476398qto.243.1571665153799;
        Mon, 21 Oct 2019 06:39:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:5248:: with SMTP id y8ls962993qtn.4.gmail; Mon, 21 Oct
 2019 06:39:13 -0700 (PDT)
X-Received: by 2002:ac8:4915:: with SMTP id e21mr24720969qtq.69.1571665153506;
        Mon, 21 Oct 2019 06:39:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571665153; cv=none;
        d=google.com; s=arc-20160816;
        b=Ccl8R2rdhtXr7FxdFwSeXuQXk6PbXzV5Uct0SOt7Da3cASNCMIUz+Dcy9BG491Cvsq
         KNJQbp/yG17cgRMgke1F96oBq79RuNKCQsmy2aNFIciFv9OcCgDzx3aHxM909JrNtfYY
         kQRPgxdTOOSQ65LogEO6FpSrLesJtCfnOR0iHkbYQngm2AsB9aPo+K6bk5DChUEzSd3y
         qy9a3lRKX8mEWvvjiJ+8EmbAyaHA4xwxcU+2FEsqDhE/wHQwtI/VHiNFzD6v4EcpofAY
         sZNq5O7y83zV4YJGQiTtnl9e0WJyUX2VQAYKVMCxfoLTUA4lir8wI/Xusb6Rq4/3Zg8F
         LBAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=z1LDoS3I5B9MH0jbCrAIcagC/hSZm+3ymJSKEFyv3UI=;
        b=PsvLoHJAfodPCptroj2QYNho3QvuHW+A9c0QhWtEuDW8h39EgxCk20rGJSeYti15ov
         UTQ+KVzsGGHzepWa95X3/tdJeO46Pgdl5TCUF8+r4BtX55rQ6FooU6riP8KfofvIGUom
         b1tudfuA2yqSB+W7ynowwBQAC30uIrUOmQhJLviHf6PNV6WTUb84KA19/uR6+tIGfFAR
         sCHgaPq+Xl73HY/HYDZI0Ih78siRiqLvlmc9mHO2V4I1aNwV7kYkx3xYebyqVcUiHVou
         fxRB0h0exbHFjgcXLDp819/Pozza2l0dNx9qOXoHotZirwv1jjMnIYPrX1C/HuEK4YOg
         C4wQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="j/HgQYS+";
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l189si617714qke.6.2019.10.21.06.39.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Oct 2019 06:39:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from quaco.ghostprotocols.net (unknown [179.97.35.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0A305222D2;
	Mon, 21 Oct 2019 13:39:08 +0000 (UTC)
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Ingo Molnar <mingo@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>
Cc: Jiri Olsa <jolsa@kernel.org>,
	Namhyung Kim <namhyung@kernel.org>,
	Clark Williams <williams@redhat.com>,
	linux-kernel@vger.kernel.org,
	linux-perf-users@vger.kernel.org,
	Ian Rogers <irogers@google.com>,
	Arnaldo Carvalho de Melo <acme@redhat.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Jin Yao <yao.jin@linux.intel.com>,
	Jiri Olsa <jolsa@redhat.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Song Liu <songliubraving@fb.com>,
	Stephane Eranian <eranian@google.com>,
	clang-built-linux@googlegroups.com
Subject: [PATCH 09/57] perf annotate: Don't pipe objdump output through 'grep' command
Date: Mon, 21 Oct 2019 10:37:46 -0300
Message-Id: <20191021133834.25998-10-acme@kernel.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191021133834.25998-1-acme@kernel.org>
References: <20191021133834.25998-1-acme@kernel.org>
MIME-Version: 1.0
X-Original-Sender: acme@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="j/HgQYS+";       spf=pass
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

Simplify the objdump command by not piping the output of objdump through
grep. Instead, drop lines that match the grep pattern during the reading
loop.

Signed-off-by: Ian Rogers <irogers@google.com>
Tested-by: Arnaldo Carvalho de Melo <acme@redhat.com>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Jin Yao <yao.jin@linux.intel.com>
Cc: Jiri Olsa <jolsa@redhat.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Song Liu <songliubraving@fb.com>
Cc: Stephane Eranian <eranian@google.com>
Cc: clang-built-linux@googlegroups.com
Link: http://lore.kernel.org/lkml/20191010183649.23768-4-irogers@google.com
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
---
 tools/perf/util/annotate.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/tools/perf/util/annotate.c b/tools/perf/util/annotate.c
index 9835666db5a7..0e052e253835 100644
--- a/tools/perf/util/annotate.c
+++ b/tools/perf/util/annotate.c
@@ -1916,7 +1916,7 @@ static int symbol__disassemble(struct symbol *sym, struct annotate_args *args)
 	err = asprintf(&command,
 		 "%s %s%s --start-address=0x%016" PRIx64
 		 " --stop-address=0x%016" PRIx64
-		 " -l -d %s %s -C \"$1\" 2>/dev/null|grep -v \"$1:\"|expand",
+		 " -l -d %s %s -C \"$1\" 2>/dev/null|expand",
 		 opts->objdump_path ?: "objdump",
 		 opts->disassembler_style ? "-M " : "",
 		 opts->disassembler_style ?: "",
@@ -1962,9 +1962,16 @@ static int symbol__disassemble(struct symbol *sym, struct annotate_args *args)
 
 	nline = 0;
 	while (!feof(file)) {
+		const char *match;
+
 		if (getline(&line, &line_len, file) < 0 || !line)
 			break;
 
+		/* Skip lines containing "filename:" */
+		match = strstr(line, symfs_filename);
+		if (match && match[strlen(symfs_filename)] == ':')
+			continue;
+
 		/*
 		 * The source code line number (lineno) needs to be kept in
 		 * across calls to symbol__parse_objdump_line(), so that it
-- 
2.21.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191021133834.25998-10-acme%40kernel.org.
