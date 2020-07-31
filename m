Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB6WISL4QKGQE4JHRD3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id DC7D0234DF1
	for <lists+clang-built-linux@lfdr.de>; Sat,  1 Aug 2020 01:08:43 +0200 (CEST)
Received: by mail-qk1-x73d.google.com with SMTP id v188sf21855627qkb.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jul 2020 16:08:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596236923; cv=pass;
        d=google.com; s=arc-20160816;
        b=MVUBpje6G7zWR6AFt6JLUcJz5qj5aHvt8OgevVT8pikD/1BIILLD9jiJU9QwBm9LjX
         SoApsrFIXHcndPXNDDIpOUW33BwVnGI+ulT2MNGoikLiYLVYrxS+vElucd0u6sBM1SBe
         uXmXAwwgKIsPI0ueASk2Xp07wo8thMLbNJjLpd4vZJtEok2vrLP6aHbfD36WVjoLG/uw
         a1q9Gib24kYnon0Zs88k11LvZS462X/NULMpAxuU57jDi9kSE4G2Sguz1N2fGdLu9OjV
         luKnPTxvlbcWhdfglE4iZKNe6dUbkEwl6JwYJrXaMn9yvjCk8x7aB1f7p9fn2hyHpUa7
         NgCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=p8GYcJ2z35etUzCAiLlsoLeoASx/GGPEYyQtNMawnyE=;
        b=PnhdbqLyGkcVmMmhxFu7td5FrzFuD2icswgQkZMf6Q4Pn1OUQ6QSlnc/48BUB0XCsM
         ymEJ9L/O71wqsqyPZ84ZiuHbM6NRPsJExqcGiD4SglUTYMx8DRtGb1KEhINMQsFJ17ds
         RylHeKsp4SC+mmdo0ErqVhPd7up9nTWDiA+G3U+r/QFJR7MCHEqswZcRJKCoh/vgNTcW
         M3WsBhTXihInu2H07DGDCItCldpcSSX0rd0TWMjk1b+BN8T1ACFqyc7wVuMwWyJ1AQFG
         baioSWgIOim1yBp/nINAyDS5j6VbeMuhsT42Ys5awpHhKxYRHWGPetmGUOLBm5I9we2z
         tgLg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=UOmfMzCm;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p8GYcJ2z35etUzCAiLlsoLeoASx/GGPEYyQtNMawnyE=;
        b=Vxs9h+oFrCi7iF7JosL0b2eqAoSqmnd5qiw7si6goZqWVwk0uVxWx3QOOsYLTguzPL
         H1hx0p4WmAiwBit7sO/45KhJmjKZCACqDQ9xY65r+wSQB6sg0GzMmGVTncG98owtVfMw
         DmP4b6MdSl/F7jKWzeVfGRMMmS4sR9H4xREue5VBfyShyC4fLSvbDHEOR7u6IjRlANB6
         UnFFi9oKJe2JnXOGMtdtqKaBGmOcQLdLZfnkvkZLJmezeWA7/oh/EPXLqKmF9bpp5Z9V
         DJXwA7BTell+52yEj/P9AlUyaJKcygSrmgrUM+twPruJDb+yZmiDJpifpqDia40j922G
         wpBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p8GYcJ2z35etUzCAiLlsoLeoASx/GGPEYyQtNMawnyE=;
        b=n29B6uDcHP2OQw/2rIBDGmFWLhlunYeLRB5PMRq1tyBe/YCVSR+2SryY43BRK4Rwz/
         yw43oh3tflKiOVRP2JVwdrotFknkDKnKzocYOR/iucKQliRJ9frjFqK5SWCl4aq+FOaQ
         YmQT/B4yDD5TGBjD1l5OTtKQW6AB0PzUwdoeoUnx0xO1eQizP6B4VZBjPnjAz9rbaziS
         IfoJTyrtVeaElHdboOYE4JtxE2cDPVPkOAYeoskkf0lWHXCowPX52dUnfvJ00gT7k8/t
         uOx9/r49SHb/eUaH0CCuz9ShBHJzdL51cuvAhNSOFVIRrKAiQYojpmhsxcImeghe58Ov
         NZuQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532b54jgxtZ61fFWZ1puRc7O/kfgaO8Kh56577EYCtvJJBjIJwkL
	ecNID+5A9hnw4EGGeKoA+fc=
X-Google-Smtp-Source: ABdhPJxaQzJzZt+Mn0q8XgQ+345ki78zpIH4F/NznvCvHrZ6h4uEvhXe3PW54maHuH57KtBgIvKKbg==
X-Received: by 2002:ad4:41c9:: with SMTP id a9mr6208598qvq.171.1596236922838;
        Fri, 31 Jul 2020 16:08:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:ea09:: with SMTP id f9ls4930662qkg.1.gmail; Fri, 31 Jul
 2020 16:08:42 -0700 (PDT)
