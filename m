Return-Path: <clang-built-linux+bncBDT2NE7U5UFRB26NUT7AKGQEEZRFVLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id 334CF2CDCD3
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Dec 2020 18:57:00 +0100 (CET)
Received: by mail-qt1-x83f.google.com with SMTP id n95sf2149569qte.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Dec 2020 09:57:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607018219; cv=pass;
        d=google.com; s=arc-20160816;
        b=QYYZDvl0omhRA19LOEX1veHim2zp3br3RF6ii5PFWz6gZaJirj743+vLzdqNVxVk0I
         ZspCSwGUDyvMN+7WJ1NakYR3z9c2pmXhSc0WbdkfSYOq4xtK/PiwG9wJmplhrSlh4NiA
         AbG0j9ivoNgViWw2J3ItWe44mitlFIZUrzUi1F9Of8vwB3kSjfkN+KoyXri47WKeVV87
         4esi9WyhbGnvJ1sfFFjpVIx3fAQMOkzSp1gDE3sKJkGu/m044/ilmHF7Ngsq67EJ0XZg
         cwuNaXh9vDv+kbfAjpviTrc+FrTwPEi/MGqJPukDmT+/FnAwNPpUde1blpiczuQpCUXi
         Nnxg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:dkim-filter:sender:dkim-signature;
        bh=vx0NoocW+QjyDUm6xQ2pwudQGXt6dj6YcpIs96YSTFA=;
        b=HKec8OjtjwHvWFuODuK0Ey3Zai8SHMZFvv+w0waYuCRy9xpzl7lrlcgmIAZSUDqhIF
         1P5BbjfrymLHRe8+Jb1CdecRugYO2Me5pavy5wc7SB29LDup/yWpShzaqmtTdslYQcHF
         +EuACaVNn7HkOTsujUpkASqXrvuC4dpg4dBu3mOE5vGPMSSw9Y+TO0+YDB5kGizJ20zi
         CE87WNHsx9jDRuFs73QNzUEjTj3EAEMUQ2hyU2L+rhribSRWV2tSWOwpWUbDklLQJwzb
         Om5CZ/1BkAp13KolRYaKRrzPAeRDVBphsZCpgRa+46x+oaOFZDnQZkZZ5kWrzaJ6CFI0
         9elA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=zRWDfBnW;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vx0NoocW+QjyDUm6xQ2pwudQGXt6dj6YcpIs96YSTFA=;
        b=ZFrPqlSYmrKDl0UID5PT5HU6eumJJxNtQ8UVWsTVlHISlRa+ikYH51ffiUlu5wXHKi
         Q+dYlsAuJDatsjKT6RZ2MitlPyC2TTSMyMljGGFWRwbcIprpS1qRgsLrMPdo3DWLjL9I
         Qh++wJR+cq0+vMsQ6KJreZv+BMFBCnkqIzJCrbQ0HHRo8xCdaSPiRYZwPgRUanIWMoQC
         U9GPya3FOU9BNaKL/T0iUodZA2DkzI21kZYWcqq+z5k2JPG9tT0Bx/3/uCMUEJGISR1a
         Y9S1olkvQiJ2enGAq665DeX6fJkwTy7FsMcNIsdWltMYMcaZNgr/wM/8eQ4c9GNKNbSO
         pJ6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vx0NoocW+QjyDUm6xQ2pwudQGXt6dj6YcpIs96YSTFA=;
        b=BUH8i78u3aBscrPFBYDE+vQkBHF4Azs0TvTxJwKtJYM+NVh29pHwiaFkgq6g6HBPzg
         Yuic8Ek1CPOjtDal1WUVHbybh4DPlZDz0LYFE5BVU0N4UWMUg2NjxbuCCCdV3G8B12kB
         RD8aafBs5cErO/J8Drs9F6RewwFhCjmEiRvupbYkM+troVcJkh1bpGzZIBIRrPUDpwA+
         znf+Hp7zR58+g7/yqlb4/5TH3TAfazlUjtKUMRiQR3bMGTxzSiqVJIsIXVcPhNLqC5vm
         GWpIXThveMEj2VMlxgWPQau+ySQGBH/pmhw7xBvWQIvtO10mu46iapfySMg9K76EtxgW
         37kQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530yYFtDBdEndmDTLSra+sFa7kSLMeFqhJbHB7Rjy9R6kiiS/lnP
	F9qA+cm4eMzPQFqsk9+PRj4=
X-Google-Smtp-Source: ABdhPJxUrxKhVxpSlbqXeHgJ/VWelpii4orvsrVkRbBioxmAB119IL17zD3lRcUfWoltwHfnsEEJQQ==
X-Received: by 2002:ac8:7395:: with SMTP id t21mr4445144qtp.358.1607018219286;
        Thu, 03 Dec 2020 09:56:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:30ea:: with SMTP id 97ls3599qtf.9.gmail; Thu, 03 Dec
 2020 09:56:58 -0800 (PST)
