Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBBWN335QKGQEKMZ2UCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc40.google.com (mail-oo1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id 49E59281E16
	for <lists+clang-built-linux@lfdr.de>; Sat,  3 Oct 2020 00:15:35 +0200 (CEST)
Received: by mail-oo1-xc40.google.com with SMTP id h23sf1363051oof.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 02 Oct 2020 15:15:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601676934; cv=pass;
        d=google.com; s=arc-20160816;
        b=MG/Hk7wEN4PDTDyERAcdI3HsTqjkW4SfJdFr80/GSjYrBPjpmG2ru2VLoGXaKyYeb4
         5yY61fxwl+A9gFV52QFSk4EQb6Lba1oz7LAyqRYkD6Jm0DpKkqhsQjNNP/T3w+wFs1Fq
         BMWq8j6b9YfGx2CE0apn3M8M8U27/Mw1ZJ78snLpqJv2biH3TY6KgR3na2XZ8W3TkMLW
         LqqIXy6zHDR6t9BxYyLNjEtVIWhCXc8LbKb//XAoMXToyWPgYW4gIN9LVnBk/bn4w5y8
         w8No/bfuSXOwXLtQkDoI4IUFQFJsaUG+ztjunLZyOTLGhLcvili+UTW/8nYpJ8k2X6OF
         wZvQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=QXO4jLeuqeeGctWq9JDt1HSwE6OUMCPcRsG8ph//RX8=;
        b=eSZpXvyaUfkDxuz7OSY3/IyrfnDWzFicYQZucKmno+uQ3kztBbCqlcZd7+8euPDlmr
         VRqAkkKmm7PzNpx40+sZo68ezFHKfp7M/h7PtLSACiWJDkacXRbSWi435hpPvqmJMQox
         3Xc6aXf/H2Hq6nRBtppVUK0nQqpbliXNR3dNxbldXjIX5PYsLLSu6P9Py7aRIDbPQK9M
         6c3YIBRUWpFokWhTv/u8OeDW8vc+BP5hrQmwC1nFr9dIAzNm79bPkDsNFn197EhZFAB6
         FniERSiUqqFd5WiZtjj7o4T/YnXOucBxP9AMxhVV5Urpi/Srrlb5i+9leT6OQHPQWOVK
         0HxA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=DhD8t5kr;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QXO4jLeuqeeGctWq9JDt1HSwE6OUMCPcRsG8ph//RX8=;
        b=Igr/iQ1Pit9EPQeOJdmJJ1quwhf+N+7ZxhIaV+bUABd9uJoVFtdgTDXyHBIBQmOHVy
         +sPNXocXNOre38UgQmh4GHjxol2Suw4LWuZxUCs/A/MS71kxi/mH7MyvwJXIU8mlwMSn
         1R3NCwGmh6SCxppACu6AnfuaeWBeBIl4Tmg5Cbt9Q0ur4farwXlj33BsHvxaNyzsE/nE
         9H+/yh5OH5BbmEmbATCoqvUsj8ziSHB2VQyroAQoXEhcRSQ6NR1RdJUJxcNvgxBghctx
         HLO574PjmDzKuDkvPui+n9rxhmi1vOHmzwGjP1EV+wX72xZCzGt8rvaiwt4wXSgJnDf3
         2dmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QXO4jLeuqeeGctWq9JDt1HSwE6OUMCPcRsG8ph//RX8=;
        b=I2PvCQZY8YnleEVV5HJciWoTDV7viIsakUIpAREA/0kKiarJQdGnrNxzQ9pHHavhec
         j3DR+JlqtSgtY3EAM9pYVFpUJ7AAams7VjkHMD6HOoE7q0HEpeM7oAumNFtGQ3y+QxGb
         uYLqywxBSfOn6G9Hx1DjphrScrFp6+pWyxtXI3PL3kmEsSoYRQojJ1jgeRnT6zmt9HLv
         p91OYjqM2ruDe2VlFrDKNRcgxhfgEPFGaxdsC6viuZTJencz5jw+xWRrHrIL6DdqMCTF
         575ct+TtjuM8Oe0x+7eq1DCu8bDIHXo28kchgtm6Azn/YDGpMocCCl3lIe0vcfzNNm6C
         talw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531rnhk2HvyC9+nerc1ZCXL7NEEFhJ1khFCIcCaGf6ezdYwPYRyg
	RJp4lH7MphWUUKBwkrlfGLo=
X-Google-Smtp-Source: ABdhPJy5kLismm8p5Ez9ccFW0iAQ+AkEILIZaZAnYBI5D2bzk/RjdMSzkR6oRzEIzWY1Il4aXR+StA==
X-Received: by 2002:a05:6830:196:: with SMTP id q22mr3065348ota.97.1601676934268;
        Fri, 02 Oct 2020 15:15:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:bb81:: with SMTP id h1ls210849oop.10.gmail; Fri, 02 Oct
 2020 15:15:33 -0700 (PDT)
X-Received: by 2002:a4a:d38c:: with SMTP id i12mr3461919oos.81.1601676933917;
        Fri, 02 Oct 2020 15:15:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601676933; cv=none;
        d=google.com; s=arc-20160816;
        b=K7na5a8yfhu2N7z/Xr1t1zxiKiLN9Lv7hdmc6Zg5et60Yn0nyT7M9bh7xuAmMhNrNr
         PqXvIktXTKXI6CJYK5PXijrwmUPEQ/FONcOJDvzb39wmevgjNAAtlgff8vTy80mldzwm
         W8iabNTtso1RNTjiJTqY6XiD+P9KBZJ25xz643LICLsjyfMOrUF4rJLN2Ynlyihh8nen
         X25FsUf3xbI1GI2P9ocFiN0tIwikXqeecAcjVF3NTy+wIBWVzA/n/U2ihCflcknxTHaO
         uXaBdueq9603e90qrvyNXf30EngUJeoA1qhieY3Fzl7pypDs6i/s52zTsnfSMNZIJMdb
         aaMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=/J1gHtjcOOv6Rq1ls75T0pkphOgixxdtxsRzhxRApII=;
        b=eXAPI3cmHbDYb9dCP8A+iru9QhHzBY+YDTxk3lT5kR/d+im3ew2p6pEoApA2BVK+Z+
         yLqvsLEpHYjEC7oyNaiOxUZRcZE5gnnb59N9VmT3afCASwUU/1MPr1pDZYrSXe3vhX3w
         ITW1VIZp+MgAYOpcKt0oRzq5JfdbnUe+h4EWwJ/u1iroYzyRI/fUZPnuWIU+GpDP/N92
         ACfoY2t6MRgC/F7P+gxjDvrhH3ff5v/XKpPe/2fbU2J068Qa8IiIE/5OxKD6NBSZzb0u
         vkDExXOedHkVQBrjNh9glplp/oi0ETjNdHNV3rI60RbpyFKaY9QFMMTStBDEjKTc4Yub
         EYAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=DhD8t5kr;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id b12si151386ots.3.2020.10.02.15.15.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Oct 2020 15:15:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id j8so50159pjy.5
        for <clang-built-linux@googlegroups.com>; Fri, 02 Oct 2020 15:15:33 -0700 (PDT)
X-Received: by 2002:a17:90a:800c:: with SMTP id b12mr4837503pjn.179.1601676933444;
        Fri, 02 Oct 2020 15:15:33 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id bt13sm2640065pjb.23.2020.10.02.15.15.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Oct 2020 15:15:29 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Kees Cook <keescook@chromium.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Ard Biesheuvel <ardb@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Marco Elver <elver@google.com>,
	Randy Dunlap <rdunlap@infradead.org>,
	Dmitry Vyukov <dvyukov@google.com>,
	George Popescu <georgepope@android.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Peter Oberparleiter <oberpar@linux.ibm.com>,
	Andrey Ryabinin <aryabinin@virtuozzo.com>,
	clang-built-linux@googlegroups.com,
	linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 4/4] ubsan: Disable UBSAN_TRAP for all*config
Date: Fri,  2 Oct 2020 15:15:27 -0700
Message-Id: <20201002221527.177500-5-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201002221527.177500-1-keescook@chromium.org>
References: <20201002221527.177500-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=DhD8t5kr;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1043
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

Doing all*config builds attempts build as much as possible. UBSAN_TRAP
effectively short-circuits lib/usban.c, so it should be disabled for
COMPILE_TEST so that the lib/ubsan.c code gets built.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 lib/Kconfig.ubsan | 1 +
 1 file changed, 1 insertion(+)

diff --git a/lib/Kconfig.ubsan b/lib/Kconfig.ubsan
index 1fc07f936e06..b5b9da0b635a 100644
--- a/lib/Kconfig.ubsan
+++ b/lib/Kconfig.ubsan
@@ -14,6 +14,7 @@ if UBSAN
 
 config UBSAN_TRAP
 	bool "On Sanitizer warnings, abort the running kernel code"
+	depends on !COMPILE_TEST
 	depends on $(cc-option, -fsanitize-undefined-trap-on-error)
 	help
 	  Building kernels with Sanitizer features enabled tends to grow
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201002221527.177500-5-keescook%40chromium.org.
