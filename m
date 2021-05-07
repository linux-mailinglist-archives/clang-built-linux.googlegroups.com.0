Return-Path: <clang-built-linux+bncBCJP7WOE5UIBBSWS22CAMGQEL5K5WQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C686376B4F
	for <lists+clang-built-linux@lfdr.de>; Fri,  7 May 2021 22:55:39 +0200 (CEST)
Received: by mail-io1-xd3c.google.com with SMTP id t9-20020a5edd090000b0290406cd22dc3asf6902995iop.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 07 May 2021 13:55:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620420938; cv=pass;
        d=google.com; s=arc-20160816;
        b=YccP0qbkodSRFO20VEZMh5MS59+Eehk+pmxw9noA0mRq6ZHAKUkTsZ6u7R3/AsjGjr
         Bf0cYxKJHEwSJfEZ76/mrMpTxFVxi+pprvmcR681UndiEmV9NJG1Fx673pbXIVD5RNzU
         2rTBdO7484viHFH76AFdy+KXJKhQr5pgb7U8wMpS1sFJ96of2gAUWEwk8G8VuNDqpvSV
         4e/MTiGd9V5sUEtno6iZonnapNZqsW08igYmdx2/mH7SduvAfZUB/HyFMSqL/aKh5E60
         csrM8boh64cFuaVPKQpy6fS+UMINn0z8/llohltn7qHRYXA7LHkDabKdq6TuSS1FNpDw
         EiUQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=EB6JWHlcwx6xD6xYYFlFLA5pvLAaO8cjC2Wkb1X65/Q=;
        b=ongkDbIEhCRV7WijdMnwfpiPAzMTtYTj7R30ijxsuizFI6zwLb/o789egUN7tNk3YP
         IGviNsO79oJgs2nvvyRtjC+d16v358s2dCKi0lNpVC3u/KSw1ScWD/W6s6tXjq1iMZaG
         B4Gzy4sq554t3MCTs0z9Y4kUQrW0FuNAa9xf1l4tiMAwbuUiKl2waTeHUrIOYVkknC/I
         2bwy/tpn98NU42JeVMCvn78jjC6gv2ajlf95oRkcFUrhMbMVobLmN6nlUJxEgPBF3QFB
         SGTSPjA1ee8aafsMPJcl1DCpqgqhH0PDDuGs2lXl+w+SmV8Tl/tux3yrdQFfWtKTBKdA
         LgFg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Q3D6AnEJ;
       spf=pass (google.com: domain of dianders@chromium.org designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=dianders@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EB6JWHlcwx6xD6xYYFlFLA5pvLAaO8cjC2Wkb1X65/Q=;
        b=YcBVC4cArjHeQIgrtZNoO+J8DD8Z5S+D9t5daIZsVNfc0QXLbvlbxrW/6srQ5RNHiH
         njjgWzhpoJMAPYWE2EYYz4R1zMF8HWQAP0pBIonfSPGqcVAuCzvNW6CIqZMWAHBMweUu
         kO93X1BybZvGSzN86GVZHjSk5Pci3CqVsLu6OojaoPRZOaX6yZTboz9/FQSQTxIeAiCH
         t4LyNGTOp9kBi1CwyiZKT+47PFpP1VxRekd/qeYrO0RqBaBBmOfeoQDVoc4gdqCykMec
         1wSGYJk8PabEVAhYyuwD5sDHCLtpp13kQ3NIWbNQvgeatbxE5D7qff1iYHMD4KrlnNiD
         vRrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EB6JWHlcwx6xD6xYYFlFLA5pvLAaO8cjC2Wkb1X65/Q=;
        b=glHvfyspJLqWBN90URtU5nKn9zVvdkNEtUi+2rcdOGaH0RRy+1RTVcL2tI3pYV8Sq2
         RxBFbhFS0SKpgioHpiDH9cpVi7F9QotTzhQTaZIMTDgKqsT8283QQkhG4s2Gi/9vVXjP
         h34eKm1R0TusXFfvuHojdTgdVgjXdsI6uF39xt7VrFnPDJAtEmbZtSv0QNfXHjmpHXTX
         L9pkNyfvlHn7ZmKTX4uSMWg8vgUW2F6zpxSV8v05BmRWTHHM8xjHIfKA0rPdVGrQP3Jg
         fpSp0f/4GLsOho5IdKb+wplhFoDmV8OQI0EyUPFQXMgD362qoKZryzyklOHOuST6EUrq
         pgcw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5316G7QFJ29OAt6vQf5t8x934IkXdtHC8Cn34kJgeypL+UwuzY4V
	a5AqQBuzu6cxj7oSzzol3iY=
X-Google-Smtp-Source: ABdhPJzjANlQPCOHgv3a2QAvnL07G7acfK1HwjRHzkR2IdtoSPap4/rL7OO30Hfe/nORQ/IoS6ntoA==
X-Received: by 2002:a6b:f808:: with SMTP id o8mr9329053ioh.140.1620420938241;
        Fri, 07 May 2021 13:55:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:1506:: with SMTP id g6ls1176454iow.9.gmail; Fri, 07
 May 2021 13:55:37 -0700 (PDT)
X-Received: by 2002:a5e:880b:: with SMTP id l11mr9015588ioj.42.1620420937916;
        Fri, 07 May 2021 13:55:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620420937; cv=none;
        d=google.com; s=arc-20160816;
        b=ZQmGUmTt49PQPbI7DLOH/tcPUe3wGnQD9ADcpKWmDxJQ28krpllunRQCmu2kWuUWpi
         7p+0G23BNMZB2wyJRZN0LAwIukp7cjQLHzpx2HVpuLIsggkNKZSIOE8NPYUzoz3eCjIo
         PQhxZ7Oip0i9s/UhgO6FHyKr4O8fd0kcKESoPXhMo97xwOTv7faSp3HQxTwP82ekydSE
         BZsnuE26/I+VyFMi6YvASsWVbdAYdUPqgA+ZvtuPhHijwIpFRyKkHpAx4Fv1a+Z0Nfjb
         hF1gSWGF3CreIqco33mhqwoMy6O6knvXJgqI9i6DwsL21oaIPRbMgYuld/A+h/3k80li
         sQeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=RS/EjsHgy2j7mFScraIl3oqZgCaBEgKPtIpvzQ9p7+0=;
        b=vrHAbvR9ZYYRumNDgsyCgWvO+RLSnwXDsBN6QeAFZVQuP8yZksv5zp68YElRGdkt57
         aHXLnl61JWWqpsE+ZfzOoSkfTEd/JoXsZqhpnqrhrorK0P7a0lW1sZcXQPDUq+bNFAA4
         4lOi4TX5gXHBXIO21G+EnC+HqnLSGksRuR/s+Ti9nIiZOn1lJy+BC2KwWBPFa4lDZQCR
         sMzGGxIDVJdNBhKbVbUnltZOUFViYTBJYjAj9b9OdYArCHYR511qHUM/GB7tU9O0EO4H
         d2zaVMbnsUpTuG7ZnnxsoXIR/JgTcSAg00aZEiKppcApoegJNrQ6Gncd/QEQ4XvuZv7k
         6o9A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Q3D6AnEJ;
       spf=pass (google.com: domain of dianders@chromium.org designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=dianders@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com. [2607:f8b0:4864:20::631])
        by gmr-mx.google.com with ESMTPS id s14si553576ilu.3.2021.05.07.13.55.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 May 2021 13:55:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of dianders@chromium.org designates 2607:f8b0:4864:20::631 as permitted sender) client-ip=2607:f8b0:4864:20::631;
