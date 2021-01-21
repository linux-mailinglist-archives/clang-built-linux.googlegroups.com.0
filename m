Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBVXEU6AAMGQETGH7CJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AB162FF73A
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 22:30:00 +0100 (CET)
Received: by mail-pf1-x43f.google.com with SMTP id 68sf2007401pfe.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 13:30:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611264599; cv=pass;
        d=google.com; s=arc-20160816;
        b=VEFd+XZjI6VJE8tTZ81eU4EslMfwEZVRCePzHFwUmQyP4hef8wRh9SIOyfAYtNvSgJ
         iAr11BDL0fjmIO78huT2wp4mhAR0AQpIxLwDPgkElyrpe5KbKQWjWZS5rvgHbXIuaABB
         7xyd8+kt0fylY5I/CjNg1U18zBreanrrjYyRS/yR0PnTBTW34KtzwBEngQkEz8uZhI3i
         JDXibGQ/JfXqk+4oa6XECdFyWyONzxHvdrO/dV+Dl2iTFRnjYkEJ+4pS8sq2n9EOe73q
         Wo0XGVcGJsFPJapEPIzdEXYKOmFsd5nKmkgY7mlX/LLDeEQZ1db3eUSoQ0lgJFcgHvBh
         QV5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=TWB+FMKTsBb1IKV4sr1LHU4QklgRCupRcqwXaTTbTDU=;
        b=kXbaNz1+3LFjnOnE2OrBRkNEyWVSe98/WxbvAJjpyS60S3X7uVgQIg71KNy2ePX9qm
         VysnoHF7Y6XhBqVPb79mD4dwIOyn8GaXd9WQhQgOeKG+XihUgg0yWCXOWjfU1uFyRTT3
         h9DLZbTs0QSac4HbL3XYa9w1I5BbDUXbiU+WniRmY0+Xa5I7LdNXNglkXDGz1cSq1/LC
         WWDmu8Ay019GlHacSjlkG+AkpuM9iLHb10R5iuom85/dNFgwml+CLqaruq3V6XxvzsxM
         jIXCKBpDZzPOMumib4inTd0ruYGu866iP2VZDlr8YEPAtFGM2Y5fdEThWhuYsEbdL7x7
         3jBw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=FXmvHYgM;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TWB+FMKTsBb1IKV4sr1LHU4QklgRCupRcqwXaTTbTDU=;
        b=azkbgwmO1fdEEuoFCAzYtbIkXMe3/FZBRvRbkQGWkZAMZwspkxoi1b9gwa1xTza7rf
         xf6mSMI7Wee1QZwEQoDsa34ntxdRnYOMvJTSWnOopgkzZ3Qiv+0k0uKCrmALpJfHG6pi
         5FNVsKcSu/UMevIDcaztywvM4Q+/qeG4ZJYhRIHdRzSwONstfpJhpkq6SY7C/zEFP7yR
         h2lDCql0df1i12CUG+XTh4W2E3TuhaeU83QxgAw1qvp+J0wIAjyoTLE74PmaP4uM4/Zj
         3/EF3TZAbuUoxthuS3IcQiXwAdMTm+t0Qk0hcJQ+jShsnE9ICf8x2P41VEdG49d7Xcxm
         Sk2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TWB+FMKTsBb1IKV4sr1LHU4QklgRCupRcqwXaTTbTDU=;
        b=jKdAD6+4zo9Ygq1F6MLNQ0eJTJ9orj7shHTvsFnlluophmgaLjJh1Kq0WqsYH/6WGt
         E8ye+1fnQ5HmyA5PsgcFY+jM+2+c1s8rN3tb0StxFE0SS1K6xYjmA9G2wtM7ZSpLtXrx
         we4q/dwXp/0/mqUMeDCHUCb9VGQ1txYaMQiEmtgPz/OIhPbDHZB7zCj2KmCHyebhmx56
         nwV7yh2zRt6VagcOE4Eanag3Wb+mDRo2cQAtw9ZaypPkEsgfiNAgxmeBGpKqp2hIUO+m
         SwPdzv0d/S9lUJBSw+z3VbtDWlzwaBAonQM5FlzKeJQcvjExa0eEDRjzNriAPLTbuq/M
         KReA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533/GVD1gapyzuilBeNeVofogSUeK3Sry2QcnCOfPHoqXV3psBI2
	dwaZoJr3GG19rd9WOV6OyAM=
X-Google-Smtp-Source: ABdhPJyL/j/zH1BYD4Pzs+gnX/yZOLgLbY365Ebno2+Aq/G5FDn79LoPyuELY9jclDT7LN05Hf/zeg==
X-Received: by 2002:a63:c441:: with SMTP id m1mr1209534pgg.353.1611264599066;
        Thu, 21 Jan 2021 13:29:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:3583:: with SMTP id c125ls1289240pfa.2.gmail; Thu, 21
 Jan 2021 13:29:58 -0800 (PST)
