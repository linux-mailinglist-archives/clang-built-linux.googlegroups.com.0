Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBPPCZL3QKGQEKOY4XRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id B78262069B3
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 03:49:50 +0200 (CEST)
Received: by mail-ot1-x33e.google.com with SMTP id f21sf450278otq.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 18:49:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592963389; cv=pass;
        d=google.com; s=arc-20160816;
        b=WcieV3gSu5AhGfR6dh+7XD/fYwz8lIgrYxjt7tTPpU286rNzGXBayexnGScvdCl7Sm
         SVdi7r9qZrZxhrC7hAYCAobfPnJD79uFd9r4JvtxUhm9FwxZvdXzqb6u44HutZudCXj9
         jGguG/jj8jeak86wk7HO+rNQ5iM6C2ToMSE1aCGgbUSriyRozlBGHBwj3mgDaac0vl2Q
         s4teybzZcGmM+ysTuAPCjM1oTeRlgkGyiDWbM3BHxeSS3vmWXqcq5IvYZoSA5wuBfX1C
         x+V9TE5+qsjE3WKRvv/G4n/6fxPllrdWmEWR5IQguq2Gmq7rbY3LRM1w//lTCTUC6Rmx
         diVQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=FG1CxD3GotmU+SyE7fITcC40lxju4VtLGkBw6hugoiI=;
        b=Y6c2+o2ZEsLhemdLhdUiHSYMEfsMCZ4pn6U4Pqo22VNgEbGLD/o7CPkxEsR75BJ7/E
         oW6CmQGz5/rNlLeuegSc2qRtysAI6WREC3uU5n4IxL+6wT/tlIAJZb/KAV2lA45sZV5N
         Ve9D8SZpjQlSdKJNFkmhbslqhB1ScFs1qVKnXAIpbi+0+lWEzrjXDCTL3Kb/y0vQ6fZ+
         +UE4h7mxzkhS9CucVT5yla9i6w5UVAiIgoQ/BjUedqf5Um9HKyarjOHj47s0oS4h3dCj
         it8yL4O7uat5DBCMFaF5tenMDyD12oyQ/mhS5AfgKezizeHZJbjoZvD1v4Hh5mgh1Y1/
         wfbA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=RC848NE0;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FG1CxD3GotmU+SyE7fITcC40lxju4VtLGkBw6hugoiI=;
        b=HPZTwOTIIA4YHhhUhkI/9+YJXZ4oabKqlq1SmkhepulIK53/UAMXq/gWfAykWSkT+Q
         xEb1XBKbv7f9hWPF7e3RQkUJ2nAsmWzLNW+90fiqMWrpHBforC/7bHvIAzy9rBhYIN3H
         Z8M3ajxcO8JQUXrHKq+Xsd7P0IMy/8rRCuLo4jmM8qFjl86wIvCZxUPK7ma2v3QeVNMl
         M29W0dFNHjUK2DTQ30MfAs47YOFHJyV9TaW2FJkKGgsGm19sdH3DEiS1TvlHqZxLvw4a
         mBXkjijPI5wx2gMB3gYnE53q+PjwHiNkf9ItYLKxI1imZsqDyB7ikLjTpvKUZst+Kk9f
         +FmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FG1CxD3GotmU+SyE7fITcC40lxju4VtLGkBw6hugoiI=;
        b=iEHLXPIdHQnt6PhegtsG5+OQ3aLXHw2x2giFntNllnJLz0wWPkFWLUQa8xIagvu/Nl
         2pCqac4hfO03mP1cB41cgYIh+IV8EiuCKeGKNMi7vzhYE3wNSqD64qg6vsP+y1l8r/tC
         TcdDkcMIBALhmHJCMUVYlv7B3VTWV10sGMfbVp3uCoPQGdadlbUm0Dkeg0rd2bqSlTzN
         8kSA18/VKVhD2/KxkeQX8ocSUsGQnpUCJJ9l9LFjpIHaDqASI3A4+SJ8R30W+ytu9O5L
         ILfCsIHVX4hey+Q2rx0QMhkTyRSzuFyMLHmwxHk4DNaIR7sFKk6eUHgrd8a+iNEAk4rf
         pziQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532wY0Lkz65k1AA8kTEUXsYgcbwXm0/nGTzIPnXICYcBUTBpRuFv
	7ww3cxpw++gLq3DISRtN+CY=
