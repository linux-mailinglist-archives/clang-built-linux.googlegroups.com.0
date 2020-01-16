Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBINSQLYQKGQEG4SCPGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E53713E4CA
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 18:10:58 +0100 (CET)
Received: by mail-io1-xd3c.google.com with SMTP id w22sf8361407ior.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 09:10:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579194657; cv=pass;
        d=google.com; s=arc-20160816;
        b=DijB9Ovbni/nxXlWY/rfvBi8tj16oxVWKScG+kLg9GO0bCOpsSlPZCRFzKSCixjVws
         1xXxIlBHlrHVKu0jLe2HpiReGv2S7l0g1sWgUO2rpNYtLMOmI59HG4FAZo67xYamvcgG
         jHWE+QpIJyj8cra0gPaMDiyHvM0FO7m9Y0C7FP1CjqEuEOJ/T/ie2I2n3QmkLwhnu1rX
         GphGJD/X6tJs3+09vwuzU1Yf7oqh+O2/h1ph/CTQrytAdspbnqD/bboe3YgVG0RyMYte
         5YaNoPpl7nU39hJcXFzbeXAPHEmZmJj2dnf5IqObuTZeZLVI+73WUqCydHHpOulNbXuI
         bjog==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=IaFZWqFLLSI4aFwBzkbj9UK5IEljsSrp2ZnoO+ISAOA=;
        b=UCyiv5r7RuMK5mheBxLtU2GJwcAFtt0FZ6k056AmLvpwQfhHqRlhxe9+TwnEPKI8PX
         fEHqr4HQn1uk/idzZJFuOODKA7FEiEpcnfBUjgpDJtTpiZdUjzV1hOmDVQsInM6C8fqd
         LieAVhop9uRTqjnv1Fd4la4sq+AO4+sCbnQdzEO2Yfzeqi3R05lbr7LvW+7iTc1v2m92
         RZu2n6h+aN71c/UfV3d/IFjVXSdXqlfv/8qUOvj9e0aKeG+dp+tHRC+qYxWoSgK5POFe
         73hiYpvdL0osaVxzrS/2WrxAjowWPr9ua+y/X9qGRmxWqLkHEuS8rzQl39oGXnsSbWIv
         0tyQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=g0fpha4z;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IaFZWqFLLSI4aFwBzkbj9UK5IEljsSrp2ZnoO+ISAOA=;
        b=ojAPARYUZOt/a6ba1D/rVRQfImC7cIk9lJ+kS0SXCD8PzqzSwuVuWWWEedsWPt7z3A
         jo8oc52QcnwdkkJM5BHof14LYdt2NTaCEaGimKhr3lVO5EOc+FQUHLNVb9RMA/jSyKa+
         Kt36tgUAHZj9Bc+o1X9vNjiNOaeacS51rHjuY+g0Yhxk9TwPQFXtR7WImDoaY0JcZ6Qu
         eJLDuhN4JP05vN8+NLNLCukSwVabtiuksLQqmbdlJ15HMWVHxKuSaWow0xjQ0eVxiq8r
         X4C5ie4964RnmtrDcVaSNhFptmRf2m4FuzhlpIxPQK6AYvm+ZP6gd5978MFg9JG/Q/RB
         yIeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IaFZWqFLLSI4aFwBzkbj9UK5IEljsSrp2ZnoO+ISAOA=;
        b=FP5u+ngdfHsC9sbX7eR0jPwaQ7lwO3WpNNYaZFy6+bYtDc4y0/QBRPo3XmHuZJWrZp
         gcMyAxg4sNGrWXlcUvTyah33rbAIiUh+B74u6h/ZThigpIjlp7kQRs55JL5uet97h02J
         BC2ql1DM5J+8VsSxO+dIXmhtXJzjMN/+nAuDsUTIWI2RHmw77CTGtAnJI6YkYBuu6Yap
         5X5uHWlO/vduQUhpEDmPWA/DepQd9J8BqTP1xrciaexcy96EXK6paULWoSjMtXen+rGo
         z3J7W+fE0OFhwvBs8urHif0TpsiRRG3gBZgWInUQ+GtMS9ikjc0Yc2za31NBPmlyN5MN
         XNPQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXErmO/4oj9pLvtHOoLy5gHoevjLOG1fb3TT7Lhv/Umru5kr9tR
	YDqy6RZVKXMdJms8ErFXYL8=
