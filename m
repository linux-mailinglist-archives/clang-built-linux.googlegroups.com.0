Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBRUP433QKGQEVSTKMMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3d.google.com (mail-vs1-xe3d.google.com [IPv6:2607:f8b0:4864:20::e3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E92920CCAD
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 08:18:47 +0200 (CEST)
Received: by mail-vs1-xe3d.google.com with SMTP id d191sf1892794vsc.16
        for <lists+clang-built-linux@lfdr.de>; Sun, 28 Jun 2020 23:18:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593411526; cv=pass;
        d=google.com; s=arc-20160816;
        b=ypmbo4sCW8HLCJc74i8T2nYfwtvuf8iOwuVZfv9ZDYCKr/cy+fw2EFTVyJHFSNtGvG
         +9/eGuSa2yyB+7uGVmUbNDBc76425p1imymll5wiDKrv5k9w9vkZZ8XhAcezkQgURYI3
         V+beBGDliBpKDLnS+ha5ZHKCBv9EsBOgXmeobxWISiUFdtbgKGx5ruoX0up13Bc/A2/4
         30jTOWddTKIW3olZ3p83vyD+QMlpVcuWjfbUTn3rz1Dxa/Ih4zqNPPzU3TvCf/6bxU3Q
         wJZPPz5zA6z/7E02Tk2EGKZFGGGCdUgUkl6V34gCu1p86YkuQZiVGjTaaQllDu7EBGQw
         algQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=eyO23xcegKbR1z4GlngaMMvhbPsRloQXI+beOyMy7RY=;
        b=whnYnRLmzVMckRcykhON/YyJdrgzppLdJ1MUPoisUtS7pEWgDWKljxMEKvxSkJd/AI
         9x1+WVVDPEWbu+TFN6S9RBYUDQjTbPCQvLq0UBAaJViLNSubplxbhr0hpgzg/pCk2RCP
         BCyJXt9fmx9/ytalpxPtShAufMUEH3IxWyHCurmfsJlePFDknqZK/aTdMJZIccQT3tXn
         yLrNT5VbfedmPaJ95xKiw2b75yypDNMKYc/tdjd4csifheZ/u3aid4XdJ3TjPMKJBh4M
         oGzuHA+6UKD95UnfEuPS8hgAYVstO9VZs01+kyftru7K/zLsIG9AecmXTXSrG6e7TP9L
         LzQg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=EVDjc0Vq;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eyO23xcegKbR1z4GlngaMMvhbPsRloQXI+beOyMy7RY=;
        b=n7adOO3pul/gMoQd25Nm5XFluLvxE+kQxg2G4IdngsGmG1h1BVx9SLE6qHBk8FAXw8
         +b5ekCMYgh+OGUkofDxVFhzfxbkc1mHca+KuGKM/304Y61Ilb2cn9D9G/lQsi5X3k65V
         W2f1U8f7h81CVwmBYOS7h6VdJpK4Gxp+gc0uTx8F2TFc96wWEtl3JWgHLE467aXNbl2s
         zyRhtGpmXds8RtepDCpdtwAk67vwQlMJtD5+04wdbgnIPWSrR1VJQHk/5b5iZPMk6zu4
         B6kQl7XD+zte5uRCE4uwdFkpZAc40AS0HaxVvTexyR8/eossOxssMtNBuLMh2q7fIu+2
         R9JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eyO23xcegKbR1z4GlngaMMvhbPsRloQXI+beOyMy7RY=;
        b=RbfPQ3obdxPjfARrIdST6U4aFrJfSi6KU1mxDQqViyyAkk2yT+YL+i83R6lheKaRCq
         SSD71nEGJRO5/nGVKgAWHr8dsFcoP5ZN1tyBceqFoAjFpmegRnsQtpXTrzaP1ZU9ddkz
         WOAznfBZfawFGrV41t5WMLihRTwMEuKrkwwHqlTq5vZrZI9NFKgi0osbkm+/D0iNJK5W
         jVfMEoeF4xhKJGzTBHyEIXeAoeBC/VHxZkK+VFO4eepwBd62/nNIDVF+JfydDz8Ef8Rt
         ICOuLHLVr9/5W0+S/JxajgE7HAJRzPeZuR8BnAeeHC40305oZtrfW0k7jT14Df1Vig2F
         mJMw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533MbcceTESBPt2k3eZamyqUTdjXjkxXtlZdHRLIUQpu3HZljyTs
	KliLVKKOV3TbL6ELC2/FKxE=
X-Google-Smtp-Source: ABdhPJzbQ9hpnXvAAwgjvdObnt9956mYiwd0KtWe+XK9JWQ/BjkwcXvPGcYNUn0GIs0iEgyDp+ehDw==
X-Received: by 2002:a67:26c2:: with SMTP id m185mr9767285vsm.39.1593411526581;
        Sun, 28 Jun 2020 23:18:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:c58c:: with SMTP id h12ls136785vsk.8.gmail; Sun, 28 Jun
 2020 23:18:46 -0700 (PDT)
X-Received: by 2002:a67:6ac6:: with SMTP id f189mr4498869vsc.146.1593411526227;
        Sun, 28 Jun 2020 23:18:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593411526; cv=none;
        d=google.com; s=arc-20160816;
        b=WPW0olwf7qaoQfQjt5ZuFvBjngji25aj+Pj8w1Rg2IY+tuiSNevgQO31dKL/pAgMam
         ZwgfL6Ty7lBNM2zrEulxF1xIPfF+r4GlVJR9Q+PUnpw4KGSsSmElV2nju3vU0D6UI4Ck
         VpIiXeq+g8Oxnn9+HOK53km9KA0bL0ebcx/iq2e8N3VnagBseuC2E4UgZMSfrVXBnsM+
         J0tt1uYtujkusXPLGehdK5eBZSLcoM8rVPwLk3MQJtW3x6FYIK9n3AW7WFYKw9kxTyNn
         JLRjaTwRlCkdM0WS6+hpb9Z5Ku7yA5tFLVk4KNaFEJ9hn/9K/gMswEvhbSl6os4a6GRH
         C+JQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=4bArInUOY6/vKGVdecpLjfb0/2uC+GzWucHk89/LRTo=;
        b=zcM9L3EvgINOz0iflsDF9de0zRTKHJr/8R1Kq8G6neLWcBkxAZVLFf7JSIG+rTKDNZ
         6RQGLWROLlFnD6X+FFss6KZeKFmEM8eVtnhWYhNlmHn+X9ZBY1XiMILYCjrTfNHeGNtF
         gcyMM0M1wb5N1a4RIfvBw09ofWsdnYNA7aswd/3HSHvJfoRNC5I7qnluNWlZ8SFV+YxS
         ARFWxD0Ag5uQW3bd72Sco12wJDRAYHfgluSKPCyz2Pn9S+d9vnvs4SERBw4n9stzQj9a
         1qy3wZ8aoBYjv0DJDAQOFI1XRRMI3nNTMLPSmji51QyM+FVjenveILuIcU9TPKdWtqN4
         LYVQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=EVDjc0Vq;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id q20si721175uas.1.2020.06.28.23.18.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 28 Jun 2020 23:18:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id s14so6682436plq.6
        for <clang-built-linux@googlegroups.com>; Sun, 28 Jun 2020 23:18:46 -0700 (PDT)
X-Received: by 2002:a17:902:8491:: with SMTP id c17mr4942997plo.262.1593411525398;
        Sun, 28 Jun 2020 23:18:45 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id u26sm2979285pfn.54.2020.06.28.23.18.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Jun 2020 23:18:43 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Will Deacon <will@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	Fangrui Song <maskray@google.com>,
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
Subject: [PATCH v4 01/17] vmlinux.lds.h: Add .gnu.version* to DISCARDS
Date: Sun, 28 Jun 2020 23:18:24 -0700
Message-Id: <20200629061840.4065483-2-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200629061840.4065483-1-keescook@chromium.org>
References: <20200629061840.4065483-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=EVDjc0Vq;       spf=pass
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

For vmlinux linking, no architecture uses the .gnu.version* sections,
so remove it via the common DISCARDS macro in preparation for adding
--orphan-handling=warn more widely. This is a work-around for what
appears to be a bug[1] in ld.bfd which warns for this synthetic section
even when none is found in input objects, and even when no section is
emitted for an output object[2].

[1] https://sourceware.org/bugzilla/show_bug.cgi?id=26153
[2] https://lore.kernel.org/lkml/202006221524.CEB86E036B@keescook/

Reviewed-by: Fangrui Song <maskray@google.com>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 include/asm-generic/vmlinux.lds.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
index db600ef218d7..1248a206be8d 100644
--- a/include/asm-generic/vmlinux.lds.h
+++ b/include/asm-generic/vmlinux.lds.h
@@ -934,6 +934,8 @@
 	*(.discard)							\
 	*(.discard.*)							\
 	*(.modinfo)							\
+	/* ld.bfd warns about .gnu.version* even when not emitted */	\
+	*(.gnu.version*)						\
 	}
 
 /**
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200629061840.4065483-2-keescook%40chromium.org.
