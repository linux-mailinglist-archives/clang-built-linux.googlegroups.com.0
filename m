Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBAWJSL4QKGQE27PEEKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3e.google.com (mail-oo1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 77B83234DFF
	for <lists+clang-built-linux@lfdr.de>; Sat,  1 Aug 2020 01:08:51 +0200 (CEST)
Received: by mail-oo1-xc3e.google.com with SMTP id x16sf1339226ooc.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jul 2020 16:08:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596236930; cv=pass;
        d=google.com; s=arc-20160816;
        b=daSLdgd6vhmW6AOxwuSgDjojqCqNl+fmuxwcwpMnj56IlHUiNHg5dBsh8A4eUDaY0P
         VtzYgJ5lg3bzKaUWeod6kNSPMdxdacsvrxorfREc67j1RNI1JTRrStnNPhN/e/NVr87h
         oQfrc3h4h5MDoHbhLbsgmd5FW5m8pvFEX+Gto2ZtcrkEquvYQ08AOLczXO0X6UuHBMD7
         DsRcgBhRmbEdlozLlJ8bx9KTRjHfN1Nn69X7QEcaPzqC0tXhKnzVNIDuksaHvVQWApsC
         jw4tMapFMgMQUQFim4tdkVEPqnr5aCGpVQcGCl4ZD8phLQfpR4TdwZay0PkQNazzwzaj
         ifhA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=92aQXo8Grd0gl5HT/oFRCbI573dUuHZbY1Zqe7V0qsU=;
        b=cEAwSr1S6nF0CJYLfJQ6Lnas/B9y/YugfopBmcFRPEPsFhUI9TFBVA+Q0SvibsR4n4
         lnCZjor9y06sG5Z/r225bnMptnEZxRQWdIP1r1ZjRqbhcQjLKEXK7CKTgVpWjxKyZX0+
         XK4Lc0sECdGwV06P9G4yQZWu2LF0TaTr5/gYh1oJtCYwrKDCpqBxnRj8JhO9tzsXVmxC
         z05dajzruLIHrYHwPsBSXcsMUt6gJr398Gcfh5JVf2mSkePu1QeFEIRoSzkOBmLXgTEC
         b84Ip8TsLOTS4li4DddPea7dZa9UddOeU+1RK5PpeLM4JbCwBhbrk152lUCs826EA9Jp
         pyTQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=NSM4iLNC;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=92aQXo8Grd0gl5HT/oFRCbI573dUuHZbY1Zqe7V0qsU=;
        b=RFsV33tVe3GdUrXymLTksD69wB9Xw+gLG6jLyNkMYVnn7t12ViRPrZUiHx5Z0sJjEO
         y5XH3zyN9eDSZ6wScDYQOX88Rf5uqJm9GYqaWoqODl6Zv5VUlSljKvmpln9Lxg8nH4+W
         tHoco+BuxM/LNjhy8i9b0XLlfd+RT7eXhpG0mM4qsqQ4ZGOMdENIpErlCzCSEsgDrlQB
         hSh10GALvCBcx1XyEe1rf6dqmXNEHSbXQpYg4LdyFMhCRHWRgzhVlMkArGEOpCsjINqI
         jkm7UbF4wv0kKcpBmBArqjtIkyMgGC2q31c2z366fa+8o9S9gMHt1/IXpaoaBWjO3V1d
         A9DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=92aQXo8Grd0gl5HT/oFRCbI573dUuHZbY1Zqe7V0qsU=;
        b=aK1sRFrstqVyioxtfYelw+KF43rdT4TITYw8j8mE74Cdab7dIcdjb+cFzqK3ltOBAw
         jWn58+2WSNpenKs8TR1F7r4a7uORVBxzWG2BPTzw/6lVflvq+crMkmbVrHs1Rd/ZLhUH
         uYKPDthS0Bud0+LVuYmA6E7DLaykgfaJ9f0F7+Z+lpCWH9BaY84YmMAzq0m1KYBHPL0t
         NOyykchgDlsL95gidH1x7Qkng0gTO/i6kT6GDF+dRNSR/Jo0iMJhTg9rdLV9rJYJSPfs
         CbbT36+YfH8Sfg9hIygVAwiUPYEbtKmgdyOi9vAZai/6ulHMcz7qjA5EJEY+cBtDCmpE
         OTIw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530A6QFx5q65JV/vnF2j7SI65xsDWx6xZuUOjUAkzgWRMMSc6XwJ
	VLAJ9BCxgGGL07i2TUUULW0=
X-Google-Smtp-Source: ABdhPJzJ5bXFCgtZtJ21Ln5JHzXWUdZUgVnwEF8Iq5WDgU4jS4NJOYcR4VGpeYkC/fG3AVldIzkTnA==
X-Received: by 2002:aca:494d:: with SMTP id w74mr4932080oia.72.1596236930470;
        Fri, 31 Jul 2020 16:08:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6c06:: with SMTP id f6ls2218761otq.2.gmail; Fri, 31 Jul
 2020 16:08:50 -0700 (PDT)
X-Received: by 2002:a9d:2023:: with SMTP id n32mr5301758ota.280.1596236930195;
        Fri, 31 Jul 2020 16:08:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596236930; cv=none;
        d=google.com; s=arc-20160816;
        b=ZVu+Fjt2IdiyLxUevW9xaGUJ5yJylZjCagq/TVqDi1zKX2hk7o8t2rBhb+MqFLZMKg
         S7VxKb2CvcmAGxTZJx6BUDTz24ggAoxCZjLPvahkEJShbk2jVggUnWyjVT8Na/62V70J
         wr8LoBTTu2kmVxM2INeZ9oaOwr8Wx6lVDYpOMdQz3CYWUauF/SyCpi1mLBx+FmsPbA3Z
         eWFr9JEphkMAILy5TXu9jj+KExosLIpiTCbI1RagT9wVphLR0/I35AtGKgka0oOiOG7+
         3n+MrLVcT5McMOQir+hlOcWrJA6R0oggUFjZhp1lWq9gw5GFDd3wNzSK5n48WBsFg8Xr
         cJEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=PuSQYLk8rDTcldYHXnDKkaosbMzbCM9W/MwjNJB3VcU=;
        b=Y32nLua5foCoCp06f3+qfO73OnaWRzwZ9Wvov7Ww/8bRaKm4nVll5ejXj8MkT33E5b
         dDqUNAjEOK4xQWhQ39vQ9HqMpxVyGujFnMLNpq8ItFOfTSk+sY3anBm2q/nzYqebyYFx
         nWRk40GhANStvNKB+xukTAKnSC70TTPJ8rqL+ALPo/oobo+4POlA+qchl4StATKR4y5l
         0Bca/Fs2F27r1XWPUaN0WCr3UV3Om1Gb7cUtFi2rKOZwBjHMFCUl89fEB4i1BkgDOCio
         m3G45o3dNLIMkIsTOaSEL73wOplY4xwhAvWqhZat4UzQi0vx99FH7McXhuvJx0lLvKr7
         hOvg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=NSM4iLNC;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id w28si522483oti.1.2020.07.31.16.08.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Jul 2020 16:08:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id r4so7468279pls.2
        for <clang-built-linux@googlegroups.com>; Fri, 31 Jul 2020 16:08:50 -0700 (PDT)
X-Received: by 2002:a17:90a:18c:: with SMTP id 12mr6239206pjc.74.1596236929572;
        Fri, 31 Jul 2020 16:08:49 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id x18sm3935045pfm.201.2020.07.31.16.08.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jul 2020 16:08:44 -0700 (PDT)
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
Subject: [PATCH v5 34/36] x86/boot/compressed: Add missing debugging sections to output
Date: Fri, 31 Jul 2020 16:08:18 -0700
Message-Id: <20200731230820.1742553-35-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200731230820.1742553-1-keescook@chromium.org>
References: <20200731230820.1742553-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=NSM4iLNC;       spf=pass
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
index 1fb9809a9e61..a7a68415b999 100644
--- a/arch/x86/boot/compressed/vmlinux.lds.S
+++ b/arch/x86/boot/compressed/vmlinux.lds.S
@@ -80,6 +80,8 @@ SECTIONS
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200731230820.1742553-35-keescook%40chromium.org.