X-Received: by 2002:a05:620a:573:: with SMTP id p19mr6427757qkp.197.1596236922527;
        Fri, 31 Jul 2020 16:08:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596236922; cv=none;
        d=google.com; s=arc-20160816;
        b=AM3V578So79dDYz9sn7c9eXZwvpOy8KfS/dvxIfs5pKFPkfDGzkxq/Q/qmMKw7SPYO
         51ih7m/uHgoqXQCF5GWgtRlnsmb45PM8w8Axz34yeLLQVnWsJsOX3Jr9rw6vasm+DPnp
         Gdw9CUuvahhxDN62PEVBfzRT3wxnukIMJK4bXmTfsdhsLr1aHC9Dr0Xv4aBXH3+7iHYZ
         kTmA+WcBWQOq9LsyWUjx3BNl8RCCWQbiFQ5t0z+dIZoeenZkXkc6dZAyzGMhV+9vS2L7
         YgvTItVMgFLa1ehH56iFCwoUKNbB6vhGFCAYiuf0SG69/2kJcANIe86vBIx+gdAw5pqq
         HhHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=/xo3Q84YrxwUiWcBw2aOaAxjUU+KH/ct5i4ArRZb6NA=;
        b=M6nVGoFv7Sou6kRZzDial1D7jWa0tt584eYQeCDMbkEbNxX2fzFuo0i8/v+gcE9e37
         n3ezaUIang+yhNq5TQknuWp9rXR12kR/lDDnV5p00W0PKECzDGkG6dI+ieAF/TgbOMXf
         SHgBIHv0d9kq4I2/jgd6A/j4Z7P2QMvIk6HyND9h4oLvn+5EqNHLyFS6wbkgPuYmkvyI
         aDmONlyK+qPx9fBzE6QUneN6VdqPpRFJ2xRZC/xcxlxCH4RXPBCyaz4qK5JJpsA7RFmM
         WNroPuAphTeviEMc17Cy5s0KxhjDUpaYpBMAN2IA7UcOn96Y+hmGi3GruozEl27CnxCY
         +3pg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=UOmfMzCm;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id w195si483140qka.7.2020.07.31.16.08.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Jul 2020 16:08:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id k18so7952215pfp.7
        for <clang-built-linux@googlegroups.com>; Fri, 31 Jul 2020 16:08:42 -0700 (PDT)
X-Received: by 2002:a05:6a00:22c4:: with SMTP id f4mr5321141pfj.273.1596236921685;
        Fri, 31 Jul 2020 16:08:41 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id i13sm9909036pjd.33.2020.07.31.16.08.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jul 2020 16:08:36 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Thomas Gleixner <tglx@linutronix.de>,
	Will Deacon <will@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	Fangrui Song <maskray@google.com>,
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
Subject: [PATCH v5 12/36] vmlinux.lds.h: Add .symtab, .strtab, and .shstrtab to ELF_DETAILS
Date: Fri, 31 Jul 2020 16:07:56 -0700
Message-Id: <20200731230820.1742553-13-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200731230820.1742553-1-keescook@chromium.org>
References: <20200731230820.1742553-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=UOmfMzCm;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444
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

When linking vmlinux with LLD, the synthetic sections .symtab, .strtab,
and .shstrtab are listed as orphaned. Add them to the ELF_DETAILS section
so there will be no warnings when --orphan-handling=warn is used more
widely. (They are added above comment as it is the more common
order[1].)

ld.lld: warning: <internal>:(.symtab) is being placed in '.symtab'
ld.lld: warning: <internal>:(.shstrtab) is being placed in '.shstrtab'
ld.lld: warning: <internal>:(.strtab) is being placed in '.strtab'

[1] https://lore.kernel.org/lkml/20200622224928.o2a7jkq33guxfci4@google.com/

Reported-by: Fangrui Song <maskray@google.com>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 include/asm-generic/vmlinux.lds.h | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
index 22c9a68c02ae..2593957f6e8b 100644
--- a/include/asm-generic/vmlinux.lds.h
+++ b/include/asm-generic/vmlinux.lds.h
@@ -799,7 +799,10 @@
 
 /* Required sections not related to debugging. */
 #define ELF_DETAILS							\
-		.comment 0 : { *(.comment) }
+		.comment 0 : { *(.comment) }				\
+		.symtab 0 : { *(.symtab) }				\
+		.strtab 0 : { *(.strtab) }				\
+		.shstrtab 0 : { *(.shstrtab) }
 
 #ifdef CONFIG_GENERIC_BUG
 #define BUG_TABLE							\
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200731230820.1742553-13-keescook%40chromium.org.
