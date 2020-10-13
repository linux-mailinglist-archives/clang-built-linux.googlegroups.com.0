Return-Path: <clang-built-linux+bncBC2ORX645YPRBIPLSP6AKGQEX3NUQII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id BBAF328C5D9
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Oct 2020 02:32:34 +0200 (CEST)
Received: by mail-io1-xd40.google.com with SMTP id y19sf9029886iow.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 17:32:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602549153; cv=pass;
        d=google.com; s=arc-20160816;
        b=vsBIu1OMTtQ2Fu0wqocjziVVVHlirCn6ic15HTgJZU7/BUkYF8+P+1qufh+3qGGc6C
         K/IbTF8JdpqhGCGT640KNtoVNSv4JHOeMerkwth1X3H3TlWKBzlhF3Wn1tNsBSK/l5nv
         v4jyonNPVkbuereSBYgR4jgz8v4VsM3aDWNjk+1bH7wrrq5A8W4LNARRT80RtFnjVlH1
         Uv1daFEGcpOWwmnafUJgxCVigh2Qsngib07X6oeZrh18bJeVj5L20aJQHZ38GVRkWL4J
         VAzdKSsagvTTRhE1tOF9Glh6/u+1AZrxXeQ5m2tqRxt9KLz04+GjcEBa8VKVxvtxD5Fl
         P+pg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=IWqYMIVWGkVPki3bizeJf8X0MBYqJNlbdUsdKxp6Mig=;
        b=O8vbXHa9tWT/MT6YNkO1s8hfUTwXgHaUuqBy7v/VJrKjZYEX3WeTkT76CcMLVwHThW
         Nv0dkuR0J4hoaCEmUyIyaTV0hHjMhGVrHGkJnKP455J9VJhAeVJUc2PyvgamRU23fXve
         /a4SIIdtiBh+8apSenH6PBum9DvbayTmIGPfyFjkVeeIiDkxHCaD6FwfTAN8JZRT0Jd6
         MNpp8dFkSel+tNZ+1MYsmVdj+t0UthN+W1ZTnyblkHLdFUacfTY0F6Gq1ifHJLAgppoG
         KPXM8bcMiVmsKEC9HcP3HTrFFuFCALG0Lw2k/DFNfIn5z/UmHftUUXz9oHdgHt5169OE
         boeA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RWGnAnvd;
       spf=pass (google.com: domain of 3opwexwwkaketbnjupmwbofohpphmf.dpn@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3oPWEXwwKAKETBNJUPMWBOFOHPPHMF.DPN@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=IWqYMIVWGkVPki3bizeJf8X0MBYqJNlbdUsdKxp6Mig=;
        b=V31f+Svo0f4OVO23KcS0Tw3NSkdwDK23ObP3emU0K4YyhcaChVpkXef9iCcV8Dykgy
         xERi25WDvvbGrBETAZzjKpHFVh/sscC4Fin1ro7vgzLkqlU0S8BtU0PdRYML3PTTYbT8
         REIAWu7hV29Y2eVYuLjWsb5w7VnJNYpB9PXFKoTIw5y7cTPCnRm6rfnvKqKxtvq8AgqU
         685j9A/vD5qa2vVQk31ugogZyFVPU6K01Cz62Rba8SFx5dc/e2GfR85cwnrUVmJpjngM
         4xDPiwoHwzU2ij1mCQmvODUOULOnC+ymPJn8iWxXOdierD5Pjlvee8ra/c2OmrSHJMMB
         Boqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IWqYMIVWGkVPki3bizeJf8X0MBYqJNlbdUsdKxp6Mig=;
        b=elqr/W90hdK6Hq++kTPB84mea+LFFIpRlwHEoK6quUviLQhS6VAXBpyTrYwqszzA53
         8C4/+0fwF6RqX2V3lKoO4sdIc6T2ZS/Dtus2pQZnn2tH7jhGlT8Yl373lvLvinlfvYpD
         it5WF1wJHp1u4s+W42B2FVOJ5LCOPJl2poSyLeJVk0E3cCDHtM+f+6PKs2uUnxj0/E/x
         kuBm+WkMVcv0wP2J6Zv9AF9iOAVrajKy7qnDxwYhiE92rmKb3TUO1vmP90PUvx/SM6Vg
         f3OMgnUq7CoylKWCvwAdLaBCK+ngm4OA1DJXL82IwSC7jYeqcYHQTU3eBRCkwjnKVT8p
         8coQ==
X-Gm-Message-State: AOAM530SiGWEXN88hWUOj/InFmILDzyUfFz3jlczU6LL6+CM+MJ8ueYm
	r59pMgfVAf/fXpT6mv1rCbk=
X-Google-Smtp-Source: ABdhPJxRi7gAor9kOuaoE4q2muTtnNyFn3cNSr2ngKsCgFenWY0JcVJBf901Rk+raVybS9bbiiUnlA==
X-Received: by 2002:a6b:6818:: with SMTP id d24mr18027498ioc.69.1602549153735;
        Mon, 12 Oct 2020 17:32:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:8154:: with SMTP id f20ls2545511ioo.11.gmail; Mon, 12
 Oct 2020 17:32:33 -0700 (PDT)
X-Received: by 2002:a6b:620c:: with SMTP id f12mr17851070iog.96.1602549153351;
        Mon, 12 Oct 2020 17:32:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602549153; cv=none;
        d=google.com; s=arc-20160816;
        b=RQmWhhKLIWwQW+Dlki0lBfgCotugQtZRM6eXkvikj80OHnm+PZy5BFVgBBU4spXW8g
         swS+0XiXCSLXo+9tZCF5rm/buPngJxYyW9MTJmWR2zx45Joe8pvSLi9GX3VMiYPjW5f9
         HXYYS3cHTLQlkkNMvPrtQnQg36Q7KrmbL0yhid8TJV1qPHcCCqXZrzQoJYX21jJNcfhg
         Sn1JpPzzz6DqSQ7Jb5TuXaxl+p87nPUouV2Fv3uyvCfywVfUBX9eI4aDHsizhwNF+MGK
         8cRwi7CjIp5OyZvH0rAH0BHb3lLwUSTc4VyjeXSLTttrs39ynjO4FZNYn9Qv89LozhPH
         wglQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=i0HfMD/wRChzzw+H0j5SIQI+XYlsyfomuEvjB0A2b7U=;
        b=tMphqYCmT4vHoIxPsWcUUAXkRktDWFRcNFNSxDaCfYGho1Y7FSVh4rGXccO44ZtaJb
         bAkY24+69VwuFSh8Q/DEOsfAropm70gCfkBsgtwoTprA86HvrxyZGiDeqBsghtnK1BRB
         TAMox814H+q4+ULHTmUPmvcE+bpZx/ITWOw2Kq2lSQRWN2sbNkzP2IyCtSdFR/pUT5gb
         cZv+8BGZmYmLcPKyD/banoVQpiA2tys/eJ7DlT/Q9H/0PTS3U4hrpziwEKg82WpMvv9M
         3Lf+vzUyaj7hZkk2Ha6zsiHmyGQ1Hrp3gQb1rcpfJN1XWT7g1816j1RB0CW0b20UxQtl
         XDig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RWGnAnvd;
       spf=pass (google.com: domain of 3opwexwwkaketbnjupmwbofohpphmf.dpn@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3oPWEXwwKAKETBNJUPMWBOFOHPPHMF.DPN@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id z85si1143557ilk.1.2020.10.12.17.32.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Oct 2020 17:32:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3opwexwwkaketbnjupmwbofohpphmf.dpn@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id 139so19226242ybe.15
        for <clang-built-linux@googlegroups.com>; Mon, 12 Oct 2020 17:32:33 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a25:cc89:: with SMTP id
 l131mr12649555ybf.154.1602549152704; Mon, 12 Oct 2020 17:32:32 -0700 (PDT)
Date: Mon, 12 Oct 2020 17:31:51 -0700
In-Reply-To: <20201013003203.4168817-1-samitolvanen@google.com>
Message-Id: <20201013003203.4168817-14-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201013003203.4168817-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.1011.ga647a8990f-goog
Subject: [PATCH v6 13/25] kbuild: lto: merge module sections
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Steven Rostedt <rostedt@goodmis.org>
Cc: Will Deacon <will@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, x86@kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=RWGnAnvd;       spf=pass
 (google.com: domain of 3opwexwwkaketbnjupmwbofohpphmf.dpn@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3oPWEXwwKAKETBNJUPMWBOFOHPPHMF.DPN@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

LLD always splits sections with LTO, which increases module sizes. This
change adds linker script rules to merge the split sections in the final
module.

Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 scripts/module.lds.S | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/scripts/module.lds.S b/scripts/module.lds.S
index 69b9b71a6a47..037120173a22 100644
--- a/scripts/module.lds.S
+++ b/scripts/module.lds.S
@@ -25,5 +25,33 @@ SECTIONS {
 	__jump_table		0 : ALIGN(8) { KEEP(*(__jump_table)) }
 }
 
+#ifdef CONFIG_LTO_CLANG
+/*
+ * With CONFIG_LTO_CLANG, LLD always enables -fdata-sections and
+ * -ffunction-sections, which increases the size of the final module.
+ * Merge the split sections in the final binary.
+ */
+SECTIONS {
+	__patchable_function_entries : { *(__patchable_function_entries) }
+
+	.bss : {
+		*(.bss .bss.[0-9a-zA-Z_]*)
+		*(.bss..L*)
+	}
+
+	.data : {
+		*(.data .data.[0-9a-zA-Z_]*)
+		*(.data..L*)
+	}
+
+	.rodata : {
+		*(.rodata .rodata.[0-9a-zA-Z_]*)
+		*(.rodata..L*)
+	}
+
+	.text : { *(.text .text.[0-9a-zA-Z_]*) }
+}
+#endif
+
 /* bring in arch-specific sections */
 #include <asm/module.lds.h>
-- 
2.28.0.1011.ga647a8990f-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201013003203.4168817-14-samitolvanen%40google.com.
