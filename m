Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBNONSL4QKGQEYDZ4NGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 81BC1234E53
	for <lists+clang-built-linux@lfdr.de>; Sat,  1 Aug 2020 01:18:14 +0200 (CEST)
Received: by mail-pf1-x43a.google.com with SMTP id y17sf984200pff.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jul 2020 16:18:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596237493; cv=pass;
        d=google.com; s=arc-20160816;
        b=PBGl1C0pJg1vAdKrIe0RLS7HXoBK4D9qt+4u+Frh86+1x4i5h4hBDBBMPSJNy82hx0
         q8IJCTs/4d7CBvgxoHbPmUsfpK3+1MZUxjiqggGwk43v117Mz6rw5o6tFteuz+B1tCxG
         xWAGwFe2kRKR+ZQZuGHNMmkyPEynhCOfxLtnDk44vXSvKAEs0stgt4MRRLrkbl6U8otn
         La6Uc2xRvtE3JLbVegUXF9jEyFEF19kmP953vdl+fUteXsVJufN6IX+4uIITXp0TeFD6
         xKsVxwa6vVrEMFKbLcXhscjhXSNN1d2/dk+61sCN4ck44I7kEb8qcktLv1/b/JMf7ZLd
         v/gg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=AKJ2ZsKqEAzvx+Ri/j9b7SHXEMYXyS3OWDR2tfH9hb0=;
        b=UcdqA/8ebwK5245fFRQgpZyHWmOAkobCSPmyENCmmrNpSWXJz1Gd8XpmRQ6GHCLW6X
         N51x0UUebh8chqFEWeHajUjSja88xlpkkyWvhnU8abZWZOwcGzGOdCyfo8j79UqRaLDV
         C34tvugv6b13rOiWDldq/OUdZrlKx+bbcBcWwnIEcwQ80Sh1V5B78ONkcrU8OfsdqVQB
         v2Zuq6nZm02PABl85eG4GXIXOj4Cr5wrAxLxMBJYCbV3iTB/dngF9srEr/UvUCGw6zxM
         eox7/xiRgcO38vKqQ44gOI/deUh2JcAt11jzPbA1HI9WcQsq+yUB39cprrl6zHZDuV6n
         elBQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=mhl2cYQ2;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AKJ2ZsKqEAzvx+Ri/j9b7SHXEMYXyS3OWDR2tfH9hb0=;
        b=Nt9ULRT0IGFyTyAXMTHlaq99/BcXhkE26vWOm2EqXITjweT16sgmOMWs5Jgw44V7W+
         jO7oqaOwed7u4COruAtCwNZmKrks4CN2fePVVmV0kEJJsjzj+8ne070phD92T1A1Mz1F
         jr9yL6TS5X35z/Rc+eFSF3erm5K8BksUAzHmQeThFnyS0QoCycuCMz01cF4MqXf8SI8P
         MdYfbDZNyTqE9l2myHHd3PR+r7Femm4cC5IVscRWm840k8Mc4pnd5E0tFqogDksfgJqH
         uF41XZ3zx9AvE13/fAZEHSAMnfetQXzg785coaLQygDOziHgSkI5rSXD8TYlxNvbPRr2
         unuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AKJ2ZsKqEAzvx+Ri/j9b7SHXEMYXyS3OWDR2tfH9hb0=;
        b=pIUHebCn1D1F73js4n05YzaZYXegy/HNUVmoiQPtpE5JmwVGCEA0aE8gs5tP6TtLTI
         S2Yl5sd70N3AEWrrOeuwXwhxa+Roa9zUeH5VKS9yX+bmjNCMwHNO8ZrTBGDfWYbWwxcL
         TzxODc5IKgS+jOi2A1JwlwKpN+ZQYypI9JyVNCun+7wAFANY1H2MU4Rd63XoSYw43lki
         p+r1dfi+MInE38OJvJWO8bqOUw11fsyPgUAMrYGMUQzhxWSUjN2L8CsWrn/7uSW0JL2c
         6HcoZPQLFUxbre1Dj1OnfyBzlgZr338Gkkl/dnhfeOy9ZUBZmxOlJMj8qFfOl+vfdgLF
         H3ZA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530mPeo7lRmeFVWUWfh3EzsPPDmIDZ0Y4beZ0DzpJF1qCLZSWWq6
	gDFNrB6T93qDKJXt64pyCVU=