X-Google-Smtp-Source: APXvYqz7rIBt0AUCuw6wlR7Cvl0N1lsEvGwMPjopJ4DAH8GRqtqtBqDckq7PGBTe5NMCePhLqrvd5A==
X-Received: by 2002:a5e:c205:: with SMTP id v5mr27529570iop.41.1579194657125;
        Thu, 16 Jan 2020 09:10:57 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:5109:: with SMTP id f9ls2922804iob.9.gmail; Thu, 16 Jan
 2020 09:10:56 -0800 (PST)
X-Received: by 2002:a6b:c848:: with SMTP id y69mr26966074iof.24.1579194656582;
        Thu, 16 Jan 2020 09:10:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579194656; cv=none;
        d=google.com; s=arc-20160816;
        b=cd83Q1Ar+63dnhjBqf6g/uC2oMs4FJprxeWiM6w7zVRIF+xxT47L4MCejTkVm9n0QJ
         UMEeYn8XLkV3XOR2ccAD1EuLPo0QC/e+6O2E1ebMVqIxs8mUf5R3pzCzCII9bLra9wg7
         c6Gv0F0nTZTXvt2EWymOPt8diJGHzM/X6xFc5JAmFzM1MSP1ujbwxWGLq2BLQapnfDY+
         r9gEJZCD+lCCDVtM9F9JrkfksxFnhcK1WwRclmlOuAlF1WZ1HY7Lm2cVhxdog9FCVgs5
         nz/t822EByv5ob6NhTNJo/NJbroFR4Dcv5hLwVdhavD0LXjWh2J0Oq+/P+FYDyjKZCTR
         M3HQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=rG1RdM8+lOt4ISmWjZKxd1TiM/Fta12YzlE5fRjs1q0=;
        b=EXOVktTowo/3+rw/TFigYTJPP9m06G0gVbVg6kj/crAEfEGQ/NM73pEV/lEn7O0p/f
         PXRbnmoVdBh17aGhI4bVZfElt4HClYTeBXYL1yzPhrH9Xc8Lfd16RaxZLsH12EVMJmrx
         Iai5llu/9scFihJXl+y6VYa/yaeF5/i4vtYqgArlMY2QIJAPlTevg+3/AcXoqKD7UOck
         ZVCS740A5y/0jsxrBTOfwTsjqbVZwE/DwElSLv5gQAugL2v3UAtH75H+fkLaMeQw8vA/
         0OU4USpEnZdhEYknX6SxqrHrrJHAdb3D2IU0k1xZOCmafIbyu2KC/m6GV46QrMB7/l+S
         SGLw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=g0fpha4z;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v82si1099992ili.0.2020.01.16.09.10.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jan 2020 09:10:56 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A0E0B2468C;
	Thu, 16 Jan 2020 17:10:53 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Eli Friedman <efriedma@quicinc.com>,
	Paul Burton <paul.burton@mips.com>,
	ralf@linux-mips.org,
	jhogan@kernel.org,
	"Maciej W . Rozycki" <macro@linux-mips.org>,
	Hassan Naveed <hnaveed@wavecomp.com>,
	Stephen Kitt <steve@sk2.org>,
	Serge Semin <fancer.lancer@gmail.com>,
	Mike Rapoport <rppt@linux.ibm.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Michal Hocko <mhocko@suse.com>,
	linux-mips@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Sasha Levin <sashal@kernel.org>
Subject: [PATCH AUTOSEL 4.19 508/671] mips: avoid explicit UB in assignment of mips_io_port_base
Date: Thu, 16 Jan 2020 12:02:26 -0500
Message-Id: <20200116170509.12787-245-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116170509.12787-1-sashal@kernel.org>
References: <20200116170509.12787-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=g0fpha4z;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
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

From: Nick Desaulniers <ndesaulniers@google.com>