X-Received: by 2002:a62:7bc8:0:b029:1bb:2947:5810 with SMTP id w191-20020a627bc80000b02901bb29475810mr1654620pfc.39.1611264598262;
        Thu, 21 Jan 2021 13:29:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611264598; cv=none;
        d=google.com; s=arc-20160816;
        b=nNuRqLA2LNIlYmxnz/ZZ7mzb4pI0y/UIp8eyXcxOEvZufRhttdSxLok8AcjqX2JYU+
         6ekKTz7+V9D21sGLHKlnNn+jUMGX/TCAVe7eUfUJf1oqo2hdWox5MN2npp0ljpmj2Z02
         ck/R5GBQZxFGn3RdRYWDtlBvjkg0ACUaZhPCh2wgw0/Kl5b/Gmlc3WeGmPSzHwpZQo3x
         lCpEsCfH1x4JrSrzWWtIT8hfFYBt2homcxVsw3X17aomGv0Oz1N+B7J1iDz6J9sggGKV
         rUne6Tcd7hfE+G0k07Ju8KjhDwJyS4M11DhBh8E1RQdAjhoQc7M92GyA174ZE/1SRhV+
         Tlwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=VS+YoGMFgG2YazgtA1ZDl7T3MfORR0OAXZJ7xgAEGug=;
        b=PDEiAVubDVpstvwez3dCA6WZTdeMA9dI21JcCJbnCpWVN5ZJSpYxLTJk8B9a7asynh
         44YSOyQ7qvONnEahW8J3svirUuVtlgN+RdyQ5t+RLLpQkemxpinxiGBRRhirK+AwBKmc
         UDSqDPS/fz5zyfy4fwPkJg8AG/A3MwOLLvgwpcoikPAIWO1+rmkxOqVcXD2QLFcuKOSU
         da3nF+XkawjZvVU8w4Mt5btoFepgyvZB7LVo6GdcJjinzShxnMyVAXj4M6gkjAwHidHm
         aL/OhkKEp02I3FAsjQP2+p2apTbifQSp02d+I6rehcqNgXO2Fqf7wd9njGHS8vBnp0k+
         Q4NA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=FXmvHYgM;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id l192si361914pfd.6.2021.01.21.13.29.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Jan 2021 13:29:58 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-597-uTmTM6ciMzGjhwkf9lJstw-1; Thu, 21 Jan 2021 16:29:55 -0500
X-MC-Unique: uTmTM6ciMzGjhwkf9lJstw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DC54B1005504;
	Thu, 21 Jan 2021 21:29:53 +0000 (UTC)
Received: from treble.redhat.com (ovpn-116-102.rdu2.redhat.com [10.10.116.102])
	by smtp.corp.redhat.com (Postfix) with ESMTP id DBA4B19C59;
	Thu, 21 Jan 2021 21:29:48 +0000 (UTC)
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: x86@kernel.org
Cc: linux-kernel@vger.kernel.org,
	Peter Zijlstra <peterz@infradead.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	Miroslav Benes <mbenes@suse.cz>
Subject: [PATCH v2 04/20] objtool: Support retpoline jump detection for vmlinux.o
Date: Thu, 21 Jan 2021 15:29:20 -0600
Message-Id: <4302893513770dde68ddc22a9d6a2a04aca491dd.1611263461.git.jpoimboe@redhat.com>
In-Reply-To: <cover.1611263461.git.jpoimboe@redhat.com>
References: <cover.1611263461.git.jpoimboe@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=FXmvHYgM;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

Objtool converts direct retpoline jumps to type INSN_JUMP_DYNAMIC, since
that's what they are semantically.

That conversion doesn't work in vmlinux.o validation because the
indirect thunk function is present in the object, so the intra-object
jump check succeeds before the retpoline jump check gets a chance.

Rearrange the checks: check for a retpoline jump before checking for an
intra-object jump.

Signed-off-by: Josh Poimboeuf <jpoimboe@redhat.com>
---
 tools/objtool/check.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/tools/objtool/check.c b/tools/objtool/check.c
index c964cd56b557..5f5949951ca7 100644
--- a/tools/objtool/check.c
+++ b/tools/objtool/check.c
@@ -781,10 +781,6 @@ static int add_jump_destinations(struct objtool_file *file)
 		} else if (reloc->sym->type == STT_SECTION) {
 			dest_sec = reloc->sym->sec;
 			dest_off = arch_dest_reloc_offset(reloc->addend);
-		} else if (reloc->sym->sec->idx) {
-			dest_sec = reloc->sym->sec;
-			dest_off = reloc->sym->sym.st_value +
-				   arch_dest_reloc_offset(reloc->addend);
 		} else if (!strncmp(reloc->sym->name, "__x86_indirect_thunk_", 21) ||
 			   !strncmp(reloc->sym->name, "__x86_retpoline_", 16)) {
 			/*
@@ -798,6 +794,10 @@ static int add_jump_destinations(struct objtool_file *file)
 
 			insn->retpoline_safe = true;
 			continue;
+		} else if (reloc->sym->sec->idx) {
+			dest_sec = reloc->sym->sec;
+			dest_off = reloc->sym->sym.st_value +
+				   arch_dest_reloc_offset(reloc->addend);
 		} else {
 			/* external sibling call */
 			insn->call_dest = reloc->sym;
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/4302893513770dde68ddc22a9d6a2a04aca491dd.1611263461.git.jpoimboe%40redhat.com.
