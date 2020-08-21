Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBHWIQD5AKGQEYLIKPYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id E77ED24E0D8
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 21:44:31 +0200 (CEST)
Received: by mail-pg1-x537.google.com with SMTP id y10sf1564206pgo.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 12:44:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598039070; cv=pass;
        d=google.com; s=arc-20160816;
        b=EYfsy4Swi7JK8E3ezgusvOeeQAhVCjp/NRrgc0iTv1b8l1/cs6htRQXVtqWKMIjZzm
         MZIr423IIu6BfYiCxyaUbPGYJ9Fwoodr1ZjmQZd2E/gwjdSziCduKdSaniyvJFFpdRmb
         +LTSF4ZBh64gZspQ0iPBRLNcxdlSsBCrmFnD+oDqjPD+nzoPcqmaCvpelsrE0kTR1KAW
         NF3iEsOSjh3nQNOOQL/fBliEU86NzygJW9DA0jdRXYG/gDPVuulwQIJiLnlbOrMLreSZ
         m5jSj7AvmawvuauTUHei1FqxH5a3RXwoAj6P/lJ4N3aLh+KW4tsTllAgJaLkGlQtt53I
         726g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=c6DUsDLRzVJxJImT+eUGtkvPla5bmPsV06xuOojnGXQ=;
        b=Wj/UH1ngzMJFmFPRlTrqQSdKybQIx6MoRyivYsibAreEwTxbBIYuZ6YNucEb6nk9aA
         s4wv1N2YeTvCQLg7n0WzRvEwctWOnB2yEZedZsYDIWZyr5h5TIlNVm9lhUc7m0HP4cYo
         VwX+yx1jhxEdpT1ShuzxGREN/YJvjy07OrwaAZRSNU6xJku192m0E4Vl4GCWkKLzjUAb
         0XAL0SKeQTmNpDEIB4w74BHxmIiV4qR0urCNuzUywaMzAfrULwpX3K0NzJnt63V3tOL3
         dVSd9UzsZgOaoe0kEdTkOR8dg1WVfcyZEQ8D41iS87IrJrP9Hg+bm6/aOQpLAHhd7Sfj
         dBWw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="cEhj/1dX";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=c6DUsDLRzVJxJImT+eUGtkvPla5bmPsV06xuOojnGXQ=;
        b=nLVhP55cefIFxQnZtMNWbuUKC7Ju0DvrwYsTwejmFXZq3UOtzm5rJASWZSa6RwSUb2
         UXTWFtZJBd/MlSvpYNqrOqLtH6PjZCUyhTtjBIuWE6F9Wn8F3eJUqh2FZOr/Yi2rxI8x
         gEAMJahJzFzblKLzjBF134nCiQVBdBSteGAhwP6EYwM4bHP7C/aPaasIvmDPR1hHmoV5
         h6KuIJMrjCytmVh/p8BHQv18oVYDEePzKKCe2u9rZ1QJd+ex6ZyFB1dAt/Nbr3V1S+4c
         7cWgwTsF67Qc2B5tuErt9+Sn7jNTDA9tTZJklw/3q81sQ2T9o6OyvtxZXv9J01i9Z223
         MdPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=c6DUsDLRzVJxJImT+eUGtkvPla5bmPsV06xuOojnGXQ=;
        b=Ga2iCnTeZ0LgHtSYtBaTffeRcM0HqNmyN/j+aIyC7+a27eBOVvwHrJz2vzesbpM4U/
         /w4/rGUKYvhuRh/NlqjXZQOfWhGUP31fpH+IQQ30ekjS3yblXZlUYOs9gv6lSa22iBs8
         uyKt4XW+6/nugM5XHm3zBZdi9fVqDNUrppMpNg7ZGy+uI/sbn41MHaW5dm68H7Gh69BT
         qQRvTw/bFKwhp2iFYo1fxO21uS5LKYF+wWQkyeLrLMGaFQ+wUoC67Ai5HL2LLvHNxmKz
         zUp54ytIBMc/9YfenorzsDjssXqOYoeJ3fAre1Q/mlF03CZ3N7fVyw9FBpUMHybnn/O/
         7F8g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530yFKiUM5zVPfbGkI19n+ddWhNVquT6r/KbZ4IQymE5migv+Trd
	e2ATR8tsqF1FneOqByiKXAE=
