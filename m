Return-Path: <clang-built-linux+bncBDPPFIEASMFBBWPU7XWAKGQEYPLERAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id 10875D3081
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Oct 2019 20:37:15 +0200 (CEST)
Received: by mail-io1-xd39.google.com with SMTP id r5sf11184323iop.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Oct 2019 11:37:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570732633; cv=pass;
        d=google.com; s=arc-20160816;
        b=BBpjRiW2M1Wx9CgwnXfs+wLZgpbjaW+ndgltkndHqnqJeR+JYG0oppu6xw3qfaWIjW
         aUiC+A317NRo4PbQ5UZy1C3YOWgR6QFF3fYdKXxBbd9zrMsE7NBwIzt30EL1Lfk2exIF
         2olvG6v2vbLjo62/znAbsD6u6296UWLtR1c1g62Al3TUO0Z6wklVefqyi5zVt8nReJok
         +TWXcFjETq0QAeZOjEIEKdQPw9T3L34QP3GGzV6kJHr1OaEpdQE8GpGooRs8/hWt5KHX
         VA2bXHV6C16aSX9LSS4F0PVuQq6hyQiwRExRhoy4LaKGGGUbHXwT/fgPbxU3IASIoBu6
         tlsg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=kqRwwKu2AOQAbPxla9p/V9FDhnTjXRvT8LHeYAJ6iVw=;
        b=QHvyfe1brwYPirWCdeWIGtrBVwhlhASn+354UK6e2ciX1bJgHUIHsnLc1EcfZ4hY9Q
         ZqhfevICyoIy0C1pxFRBVmu1DWOTA20zd3Li8U7m2PHyDmbp9KxSr900tjuxsXFNjSQR
         sNOV2u5w71H7rVAv+WApQmB2Gus8gS8RhSclk0U797caTGEpBnCHFw4LILCVz/0pKEYX
         g13pOj8e3xLJJYJxl1FSOwfiHVkoUUMXr4gxA5mQZ7ypZMImVgTR2JEwqrlj/Ctq8eCM
         2Qvf9yPUnyWe0zjOGXySnMYNXnTCLVbMiHZUuYbALGMbXLQYcs/ggq18zGHZu5kYkAal
         gSQg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=OwXUXE5Q;
       spf=pass (google.com: domain of 3whqfxqckeb0lurjhuvjrrjoh.frpfodqj-exlow-olqx0jrrjohjurxsv.frp@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3WHqfXQcKEb0lurjhuvjrrjoh.frpfodqj-exlow-olqx0jrrjohjurxsv.frp@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kqRwwKu2AOQAbPxla9p/V9FDhnTjXRvT8LHeYAJ6iVw=;
        b=OFsEhHaP5mkE+wcbDq+1ujHVNYgdpjj/rowQ9uAMvZuxaOyEyyHNCEnXl5ExrBMjG1
         hOPxGt42IsLVOZNNjnJYoJhynwy4Ho+H8akuqYwKBTjbfwLlcODqkVWDBYRYjLeN7nyk
         2q9K9vLQdDTChOpmuWeqJEV/8fPHCpe8nQAxBtU+OTm8daXPIuBRH/v70nvZckgSjnfG
         Z8Aa3GrdmCCPRP04g9Ne0c2LB44HQYfmP1L3y2bQzVtr5TRrJkL0BZC5G8E8MYwdv4As
         eWg+7B79O1n+wCXxuKS5+gh5brDuQkaHd7fUuu4VfD8Pg7CzJS9aIDRtlOr8tW4VWyWr
         Xf7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kqRwwKu2AOQAbPxla9p/V9FDhnTjXRvT8LHeYAJ6iVw=;
        b=peCtsobGhb2HWlx5NAVlp7n27ntWIREl+LdUKvtgeJsrQ8KRwKoQSeCJ2nM6V+rlFK
         238En75i3T2HNhWC6S77Tk2U12DWRXBXYYdeZSGed2Md9lEE/s5cPH1xI3gUkEcgpqRe
         WOllM5kVQt6AQeBZUOI7U3aCZ0GjgBd65kUdROLdKlsQglWqICWOOjz08+nTo8QjJN8p
         5u+qlquR/HeQOU0MxeuQe9NlhO1FA7jPGaHu6LTwcqmuLmjSgVtfPY6u+cPlMHe3WC3T
         NWoIbaRCj4rFmV7vuuH6tUYWWWGSPUbbWDPzgys4CzI4OTpv4u460gBoqs8oDv0FcK//
         cF6A==
X-Gm-Message-State: APjAAAUacXNQyF8pBtRc3gmdlv3r7firT6dDLiR9t/jNCI11Jc4cOKau
	LsRuQVUg0naD7Yp+HL/5GzM=
X-Google-Smtp-Source: APXvYqxFi9pFQpg4PYpbhLu5o9Gi1GpuT/EviXjtRPGhIDYsf07cO/iTirBRRNiXgD5M3kYcoGpxjw==
X-Received: by 2002:a5e:d904:: with SMTP id n4mr606376iop.186.1570732633582;
        Thu, 10 Oct 2019 11:37:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:c6b9:: with SMTP id o25ls722990jan.3.gmail; Thu, 10 Oct
 2019 11:37:13 -0700 (PDT)
X-Received: by 2002:a02:2944:: with SMTP id p65mr12119599jap.14.1570732633208;
        Thu, 10 Oct 2019 11:37:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570732633; cv=none;
        d=google.com; s=arc-20160816;
        b=jg92fMIB8wkncjpGhNjEmQ6VyUUH0KsGtoCuGQWNEDCN6Yqqal9Fl0ZmbeBJYY7HPg
         vp00A7PQQ55D4+mMWJs860q1zevvrfq4AGEa4NsdLv9Zmj5TAm0XXJ8Hb3R6tv8uN0/U
         8wE/mbNrb7Kjqq15BWSO/HGmeTYfh3vVhwTQpz8L9J7qA+CHs1LDE+BA/lTsKXT1g2fK
         TAv5/F/2ayaAOS7OZ1wKbrYaH+mPdtgaJB0ULeOm1NLYjCjqproQ4mMgZylMT8TV1hBC
         R4QmHL87ua59MVwcnPKw8WQlIbxr4f9viuv6dmo5tmdfD/EYlDC+HK7n/SGLlpWs0M7s
         2t2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=xR9Hy/PtpZZvM1f3o0+fyrvu2Chu4oRVLAVkvfu//jI=;
        b=efFjX2kYnUYQsXv5bDwRyZYKvcX8m7tvSgVg5bBHP3VDWFUuMbiPJ+0hiBITe+6+ig
         DW3Djdt5K8+NaT/qAJcbugcG0IfT5jICNF+zeHjG6XV+YSVqWA47UO58nTJwqCxjvdRn
         0qbooRc7SPuzOWr9FlYjXXPfTmtuCxIqnhPfwZ/Y4R1EAgIFPgSon21EVagIjbOOlS8a
         YAGTGCN/IBtCHkjtaC0NR9Lrp3FiLOrw6EAc51A34dlQbmt/V1/9upTHIzeOmujsdpF2
         71bIpF/HypYwFbPc5EB+NUHBQS1k6K08GlGsnnsMriY32unfeLjnCIt27Qayta9A/OxO
         foew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=OwXUXE5Q;
       spf=pass (google.com: domain of 3whqfxqckeb0lurjhuvjrrjoh.frpfodqj-exlow-olqx0jrrjohjurxsv.frp@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3WHqfXQcKEb0lurjhuvjrrjoh.frpfodqj-exlow-olqx0jrrjohjurxsv.frp@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com. [2607:f8b0:4864:20::449])
        by gmr-mx.google.com with ESMTPS id b206si12620iof.0.2019.10.10.11.37.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Oct 2019 11:37:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3whqfxqckeb0lurjhuvjrrjoh.frpfodqj-exlow-olqx0jrrjohjurxsv.frp@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) client-ip=2607:f8b0:4864:20::449;
