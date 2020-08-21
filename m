Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBWGMQD5AKGQEAJBHGPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A9FD24E12E
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 21:54:02 +0200 (CEST)
Received: by mail-pf1-x43d.google.com with SMTP id 4sf1942793pfd.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 12:54:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598039641; cv=pass;
        d=google.com; s=arc-20160816;
        b=U1xHQnaHxEsHTpVgJv/mvqYZfnJu/bAYC8zYO035YmpFw8GK4KfaXx40gnLDIH35Wy
         4hijVHMZqMLwPuBdqrYctXyeIAnwzqBuw62g4+3A17wTD5x8RJvi+YA0SmDnJmBm6WtJ
         ZWF8tbwEnnJVFyTBWfNbur+gMa11MqkExFwxS+48ywFqqlYKTtd3RvXL6tjs1E8VNj8/
         h8OR6TiYcyGk0KyYSGgurvpQUVMaDejUsrdzlf3ejFpTEwxgOWMfC+lrDWlWQxvZn8Gw
         bb7e1RKDC2EM6RrYC7YtZ8Q4LSvGkAb6I7mdNcQxaj/cteD8osRx70xtq5ywxdpPhLW/
         QX6A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=y8GdFxKz4k411/UbD0e5CWDpZTJO97K4pgbSuiJB5WU=;
        b=Peg7P4S6NNDS3yiWtFxa0yqODix7Yu34ew9ZNJFzQH5GVr5kpQ/gzf8mBtVzCW2yQQ
         7GlAdoW+wnSlKdxsdmGzA0WugKinkFJNI6xeYVEbBxcYyWpDlz4phPWcwCqyW05p92lv
         39UrkPNFs2cLtK42UcwM8o1rmIXvWNVUzekX/ibg1AlhssRYcpM0Di2CxJaJB3+8XMJN
         XjwQobNl9qQIEX1MneO2fRrNAztldWpu5NqtItjZ7CAAKVFrrh8/230bHkx3oK4URQ3B
         /CJsttgoJrpE8Os4GeXNExChRd8NkGklwINlIOkTGC6yNucRR7eNZVrzAfT7LbZyfoAR
         7pFQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=TOCS9QXF;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=y8GdFxKz4k411/UbD0e5CWDpZTJO97K4pgbSuiJB5WU=;
        b=Prd6HsKrH945tIhlKM2PryqHWt99VOeDr+hrB6uQL2SXTQUfgS7aItazog+PJEkRGM
         +OvoaitWXg+WQNEy/HLOc38dDnuYd7pac1Or3BQsailEsZI+WL2siWQHEDu+xBYjYSQw
         u1bMNFWRvtINAwE/TpHY0lF7D/RARo/tNcSnCszrLAdGcoqlVMIYBKWSWzrj5KAMCmoq
         pENCufWZET0qcgWCZZobvicL1uZ+K0/xosU++x/W6bPbPJbpermYj9Su4fOrBeJ7/KaE
         UePPP/zQ15HyfzZHfK6Whp6dJjuXuvLkSkLWpA7lv90grWbJtewy8XfHG2BWWvKhg8mf
         vJCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=y8GdFxKz4k411/UbD0e5CWDpZTJO97K4pgbSuiJB5WU=;
        b=HJD+2Hd97vpmuOU9JC1SGTQkRKHT/YyipzuvLM6WNnns8EGBGnfghw+mR2cfkLG8Wm
         ZOCNhnHp02s4o1E8FGWuFD/fYUtZebVAOpLB9tGxk5v7yYFOsLSLSV1mw4ktoIKd8Txj
         +VlNQlifRCpUJvUIHlELUV8R95UfvDCX31EnRQOxT3hkkfzAH9x7i5tnPmTxnYLhGgml
         Z5UJNNmOH08RzI+3PSNDHNynGLZKKYvelUaQzHak/ixnTFpgcgA+nI9xa4KsFHwPLhFe
         XvjtTVb0XGYNpX3E9gSxJua15uyttpj/NKPxquMpmENuOZS1mLmJph5AzenkPChjRh3V
         M9WA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533bt8FeByDrNcNlrIdwtKVN0GXjl/YTdtK1DdGq/04UG3MeczW0
	43gAxOrC5fLhZ1ttrKAouI0=
