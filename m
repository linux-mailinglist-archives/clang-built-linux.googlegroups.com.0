Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBA4G4D5AKGQEHWPK46A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id BB6D9262282
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Sep 2020 00:17:40 +0200 (CEST)
Received: by mail-il1-x139.google.com with SMTP id v16sf523706ilh.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Sep 2020 15:17:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599603459; cv=pass;
        d=google.com; s=arc-20160816;
        b=QQcUyXbwtlJOkfJxPbyKOBpnynwnuRPkg4i+C6453P+srVcNDFgPnXxsOl7a/5DIAQ
         orZFXmm6ZsRCVjOvd7PdNQCaScKfSa6tvkMU9msPp0ZderB4wrusxEkkvVR8dS1O+N9T
         d/fUu+BYti3YjpVX1QjzYwhV8p6ee9dzO2w4G4PbrUCFx6y4jESwMmd5zPa77KD3C95D
         HlLmjfsLkFlSXl7VhQK/GSccAhX6KrZ3RVENo2DrkUd4LwqREJ7mK3dPxFsiQZELClV7
         iBgF1Xzzo6a5EGO4gF2jLzCi9+UHNlJsDcAxKa/GfaOKwSgsZwxLoIQdVAEyUVWLINFM
         0RSw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-filter:sender
         :dkim-signature;
        bh=70yIv7SoO4K7jBZ/b0kk8zWFWRpbOufrgNIr4dMJQN4=;
        b=Mh3obYVu2/8W44bZVEikRhWM7D6AsE1Evldb2WTNPjP1OpDxxi8ZTPlcZ7JLYVFH6W
         KgaaYzn/JCvXBZ4UmJ92Bk5KN/+MLVciP3SuvT1Rx3Cuc2OwwXzIpGTt6JG1JoUlaymv
         ia4ZSlzea0opJjbNNOn4Ie7idzz+2Rc8TRO+VD67aAQrmG1ikTuj3areeRboaTtDBzNO
         lxAjdNxbnMq1LSna5new3A9rXisetZYlKt0NnQ6M+n11aK5D+GzQkk/KZKtC97AStAzl
         mpA4LzsT1hRe+ix7gqbiisgOHEHqq0Pz9wQTUcidN2DbvuLB+/5UnpU8jCtvKK48XHdX
         NjkQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=D7ghS5Pk;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=70yIv7SoO4K7jBZ/b0kk8zWFWRpbOufrgNIr4dMJQN4=;
        b=UvC6KwdzV7eUHDh4Xz7BiEreh28htoJw0BvLFSHvc8jN3+waU3uJBrJLM9cYRG3rHF
         9+21fBfOzmops1TgfzNvxEYhdhja+C4ISKF6BPE00ASuggzeP+UdRgYyAJSTZQAJqRaZ
         zWw1fFs1noTYTDem1EGaenN9aJP4MgryTvUc1bb4DtZ4zD2jMWeX6k7kquKEuJC9AQob
         +wvo6Lv7jJlxnGKjoWKdUiOZznsqrDLGf9M4uJQwWnUnXO3g2HZhd+aMMtegM1Q4ZScB
         fj32Cr7cNHMfokYTEYgWY2o95lr/lqjJ0e6wDC1yekjy5O1tX++RDAyvhKCuUJQMeLEm
         i1kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=70yIv7SoO4K7jBZ/b0kk8zWFWRpbOufrgNIr4dMJQN4=;
        b=CeldoKD8mO4VsfVbEXNpLL2JlVphl5CcJUWTLfFU53IluRjN1kCAaSI1M+c2rSrt9p
         wXmUfmipoPtkd0Q0w3KR+049zX1fAXUkl5cQECBSsd9le37/bIeOf44fmZmYzynob67B
         5GEj2v8dtl0fWNfq2u2165r6jUF+f8mSIPv2sORjLTuI+/ZNxB+UDcEJ9ZPbx8WczZPB
         cvGYezgR/ncCmnbdzpR9fZpLeV4AfD3IGkoDFMR0GRPZBQ7pH1vhbGgQa4ByGMr1PEoy
         1EBAeDlUH6CjUO7zmSMNF48U65w0Vzxva7xahe2TvtQhuyaJ0n0NuixgYcH5JHrpBcrm
         s1wQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531e0Njlx8Mx4tpOhS70atex6cIavFWqENMa6fIjBOhG5+NBMFPm
	4yAt/MqXELaLrOp921byzDI=