Received: by mail-pf1-x449.google.com with SMTP id b17so5378363pfo.23
        for <clang-built-linux@googlegroups.com>; Thu, 10 Oct 2019 11:37:13 -0700 (PDT)
X-Received: by 2002:a63:1002:: with SMTP id f2mr12904242pgl.207.1570732632340;
 Thu, 10 Oct 2019 11:37:12 -0700 (PDT)
Date: Thu, 10 Oct 2019 11:36:47 -0700
In-Reply-To: <20191010183649.23768-1-irogers@google.com>
Message-Id: <20191010183649.23768-4-irogers@google.com>
Mime-Version: 1.0
References: <20191010183649.23768-1-irogers@google.com>
X-Mailer: git-send-email 2.23.0.581.g78d2f28ef7-goog
Subject: [PATCH 3/5] perf annotate: don't pipe objdump output through grep
From: "'Ian Rogers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, Jin Yao <yao.jin@linux.intel.com>, 
	Song Liu <songliubraving@fb.com>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Cc: Stephane Eranian <eranian@google.com>, Ian Rogers <irogers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: irogers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=OwXUXE5Q;       spf=pass
 (google.com: domain of 3whqfxqckeb0lurjhuvjrrjoh.frpfodqj-exlow-olqx0jrrjohjurxsv.frp@flex--irogers.bounces.google.com
 designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3WHqfXQcKEb0lurjhuvjrrjoh.frpfodqj-exlow-olqx0jrrjohjurxsv.frp@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Ian Rogers <irogers@google.com>
Reply-To: Ian Rogers <irogers@google.com>
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

Simplify the objdump command by not piping the output of objdump through
grep. Instead, drop lines that match the grep pattern during the reading
loop.

Signed-off-by: Ian Rogers <irogers@google.com>
---
 tools/perf/util/annotate.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/tools/perf/util/annotate.c b/tools/perf/util/annotate.c
index fc12c5cfe112..0a7a6f3c55f4 100644
--- a/tools/perf/util/annotate.c
+++ b/tools/perf/util/annotate.c
@@ -1894,7 +1894,7 @@ static int symbol__disassemble(struct symbol *sym, struct annotate_args *args)
 	err = asprintf(&command,
 		 "%s %s%s --start-address=0x%016" PRIx64
 		 " --stop-address=0x%016" PRIx64
-		 " -l -d %s %s -C \"$1\" 2>/dev/null|grep -v \"$1:\"|expand",
+		 " -l -d %s %s -C \"$1\" 2>/dev/null|expand",
 		 opts->objdump_path ?: "objdump",
 		 opts->disassembler_style ? "-M " : "",
 		 opts->disassembler_style ?: "",
@@ -1940,9 +1940,16 @@ static int symbol__disassemble(struct symbol *sym, struct annotate_args *args)
 
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
2.23.0.581.g78d2f28ef7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191010183649.23768-4-irogers%40google.com.