X-Google-Smtp-Source: ABdhPJxGwSTqWLLeFn+Bi1XfZp1cxHWOgtLheFpRcfePuU2liUohHK/EwyS2WWxZZm/pwhLS6T/XyQ==
X-Received: by 2002:a05:6830:837:: with SMTP id t23mr20005475ots.87.1592963389548;
        Tue, 23 Jun 2020 18:49:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:19a8:: with SMTP id k37ls118095otk.10.gmail; Tue, 23 Jun
 2020 18:49:48 -0700 (PDT)
X-Received: by 2002:a05:6830:1e13:: with SMTP id s19mr5510076otr.102.1592963388259;
        Tue, 23 Jun 2020 18:49:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592963388; cv=none;
        d=google.com; s=arc-20160816;
        b=pU82OX/UmBZe9xx8Cq3XuLA5krzwSyo0s6DetkojB9aK266JkCHrn+9/B5aHYAXdBi
         Gd5IkmHJ/aj0WmzL7FKUfg69d2zuMbPw8tcgIaQkiaRPzTNg8h5eOd1cXvJB0lr0VrJZ
         84wCxsQLpik9zYK+cL3XxUxyGWkcFatoyuqLZSttdPLEZJPWOa+UT7EBzd1VqjYztey9
         QrSV/LCC28UQqVb5xifg7RlDd7aPfLODhMcEZk6GtGW60wx6ymPT0h/hpiDT7wWAONvw
         P3+56BU7cQGmzAWr4K5Ld7uWWMD7xOovvry+mrrTlSLAsV8BirGODaRg3/YUbNSop7Rv
         rLKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=O2Y9k0Aoe2PsZ9fBDANRxjQwY2H7eXTSzLJBeV/fV9o=;
        b=qBdXqwSUqeN5Dc1hHUrxUC2driRZ6h7yH2s9kOwyo/cVzoSu+DQdV26kuW9ihOARwC
         x19re0jb+D5P2Q8WSqxNEnBXVDQiBV2e1QqrRmOOo3iLTsLSJg/UKyCvVMsygaN0ewr8
         LNBRgqAaOF/+Fi/Fy57aBZcs3jSz0hp8QLzNALiBF01Jin3tFZKAganh4vG4pzd6TxQA
         syGCWirsVo9kHmgwMgXWBBCfmum3WWjDth4mZCSgUCWh+Ls69Znn/H/cfWe4tbJVtMzN
         sbfISF4wTLgzPh1NyOzxHj2NtkUiyrGwdyTWb49J2ATmO1V2BNxIl4B50wT8hfT+lMJR
         5byA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=RC848NE0;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id y198si882062oie.1.2020.06.23.18.49.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jun 2020 18:49:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id d6so377947pjs.3
        for <clang-built-linux@googlegroups.com>; Tue, 23 Jun 2020 18:49:48 -0700 (PDT)
X-Received: by 2002:a17:902:26f:: with SMTP id 102mr25557096plc.226.1592963387558;
        Tue, 23 Jun 2020 18:49:47 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id mp15sm3524928pjb.45.2020.06.23.18.49.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jun 2020 18:49:46 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Will Deacon <will@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>,
	Borislav Petkov <bp@suse.de>,
	Thomas Gleixner <tglx@linutronix.de>,
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
Subject: [PATCH v3 3/9] efi/libstub: Remove .note.gnu.property
Date: Tue, 23 Jun 2020 18:49:34 -0700
Message-Id: <20200624014940.1204448-4-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200624014940.1204448-1-keescook@chromium.org>
References: <20200624014940.1204448-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=RC848NE0;       spf=pass
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

In preparation for adding --orphan-handling=warn to more architectures,
make sure unwanted sections don't end up appearing under the .init
section prefix that libstub adds to itself during objcopy.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/firmware/efi/libstub/Makefile | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
index 75daaf20374e..9d2d2e784bca 100644
--- a/drivers/firmware/efi/libstub/Makefile
+++ b/drivers/firmware/efi/libstub/Makefile
@@ -66,6 +66,9 @@ lib-$(CONFIG_X86)		+= x86-stub.o
 CFLAGS_arm32-stub.o		:= -DTEXT_OFFSET=$(TEXT_OFFSET)
 CFLAGS_arm64-stub.o		:= -DTEXT_OFFSET=$(TEXT_OFFSET)
 
+# Remove unwanted sections first.
+STUBCOPY_FLAGS-y		+= --remove-section=.note.gnu.property
+
 #
 # For x86, bootloaders like systemd-boot or grub-efi do not zero-initialize the
 # .bss section, so the .bss section of the EFI stub needs to be included in the
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200624014940.1204448-4-keescook%40chromium.org.
