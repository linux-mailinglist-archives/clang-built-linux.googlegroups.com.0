Return-Path: <clang-built-linux+bncBDGMDAP5Z4HRBI7O2WBAMGQENBRCOZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73f.google.com (mail-qk1-x73f.google.com [IPv6:2607:f8b0:4864:20::73f])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AD74342A56
	for <lists+clang-built-linux@lfdr.de>; Sat, 20 Mar 2021 05:16:36 +0100 (CET)
Received: by mail-qk1-x73f.google.com with SMTP id k188sf17269246qkb.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Mar 2021 21:16:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616213795; cv=pass;
        d=google.com; s=arc-20160816;
        b=irSRwWY1LF2xGz/k28CF/JESobpt1C+JjPKGUIDArAN+I/xgd5wMBlMxwirlw6iRKC
         8X/EsbigT0C1C35rlW0KS6XNwqDlI/CkmyYnXA9r0oXhbG48zfofpfxPxX9f3J/9RVn0
         kHuiPsiQagrrcLAw4vupnD9ATqny0+1gZnrDxzoXZXlwDbs/Aob6wJ6DY+COdeo9qBQp
         sLXwONxf5z0tCb1hx1v2Kr/9Jh2I85hB3udIHz8exH+tmud5ccq3MMY5rkPsQN5nIXSw
         XQq2btDuiC7WEW21YE/ubtGNwA3S8pESdgB34OoRkHK4Eeve23Idu6E0xJaLvZz5dChl
         gOFA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=2n/tWEl3P1N2hBGUUHmrbdclaXEOidxUjuVdx4Wpa4I=;
        b=IuqBScV9qlOfhBuZPwtH3gK/4dKL/ij7fm3lAYtL1qbvL6r2OyGacOMI9TukIQ6epV
         ysnko2f2bRZVsJ6te8N/s95v55Vgvr9u343pQmqWejIrUdHu/PtSu8TUxM4RFE1GmEqT
         CG7BwryW4dtVV328JnlXGG42glWHFRpfDBfXdxu+PgBEOHGJ3AndeRjWy2N+jKQ02txA
         Uy7to6ovli0f9tST0W3a0y0cXXUEZu+SeeD4pUHfnZlPYKi9L5EiZjhHuE/dGQLvbw/Y
         WBHHc4gHjHvCA5j73HrDyvs4PVGV910lyExu33ZTOjs2VWHtpAuMd3ky1jZ0lL6H/YJa
         U8HA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=PrfZRsmz;
       spf=pass (google.com: domain of drinkcat@chromium.org designates 2607:f8b0:4864:20::1034 as permitted sender) smtp.mailfrom=drinkcat@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2n/tWEl3P1N2hBGUUHmrbdclaXEOidxUjuVdx4Wpa4I=;
        b=bSqEa92GshhVR16XX8+Fo9FpYdKLdC+uHTVw7K7qInbHGXPXmZPxd4WvTwxiXNs5jR
         uyUes6cnomzOcB4J0gpxtmKngszuQXZJ04ep1PKh2/BwGVBCVbf0+fWJJWJh+NkpMQNG
         w4WhvttL7cJfxjZDencrO9MfLKmVHq3BcIAtn69C4tl9zFkyKNL427BCeA27BjOTCivo
         syNZV3u1rK8HH+A/HPXCdB+bp72yIRJ3P2BZN77j9SVxWsO3w80VCpFAe7BVOXB3MD/P
         p0ouZzObJzGmL5vyURoBTpTu2E1r3njf7TtTIlNKb/7U8AX1Jgu1qdZwqosfRsGqQjdW
         y2og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2n/tWEl3P1N2hBGUUHmrbdclaXEOidxUjuVdx4Wpa4I=;
        b=XGAPGT1CxBRAddYmYuLPAwNV+qVJFw+Rh/pDhYpdsBQEAXjl7rn3LFMq0wSh5HgsmZ
         0y8RhMoP6gPP1iO2adoMwOhxz1AbB/7Fabi6dAP29Ibk2cn9cjeT5RW4BDJ9Zcli3ZPP
         TpgePEmCM7sJd5PdkXOU2AIPQug8oLJRUx01JgmPIMU0tx1pDG+gWK2XlfEzivaRzJYK
         +i70UVDd/lHU+4NkcowOyjf2zXvbCE+Lqe4GvyB6iuBDtwjy9VgV/AYTu9Oum2H0a9B+
         +rhgYGum6OR4sP6fRVzkRJBPobZ5s3BGVvDbmsprTUaHeFkomw1dcbFuhrDN+/MrN3ME
         /T/A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530YqgA0ax26h06BjTkbIBznq9NSNxHARS1Xl/kBj0gZkTenjW+K
	GPsNwfL+h0R+BRaEXqj0JIQ=
