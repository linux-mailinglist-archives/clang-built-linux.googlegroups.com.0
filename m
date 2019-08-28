Return-Path: <clang-built-linux+bncBDYJPJO25UGBBFMNTTVQKGQEEV3N4QI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3e.google.com (mail-vk1-xa3e.google.com [IPv6:2607:f8b0:4864:20::a3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 18F6BA0DE0
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 00:56:23 +0200 (CEST)
Received: by mail-vk1-xa3e.google.com with SMTP id s80sf496334vkb.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 15:56:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567032982; cv=pass;
        d=google.com; s=arc-20160816;
        b=MIVihPVH8UFczOtTziqB0Ve6hQd4nZPGX3PP+p9GC1GPWD3lgAjM/Bhp1LtTWZ5F2E
         9sZhT3Q5muK+xNLitx+Z+Qpm/b+C+I/a4as53TSuElgPAkA5mR4hTNWHtIAq7+/2z/BU
         rm1P82PE8QKskbmkTWlNc2AG5OxGNWVTBAdr0CaOF383g0D1qp8oP7ch1sHH5Czf2Al/
         n7ReHAgcMuT/RZ12BBEosPy0qj+1bLLz2o10ndmg+fkqo5enyOa90wbwNecLPeOx2OLo
         JClytnmIzGQyP9owHoCIs+B6PVSi1ZlKEEcmHAf6UtdFLFwCePAtYGJg0UDjctc29hMa
         9JHg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=6LeqGJyi5SWPU3tOxDtVuB77Rikt8y1ED5htAzdfzt4=;
        b=lB3ObuExuWy7j59PNxodtklowaVpePJbgyAx+xZS256okXHhvU4xIqSljPDRTsZN9I
         t46ajd6tzPMtjvq2XGQObDpZOiqCmX9ZTaLhzs4g5nwBcJvf8aazg+sHwJ9Car0tVHtD
         g24RRVFbwWqzJzr0XBW6BxAtMwuwgvfp0BeGvvZFjEfcEfPy2sh07lD/RRk9AIhbbmKF
         8FN77gq+C5HISCylO1TVONkwoivOcHqLdDXU20jBEfh2aWTTr6PnCARlZ+thVbfvWXGq
         H90WRNCm4mKUFWFC04GInnpSyTEyUG2/SaKwSe5hs1iScnJTshPffNOQKjjs8LbbCvtB
         L3iA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ngR10Sh9;
       spf=pass (google.com: domain of 3lqznxqwkadazpqemgxzuqdesaasxq.oay@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::a49 as permitted sender) smtp.mailfrom=3lQZnXQwKADAZPQeMgXZUQdeSaaSXQ.OaY@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6LeqGJyi5SWPU3tOxDtVuB77Rikt8y1ED5htAzdfzt4=;
        b=k+mMeu2p17vpW7cPE67Nxa9Ek8IO2dk3gFTNzzelO8fdvZ0NafDKIp2RUaby6tLcfs
         3EXDnSc69leEpqMER+YW15KoEdibHnIIbFmfVd3ueU31ACkGCgAagQ9OtfWTgJrLilpE
         FdShTYguvEseo/dEs40fZygl9EvRTiafYIRxUHxPxtFcXUuf6/KneGzoLXiONwF9dBs3
         9FZYbv3+h2TZvI/xjHbyBILrSmPkXwIZVfG9S8PekRhVrPO9NGN0VAOTdnhfn7R1Go4s
         2uKS4mmHyMAbAuIPlObq2vqJjVVYinEjm8NRw3ph9Uxhroz9vpMAG3wA9TW2MeMExZ7Q
         yn1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6LeqGJyi5SWPU3tOxDtVuB77Rikt8y1ED5htAzdfzt4=;
        b=HZFED0FBg/3kLDf5IuF4g+vUzmuqfmhrW4ulCmd4BHa+dg8cuWw8ojFbHpEx6FjCoC
         lvAAvoysxZnGea+rHIIog6eSRPWa/LSaaJ35/fMAQCUKk/1qI0WqKXH2Jx0Aqis55nOT
         qlV3wl9j3oKDWkuk7qPLrxn1KAircav9ac4hRQMBxXeUv/CWmLNsmtu1486tGz3/IdSs
         dNbz1TYYw35FH5je10gzXB1Fptup1D2BkY9zG3Xr2MckezQ9Oevhk16h7UEsM4Pb9uZg
         7ds4BMYArtb8K2YZhKFc14lGEPrq443UkGpBrlf1vL+JIGwxm1fJJq20QL0oS0Y2bkAC
         hSqQ==
X-Gm-Message-State: APjAAAUfy5t0UuEI3+GlF+yo590eOyWstHpwsl8uBG7Tg3Yq3Mw+N/Lc
	2aNSdXCBF0cWVI4fA4OfJoc=
X-Google-Smtp-Source: APXvYqyiadCRelt82l5z/ixXERmRtnbMCxfj30t+yUMsgG6P4a4N4YipYBTCO6KQVAaNBGITq8hmSQ==
X-Received: by 2002:ab0:2850:: with SMTP id c16mr3195643uaq.82.1567032982045;
        Wed, 28 Aug 2019 15:56:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:e3d7:: with SMTP id k23ls82948vsm.15.gmail; Wed, 28 Aug
 2019 15:56:21 -0700 (PDT)
X-Received: by 2002:a67:c414:: with SMTP id c20mr3922247vsk.127.1567032981693;
        Wed, 28 Aug 2019 15:56:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567032981; cv=none;
        d=google.com; s=arc-20160816;
        b=QumJJLxmh+c1whKHOnP9oS+hCMwIxpf+XZSG9cdZAblDxATlIv7GHM4S4W/7pOx9LJ
         6vSsEec6ub8QpYG/c8Zg93ofaXhbaoR0LmjfF46DG1CD3wt0kkaIbiiKaA8bmbJxiFST
         C5MveA7CtEAyLBQtlwQ3ad/dggJAt3W68h4gf3eVqs3bI2ShJR1wWhpkZ9a7GKSg5512
         ReUdTESM+hRf2dVTZJK5Siii+t3ZCJfVpBCfKWBFT2yGOz35SDsAQgg0iZHLq+vT3AzW
         ZDux1LgywJFORN0Q5shxp71QwJdFfW9GpZaVSH9J86dmSkgBOmT7uSwx5Jo0LzuEMBJP
         fQow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=helgrIKKAulT+KsUi/GFOUXK8QZ6n67xZn+iPINxEBU=;
        b=IKgU2XuNHpaFhM2q3Co72SEEoNc/M3fy34UhdnUJfyf2C6s0Vw4BIUsYFiNKTdPh0g
         oVKuIJhUQ+8o0t+nzHoNR+wCsUtmt4DQS0ZGuBQOv8AGmEnD10YXX9+zh/so39bRXJ2/
         E3hp3wp8rwstS+/g09zfIbch0eN7oJc385RWYgHRNFAgfpr5aNXgUH2XVM1BVSzsUQeo
         yKjGjeCecZRZja8IMFFfBjfPyvmm3PgYQAbn2DE4zmIfn9kKZ5guJnt1stYMgWMMsKpW
         mlIXAaxiz7J21OH12ihyBW7cG0PnWtNa5gUu2FWmY870lOGCSz6HGYwyZmu+iPRrmA8f
         3V0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ngR10Sh9;
       spf=pass (google.com: domain of 3lqznxqwkadazpqemgxzuqdesaasxq.oay@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::a49 as permitted sender) smtp.mailfrom=3lQZnXQwKADAZPQeMgXZUQdeSaaSXQ.OaY@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vk1-xa49.google.com (mail-vk1-xa49.google.com. [2607:f8b0:4864:20::a49])
        by gmr-mx.google.com with ESMTPS id u189si30686vkb.2.2019.08.28.15.56.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Aug 2019 15:56:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3lqznxqwkadazpqemgxzuqdesaasxq.oay@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::a49 as permitted sender) client-ip=2607:f8b0:4864:20::a49;
Received: by mail-vk1-xa49.google.com with SMTP id l25so506054vkn.1
        for <clang-built-linux@googlegroups.com>; Wed, 28 Aug 2019 15:56:21 -0700 (PDT)
X-Received: by 2002:a1f:94e:: with SMTP id 75mr3672763vkj.8.1567032981180;
 Wed, 28 Aug 2019 15:56:21 -0700 (PDT)
Date: Wed, 28 Aug 2019 15:55:30 -0700
In-Reply-To: <20190828225535.49592-1-ndesaulniers@google.com>
Message-Id: <20190828225535.49592-10-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20190828225535.49592-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [PATCH v3 09/14] powerpc: prefer __section and __printf from compiler_attributes.h
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: miguel.ojeda.sandonis@gmail.com
Cc: sedat.dilek@gmail.com, will@kernel.org, jpoimboe@redhat.com, 
	naveen.n.rao@linux.vnet.ibm.com, davem@davemloft.net, paul.burton@mips.com, 
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ngR10Sh9;       spf=pass
 (google.com: domain of 3lqznxqwkadazpqemgxzuqdesaasxq.oay@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::a49 as permitted sender) smtp.mailfrom=3lQZnXQwKADAZPQeMgXZUQdeSaaSXQ.OaY@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

GCC unescapes escaped string section names while Clang does not. Because
__section uses the `#` stringification operator for the section name, it
doesn't need to be escaped.

Instead, we should:
1. Prefer __section(.section_name_no_quotes).
2. Only use __attribute__((__section__(".section"))) when creating the
section name via C preprocessor (see the definition of __define_initcall
in arch/um/include/shared/init.h).

This antipattern was found with:
$ grep -e __section\(\" -e __section__\(\" -r

See the discussions in:
Link: https://bugs.llvm.org/show_bug.cgi?id=42950
Link: https://marc.info/?l=linux-netdev&m=156412960619946&w=2
Link: https://github.com/ClangBuiltLinux/linux/issues/619
Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
Suggested-by: Josh Poimboeuf <jpoimboe@redhat.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 arch/powerpc/boot/main.c         | 3 +--
 arch/powerpc/boot/ps3.c          | 6 ++----
 arch/powerpc/include/asm/cache.h | 2 +-
 arch/powerpc/kernel/btext.c      | 2 +-
 4 files changed, 5 insertions(+), 8 deletions(-)

diff --git a/arch/powerpc/boot/main.c b/arch/powerpc/boot/main.c
index 102cc546444d..3ccc84e06fc4 100644
--- a/arch/powerpc/boot/main.c
+++ b/arch/powerpc/boot/main.c
@@ -150,8 +150,7 @@ static struct addr_range prep_initrd(struct addr_range vmlinux, void *chosen,
  * edit the command line passed to vmlinux (by setting /chosen/bootargs).
  * The buffer is put in it's own section so that tools may locate it easier.
  */
-static char cmdline[BOOT_COMMAND_LINE_SIZE]
-	__attribute__((__section__("__builtin_cmdline")));
+static char cmdline[BOOT_COMMAND_LINE_SIZE] __section(__builtin_cmdline);
 
 static void prep_cmdline(void *chosen)
 {
diff --git a/arch/powerpc/boot/ps3.c b/arch/powerpc/boot/ps3.c
index c52552a681c5..70b2ed82d2de 100644
--- a/arch/powerpc/boot/ps3.c
+++ b/arch/powerpc/boot/ps3.c
@@ -24,8 +24,7 @@ extern int lv1_get_repository_node_value(u64 in_1, u64 in_2, u64 in_3,
 #ifdef DEBUG
 #define DBG(fmt...) printf(fmt)
 #else
-static inline int __attribute__ ((format (printf, 1, 2))) DBG(
-	const char *fmt, ...) {return 0;}
+static inline int __printf(1, 2) DBG(const char *fmt, ...) { return 0; }
 #endif
 
 BSS_STACK(4096);
@@ -35,8 +34,7 @@ BSS_STACK(4096);
  * The buffer is put in it's own section so that tools may locate it easier.
  */
 
-static char cmdline[BOOT_COMMAND_LINE_SIZE]
-	__attribute__((__section__("__builtin_cmdline")));
+static char cmdline[BOOT_COMMAND_LINE_SIZE] __section(__builtin_cmdline);
 
 static void prep_cmdline(void *chosen)
 {
diff --git a/arch/powerpc/include/asm/cache.h b/arch/powerpc/include/asm/cache.h
index 45e3137ccd71..9114495855eb 100644
--- a/arch/powerpc/include/asm/cache.h
+++ b/arch/powerpc/include/asm/cache.h
@@ -91,7 +91,7 @@ static inline u32 l1_cache_bytes(void)
 	isync
 
 #else
-#define __read_mostly __attribute__((__section__(".data..read_mostly")))
+#define __read_mostly __section(.data..read_mostly)
 
 #ifdef CONFIG_PPC_BOOK3S_32
 extern long _get_L2CR(void);
diff --git a/arch/powerpc/kernel/btext.c b/arch/powerpc/kernel/btext.c
index 6dfceaa820e4..f57712a55815 100644
--- a/arch/powerpc/kernel/btext.c
+++ b/arch/powerpc/kernel/btext.c
@@ -26,7 +26,7 @@
 static void scrollscreen(void);
 #endif
 
-#define __force_data __attribute__((__section__(".data")))
+#define __force_data __section(.data)
 
 static int g_loc_X __force_data;
 static int g_loc_Y __force_data;
-- 
2.23.0.187.g17f5b7556c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190828225535.49592-10-ndesaulniers%40google.com.
