Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBGNPX6EQMGQEMY4IQCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 2122F3FE33B
	for <lists+clang-built-linux@lfdr.de>; Wed,  1 Sep 2021 21:42:19 +0200 (CEST)
Received: by mail-io1-xd3f.google.com with SMTP id g2-20020a6b7602000000b005be59530196sf308915iom.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 01 Sep 2021 12:42:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630525337; cv=pass;
        d=google.com; s=arc-20160816;
        b=bdE3//RnHPI8IXb48oXC78mlxu8kLs2y69iz9z5MEe+N/HjGcRGvAs8sRh51C7xtha
         zc8+G7Ed+xyKecfwTqmz9nPKu+I4eM8CFUKKNnzUlaLAmTwFndTc3q7WV+7ecwvhdyqM
         aUxBqTxpOrxg4ozDd3u52niaybbHDXJRWGLKdwh3ewexL9h1q9RnA7eWa7MntxG7uq3q
         OIU5C/f2zpxprEvq2qyYZmj/ouqFnEp9eOo6vCFW1o726T8kb7MixoC+QVc8Z77AIJrs
         rkZa5Upqeio8+miO1t7yiY3rHRL1NNuITn/o8jo01ttZzzEDP3MWuShPMApcvLysfxJz
         7eTQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=XhqxIwI6GcHolBbj6dOgN5CkoBXBmbodd9hmhtYxefs=;
        b=TuWPkudHz6BcQubG679hLsD988/TYmwFLAbKz1elZPKP8VAd0YMG2VE9DddhT5cAbq
         ousWGflg+962yhiW7la71QD4V0ONraxxJgztEuV8M172XJaSFwnEd3+0heBFjE42PsLO
         ryRClvolNH2cNVh6UvxF7JthvggpHwzyLLxrty3A7TsfwQBejefC/boC1hoO+Q99zW6A
         3rivjwNKaLZAimrTUggsdnYKEKDp5DR88i7jxh2X20XWf515U4bTgMn+4xW3pDrNk9GT
         gdxgad7+rl6wKl5F3lZDb2hFZQafvbffWkgaWCuDZbtXjQQ3WLxCC5xjsa+tS5Zd1Zpr
         uoLA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Cuw3iP3D;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1029 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XhqxIwI6GcHolBbj6dOgN5CkoBXBmbodd9hmhtYxefs=;
        b=Rf0+ejNJ/MmVduraeQqdAqTUZw3gLH/gnXvF4TcuMTYgodY7WYMt5K6aFbRtm0ltKs
         VAtTup4zus/lDAH/GVc2sZlL0rQz8hJekqTsAyfBsW7tKCbw4+YOlCPHoP4C2R19y9Dm
         Zb8lYpx+YlXYWKmQLMtDBURyVut+TQxUbrJH6lhCidRl2zfz2Ve/pyJjMU6KUbEU34ZM
         ijxxHbKbfDQjfl7eNhY2RHnfRZFnIsxsisXpOWvbGel/96PcVO+L/7QyBy3PyaVi/fnB
         EYdWin3Cnz3QdREvng9GP4q3fKcQeWJX4V0UFsK63xzhW4UCvqw1YlavXeAIdqI1OMc6
         tgow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XhqxIwI6GcHolBbj6dOgN5CkoBXBmbodd9hmhtYxefs=;
        b=edh5M2twaVaTa6M5ukd6ZjYiVKe2RGQcYw4sWQXTQEJxUK6YjM/CAYZD/soMaYSo6B
         jIgrq6wucbNGyXoCjXSjChD5d5efa5lCnmToPrHGcG/Sd4d0K4tG4o/6cTVsuLC9BSpC
         jHpjnpRli3lDdP8QR8BlxD1KlqGr5B5misxCJz2isIsWh9u5z/Ocib91hT7mKdOUfvhD
         UaDors3NETLD5PX2GFIIvqweOn76rmqFjJdnY0Xk9pIjEwic73BP2ncTDa61MbAN68cF
         1AydZvDTFho7/9tIInzyEnSt1lx0O4EBUchnQXGnHHZ5JA3atw1wYfIPS2JWBi81+upL
         ezOA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533XWIgDiscehslO7o7jMCwfY0XTZCAZr7rLTKqDBO+soMZ8rtWR
	PWt/DTQ5eyCJzINPrqCc9dA=
X-Google-Smtp-Source: ABdhPJxXGmgYiePhPlIAW2c50x9QsRctR+dfajIxR34rLhMNz/3KR9ZGPypnlumv33tMliciulugCA==
X-Received: by 2002:a92:d311:: with SMTP id x17mr805919ila.19.1630525337669;
        Wed, 01 Sep 2021 12:42:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:c789:: with SMTP id c9ls136683ilk.9.gmail; Wed, 01 Sep
 2021 12:42:17 -0700 (PDT)
