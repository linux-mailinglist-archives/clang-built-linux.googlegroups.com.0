Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB5WISL4QKGQE34XNOOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E7E1234DE7
	for <lists+clang-built-linux@lfdr.de>; Sat,  1 Aug 2020 01:08:39 +0200 (CEST)
Received: by mail-qk1-x737.google.com with SMTP id 1sf8582174qki.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jul 2020 16:08:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596236918; cv=pass;
        d=google.com; s=arc-20160816;
        b=jtuHL2H+cmvwZBiD/nfq/ub13vC8ndf0PY0YD7UJTnpu1FImLyxmMv99Waav+j67vw
         J++400Z6h8SbHQA+hSzEXjof+Urf1lNIJsDVAHj8TkWlkWG4CuUj9MxmiofZqyypohed
         ZCDSFAkF1t4curKzADO4MpHM1d+gVEUA7WrdtlK9Rf4k/eMmgDydDC+MCF9+HhqiIGjc
         kcN0x33AuSoSnIq+eevFdY4gNj7JmEej93kdHl/nqvFPP/aKpmY83OC2yvMeIxbTQSoC
         pFMbZSK5nAbt6XMsLcSkNDkYd7fijXBwhlEQnqYy5na03m6CAHgxiTeXBGceaae6NK7E
         C8sw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=wm2XQ/W/W8Xnkoad9MIoIh+zj4GpCrwTirYKAWdZ3hg=;
        b=GLilv3D/soQA0ftrGgKYr0PorKq8K1/8BqH8K6OlgX7aoHRyxxBq+fonVp4iXU42lD
         1BRRwYH+z1NarTP138wmzjLtyi6Bvun00CgLeztigCDW5kV/AoYDTjMvX95PrRvRhWLY
         93XiXsI/z4yA81ypU/n8rYRbrcWJ2F7kTTcGlxXIO0J9966Ug7sfiB3vRUsOXbpAMUaL
         AZg7ZW2Fyu3ZVrUbCeiWziq+bpJ8R6JHlGAjgzu1batlE/O5kM8o0f6UEW2JVjb2/67t
         E5Y7ZTbZooPzwRQT5dr74cT9EgUJOyLlX0AQBDMDVhvllnauXet04LkjI4mUyCgPHoJJ
         M0bA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=De36nKOt;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wm2XQ/W/W8Xnkoad9MIoIh+zj4GpCrwTirYKAWdZ3hg=;
        b=FbD1eCl9aFjM3oTZ7bwu9kWJEkCF+c2FeFqP1Cdnu1Rl0PW3hYsWgWLDAgtRJuoBV4
         8K5Y5ztHC0OWZbWqs1t7WFfhS6qIydDChH6vKMlxqDGHVahpzF1nDl/0RaNc70bIEcV4
         guyPgWhbECLxmHexqchQ+yreyPpz50D1y9N4S+uV1pEQa15MAJcMAUpVWwAYk60lVgIC
         KItBIEE7OgfFXMieTF2HsIFLLDScQUooiihSccmHKKUYGipa0jn5kc8ygS+x7I3WNllH
         m9RgNqqrxo+zp7MzBHpyKG8SdGEJRH6VYajj4qosRlcJXl6ttZpCawOt+MUKWnALDJeo
         pcQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wm2XQ/W/W8Xnkoad9MIoIh+zj4GpCrwTirYKAWdZ3hg=;
        b=UQ7HFXCkP21JdjkmpVbx80v3xa9n6yG60FDbo2NYX0/MMddiYlMH7IGhYa0MvZNMmO
         MKorr66s0E+G/6MCaj0o2YLi8vghmvnqCRYLFzmgJAlOL36rRblj06PmjdJhXGNO52tM
         O1t4U2kZc7+w23cz7DpfRmt+kPsCPdTddXWlnz2t3XjROMafQqAq59hVn6Raj0Z2zPvJ
         PnpZKDHaJIFFpSdZNvCwOWjf6wphwIT4iEDrmeGHT88L6nPxLbmVh1GEvZv9RZEImstZ
         9iSt822AmUgRnhE9002E0qNv8rXerxR6J5Ide5vStXJFE4+GD4XO0V4S7dv+4hfBheW7
         sebA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530taWNYERvZtWSRlzfs+p1mhxfzm7XL2kauodrm4FM2aVvfyKT3
	DCaZZDTALECQD5sW1QZ8gZU=