X-Google-Smtp-Source: ABdhPJxSgZW5bylUI9ZKB3jeAb0pedHyKXFft0aK5vxqnqu1/sen3dsjoHlZYTx/sz1Qw6nR6Gamxw==
X-Received: by 2002:a17:902:9307:: with SMTP id bc7mr3718097plb.213.1598039640836;
        Fri, 21 Aug 2020 12:54:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b781:: with SMTP id e1ls1514634pls.1.gmail; Fri, 21
 Aug 2020 12:54:00 -0700 (PDT)
X-Received: by 2002:a17:90b:1093:: with SMTP id gj19mr3813988pjb.149.1598039640350;
        Fri, 21 Aug 2020 12:54:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598039640; cv=none;
        d=google.com; s=arc-20160816;
        b=u+fE93twswyTdtcenxQEgcz0gg1623RI9Tzh3tcMpg3VenBEj2sY2cUnhtj2XZzVGr
         YtUwSNgb0xajaMXZU+Umx+yG/g3pH1RC5Mq8kx1BnzVsF5E3SPWapweKivvKiCTiC7Qd
         3p41MDkZOdz9xgE5k3uFOYaC/WUn3YuFnIAR17miKfvH5BkALEiA3MluFBvMCCMAjhgc
         hoDP3+ariczU76HHJNIm7Gw3Es1pdi89zeUvpH5LURhNzePZB5PHIs46PA8nT6+jslFm
         ECWzU6f44YoR8CpalfvvX7SUuRpps4dFjkxUQ48cm9oTCT1DEpa26/f+yFjpmPHe1//p
         17Rw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=DLGrXrQrOnwocgl0d2lDlCmyCMk0LzJNzAhGu1QupvY=;
        b=tj6n4icIkERO8vbnk4ONPb7N9+g3BduLyWMfNPEILro2mBIG0eB5Fn3va6GFL7/UIb
         40v7tQ+9botz44xtIMSEhY/qqxSEhjpHm4m+G95zz3vVkhewp2nw3H2PHnW3bfbO5vAu
         HbnBg9mJs8Id0scCzpRgi/jPIOul7e5H0rngS6/5g7XBx/tKlb3kbAMmXxs+5R++KY9l
         zl8bVq8mEJ0qNNz53opgp6HetXbVKmKcDJ4FptMLfzobHLhF7/Dkm3AInzsa63FJ+uVV
         A4wr3HhJL65dSfAjQeELg3phP2XV/vYfx2fYhF3rjkpvQXG3IOhknh5PLRde+h+csmjd
         um+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=TOCS9QXF;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id c10si136055pll.1.2020.08.21.12.54.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Aug 2020 12:54:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id q3so34985pls.11
        for <clang-built-linux@googlegroups.com>; Fri, 21 Aug 2020 12:54:00 -0700 (PDT)
X-Received: by 2002:a17:902:c211:: with SMTP id 17mr2292148pll.343.1598039640054;
        Fri, 21 Aug 2020 12:54:00 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id x26sm3139562pfn.218.2020.08.21.12.53.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Aug 2020 12:53:59 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Ingo Molnar <mingo@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>,
	Borislav Petkov <bp@suse.de>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	x86@kernel.org,
	clang-built-linux@googlegroups.com,
	linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v6 28/29] x86/boot/compressed: Add missing debugging sections to output
Date: Fri, 21 Aug 2020 12:43:09 -0700
Message-Id: <20200821194310.3089815-29-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200821194310.3089815-1-keescook@chromium.org>
References: <20200821194310.3089815-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=TOCS9QXF;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

Include the missing DWARF and STABS sections in the compressed image,
when they are present.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/x86/boot/compressed/vmlinux.lds.S | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/x86/boot/compressed/vmlinux.lds.S b/arch/x86/boot/compressed/vmlinux.lds.S
index 02f6feb0e55b..112b2375d021 100644
--- a/arch/x86/boot/compressed/vmlinux.lds.S
+++ b/arch/x86/boot/compressed/vmlinux.lds.S
@@ -69,6 +69,8 @@ SECTIONS
 	. = ALIGN(PAGE_SIZE);	/* keep ZO size page aligned */
 	_end = .;
 
+	STABS_DEBUG
+	DWARF_DEBUG
 	ELF_DETAILS
 
 	DISCARDS
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200821194310.3089815-29-keescook%40chromium.org.