Received: by mail-pl1-x631.google.com with SMTP id z18so2305663plg.8
        for <clang-built-linux@googlegroups.com>; Fri, 07 May 2021 13:55:37 -0700 (PDT)
X-Received: by 2002:a17:90a:f2ce:: with SMTP id gt14mr12812551pjb.177.1620420937529;
        Fri, 07 May 2021 13:55:37 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:201:3c7e:d35:3a19:632f])
        by smtp.gmail.com with ESMTPSA id ge4sm13161565pjb.49.2021.05.07.13.55.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 May 2021 13:55:37 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Seth LaForge <sethml@google.com>,
	Ricky Liang <jcliang@chromium.org>,
	Douglas Anderson <dianders@chromium.org>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Arnaldo Carvalho de Melo <acme@kernel.org>,
	Ingo Molnar <mingo@redhat.com>,
	Jiri Olsa <jolsa@redhat.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Namhyung Kim <namhyung@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	clang-built-linux@googlegroups.com,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-perf-users@vger.kernel.org
Subject: [PATCH 1/3] arm64: perf: perf_callchain_user() compat support for clang/non-APCS-gcc-arm
Date: Fri,  7 May 2021 13:55:11 -0700
Message-Id: <20210507135509.1.I5d969beafa0d7507f1e37fadaa6e4d88d428253d@changeid>
X-Mailer: git-send-email 2.31.1.607.g51e8a6a459-goog
In-Reply-To: <20210507205513.640780-1-dianders@chromium.org>
References: <20210507205513.640780-1-dianders@chromium.org>
MIME-Version: 1.0
X-Original-Sender: dianders@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=Q3D6AnEJ;       spf=pass
 (google.com: domain of dianders@chromium.org designates 2607:f8b0:4864:20::631
 as permitted sender) smtp.mailfrom=dianders@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

