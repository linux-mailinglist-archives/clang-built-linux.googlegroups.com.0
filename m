Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBYPF6L2AKGQEGOSQFIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B5DFB1AFE0C
	for <lists+clang-built-linux@lfdr.de>; Sun, 19 Apr 2020 22:21:54 +0200 (CEST)
Received: by mail-il1-x138.google.com with SMTP id l16sf9616930ilf.9
        for <lists+clang-built-linux@lfdr.de>; Sun, 19 Apr 2020 13:21:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587327713; cv=pass;
        d=google.com; s=arc-20160816;
        b=eS0a4aD5wZQBJKtBR4msMsZIxb8fAQrisNc83ky4Apr8GlBxCb9cAEEYWbExKyZ1Xn
         RCGNbCxeP56MD0gygg5pK6cG3D4R4mUXuO1QXA3sQEb950Go/F2F9tyTF090M3odpkYI
         FGUfR7eYkFC8+W08HJKKP+u8gb7G8kciTUhChr8lbYxHy3dvFHkNI07z7+QVJnXZ4RzS
         rA4BaYjp+hKAWOdq5Wr7bJ9nepQ40rUxlWZArZbiiWrA5BRrKbZT/Xj7cHrMxf9Tqigj
         0mb0j4RyORVwZJF48F9rad+Dd1YUhi9xrtojdzxdBONV+1Ljc8h7QKx3aTFG4IWh712y
         j+KA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=XNZ5RMdyw2jCzGn2ZJ+1cLjeVYcuptmwD+dqcob/gN0=;
        b=iAlilF49dV0xSKk49mSCK0y6+7BnWPOeHvJsw7Zu11o0cVY92TxgjrkAMs7QjLiWLB
         NZZixOwYPqHK0FgG+L0rtuM2OQugk1Kj0p2A/xSmIFp9wSHtcQNOpq6O/x2r14lhn7ut
         ft2WawDh35xpYBwgkUfB+cLuGcWrnxBaYD7VyOfs5dcfU2kcZZCUFnPmrVemP2Zw1ngO
         GjPZBUCSz6DmVbDvuNn/33q3wECyjuCMnuXqEDyHpwJ8POez4DNtl1SietAc2yamp06G
         a3VGG5t/48et6/Vj8uCn3ZTL36UjXiTt5OxgxFJ6TezycTDXKeZFcCOyQNE3nuYQ4HUQ
         PakQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FWvrXP6C;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XNZ5RMdyw2jCzGn2ZJ+1cLjeVYcuptmwD+dqcob/gN0=;
        b=nPvAIfjuCJcilVIVyT9VuqFB592bpaS6x4U7VXI/91B8sySnCgOlldW/pAqFye5jxB
         4JuMMbPzE7ab+VsB4Xx9wtfcphxTMZImPQBqbnyDRMRqVYKPtZiBNM7vie8OgNH2K8fA
         HYwd5LpKRUL1AYf73GByqpXeSoptwdkBNuV9df4cryDvj57sjqcDBUcMiQBjcQCFLTlK
         kETCC4YR84Lf8eRZpM55VLjzJ7UygEFvOuvZQjKk3JlzJY04siRzUkpAC7b01A5SMSF4
         IHiRZQQlJqzKI8XcCdx3zzuCNVC4JSM/swaY/V2koCDLZB2nEc4aS1bGMfQsxjUpr4QY
         wBgQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XNZ5RMdyw2jCzGn2ZJ+1cLjeVYcuptmwD+dqcob/gN0=;
        b=UjACSTP+ShYVRysZ2sb5O0K40h0FSx0VX37WVutleb4atNKJCZON4/+1VgAY+BVvyZ
         K5SsDe9Lnu/S28LrzCmalRC7yL4wBjappuV2GcLK/qAOfMeFOQstmdQ5OMlq6TN44I3f
         cjFc7tXFuKbwp5SqP9QZxeh/5CDvFLU2q7Ppc7VJ2c5wSCb3fJ21CKBsTOuG+WTSH86C
         Fv4CtFsLWMbMg+c0MOYGP0sBlqc1uJLUp4MW6cR2JL1zsYFcDOpk/JDWpytfBiSBZWt1
         eo95JDO4Tzll+bwd963+xkUZPkczE9z/7nsfs590dtk9PbqGx7k9iN8UHA871u2onv+P
         yOOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XNZ5RMdyw2jCzGn2ZJ+1cLjeVYcuptmwD+dqcob/gN0=;
        b=UrJhy92TtYysuL0IHvccq4ZbcJafU+Y5mKIbHUN3tyWfpwmWc3037Tm5BoQfCYAtGS
         YUbqsiDWTAqGdHJOhYjIJGbq/xPf2zNHORFbyuSzNunsEloLKup7Mi357KdgBvtgIpSG
         D03sfIqRFk1KVczB33FuD3OgB+XH2uJn7gIhnvFza0vLRhF/aO5VCI7ATSYbfh/mp7vB
         wuF9I5LXKJ1ftKaVdD/t2G2b0qFcPIsjNRLlxL2TteSI6UnXwpfuIW54yUOZl/dZHFZZ
         zXg2rk2vOuhxra4AzBY4d0rYXBsK4JlaI0YBSIGf+nw3DrJ6ynSt8NH8SBPETQ54BIeN
         q4kg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Puasmn/KFwtDpT4GaOrWwM2CiALhl5TuRFzyi1xDkkGm0YwmyVE3
	vJM6JlQ8YZVIdFQ/5wzVUPc=