X-Google-Smtp-Source: ABdhPJxiJQ6RsVCrxbQYojXfYGqvnZqq09N2tXp2IVoUYSVpPIrVIJdxbDuFJixmppv9Xw+uSwp39w==
X-Received: by 2002:ac8:1ca:: with SMTP id b10mr6160229qtg.114.1596236918097;
        Fri, 31 Jul 2020 16:08:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:a2c2:: with SMTP id l185ls1562755qke.9.gmail; Fri, 31
 Jul 2020 16:08:37 -0700 (PDT)
X-Received: by 2002:ae9:f504:: with SMTP id o4mr6576377qkg.40.1596236917713;
        Fri, 31 Jul 2020 16:08:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596236917; cv=none;
        d=google.com; s=arc-20160816;
        b=XbTCobSDIFhjgwGK6ZSDC3adM3xiofJCoUebQt/oRHwvwHHKWMOy96xKkTTkv8VO3J
         KUrcoeQKV4PVeeh3qpqRrGlCdez9MPQbPCkmSZ9wuM1uFFnFvUTQPSuiJp9TGFaUEwCG
         1hnPjVBoCI7OoEb+D2W54OPW3qCju/95uMfmaranF3vfjPu9gnGKHDwsaOFTjebQRzNA
         i/8uS5MGyG6cfhX5qDW8pOZhoguE8JFeanhBCYZBuQ54q7IdSYbsSCLAWg6betdF79eA
         sUeUAWeDdklNzmrI6gZ2r8qjEzpCAlS41UZZ7LX1MitHxDtW8WfJpj6bhyp/6B1Vk/ar
         jT3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=trKW+y6QNGDib0LNTvVtHw5m6UTBgmGvLbmxtpBgaL0=;
        b=VWzX4lmH3I+jguN99kvZUQDy987cosYRwT0nsDv/3fSI2CAAzMMg2qRfpquIeNciGK
         ngySATFQmgR1uxGgxG0R2vMGe2oyzmxP7TQ+Z+nhy2WIOz7mJdx2GQF/t473VCGqBQyd
         Vb8mUuBesQKHM3JKHmnoed0WdVArM7pdkq3SdkwLWlL9s5ciaViBoCXnfw0cIKFeIN6j
         14ZSjQcs4F3awKe8Uts2DAS6djjXrT55jO0AGOP2B5iIkuojkSm+0GKY9A0GooKqBn2g
         C6wGJs0rRdUBpjt1IehzVSxHF9XU554aHA/CAcDwN2JYAkQJPSt+jgcCZSTvrJCKPJsU
         VS7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=De36nKOt;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id z19si442699qkz.2.2020.07.31.16.08.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Jul 2020 16:08:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id j20so15178954pfe.5
        for <clang-built-linux@googlegroups.com>; Fri, 31 Jul 2020 16:08:37 -0700 (PDT)
X-Received: by 2002:a05:6a00:2247:: with SMTP id i7mr5645713pfu.217.1596236917400;
        Fri, 31 Jul 2020 16:08:37 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id p9sm11680681pgc.77.2020.07.31.16.08.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jul 2020 16:08:35 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Thomas Gleixner <tglx@linutronix.de>,
	Will Deacon <will@kernel.org>
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
Subject: [PATCH v5 08/36] vmlinux.lds.h: Create COMMON_DISCARDS
Date: Fri, 31 Jul 2020 16:07:52 -0700
Message-Id: <20200731230820.1742553-9-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200731230820.1742553-1-keescook@chromium.org>
References: <20200731230820.1742553-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=De36nKOt;       spf=pass
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

Collect the common DISCARD sections for architectures that need more
specialized discard control than what the standard DISCARDS section
provides.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 include/asm-generic/vmlinux.lds.h | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
index 052e0f05a984..ff65a20faf4c 100644
--- a/include/asm-generic/vmlinux.lds.h
+++ b/include/asm-generic/vmlinux.lds.h
@@ -930,13 +930,16 @@
 	EXIT_DATA
 #endif
 
+#define COMMON_DISCARDS							\
+	*(.discard)							\
+	*(.discard.*)							\
+	*(.modinfo)
+
 #define DISCARDS							\
 	/DISCARD/ : {							\
 	EXIT_DISCARDS							\
 	EXIT_CALL							\
-	*(.discard)							\
-	*(.discard.*)							\
-	*(.modinfo)							\
+	COMMON_DISCARDS							\
 	}
 
 /**
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200731230820.1742553-9-keescook%40chromium.org.
