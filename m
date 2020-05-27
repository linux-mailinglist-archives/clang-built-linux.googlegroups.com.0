Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBIHMXH3AKGQEFNNFHNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33c.google.com (mail-wm1-x33c.google.com [IPv6:2a00:1450:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id E18C51E457F
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 16:16:00 +0200 (CEST)
Received: by mail-wm1-x33c.google.com with SMTP id k185sf1173791wme.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 07:16:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590588960; cv=pass;
        d=google.com; s=arc-20160816;
        b=wCacZSIxgQSwFGmqud5q1uaeQLQohvLiJ33+ljbAF9Bz0YiMsJDb+JUNPZ1l26f1uR
         faU+CUbnEuOf/gTUaHSNeKUPubiVaE+KxBDHRPV8l2fzptbkEOc7RByjWKT+PCZ5a/dF
         04pScbPT+r2wQW83no+SBbHKWfQwrpkdMbHFe7i1Ub4+jcuhe/GxN6HgxA5mONMLWAbF
         NdXiehScebxnVrFLuPuRYlU0mv7bseTAO29BS8M9jbL80FM9ukNY/nu74KzcqJUwfZj2
         dqbpQ9P1JgebCtsJ/1T9UVVtDdK2AojOsXz9nyOw+h3vhBJVl3vLPdD9nNCIfh1r3ZUF
         JIxg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=QJA+gCDA9dLLqy9NEd3isyC4rCBT96iHnHZgO10F7So=;
        b=CFoDyF8H54SRMg0L8XiVgbsUx8aI7GwSOtsRGpgSj4Lvi0/2S6xHBilP7THNPjhHjX
         vygSKpV/eQSxKztVNZi6gDW/hLGJNu1o7Rc/orXmnndhEt88wOtEu1xcsc7IEUsTBu7n
         wKOJa5lHmB3c0RacEPj5tb0+lBFmZa4WwX9VxRni16mrr6dNpvrBgMUOiHrcX+3CxuLw
         5z3wANygDLbWuE8j/ljC3iV0fH0flHiRo0dpus0u1yyHTyl3I7hwZJRlZTYsqcA9ODiL
         G5TKVB/A+3F+GLW8lvXuK+Jx47un0ecA9okW/wqo2LCZrc5z0UVCig+/qNhnegC34QOC
         f3Lw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.134 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QJA+gCDA9dLLqy9NEd3isyC4rCBT96iHnHZgO10F7So=;
        b=WznXyjL9HNxGH5SvriR9VAmJNmmy7Nv19AIU8mbZgyl8TxFBLtlSR6eeKjSLz4Eqw/
         CWDEbwwDadBdNSsYqA2PHO000yw46hbEW/iGQJDTBPSYo7LYMTrhUTO2OLkgpNOrymgI
         EQc+Kvz8LF27giHZAxpsqxrR5VcqFmmV3n3Lg3994MlL35B7TigqivZKS0ZRP6XB4jXC
         55j7Zas7Zm/gMMo+vgPeJPXsn4/XOJdegng3pxlsrBg6F8EZsbGjf0tfIFTmeRAjjeQK
         B9HeEwmSeImM8L0OaZQkZHuN/4qw4Z0EnvP2HtKj4o85+fVMVBvRfdkzYlPWO8+XdvIL
         SDJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QJA+gCDA9dLLqy9NEd3isyC4rCBT96iHnHZgO10F7So=;
        b=RsgLhTu8dCD3zir2ilA0FAnTyO/DoqV/SSM6Ba/MIm/WCInfWcYdVu4JAk6t89C5lE
         +530E8R/k6FwqWo5zQBUQfXa6+byKwCDN+VSWzJTN1nhujWQvYes0MLqIemlXKVwVzcr
         8VYQaPyEqihEDp7ieLQ/LF4Z85xkWDtav9IQeS2iXrf+coDgV0p0aJmfKPj0ZEShidem
         ZIMEwAmCa2YCIFLJ+OmuGWkiPHMlzGms+81LRj9Tfm2tce6q9o/G+oO3XhDh7S12x63/
         u9frkrjaAkDg/pgnvBHYl33PseLROmtuTRn8lLc6E0Wfo/wLtJ6gWJeNhiM3YsyaYpmL
         VcBQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530p1yhzoDi/FzJcCG/KhTgRoB1J14ZEuml6TqRP8vMV46OK9vCj
	06XqRcqkRteHFGgQ3pU2amQ=
X-Google-Smtp-Source: ABdhPJyDGDQz7K4RMRR9rHsCKree10rqh/cIwjvWaDiKsIIC7vRyc4LMKgf6wk7CYh9c1xp5Kt1CAg==
X-Received: by 2002:a1c:acc8:: with SMTP id v191mr4746512wme.154.1590588960692;
        Wed, 27 May 2020 07:16:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:1d53:: with SMTP id d80ls1593836wmd.3.canary-gmail; Wed,
 27 May 2020 07:16:00 -0700 (PDT)
X-Received: by 2002:a1c:2702:: with SMTP id n2mr4623558wmn.107.1590588960243;
        Wed, 27 May 2020 07:16:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590588960; cv=none;
        d=google.com; s=arc-20160816;
        b=y4l3T3jHaaWieVypBzM8bFKcY5nLf/wopgCLlf/Nsm3819ImzgHEDDzm/yiRXbAaEj
         LLxP7abbOgJP5hx2pSW4RWbApARjUU9wPjQLy8/etqAEh+rgxFi42/2XxyRkS9fiE3WA
         +ctToiuJoNgGMEcceElFaKnwBgFr3840kcb5uDMK64OHzscHQ+IjJEPIYjaOuz/YwIST
         OyTUVa7h0kYwGifP61+txL4MUXvAvqpTtJGLOqRYwBiBRsO7mCPD3UpxNkyj7krbiRbP
         0z7qIy88Rczq4CvdTXsBY3Z2I0viCtPM73YBhFtjdkrXdAinbmnmGj3oGCFxs0SwfWKS
         kUeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=sp7i5zkQg/vkf6nqh1D2a7ZBL9Kzbag7LDy8BPGdROI=;
        b=LJoSYS3MEXCeBVMgViTH4cTBoQ3BGPhRCsXNWXAH52GfzvUaFe4RQzjCvxqSZBAkfM
         MyKxDstQ7UVVeAcxdhSfPbVCnfDz+qB1j9VjwXnmJornyYR2wKLg3jB+hdIl5iefUHV5
         brW8whQH3HatDNgrIAG6jFf6J1hpkWC+Lwvgy8Rr111q0cbY2vT4nVqBI9ecdPxnnIUO
         HzTsGGpFov2CfMVyoXVKUvuz9eO6PZzm/1+gPy8cJvuq62BQybyNo8hZvrZBtEiVOTAl
         MX2OhLAveESM5aWyxPCeTIu+eT3Ur6qCqUNtWEKfFVrbA1R6FQEIuv4JTmL3f46FG8q+
         OOwA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.134 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.134])
        by gmr-mx.google.com with ESMTPS id q8si173567wra.2.2020.05.27.07.16.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 May 2020 07:16:00 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.134 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.134;
