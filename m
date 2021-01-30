Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBZGP2KAAMGQELIC4BDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf39.google.com (mail-qv1-xf39.google.com [IPv6:2607:f8b0:4864:20::f39])
	by mail.lfdr.de (Postfix) with ESMTPS id B6E873090F9
	for <lists+clang-built-linux@lfdr.de>; Sat, 30 Jan 2021 01:27:17 +0100 (CET)
Received: by mail-qv1-xf39.google.com with SMTP id d8sf7378277qvs.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 16:27:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611966436; cv=pass;
        d=google.com; s=arc-20160816;
        b=PgkZCuA5I5w7gl0NaaGPufZa+z+8yO2+cpsIvAVUqsykzgl5puI73/P0cnybA33y2y
         dSLQypxBjoPr7B+KIxk1LnaSfYP2cn/EaanxjiLcXVHm3jvJm2ccXvil0PuEFIRlbU2G
         VVZe9AKRgLMXIqRR3UY2ohcA3m/xqZiIvHjXELPux7o/WO5DHPyjvfh3i9+dKdYB5ynx
         4vXn0ZhSde3cLNuobVkXffKf1J2ZoexiSwQ4zd6x26jtnosYC6j106YIdjG262V1xC3l
         e9PUJdPMyfT3wW0we4t8pp3fR/TCJXxWSQlJc2XAMO0CheC7Toz+aHcMVpqABbTtsHRQ
         65zQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Pu67FI28fS6SclJ0UDHz9oBTgvOP6FbWiHAwaLNIj9I=;
        b=NbLQeZqoXDtjawgILRfV+ANM8YpnJRiOctms/L/VIvtMJTSNKh2VAZ/CVq6tvegMsx
         u1WjtlgDBsgAotuQM7ZzAe2uoWH6Vu4ZHw872VB9pPdLwUYbR1+24qgMnmV7ge6SvuZo
         Asky3RVos5PsxJPUT0SvXBl/knAGHT/CWDX+g+K1QKOVx1tUIH+Rf+pCoq+CV3d7x2qy
         D0ZO7yhO4rocgdEl0K+zFYzMRv1bj5VYZEo1LiEufEbEfYLI7y8ZZEzm3mOvDOzFqxVJ
         zTdLcFDsjXE6XxKK+NHPfFdO/FkfKCBdyEkXY9FECKZWX44TUulLi2HQ+Sacx6RBrxpr
         u4+Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=pGK18VaL;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Pu67FI28fS6SclJ0UDHz9oBTgvOP6FbWiHAwaLNIj9I=;
        b=SkHFweaRc9JbGoBZ1zs6f/n6/6f8fPCl2vZIIw0bNe758Abkxd69dooBTT8OCLM+3c
         ynSLuFPL8RvGE9vXS7E2Q8y2rXA5W27eRjZtilR705HuaINvZ8bDXh2LlpXM8CBOQYWQ
         Ec2guVLCIsFFUe5mC1bD9Cj9ZU9F57Pdrk+1NXpDH45N/mL5sCIEwwRH6fT587ZxZpAL
         lA/EWONZq+XPpT69PT9X5tlHnK+89fDnVNtMkD/Yvzo/gDv8P66rPTnXVKf4BNEeIT86
         Kw2GM6P31DIBa/zRfg170oa3SjIngnOc5ycv7+qI4HG5+UMGDomM2KcAUvZCdDY91UmA
         l9Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Pu67FI28fS6SclJ0UDHz9oBTgvOP6FbWiHAwaLNIj9I=;
        b=cZKI4OFK4fOkOQXQzRUA8JnvkcLKJUb6KHLo+HRuN3bdDKnyhluIOb2pBY+F88jxen
         zA/+id64Yso+QiegI6bwZiw7mImhG0MeIpnv5w6gHK7Ebn20v6oEtv2fzb8Vr36xGGI1
         dqq23hDBz/F9/0/LORbDIg/ufGcE7gJST97kb9ZB8Ey4SDM8QLLfgYhKfTwvcjsRUVSs
         B1gUzLHLsnqrZEgSeKlGoTzSHjUB6TmtQBh8H7FkgruO1tCsXFgMBFfhaUWjt6mGyF7c
         TC0IKrxOlX2vA1op7KtitjWrTA1OS/HJg/aRbTLTg8i64AIiI4ZGjWFRDO5OfVdno0B6
         1yng==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531kgGqp4bTPEGu5O+BFaBycLN8N1rPXcg7eAdTZxze2rP6Rb0v0
	2AZ4/95O9zbiNBX1PXqNP3s=
X-Google-Smtp-Source: ABdhPJzB7VEMFD35NnSxGA+3To9XFGZaHfnFp3iCbNyR1WASIKTu3uldvRegi++8LPOEBP2UwMIi8w==
X-Received: by 2002:ad4:45b0:: with SMTP id y16mr6605379qvu.3.1611966436871;
        Fri, 29 Jan 2021 16:27:16 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:90b:: with SMTP id 11ls5504131qkj.9.gmail; Fri, 29 Jan
 2021 16:27:16 -0800 (PST)
