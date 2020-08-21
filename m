Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBXWMQD5AKGQERYT4QBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id E8FB224E138
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 21:54:07 +0200 (CEST)
Received: by mail-oi1-x238.google.com with SMTP id n24sf1047468oic.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 12:54:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598039647; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ab2q4W0k/na9AOs9orN7We5Gbd8Mo4pJGPD4ebe/wkwyer8AJLNGNjVBXEbupdeQ02
         +6gqGNweUHtr/G1btn/pyS9xOKHYV4rWxv6R4P4YUXSTXdaZLu8rwTBvGgIumK9rl0mT
         PSHasOXRb8rZSfP/k0oQFHCBDL9IcWQ3hXCw/0kFX4BA+2jwJAc/wSeSxhGDIkOV2Ilg
         YdcSXp/xLGWXBbXZnmHnZZvpJ8MrqEZO/cAu0r2vg+tTf2u60RQVm5xEpgMWzsNb9rOq
         CRP3IjCg4Dbh5Qm/2Fa+mNOxkhIhrXCnJVBXlOE3T3Lg1ZSCeeUN7IM9sBKOkpqPFaX8
         R9yQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=+xPhP2BvxbKZmRj8LgIF9X8Rk0b33+ObDuH4/50qM9g=;
        b=DwxPyy7PZ63FiqkBbyfTrEYOPAX9iOEeeFn6QzyMDyB0KRvY3z6GuL8aH6d5SVEeNV
         76nT9zr+pruNoZkxE1afmmvqFCHSLXAHlJ/8XPQji9A29z+IWhQf9yOs/OekWKan16tg
         5wsBzNptFxbG3yGciV3OW2hT5S3ZHeBgoh5VPFE0ChbvZsjFCEdXUj/RTFk5qGu7MDLd
         vZ6aYbz9cVwOTlJzacw+aW1tE3PEgYOt4rE4sUCBoBXqLOB3LUO230c2Ejsygdbv4qBa
         znm8kLRH7+QvMNK0bVwkjsM44F3v+FsEZzVHP13pDWt3IbXJg6cra5BJ0dXJr7Nkz5zS
         Oe/A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=BjCkHROY;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+xPhP2BvxbKZmRj8LgIF9X8Rk0b33+ObDuH4/50qM9g=;
        b=kwFhsAREmmBgMESIJHk3JnUmJZalQLM2s5rgEuXAatOPRvWzl91MipLtvkNNq8Srd9
         bZZ6XTQxWI9mbz1nhkh2xVJDS4SA53wU1ajyjb4uBDO4xZTWF0K63HIc5WTPEKjmAjFN
         lbzDMgXZrGCBUnxCc0KEJvDFhUVIdMXLIplJ766Z7MXo7jUNcTj9yx4pb8+KgUu+gxa2
         rCoExXhGMgCS7e1ee+QL/ejzmD/9aYBdcAym/j1pUkrGqPDr9vOLve5UuVujhqfDKjjd
         v3/0M1vVjP/bBn0wynR2gA79MlAZGIp0HdHu9BY3zovuIRpNUGGnSGBEv1qwNgs+D6nJ
         5SyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+xPhP2BvxbKZmRj8LgIF9X8Rk0b33+ObDuH4/50qM9g=;
        b=p6orj8LjcqJuvBKFF3gCyMLqOGxdU8YCVqt1LNbMkj/uqLD5qWzqdGtHiUlHiT/CLv
         kHvD0xunPuPsXFi2xoVvT1V1qe50c8oWYgTEXDvdQRdhtjlah6u7spvFuyghfg6Pi7Ed
         4SPt80xOIwr6UWEbNXrIK2uOIF1J0UmJXdngsL/bjBUCHbWGi8zGM402+3a4eEuVcpBu
         qPsdRJ3Rw/YfHeN6OPQ908j69rjnsR+IKIZLWlmDgSbdgEzBEiQ8LsTuC6/2hCB9MFAX
         TVRgwtyhzdbKRZB7invlvgI5So9DJGHIjDPIrUWQZ+VDVvvDH0UvvubTGmQVDdZeUhHc
         bpng==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533GDt0brf8wtr0UacDEjh3L4Fn68oTpuGJ4kZKOu3nQHQWaLvLP
	yvVvEtJkTMrfjeXlRG3nEvo=
X-Google-Smtp-Source: ABdhPJwgVKH0oVp/WYdu3lOFMADatwONaydmYkhR8/ZfV5ict058OvxeDVnEPfcxnpZgK6GcxaCtKA==
X-Received: by 2002:a4a:ab85:: with SMTP id m5mr3313923oon.66.1598039646875;
        Fri, 21 Aug 2020 12:54:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:546:: with SMTP id i6ls674117oig.10.gmail; Fri, 21
 Aug 2020 12:54:06 -0700 (PDT)
