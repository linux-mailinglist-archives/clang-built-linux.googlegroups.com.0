Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBXWMQD5AKGQERYT4QBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 84A8E24E137
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 21:54:07 +0200 (CEST)
Received: by mail-pl1-x639.google.com with SMTP id g17sf1702462plg.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 12:54:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598039646; cv=pass;
        d=google.com; s=arc-20160816;
        b=CU2WAKhQtPA3aOLHCRyiItMlKlm63NoGyPw0iPkidSrxe5THsjAndHyjh1PZRf7n5S
         gm5XdIcU0DiVwPF0wMvqyBOmI8UwwgOVpaVdlWgnJXrcQbsaqH23IU6YpqMvHES4HYB6
         n88reBcdlrcE9LZMHlOb63dU7Wu4JuvnksxIP53fSKXSVCb6SteSutelBs0r+OnIq9Lq
         30hEZi53BDFyR5oxtmVA9VI7h/G1Nj0iylJU9N4ExogpCkpptaodwQyYB/4FpDvr/s+w
         KWlV0fYW1WzwAYgaVX/GqwqC7DxGo9jcu5yuYVk3T6KB0DYY5HuvGuwGHCmhjcYdfHKw
         KX4Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=TWeGot4DiX0F3wf9vP8PgcNbW5RMyQkW+tu+6dPnUOc=;
        b=a72/yGqIU6zYDvq27zoQGvVBTwVO4pF6vPcIpY5rRDRyszFdGHhzn94onAAij6dBVR
         08HvG3NA1AWp32McgiHLy/UhCUDzcKIEgRbBLDAiXacH/HftxShudbuQevvwFJ7lyYHw
         jInbEmm9EZMWU99olIZkt+XWN1PJIGcoRkkhFIvu3BmuLvfGtay+U2GFn+hu5GvAdRO4
         WK83vjqOUxE0aJMDAa2cq8mHbCPiA9VP+ZVI5LI3bYJXvc0Y8TW7C9Cc9Sd6nQQuBkuh
         yOymbMKh5J/Ck2JckgoOMCJJgLIY21jlFmY+9cxXHrg8f+0Oawrb3f4eHxyiL3eyxiF7
         YYpg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=R1LdeZIF;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TWeGot4DiX0F3wf9vP8PgcNbW5RMyQkW+tu+6dPnUOc=;
        b=ToWXknHwIsIH8hV2WI/Jzd2qNv/ubC9uOdVtD+U9ZgiHagvt/hMUbMiOOns70fstyd
         I2TIOm7857M91dxYj/79sAMqRZMfRoq4UvcI60SGV7wsi7XOJ0KNUWxDj4m9aCmyxC83
         /JHjh9clwQNfuzscoLcQECjdL5ejCPICgvUGT0av1RwphW9dybftSAIgIBVGpTH1ngt0
         MY4hHlpjNNzmBewTkw+kl1i/5HGk/VIFEdwuPGL/62fh9XmlHA9qZ9b/IOj72Q5/OXL6
         NAxcaDaeBIGiXCoTcicY75jC1SC+h67wDWcNhu4Ryhx7rK1TgFUgkPLRR6/qLkdULL+4
         WyuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TWeGot4DiX0F3wf9vP8PgcNbW5RMyQkW+tu+6dPnUOc=;
        b=DD287DEGJOAPbiCMPqdCza6lEbU74yNHNR9wPM1NplV2yectQgkuO2Jq+sAVmDY58c
         NX1m/6G1CoejfOGIo2bxALAq9aDRz1dFLkAuhOrk3mQ2AnqybtGCn3PmWzgQKPrZUd1H
         08ipA2S5dQmcPBf5MyEvZOpeq/4f0czukD5KOV1LWJKJDg+N90VK4kb+jk0vU6T67hho
         Vmkg4WaSxDQwHFEWrq3bjYRikcduE1lUEdvVcZ0y8D4KnkC8B8Z1Byk9h+YDOrsoCC2r
         B9IVnJwYXCYLz3W2jNOIYx51GkHimcOrdGHbufO180B0LqI94TyAcmyoVtE0XUBL9GYV
         En6A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530d7r5E2Sd7+xsV5703DtX82f5v1Rx9sRs1B1DDJ47kjzNcjeOr
	63At1IyTxikB6zdo/qDt57g=