Up until now the arm32-compat support in perf_callchain_user() made
the assumption that userspace code was compiled with the defunct APCS
(ARM Procedure Call Standard) calling convention. The existing code
also didn't support Thumb at all. Let's add a whole lot more
support. Specifically, we'll now support:

- clang-compiled Thumb userspace code w/ frame pointers.
- clang-compiled ARM userspace code w/ frame pointers.
- gcc-compiled ARM userspace code w/ frame pointers.

We'll also continue to keep supporting the APCS calling convention.

All of the above will be supported automagically. The important
first-order thing to care about is that ARM and Thumb use different
registers for storing the frame pointer. After that, we need to handle
the fact that the compilers don't agree on the format of a stack
frame. Luckily, we can differentiate between all of the different
supported conventions by relying on the simple fact that the stack is
non-executable and the PC is executable. All of the details of how
this is accomplished is described in the copius inline comments
introduced by this patch.

Please note that there is one compiler convention that is explicitly
_NOT_ supported by this patch, primary because it's believed to be
impossible to support without much fancier logic (like unwind
tables). The _UNSUPPORTED_ case is gcc-compiled Thumb userspace code
w/ frame pointers. The frame pointers in gcc-compiled Thumb userspace
code are largely useless for the purposes of crawling the stack. Given
that the primary purpose of frame pointers is to facilitate stack
crawling, it has been asserted that turning on frame pointers in
gcc-compiled Thumb userspace code is 100% useless. For some history,
you can see the gnu bugzilla [1].

Other notes:
- Presumably tracing code that intermixes ARM / Thumb wouldn't work
  amazingly well given the disagreement about which register stores
  the frame pointer. This patch would theoretically support such a
  situation if (and only if) the code creating the frame pointers was
  smart enough to create them correctly. The problem here is that the
  userspace code creating the stack frames would need to look at the
  mode of the caller (ARM vs. thumb) to figure out if it should store
  R11 or R7 as the old FP. I don't believe code does that.
- This patch likely supports intermixing APCS, clang-ARM, and gcc-ARM
  code, though that hasn't been tested.
- Given a limitation in clang, tracing clang code will omit the
  _callers_ of leaf functions. A future patch will attempt to improve
  the situation a little.

This patch has been tested with some toy code. Some details and
history may be able to be found in the Chrome OS bug system [2]. In
general, when testing, I used these commands:
  perf record  -e cycles:u -g -o "${OUT}" -- "${PROG"}
  perf report -i "${OUT}" -g flat

[1] https://gcc.gnu.org/bugzilla/show_bug.cgi?id=92172
[2] https://crbug.com/1040659

Cc: Nick Desaulniers <ndesaulniers@google.com>
Cc: Ricky Liang <jcliang@chromium.org>
Cc: Seth LaForge <sethml@google.com>
Signed-off-by: Douglas Anderson <dianders@chromium.org>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
---
I carried Nick's review from the downstream review on the Chromium
gerrit. I believe this is what he intended by +1-ing my WIP patch at
<https://crrev.com/c/2877595>.

 arch/arm64/kernel/perf_callchain.c | 311 +++++++++++++++++++++++++----
 1 file changed, 275 insertions(+), 36 deletions(-)

