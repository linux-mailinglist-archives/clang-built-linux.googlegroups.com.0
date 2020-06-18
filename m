Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBPMDVP3QKGQELUAYS5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 17ADB1FDCC2
	for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jun 2020 03:22:07 +0200 (CEST)
Received: by mail-pl1-x639.google.com with SMTP id x8sf2762533pll.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 18:22:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592443326; cv=pass;
        d=google.com; s=arc-20160816;
        b=XFBFFZHoqKW+TMplsA3pAmidcgdCzovQxPDpdqWDcNs11h5VqucZjjI7M33Twr6Wg3
         ESkyhUT4SHRdshIwOFucIL7dXePn7CA22VwDG0QBfxIr0D0IvmQl6eD40zQvCJY7OExk
         KQsVj228L8YTUhoC0UzA3qw8pFJAYKheonfemSyR+xRd61ZFcecKNjR/4e6v5ue9JS4f
         jK1nJn4++VUcix8Us5LIFhKtXh3L8TCOdwvM0my6KvbrUWLGXyRsT+mDWP8gGmy1ZFNd
         tXqi1C7MK+ygyXcKtyqgj30qHipFVI5dsrl/rILbAs3chXH3MYct2kV3eMD0l33Lqyi9
         r1Gg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=uCR/iRZt6ls6oyEFlSIilEX0Mir1eXb8FCoEf7kuRr4=;
        b=hgrjzjgUJxWfukto801zbYYtE4A+ghulaajky/fK4Zr8WOpG7poYP88e5aVSFRGEFH
         C+D9ZYOXRXK+9oDpPbjDI83alcB0MvrK+qOQvQ4U9pjKmNGylIZBv6O2DZ2kwYbuOFXw
         fOoLmMyd+wxtqCMbTZ0GOCQPezDzKog3lD9Dzzvz697wtFRitsSdmvR0lRUENGH/ldBx
         8nyK/N3B6B01gUGwXZJrpwhTX8dtpACe4ARfl8AKCMtMYRV8uviFGGAixi5z3aFxKDh0
         D1sDlLMNny5NCbHD9zpu7dAyPsP/rirUMz5zr74LSSGIsNUkaeMGitv6Nm802LUXg4+1
         ZdlQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=xZCvwK+1;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uCR/iRZt6ls6oyEFlSIilEX0Mir1eXb8FCoEf7kuRr4=;
        b=dBJvss3QlflXrS91vFdKZTgX+TZGyiQbUpfsnr5Io0OoesKDHvUjSBwkw/v0nMGs6d
         2iWAt2+wpQQYcNM3iRspK5FCPaBCTp+7SaFO7Y3cJYl9yWIxSL0SKbxiOPTJRT18lZFK
         QjtkcrPmoJ5u4j8fXZVBeLMdotUJIgFhgjKpCOWrSXkCeBtN+tqo0F8CBq03lg15oQAN
         HlJWbBVdcg9uc+tSdWnV698IDAHZPZzYq4FyjN54fQRv6mwv6T7npB5dv7FK7BLSYiaR
         xW+xZKGf5wYgovtVc+iRySeH7bcELJYXm00Wri2q67hfnq7M353vmEL2aiVOu+u9xijw
         iAIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uCR/iRZt6ls6oyEFlSIilEX0Mir1eXb8FCoEf7kuRr4=;
        b=FQtM4GqFBr/o0Z4Knv+n85uYpDz+YvwDXYqAVaM0FjamG0s4rD/LdxZzvByilKOld/
         nboD1y6GdB3jaT6a+y9QA4G/1ngasIGLBJUM3hvYAi/zCNTbVZ/zm7WChRWPHjXUO9J5
         dVbkZxO9YESJRHOEgH6ZCnZBU9/ck6dgQOT/Gg876fBT9xkNd4zaIU3DxQ2LmNvKzcSX
         kRMrHDIrEBHGkxxxKfxy59ATIbndOvzejVUKRQuLlgUr/PCofvxqwVytdHPzFGePSMPA
         gBumX2SDa1sYkIjDZMeQuq8RdZYeTb5x1vousIScHIpv7mNe7LdId48FGsVH1CJEoxgz
         D3DQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532wygPRmaeswTZSolyj1UusTfBL4wX6r2L5jQa6Fr2xRpP6+k1B
	J3E1uR00kB+s0SL9QMd3NG8=