X-Received: by 2002:a37:86c6:: with SMTP id i189mr6312746qkd.211.1611966436496;
        Fri, 29 Jan 2021 16:27:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611966436; cv=none;
        d=google.com; s=arc-20160816;
        b=ZIeic2DKnOuEnkM1YdJ6PqmGTT/3iKR/+8ZI4Sg+CBoIbvbNLJUDoLFq0Hc+Tkf94u
         InVm37jdB0XbZICdQAzdeGGvfFwf5xV20405Znpk80ZuBjlQVZNvhF90P7VOW/fzr9hV
         vLjeVCaF1ZhUM5GaVRAxNsxqQ8DwRunnE1bagmSl6SjWLpau0SAeAZCAZSxBw3alJKWV
         ePESYgg2B5Ksdap/oFDTR2jnkVpae+MjaKMh1XAUK4Ds2QfK8U9QTuehlLe1WDjnsuNM
         q+39XsI7XgvnrASOwEnCw+PVZccuNzAWGZU+LlY0reM7Yx1jipZsVxF+DA3XB7755vq0
         58pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=3x9VFg7sCskUVPa9T5fWvrYkiNTKCCwthKMcxFyTqcE=;
        b=NUamHRuKbN2eFW9IknnEcySF+/mgyb9LZidGmX4wiqhW2E9Z95btCcxoZdweAiGVjC
         FigC+YffQ9JeH/JT2oJgHgAiihHXBvn3vx8tyDo6u6kSOHSd/0HAXQRv5METh7vibmOj
         iWH9EUkzlIHCtKQPVl5VW4BxVS7E1CV2yT97torRp1JfiaSKnCgCl2ChYS2ZDagMSbIl
         u/GFQQmxkk3vpuNPQPF5OZ64fWgWaghLjA/tRhvsNl2gUz6Ke+ZVXCJ98OeN6xpaf4OF
         +k8iibfLin5J2A/4SZEbpE04UX8NFklGDDemyZ/hAoKXMGFj0qXmMoSG68o+Eq25io3D
         yfCg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=pGK18VaL;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q66si435316qkd.3.2021.01.29.16.27.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Jan 2021 16:27:16 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7BA3764E00;
	Sat, 30 Jan 2021 00:27:14 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>,
	Kees Cook <keescook@chromium.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>,
	kernel test robot <lkp@intel.com>,
	Fangrui Song <maskray@google.com>
Subject: [PATCH v2] vmlinux.lds.h: Define SANTIZER_DISCARDS with CONFIG_GCOV_KERNEL=y
Date: Fri, 29 Jan 2021 17:25:58 -0700
Message-Id: <20210130002557.2681512-1-nathan@kernel.org>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210129201116.2658179-1-nathan@kernel.org>
References: <20210129201116.2658179-1-nathan@kernel.org>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=pGK18VaL;       spf=pass
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

clang produces .eh_frame sections when CONFIG_GCOV_KERNEL is enabled,
even when -fno-asynchronous-unwind-tables is in KBUILD_CFLAGS:

$ make CC=clang vmlinux
...
ld: warning: orphan section `.eh_frame' from `init/main.o' being placed in section `.eh_frame'
ld: warning: orphan section `.eh_frame' from `init/version.o' being placed in section `.eh_frame'
ld: warning: orphan section `.eh_frame' from `init/do_mounts.o' being placed in section `.eh_frame'
ld: warning: orphan section `.eh_frame' from `init/do_mounts_initrd.o' being placed in section `.eh_frame'
ld: warning: orphan section `.eh_frame' from `init/initramfs.o' being placed in section `.eh_frame'
ld: warning: orphan section `.eh_frame' from `init/calibrate.o' being placed in section `.eh_frame'
ld: warning: orphan section `.eh_frame' from `init/init_task.o' being placed in section `.eh_frame'
...

$ rg "GCOV_KERNEL|GCOV_PROFILE_ALL" .config
CONFIG_GCOV_KERNEL=y
CONFIG_ARCH_HAS_GCOV_PROFILE_ALL=y
CONFIG_GCOV_PROFILE_ALL=y

This was already handled for a couple of other options in
commit d812db78288d ("vmlinux.lds.h: Avoid KASAN and KCSAN's unwanted
sections") and there is an open LLVM bug for this issue. Take advantage
of that section for this config as well so that there are no more orphan
warnings.

Link: https://bugs.llvm.org/show_bug.cgi?id=46478
Link: https://github.com/ClangBuiltLinux/linux/issues/1069
Reported-by: kernel test robot <lkp@intel.com>
Reviewed-by: Fangrui Song <maskray@google.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---

v1 -> v2:

* Keep configs and flag names alphabetized.

* Drop mention of -ftest-coverage since it does not cause this issue per
  Fangrui.

* Pick up review tags from Fangrui and Nick.

 include/asm-generic/vmlinux.lds.h | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
index b2b3d81b1535..0e6c5da667a7 100644
--- a/include/asm-generic/vmlinux.lds.h
+++ b/include/asm-generic/vmlinux.lds.h
@@ -988,12 +988,13 @@
 #endif
 
 /*
- * Clang's -fsanitize=kernel-address and -fsanitize=thread produce
- * unwanted sections (.eh_frame and .init_array.*), but
- * CONFIG_CONSTRUCTORS wants to keep any .init_array.* sections.
+ * Clang's -fprofile-arcs, -fsanitize=kernel-address, and
+ * -fsanitize=thread produce unwanted unwanted sections
+ * (.eh_frame and .init_array.*), but CONFIG_CONSTRUCTORS
+ * wants to keep any .init_array.* sections.
  * https://bugs.llvm.org/show_bug.cgi?id=46478
  */
-#if defined(CONFIG_KASAN_GENERIC) || defined(CONFIG_KCSAN)
+#if defined(CONFIG_GCOV_KERNEL) || defined(CONFIG_KASAN_GENERIC) || defined(CONFIG_KCSAN)
 # ifdef CONFIG_CONSTRUCTORS
 #  define SANITIZER_DISCARDS						\
 	*(.eh_frame)

base-commit: bec4c2968fce2f44ce62d05288a633cd99a722eb
-- 
2.30.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210130002557.2681512-1-nathan%40kernel.org.