X-Received: by 2002:a05:6e02:6d2:: with SMTP id p18mr839595ils.44.1630525337253;
        Wed, 01 Sep 2021 12:42:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630525337; cv=none;
        d=google.com; s=arc-20160816;
        b=HTT18p8xLMEdUhIU5arNAgaWsY9yAeMRqGfb+HpKVuv7GeWL62jWLxg61KvY4uP2xd
         srRK3E8EPlWvrwEzlMZ3kQta2gxo+5h06f0S1AHv/T9032pMdSQRfcKNv5GtlMfRww5X
         oe1bJvIM2UgrBv05/0xaG6F6d0/qDLEGgHKU1fY1wnLc9+og1mrTK7yMJl9sB8L2y0Y6
         IMkMlPDfTU/yv5Yy8MZtcIWf03u+gzk13Vr/BZ+B5eX2uUuzRGm/OEV6O8HWUBe4MVfb
         pxyua/RL9M2dwwvApDnzJm2EnQ99cMcWZGlcROKVwFfmBwdSjmyeA4YmG3gdl6iW1J2+
         7/GA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=ebtoOBcpDUULZo3w3apLL5azNq/Rs8U/WDJ70Gxq2+c=;
        b=NcziM5/G123iCLMCucyknPa7qAtXIdsyPslhw3kpPTzfsIdwSRN7/F+cj34A9ICYmD
         fwtMalIUmUhAjAa9yswVazlsSUQ5XxpLGPla6ulOgeSCh5wPQh6X2w+njIJmK8kT5lgo
         ZMNKH6pVlgteqKrPgrpuVxIaW4HPkATeB9pnB1uUWxnRa+F/anA7X1sq8+CUZX+n+YeP
         EfbCugkxaUKRLxWme7lUVxngzkNQ6jMJVUpsqEnT2rYkVLb+yqBD9l515mckYSrcoBji
         io3IjnnnrCIFlSU9aH2VJ6NZKAi7sfe8OjZ8li+65hQAfKXEElphw/vVt4LfzrO3C6K0
         Ttpg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Cuw3iP3D;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1029 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com. [2607:f8b0:4864:20::1029])
        by gmr-mx.google.com with ESMTPS id v7si43814ilo.0.2021.09.01.12.42.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Sep 2021 12:42:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1029 as permitted sender) client-ip=2607:f8b0:4864:20::1029;
Received: by mail-pj1-x1029.google.com with SMTP id d5so352855pjx.2
        for <clang-built-linux@googlegroups.com>; Wed, 01 Sep 2021 12:42:17 -0700 (PDT)
X-Received: by 2002:a17:90b:1c05:: with SMTP id oc5mr1033960pjb.209.1630525336556;
        Wed, 01 Sep 2021 12:42:16 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id u22sm258609pfi.143.2021.09.01.12.42.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Sep 2021 12:42:15 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Cc: Kees Cook <keescook@chromium.org>,
	Tiezhu Yang <yangtiezhu@loongson.cn>,
	Xuefeng Li <lixuefeng@loongson.cn>,
	Juxin Gao <gaojuxin@loongson.cn>,
	linux-mips@vger.kernel.org,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	linux-hardening@vger.kernel.org
Subject: [PATCH] MIPS: Modernize READ_IMPLIES_EXEC
Date: Wed,  1 Sep 2021 12:42:08 -0700
Message-Id: <20210901194208.2420671-1-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3951; h=from:subject; bh=JgSNdSTf0XI8ictb5n4zr8brlJGAtynBafE+8Az2YUY=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhL9eQd35WWsTd5cvtgscZgyjbIm3VRtVTBF2bLKo/ idf6BhCJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYS/XkAAKCRCJcvTf3G3AJgRtD/ 95cGzPJCdT2cbu2jeqL0Seg/TOzhe14oYZKcUtz2T0YKt/ZRNjvdnDIlbTgzWznrX30dfbHUdM6M4Q gRVkf18wD1diiVsnlFjIp4e5h5Zi98AkxsU3HsAEqX7ke1oBSKXmBNYrD+nFKdC7fQJCocGsQhhv7y pY+aox1wZkJcXxlms0BlkfMk2aBj3m8hbcAGJjrBtdWnVZ03L2OICWTo3o2y+AHbbtOr+xPSXI/Dn+ EdJzsqwJWR5WXJYH51KaOWwS0DsidIX1EmlBlxRlXHxgrXAI9OvNSlWEikOAMKMxIvdjvLk+ZVkj2B /gtn9H53cgoMZQSm5RelszQuullmt+HoFPUkpItBhIpb9Y3UcAc2jaDhoFjsy+jh7+FBd9IznLOU6q HjHRYOy3zTgUFsK/gSVej/8DPVRPPUElvtSuNYnmXzF2Q5tpP6JP3kClPQV49fDEIhsRPx2E/8VBt4 FisfBUD0J+xhyOoMdUTwm4Yt5BXEcT/P5xjNl3Avfng38iJ+P8+9h4+V8HYhffYT+dwBDTmOr/JIb7 6tm5w246Np6NVxfWaFvxihKiKyQU8kvDeyGp+dkiFzEyvrs4LPKOusO++PI/iSFCUQAPYpP9Q3i5VA 9qmw+deIu1AMnT8gX/6O3C20biTY8RDZzr+u8YdUF8tx2QK/Fdw5aT/Xfa6Q==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=Cuw3iP3D;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1029
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
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

