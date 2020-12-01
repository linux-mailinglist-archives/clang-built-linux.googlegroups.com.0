Return-Path: <clang-built-linux+bncBC2ORX645YPRBE7PTL7AKGQELPYXBQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x938.google.com (mail-ua1-x938.google.com [IPv6:2607:f8b0:4864:20::938])
	by mail.lfdr.de (Postfix) with ESMTPS id 686822CAE86
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Dec 2020 22:37:24 +0100 (CET)
Received: by mail-ua1-x938.google.com with SMTP id 89sf618880uar.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Dec 2020 13:37:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606858643; cv=pass;
        d=google.com; s=arc-20160816;
        b=B24dgza4VVf3eH61lvt+fE4i5S40z+8+adw3cw8PR9ybCH1KO/eHyvxMRLI3RMf7Ij
         iTnaFpHNFSudAiC2/vus6ZQHu1gFWuexfzhdCYV1rhejYJ5bODTYST0csC3odotma5Ux
         hrqGDFqF7xYN7tvhqP9JxfbtPT6HjH+Wr84fqCZqqwg00gKqG2xneSzQ7sEN3WU4XW+L
         /B9wX+ozfUXEkLcDsE0quCXmVWhEBghvj3P0gGaVKAZwirXux1bNhrijyclKLkRPgYB3
         dcISJtoVZkimbWIpRQGPKXKOtnFga25BwPFE9xRoBp5BkNe9c7rwewx5zJBqGd2Y3FdQ
         71NA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=FpquG+9svXorAHc/CMC2Pqu08z7R+GO/UoAr6NfUd6c=;
        b=SLoIwg4r/0DrSW202TwbmudIrWkR46a0EICtskS2PxZzkwfcSBd7Bq5m4thQ2gkTvD
         aNC5xikiRiTxlLpy9AV44aYP65kdOPnLonyG9E4u8XGBQD0J1dEWfr7uxexxQCGMnNUP
         h1AIsqFdNC+FjPuiTQ+0j2DIm5paXlH1NNB/8+nq3L8sLNoe2CgyzOppYa+GWHXt5MFT
         73g3GJ73YI1sALIcMFmOYbyDWwWpcaXalr0TFZF13tESsmvN4ix3cEDNZDOTSuPgFSwt
         udiQtjtSf6J+FCx9Di1wdvSxCl4fXjy0PoNah993zCnsnFX8KWL5rYWv3LH1r3T98XL/
         SE1Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YDu+NEbK;
       spf=pass (google.com: domain of 3krfgxwwkacep7jfqlis7kbkdlldib.9lj@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3krfGXwwKACEP7JFQLIS7KBKDLLDIB.9LJ@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=FpquG+9svXorAHc/CMC2Pqu08z7R+GO/UoAr6NfUd6c=;
        b=HOAVVhcVBhPyPZPe2KYudXuUw2DsvmjLlLl1xWJ+tO8D1/zsG1lEGgxYcv1U8R/ELP
         hfEAa1hzSks+cjl5fDMf6Tji9VVOU9WHTzPQoVhMDsh8FqbzJouRVdLJwbWdUx8y7/rJ
         M48Cp0l7iuGvuAqwpJwUsyjXxFKg3uIAR6wzFKOcHR/SKUIjq3YjPNZuw9A/pgA/5lQ7
         ELIKjVPuU8VJRsS/aMf46dzkTd8mrL9lSA5kHOJvrBFXKDrDfGjQF3et/pJhmMhNf3UQ
         YNcgiLD3BdaCxF6UDjA2HYRoDe3tNNrZMD4DITttSDuC5S7mfUQYNPVmy5fH3PIqeVvF
         r+eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FpquG+9svXorAHc/CMC2Pqu08z7R+GO/UoAr6NfUd6c=;
        b=CpcHcx590beCpHPwKn7khwGP9Mx515wUqrWu49zwveVHY96sI6BhK6ADh6WWjSemxc
         pTbjGZgtFPQXhz6anNHZmUWpLRRUseiotEkJmqqoFrPoiqW/6yHqqD2qL0WONURSc24R
         LYQz5/nWh0B+bRBcslL0mD1TbEnKidrxRlTJZl0k+GoZesEAYPRkXRyFk5pQTB74aLv5
         QnIJ0eFI9KIO13j5qHPKK5UX+Pah83oigebB05BGLm8hcQmufgcKz6/rF59+DVlHqDwI
         xi76B9v8EwxCmNpPDlSBd4hUDlCNfyV8neCmIOFixHKj0TMrvSVNK4AAwf2SM2a/6MlZ
         LTFg==
X-Gm-Message-State: AOAM530stV47/EBZ5tovCsl6W4wIoM0hYNaTj6fGqW5o6+8G9tes7j0c
	swWemS//d1R/eoKPLGTaBf4=
X-Google-Smtp-Source: ABdhPJz4m4U3FPBgt1QSk5AtSPSc7GpwmEz8Qg7i4Xbi87I1z9hZDAGgMuspYbjjDTDKYr04WGxWIw==
X-Received: by 2002:ab0:2302:: with SMTP id a2mr4773001uao.138.1606858643287;
        Tue, 01 Dec 2020 13:37:23 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:3fc6:: with SMTP id m6ls334617uaj.11.gmail; Tue, 01 Dec
 2020 13:37:22 -0800 (PST)
X-Received: by 2002:ab0:6456:: with SMTP id j22mr4414298uap.57.1606858642891;
        Tue, 01 Dec 2020 13:37:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606858642; cv=none;
        d=google.com; s=arc-20160816;
        b=Ux5vvnu4evcwj9wcUIjCt4en4ADkfFn6/VbUobJnCCrQyibjlftiBJku20iGFytOVJ
         KRs8KBTFwKnH/91Tj594FPjkOckF07ErNiYq1solr5suCdNk4Ygi8z08aiqKs0XNlpia
         GMdhDx/iRazubfLpjNCXPdAEdounz/aqLp1LnHYjgtHo3+idZEtyh/HeSTUiDbDxy4me
         5EynZpALBXDSlvnZk4XAz3w5sH6x0KrGZewmKBRIvfrhDGKz13ePRbs+Bw9ZpsL6BfWp
         WSfQcKJya62drCHxQMP3H87oHQYxfF/8GKiycb40q6YDi3m+tRG67PUXodwuDiw8cN8v
         scOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=IWPxRCPjFejanLxpgRG3fapg45p9YOPZWT66lZNPqfI=;
        b=GPI5tOrQ1SjWxVB9NZUidzP2iY25Y5HqIT7FKwt6mbatG9985q4U7jDAOGnPgteFu8
         oN+o3oCls41z3uQFEBk7MWeC3wgBOwqGPaCedwl8GIGLKSEIJHeAkrTXAXthi4U6XU5s
         17NzisF1kBXwLJ0Nne9TecvGei0s1CehmRdIQvLZtY3H61CH7WsioegbmGKCEu0Z8y2+
         Fi3Gckw0R3/KkwBnMgNiKVyfCNp7Xr0GNwws36+uwA7Q2aIM5B/UyKeZ/c+yjAyF8Hm4
         InSCdk2BWLVVU85cv8XDe1BHz7WvN+jkSLA6wwQM4Xvir6EFCr0kQYYu7LIHN8e06trB
         4rXw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YDu+NEbK;
       spf=pass (google.com: domain of 3krfgxwwkacep7jfqlis7kbkdlldib.9lj@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3krfGXwwKACEP7JFQLIS7KBKDLLDIB.9LJ@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x74a.google.com (mail-qk1-x74a.google.com. [2607:f8b0:4864:20::74a])
        by gmr-mx.google.com with ESMTPS id y8si141598vko.4.2020.12.01.13.37.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Dec 2020 13:37:22 -0800 (PST)
Received-SPF: pass (google.com: domain of 3krfgxwwkacep7jfqlis7kbkdlldib.9lj@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) client-ip=2607:f8b0:4864:20::74a;
Received: by mail-qk1-x74a.google.com with SMTP id q206so2455744qka.14
        for <clang-built-linux@googlegroups.com>; Tue, 01 Dec 2020 13:37:22 -0800 (PST)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a0c:b508:: with SMTP id
 d8mr5050639qve.8.1606858642454; Tue, 01 Dec 2020 13:37:22 -0800 (PST)
Date: Tue,  1 Dec 2020 13:36:56 -0800
In-Reply-To: <20201201213707.541432-1-samitolvanen@google.com>
Message-Id: <20201201213707.541432-6-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201201213707.541432-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.29.2.576.ga3fc446d84-goog
Subject: [PATCH v8 05/16] kbuild: lto: merge module sections
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Will Deacon <will@kernel.org>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=YDu+NEbK;       spf=pass
 (google.com: domain of 3krfgxwwkacep7jfqlis7kbkdlldib.9lj@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3krfGXwwKACEP7JFQLIS7KBKDLLDIB.9LJ@flex--samitolvanen.bounces.google.com;
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
 scripts/module.lds.S | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/scripts/module.lds.S b/scripts/module.lds.S
index 69b9b71a6a47..18d5b8423635 100644
--- a/scripts/module.lds.S
+++ b/scripts/module.lds.S
@@ -23,6 +23,30 @@ SECTIONS {
 	.init_array		0 : ALIGN(8) { *(SORT(.init_array.*)) *(.init_array) }
 
 	__jump_table		0 : ALIGN(8) { KEEP(*(__jump_table)) }
+
+	__patchable_function_entries : { *(__patchable_function_entries) }
+
+	/*
+	 * With CONFIG_LTO_CLANG, LLD always enables -fdata-sections and
+	 * -ffunction-sections, which increases the size of the final module.
+	 * Merge the split sections in the final binary.
+	 */
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
 }
 
 /* bring in arch-specific sections */
-- 
2.29.2.576.ga3fc446d84-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201201213707.541432-6-samitolvanen%40google.com.
