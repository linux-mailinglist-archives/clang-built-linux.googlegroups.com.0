Return-Path: <clang-built-linux+bncBDPPFIEASMFBBXXU7XWAKGQENI5OPEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3b.google.com (mail-yw1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id A7750D3083
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Oct 2019 20:37:19 +0200 (CEST)
Received: by mail-yw1-xc3b.google.com with SMTP id j15sf5325925ywg.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Oct 2019 11:37:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570732638; cv=pass;
        d=google.com; s=arc-20160816;
        b=t4XOBLN4dtslVx5WrBChC/rD0H/ex7tr69pPljdKKS0Ls156OWmSvOpwERVa3+kCpx
         8FblJx7xxYveRLew/4q2Lg95l7dejz4jaNtVEOur6668s5iZ+oN8IYnotVSFqPeGqLTa
         XY+gVGHq36tybud7hI7AaJfVon+N5e0m79YkmO2yWFNGBdkmGxQXh0FOoD54aGCdjz2K
         2ev9MPQDEYhBBDPNWLD8gGzdt69gDuszj7cc0y7EELYb0szcxnxHtsTTk0RRAMkMtwXu
         PgErHx5Dc+oe8jUlX68dSimUoEzk7xeQmHCrDcyAzi++OYbA0hW0w9hQNGPcQx9crA4t
         03xw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=tfiP6fyi0eVcKiFgcXKLBJiLBAFcPjiePFAQfk8PEzg=;
        b=JRTLL/P9vlSCN6QIhj1mY6jqMEJw4niLwWeoku1RGanTTOHToFOaLgZwQYclqQG/Ve
         xN4EDSDvvAa9ufYemcn8+So9GAnzIlhLfVJLHm5vy6KUT2GCNcZQlS9TEY3jlCT1uvBJ
         JgN74lquyOSh6tFZw4tlU4M2JMymbg0VW+vybRhgKB2WIu/LDdiSsaZwC9Nb2TC5qgvY
         nqFCx8s7t3aWr0a922sHZWElMFRGHgvoX4RSWC26CQqNHAqwsosrX/jYGGkehtxe+XZE
         LUPgZbynvI/AsPVZEZqaTho5WpYND6kQzPj84iBDu3WA0rA8+HRyaIXr42y8M5Du/rIy
         2Wdg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Si0K657W;
       spf=pass (google.com: domain of 3xxqfxqckeciqzwomz0owwotm.kwuktivo-j2qt1-tqv25owwotmozw2x0.kwu@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3XXqfXQcKEcIqzwomz0owwotm.kwuktivo-j2qt1-tqv25owwotmozw2x0.kwu@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tfiP6fyi0eVcKiFgcXKLBJiLBAFcPjiePFAQfk8PEzg=;
        b=HTL651IMeLgAg9bXOknwPlZ9PHQFKPdB5D5BugqTNCqC/mr28PwxqpchRLpSihJ7uL
         b0BymK3SCFeREzJnZsfrrIE1T8Cl3ToIFnE8meGWgrbTYXf3Mran9IFRD8u4DUfBBzlk
         WMLiHbXHrUZjXtNrQYwRHAR7L9hCUXynwagV9ZFzMnh6Fco2B+XgCCLtN3d8VZU3kBYW
         EZa7H/OdxoXvhFUelAmoznXX4Ai2xIzro2E95Fm0aLEMsBdlLNht4DcDz67AtLFq6FKE
         fU3b3R1xvMm/xuspEW+6VQn21j1o93HLvUxdckl8tzEcngSfzDCPxUIbfb0/bwqrKWTo
         Qvxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tfiP6fyi0eVcKiFgcXKLBJiLBAFcPjiePFAQfk8PEzg=;
        b=k4Vv35hNl076or4EvHARTwWPPllmvMivxlKDKjGEQDjGPHWMiH/oY5Y7LCDXJ6Bf7x
         rAuvp2773AoMG/sCbWoGre/XrIg8Qk/zOFpbCDLmjmA1klomxTWCt8/museWMshhVbm+
         kaFlSRNuSGWW8HJkbSZGECyllAkYSs4GoX3msVrkaEVGLUB7e8Fhziki7nQrYDeiKD6D
         k3wek+Jmbll1kJ8PMPkLCBuhVEYRs+33vhps5nGp18BZ06pCYtCd5ZTYvbVij9tkzrjT
         /xXR833Ap/Qz+T1DUCM1sOrrq15B6Rky1qF0FipWeNuZy48fxMOszRe0WN7jIJ7JgaAF
         5oZw==
X-Gm-Message-State: APjAAAUXMLiEREtAC/Mz0/Hcf6sDZ1vjRsYD63f14UqdNhvGT8DsNhWs
	V0U5ij1Cxh2DOsePruVRRNU=
X-Google-Smtp-Source: APXvYqznIq+R1PB98IGNMC45aVQDtcsCRU+FOXwDuXbqilRxRk6SLdEDZv2FA/abomleUEbRklnuJw==
X-Received: by 2002:a25:8149:: with SMTP id j9mr7135567ybm.148.1570732638638;
        Thu, 10 Oct 2019 11:37:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:c04f:: with SMTP id c76ls342545ybf.10.gmail; Thu, 10 Oct
 2019 11:37:18 -0700 (PDT)
X-Received: by 2002:a25:824c:: with SMTP id d12mr7427239ybn.213.1570732638289;
        Thu, 10 Oct 2019 11:37:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570732638; cv=none;
        d=google.com; s=arc-20160816;
        b=m+x1RFPRyRiTnE7mLXBA+jdFDvRZTH/Zp9kK1xgZ8dq/zNsXkxXnJ5d72RWWPMI1E4
         hGNUaulEes8so/plkG8Hq6PEVrzgouWeM1gHRFgNZY2yPwc22r8YtbGQToaJzcYB6VLj
         ZA1JINVl668wFvAvFwx1Z3GrLscGPUUnXs63NTSoJ3r6G0MCSHWVQHyO/T0sPgWHufFE
         O0jPUYQmUr+QpSEue7C0FS4EylU19QpEq8loqhwUM76UlRwLmdLCk+05/mF+m/ws0h4H
         KmvuntLv1Q94rrKBzR9l8HmKvqAJE1GRmACWVHRF8+3JKSauGq9ugOmrb9DN+kLJiCEh
         wS5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=+OGMGqzbdua1JvnmjrGnKHeEWLFeUVoFJYkCdgpO3Hs=;
        b=QOlN+vnnpy0voGWVbTGlwmVYX9cEcwlNwiEUxRJejsZXe3WG5nGactZh5+ULLy7B8D
         nJhIBQIqghTOPk3lNqQTjuPhm4nZYRmwLeUOYehON8/3AmvtuazfWPC+Itsq3uumgGm5
         zsHAia8qfgS4LrmUPF8cnPN0bWKP04NvjHXiVHtTrt5JAz8i38j1flsD4kcjSk2QNI8F
         Mo5pWk6c3otcGQy/sd76NrolpSWfVqLSQe/LSQmWgzOzbc0vFCwEBq/PX8gqTWK/5zZf
         ERuhqKYlvrZj/6N5hC+wnzp668pTqwvUm65OS5wBmwQeFwKbA0Z2SkGm0gEu9AQRgk25
         v4LA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Si0K657W;
       spf=pass (google.com: domain of 3xxqfxqckeciqzwomz0owwotm.kwuktivo-j2qt1-tqv25owwotmozw2x0.kwu@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3XXqfXQcKEcIqzwomz0owwotm.kwuktivo-j2qt1-tqv25owwotmozw2x0.kwu@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com. [2607:f8b0:4864:20::449])
        by gmr-mx.google.com with ESMTPS id u129si280835ywc.1.2019.10.10.11.37.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Oct 2019 11:37:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3xxqfxqckeciqzwomz0owwotm.kwuktivo-j2qt1-tqv25owwotmozw2x0.kwu@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) client-ip=2607:f8b0:4864:20::449;
Received: by mail-pf1-x449.google.com with SMTP id 22so5414391pfx.8
        for <clang-built-linux@googlegroups.com>; Thu, 10 Oct 2019 11:37:18 -0700 (PDT)
X-Received: by 2002:a63:6a46:: with SMTP id f67mr12116929pgc.87.1570732637239;
 Thu, 10 Oct 2019 11:37:17 -0700 (PDT)
Date: Thu, 10 Oct 2019 11:36:49 -0700
In-Reply-To: <20191010183649.23768-1-irogers@google.com>
Message-Id: <20191010183649.23768-6-irogers@google.com>
Mime-Version: 1.0
References: <20191010183649.23768-1-irogers@google.com>
X-Mailer: git-send-email 2.23.0.581.g78d2f28ef7-goog
Subject: [PATCH 5/5] perf annotate: fix objdump --no-show-raw-insn flag
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
 header.i=@google.com header.s=20161025 header.b=Si0K657W;       spf=pass
 (google.com: domain of 3xxqfxqckeciqzwomz0owwotm.kwuktivo-j2qt1-tqv25owwotmozw2x0.kwu@flex--irogers.bounces.google.com
 designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3XXqfXQcKEcIqzwomz0owwotm.kwuktivo-j2qt1-tqv25owwotmozw2x0.kwu@flex--irogers.bounces.google.com;
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

Remove redirection of objdump's stderr to /dev/null to help diagnose
failures.
Fix the '--no-show-raw' flag to be '--no-show-raw-insn' which binutils
is permissive and allows, but fails with LLVM objdump.

Signed-off-by: Ian Rogers <irogers@google.com>
---
 tools/perf/util/annotate.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/tools/perf/util/annotate.c b/tools/perf/util/annotate.c
index 3d5b9236576a..2a71c90a4921 100644
--- a/tools/perf/util/annotate.c
+++ b/tools/perf/util/annotate.c
@@ -1944,13 +1944,13 @@ static int symbol__disassemble(struct symbol *sym, struct annotate_args *args)
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
2.23.0.581.g78d2f28ef7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191010183649.23768-6-irogers%40google.com.