I'm doing some thread necromancy of
https://lore.kernel.org/lkml/202007081624.82FA0CC1EA@keescook/

x86, arm64, and arm32 adjusted their READ_IMPLIES_EXEC logic to better
align with the safer defaults and the interactions with other mappings,
which I illustrated with this comment on x86:

/*
 * An executable for which elf_read_implies_exec() returns TRUE will
 * have the READ_IMPLIES_EXEC personality flag set automatically.
 *
 * The decision process for determining the results are:
 *
 *                 CPU: | lacks NX*  | has NX, ia32     | has NX, x86_64 |
 * ELF:                 |            |                  |                |
 * ---------------------|------------|------------------|----------------|
 * missing PT_GNU_STACK | exec-all   | exec-all         | exec-none      |
 * PT_GNU_STACK == RWX  | exec-stack | exec-stack       | exec-stack     |
 * PT_GNU_STACK == RW   | exec-none  | exec-none        | exec-none      |
 *
 *  exec-all  : all PROT_READ user mappings are executable, except when
 *              backed by files on a noexec-filesystem.
 *  exec-none : only PROT_EXEC user mappings are executable.
 *  exec-stack: only the stack and PROT_EXEC user mappings are
 *  executable.
 *
 *  *this column has no architectural effect: NX markings are ignored by
 *   hardware, but may have behavioral effects when "wants X" collides with
 *   "cannot be X" constraints in memory permission flags, as in
 *   https://lkml.kernel.org/r/20190418055759.GA3155@mellanox.com
 *
 */

For MIPS, the "lacks NX" above is the "!cpu_has_rixi" check. On x86,
we decided that the READ_IMPLIES_EXEC flag needed to reflect the
expectations, not the architectural behavior due to bad interactions
as noted above, as always returning "1" on non-NX hardware breaks
some mappings.

The other part of the issue is "what does the MIPS toolchain do for
PT_GNU_STACK?" The answer seems to be "by default, include PT_GNU_STACK,
but mark it executable" (likely due to concerns over non-NX hardware):

$ mipsel-linux-gnu-gcc -o hello_world hello_world.c
$ llvm-readelf -lW hellow_world | grep GNU_STACK
  GNU_STACK      0x000000 0x00000000 0x00000000 0x00000 0x00000 RWE 0x10

Given that older hardware doesn't support non-executable memory, it
seems safe to make the "PT_GNU_STACK is absent" logic mean "assume
non-executable", but this might break very old software running on
modern MIPS. This situation matches the ia32-on-x86_64 logic x86
uses (which assumes needing READ_IMPLIES_EXEC in that situation). But
modern toolchains on modern MIPS hardware should follow a safer default
(assume NX stack).

A follow-up to this change would be to switch the MIPS toolchain to emit
a non-executable PT_GNU_STACK, as this seems to be unneeded.

Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Cc: Tiezhu Yang <yangtiezhu@loongson.cn>
Cc: Xuefeng Li <lixuefeng@loongson.cn>
Cc: Juxin Gao <gaojuxin@loongson.cn>
Cc: linux-mips@vger.kernel.org
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/mips/kernel/elf.c | 16 +++++-----------
 1 file changed, 5 insertions(+), 11 deletions(-)

diff --git a/arch/mips/kernel/elf.c b/arch/mips/kernel/elf.c
index 7b045d2a0b51..5582a4ca1e9e 100644
--- a/arch/mips/kernel/elf.c
+++ b/arch/mips/kernel/elf.c
@@ -328,16 +328,10 @@ void mips_set_personality_nan(struct arch_elf_state *state)
 
 int mips_elf_read_implies_exec(void *elf_ex, int exstack)
 {
-	if (exstack != EXSTACK_DISABLE_X) {
-		/* The binary doesn't request a non-executable stack */
-		return 1;
-	}
-
-	if (!cpu_has_rixi) {
-		/* The CPU doesn't support non-executable memory */
-		return 1;
-	}
-
-	return 0;
+	/*
+	 * Set READ_IMPLIES_EXEC only on non-NX systems that
+	 * do not request a specific state via PT_GNU_STACK.
+	 */
+	return (!cpu_has_rixi && exstack == EXSTACK_DEFAULT);
 }
 EXPORT_SYMBOL(mips_elf_read_implies_exec);
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210901194208.2420671-1-keescook%40chromium.org.
