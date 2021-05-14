Return-Path: <clang-built-linux+bncBAABBIMH7KCAMGQELJSGAFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E6EA380B09
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 16:05:22 +0200 (CEST)
Received: by mail-yb1-xb3d.google.com with SMTP id e75-20020a25d34e0000b02904f982184581sf6828605ybf.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 07:05:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621001121; cv=pass;
        d=google.com; s=arc-20160816;
        b=ICPFw6Y0FFIKmdcGFH4+CZuyKXp8jAKfRugRZAwlnZiLdKbEAiTNFSFJU+GPp5bpjT
         sppf/25c0hjC1ZCkUFm1w6HJGgSddb/UF1dzPTt9qyYxmVpW9SYyp/lrCU2VvOLG78AQ
         GnLAnydKx+JKKkT8COb973a+80PPyUBZyKHHyAR/wxD3yk1LcLmQiO5zORW+fd/4dPJa
         qyc17XDqmtjXhInIK1qtxzxz+pmO0+TTdntL3wSAwvExnFtc7ghum+L2dkKKA2gQ50Xq
         gKLtS5qYiEUiUlslYVYjO4nAn8J5cPdu1IIhEsteg9tKhgCWDve3b/rohSsWiy56ZoFN
         N7/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=O7AsRYktbMnJyEJc9CgINPDrkPKJRq2KHOWt3ppp/5A=;
        b=hAiezNapQnF3ldypxysex2u9DfUUj5q73Hl9k1SBjldzxElOY/lxVCEeCRm/hhGf6y
         x2NsGYotP2v0xolvDHw4/86/oCo4Q17U5gmCcqT1RRWfGWpko6OCIMD/Ga+QQsCGcTXJ
         MJRt+H8SAUqv6C5/KfGtV64wLpJypvl8x8pl2DL50Q0zS1zr/SPktvbZqk5QMsBZSIIr
         bDVZbUM51WUqtKP1yVNIzC2yDHYfR1YA5zgyqTHprm7mMwZqr2oeTyj+IFfI+ERq+hLm
         C5yipnTkQnn7mAr7Jg69x16ZWWOWsDsCG2OQWvwuVAfZKqgRZkZndjk9NxXs3HiKBTYT
         J3JQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ZoH5RPWl;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=O7AsRYktbMnJyEJc9CgINPDrkPKJRq2KHOWt3ppp/5A=;
        b=qGbncE3ysZGij8kewQfQMBrY6b+etPBs0o+z7oy4dhnkMcHi3wxTzYPmE1BqMVB6JN
         FTtBRbDZlcH4e1TSAtbyibsVcGKwW6Q2NQjyZ4EDnwqXx2K88fiOpy7jC7eCO970xP9H
         1vFX21QlgXvKGM+klqz77R9+EniVcn+PAtENX1ehGLZsQSfNkkmrQPurbS248rnz0F3q
         mmBQ//bLfWA7Uh2N+h9BBwFYCxorhsPnV9+FVYPNEsYr8rZa1klP9FAGqf9rFqsUR9lq
         x0XF7P9GhbhPKtovoT/zOBk++20LoqNTSEwrxPcLZZb2HRFIZPRPTX24WrfSfSy4vwhG
         Pvkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=O7AsRYktbMnJyEJc9CgINPDrkPKJRq2KHOWt3ppp/5A=;
        b=Xm9o2r+0n0YO0i7vVeqrQXW99ke/iNcpb+UI1tCvlUUFX+PpI+Anmfqf/TLKGpcVRx
         r6LmdYfnpUnFthfubNUOoHrKBHQU3PJGWxvNm43FPo3N0zDL8+B7kzeLvFl/A8CKgUd2
         wAnVqe0FwqjtrR9hn3BOEKV+YpeozGPxGxwoLwottJtKSBzR9qRdo7t5/ejcnSX5tGI/
         1gbQzGnrfSSeOLcTkf33K6g/ncu/tKtR0xxlXKAwzSigzibMv2VB/bzRLRS/f8O7y/kS
         KAneA/4uNwTAsNyKLtLG5u1iJI+nBfG+bbD4mnvqJXk95/Cl/oX0kb4nTDnGP71xc1u0
         Bb4A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533AeoKPJ8cBJ3lAppV2hjkPGV9IugOR4xjsV60fcrKZc6Zvv2Im
	IcBNbn7NfAYhlNYjprycT+U=
X-Google-Smtp-Source: ABdhPJy0zPboZbnF63Z4q1sRe0Jn8sZK5E0CcHsHg+254EdPpFoY7Zbg3DzHxbB/Qa673EokZFzs0Q==
X-Received: by 2002:a5b:303:: with SMTP id j3mr58715322ybp.433.1621001121374;
        Fri, 14 May 2021 07:05:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:9307:: with SMTP id f7ls4353544ybo.10.gmail; Fri, 14 May
 2021 07:05:21 -0700 (PDT)