X-Google-Smtp-Source: ABdhPJwcIDInUcvLaSWpbudot5/U0b5EhjWNkHI9aa2HYZZPmz4XoelF0mMLR5nojesTpe6SuD9h8A==
X-Received: by 2002:a17:902:ab92:: with SMTP id f18mr3633431plr.12.1598039646215;
        Fri, 21 Aug 2020 12:54:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:6a8a:: with SMTP id n10ls1499781plk.10.gmail; Fri,
 21 Aug 2020 12:54:05 -0700 (PDT)
X-Received: by 2002:a17:902:d883:: with SMTP id b3mr3706349plz.154.1598039645718;
        Fri, 21 Aug 2020 12:54:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598039645; cv=none;
        d=google.com; s=arc-20160816;
        b=fKLh4RRignv+Hx1dl8k1h7Qs5vbpnkFQrMsLUCpgCRDwr9CGURCkiBLxd/1Tosgnpr
         NvVnfyu9YNV1C8A1GmJo9yOcC8t+RREIWbWyFjqSqnJKyRLLpyw6BoKzMjdEzOjZv1Ts
         I94yvCwRWG3j2JgmbR5lhj4uwUdtGqpgJ7ktIzaIPjH1MMp+DwpMMA6lNQA+XVwmVVY4
         MLGMsvep/NWEPagXo5cmYap3WJiH/KHvT6+OCuFILz2ewh5jKB5tstfdXtV9u5R9309B
         +N5RXFyq5NDm6RvaKMHuZ9AKA6CyIh9NXKtCOtwfjOLph/dJo7EEc/SOThB6BnYls51/
         p+qA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=SwQmKOlsNP/z38IYejjYj+yvvrS1Eywv52+2HVAlv9Q=;
        b=YY/KBnFswTrjtJ1JF+4EEjfwaYHF43akyT+0NRrBq0LJJfbWCjnFRUehVc7jqSk5x2
         tuFGTv+YivKSz+PwKazWNzIqk2DRSQVjM+ANWwuImW1vHKXj3ylrdXtFltmRLnsvnnHV
         fRpQOJGjWWjX+tPRX1L5mDRVLoJKGlwqlogGRqzdAlynk0ACxPEHrNP4FjfiTZPeNUAo
         fiJPbCpy7zOZUPM5ETFEkHaxwxAvsg0eSgscBPN/izOp94BbhJuw4g4JAXC4oIjP7jV0
         VvkgdpDiwifx1vtPTSvb5KzGmHOvmnhA4BXl/+ZxbsKKGEAuxxrRJS+hYWPMbU451+be
         q7Aw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=R1LdeZIF;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id jx18si166523pjb.1.2020.08.21.12.54.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Aug 2020 12:54:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id v16so1360489plo.1
        for <clang-built-linux@googlegroups.com>; Fri, 21 Aug 2020 12:54:05 -0700 (PDT)
X-Received: by 2002:a17:902:9a43:: with SMTP id x3mr3388759plv.31.1598039645460;
        Fri, 21 Aug 2020 12:54:05 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id z77sm3469389pfc.199.2020.08.21.12.54.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Aug 2020 12:54:02 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Ingo Molnar <mingo@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	Will Deacon <will@kernel.org>,
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
Subject: [PATCH v6 14/29] arm64/build: Warn on orphan section placement
Date: Fri, 21 Aug 2020 12:42:55 -0700
Message-Id: <20200821194310.3089815-15-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200821194310.3089815-1-keescook@chromium.org>
References: <20200821194310.3089815-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=R1LdeZIF;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643
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

We don't want to depend on the linker's orphan section placement
heuristics as these can vary between linkers, and may change between
versions. All sections need to be explicitly handled in the linker
script.

With all sections now handled, enable orphan section warnings.

Acked-by: Will Deacon <will@kernel.org>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/arm64/Makefile | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index 6de7f551b821..61a46f56ff33 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -29,6 +29,10 @@ LDFLAGS_vmlinux	+= --fix-cortex-a53-843419
   endif
 endif
 
+# We never want expected sections to be placed heuristically by the
+# linker. All sections should be explicitly named in the linker script.
+LDFLAGS_vmlinux += --orphan-handling=warn
+
 ifeq ($(CONFIG_ARM64_USE_LSE_ATOMICS), y)
   ifneq ($(CONFIG_ARM64_LSE_ATOMICS), y)
 $(warning LSE atomics not supported by binutils)
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200821194310.3089815-15-keescook%40chromium.org.