X-Google-Smtp-Source: ABdhPJxo3xK5Hg8yzAAU5hulqi+v37+ae0TRz77kCvq2ky4NQwc8k4jdzSeNUaFRpbRwyfKkn/yr6g==
X-Received: by 2002:a5d:8b4c:: with SMTP id c12mr951279iot.167.1599603459268;
        Tue, 08 Sep 2020 15:17:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:c9ca:: with SMTP id c10ls56450jap.11.gmail; Tue, 08 Sep
 2020 15:17:38 -0700 (PDT)
X-Received: by 2002:a02:a1d3:: with SMTP id o19mr1205266jah.90.1599603458924;
        Tue, 08 Sep 2020 15:17:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599603458; cv=none;
        d=google.com; s=arc-20160816;
        b=tIHmJzYWpY5ckqlcoY1cbPt22Qq41trLmtCDvFlCQdSXX8KR3/4ocQZAW/2MmKhE6k
         EIACchAThDX/VM7Mlqqgr2TNVW8EHlaqsZlnvSTNga0+jFpr7q/lfEzoAlXVyukAdoK5
         CXzIfCsMXS0C5xJz2Dx0GCdHI05cdYnxvv6dL6UPMXpVadmqpsqkKJwkXcC6d/l5lyGn
         nl4ALeMM4i6TXX3g4XKD9Eb144++XTOLMPk98zzzv0isDus02FcWj5cQ6Y3TsWVENG2L
         S4fWLVevyl2E2IiIM4hN+5+lIAHrxInq8tNqNfCAOcJGYS33uRE0ylw4929XAKTtao9E
         ysBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=ofEPr9hBQLToa0tnpSFXT71R901tENs3+t3picjYQYs=;
        b=boZjWAkU3e7jmm/0CIe9XeBMuYewHeVa5n1wjvvsnnqanfaDAwLxduG4dUW8OP477l
         UQ4rZm2XT8bKTa5uPzELcTwQjZVfj0BnQ2WcVQfXDsBfM66NJOKbZBpRFSXXus4378pL
         Ck5ID+aundR3ZkF5fGgGxT6U5Ago+ElBRMwnnaG1w4OzNLtV/mJCJeoewVTrCot13xlM
         OUzWxdffqT21ywIsV1b2zKxOAAX2wC+EnIivQr37YN6jq22Hll2J12Bq13sak4S3N2dG
         SgzStgnE3J/CFGHGUw18WY82U3yChQprkqRnF6teL4YoBIgw11GEOn9Z2BW97yjgLcrU
         18AA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=D7ghS5Pk;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-09.nifty.com (conuserg-09.nifty.com. [210.131.2.76])
        by gmr-mx.google.com with ESMTPS id c10si48353iow.3.2020.09.08.15.17.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Sep 2020 15:17:38 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) client-ip=210.131.2.76;
Received: from oscar.flets-west.jp (softbank126090211135.bbtec.net [126.90.211.135]) (authenticated)
	by conuserg-09.nifty.com with ESMTP id 088MGrFk012572;
	Wed, 9 Sep 2020 07:16:54 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com 088MGrFk012572
X-Nifty-SrcIP: [126.90.211.135]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: Masahiro Yamada <masahiroy@kernel.org>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] kconfig: fix incomplete type 'struct gstr' warning
Date: Wed,  9 Sep 2020 07:16:38 +0900
Message-Id: <20200908221638.2782778-2-masahiroy@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200908221638.2782778-1-masahiroy@kernel.org>
References: <20200908221638.2782778-1-masahiroy@kernel.org>
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=D7ghS5Pk;       spf=softfail
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

"make HOSTCXX=clang++ xconfig" reports the following:

  HOSTCXX scripts/kconfig/qconf.o
In file included from scripts/kconfig/qconf.cc:23:
In file included from scripts/kconfig/lkc.h:15:
scripts/kconfig/lkc_proto.h:26:13: warning: 'get_relations_str' has C-linkage specified, but returns incomplete type 'struct gstr' which could be incompatible with C [-Wreturn-type-c-linkage]
struct gstr get_relations_str(struct symbol **sym_arr, struct list_head *head);
            ^

Currently, get_relations_str() is declared before the struct gstr
definition.

Move all declarations of menu.c functions below.

BTW, some are declared in lkc.h and some in lkc_proto.h, but the
difference is unclear. I guess some refactoring is needed.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 scripts/kconfig/lkc.h       | 47 +++++++++++++++++++++++--------------
 scripts/kconfig/lkc_proto.h | 14 -----------
 2 files changed, 30 insertions(+), 31 deletions(-)

