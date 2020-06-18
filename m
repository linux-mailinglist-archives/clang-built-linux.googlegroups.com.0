Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBV4AVP3QKGQEKBIFZXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C1971FDBFA
	for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jun 2020 03:16:09 +0200 (CEST)
Received: by mail-ot1-x338.google.com with SMTP id k1sf1833185otb.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 18:16:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592442968; cv=pass;
        d=google.com; s=arc-20160816;
        b=mxZz332Gf60ST2e8h7HgGl9fWVOIwCrliNT8ow/f9jrS2AJ6gzaPq56qAilrNWyDl4
         w5G212vlKudxeMjyQxMuZuJ3rk/6tF3xTMYDHDxM78VglwntqkStlZZpKeuZTbCbbdQE
         3Wvmyg4SuGKzjF9WW8uTqREZIDyM0JgJIOvnA5lfpM7pOWHvCobWMch7KE4gUkE/YC16
         Y564pDbESe8zHMzzJeZAZnEzFhOFecx3hoiC9O9+sz4C+IPC4/JYUJpRDrbWn+K6+fxQ
         3JGDUPLtopgRQeLD+KwLJQb1Pnr7KTtm4zYXvx91jTVotBKUlYwTPqA5LP59qpUoeQYs
         lxiQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=MSAkAaJhFy9p+lO73Nxx5QW1QYosp3sPNGzj8zyzfag=;
        b=QS07/V5wWVhXLg8LNWfOIkZz+ue54huvL6YQCpWpgEPuffB2f6tsaC1YuzP64v4nMi
         G8XUaPV2kMZs/oFRU6ov6HtiOHsRAddGr0WR9Sj4nyhAFrlCaBp3TLFgieCcISBAK68w
         qQeJ/2GdtssVv0by4O1STR6pDolWY2N65jjFSFK7ysKJ+iaB0iF7mJFvE7lYGe5trTyR
         duYEqPkztSXHqZ9Ej3ubjTmwKHFbUKRQyrGbWjZL0s7JUO0pJok+zsbAiqESo30M6bPv
         4ox/EIL98gjJuuRHUZr4GV3aM66A1LjqXawQj0SSFoPBIvnbYDTfJOamm09FklyqGj3c
         F3Qw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=PU81N6T0;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MSAkAaJhFy9p+lO73Nxx5QW1QYosp3sPNGzj8zyzfag=;
        b=rDmq+Q4pOBlmzPfSYMOVrpDsM3JQc6D1gB9r1c/0BMmapP+cFeQTk9A7R4BfribzP6
         DZai730wbUsvGx5fcS7/i9EXDFC/LvCNerVV6dk3BTmlfoYM615bbH+UlW++RxfDJn81
         vsmSSrtDsL8KFh2WyP+DdDQoLJFdTD6YaET9tzM7Z40dBc+J0VCz0WgRli0RXxFmXbK4
         jeffqHHnaguwhAgiRltcy3m6IkWGYtnw7zH3L7iOJO+eHyPg396p9lXWM+OHzKXmg1Ea
         cCIAVzVwum4L7I7228wjtOmIlIN4klohq40SAiMf60tQvCmiADiShcwhxsVN/ttNDxpq
         UycA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MSAkAaJhFy9p+lO73Nxx5QW1QYosp3sPNGzj8zyzfag=;
        b=Ze9ynHVUMo3p6h0q/8xCjTK9tWPeN3oB/nLZU3xxugRQNOvA1ge0PLTKtnO2f+NH2m
         RAMW1ZXTNtJWIMyNG4a+9sXRA7niZADWiePJ6zw/ipArpUCzEXw7VJiUDrjZWkX6+aGY
         UZLJxxi9sacCUbKoXhnV1ZCDnRaCz5IIsfhuvUwmVldZduCWAeaoLkMoI4ckTiPodaAf
         P+hBRV1D7c08ZPA/DK5sSoRQhaTiMH0QHYg6Gr6Boqg9U+ZI7eXj5jjek4r+rZISXxJD
         XprEdzy0mCW9pRIXQ5qlNHcmHnBmM+bIXF2d4dJxNPnKB1EhVp9uAyNv2RbvvPD8dhkR
         R3xA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531qAqq00kJ7Vr//JvOqI51Tk0s2xM/qtXDdFXNcOB2Lux8faaTS
	DdlzOAKq4VO++m49Kuc3FiI=
X-Google-Smtp-Source: ABdhPJz2JRklaWAzd7/lV9olHcWxidNbAQCLBL8/FXdL0ZzWGKoaqq02ccyvYGMQdszaolc0htx8Iw==
X-Received: by 2002:aca:5d0b:: with SMTP id r11mr1118345oib.169.1592442967745;
        Wed, 17 Jun 2020 18:16:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:4549:: with SMTP id p9ls922558oti.11.gmail; Wed, 17 Jun
 2020 18:16:07 -0700 (PDT)
