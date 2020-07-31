Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBOWNSL4QKGQECPKB3QA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id B5ED2234E5A
	for <lists+clang-built-linux@lfdr.de>; Sat,  1 Aug 2020 01:18:19 +0200 (CEST)
Received: by mail-pl1-x63e.google.com with SMTP id k4sf23443616pll.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jul 2020 16:18:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596237498; cv=pass;
        d=google.com; s=arc-20160816;
        b=LSaC6rUv8j5eUq6wWx9gtEWcbNrptxcqjsKpLM6FOSkBm1XCKxX6krKVVYqSYWBT/r
         P1osTZh3Ic6gtKs2Ktx2gduSJ0RG2AARkxUPNhNXxwsi2T6oqGAgV9v7+QMQ59wW53S8
         XY15nPPfmfm4ct5rnPZ5RY2+3B+vbys68y3gAI3H+cKah8wRBj0zOV4EAziWqICi5vcM
         qbmLbF8JUFUJRf8TaFCKrOIyiN8ELC8eGmMrdYIQu06OHnx48tY9c2YY5nYiGVGSaq1U
         J/nbEfpvwaYwmVAXcyOSkLnvs7YwNmD5RsRvs726UnHyw1gCFVSRj0xUM7NFdd2Stf1i
         eBqA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=w98M8xh26qoY9+DCWHWDWbsl7Q2Op8N+/lbrEx/xVIY=;
        b=WKPdVuInsZHsePtZMtuqCUAcEZ0OH+wwXbWStdIuVe7lRqNAxdWywXJKUBbqRZi7G+
         wcTJGmJ8MFud3yl41ns2MQ0azj4igz/BIpfXr5x1JEK531vEd+0Lk5RRyKjH03/buVNI
         scWTu0O5YmhQAqxUrykmHzugOW/F6m29BOnlwETgbfHyJsjnJE7wdPQgj8ptyF/YAKU9
         9CY4DS64EYurYsrxOa2FKcrRLLFcQ4Ip1Ep9SRuumqGS1jfr75DkZKqZKhGxvEKF9Txt
         GsFl6vcNjLQOIg7VTOjRKCWu/9Xh9xISwat0IffUjCrhBjqM55PeAZHkbFB1WI9wtwxR
         WmUA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=PtKKgTcc;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=w98M8xh26qoY9+DCWHWDWbsl7Q2Op8N+/lbrEx/xVIY=;
        b=cO2Z+hdM449EgbRh/LlWC2APh5Bd5wmMzSht4RT6L6xkEZOt5MsDbUhlg9DV7x28A0
         TyexfBERS7SuK0H1eJyYCclgxudG5emJ/wYPsHyKw7iGT41Ls8FQEpJeB+MfiRtEQ580
         eVQbgbjE8ftsNeVTzPAk3OAifW4Qt8V8xjaXtzTM2VJ5v3n3Uvbo6k+cd/SWUGSi8vQL
         n0t8OHSVAnym42V5UBKD6xMS08pdanlLZW8dJASayyor+JKnvkGuVe0sWSXcR4/QW7zv
         H9fytd6hgkvZUHYB8wMoA+2YkZMSD1lumiPPU2Lwc0iwFm9j50qTXF5a6UerA6bfRn68
         vRtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=w98M8xh26qoY9+DCWHWDWbsl7Q2Op8N+/lbrEx/xVIY=;
        b=k1QqOc9l2HAcsjAMENOKrFg/muFutQswFv/FPTjrd8LPV7WbaWpOJeH85M42+D7l4P
         3YRxx6YQwzuSyC7GCg8NeoCb5I6ktS18HHMcK43/j7Sdx8cs+8ScuBBK2sD+xyG8D5DS
         wiOnNwAXn7F5+/1+2YtYJdZwnKHgoUC6Rw0W1NmXIwWfUeMK7aneuT6o6mboJ1HxjJdu
         krUvAszv1TZmjg2cTIrZgY6yNWXUk6faQLGkp7rXH2/lICT8uVEUrs3e8K4lDxd4tFW1
         VXhOIITj3TSC4G867o44XoUNRlx4JeDM+HaMUhj/8NNdComdNlw5drbny7uxqaGxzUEH
         GKuQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533M47wHZ6+hDCrLP1SrMSG5Rn4gHTXC9extCzuFtZZYDVIOgP+k
	Ex2bySeWRdlQbag21wHmV6s=