diff --git a/arch/arm64/kernel/perf_callchain.c b/arch/arm64/kernel/perf_callchain.c
index 88ff471b0bce..e5ce5f7965d1 100644
--- a/arch/arm64/kernel/perf_callchain.c
+++ b/arch/arm64/kernel/perf_callchain.c
@@ -53,49 +53,294 @@ user_backtrace(struct frame_tail __user *tail,
 }
 
 #ifdef CONFIG_COMPAT
-/*
- * The registers we're interested in are at the end of the variable
- * length saved register structure. The fp points at the end of this
- * structure so the address of this struct is:
- * (struct compat_frame_tail *)(xxx->fp)-1
- *
- * This code has been adapted from the ARM OProfile support.
- */
-struct compat_frame_tail {
-	compat_uptr_t	fp; /* a (struct compat_frame_tail *) in compat mode */
-	u32		sp;
-	u32		lr;
-} __attribute__((packed));
 
-static struct compat_frame_tail __user *
-compat_user_backtrace(struct compat_frame_tail __user *tail,
-		      struct perf_callchain_entry_ctx *entry)
+static int compat_user_read(void *dest, u32 user_addr, size_t bytes)
 {
-	struct compat_frame_tail buftail;
+	const u32 __user *addr = compat_ptr(user_addr);
 	unsigned long err;
 
-	/* Also check accessibility of one struct frame_tail beyond */
-	if (!access_ok(tail, sizeof(buftail)))
-		return NULL;
+	if (!access_ok(addr, bytes))
+		return -EACCES;
 
 	pagefault_disable();
-	err = __copy_from_user_inatomic(&buftail, tail, sizeof(buftail));
+	err = __copy_from_user_inatomic(dest, addr, bytes);
 	pagefault_enable();
 
 	if (err)
-		return NULL;
+		return -EACCES;
+
+	return 0;
+}
 
