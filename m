Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBEM6SCCQMGQEK5EHFFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 805B9388041
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 May 2021 21:01:38 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id 64-20020a6215430000b02902df2a3e11casf534987pfv.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 May 2021 12:01:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621364497; cv=pass;
        d=google.com; s=arc-20160816;
        b=YSTdR0VCOeYBotUyfbiAf7rCL07qvQymAf3WsJFHy+z2PMGokR5wljrSixaBvWjH75
         bdhtFOdfr9IpHjY424Sqj1LRyq6KaCncA0Dm9q/tgh76SjK7PN4eONgozFzUd44AHtET
         VhJ2BVW+/onT6gURG9cCbv/S+v1sz0odkKBtqqRZET+yy1ccXcIOfRdimGPXx0PJsOwC
         p9WLxuDgJtYCHavPqwFPK2/dtSywp2HGvZV3tC4ezdZGpI3R6lzsMCjYgKUENA6ebepK
         8M/u1oNeRnbobJDhivBsofhN1YNGgNZkGvnvkcQRxm0+VsnCG8AG/metIW+mr8SwXy9Q
         XTWQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=8n0P4RafTKHKX+o/tbgRYOYeVRu1Zzm9qc/fF17SW80=;
        b=jvnd6VfVbe0wOl114Ik+RGDM0r4z/6KpCS4aAmh/7MDf33LUgkEdljutkaL4hDEOcC
         /zHXpQPgTkQ6BBWMEgv1V2+8n5cSx6KcWW06iYLtO9GgHu0DGV2T4YDceMSfBMntsZNK
         B8GHEkoP7wKOsiZHXbHmGAaJoX5XmlfBhMpVb7oUEIzOVmw9lO95ZBtWKq9RkFeMvlWj
         nDkn7e+BBQaUoJ3vBxx0Ak3as+YMwwe35NRSrhlFrGdHI2BE7Y3DZFLXh0LwhWSXjnsR
         h+DCPjP1HtEPp6p/mtjGWAt3emi51a6Ji3WFWVwc9H7c3yNrF6s52f8GMKUdzis2xDXr
         jjTQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=gAFZkQUM;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8n0P4RafTKHKX+o/tbgRYOYeVRu1Zzm9qc/fF17SW80=;
        b=ckOsFuZwtT1H2VGrKYqnbkIFscqACrKMxs4pDvDDri3XQCGnIBLACCBGtAlerXWLnB
         i+IpccFOjtReHZ/luGMua/oOqriiKOW8EOTWvB0k0SKtpnpaZws2KV5Ml/83ebhrQYXp
         Uf/nMRarNn/Ucojdd+QekcHbZqjz7kKsiYAZn7yASRVx9jDTGfGNOXEioDOkbEiySXOE
         9k/0o+ZLcGhk+7VsRy4exhAf/zEvBHBZNH1qVu2nDQLkB0U7zY5ZFjROrrm2sVh5j4Rf
         NIKAgwVaF44ppbGiUYz62+/6yiaoZTDpEOYA9QTr9DKH6Mib5k99xy2c3Kb4sa6/iF09
         vvkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8n0P4RafTKHKX+o/tbgRYOYeVRu1Zzm9qc/fF17SW80=;
        b=KY44cZG03V0xyIUjibScjuTnjEb5z9m//wsyouTocCK3VDrDHwQ9WxF99INxbm9V9w
         8IOegHnDDVtAhkYDzNZu8f67RyQcctQiXBRSjZdgIWDghahZNuOsV+41QY3Zyiml3KvV
         6/BfJQ3K+dgSeOW715jaURfbM7IgIFQk94exokXo8hW4xRfcRSWXj4KxiKWL4eSNlZNk
         IgsL2ozi5iCpCKvGaEWVnWRpzm2/DN0gqUkymMCRm26YQXNFD3Wybw8jrpwWQJYnbabh
         YtPemEDqR7tVEdovzt6/RWnEbNnkDSgVRQPu2U3skM6k/5TfzTptNdmprwZE41oKKjsr
         H3IA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5326U3Yfov4vv4caEkXQIE0OVX5FRfPQFcZP4AM+IDuDO38WZdGe
	Wz8L9skN+B9QV8GEfC1Qq1g=
X-Google-Smtp-Source: ABdhPJy70ZtlW17Zt6Mk0K8LsnPbMtbLk7QcZC0bU5LOnLBZ78gUJd1Wk+keVBKX9njUp4GOdir6EA==
X-Received: by 2002:a17:902:e74b:b029:ed:8636:c532 with SMTP id p11-20020a170902e74bb02900ed8636c532mr6191304plf.51.1621364497267;
        Tue, 18 May 2021 12:01:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7208:: with SMTP id ba8ls11731697plb.10.gmail; Tue,
 18 May 2021 12:01:36 -0700 (PDT)