X-Google-Smtp-Source: ABdhPJwx4KTZqRYoz/EnFpcM/7dOFGZ2TXL8rpQXbxZ6g6LsfQG976vcauZO4TVf5NUH8dqKPZDFVg==
X-Received: by 2002:a17:90b:11d8:: with SMTP id gv24mr6165084pjb.131.1596237493276;
        Fri, 31 Jul 2020 16:18:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7593:: with SMTP id q141ls3471479pfc.0.gmail; Fri, 31
 Jul 2020 16:18:13 -0700 (PDT)
X-Received: by 2002:a62:8cd4:: with SMTP id m203mr5580437pfd.74.1596237492896;
        Fri, 31 Jul 2020 16:18:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596237492; cv=none;
        d=google.com; s=arc-20160816;
        b=SEmf5cU6upcEGcTRSl7EKZwjsGg56raznxeUuKqln1OMMb2UyZy7kBadjsMNncg05w
         Xk0uQVmsBJDOtsEjc+aUoLAyQMml4GucYXRwmMCvqCn5I6q+FtwYk+lKc+VPiPzx9BwO
         k7SegZ7THLsyLU9SOSq11WxnkO8Hham7j+kyxbn/XVOB8UirT80o7KswkZ8TjddocOia
         s37U2+XDIE+H3ZgfRCRNb5bwV8zKC5WXgGpU2cOWkdtaDeM4a2jLzO7msIxERmI86vE7
         v2X7acwa28ZmwMjn1oz9lB07zZTmNKEJpwY6peglovBO2LKR20CDl9op1BLrz0wx/uDx
         cFng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=OztuNRy+U3SEjaM8AjX3NHKuvNzCSaFSb4g4nlKxjN8=;
        b=W5wqsH/PdW803RDwo5FhWxdcEnkAKKGGq/wSZCoyI/tRNTw0VrFWT7ykL12uq0Gsi+
         wzJ6KxaLSZQ4JS1/XC9dmhVA1RL/jiTZRtxvLLijM9OBsbEVIrU3mFi7KNbmBKnE+SL5
         KvyEiQJNU3LzhCwzS/OQ0JDjGstCWiUMH7xGxtGPtLOYDTDASYChZe0NTNXsXhsosihf
         rYY/oYcr2iO7yQtWzqwVI2qiIy6hHMWf2Noe7MtFRQROvrWGx5Vs4aNw3c9pnQ+WjdYl
         oTc8zGhPRHoNdOWgSZ/mn6EWT4MvQUOuwrZFdY8vOEx3Jx1Vw9Zceadq7uIlglRnybUm
         dnbw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=mhl2cYQ2;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id i6si463014pgj.5.2020.07.31.16.18.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Jul 2020 16:18:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id ha11so8536477pjb.1
        for <clang-built-linux@googlegroups.com>; Fri, 31 Jul 2020 16:18:12 -0700 (PDT)
X-Received: by 2002:a17:90a:6c97:: with SMTP id y23mr6284010pjj.28.1596237492647;
        Fri, 31 Jul 2020 16:18:12 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id z9sm11932082pgh.94.2020.07.31.16.18.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jul 2020 16:18:11 -0700 (PDT)
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
Subject: [PATCH v5 19/36] arm64/build: Add missing DWARF sections
Date: Fri, 31 Jul 2020 16:08:03 -0700
Message-Id: <20200731230820.1742553-20-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200731230820.1742553-1-keescook@chromium.org>
References: <20200731230820.1742553-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=mhl2cYQ2;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044
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
index 5c1960406b08..4cf825301c3a 100644
--- a/arch/arm64/kernel/vmlinux.lds.S
+++ b/arch/arm64/kernel/vmlinux.lds.S
@@ -240,6 +240,7 @@ SECTIONS
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200731230820.1742553-20-keescook%40chromium.org.