X-Google-Smtp-Source: ABdhPJzRfbVZ1iscuozK4tTL9zLrFPodDNoXUtP1s0mG3e4tHe0UnAPFywngJYS9rctpAABaCdZwTQ==
X-Received: by 2002:a17:90a:b013:: with SMTP id x19mr1780313pjq.229.1592443325789;
        Wed, 17 Jun 2020 18:22:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:e28d:: with SMTP id d13ls1607580pjz.3.gmail; Wed, 17
 Jun 2020 18:22:05 -0700 (PDT)
X-Received: by 2002:a17:902:6b86:: with SMTP id p6mr1654580plk.47.1592443325399;
        Wed, 17 Jun 2020 18:22:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592443325; cv=none;
        d=google.com; s=arc-20160816;
        b=FVb4kpLtUVUAZA8ws660lJm7ykKVu7Ys/PEiWWkV8eFNX/GlXxc7Reo+ZXclfM6gFd
         SWmU7YdinNEFWMGl8zsQaBhMtL/YL6a6F2Gj+GJ2CpuBJdhMi9Bf010gXrVX35+TiQnu
         mhPLwe/Kd8dQXy2mN5I3B8kkAyMxUNI7hOjoJ+E0lM+2ok5wZVRzJtdwDZg2YSwmA80l
         VC6b6afUbsmm9SlB5nWEV32thAkqGGAvdbZZknP+y8DAyPJvrEnB2+rZARR9+ThCb3cl
         HIj4SRKVflg/Er8AMK1WMfm1pJCDUbWf8hRU05V/W52O9EzWa0ueRX5gJf/13p5N4R61
         dQFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=FEa0pH/xKiDnzm0A8ib2FNjjsqZYRdDKhc/ZVbxrInc=;
        b=wQAsrhWOLCUWLS1qzh3hbtp3ewlauzB8dHYo+M4jYv0xp0CaI6ZFNr76aHF4u01Di2
         0MaaFP2vIwwqbmZ6QgJVwnFWk+AzMXqZ50XgzAtrzQ2gNWveD9r2/H1Cc4sLHw4NR5nV
         r0qcoxGrayVsaqmptS5juSE/YFMs7qgYYY3QkJnB30vK7hNf0iQB/SKRN62/1Dvsp0Pp
         jbCCpVEsQrIhCrSKxGRK96jUCXFD0V6x2VVlb/IGqRzpD8hUgvcKdF3KKPirVG9y4+ht
         RGCFYVgRQFtoqyAfbFzAQGfqi4ZrVjNKBdSyV7WoNoCIzAc1PDbB2MvuXoUHZ8HKNMkF
         V66g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=xZCvwK+1;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j3si55661pjy.1.2020.06.17.18.22.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jun 2020 18:22:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 31A3221974;
	Thu, 18 Jun 2020 01:22:04 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.4 258/266] libbpf: Handle GCC noreturn-turned-volatile quirk
Date: Wed, 17 Jun 2020 21:16:23 -0400
Message-Id: <20200618011631.604574-258-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618011631.604574-1-sashal@kernel.org>
References: <20200618011631.604574-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=xZCvwK+1;       spf=pass
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
index 87f27e2664c5..d9e386b8f47e 100644
--- a/tools/lib/bpf/btf_dump.c
+++ b/tools/lib/bpf/btf_dump.c
@@ -1141,6 +1141,20 @@ static void btf_dump_emit_mods(struct btf_dump *d, struct id_stack *decl_stack)
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
@@ -1239,14 +1253,7 @@ static void btf_dump_emit_type_chain(struct btf_dump *d,
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
@@ -1274,7 +1281,15 @@ static void btf_dump_emit_type_chain(struct btf_dump *d,
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200618011631.604574-258-sashal%40kernel.org.