X-Received: by 2002:a17:90a:67c6:: with SMTP id g6mr6636523pjm.198.1621364496728;
        Tue, 18 May 2021 12:01:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621364496; cv=none;
        d=google.com; s=arc-20160816;
        b=F7Pg9S6ja7F+2bw2gxYA0KKsww8gliSvRi9as8hKSZNC4dley6975cBbPvUe2YR3Br
         219IA468p8QAGzy0+cYNvgH/Elw7ai36Zw/uNFmMCaIpLcU2gOOhPL4sLoEOIMDWEnjz
         yYpECiDEzIPpc86FILWjGs6U/XATv5tuIYEHtb50RXHE88W/BWtV4Uzs8eTdhRRW2ofY
         Z/z2VTLy5rEBLEY8u/NyWbgfpV6Mj583HqXlNrLZmcI3gOZ/+iL43rTaCSGkKy8Vn2W1
         L84RZbku5xEr/xjHCTgyde6xDoeZaSrhsRJcERgk3Yqm8t1BXcmRjvhPZyo68hvk2cIv
         fEjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=vZGLdt4RdVdNZKk9zbuqcBCpsOHRjQrdQCynoH6OoUg=;
        b=PMaYn+HvsGNEgo+yU0/i2DqBbAcujTU0l7QO5sXUoWUx9Yo6uJZ9e2h79IPC/U+N1A
         yOvXtqXWg28BI37QiNYp1fySLQiS/QPWJqGHZwRm+TiVBSL2IRQ/uvSkRFFxNPNZqj3O
         DDC2P/Vnm3T+dQvgVNu0zWujo7eeSYKPvx4KXbnHfAlB6IQLIKARFvsQx8/QNgskIALB
         oQgeihGdCkpsKp2WqI0j5MAO8vrcVBu8xQgzjCWpRhg+8ZL9clDYWZ3Ulxpc+rkrqJfM
         sh8pfgcNOcHhuWscPlASNYQpFKHAgNRk9smwd8aFoglyfrY1r0iWHrbEwPb0fdEazqId
         fJag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=gAFZkQUM;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w3si1529663plz.2.2021.05.18.12.01.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 May 2021 12:01:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2366A610E9;
	Tue, 18 May 2021 19:01:33 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	x86@kernel.org,
	Kees Cook <keescook@chromium.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Nick Desaulniers <ndesaulniers@google.com>
Cc: "H. Peter Anvin" <hpa@zytor.com>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>,
	stable@vger.kernel.org,
	Anthony Ruhier <aruhier@mailbox.org>
Subject: [PATCH] x86: Fix location of '-plugin-opt=' flags
Date: Tue, 18 May 2021 12:01:06 -0700
Message-Id: <20210518190106.60935-1-nathan@kernel.org>
X-Mailer: git-send-email 2.32.0.rc0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=gAFZkQUM;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

Commit b33fff07e3e3 ("x86, build: allow LTO to be selected") added a
couple of '-plugin-opt=' flags to KBUILD_LDFLAGS because the code model
and stack alignment are not stored in LLVM bitcode. However, these flags
were added to KBUILD_LDFLAGS prior to the emulation flag assignment,
which uses ':=', so they were overwritten and never added to $(LD)
invocations. The absence of these flags caused misalignment issues in
the AMDGPU driver when compiling with CONFIG_LTO_CLANG, resulting in
general protection faults.

Shuffle the assignment below the initial one so that the flags are
properly passed along and all of the linker flags stay together.

At the same time, avoid any future issues with clobbering flags by
changing the emulation flag assignment to '+=' since KBUILD_LDFLAGS is
already defined with ':=' in the main Makefile before being exported for
modification here as a result of commit ce99d0bf312d ("kbuild: clear
LDFLAGS in the top Makefile").

Cc: stable@vger.kernel.org
Fixes: b33fff07e3e3 ("x86, build: allow LTO to be selected")
Link: https://github.com/ClangBuiltLinux/linux/issues/1374
Reported-by: Anthony Ruhier <aruhier@mailbox.org>
Tested-by: Anthony Ruhier <aruhier@mailbox.org>
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 arch/x86/Makefile | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/x86/Makefile b/arch/x86/Makefile
index c77c5d8a7b3e..307529417021 100644
--- a/arch/x86/Makefile
+++ b/arch/x86/Makefile
@@ -178,11 +178,6 @@ ifeq ($(ACCUMULATE_OUTGOING_ARGS), 1)
 	KBUILD_CFLAGS += $(call cc-option,-maccumulate-outgoing-args,)
 endif
 
-ifdef CONFIG_LTO_CLANG
-KBUILD_LDFLAGS	+= -plugin-opt=-code-model=kernel \
-		   -plugin-opt=-stack-alignment=$(if $(CONFIG_X86_32),4,8)
-endif
-
 # Workaround for a gcc prelease that unfortunately was shipped in a suse release
 KBUILD_CFLAGS += -Wno-sign-compare
 #
@@ -202,7 +197,12 @@ ifdef CONFIG_RETPOLINE
   endif
 endif
 
-KBUILD_LDFLAGS := -m elf_$(UTS_MACHINE)
+KBUILD_LDFLAGS += -m elf_$(UTS_MACHINE)
+
+ifdef CONFIG_LTO_CLANG
+KBUILD_LDFLAGS	+= -plugin-opt=-code-model=kernel \
+		   -plugin-opt=-stack-alignment=$(if $(CONFIG_X86_32),4,8)
+endif
 
 ifdef CONFIG_X86_NEED_RELOCS
 LDFLAGS_vmlinux := --emit-relocs --discard-none

base-commit: d07f6ca923ea0927a1024dfccafc5b53b61cfecc
-- 
2.32.0.rc0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210518190106.60935-1-nathan%40kernel.org.