X-Google-Smtp-Source: ABdhPJyyHgJ4SzDQYDWyXx/zIThKDoddyNutWd/xTuuUieWJhVDYo7JYzv0EdB81MKkEBwmUwkbZ+A==
X-Received: by 2002:a37:8c1:: with SMTP id 184mr1738239qki.472.1616213795448;
        Fri, 19 Mar 2021 21:16:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:56ac:: with SMTP id bd12ls1974504qvb.3.gmail; Fri, 19
 Mar 2021 21:16:35 -0700 (PDT)
X-Received: by 2002:ad4:44b4:: with SMTP id n20mr12307577qvt.19.1616213795064;
        Fri, 19 Mar 2021 21:16:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616213795; cv=none;
        d=google.com; s=arc-20160816;
        b=z10XYpkEo5h8P8Y7QC0s3B4poIg8hjIHnToQ0enOi/Wc5wt5t1dYF7N07bntNJwQfS
         VZ33VK5++b2ZdOktI7ydI+kgI1fgkgJc1+PKagn00AI6QazQxicYOswOQxtl85mBoUXE
         fhnPxIOHAC5sal7LpACu9PTwWQDjy8yxoZCTSpb/af+mcBbtytFuwf3yzkXvvhhZ0bLJ
         jPZpsFbH+mj0jb/leNHqg8kYmd1z0zoVnPVIvZOF32a3khxf3l9/6qc4EmzFVXIJLfqS
         DN015XpVm2pfqPQPJAk4lIbAJ4fYnVt8NiAUmT5YIXsF23rVxzfT+tw/UHtHO2geJkBg
         qQDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=AnMg47T8Z7mVw2QYcNj+ca1PflwjFpQ0knP09yHBQe8=;
        b=woT5PHiX0u2/ByBeJ4KU7Z+/2EnXMVZb+OiVCMMDNYPTEttNYGCKdh+6X73PXwtm64
         hMtSdm0x7VHl4QkvTCZ/6ekHegZYtgOouLnj5zffJTCSxrgmVlyERyFw06f6ukDl02eo
         XCK3qf/TceeYfBYWNrmlBA0hMxR7530kJ6X7JpUsASltLIXBdks6r/PhaLuAjJruUHGP
         6KjBFVgE/NcyoAZ243zisjVEihdQQe5bQJN+hpRICL3g31C4ph1BO3XIUBht2pnkVQIp
         /ocHr6I4ug1bqIwHzgTpH86MoRBOcOMqQqVyAQqSWv+hcl45vBLmomuif/3AeMxw5PDG
         XNow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=PrfZRsmz;
       spf=pass (google.com: domain of drinkcat@chromium.org designates 2607:f8b0:4864:20::1034 as permitted sender) smtp.mailfrom=drinkcat@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com. [2607:f8b0:4864:20::1034])
        by gmr-mx.google.com with ESMTPS id b4si512521qkh.2.2021.03.19.21.16.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Mar 2021 21:16:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of drinkcat@chromium.org designates 2607:f8b0:4864:20::1034 as permitted sender) client-ip=2607:f8b0:4864:20::1034;
