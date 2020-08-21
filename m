Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBWWMQD5AKGQEENSPCJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 32EE724E131
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 21:54:04 +0200 (CEST)
Received: by mail-oi1-x23e.google.com with SMTP id j63sf1055694oih.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 12:54:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598039643; cv=pass;
        d=google.com; s=arc-20160816;
        b=fFySRn3IfOSFUlGjAHEDekJ77sTznn+EkI4oj0h36lAKjkQ2dbyS2B14V5G0j4G5Q7
         ptegSl1WPnZh/bgdVO3UBNN9AgNxTdn3PsIeqxYdAibJ2aCPAs8AMDIqGerb1sL2lmHu
         2wCIbHZKjwsEMFhYiUX/rlg3LhTMJC8jHHKG2lEEb7L9wkHxDvFRIUHlv6xo8hWQlBEE
         6D7wa0o2q13Jtaz8DnBxvPUtxC8ksnfoKBJ26V155sVs2ObkLabmNomg/vLKfufG4CZO
         AMBmmkCGFy5oyhWv041dgZLQ+BZbxHXAfA2kgGYObjFxLkvPpTqrHpCRYTpUOj/zotUe
         4o7A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=OJzDtCRDU4yrmFbUsUrRNuLnhxLmeeKOQN6yPG7Rmxo=;
        b=Oh/xuGxoeQpYwtYs2uDQG6+AhzGg4+nV/RE/caiXs+yQmY0BOUeglnVKgPEU4DsZyn
         UTOkyF6l4/BVkWXvl2DeO763+DuKqhEX1R1tp7k4SZzNY6AQjx7a53nkcjiVI7BPBREj
         xvkqidP2zpoaVh/In5VlXN5gklzLcn+bGjJilpyQVK+ygwq+XLTjVxemOAv3Xs4dhXWA
         37cwx+LZqkk+6wrzrXBpbhuW0uH/wGlWGoXsGfrhSL5RtSIPwZec7M26yvdg2L1At5oX
         0swWjbczT0m1cKNDD5gtBf+Bnb/54m5IZJxEHLdRvpMH78yx41CeCZJHPYCY9eUgiWOU
         s/LQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=h4th2Gwt;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OJzDtCRDU4yrmFbUsUrRNuLnhxLmeeKOQN6yPG7Rmxo=;
        b=YV+0WJCrh4HjsdYUYZkTPjFBx6bt6Qu5saGKn1fnGD5GDeFzhgYAdpm8WYFq7kvwqb
         93W/eU9E5oBl8dpp/xeW+Zz2w5DT39bychp2Tglb3zXArvzY8cngvuuSaBNS8g6IxA4j
         RjcDN/rbjdJ7pgbawaD8WkabOH++csgu/cURwDsH8/q/gYXAJOQ7uQY+S7+ExI/4PS3/
         86cD5/3Sp8xzsd219ukZS/RozE6cppz45+2lYyhMQoRCW9uevwbEfCiuN4Nl2yapg10B
         XQlvtayrhNehIoqgrz/Y+C8n5aEC5kfTZf+wTybmhuZ1i8Qblqmi/QswBHRdaFuMqfUD
         FACA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OJzDtCRDU4yrmFbUsUrRNuLnhxLmeeKOQN6yPG7Rmxo=;
        b=ktKa3PXCWqxUZ2q+WV+c5qfr12a0mH92z8dL9LtLnZ0lyX8wAPpoXsIhQVqcuxZHDK
         2dG2Uoe72CPX29BNUChzPGTe8j6tEqCx2RUKYqranxcld1MdQK7h6W8+J1x31jdAbTXo
         rUyRKqlnZGGm3piADg3wTiETtWFo6Lk/JFw1imPDwUGn23WMkKJd1BiOAd288m+0f3rn
         Y569GaBqZYHEuJjhv95rmY0fDJeQDg/gPE1etXjTFpveVaq29TGw17vUoMAFVunbr4Wi
         abIzqglyB9/40OJInvko/jXdhCgjECrF54oIsb1K2XIGGMbwY4O/CMVrkmNTM6HH8Mb4
         jYQw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5333mM/WJv+bwW9/Q/t2hmnzwuCUhFSc/HP9r+2QP7yQpK3Uteju
	hF5+9+J1beA46c9rjOCI0nk=