X-Received: by 2002:aca:1904:: with SMTP id l4mr2903100oii.67.1598039646516;
        Fri, 21 Aug 2020 12:54:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598039646; cv=none;
        d=google.com; s=arc-20160816;
        b=o3JC8X1y0xIBL6qg51jFFXGuahUc74XnDW9cTLZWwT32sh9FSDS0/P2pkvk+EpdIhd
         pHN2+nVWw/L/6eytgkHx+LlW7OWOKk1/q8kJ7yh88/PsRmo1TP5XaZAaNdldcztRETP+
         +wsaucjdZvFA8XC8Gw5q9Fn8EAbzsV0Jq9v4GfZMrUl4OXbEqz7Cf+3MQ6kc0lNVSf5X
         CiwFVb++GDDQWVwAvVYEG6jmqL0cLy5wfdGCZxub+dUBsYYIysjuxGwlq/HXaKqiqNMx
         LPV8jecjs2AEi/gCszTXY7VXrkABnQRiAq575JWCE1vtr0ravPzTgYFX4xIeAuwW/O+e
         ciwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=RsnjhsnTEGM+Cj4mkGtPoVyQesfOultuLxrGhrBG5/A=;
        b=M4G/bvbqcjG+sknQ0Q6Y9+m/21uHSYtTjkaQlgUG5vxJu37BALt97cZtotjHVK6BA2
         scsR6uLhXV5BqaLt3QklZFhT9q4UDZ7DGvST1n7Y0r2lgwGDX/WyKE/f2RxDMSC0OMpM
         bpRxJr+L0O+v47M5boCk3rVYpZDXiJxdA/aF6AQOdXxsgP1y3v6b9i+gE61fVHVZX51m
         xGHMdYXA/dPVCxk3v4xbOk5lf1NLRCt8OmyWPageE6uzz4TQ0qfnd1DV6U9XYHsEnK4N
         etPy3mBtrughQzhuPf9hOyeRCcvY6QFBugzMkCpjUGGxn3qsl1nDSEvYKKC+nTwWkdBD
         5PNw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=BjCkHROY;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id d11si212462oti.2.2020.08.21.12.54.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Aug 2020 12:54:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id y206so1566071pfb.10
        for <clang-built-linux@googlegroups.com>; Fri, 21 Aug 2020 12:54:06 -0700 (PDT)
X-Received: by 2002:a63:2809:: with SMTP id o9mr3518924pgo.410.1598039646154;
        Fri, 21 Aug 2020 12:54:06 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id r15sm3651023pfq.189.2020.08.21.12.54.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Aug 2020 12:54:02 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Ingo Molnar <mingo@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	Ard Biesheuvel <ardb@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
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
Subject: [PATCH v6 13/29] arm64/build: Assert for unwanted sections
Date: Fri, 21 Aug 2020 12:42:54 -0700
Message-Id: <20200821194310.3089815-14-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200821194310.3089815-1-keescook@chromium.org>
References: <20200821194310.3089815-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=BjCkHROY;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441
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

In preparation for warning on orphan sections, discard
unwanted non-zero-sized generated sections, and enforce other
expected-to-be-zero-sized sections (since discarding them might hide
problems with them suddenly gaining unexpected entries).

Suggested-by: Ard Biesheuvel <ardb@kernel.org>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/arm64/kernel/vmlinux.lds.S | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/kernel/vmlinux.lds.S b/arch/arm64/kernel/vmlinux.lds.S
index 16eb2ef806cd..6ccf19fd2b39 100644
--- a/arch/arm64/kernel/vmlinux.lds.S
+++ b/arch/arm64/kernel/vmlinux.lds.S
@@ -121,6 +121,14 @@ SECTIONS
 		*(.got)			/* Global offset table		*/
 	}
 
+	/*
+	 * Make sure that the .got.plt is either completely empty or it
+	 * contains only the lazy dispatch entries.
+	 */
+	.got.plt : { *(.got.plt) }
+	ASSERT(SIZEOF(.got.plt) == 0 || SIZEOF(.got.plt) == 0x18,
+	       "Unexpected GOT/PLT entries detected!")
+
 	. = ALIGN(SEGMENT_ALIGN);
 	_etext = .;			/* End of text section */
 
@@ -243,6 +251,18 @@ SECTIONS
 	ELF_DETAILS
 
 	HEAD_SYMBOLS
+
+	/*
+	 * Sections that should stay zero sized, which is safer to
+	 * explicitly check instead of blindly discarding.
+	 */
+	.plt : {
+		*(.plt) *(.plt.*) *(.iplt) *(.igot)
+	}
+	ASSERT(SIZEOF(.plt) == 0, "Unexpected run-time procedure linkages detected!")
+
+	.data.rel.ro : { *(.data.rel.ro) }
+	ASSERT(SIZEOF(.data.rel.ro) == 0, "Unexpected RELRO detected!")
 }
 
 #include "image-vars.h"
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200821194310.3089815-14-keescook%40chromium.org.