Received: by mail-pj1-x1034.google.com with SMTP id mz6-20020a17090b3786b02900c16cb41d63so5801185pjb.2
        for <clang-built-linux@googlegroups.com>; Fri, 19 Mar 2021 21:16:35 -0700 (PDT)
X-Received: by 2002:a17:90a:ab09:: with SMTP id m9mr1910002pjq.122.1616213794673;
        Fri, 19 Mar 2021 21:16:34 -0700 (PDT)
Received: from drinkcat2.tpe.corp.google.com ([2401:fa00:1:b:f0c7:e1f7:948e:d8d5])
        by smtp.gmail.com with ESMTPSA id s62sm6998869pfb.148.2021.03.19.21.16.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Mar 2021 21:16:34 -0700 (PDT)
From: Nicolas Boichat <drinkcat@chromium.org>
To: stable@vger.kernel.org
Cc: groeck@chromium.org,
	Nicolas Boichat <drinkcat@chromium.org>,
	Alexandre Chartre <alexandre.chartre@oracle.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Christopher Li <sparse@chrisli.org>,
	Daniel Axtens <dja@axtens.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Kees Cook <keescook@chromium.org>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Michal Marek <michal.lkml@markovi.net>,
	"Naveen N. Rao" <naveen.n.rao@linux.vnet.ibm.com>,
	Nicholas Piggin <npiggin@gmail.com>,
	Paul Mackerras <paulus@samba.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	clang-built-linux@googlegroups.com,
	linux-arch@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-sparse@vger.kernel.org,
	linuxppc-dev@lists.ozlabs.org
Subject: [for-stable-4.19 PATCH v2 0/2] Backport patches to fix KASAN+LKDTM with recent clang on ARM64
Date: Sat, 20 Mar 2021 12:16:24 +0800
Message-Id: <20210320041626.885806-1-drinkcat@chromium.org>
X-Mailer: git-send-email 2.31.0.rc2.261.g7f71774620-goog
MIME-Version: 1.0
X-Original-Sender: drinkcat@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=PrfZRsmz;       spf=pass
 (google.com: domain of drinkcat@chromium.org designates 2607:f8b0:4864:20::1034
 as permitted sender) smtp.mailfrom=drinkcat@chromium.org;       dmarc=pass
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

Backport 2 patches that are required to make KASAN+LKDTM work
with recent clang (patch 2/2 has a complete description).
Tested on our chromeos-4.19 branch.
Also compile tested on x86-64 and arm64 with gcc this time
around.

Patch 1/2 adds a guard around noinstr that matches upstream,
to prevent a build issue, and has some minor context conflicts.
Patch 2/2 is a clean backport.

These patches have been merged to 5.4 stable already. We might
need to backport to older stable branches, but this is what I
could test for now.

Changes in v2:
 - Guard noinstr macro by __KERNEL__ && !__ASSEMBLY__ to prevent
   expansion in linker script and match upstream.

Mark Rutland (1):
  lkdtm: don't move ctors to .rodata

Thomas Gleixner (1):
  vmlinux.lds.h: Create section for protection against instrumentation

 arch/powerpc/kernel/vmlinux.lds.S |  1 +
 drivers/misc/lkdtm/Makefile       |  2 +-
 drivers/misc/lkdtm/rodata.c       |  2 +-
 include/asm-generic/sections.h    |  3 ++
 include/asm-generic/vmlinux.lds.h | 10 ++++++
 include/linux/compiler.h          | 54 +++++++++++++++++++++++++++++++
 include/linux/compiler_types.h    |  6 ++++
 scripts/mod/modpost.c             |  2 +-
 8 files changed, 77 insertions(+), 3 deletions(-)

-- 
2.31.0.rc2.261.g7f71774620-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210320041626.885806-1-drinkcat%40chromium.org.