X-Received: by 2002:a25:6ed6:: with SMTP id j205mr61825510ybc.206.1621001120985;
        Fri, 14 May 2021 07:05:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621001120; cv=none;
        d=google.com; s=arc-20160816;
        b=liUCOPulpAMaHpzKyqdxZUuibMyp6LpPKeQx/+ekfXTzBBZwww7DVjxmCO8wpJIBz4
         MIMuqMOKaOphaUVoUjSgnVTWfdnZYI8HLgZcsRqeil1W5DF0QdiZZZ+BgniIAtI/Q5nL
         mIAWszOgqgYO5xGI3aXqHzO+7OFnB4Mbc1SO3/YjAUfrf2ic2Fvg2oVi0P+NTpBkL3Pm
         wFXCiQpURphV0eMQKeNc7Ca28VZI78lxsyghuSFycjKRAP91l92Ce9GonzeRMOJyb4fD
         c3BQeFSSNj86sA93bE0fQdJW51I8MY5tkivg42i1dG/B6h4BgppfK1Q4iypDhJi5Xjyv
         CjxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=WZwqvarPuPvSMoymqVsPIpf0YBU4cmoB1sP0G0Yl4hk=;
        b=fEpheEfHRMOHtdn3WE4qWaZrvXPbD+IqhSgCYOqsQ7M0tqIYbdqCdX5kCehPMfA3SI
         w4xLXpSHJ2QbP1KNbSFNnA5EzAuYPVW2QvQ57JvTcC4chwbmZvgaJ4gvbfkkigf6shAl
         79oehp9Bvcj5FO9rSOs7JB1Ji2JzbB15sZXUQkS7QymImyu0g0ON7tK0TMPKrwsRtnzu
         9QPPf1NZmOVEjPsjVGu9fa4gq0F3jXNCZSEB0JfGeQwl1Rh9DJZkzVv6kyRva3J7O0//
         XTkADqFVwN2crRrmuaFlAYrgQzpd08+wfXluEYpHT2ANZVJsTbezhhazzx5HOLVfNmPO
         KDqg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ZoH5RPWl;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f9si581807ybg.5.2021.05.14.07.05.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 May 2021 07:05:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id C121F61463;
	Fri, 14 May 2021 14:05:17 +0000 (UTC)
From: Arnd Bergmann <arnd@kernel.org>
To: Steven Rostedt <rostedt@goodmis.org>,
	Ingo Molnar <mingo@redhat.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>
Cc: Arnd Bergmann <arnd@arndb.de>,
	"Steven Rostedt (VMware)" <rostedt@godmis.org>,
	Tom Zanussi <zanussi@kernel.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Qiujun Huang <hqjagain@gmail.com>,
	Tom Rix <trix@redhat.com>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] tracing: events_hist: avoid using excessive stack space
Date: Fri, 14 May 2021 16:04:25 +0200
Message-Id: <20210514140429.3334181-1-arnd@kernel.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=ZoH5RPWl;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

From: Arnd Bergmann <arnd@arndb.de>

In some configurations, clang produces a warning about an overly large
amount of stack space used in hist_trigger_print_key():

kernel/trace/trace_events_hist.c:4594:13: error: stack frame size of 1248 bytes in function 'hist_trigger_print_key' [-Werror,-Wframe-larger-than=]
static void hist_trigger_print_key(struct seq_file *m,

Moving the 'str' variable into a more local scope in the two places
where it gets used actually reduces the the used stack space here
and gets it below the warning limit, because the compiler can now
assume that it is safe to use the same stack slot that it has for
the stack of any inline function.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 kernel/trace/trace_events_hist.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/kernel/trace/trace_events_hist.c b/kernel/trace/trace_events_hist.c
index c1abd63f1d6c..e3fe84f017a8 100644
--- a/kernel/trace/trace_events_hist.c
+++ b/kernel/trace/trace_events_hist.c
@@ -4597,7 +4597,6 @@ static void hist_trigger_print_key(struct seq_file *m,
 				   struct tracing_map_elt *elt)
 {
 	struct hist_field *key_field;
-	char str[KSYM_SYMBOL_LEN];
 	bool multiline = false;
 	const char *field_name;
 	unsigned int i;
@@ -4617,11 +4616,13 @@ static void hist_trigger_print_key(struct seq_file *m,
 			uval = *(u64 *)(key + key_field->offset);
 			seq_printf(m, "%s: %llx", field_name, uval);
 		} else if (key_field->flags & HIST_FIELD_FL_SYM) {
+			char str[KSYM_SYMBOL_LEN];
 			uval = *(u64 *)(key + key_field->offset);
 			sprint_symbol_no_offset(str, uval);
 			seq_printf(m, "%s: [%llx] %-45s", field_name,
 				   uval, str);
 		} else if (key_field->flags & HIST_FIELD_FL_SYM_OFFSET) {
+			char str[KSYM_SYMBOL_LEN];
 			uval = *(u64 *)(key + key_field->offset);
 			sprint_symbol(str, uval);
 			seq_printf(m, "%s: [%llx] %-55s", field_name,
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210514140429.3334181-1-arnd%40kernel.org.
