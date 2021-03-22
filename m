Return-Path: <clang-built-linux+bncBCAIHYNQQ4IRB2OX4SBAMGQEAPVKKZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id 428D6345327
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 00:44:43 +0100 (CET)
Received: by mail-qk1-x73b.google.com with SMTP id p133sf692622qka.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Mar 2021 16:44:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616456682; cv=pass;
        d=google.com; s=arc-20160816;
        b=pNmNCF43GdPGqeX/2oZBuqblKTovVpczNdK9wLcza9doAXGBhjEuPTOIIDmPNoFHYf
         69lkokDc1OzWf+lVDwaA5n5APnGy4XV8+E3BqhEfNPf9ggabBmlFVBJ79qJIsyXvj8ES
         pBMyaI9/6qItE5TAjpfg/uTwACSrsz0BGOcuaEWFPIWr3nDtmcuaQAW1GKXqev/dmbw+
         BtRLpmBeGMQlHy5N+zNx9AsvztP2jakZdzfziLtgjX+MYXMS3ZYms/0A2jGM6e5sDBHV
         Up2hcg6+zkffD4ztf2uTssDEQGZbZaVwO8eS1Qu6WTsZUtquZ1EWKJJuNjVaQHB9XsCx
         EqKg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:from:subject:mime-version
         :message-id:date:reply-to:dkim-signature;
        bh=aOaTZb3AsaVkuEUa82KyUp3NQ373A1hfbYXmt0b9KLs=;
        b=lSZUNv3Hu4mR0jnwOkudl6t8Y7Ny7pXViY0XcYZd+EXzWAZBSvFsB/NbTseLD6QMyI
         qYihyqCJvX+ualfXK+RGgNbXllrc5H0NPm4RXC4SP2fdcsyDNRv9DW1uFj6I3pOy9KfH
         NQ3YtPFTewSEldiWJ+8jwqQ6d6J4eKr16oBe945l56NMo6jhX6flXHHNF/ZBypV59h3/
         //D7pSZDPDIodpWWaGj0dD8oQcml2HujKdRgS0R5SSWtf4/NqvSERJ5FUM7+zwoaKkcj
         /BW+YQzYxo+fbJCK/0yDt/HaIizZK+jdE2phJeJ7aQm8+v6R0rsQDkD2r1KmDoZMXby3
         ySpg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ph9FImDe;
       spf=pass (google.com: domain of 36stzyaykea4gsobxquccuzs.qcaqzobu-piwzh-zwbiluccuzsufcidg.qca@flex--seanjc.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=36StZYAYKEa4gSObXQUccUZS.QcaQZObU-PiWZh-ZWbilUccUZSUfcidg.Qca@flex--seanjc.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=reply-to:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aOaTZb3AsaVkuEUa82KyUp3NQ373A1hfbYXmt0b9KLs=;
        b=Lx6hk+2oXnITU+l16NZcbgYWHEggQ3jEUn9oLCnXkTGioz9jZFfKtHKHQBJHn8NUmG
         +bzZJKW0dDkTCTSVumwP8mrJFrblTY+3w3IMHkOdtSmt/c1e4theO5u83TFFqwmS9SIB
         V5qbA4tGBCGIQQM7Uv7mZ4LGT0R2m1gyaU3cL1K1woxABJRm9YDHuDx4pUwr2/y3YMqy
         w9j2p+NK3FjXJrghKW3VXN6Y2S3tpDV8hq0NLn9do6o1+eB+Py7RReI3NOv0qbOUvwF2
         fULu4sVuDGHbR20r01q/+oN2rlQy+fxGwLvir6uzJrkTd4gNrAUGjJNkyxgtzl3fNCvz
         RapA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:reply-to:date:message-id:mime-version:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=aOaTZb3AsaVkuEUa82KyUp3NQ373A1hfbYXmt0b9KLs=;
        b=FNyxkDYqJFeo+FR7lVBpuwItuPL7aY3Q1fev1VjR41qypuiVf0XyTvjqRbtey2K27u
         h9rcFHBv5LmvOHG9QQOR8IwAcezQcKPjjR/HapGT0ym2tyICU8P3x/vY6CFF9DGJIzgx
         394r8qyjafFPefFkGqOrLSp6FiqCCu9/I/jeacQhNjfjzRsqkg3ImuGjCeXPZ0amlkoR
         mO9s73ujDAM58Fw7PcfBchKB/8TlthqNMsbuP1/gSbmTcHJeAhteGhVSu6yamCrea037
         PxeXQNWMXUf/+P6vDY2AuuUFGkxwXmaSNJ8ORAvvjX42sf4ho1HenzCkxXP9NiKsAvnN
         Jp/Q==
X-Gm-Message-State: AOAM5312+G9FDlZjYuvoV+Qlbz8Tg1kffYwC6a8r4nG2CMWuNq6VHR5I
	6H8J0OTk8UiinSZKEEtAngs=
X-Google-Smtp-Source: ABdhPJyrHnNxo31HYIi4chgcjECXN+meEsWcw1QFlMVraokJ7v4xIsBJNIaouEJ41fUu9O4J269lEw==
X-Received: by 2002:a0c:c342:: with SMTP id j2mr2103175qvi.41.1616456682049;
        Mon, 22 Mar 2021 16:44:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:a050:: with SMTP id j77ls7704573qke.10.gmail; Mon, 22
 Mar 2021 16:44:41 -0700 (PDT)
X-Received: by 2002:a05:620a:108f:: with SMTP id g15mr2788420qkk.298.1616456681652;
        Mon, 22 Mar 2021 16:44:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616456681; cv=none;
        d=google.com; s=arc-20160816;
        b=ose9yB3w2/NOI8g9ALSxyhrBRuT+P42EXvtJ9gRbP11x4lxVtHLYb05ssj8msFJSay
         o+irYNG8+WXlW8EqqA7iBVKp09U7WwGKKFbFBO9sfFADLDbVSCD3p024SESMPtKEd+7T
         4dIjNV7+BNklBBoIdfqAdMaDES0+BlhQz+Ch1NvN9NyCmf6C12jqPxjw7fTLTLG9Lb14
         2NB52jWFR69vlRwL2+kKBj3daf/BJhzmeL6xPVMxAin8Z5rvZXN7mXXS1RVQuS4Uoob7
         Nk63HbKpP208QXY+GLxdXLTw46P19jqG4d0YTuygQnmnKALxZ4b+WiR0f1LmOj3720mb
         dhNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:reply-to
         :dkim-signature;
        bh=4TMeCx7PwkG6nkmerFyzBkQS77hoZyQHillLYYdKYwA=;
        b=AYDcG58VyUBln7NmoOM+UzqGCZPOUnhSO1xr0TbArMkIXQl0BbkcysDR6WQAQUbW0Q
         U6ylS9wngaWhmuSLIdANWhm7aSlsKVXNvGsHhM//HY4ggkBCdwX8/j9p2RYt+xtfvy+N
         SJ88U+duO3afDsqBsVA1ufvK75/MhBO3NVFxJRDpIVHUpBUYu5FUQiXvOpVXPX6H0Atv
         6MgKYZ1AVM1MDqmiyqlFRwPxFoElmHJJcksE82a6iNgHnO3eC1ZsZEeumNeBs2ND93QM
         dclf6ew/P8MJCHltIH7FlAfe0+8z05L1IcPSpZRaI9lNHxASH3FvNufpR0G8vPj9M6SG
         1PJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ph9FImDe;
       spf=pass (google.com: domain of 36stzyaykea4gsobxquccuzs.qcaqzobu-piwzh-zwbiluccuzsufcidg.qca@flex--seanjc.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=36StZYAYKEa4gSObXQUccUZS.QcaQZObU-PiWZh-ZWbilUccUZSUfcidg.Qca@flex--seanjc.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id r24si822363qtp.1.2021.03.22.16.44.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Mar 2021 16:44:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of 36stzyaykea4gsobxquccuzs.qcaqzobu-piwzh-zwbiluccuzsufcidg.qca@flex--seanjc.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id u17so876718ybi.10
        for <clang-built-linux@googlegroups.com>; Mon, 22 Mar 2021 16:44:41 -0700 (PDT)
X-Received: from seanjc798194.pdx.corp.google.com ([2620:15c:f:10:f8cd:ad3d:e69f:e006])
 (user=seanjc job=sendgmr) by 2002:a25:745:: with SMTP id 66mr1404929ybh.195.1616456681283;
 Mon, 22 Mar 2021 16:44:41 -0700 (PDT)
Reply-To: Sean Christopherson <seanjc@google.com>
Date: Mon, 22 Mar 2021 16:44:38 -0700
Message-Id: <20210322234438.502582-1-seanjc@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.31.0.rc2.261.g7f71774620-goog
Subject: [PATCH] kbuild: Merge module sections if and only if CONFIG_LTO_CLANG
 is enabled
From: "'Sean Christopherson' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>
Cc: linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>, 
	Kees Cook <keescook@chromium.org>, Sean Christopherson <seanjc@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: seanjc@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ph9FImDe;       spf=pass
 (google.com: domain of 36stzyaykea4gsobxquccuzs.qcaqzobu-piwzh-zwbiluccuzsufcidg.qca@flex--seanjc.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=36StZYAYKEa4gSObXQUccUZS.QcaQZObU-PiWZh-ZWbilUccUZSUfcidg.Qca@flex--seanjc.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sean Christopherson <seanjc@google.com>
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

Merge module sections only when using Clang LTO.  With gcc-10, merging
sections does not appear to update the symbol tables for the module,
e.g. 'readelf -s' shows the value that a symbol would have had, if
sections were not merged.

The stale symbol table breaks gdb's function disassambler, and presumably
other things, e.g.

  gdb -batch -ex "file arch/x86/kvm/kvm.ko" -ex "disassemble kvm_init"

reads the wrong bytes and dumps garbage.

Fixes: dd2776222abb ("kbuild: lto: merge module sections")
Cc: Nick Desaulniers <ndesaulniers@google.com>
Cc: Sami Tolvanen <samitolvanen@google.com>
Cc: Kees Cook <keescook@chromium.org>
Signed-off-by: Sean Christopherson <seanjc@google.com>
---

This is obviously the quick and dirty approach to fixing the problem,
presumably there is a way to actually update the symbols, but that is far,
far outside my area of expertise.

IIUC how the disassemblers work, the section headers are correctly updated,
e.g. objdump displays the correct info, and even gdb's disassembler shows
the "correct" offset, it's just the symbol tables that are out of whack.

An earlier version of the LTO series did have exactly this #ifdef, but
it was dropped when no one objected to Kees' suggestion to unconditionally
merge sections.  https://lkml.kernel.org/r/202010141548.47CB1BC@keescook

 scripts/module.lds.S | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/scripts/module.lds.S b/scripts/module.lds.S
index 168cd27e6122..3580c6d02957 100644
--- a/scripts/module.lds.S
+++ b/scripts/module.lds.S
@@ -25,6 +25,7 @@ SECTIONS {
 	 * -ffunction-sections, which increases the size of the final module.
 	 * Merge the split sections in the final binary.
 	 */
+#ifdef CONFIG_LTO_CLANG
 	.bss : {
 		*(.bss .bss.[0-9a-zA-Z_]*)
 		*(.bss..L*)
@@ -41,6 +42,7 @@ SECTIONS {
 	}
 
 	.text : { *(.text .text.[0-9a-zA-Z_]*) }
+#endif
 }
 
 /* bring in arch-specific sections */
-- 
2.31.0.rc2.261.g7f71774620-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210322234438.502582-1-seanjc%40google.com.
