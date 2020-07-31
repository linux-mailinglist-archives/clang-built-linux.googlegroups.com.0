Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB76ISL4QKGQE2OXXQ6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id D21F3234DFA
	for <lists+clang-built-linux@lfdr.de>; Sat,  1 Aug 2020 01:08:48 +0200 (CEST)
Received: by mail-pf1-x437.google.com with SMTP id u11sf13674144pfm.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jul 2020 16:08:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596236927; cv=pass;
        d=google.com; s=arc-20160816;
        b=WfwD6Cp3mzUDVomUS6uHJLzSL1VYW7VkhaTnDB0y2wX0xQmBbMWNpPR0JOq7xJyE+q
         Ixh1T4tGlw+AX/DTpVONXy80aebD5e+qZFb8JhdGQxcdLNjfA/VywCMqR7zMlak0RqeE
         jAfTVLMnTF8WMw824hDBgjsffotbaPuwj0k85YQXrAyyg6vAaXJOmWyHko4i8Z9DfzlS
         QDM2CJBl7dksSm11by7PGJgiKW6iUOjGRWo62Wx3oNq977jXH2nFdF8DFlgUgyMn5EGP
         Zazo//EYvnU7YGVv9nNNe9ycl6KT6Gi8yi6XYtwaTolVVeNdVCH3xsPbfoyHUjIeBKtn
         1Hew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=ET0VckY8zM07VqqLo+QfdwvrCp9Y2AYArQJo5sxJDHE=;
        b=O5XGPWMLdqRXrA5WJW5+UBR90CjWwIpaqxBuHB0VTKslhpNh0Lu0/S9jABYPfqPTK7
         mP8Tw0ccAEILZqFYoQcNfi8IRmR488j80JdhN2eA1YHg8/MHKKZvnNEHBFbfARVcDCN5
         8n2w1jKDybdCeyMd+o+w5/+3sOj2Fkxi1b87/wmvf3MNJyJLP6JPDCY3U7tE3qD+MbJs
         S/gP/D1u96rQ9+Q2TgOeoOPCiXAQivxTeYO8XF1wVUiwhmvhlJfkXliFoOoS5VG6qRRD
         KvWM+UVHC0FtOXJ5TINIgofMF6NLoaXq2ny8CBnG224jjmM3V6Jjxys3P9KfP+oRXH4f
         nDBA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=aAYyzLqR;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ET0VckY8zM07VqqLo+QfdwvrCp9Y2AYArQJo5sxJDHE=;
        b=s6dGLmcgRYNlfzaHzqyiKwSTAFz6YBxQZg9znB2hgAAY8EqcSGtcSGlquXAG1NZnNX
         BuR+lu0gJme0L0SVCuWZN/0wL04Rr/b3TdqH0ht3HW6jD6fwOcuO1E0rjfHk+CNAMqH6
         g+FH8gM3o7JiUQLWkbnA8/ss3bRTTvoPbaMigq4/6pZJd4Dnqnp0hHV0QBDWhckrxMHI
         dsC/XncSI+boQw2toHCp+mup0ItqfqK+cbAbbB9yc2Q3w2qNPDI5WfDTkdnCRQbxpgtd
         H+eIgev8o30QZ0z8/K/yItAr8nXzZcOBM9K9NZk61KQLnjykgCpbp+9HrA590u6xtl1+
         X0HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ET0VckY8zM07VqqLo+QfdwvrCp9Y2AYArQJo5sxJDHE=;
        b=Fi62gxqFsrp617MuTiJrZkHSh0sGZp78bR/mwViyfBmk+QpnG5rAaii4F1s93zbIED
         5FLzuqu7QnIBpLhPFgAywV4OCC7j7KtoNlL+SdX1+VLAOirxq7liTaNPz3NnljJoaMtp
         s8Vup8h8oRygcy4KMeewScOST+x9K4Nl/a6wyRRSLdR2XuKcKirePlGgDUeggq3T3W00
         WYMLnaQYen4QI94CnkxPgTcmkU9CZ8IIoNZisNJfQFuPSKEjxfaa4s5vS2ef2YNVsBTm
         KMwP9yrtrio1icEJZbFvRzyeW1SUGq8PD4CJzSxS006QOmeIrdHXqYUiEe03nlHiwNh8
         DxuA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533pWm5HqGojo2e+dN4+7h7nTMoPS0QHhh9GpeGp3GmdkcDIeIX+
	1V9nuASo8QfQ+RCzRm6VjLU=