Received: from threadripper.lan ([149.172.98.151]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MPK73-1jNdyb1lNN-00PfUR; Wed, 27 May 2020 16:15:56 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	x86@kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	stable@vger.kernel.org,
	"H. Peter Anvin" <hpa@zytor.com>,
	Jiri Slaby <jslaby@suse.cz>,
	Juergen Gross <jgross@suse.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Tony Luck <tony.luck@intel.com>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] x86: fix clang integrated assembler build
Date: Wed, 27 May 2020 16:15:39 +0200
Message-Id: <20200527141553.1768675-1-arnd@arndb.de>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Provags-ID: V03:K1:Uosxpj6yvjMCuoWo+Rtov8UwzN5IwYem5nwdvTWLIAVID8yaP/W
 x7ewGXWq/QM+I7P3RCxJYWFjpDQalR+YODvDhjI71RN1tJZP8geV47TJs5LVSF7p7vmPoXm
 qImyMgJGjmDeyS2NV4hdWnbJNcpxvHX0/3b8jp2OkQ3phuf5uluN+BUE0FMfsSyprNtQvnL
 fV00HYQaumDJaxj6QfpPg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:GWnMZ0bR6yk=:0Y1nTwmFteYTcoIjQ40K3U
 cSlDlIO2MaEl7ZntvxtB1FiwS6sZj5h2Wg+YeSVHJJWLZhQIXpLujXfFgeCsDJdPdP4zf/tG+
 z3vjludYoIj/dSsu1DCKX7HKRRlmKIYylGoLzlP+MuZ1sPFCoUCafKtwamLGglgNZGGinSGGq
 L1vbbWJd6f1WpNSR9ORdxgFwNQHhK+uo6AllztWK76vGCAc/j8lXxkbtC3qKrPo2P1WpptWk5
 jkygJhIWjdiF2fLcgxOlge0rwyvXcUz5tTe+FrKYGH6yCfJREI3SqSKE3wQEuiTszKc8+xfvv
 MR6S28MzU+i5B7xWNneS8ed+VX4lLIaLNvTivoT5KkFO9oIed/dWF36QK6Mr/B18X0K7mXnCF
 A8C7hWSLo719jVIGoCZ5nmx4JUnICaW0NSFhkF108Ehn5KD31jXfYJ31FYtY2bvjz/GGRA31N
 rttY0nXn/FFJwP0pcT7RuYmHs4+WWv/3BqwURQa7ZNAoTvUtaXq0PcDwtxkLJVj3rnCsJQMAR
 Kuu5E+fWt5jFkCon4fRjZdu3DtMEKsSA23jsUwCLQHMPsNY7/qJ80O05GoPp8Uf69m6BiPVVi
 qggmvA7zKgPx6+pGVf2xZ4C+nsrulbKXXSdaycw9B56m9yssXSeKhVkx+np51y9bMD7jl+DAH
 qMPVpL/RBQBiU8cg20vCC+dyI5xv3jEQbdBbFg6r5fCtjqawk1CF9NgDV1Mo3nzu+bxn9Wicf
 LbA+0fiJ611f2RojqKBaHeqabSDVpZUeKPIF6dANGh7KANO3z2xyKj5HsQgPsLrk2VQi0rbrR
 LNUvfiZ7HNzDzeYD4csCPzFo1Q0czax1TFof2QNccYY3Pxn0+Y=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.126.134 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

