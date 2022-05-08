Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBKFL4CJQMGQE3JBJZDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 42FBC51EF24
	for <lists+clang-built-linux@lfdr.de>; Sun,  8 May 2022 21:10:34 +0200 (CEST)
Received: by mail-pg1-x540.google.com with SMTP id q13-20020a638c4d000000b003821725ad66sf6224578pgn.23
        for <lists+clang-built-linux@lfdr.de>; Sun, 08 May 2022 12:10:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1652037033; cv=pass;
        d=google.com; s=arc-20160816;
        b=whQXwdzVGYDQjLKP2sWcvhvbfkF9iYaIVRuGlALS7qBoW59XWEIdBu+DJMjWJGH4nG
         EFc47Dxxj+nD8ehtyI3grDPYZlkZ2N6kUJ/dV/n+sneyhKbRwbqq8myq88JXvtxmzCDo
         lN9K0QA1RYImZ94AwHfSoYS+ZTDQHE2NRcyKel3WK9sZztyFja/8HLdmObkzxAi0uqK9
         o15Ckx+dstJLO0Kb2nbTXN8pfBQ+0tS2gd3UXsWkfL3p482S9DnwgZAJ8D3W9s6j0bPZ
         ZKbEtW7Uzie7N9O8fgbfT0a1NXS1Y7LHuY/v97h0r7Xp7/OWibTzvSAllZBYZAEJRbVx
         jeVw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-filter:sender
         :dkim-signature;
        bh=iPGv3+Kxm7PikWNn0tQa8pFbismf6Ze413eL9Rgh0yA=;
        b=qVaaIBLdgtw8em8bTFh+nZ3QFlPv4/LoXhP9OXDUZsWKDwB6q5vWCRGfA+j5Jmz26h
         qf/OzoE781a/LtpAgqusmXPnhZ4+tTJRv1yVKhSBboPhzql+wGZdVPPktvmg3tHSwk7J
         ZSMt50xOnPRyrOkWbWBtaDoEPUUUq3naUB+BUAlBl+ilVsCJePADWonZITCCvGVfBRcY
         3KOVrleoenAYXo9OHX8ia3PCt4MkKzmU2Su5AAQhMw9/Eowuny7tjHCvwKehwayX0vPJ
         3fvLZ7onx6kXAoRv8y02+rS8UifK5E+eN3tzhLUEPoi4Kd7AIDalNVxd665fCSb4gwrN
         hCOQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=qukJg56K;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=iPGv3+Kxm7PikWNn0tQa8pFbismf6Ze413eL9Rgh0yA=;
        b=OIjeHuzCRCmR3FbWmhPHJEkXAjJl5Fa2MtMMOFmzGzY2nB+EFJONqUxModeCGH0pvz
         lgiyxyooiumMB/JfJQNRj7IcX4fXLo6P+458vlzIoljY1WsH6qoi6BdHbLLFO4YpUAn8
         KB0anxtm41B957P55PNIvOtPDm44vWiDE0SKNgfeIkjJdrzBBjEhw1yZmIEXBxAxxg0R
         hfznIBr1sAL2RpNCZ7vaB6ZUlEuzBV4uv2usvI2GNM8L8NwuJvIGMHo/kSsv0r/8hmh0
         hsLdKqoG6Xl4/rv714BCOy4DF9IquWS5vyTtMXhPEBoJUXpFvZRYO7nNy+JZzG2peLUH
         khUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iPGv3+Kxm7PikWNn0tQa8pFbismf6Ze413eL9Rgh0yA=;
        b=HdRPwEy7TbI99FU4Wvlf0500zDU6aFgfzep3tnyvpYZCOvSy4ndR2hvXg5p63woraK
         0NI3/DEd3oviqS7bWmUSuJ7tZ/o3SH82SmSLXnbswQ4jmbxsMRRzRCU8xRcwY9GLxW8n
         ydSKqC6UHb+wgtwhDYa71ZbMVM8xG6eL7n5LPbXDsz7uX33k9oL5MNrtZ/XPePOTEFPd
         Yr3y/Sf7PBaZVCjHl3nCW3vG5DE6idjPOFY71gEK4gfPB2KTc0zC9YYAbh6Fm7cdzG3Y
         QSb62qO4ywzpBriDy48i9iNalAZNFPHxK/PnSxWFfrqXD4exoQ+o7GBhqw75KgxVtqrO
         cpPw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530kdXsNiEgxFGUzHyvgglM8sJz0GJQCq84i8DN6220c3mhbL+QL
	M6cBjkkGgsOFEIuopPjnKHA=
X-Google-Smtp-Source: ABdhPJxVf2FkSfSVkmiQszeUlYZ1NQbonMRMWqKnJ2Fra6cUYbStyWcOmZEIkoE/Zu/oQQNrjoRwbQ==
X-Received: by 2002:a17:902:f789:b0:156:5f56:ddff with SMTP id q9-20020a170902f78900b001565f56ddffmr13222710pln.116.1652037032899;
        Sun, 08 May 2022 12:10:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:4a8d:b0:1dc:36cb:7c55 with SMTP id
 lp13-20020a17090b4a8d00b001dc36cb7c55ls12293715pjb.2.canary-gmail; Sun, 08
 May 2022 12:10:32 -0700 (PDT)