X-Received: by 2002:ac8:5653:: with SMTP id 19mr4721209qtt.136.1607018218823;
        Thu, 03 Dec 2020 09:56:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607018218; cv=none;
        d=google.com; s=arc-20160816;
        b=WI8NdDQkr9qf5MzNrcOFKhb/t/WzQSumyHv6jw5ZIcdUP3Nr9TvKrGKLW8UOQdwJkW
         CWfhfce7CKItmD1Cnpt7+hKmwkwpF9L9DNfarqLWAZMH01LF9CGnsXolrH8RsiG2c63z
         KUBHOkxstNk94E2zzkt9HgqA5eGhYYi1CkfY3twPs6dEHWuj8KKf8RQ/SlY4gAMHNaJM
         3sdG3yqLu++Uiaar7T3uzDhvFqTkQQlNJZiGVUhC3Mk0v4dgWaG+WvfRYco6tMC8BZKb
         iUykHl2qFKh448MmqynNB6EhvEkJneAA/jSyQS9LAxuIEbhAb92hdyrIUntlwZ/j97Va
         XBGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature:dkim-filter;
        bh=ZcOLrQALbkb3/RzN2wo8pY/7fxO5cxpSceGF1gZMUyE=;
        b=ktOpvihRLzrHSyJiLQ7Bl924Q9NZcI5sePfsJgs7h0++aduRe0L/iMuhjGuyW195sb
         Y+RcyTNdMZ1mYRXEwuhtVqM7caeDFnC9gAZZWNFZP3FNXKOS2gZxrXWcJyXCKIE04uYR
         HnAs8VkkBTPLNfkHOG23j9wWdr7lRyd/a3H05/WoaWFwV7UK5l6eQtI4Ho/GqZOSFDuq
         yox9eHO2iWDS93Rc8RBfaZMzd/DulTMEdOLa2eMKP+g364dmc66E0VlFNFmoVm4YoW/k
         QqM1Zd3yx4NWX30FhzC91uDTbiDq8vNTO5bkXjfeJgYAhmL/6ocXkEG89R43RjzOz5Sl
         5iHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=zRWDfBnW;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-11.nifty.com (conuserg-11.nifty.com. [210.131.2.78])
        by gmr-mx.google.com with ESMTPS id o11si126918qke.2.2020.12.03.09.56.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 03 Dec 2020 09:56:58 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) client-ip=210.131.2.78;
Received: from oscar.flets-west.jp (softbank126090211135.bbtec.net [126.90.211.135]) (authenticated)
	by conuserg-11.nifty.com with ESMTP id 0B3Hu1Bo005973;
	Fri, 4 Dec 2020 02:56:01 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-11.nifty.com 0B3Hu1Bo005973
X-Nifty-SrcIP: [126.90.211.135]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>, Sami Tolvanen <samitolvanen@google.com>,
        Masahiro Yamada <masahiroy@kernel.org>,
        Michal Marek <michal.lkml@markovi.net>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Subject: [PATCH] kbuild: avoid split lines in .mod files
Date: Fri,  4 Dec 2020 02:55:51 +0900
Message-Id: <20201203175551.573123-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=zRWDfBnW;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

"xargs echo" is not a safe way to remove line breaks because the input
may exceed the command line limit and xargs may break it up into
multiple invocations of echo. This should never happen because
scripts/gen_autoksyms.sh expects all undefined symbols are placed in
the second line of .mod files.

One possible way is to replace "xargs echo" with
"sed ':x;N;$!bx;s/\n/ /g'" or something, but I rewrote the code by
using awk because it is more readable.

This issue was reported by Sami Tolvanen; in his Clang LTO patch set,
$(multi-used-m) is no longer an ELF object, but a thin archive that
contains LLVM bitcode files. llvm-nm prints out symbols for each
archive member separately, which results a lot of dupications, in some
places, beyond the system-defined limit.

This problem must be fixed irrespective of LTO, and we must ensure
zero possibility of having this issue.

Link: https://lkml.org/lkml/2020/12/1/1658
Reported-by: Sami Tolvanen <samitolvanen@google.com>
Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 scripts/Makefile.build | 12 ++++--------
 1 file changed, 4 insertions(+), 8 deletions(-)

diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index ae647379b579..4c058f12dd73 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -252,6 +252,9 @@ objtool_dep = $(objtool_obj)					\
 ifdef CONFIG_TRIM_UNUSED_KSYMS
 cmd_gen_ksymdeps = \
 	$(CONFIG_SHELL) $(srctree)/scripts/gen_ksymdeps.sh $@ >> $(dot-target).cmd
+
+# List module undefined symbols
+undefined_syms = $(NM) $< | $(AWK) '$$1 == "U" { printf("%s%s", x++ ? " " : "", $$2) }';
 endif
 
 define rule_cc_o_c
@@ -271,13 +274,6 @@ define rule_as_o_S
 	$(call cmd,modversions_S)
 endef
 
-# List module undefined symbols (or empty line if not enabled)
-ifdef CONFIG_TRIM_UNUSED_KSYMS
-cmd_undef_syms = $(NM) $< | sed -n 's/^  *U //p' | xargs echo
-else
-cmd_undef_syms = echo
-endif
-
 # Built-in and composite module parts
 $(obj)/%.o: $(src)/%.c $(recordmcount_source) $(objtool_dep) FORCE
 	$(call if_changed_rule,cc_o_c)
@@ -285,7 +281,7 @@ $(obj)/%.o: $(src)/%.c $(recordmcount_source) $(objtool_dep) FORCE
 
 cmd_mod = { \
 	echo $(if $($*-objs)$($*-y)$($*-m), $(addprefix $(obj)/, $($*-objs) $($*-y) $($*-m)), $(@:.mod=.o)); \
-	$(cmd_undef_syms); \
+	$(undefined_syms) echo; \
 	} > $@
 
 $(obj)/%.mod: $(obj)/%.o FORCE
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201203175551.573123-1-masahiroy%40kernel.org.