X-Google-Smtp-Source: ABdhPJyij6Sw093pAYUvKBvcQmqOIEbDK+/6QhIbN5XvdihHekM3AJrtjUjMWkPRVyyD0SmpV1kA3g==
X-Received: by 2002:aca:eb47:: with SMTP id j68mr2680090oih.7.1598039643012;
        Fri, 21 Aug 2020 12:54:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:4f0b:: with SMTP id c11ls199360oob.8.gmail; Fri, 21 Aug
 2020 12:54:02 -0700 (PDT)
X-Received: by 2002:a4a:d2d8:: with SMTP id j24mr3364493oos.82.1598039642717;
        Fri, 21 Aug 2020 12:54:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598039642; cv=none;
        d=google.com; s=arc-20160816;
        b=EEpII1xvCnN2rxLMSnDfR+YvPaxE49T5somDdxi9sWBu2gjVsEqXV4LdPh0C1d6GIU
         hNuEcV7hvJrK/Pza1Jgz1K/Ly7M/y/wLh3/JleZkPXdAOasAPbqO4qAcnOFnWseZIh7K
         PpteOXGp7wCvxy5FkP8aSZWHY97gwyLOl6VNhJB4F74vDxIlAtqaLEW/YrBXxZ3Q3Bpd
         KWAc0qwGwmu7gXeBJpIifjJYe0837/y8UDbXLnhLv1Mt6TyMs2O5Pc+koUecxjVsJ5CC
         Bw0z+pCInuuVunnFDXoODE69nLAKupOwZ5rNjmmwDslSM+5gqqZ6Qq+l9Zx+epfH65uP
         grZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=X7lCPABz4JNrayMBdAlXz/o0k5wzYACi9B/neD0BSpY=;
        b=Uk6Mf+DFZ435XXT7qLf3NR7GaNbCbTLuwDSi968FQzTlXNb38WoSj1Zuf9TfPXPFuB
         Hxl/lTP8g2axV+Hi9sxmBWK8baHbZU3WLSRoN7gAXFi31XP6A/kArUW97lqVUs1U7/7G
         g+nUM+m/mn7k5AvYuVduEKG5j8REnAJEOXm2ai9cKVKfvcPdgokKuXds+CpGdZ/DGxUp
         UcJjD86/To2YQvdMh4hhFuSe+pRvCpFTm5Bdg00wozVjNMtnAVFxDhqQxNak4pLboVpo
         eTxpHCC5hIhdVxEYyFR1AEWbOK0DYxqA51mLhzs+HHbSIU2GeiY3Dbd5VKyVgzLJwJlJ
         tV6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=h4th2Gwt;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id s18si145631otp.4.2020.08.21.12.54.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Aug 2020 12:54:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id p37so1489063pgl.3
        for <clang-built-linux@googlegroups.com>; Fri, 21 Aug 2020 12:54:02 -0700 (PDT)
X-Received: by 2002:a63:cd46:: with SMTP id a6mr3322488pgj.267.1598039642059;
        Fri, 21 Aug 2020 12:54:02 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id l67sm3026438pga.41.2020.08.21.12.53.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Aug 2020 12:53:59 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Ingo Molnar <mingo@kernel.org>
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
Subject: [PATCH v6 25/29] x86/build: Warn on orphan section placement
Date: Fri, 21 Aug 2020 12:43:06 -0700
Message-Id: <20200821194310.3089815-26-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200821194310.3089815-1-keescook@chromium.org>
References: <20200821194310.3089815-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=h4th2Gwt;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543
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
versions. All sections need to be explicitly handled in the linker script.

Now that all sections are explicitly handled, enable orphan section
warnings.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/x86/Makefile | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/x86/Makefile b/arch/x86/Makefile
index 4346ffb2e39f..ccacbf808552 100644
--- a/arch/x86/Makefile
+++ b/arch/x86/Makefile
@@ -209,6 +209,10 @@ ifdef CONFIG_X86_64
 LDFLAGS_vmlinux += -z max-page-size=0x200000
 endif
 
+# We never want expected sections to be placed heuristically by the
+# linker. All sections should be explicitly named in the linker script.
+LDFLAGS_vmlinux += --orphan-handling=warn
+
 archscripts: scripts_basic
 	$(Q)$(MAKE) $(build)=arch/x86/tools relocs
 
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200821194310.3089815-26-keescook%40chromium.org.