X-Received: by 2002:a17:90b:1646:b0:1dc:3366:b87e with SMTP id il6-20020a17090b164600b001dc3366b87emr22380140pjb.211.1652037032324;
        Sun, 08 May 2022 12:10:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1652037032; cv=none;
        d=google.com; s=arc-20160816;
        b=LRmCMgbvHLHRwtWkvP+pWge6tgTWs7RYd9vWCN7lvk+HztZWbVUdFzDgyAFIo7DqaX
         dTxqG6ci7UWrqBk3+WkjRv0Tfvf7TKwzMJnhAtRskkRNQw8WmwL1hkCyZC/22Myc76Uc
         OsxumFKJGVIKUyUy0tqni2nDpBS+5tsrBIGvJ1RYxBFmHfK5Y/uHGnt+EQNxE7t264o/
         sgKgfOOayc4bXhG/4U5lU0KcioazA5i+mYLe41mA4QmAJXTZm71wk5HC5PE2FaTlfyCj
         QmJCPxdqgBgSnQ5ca9B2jI9NUs70jiT9GmC2Gjzx2+7eYFy1qlFich3MqxREEoOA2RRK
         4YGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=kEJzb0HV+D+/XrwgoxTro+DuX7He9WiLcsjIpQbmj1I=;
        b=uFz+FSPJ0sSxzwJyAoQiReaR45AxWImDLn/HrYPON99h9KZ1K/SDqV2MtTLjn6J0XU
         Y00FOyvh/cr05cZ9VOoGmoPz6psTFwUkpxpUfLNfLYR7cLqodY/vIRwVkTVHDquEmXKd
         QMJ2+7bc5RVv2WnWRZ4vQq+V5jNFaYlPSB51Da4Bjd8a1WvK5IUxh4yn2rnSUJflndFe
         Jx1LQPn5DkYf6KiWugx3EYPAiiwyMynQ9NIFhgL3Ac/dbAk2l+XTiPgmHwLJBS86Q1QU
         0Qj0lOJrVV3UsgBu658G8X1tRD3GIEQ45qO2hJsMgaiXK63yYCRIhOLL8/tJS6kNw9Al
         FvNA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=qukJg56K;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-09.nifty.com (conuserg-09.nifty.com. [210.131.2.76])
        by gmr-mx.google.com with ESMTPS id i6-20020a17090acf8600b001c75ad3207fsi651457pju.3.2022.05.08.12.10.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 May 2022 12:10:32 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) client-ip=210.131.2.76;
Received: from grover.sesame (133-32-177-133.west.xps.vectant.ne.jp [133.32.177.133]) (authenticated)
	by conuserg-09.nifty.com with ESMTP id 248J8qSb030019;
	Mon, 9 May 2022 04:09:08 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com 248J8qSb030019
X-Nifty-SrcIP: [133.32.177.133]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Nicolas Schier <nicolas@fjasle.eu>,
        Peter Zijlstra <peterz@infradead.org>, linux-modules@vger.kernel.org,
        linux-s390@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
        clang-built-linux@googlegroups.com, Ard Biesheuvel <ardb@kernel.org>,
        Sami Tolvanen <samitolvanen@google.com>,
        Masahiro Yamada <masahiroy@kernel.org>,
        Kees Cook <keescook@chromium.org>,
        Josh Poimboeuf <jpoimboe@redhat.com>
Subject: [PATCH v4 14/14] kbuild: rebuild multi-object modules when objtool is updated
Date: Mon,  9 May 2022 04:06:31 +0900
Message-Id: <20220508190631.2386038-15-masahiroy@kernel.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220508190631.2386038-1-masahiroy@kernel.org>
References: <20220508190631.2386038-1-masahiroy@kernel.org>
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=qukJg56K;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

When CONFIG_LTO_CLANG or CONFIG_X86_KERNEL_IBT is enabled, objtool for
multi-object modules is postponed until the objects are linked together.

Make sure to re-run objtool and re-link multi-object modules when
objtool is updated.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
Reviewed-by: Kees Cook <keescook@chromium.org>
Acked-by: Josh Poimboeuf <jpoimboe@redhat.com>
---

Changes in v4:
  - New
    Resent of my previous submission
    https://lore.kernel.org/linux-kbuild/20210831074004.3195284-11-masahiroy@kernel.org/

 scripts/Makefile.build | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index f546b5f1f33f..4e6902e099e8 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -404,13 +404,18 @@ $(obj)/modules.order: $(obj-m) FORCE
 $(obj)/lib.a: $(lib-y) FORCE
 	$(call if_changed,ar)
 
-quiet_cmd_link_multi-m = LD [M]  $@
-      cmd_link_multi-m = $(LD) $(ld_flags) -r -o $@ @$(patsubst %.o,%.mod,$@) $(cmd_objtool)
+quiet_cmd_ld_multi_m = LD [M]  $@
+      cmd_ld_multi_m = $(LD) $(ld_flags) -r -o $@ @$(patsubst %.o,%.mod,$@) $(cmd_objtool)
+
+define rule_ld_multi_m
+	$(call cmd_and_savecmd,ld_multi_m)
+	$(call cmd,gen_objtooldep)
+endef
 
 $(multi-obj-m): objtool-enabled := $(delay-objtool)
 $(multi-obj-m): part-of-module := y
 $(multi-obj-m): %.o: %.mod FORCE
-	$(call if_changed,link_multi-m)
+	$(call if_changed_rule,ld_multi_m)
 $(call multi_depend, $(multi-obj-m), .o, -objs -y -m)
 
 targets := $(filter-out $(PHONY), $(targets))
-- 
2.32.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20220508190631.2386038-15-masahiroy%40kernel.org.