X-Received: by 2002:a05:6830:1e3c:: with SMTP id t28mr1554015otr.312.1592442967381;
        Wed, 17 Jun 2020 18:16:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592442967; cv=none;
        d=google.com; s=arc-20160816;
        b=LJpWDwZR6c1lm3Owpc8mRRednmmEXxVitu1k4OrtKtlR+4bB4Texx3w8W1Q7cPUqer
         mBzYn2aeTUGpZDb4bT46ZiFi4Bpaoo8GNBZ28kH6oLyjbgIUC5UQhKArDKkRuEAAqQwJ
         LdDCx1Kla8RkzpkzpRDjDx3zYOrIxHMZqfNi6FqijEu8P5hK0j7O0827eQcPuwVWPcSc
         KDLVd7H+uVgRZ/I/91XEs8PLvGCzn5MSALN532eo138n+IbmULBzLlOIc9Wk3y/yRQjx
         3sxvUhsMEkpk/tk18wayjt92ZT4vNOSxWj6/W6B0fa1eRBceStie7jbNkxWpuwYYXoH+
         6UtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=PB9ztYUJMqL++IywfaW0nqpumvo2XtBabU5rWMdQoMM=;
        b=aQx0/cea8FYK6UiVfydvHAhO7I/sM/0sKxvAIEBCZHAA0yTVyEdIUXPvLmd7R8+N7g
         sAtqk/uFK/j5KTuMKJdWnLu3GsuC4TZvH3hQ4AattSPHhXoZOw6wU1QgitXJHMVKands
         vhXQYb/hjztpOCZNp3ojwrPbNm9Tus/9GMrRoFy75S83AqxwvMG/9kqFNSqH8WJAqMCj
         laHx6Pj2U1XVeSHf6pbysGzNNRkl3OhnGO1CNK2vjpgJ4C3uYrCLGSCNgxhJut9PTQTG
         hmEMsGXZHk8H4b0tIIDVS2pWaY9yaBYtftgFBIbIkaZQnHp0Rx22POfCA0yTepZi+QIK
         McGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=PU81N6T0;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h13si152847otk.1.2020.06.17.18.16.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jun 2020 18:16:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B45F72088E;
	Thu, 18 Jun 2020 01:16:05 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Andrii Nakryiko <andriin@fb.com>,
	Jean-Philippe Brucker <jean-philippe@linaro.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Sasha Levin <sashal@kernel.org>,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.7 371/388] libbpf: Handle GCC noreturn-turned-volatile quirk
Date: Wed, 17 Jun 2020 21:07:48 -0400
Message-Id: <20200618010805.600873-371-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618010805.600873-1-sashal@kernel.org>
References: <20200618010805.600873-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=PU81N6T0;       spf=pass
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

From: Andrii Nakryiko <andriin@fb.com>

[ Upstream commit 32022fd97ed34f6812802bf1288db27c313576f4 ]

Handle a GCC quirk of emitting extra volatile modifier in DWARF (and
subsequently preserved in BTF by pahole) for function pointers marked as
__attribute__((noreturn)). This was the way to mark such functions before GCC
2.5 added noreturn attribute. Drop such func_proto modifiers, similarly to how
it's done for array (also to handle GCC quirk/bug).

Such volatile attribute is emitted by GCC only, so existing selftests can't
express such test. Simple repro is like this (compiled with GCC + BTF
generated by pahole):

  struct my_struct {
      void __attribute__((noreturn)) (*fn)(int);
  };
  struct my_struct a;

Without this fix, output will be:

struct my_struct {
    voidvolatile  (*fn)(int);
};

With the fix:

struct my_struct {
    void (*fn)(int);
};

Fixes: 351131b51c7a ("libbpf: add btf_dump API for BTF-to-C conversion")
Reported-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
Signed-off-by: Andrii Nakryiko <andriin@fb.com>
Signed-off-by: Daniel Borkmann <daniel@iogearbox.net>
Tested-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
Link: https://lore.kernel.org/bpf/20200610052335.2862559-1-andriin@fb.com
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 tools/lib/bpf/btf_dump.c | 33 ++++++++++++++++++++++++---------
 1 file changed, 24 insertions(+), 9 deletions(-)

diff --git a/tools/lib/bpf/btf_dump.c b/tools/lib/bpf/btf_dump.c
index 0c28ee82834b..653dbbe2e366 100644
--- a/tools/lib/bpf/btf_dump.c
+++ b/tools/lib/bpf/btf_dump.c
@@ -1137,6 +1137,20 @@ static void btf_dump_emit_mods(struct btf_dump *d, struct id_stack *decl_stack)
 	}
 }
 
+static void btf_dump_drop_mods(struct btf_dump *d, struct id_stack *decl_stack)
+{
+	const struct btf_type *t;
+	__u32 id;
+
+	while (decl_stack->cnt) {
+		id = decl_stack->ids[decl_stack->cnt - 1];
+		t = btf__type_by_id(d->btf, id);
+		if (!btf_is_mod(t))
+			return;
+		decl_stack->cnt--;
+	}
+}
+
 static void btf_dump_emit_name(const struct btf_dump *d,
 			       const char *name, bool last_was_ptr)
 {
@@ -1235,14 +1249,7 @@ static void btf_dump_emit_type_chain(struct btf_dump *d,
 			 * a const/volatile modifier for array, so we are
 			 * going to silently skip them here.
 			 */
-			while (decls->cnt) {
-				next_id = decls->ids[decls->cnt - 1];
-				next_t = btf__type_by_id(d->btf, next_id);
-				if (btf_is_mod(next_t))
-					decls->cnt--;
-				else
-					break;
-			}
+			btf_dump_drop_mods(d, decls);
 
 			if (decls->cnt == 0) {
 				btf_dump_emit_name(d, fname, last_was_ptr);
@@ -1270,7 +1277,15 @@ static void btf_dump_emit_type_chain(struct btf_dump *d,
 			__u16 vlen = btf_vlen(t);
 			int i;
 
-			btf_dump_emit_mods(d, decls);
+			/*
+			 * GCC emits extra volatile qualifier for
+			 * __attribute__((noreturn)) function pointers. Clang
+			 * doesn't do it. It's a GCC quirk for backwards
+			 * compatibility with code written for GCC <2.5. So,
+			 * similarly to extra qualifiers for array, just drop
+			 * them, instead of handling them.
+			 */
+			btf_dump_drop_mods(d, decls);
 			if (decls->cnt) {
 				btf_dump_printf(d, " (");
 				btf_dump_emit_type_chain(d, decls, fname, lvl);
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200618010805.600873-371-sashal%40kernel.org.