[ Upstream commit 12051b318bc3ce5b42d6d786191008284b067d83 ]

The code in question is modifying a variable declared const through
pointer manipulation.  Such code is explicitly undefined behavior, and
is the lone issue preventing malta_defconfig from booting when built
with Clang:

If an attempt is made to modify an object defined with a const-qualified
type through use of an lvalue with non-const-qualified type, the
behavior is undefined.

LLVM is removing such assignments. A simple fix is to not declare
variables const that you plan on modifying.  Limiting the scope would be
a better method of preventing unwanted writes to such a variable.

Further, the code in question mentions "compiler bugs" without any links
to bug reports, so it is difficult to know if the issue is resolved in
GCC. The patch was authored in 2006, which would have been GCC 4.0.3 or
4.1.1. The minimal supported version of GCC in the Linux kernel is
currently 4.6.

For what its worth, there was UB before the commit in question, it just
added a barrier and got lucky IRT codegen. I don't think there's any
actual compiler bugs related, just runtime bugs due to UB.

Link: https://github.com/ClangBuiltLinux/linux/issues/610
Fixes: 966f4406d903 ("[MIPS] Work around bad code generation for <asm/io.h>.")
Reported-by: Nathan Chancellor <natechancellor@gmail.com>
Debugged-by: Nathan Chancellor <natechancellor@gmail.com>
Suggested-by: Eli Friedman <efriedma@quicinc.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Tested-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Paul Burton <paul.burton@mips.com>
Cc: ralf@linux-mips.org
Cc: jhogan@kernel.org
Cc: Maciej W. Rozycki <macro@linux-mips.org>
Cc: Hassan Naveed <hnaveed@wavecomp.com>
Cc: Stephen Kitt <steve@sk2.org>
Cc: Serge Semin <fancer.lancer@gmail.com>
Cc: Mike Rapoport <rppt@linux.ibm.com>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Michal Hocko <mhocko@suse.com>
Cc: linux-mips@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Cc: clang-built-linux@googlegroups.com
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/mips/include/asm/io.h | 14 ++------------
 arch/mips/kernel/setup.c   |  2 +-
 2 files changed, 3 insertions(+), 13 deletions(-)

diff --git a/arch/mips/include/asm/io.h b/arch/mips/include/asm/io.h
index 54c730aed327..df1eaa365279 100644
--- a/arch/mips/include/asm/io.h
+++ b/arch/mips/include/asm/io.h
@@ -62,21 +62,11 @@
  * instruction, so the lower 16 bits must be zero.  Should be true on
  * on any sane architecture; generic code does not use this assumption.
  */
-extern const unsigned long mips_io_port_base;
+extern unsigned long mips_io_port_base;
 
-/*
- * Gcc will generate code to load the value of mips_io_port_base after each
- * function call which may be fairly wasteful in some cases.  So we don't
- * play quite by the book.  We tell gcc mips_io_port_base is a long variable
- * which solves the code generation issue.  Now we need to violate the
- * aliasing rules a little to make initialization possible and finally we
- * will need the barrier() to fight side effects of the aliasing chat.
- * This trickery will eventually collapse under gcc's optimizer.  Oh well.
- */
 static inline void set_io_port_base(unsigned long base)
 {
-	* (unsigned long *) &mips_io_port_base = base;
-	barrier();
+	mips_io_port_base = base;
 }
 
 /*
diff --git a/arch/mips/kernel/setup.c b/arch/mips/kernel/setup.c
index 8aaaa42f91ed..e87c98b8a72c 100644
--- a/arch/mips/kernel/setup.c
+++ b/arch/mips/kernel/setup.c
@@ -76,7 +76,7 @@ static char __initdata builtin_cmdline[COMMAND_LINE_SIZE] = CONFIG_CMDLINE;
  * mips_io_port_base is the begin of the address space to which x86 style
  * I/O ports are mapped.
  */
-const unsigned long mips_io_port_base = -1;
+unsigned long mips_io_port_base = -1;
 EXPORT_SYMBOL(mips_io_port_base);
 
 static struct resource code_resource = { .name = "Kernel code", };
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200116170509.12787-245-sashal%40kernel.org.
