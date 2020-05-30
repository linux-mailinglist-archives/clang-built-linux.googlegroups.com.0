Return-Path: <clang-built-linux+bncBDPPFIEASMFBBWVOZD3AKGQE7IR4Y4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 38D6D1E8FAF
	for <lists+clang-built-linux@lfdr.de>; Sat, 30 May 2020 10:20:43 +0200 (CEST)
Received: by mail-il1-x13d.google.com with SMTP id k18sf4359157ilq.4
        for <lists+clang-built-linux@lfdr.de>; Sat, 30 May 2020 01:20:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590826842; cv=pass;
        d=google.com; s=arc-20160816;
        b=kZ7HRBVNHpLVFu4Zk3IC+/U8zG18B6bXrEInmVFNZdGscVlvk6QLqqOGcBTzGuSaR2
         tRSlseO9J566CRh+WiAWiC9twJnSLbtVz4M5C7HGxl2elQaTv2/AOn5ax/D2iFF9mE6V
         8hW6NT+eYakUkgfEPt/8k3Vi5bUEtvIkEQDykM8rlzzn1L/T/Zb5xqwR7FyR24MlC7y1
         vXInhKCBU2qgmJpRfCGUTMkCkYG581+qEglACRwnuFGP09lc2veyDHFi/8+z+MB0SVrC
         V9lyWevKOh1q/j0PkhHtR2mY7VXyODTq/1FgG+mgTk+xiEBYbb7UFYnCgN7C8B2IR3W5
         qFhw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=SVXNn2+qYLWvaWGZzTrmrgaBkCHt5sxtS3s0QjbGVto=;
        b=UAKFpWNGXVAT+GCYag5wAkQaItYI3bp3/FvFaMrXe5Q6bK1RIcNs3enbHlpxJX/PlE
         DEdsN78Iljq1WNHIDVm69nDxKPqfIHQyZaD+l1FLPEKaDkr/E3NjiffYoT2qxQCWiaKa
         YMeT4fu1j4ro/jpuckQ+EkdMaMSngZurM4CjgcykMg+YR1BbRiTlDnT4GxF9+VtSbaL7
         OITV4eEmfXK9s3JOGJR/hwQNRTsQ+OXPJi5Fj5ShY2UVLlVO2Kc0AoAY42tq087IsRix
         ooJTq5ZmSykFYsiGTxBIvmy+nJbMo8hgElGMqmeQik+872uroQ1cUpVDG2l1XJ6AbhBp
         8BLA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GxoX3kOI;
       spf=pass (google.com: domain of 3wrfsxgckecw096yw9ay66y3w.u64u3s5y-tc03b-305cfy66y3wy96c7a.u64@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3WRfSXgcKEcw096yw9Ay66y3w.u64u3s5y-tC03B-305CFy66y3wy96C7A.u64@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SVXNn2+qYLWvaWGZzTrmrgaBkCHt5sxtS3s0QjbGVto=;
        b=FSPwH+vGMF50ZoHdCXpArFu4YbyOYMNRbMHrys77lOmoMn0gFikAQYKOAv322sifqc
         VVFV2maX5/9xrKrVv59SS1rAng5C4VxBF4Esn8VkrPS2zm+TevkHOueL8yHq6rAQeyOp
         ZQrH29kLHikGBkxx+0Q06zIcYDRO8kvLxb5ZaSVXhe4SCC1dDy2ePI0BC1oaEVb3alRS
         vbWR/4jizRChT1JDdh1gX6KseZ5+9s01DthvRcNzDnh3eTE1CwX+Tovx2fNzy1n04rzj
         nf9hkULdnK1Y2ldtwli8eFMUJH17Fejz0T+1BFVCIp5mqaL/3OZphXoJerYtTy7OmFvJ
         LCOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SVXNn2+qYLWvaWGZzTrmrgaBkCHt5sxtS3s0QjbGVto=;
        b=AxBZ6X5SnNeOCHw+DT/8vFje+yNbtTIfb7BycI1hmvALCFyvR9cdkXk8OJzd9oS4Lc
         Jn92hRMiKzkv1ldASa6A+43CPS8SZF4FUEmS61K2CSndF8edFI1iT92P2BwmRO4EdlKq
         u0gr2zT1VPbUkJYcQYrmYUvWZusuI2kVAtfG0+8IAxtWYeZ4x7iwatEoWFYHQPwALK96
         Oo6SIXyjVDp7ZXtk5C18CV6geu8DDWi+3egBFvi11MY+fMZbh/AkPydHl7yoZ6JXX+oE
         9iAdN8vKOx+NcnIEkG0pqU4dfj7bPId3P5Q+CBFHX4fYTaQ5lr3rALJvHDkrmN36m+/I
         zI6g==
X-Gm-Message-State: AOAM531VEEMzVv473wWmAAOLHtnrINxAuVGD+b2rj7umFSIycAmGYMBg
	IWHQAlwyn0/AC9y71M+IDMo=
X-Google-Smtp-Source: ABdhPJwhqpl4guVnW3VfRmicVTd8tfe7sMBX/7xuuE7Z7Dz05C5EAsryOIHSJw1Wpm/YaCPdI/LCtA==
X-Received: by 2002:a02:6a26:: with SMTP id l38mr10982548jac.60.1590826842227;
        Sat, 30 May 2020 01:20:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:9108:: with SMTP id t8ls2221601ild.3.gmail; Sat, 30 May
 2020 01:20:42 -0700 (PDT)
X-Received: by 2002:a92:2907:: with SMTP id l7mr11468779ilg.48.1590826841945;
        Sat, 30 May 2020 01:20:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590826841; cv=none;
        d=google.com; s=arc-20160816;
        b=sZdSQhExdDhJugc9xkzxAoWf9UTZqZaYwsZFWjMxpnsXhVvqRT/JKKlotRMvcl5c96
         bXb9LzS7DoC3VE5c2A1+iQ66ifx5OyBZUvSH+DEgIOXv2B5AZtnrJOJGLTgQHuvhB02u
         qwqmEf4vANM8NHp8Xk6JiWsJKtkhg7MxAGp6L4/hampmaef7wzoKh8aZi34WNIixUqjz
         19nAKqW15hz+T0OjOyqc9Oq2YVcFmKa8TqXssBMFtc/yNbmSZl69WZsJ7WjMmUxGnkPA
         66yqrkQ777KEqBx87WZCGrb9LeSdMe83AZ+JFq6vXPA4wKUo8MDxlNrOzaMEzLDAr6KZ
         Y4xQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=K2vvSflHIYm1tyfKJhwXQeu+hDzkoR50BrI5LF1sUSs=;
        b=GY6dIq3bivZpg8A1ADdgadChbJbbI2hyB/VDDCI3464AIdIcmEEDZLClzkAQYFFD2x
         Iuo7IMsYwO3fQ2lb11f+ysXaj/4Oi3ghkm2ftPzSDH/388Oq8J/oWDMYuZeprN3WIjjW
         VxtEVV9ylNp2dOXMCBwjkwqJ0bpTUHUBycW1Gmrocd1/OmXvbS+VMcYq1wOqM3j5YySo
         6iDAl8WLNHQjMSb0JZidkH0OK0awolYYK0q9Y/DO/cE04edKdPrlOfn9JtnABfGbx4L0
         GxciCeNFYY+kZVubJjN4JLwG22umde6KCMMfMWNSVN/UjqUBWP3Pp0k+91Y8N0UK3rbt
         ne5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GxoX3kOI;
       spf=pass (google.com: domain of 3wrfsxgckecw096yw9ay66y3w.u64u3s5y-tc03b-305cfy66y3wy96c7a.u64@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3WRfSXgcKEcw096yw9Ay66y3w.u64u3s5y-tC03B-305CFy66y3wy96C7A.u64@flex--irogers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id 29si283212ilv.5.2020.05.30.01.20.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 30 May 2020 01:20:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3wrfsxgckecw096yw9ay66y3w.u64u3s5y-tc03b-305cfy66y3wy96c7a.u64@flex--irogers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id i190so5964412ybg.6
        for <clang-built-linux@googlegroups.com>; Sat, 30 May 2020 01:20:41 -0700 (PDT)
X-Received: by 2002:a25:ba8d:: with SMTP id s13mr20428240ybg.123.1590826841380;
 Sat, 30 May 2020 01:20:41 -0700 (PDT)
Date: Sat, 30 May 2020 01:20:15 -0700
In-Reply-To: <20200530082015.39162-1-irogers@google.com>
Message-Id: <20200530082015.39162-4-irogers@google.com>
Mime-Version: 1.0
References: <20200530082015.39162-1-irogers@google.com>
X-Mailer: git-send-email 2.27.0.rc2.251.g90737beb825-goog
Subject: [PATCH 3/3] perf test: Initialize memory in dwarf-unwind
From: "'Ian Rogers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, Quentin Monnet <quentin@isovalent.com>, 
	Alexei Starovoitov <ast@kernel.org>, Jakub Kicinski <kuba@kernel.org>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Cc: Stephane Eranian <eranian@google.com>, Ian Rogers <irogers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: irogers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=GxoX3kOI;       spf=pass
 (google.com: domain of 3wrfsxgckecw096yw9ay66y3w.u64u3s5y-tc03b-305cfy66y3wy96c7a.u64@flex--irogers.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3WRfSXgcKEcw096yw9Ay66y3w.u64u3s5y-tC03B-305CFy66y3wy96C7A.u64@flex--irogers.bounces.google.com;
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

Avoid a false positive caused by assembly code in arch/x86.
In tests, zero the perf_event to avoid uninitialized memory uses.
Warnings were caught using clang with -fsanitize=memory.

Signed-off-by: Ian Rogers <irogers@google.com>
---
 tools/perf/arch/x86/tests/dwarf-unwind.c | 8 ++++++++
 tools/perf/tests/dwarf-unwind.c          | 1 +
 2 files changed, 9 insertions(+)

diff --git a/tools/perf/arch/x86/tests/dwarf-unwind.c b/tools/perf/arch/x86/tests/dwarf-unwind.c
index ef43be9b6ec2..4e40402a4f81 100644
--- a/tools/perf/arch/x86/tests/dwarf-unwind.c
+++ b/tools/perf/arch/x86/tests/dwarf-unwind.c
@@ -55,6 +55,14 @@ int test__arch_unwind_sample(struct perf_sample *sample,
 		return -1;
 	}
 
+#ifdef MEMORY_SANITIZER
+	/*
+	 * Assignments to buf in the assembly function perf_regs_load aren't
+	 * seen by memory sanitizer. Zero the memory to convince memory
+	 * sanitizer the memory is initialized.
+	 */
+	memset(buf, 0, sizeof(u64) * PERF_REGS_MAX);
+#endif
 	perf_regs_load(buf);
 	regs->abi  = PERF_SAMPLE_REGS_ABI;
 	regs->regs = buf;
diff --git a/tools/perf/tests/dwarf-unwind.c b/tools/perf/tests/dwarf-unwind.c
index 2a0dac81f44c..2491d167bf76 100644
--- a/tools/perf/tests/dwarf-unwind.c
+++ b/tools/perf/tests/dwarf-unwind.c
@@ -37,6 +37,7 @@ static int init_live_machine(struct machine *machine)
 	union perf_event event;
 	pid_t pid = getpid();
 
+	memset(&event, 0, sizeof(event));
 	return perf_event__synthesize_mmap_events(NULL, &event, pid, pid,
 						  mmap_handler, machine, true);
 }
-- 
2.27.0.rc2.251.g90737beb825-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200530082015.39162-4-irogers%40google.com.