clang and gas seem to interpret the symbols in memmove_64.S and
memset_64.S differently, such that clang does not make them
'weak' as expected, which leads to a linker error, with both
ld.bfd and ld.lld:

ld.lld: error: duplicate symbol: memmove
>>> defined at common.c
>>>            kasan/common.o:(memmove) in archive mm/built-in.a
>>> defined at memmove.o:(__memmove) in archive arch/arm64/lib/lib.a

ld.lld: error: duplicate symbol: memset
>>> defined at common.c
>>>            kasan/common.o:(memset) in archive mm/built-in.a
>>> defined at memset.o:(__memset) in archive arch/arm64/lib/lib.a

Copy the exact way these are written in memcpy_64.S, which does
not have the same problem.

I don't know why this makes a difference, and it would be good
to have someone with a better understanding of assembler internals
review it.

It might be either a bug in the kernel or a bug in the assembler,
no idea which one. My patch makes it work with all versions of
clang and gcc, which is probably helpful even if it's a workaround
for a clang bug.

Cc: stable@vger.kernel.org
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/x86/lib/memmove_64.S | 4 ++--
 arch/x86/lib/memset_64.S  | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/x86/lib/memmove_64.S b/arch/x86/lib/memmove_64.S
index 7ff00ea64e4f..dcca01434be8 100644
--- a/arch/x86/lib/memmove_64.S
+++ b/arch/x86/lib/memmove_64.S
@@ -26,8 +26,8 @@
  */
 .weak memmove
 
-SYM_FUNC_START_ALIAS(memmove)
-SYM_FUNC_START(__memmove)
+SYM_FUNC_START_ALIAS(__memmove)
+SYM_FUNC_START_LOCAL(memmove)
 
 	mov %rdi, %rax
 
diff --git a/arch/x86/lib/memset_64.S b/arch/x86/lib/memset_64.S
index 9ff15ee404a4..a97f2ea4e0b2 100644
--- a/arch/x86/lib/memset_64.S
+++ b/arch/x86/lib/memset_64.S
@@ -19,8 +19,8 @@
  *
  * rax   original destination
  */
-SYM_FUNC_START_ALIAS(memset)
-SYM_FUNC_START(__memset)
+SYM_FUNC_START_ALIAS(__memset)
+SYM_FUNC_START_LOCAL(memset)
 	/*
 	 * Some CPUs support enhanced REP MOVSB/STOSB feature. It is recommended
 	 * to use it when possible. If not available, use fast string instructions.
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200527141553.1768675-1-arnd%40arndb.de.