-	perf_callchain_store(entry, buftail.lr);
+static bool compat_is_ptr_executable(u32 ptr, u32 fp)
+{
+	struct vm_area_struct *vma;
 
 	/*
-	 * Frame pointers should strictly progress back up the stack
-	 * (towards higher addresses).
+	 * Fastpath: if what's pointed to by the frame pointer
+	 * is on the same page as the frame pointer (which
+	 * must point to the stack) then it's on the stack too.
 	 */
-	if (tail + 1 >= (struct compat_frame_tail __user *)
-			compat_ptr(buftail.fp))
-		return NULL;
+	if ((ptr & ~0xfff) == (fp & ~0xfff))
+		return false;
 
-	return (struct compat_frame_tail __user *)compat_ptr(buftail.fp) - 1;
+	vma = find_vma(current->active_mm, (unsigned long)compat_ptr(ptr));
+
+	if (!vma)
+		return false;
+
+	return vma->vm_flags & VM_EXEC;
+}
+
+/**
+ * compat_perf_trace_1() - Trace down one stack frame
+ * @fp: Input: the frame pointer to trace at; output: the next frame pointer.
+ * @pc: Input: the program counter at the start; output: the next PC.
+ * @leaf_lr: If this is the first frame, this will have the value from the
+ *           CPU register LR (link register). If this isn't the first frame,
+ *           this will be 0.
+ *
+ * Return: 0 if no error; else an error code
+ */
+static int compat_perf_trace_1(u32 *fp, u32 *pc, u32 leaf_lr)
+{
+	u32 frame_buf[3];
+	u32 before_fp;
+	u32 at_fp;
+	u32 at_at_fp;
+	int err;
+
+	if (*pc & 1) {
+		/*
+		 * Thumb mode.
+		 *
+		 * There are no flags that make frame pointers on gcc-compiled
+		 * thumb code useful. Thus we'll simply assume userspace was
+		 * compiled by clang and hope for the best. On clang things
+		 * look like this:
+		 *
+		 * +-----------+ 0x1000
+		 * |   random  |
+		 * +-----------+ 0x1004
+		 * | old FP    | <--- FP
+		 * +-----------+ 0x1008
+		 * |     LR    |
+		 * +-----------+
+		 * |   random  |
+		 * +-----------+
+		 *
+		 * Note that clang doesn't create frames for leaf functions
+		 * which means the _caller_ of the leaf function will be
+		 * omitted from the crawl. Clang has a flag
+		 * "-mno-omit-leaf-frame-pointer " that's supposed to change
+		 * this behavior but (when I tried it) it didn't seem to work.
+		 * We also won't know for sure if userspace was built with it
+		 * since it presumably adds a bunch of extra overhead.
+		 *
+		 *
+		 * Just for reference, here is what happens when you ask gcc to
+		 * compile in thumb mode with frame pointers. This illustrates
+		 * why ARM should probably remove the following from AAPCS:
+		 *   The AAPCS does not specify where, within a function's
+		 *   stack frame record, the frame chain data structure
+		 *   resides. This permits implementors the freedom to use
+		 *   whatever location will result in the most efficient code
+		 *   needed to establish the frame chain record.
+		 *
+		 * +-----------+ 0x1000
+		 * |   random  | <--- FP
+		 * +-----------+ 0x1004
+		 * |    ...    |
+		 * +-----------+ ???
+		 * |   random  |
+		 * +-----------+ ???
+		 * | old FP    |
+		 * +-----------+ ???
+		 * |     LR    |
+		 * +-----------+
+		 * |   random  |
+		 * +-----------+
+		 */
+		err = compat_user_read(frame_buf, *fp, 8);
+		if (err)
+			return err;
+
+		*fp = frame_buf[0];
+		*pc = frame_buf[1];
+
+		return 0;
+	}
+
+	/*
+	 * ARM mode.
+	 *
+	 * With ARM code we can support 3 options:
+	 * - clang compiled with frame pointers
+	 *     Looks just like the clang thumb style except that we get the
+	 *     initial FP from R11 instead of R7.
+	 *
+	 *     NOTE: the R11 vs. R7 bit will likely change in the future.
+	 *     The 2019Q4 Issue of AAPCS revised the frame pointer to be R11
+	 *     for BOTH ARM and Thumb, as of 2021Q2 no such production
+	 *     compiler implements that change. There are rumors that
+	 *     toolchains may change to match this specification in the future.
+	 *     If/when that happens, we'll probably need a CONFIG option to
+	 *     support userspace code generated by the old compilers.
+	 *
+	 *
+	 * - gcc compiled with frame pointers (non-leaf)
+	 *     +-----------+ 0x1000
+	 *     |   random  |
+	 *     +-----------+ 0x1004
+	 *     | old FP    |
+	 *     +-----------+ 0x1008
+	 *     |     LR    | <--- FP
+	 *     +-----------+
+	 *     |   random  |
+	 *     +-----------+
+	 *
+	 * - gcc compiled with frame pointers (leaf). NOTE LR is in registers
+	 *     +-----------+ 0x1000
+	 *     |   random  |
+	 *     +-----------+ 0x1004
+	 *     | old FP    | <--- FP
+	 *     +-----------+
+	 *     |   random  |
+	 *     +-----------+
+	 *
+	 * - APCS (ARM Procedure Call Standard)
+	 *     +-----------+ 0x1000
+	 *     |   random  |
+	 *     +-----------+ 0x1004
+	 *     | old FP    |
+	 *     +-----------+ 0x1008
+	 *     |     SP    |
+	 *     +-----------+
+	 *     |     LR    |
+	 *     +-----------+
+	 *     |     PC    |  <--- FP
+	 *     +-----------+
+	 *     |   random  |
+	 *     +-----------+
+	 *
+	 * We will autodetect.
+	 */
+
+	/*
+	 * We'll start with reading whatever the FP points directly at. That
+	 * should be valid memory with all 3 supported layouts.
+	 */
+	err = compat_user_read(&at_fp, *fp, 4);
+	if (err)
+		return err;
+
+	/*
+	 * First let's try to identify clang or a gcc leaf function. In both
+	 * cases the FP points directly at the old FP. Frame pointers always
+	 * point to the stack and the stack should never be marked as
+	 * executable. This contrasts to APCS / gcc-non-leaf where FP will
+	 * either point to a PC near the start of the function or a LR, both
+	 * of which must be executable.
+	 */
+	if (!compat_is_ptr_executable(at_fp, *fp)) {
+		/*
+		 * We need to tell the difference between gcc-leaf and clang.
+		 *
+		 * The first clue is to look at "leaf_lr". It will only be
+		 * non-zero on the first call which is the only one that can
+		 * be a leaf. Thus if it's non-zero, we're clang.
+		 *
+		 * If there's a chance we could be in a leaf, look one frame
+		 * up. On gcc that would be a non-leaf FP and would point to
+		 * something executable. If it's non-executable then we're
+		 * clang. If we have any errors, we'll assume clang.
+		 */
+		if (!leaf_lr || compat_user_read(&at_at_fp, at_fp, 4) ||
+		    !compat_is_ptr_executable(at_at_fp, at_fp)) {
+			/* It's clang; we already have new FP so get PC */
+			err = compat_user_read(pc, *fp + 4, 4);
+			if (err)
+				return err;
+
+			*fp = at_fp;
+
+			return 0;
+		}
+
+		/* It's gcc leaf */
+		*pc = leaf_lr;
+		*fp = at_fp;
+		return 0;
+	}
+
+	/* We need to look at one word before to decide APCS / gcc-ARM */
+	err = compat_user_read(&before_fp, *fp - 4, 4);
+	if (err)
+		return err;
+
+	if (!compat_is_ptr_executable(before_fp, *fp)) {
+		/* It's gcc-ARM */
+		*fp = before_fp;
+		*pc = at_fp;
+
+		return 0;
+	}
+
+	/* APCS */
+	err = compat_user_read(frame_buf, *fp - 12, 12);
+	if (err)
+		return err;
+
+	*fp = frame_buf[0];
+	*pc = frame_buf[2];
+
+	return 0;
+}
+
+static void compat_perf_callchain_user(struct perf_callchain_entry_ctx *entry,
+				       struct pt_regs *regs)
+{
+	u32 old_fp = 0;
+	u32 fp;
+	u32 pc;
+	u32 leaf_lr;
+	int err;
+
+	pc = regs->pc;
+	leaf_lr = regs->regs[14];
+
+	/*
+	 * Assuming userspace is compiled with frame pointers then it's in
+	 * R11 for ARM code and R7 for thumb code. If it's thumb mode we'll
+	 * also set the low bit of the PC to match how the PC indicates thumb
+	 * mode when crawling down the stack.
+	 */
+	if (compat_thumb_mode(regs)) {
+		fp = regs->regs[7];
+		pc |= BIT(0);
+	} else {
+		fp = regs->compat_fp;
+	}
+
+	/* Trace as long as we have room and we have a 4-byte aligned FP. */
+	while ((entry->nr < entry->max_stack) && fp && !(fp & 0x3)) {
+		err = compat_perf_trace_1(&fp, &pc, leaf_lr);
+
+		/* Bail out on any type of error */
+		if (err)
+			break;
+
+		/*
+		 * Frame pointers should strictly progress back up the stack
+		 * (towards higher addresses).
+		 */
+		if (fp <= old_fp)
+			break;
+		old_fp = fp;
+		leaf_lr = 0;
+
+		perf_callchain_store(entry, pc & ~BIT(0));
+	}
 }
 #endif /* CONFIG_COMPAT */
 
@@ -121,13 +366,7 @@ void perf_callchain_user(struct perf_callchain_entry_ctx *entry,
 	} else {
 #ifdef CONFIG_COMPAT
 		/* AARCH32 compat mode */
-		struct compat_frame_tail __user *tail;
-
-		tail = (struct compat_frame_tail __user *)regs->compat_fp - 1;
-
-		while ((entry->nr < entry->max_stack) &&
-			tail && !((unsigned long)tail & 0x3))
-			tail = compat_user_backtrace(tail, entry);
+		compat_perf_callchain_user(entry, regs);
 #endif
 	}
 }
-- 
2.31.1.607.g51e8a6a459-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210507135509.1.I5d969beafa0d7507f1e37fadaa6e4d88d428253d%40changeid.