X-Google-Smtp-Source: ABdhPJw9J/mh8X592nyQbb1EF0Z2nIkjiItex3IMwxFboLtmL6TxZoDxCANQ8Ug/njKdupFGOR8XNA==
X-Received: by 2002:a63:7357:: with SMTP id d23mr5739172pgn.393.1596237498495;
        Fri, 31 Jul 2020 16:18:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:ab10:: with SMTP id p16ls3464074pff.3.gmail; Fri, 31 Jul
 2020 16:18:18 -0700 (PDT)
X-Received: by 2002:a62:647:: with SMTP id 68mr6005413pfg.45.1596237498115;
        Fri, 31 Jul 2020 16:18:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596237498; cv=none;
        d=google.com; s=arc-20160816;
        b=QqIiaEmXu7Zt0P1sYV9U3YcI1KnsrAO2NX4bazqYKCTMeMIMXWuuqROA8rfGfd9Wn3
         Hf8ThFX2Z8Zismm6f7M7ykpmWJnMaj4cOKyXXapyOsbwHEuCON4cK+9p61CQt7dsyF8t
         99EsPTXYoGYpMxjHpId2K9izYPyDI5TYLZ3FaA74iEuKNE/GZiiBvXEs8pdoLojzBGga
         Ddmwx7YViplcLis74j/dmgFLbYLCLyUsuZFL8hu6tDrDmHTX6/Jo/hDD/RJi5+0LdbAF
         EH0Vv7UFD7qdvoCkW1D67v9UF4KCH0vdid92XZ7258cniplG1HHhVnL/6akBaHMKOFMF
         Gmdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=FPxMtdaVEuf/TmmMX8wDVhETGtH9LgUyfSDjSNQd8LQ=;
        b=px0BCIggDm4TzXO9sadSw64ft8GTMjk1h8+mfAc32fWdbiR+BtM6Q1YRK6F/r7bJ94
         wGrBXs5Y61s1vThOOPnlo9naluhBgmFg1hFHmHlLw3Y+wLf8O2GWkcRLXmJPpUpQDsBE
         lPEF/4lw5gkDAD02l8Ndeib0yiWfuCzS5xRJRfmKNvWURqJQtskgN2X+MNEYPiKgKAUz
         lEL+OH8kv/tDADLP9mRbqoRSPgMOyikdvyzevP3zixw5QkHqztpzA+2UcVZvebeu0Vf8
         QJCCzonBD8UpbHoySFj6NreH3/Cagn4qRWXEkdSiklbt4QfejepU9aOLelY7l1FCO2uh
         Qoeg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=PtKKgTcc;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id v127si317609pfc.0.2020.07.31.16.18.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Jul 2020 16:18:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id k1so8072078pjt.5
        for <clang-built-linux@googlegroups.com>; Fri, 31 Jul 2020 16:18:18 -0700 (PDT)
X-Received: by 2002:a17:902:9a96:: with SMTP id w22mr5577756plp.172.1596237497869;
        Fri, 31 Jul 2020 16:18:17 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id t1sm11510899pgq.66.2020.07.31.16.18.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jul 2020 16:18:14 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Thomas Gleixner <tglx@linutronix.de>,
	Will Deacon <will@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
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
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	x86@kernel.org,
	clang-built-linux@googlegroups.com,
	linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 25/36] arm/build: Warn on orphan section placement
Date: Fri, 31 Jul 2020 16:08:09 -0700
Message-Id: <20200731230820.1742553-26-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200731230820.1742553-1-keescook@chromium.org>
References: <20200731230820.1742553-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=PtKKgTcc;       spf=pass
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

We don't want to depend on the linker's orphan section placement
heuristics as these can vary between linkers, and may change between
versions. All sections need to be explicitly handled in the linker
script.

Specifically, this would have made a recently fixed bug very obvious:

ld: warning: orphan section `.fixup' from `arch/arm/lib/copy_from_user.o' being placed in section `.fixup'

With all sections handled, enable orphan section warning.

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/arm/Makefile | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 59fde2d598d8..e414e3732b3a 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -16,6 +16,10 @@ LDFLAGS_vmlinux	+= --be8
 KBUILD_LDFLAGS_MODULE	+= --be8
 endif
 
+# We never want expected sections to be placed heuristically by the
+# linker. All sections should be explicitly named in the linker script.
+LDFLAGS_vmlinux += --orphan-handling=warn
+
 ifeq ($(CONFIG_ARM_MODULE_PLTS),y)
 KBUILD_LDS_MODULE	+= $(srctree)/arch/arm/kernel/module.lds
 endif
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200731230820.1742553-26-keescook%40chromium.org.