X-Google-Smtp-Source: APiQypJSOYYMSbjMR4gAvkNi6zcCQU32kC9qQ0vGVEYVXLMVQv8Zp0NB+qFpzWR7MJVM7onAPpedHQ==
X-Received: by 2002:a5d:91c1:: with SMTP id k1mr12125298ior.8.1587327713705;
        Sun, 19 Apr 2020 13:21:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:d481:: with SMTP id p1ls3949895ilg.2.gmail; Sun, 19 Apr
 2020 13:21:53 -0700 (PDT)
X-Received: by 2002:a92:4896:: with SMTP id j22mr12129547ilg.158.1587327713450;
        Sun, 19 Apr 2020 13:21:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587327713; cv=none;
        d=google.com; s=arc-20160816;
        b=FD7n/IbMR9BsJV6lm1tTvc4t6TpzsdHM47tTp/Nhb658qsH5MTu+FF0IOq14+6Pv3d
         8guOEwm558+XvIjkGF58q3gmTaWwfzXAYP3SqaDUZVASEFBEfKlHNlragGMRcpKgHbf1
         tlbO8fXvayxSiA8hQ5YQerd55UiYQHCzH24uPMnSbpMrfu/HJ9toyC4a4wdgmp7TesOx
         F0cAgvXByL72oaAK26BhWmiea2TG62gJZRKlYyaV2+R6MzMfqaFErH+r1f6keQrYaHkB
         SSKD7VtpXe8QQeU+RargZ8+vWgEXl1UQODys8FrCjotYRLGx7LIdYBdtA8LHhCq0kitZ
         d5sA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=vBTqjGSKxgqxZT9szVE8GVzxQE45UvUGVBjF3adPVE0=;
        b=lyGfpQ1nVNZQvhRd5xtbk5FVaYFp2tFMBArT28c0A9nvcVxpAzdyZ+6nTOhV7zpy+h
         1U5xeIRWsFxjLSw/461R+YYsHdmdTcm0uep/jShY9JVL918H7Ow+wL3yblyaJpKYjOPt
         sXyIeOcPqd8i6KH10rcjK5KUFaLTBTXh1YY0Zkf+cpqFP3uGkTq+WKUJtbJwF5p3Ey45
         GVt1yaZjx0lOOH3R8fdId8yVnzo4f50PyjHv7Q1i4vzA+9NDe+1YF5b0r9URyzH9AgMz
         yj8O57uZDxeibvf+x32raADcLy1NV0SZ6rouU4ErkSYssQQEExz7f7SHc2gCunshJma+
         yUKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FWvrXP6C;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id o6si63664ilo.4.2020.04.19.13.21.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Apr 2020 13:21:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id g30so3919342pfr.3
        for <clang-built-linux@googlegroups.com>; Sun, 19 Apr 2020 13:21:53 -0700 (PDT)
X-Received: by 2002:aa7:8118:: with SMTP id b24mr1866865pfi.321.1587327713102;
        Sun, 19 Apr 2020 13:21:53 -0700 (PDT)
Received: from Ryzen-7-3700X.localdomain ([82.102.31.53])
        by smtp.gmail.com with ESMTPSA id s66sm10881010pgb.84.2020.04.19.13.21.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Apr 2020 13:21:52 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	linux-kbuild@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Dmitry Golovin <dima@golovin.in>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH v2 3/3] MIPS: VDSO: Allow ld.lld to link the VDSO
Date: Sun, 19 Apr 2020 13:21:28 -0700
Message-Id: <20200419202128.20571-3-natechancellor@gmail.com>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200419202128.20571-1-natechancellor@gmail.com>
References: <20200419180445.26722-1-natechancellor@gmail.com>
 <20200419202128.20571-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=FWvrXP6C;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Currently, when linking with ld.lld, this warning pops up:

    arch/mips/vdso/Makefile:70: MIPS VDSO requires binutils >= 2.25

CONFIG_LD_VERSION is set with scripts/ld-version.sh, which is specific
to GNU ld. It returns 0 for ld.lld so CONFIG_MIPS_LD_CAN_LINK_VDSO does
not set.

ld.lld has a completely different versioning scheme (as it follows
LLVM's versioning) and it does not have the issue mentioned in the
comment block so it should be allowed to link the VDSO.

With this patch, the VDSO successfully links and shows P_MIPS_PC32 in
vgettimeofday.o.

$ llvm-objdump -Dr arch/mips/vdso/vgettimeofday.o | grep R_MIPS_PC32
			00000024:  R_MIPS_PC32	_start
			000000b0:  R_MIPS_PC32	_start
			000002bc:  R_MIPS_PC32	_start
			0000036c:  R_MIPS_PC32	_start
			00000468:  R_MIPS_PC32	_start

Link: https://github.com/ClangBuiltLinux/linux/issues/785
Link: https://github.com/llvm/llvm-project/commit/e364e2e9ce50c12eb2bf093560e1a1a8544d455a
Reported-by: Dmitry Golovin <dima@golovin.in>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---

v1 -> v2:

* Move into Kconfig so that the warning does not happen.

 arch/mips/vdso/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/mips/vdso/Kconfig b/arch/mips/vdso/Kconfig
index 36a52158d849..7aec721398d5 100644
--- a/arch/mips/vdso/Kconfig
+++ b/arch/mips/vdso/Kconfig
@@ -12,7 +12,7 @@
 # the lack of relocations. As such, we disable the VDSO for microMIPS builds.
 
 config MIPS_LD_CAN_LINK_VDSO
-	def_bool LD_VERSION >= 225000000
+	def_bool LD_VERSION >= 225000000 || LD_IS_LLD
 
 config MIPS_DISABLE_VDSO
 	def_bool CPU_MICROMIPS || (!CPU_MIPSR6 && !MIPS_LD_CAN_LINK_VDSO)
-- 
2.26.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200419202128.20571-3-natechancellor%40gmail.com.