X-Google-Smtp-Source: ABdhPJxMSeaA+ha8IMieWrfifAUDj0TWl//mh+Ed9iWMjIBV1v/FDfyiIrMS5gHyaesiugvricVAWg==
X-Received: by 2002:a62:ee06:: with SMTP id e6mr3602456pfi.313.1598039070668;
        Fri, 21 Aug 2020 12:44:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:c3d2:: with SMTP id j18ls1497373plj.7.gmail; Fri, 21
 Aug 2020 12:44:30 -0700 (PDT)
X-Received: by 2002:a17:902:7405:: with SMTP id g5mr3623117pll.325.1598039070214;
        Fri, 21 Aug 2020 12:44:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598039070; cv=none;
        d=google.com; s=arc-20160816;
        b=mxLTQ04EzTveEGcXj+FcYeKD/evCA1HA/d4z93L0neq9Cl4LCcry9+dKwhHM8PzzDt
         pbOLwWHO1uDHyHszcHuEQy3Do4GsQYUkMltse4MRuBxf1ClfMmEVMSeeEn1ZUuSN65Lb
         waWhUsN0ttnlJ6EDkrhc+jztzDPLkUy0Z7H/H/WEAptsXFTBAdtLs3zlIxHSdnFRdqvz
         msoPb+H4nHM7Kb76UBcxqX5GD76MH5Xi1lA2o9jBVlBf9wDFBghFimWI8hR51uQ5YSpa
         84TKDThyBjKFV0BkUOSNP21pROQmtX22G9/hpQ1hUEBZB1xQ+e4JRGmC6WW7smmgaBvQ
         2ZHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Iyu1hqfWZF/Rprc+orVpuMlUtMs4mrBdsJ6TcxbP7dg=;
        b=mleoqKQx7lGV8Ot8C2GTgKTlNoSyWnZCv4xiA7CSFC/COUsJekrVcBu1IJXfMern5y
         EykGKuXNcS0re00wctXK1ha1z4kTALC2MBxKgE6rNIfQhuFgHsxqfiZ26sEiYLmsykg6
         5hCs4S9BIOdaIBHZMje2OkL+lmf3u6POAncJo83KKpfTGwPGnGs/5eQwhXufv3OCAlR9
         wJqYXghLK44CDzzOR2SbFFcPFnu7FPFxuFrSxf7IhHhAHgy0VbpMdUEoc64u0A1jIlHb
         KvXy3xsanmwlRxdzCeobmu7oT6N8kQOpH1dvwr5gsUDOLn1qSu4YlbljZfXjzDsJzBoO
         tX5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="cEhj/1dX";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id q137si169563pfc.4.2020.08.21.12.44.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Aug 2020 12:44:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id nv17so1261855pjb.3
        for <clang-built-linux@googlegroups.com>; Fri, 21 Aug 2020 12:44:30 -0700 (PDT)
X-Received: by 2002:a17:90a:9d83:: with SMTP id k3mr3788859pjp.19.1598039070005;
        Fri, 21 Aug 2020 12:44:30 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id z9sm3224171pfn.59.2020.08.21.12.44.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Aug 2020 12:44:25 -0700 (PDT)
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
Subject: [PATCH v6 12/29] arm64/build: Add missing DWARF sections
Date: Fri, 21 Aug 2020 12:42:53 -0700
Message-Id: <20200821194310.3089815-13-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200821194310.3089815-1-keescook@chromium.org>
References: <20200821194310.3089815-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="cEhj/1dX";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042
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

Explicitly include DWARF sections when they're present in the build.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/arm64/kernel/vmlinux.lds.S | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/kernel/vmlinux.lds.S b/arch/arm64/kernel/vmlinux.lds.S
index 082e9efa2b43..16eb2ef806cd 100644
--- a/arch/arm64/kernel/vmlinux.lds.S
+++ b/arch/arm64/kernel/vmlinux.lds.S
@@ -239,6 +239,7 @@ SECTIONS
 	_end = .;
 
 	STABS_DEBUG
+	DWARF_DEBUG
 	ELF_DETAILS
 
 	HEAD_SYMBOLS
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200821194310.3089815-13-keescook%40chromium.org.