X-Google-Smtp-Source: ABdhPJxSE4uUArN/T8uk10Y+XC+vYDqs+5bwij0Vkb7pwVMfkT9wNGuADS2vCC8qc2VUJzLJzTCyoA==
X-Received: by 2002:a17:902:7c03:: with SMTP id x3mr5445493pll.178.1596236927580;
        Fri, 31 Jul 2020 16:08:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:9344:: with SMTP id g4ls4276305plp.10.gmail; Fri, 31
 Jul 2020 16:08:47 -0700 (PDT)
X-Received: by 2002:a17:902:9b97:: with SMTP id y23mr5705745plp.189.1596236927213;
        Fri, 31 Jul 2020 16:08:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596236927; cv=none;
        d=google.com; s=arc-20160816;
        b=mG55xCjPHakH44Bewwxrh/vD2czpf7kzwT1i23twirXCQRa8UsOWgXVwfIoZRXcRim
         Tqn9uEyR045a7oApCI7r1r1DGL27W5VwpbmGvDTgkOluIa2IDJX5Mpg2aJqReuYNK+bx
         f0I6qxRsQO8BkljVY9K5NyjAFMbMqW8yPSnIJidfx1rwJaqrOj9ljWDAQNU0qF6RET3k
         ZRer911PCfw171fdRsybPsz9o3IJTBhNUN4vmVW5Dui+5ARGGMiQ9x5ce3+uB02qJ97I
         ZoInsVfYL+dXp8ogZLi43Eco59qOLomRFT7eVQwjbqFdNfXQGA434buyoTkHnTc4+3OE
         xujg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=fvfmv1pkeySd5rhFrbyIXZ4JfyCoyCYJFNM80B3DKYE=;
        b=kaxITIx2ePsl9F0e7zi06UQ7ARNUKeWmbxF41GIKPAm17KFSxq5ugwxPIGZjoGNPQf
         Auie4bEOe+iH+P8y1g89AHz7XNL/TebArY6IWNf/91bKzkBYTWbhQziC0MqDdbkgybQr
         9CxaRsY9B3oDHbIq2sJx/FMmlALC4JoKYqC2OLG4OGl7MqchANZ2T1BkhGcp2M+2YQtg
         TmmmSHmbE7t0Zq1bczaZ4VKF+dO5/Ikv1iAdQNOAxFkjIgV2mFB/QYOXCmyYQz2uC59g
         BEPPa05t7uTdb8N38kTfeO+RtHzP5l0O9mKrVKUHeWBEx5MMvKkPkV9q+rrOfTF0v0J3
         iSog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=aAYyzLqR;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id lw11si63155pjb.1.2020.07.31.16.08.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Jul 2020 16:08:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id u10so8607596plr.7
        for <clang-built-linux@googlegroups.com>; Fri, 31 Jul 2020 16:08:47 -0700 (PDT)
X-Received: by 2002:a17:90a:e96:: with SMTP id 22mr6250841pjx.135.1596236926893;
        Fri, 31 Jul 2020 16:08:46 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id f89sm10357189pje.11.2020.07.31.16.08.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jul 2020 16:08:44 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Thomas Gleixner <tglx@linutronix.de>,
	Will Deacon <will@kernel.org>
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
Subject: [PATCH v5 20/36] arm64/build: Assert for unwanted sections
Date: Fri, 31 Jul 2020 16:08:04 -0700
Message-Id: <20200731230820.1742553-21-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200731230820.1742553-1-keescook@chromium.org>
References: <20200731230820.1742553-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=aAYyzLqR;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642
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
index 4cf825301c3a..01485941ed35 100644
--- a/arch/arm64/kernel/vmlinux.lds.S
+++ b/arch/arm64/kernel/vmlinux.lds.S
@@ -122,6 +122,14 @@ SECTIONS
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
 
@@ -244,6 +252,18 @@ SECTIONS
 	ELF_DETAILS
 
 	HEAD_SYMBOLS
+
+	/*
+	 * Sections that should stay zero sized, which is safer to
+	 * explicitly check instead of blindly discarding.
+	 */
+	.plt (NOLOAD) : {
+		*(.plt) *(.plt.*) *(.iplt) *(.igot)
+	}
+	ASSERT(SIZEOF(.plt) == 0, "Unexpected run-time procedure linkages detected!")
+
+	.data.rel.ro (NOLOAD) : { *(.data.rel.ro) }
+	ASSERT(SIZEOF(.data.rel.ro) == 0, "Unexpected RELRO detected!")
 }
 
 #include "image-vars.h"
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200731230820.1742553-21-keescook%40chromium.org.