diff --git a/scripts/kconfig/lkc.h b/scripts/kconfig/lkc.h
index d4ca8297364f..8454649b17bd 100644
--- a/scripts/kconfig/lkc.h
+++ b/scripts/kconfig/lkc.h
@@ -66,23 +66,6 @@ static inline void xfwrite(const void *str, size_t len, size_t count, FILE *out)
 		fprintf(stderr, "Error in writing or end of file.\n");
 }
 
-/* menu.c */
-void _menu_init(void);
-void menu_warn(struct menu *menu, const char *fmt, ...);
-struct menu *menu_add_menu(void);
-void menu_end_menu(void);
-void menu_add_entry(struct symbol *sym);
-void menu_add_dep(struct expr *dep);
-void menu_add_visibility(struct expr *dep);
-struct property *menu_add_prompt(enum prop_type type, char *prompt, struct expr *dep);
-void menu_add_expr(enum prop_type type, struct expr *expr, struct expr *dep);
-void menu_add_symbol(enum prop_type type, struct symbol *sym, struct expr *dep);
-void menu_add_option_modules(void);
-void menu_add_option_defconfig_list(void);
-void menu_add_option_allnoconfig_y(void);
-void menu_finalize(struct menu *parent);
-void menu_set_type(int type);
-
 /* util.c */
 struct file *file_lookup(const char *name);
 void *xmalloc(size_t size);
@@ -109,6 +92,36 @@ void str_append(struct gstr *gs, const char *s);
 void str_printf(struct gstr *gs, const char *fmt, ...);
 const char *str_get(struct gstr *gs);
 
+/* menu.c */
+void _menu_init(void);
+void menu_warn(struct menu *menu, const char *fmt, ...);
+struct menu *menu_add_menu(void);
+void menu_end_menu(void);
+void menu_add_entry(struct symbol *sym);
+void menu_add_dep(struct expr *dep);
+void menu_add_visibility(struct expr *dep);
+struct property *menu_add_prompt(enum prop_type type, char *prompt, struct expr *dep);
+void menu_add_expr(enum prop_type type, struct expr *expr, struct expr *dep);
+void menu_add_symbol(enum prop_type type, struct symbol *sym, struct expr *dep);
+void menu_add_option_modules(void);
+void menu_add_option_defconfig_list(void);
+void menu_add_option_allnoconfig_y(void);
+void menu_finalize(struct menu *parent);
+void menu_set_type(int type);
+
+extern struct menu rootmenu;
+
+bool menu_is_empty(struct menu *menu);
+bool menu_is_visible(struct menu *menu);
+bool menu_has_prompt(struct menu *menu);
+const char *menu_get_prompt(struct menu *menu);
+struct menu *menu_get_root_menu(struct menu *menu);
+struct menu *menu_get_parent_menu(struct menu *menu);
+bool menu_has_help(struct menu *menu);
+const char *menu_get_help(struct menu *menu);
+struct gstr get_relations_str(struct symbol **sym_arr, struct list_head *head);
+void menu_get_ext_help(struct menu *menu, struct gstr *help);
+
 /* symbol.c */
 void sym_clear_all_valid(void);
 struct symbol *sym_choice_default(struct symbol *sym);
diff --git a/scripts/kconfig/lkc_proto.h b/scripts/kconfig/lkc_proto.h
index f9ab98238aef..9e81be33c40f 100644
--- a/scripts/kconfig/lkc_proto.h
+++ b/scripts/kconfig/lkc_proto.h
@@ -12,20 +12,6 @@ bool conf_get_changed(void);
 void conf_set_changed_callback(void (*fn)(void));
 void conf_set_message_callback(void (*fn)(const char *s));
 
-/* menu.c */
-extern struct menu rootmenu;
-
-bool menu_is_empty(struct menu *menu);
-bool menu_is_visible(struct menu *menu);
-bool menu_has_prompt(struct menu *menu);
-const char * menu_get_prompt(struct menu *menu);
-struct menu * menu_get_root_menu(struct menu *menu);
-struct menu * menu_get_parent_menu(struct menu *menu);
-bool menu_has_help(struct menu *menu);
-const char * menu_get_help(struct menu *menu);
-struct gstr get_relations_str(struct symbol **sym_arr, struct list_head *head);
-void menu_get_ext_help(struct menu *menu, struct gstr *help);
-
 /* symbol.c */
 extern struct symbol * symbol_hash[SYMBOL_HASHSIZE];
 
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200908221638.2782778-2-masahiroy%40kernel.org.
