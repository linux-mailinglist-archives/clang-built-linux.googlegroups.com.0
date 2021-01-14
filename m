Return-Path: <clang-built-linux+bncBCS7XUWOUULBBDP3QKAAMGQEHL7I5NY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A7462F6D81
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 22:54:22 +0100 (CET)
Received: by mail-pj1-x1037.google.com with SMTP id z17sf4191515pjr.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 13:54:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610661261; cv=pass;
        d=google.com; s=arc-20160816;
        b=KxtoTJ7dsUVVgLPro5+cMhgk9LFJDEB2v7gFBppmlpYA/x3b5qO38nR7PJ/x8wc0/e
         cpJvOzyzlUEY1q9C8NDz4Dho4d/Zv5pK0oM6XX+DIEOgxFzfXYKLYyTI2XjxIk5iCVMb
         qjp6p3bjYFD5Adaudm+TMQaCqnv2bpQhEzBw6Ardf3q3Fvry2oJszmxjY6OCgjCktIKb
         qsXO0crnrJOzcv1AIr8cCrHfeo8Q1Zs6pDygcwFHNQzIxiD902MTlHF3vTM7Y8lSAVFE
         k1+oc4mnC1Z+ljZJ2NPSykaYLi4EVtiKQO36kLjEwjCa+tl+utBW0PFFg6UQr9dmwAhD
         Xhxw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=31n2zgGYz+YfVx83mCukVtdoMNtcArN0G63Mz4JetCg=;
        b=by54hcLYhAlCQ2HnaPcZHh4z1nswtYFsMoHJRHt1fKu022OVAof6KEDlAqrlFmzLbc
         dKREdoU9TDOsnU/G+fK9z/X/3Bd9dEiodCvjqQ7+17Er5sqTBsDyteXJak6wILYQbsEQ
         uRJrQpYlfGnV+G2/s3zMzNrF2hlXauNLFkrHpSt865dah1G83xgYjzVv+xmCy6fLmUHg
         NTRjsJXdyY0x8ps3/qN0+5GouKuo0vDQz2zOJ+pZnfohG5vDE6iP/X1dDpLtSDjJLRVb
         12ML9XY3j65ICTgCkFO76T0CBMyBP1I8C9iG3E7lamLznzvH6CS1BLZzf+8pIKuvIW05
         bXNA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Nw9ejyj/";
       spf=pass (google.com: domain of 3i70ayackera2q807qew44w1u.s42s1q3w-ray19-1y3adw44w1uw74a58.s42@flex--maskray.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3i70AYAcKERA2q807qEw44w1u.s42s1q3w-rAy19-1y3ADw44w1uw74A58.s42@flex--maskray.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=31n2zgGYz+YfVx83mCukVtdoMNtcArN0G63Mz4JetCg=;
        b=qx1p7gpXJB5EcsFn2/lsp6nZ34nAdj4OfsQm9nlZFGBvfxYbXYLJdKz3l4umNluHqX
         uDn/3S1bo8N5gJ4ax2KXzwjdOgHTY6XGvJ/JyPJd8VbodRxM34nV6fI/wbkCEHzTBlSc
         cTxFH7NcfVn0HDW5cdBvKPoaD6rF9Q5Co8XjaQ4F67baEcw7MU1PPVCcGGxWJi8VSnSJ
         5AlPlwUl63/l5WFJ7PxR/58dpMBICP5MbJCBwj1Z/8wXeQmWkMk39NuT3/vfM+abOJk9
         sPmC23nItoYCsb5w9MKWfqb0G1MxTAcYmWs217ku12WrBoj3K/CpzN9H3DRe5WDoorVS
         ggFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=31n2zgGYz+YfVx83mCukVtdoMNtcArN0G63Mz4JetCg=;
        b=CvuHlhqlnh6rtDrDZRu5VW1M7vtuXMSSBEW697blU9neirv3zgCH7yjgT3+Xu5OsvU
         RuyMZle30TqHma9cvKd6SOmhEXOfJT0eNuGpqL/UZkEy+nwRNUjvPToQvfaGw45lBaZy
         Pm3YXwBDzc8arOg94fWWDm5fxC2Is92K7butMMD1WdTN4vuugDtMtHcvY9so0ul64f06
         /itON0izp+gpmWfYboBmzr5BZBKpEpdzauMPLzwlgTa7RU4FLUbyZbmXU0FpX1WfDuGo
         V5QJr2B8MHK3Nugi6GxjpWJxueZgq+oLE5CnT3uu76oAKDR1PIZb+A9jWid9s2Zkzh6c
         eHSQ==
X-Gm-Message-State: AOAM532tXCw9AMC3DBmyuekTsVe8MnAAveongW+ZnF3ngZzkQXckpPpP
	JUglReEaq+h5RaM1nj77/S4=
X-Google-Smtp-Source: ABdhPJwkC5H6UgSR8UYZz06h2g4xUS0TTQfge6v7c7jFguY9kNeyokONnidtZBZwLFoeytnZn1ieZQ==
X-Received: by 2002:a63:eb0c:: with SMTP id t12mr9547224pgh.7.1610661261270;
        Thu, 14 Jan 2021 13:54:21 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ab83:: with SMTP id f3ls3284652plr.9.gmail; Thu, 14
 Jan 2021 13:54:20 -0800 (PST)
X-Received: by 2002:a17:902:9f89:b029:dc:3032:e439 with SMTP id g9-20020a1709029f89b02900dc3032e439mr9431175plq.35.1610661260654;
        Thu, 14 Jan 2021 13:54:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610661260; cv=none;
        d=google.com; s=arc-20160816;
        b=hDtU2LdGEcC3dq/U33d4cUiALf8XKB/K07HXCnusjFhViZS5Qv5wbEzCCW0xZuOG2r
         MjLjosiBm7Hg5P6xg7or9VWiBnlcmda6NTxXu+XPJVOGqKDOh5GO921csX+gNCTHsVMq
         DmyF4VZoErdPDH3fLRlpiRvrevwHMlJUlIimSIpgwd8aIWOFj2XLSQGcKHp2ajIDbhJE
         M3/2gamagF/48g2KcP7SxQl61M9FgGPREX1Vl5Y/jtpyVQFHBzWJqKK6NOyxNt2wvyVY
         QiwdXiPmk4Aib1e0tVvsYrSqwOzv4bQ0yVxS7CMVoFgcUeSWT85x9Rs1RzemDBa95xAb
         A54A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=tgOM7SvsAS/8SvjP8wI77AkB8qnFEk/NyLJDnsaz2Ek=;
        b=RXViyyk8j6H9umeszynsSDVv5W/Q/PDaUN0vW0kS9mb7FlF3Mc1ueVuCl1v9V4sEva
         0V48HcgheO27LVGb8wQRWzH/EbEWRJry2b/I4ylzS+/2WUgkqjd+aFglrGMrgAm6KCRZ
         uAlnW+MTGkM+qshl8PigAva+aJ2DesPZt9C6+2i9vTtjmyNUrdN38bJE6JOSsQeeFCs3
         2uvR/L9jjMpva/Rnq07wpyA492WpYKPVwnL3DKeFCq4HrrV83gE8kNUHfG+7nUu/EU5Q
         b9YyJlfD/MW/cT4MUKmlNX4PSlkdCJwKjtK7iWgfpOur2Gl9g8iECexEDVzPXVonLQzS
         yzJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Nw9ejyj/";
       spf=pass (google.com: domain of 3i70ayackera2q807qew44w1u.s42s1q3w-ray19-1y3adw44w1uw74a58.s42@flex--maskray.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3i70AYAcKERA2q807qEw44w1u.s42s1q3w-rAy19-1y3ADw44w1uw74A58.s42@flex--maskray.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id nl3si550999pjb.0.2021.01.14.13.54.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jan 2021 13:54:20 -0800 (PST)
Received-SPF: pass (google.com: domain of 3i70ayackera2q807qew44w1u.s42s1q3w-ray19-1y3adw44w1uw74a58.s42@flex--maskray.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id b123so3228314ybh.17
        for <clang-built-linux@googlegroups.com>; Thu, 14 Jan 2021 13:54:20 -0800 (PST)
Sender: "maskray via sendgmr" <maskray@maskray1.svl.corp.google.com>
X-Received: from maskray1.svl.corp.google.com ([2620:15c:2ce:0:a6ae:11ff:fe11:4abb])
 (user=maskray job=sendgmr) by 2002:a25:500b:: with SMTP id
 e11mr13498852ybb.138.1610661259864; Thu, 14 Jan 2021 13:54:19 -0800 (PST)
Date: Thu, 14 Jan 2021 13:54:16 -0800
In-Reply-To: <20210114211840.GA5617@linux-8ccs>
Message-Id: <20210114215416.993167-1-maskray@google.com>
Mime-Version: 1.0
References: <20210114211840.GA5617@linux-8ccs>
X-Mailer: git-send-email 2.30.0.296.g2bfb1c46d8-goog
Subject: [PATCH v2] module: Ignore _GLOBAL_OFFSET_TABLE_ when warning for
 undefined symbols
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: linux-kernel@vger.kernel.org, Jessica Yu <jeyu@kernel.org>
Cc: clang-built-linux@googlegroups.com, Sam Ravnborg <sam@ravnborg.org>, 
	Fangrui Song <maskray@google.com>, Marco Elver <elver@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="Nw9ejyj/";       spf=pass
 (google.com: domain of 3i70ayackera2q807qew44w1u.s42s1q3w-ray19-1y3adw44w1uw74a58.s42@flex--maskray.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3i70AYAcKERA2q807qEw44w1u.s42s1q3w-rAy19-1y3ADw44w1uw74A58.s42@flex--maskray.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

clang-12 -fno-pic (since
https://github.com/llvm/llvm-project/commit/a084c0388e2a59b9556f2de0083333232da3f1d6)
can emit `call __stack_chk_fail@PLT` instead of `call __stack_chk_fail`
on x86.  The two forms should have identical behaviors on x86-64 but the
former causes GNU as<2.37 to produce an unreferenced undefined symbol
_GLOBAL_OFFSET_TABLE_.

(On x86-32, there is an R_386_PC32 vs R_386_PLT32 difference but the
linker behavior is identical as far as Linux kernel is concerned.)

Simply ignore _GLOBAL_OFFSET_TABLE_ for now, like what
scripts/mod/modpost.c:ignore_undef_symbol does. This also fixes the
problem for gcc/clang -fpie and -fpic, which may emit `call foo@PLT` for
external function calls on x86.

Note: ld -z defs and dynamic loaders do not error for unreferenced
undefined symbols so the module loader is reading too much.  If we ever
need to ignore more symbols, the code should be refactored to ignore
unreferenced symbols.

Reported-by: Marco Elver <elver@google.com>
Link: https://github.com/ClangBuiltLinux/linux/issues/1250
Signed-off-by: Fangrui Song <maskray@google.com>
---
 kernel/module.c | 20 ++++++++++++++++++--
 1 file changed, 18 insertions(+), 2 deletions(-)
---
Changes in v2:
* Fix Marco's email address
* Add a function ignore_undef_symbol similar to scripts/mod/modpost.c:ignore_undef_symbol

diff --git a/kernel/module.c b/kernel/module.c
index 4bf30e4b3eaa..278f5129bde2 100644
--- a/kernel/module.c
+++ b/kernel/module.c
@@ -2348,6 +2348,20 @@ static int verify_exported_symbols(struct module *mod)
 	return 0;
 }
 
+static int ignore_undef_symbol(Elf_Half emachine, const char *name)
+{
+	/* On x86, PIC code and Clang non-PIC code may have call foo@PLT. GNU as
+	 * before 2.37 produces an unreferenced _GLOBAL_OFFSET_TABLE_ on x86-64.
+	 * i386 has a similar problem but may not deserve a fix.
+	 *
+	 * If we ever have to ignore many symbols, consider refactoring the code to
+	 * only warn if referenced by a relocation.
+	 */
+	if (emachine == EM_386 || emachine == EM_X86_64)
+		return !strcmp(name, "_GLOBAL_OFFSET_TABLE_");
+	return 0;
+}
+
 /* Change all symbols so that st_value encodes the pointer directly. */
 static int simplify_symbols(struct module *mod, const struct load_info *info)
 {
@@ -2395,8 +2409,10 @@ static int simplify_symbols(struct module *mod, const struct load_info *info)
 				break;
 			}
 
-			/* Ok if weak.  */
-			if (!ksym && ELF_ST_BIND(sym[i].st_info) == STB_WEAK)
+			/* Ok if weak or ignored.  */
+			if (!ksym &&
+			    (ELF_ST_BIND(sym[i].st_info) == STB_WEAK ||
+			     ignore_undef_symbol(info->hdr->e_machine, name)))
 				break;
 
 			ret = PTR_ERR(ksym) ?: -ENOENT;
-- 
2.30.0.296.g2bfb1c46d8-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210114215416.993167-1-maskray%40google.com.
