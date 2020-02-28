Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBWV24HZAKGQEWELUOMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EE1D172CFF
	for <lists+clang-built-linux@lfdr.de>; Fri, 28 Feb 2020 01:22:51 +0100 (CET)
Received: by mail-pj1-x103f.google.com with SMTP id d22sf5968032pjz.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Feb 2020 16:22:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582849370; cv=pass;
        d=google.com; s=arc-20160816;
        b=AfqmfjJC012h+g6Crl1kU2dzuWyyrqwkySEMsc3BIfeP4g66Tbqbpe9GpTZJubuJLh
         Z+Q0E/5ES+jQ8NH6vESuX6n+SXc0jzWVyOvu1aUeArlorslc44g6QPD0KVVWJIFiuaH3
         XJutsqW9RF1GU7Hfw4gvPIG+tMJnbgj1zPZ+elZlCXJUA1Cvv/1iq8kBODUBcYoxJ66p
         yUvJA9bnFTE84WL3WiYlF57AHbaN5RrhGfGWVWfVDRHK8sAbJhqrvF+vjtiEFdqL/UHl
         oij//7pYnWuc5EVW2XI05WyMDEp4ZYMzi6wcdjne8u+uXq7EiP/QJEShixDqZi+mhSyD
         Z9NQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=UQICNltsJbBcrr5/LYqjIZQonvvN8LLsy4/0/Ppj+0I=;
        b=GJgfQzwFJ2ofoE6/m8ZEBsSDuhv5aSpbdTy8NOlxqxyp/pHjuGWbOOxR4ywGgqY/uD
         GYpcBHv/Gj+C03XEhOFCoe9UUM6ScoI/0v1Y4pHKcgTL0WWdHGoLxNjiK01XoNS2bjrA
         JL00Dq9wa70zFaFopxmSN/bdH17n+eUoLXloHZ6lLqEPfYKqni1UYAK0NBaUi5MdA2wG
         q5fdXPO0QieFEv73WRumWpldAnhGLR0M/0ppt3siGkT0p7Cg3RbeA8qTlO67TAdbRHwt
         dWc+gPDMIDsyp8ORS/uOPsmv8ldXk/HRwBI76WLUZtUxidhpXMiJ/ZAIkEk4Mx/7oOcI
         Ol2Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=nHZ4Y7Yb;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UQICNltsJbBcrr5/LYqjIZQonvvN8LLsy4/0/Ppj+0I=;
        b=MAzdTc9YwX1Nslwil7OIXf97lTKg7SnmeInc3i8G7dlUsxxgp188esR9tWFuMMI32V
         fn3DIFs6DGJi41FRhvjiZV4iYkDpUgF8pmcBlOZNJQin4Of5M99yzhjIM2KB4ldeCER/
         X8KJEQaIxWcE7XXpOagD0rlVV9IVGg0QuQnUhTPYFgt88PrEUCwSP6ireDovTOzNQ38f
         FG8ZZSzkcXppjgWMPeaorrckHlN93CFh+quHrleie8FzWYnrUq3tj9dqDuu/984fUYXp
         2tWI/wzJE658mkqR/j2+LMbZ69OZWvld6IortBjql8NSG3viLjNw5vL7BGzbOjDbuxdE
         JlVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UQICNltsJbBcrr5/LYqjIZQonvvN8LLsy4/0/Ppj+0I=;
        b=lwdVcQyLQQ/suEmOYdRMJEMuDwt+zU8Y45pQ7I8NIV5pk6Mui0aG+iw9+qe8B0Wjzh
         7xrx2iMW+0n8fMX8WQ40lJPDt21pN9LsNxbNZ/caBhZ+kNVZzvb7LggBZWOhkOkEswiK
         WfZSPW8vmhIBpkoaxggX+4Xdr6vwij2IEhj2JAMeSnJrYy3u0y1iVGLFn7wTpRfkKUag
         +Ebiuv2pMq/6jSaIc/wWMTZ27EB4cdEo4OBhaPHz0Iy2tqIYWZtY2I97KPaT6z8rXDGa
         3jyxGOhHBXUS1cBbBXjs7f6N+MsCcprHc4m4n48rlHyKuAujxYkbN3HBoABYfzs7waLw
         XlnQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV77MvGU4/JaXHAeC8IGzbpEgLKyDwGrUyCepT41JcZ+R0PwO6G
	jySQJWf+kZ0scP3sGaqBDeg=
X-Google-Smtp-Source: APXvYqwfbLRjITaVCwfF3jf42pebh2roJYt+aNO3l951hT1ir30CVSPLsS0CxXH8mFrXPpsZXjgLJw==
X-Received: by 2002:a17:90a:fb87:: with SMTP id cp7mr1680537pjb.56.1582849370367;
        Thu, 27 Feb 2020 16:22:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:df41:: with SMTP id h1ls336397pgj.8.gmail; Thu, 27 Feb
 2020 16:22:50 -0800 (PST)
X-Received: by 2002:a62:2b90:: with SMTP id r138mr1703444pfr.102.1582849369956;
        Thu, 27 Feb 2020 16:22:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582849369; cv=none;
        d=google.com; s=arc-20160816;
        b=b77XqEAl8rOMbBRGttNG8SPTd5UfsN9pH11cgRDM91ZLNT57DIU+0kb5JGydPtgHit
         mlUSnmmZmFdBB3QifcTebro5eKIBXQgPkBkAsP49KtZ/kqwc5dlibDrYro6EnkQ6ea5+
         iC1RZ47hFqGjkCUC5geceseXkq3lzHK6z0fOykdFD5ulOq0nFo4wKygq9aWU0C6d9vOp
         eRnqwfT04lrKPdAHygZIqlX5qFv87qiXwKu1bFiqiVO/pjYdH6amiCUW2/Fi0TXdeB+B
         uW/uCY4gwP0szYctObrmCe4wrk1LVE9Txlb7CeqC4ck/BTyN04P8cN3oFfEPh2g2HWfA
         Xbzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=oFQSSd8joQB26Yle3LRphyYOwCqM8lXqrwgR7KUB2ZM=;
        b=eNWqkjppDk2rT4amN9P7FQAIwwHpu9lntatO6LEn5X8G5C2mTAFM8M0VJLf2h93kwv
         lT8SlWoYkJHDK1LwLbChslRTVge2kiDJIj19XEl6zXs36qMGSo52bOSaJcC/ykrfD/u3
         D2aYw5QSPdhaODQwv1oGK4NPMOK3Z+Xe4VV91CPcQ10MDch/YVncsavRYoau85Z1v33N
         /NxOHo6IN3/MPGCOsp/Lb9rdFBoM7yjVm4UJBsyKh86e3Kgk04PzDh+z3ACwtvIEhaNm
         P2gC1b/FSqwsDJ82AQuqPaG951Os3eD3HO6v2y2zvcO75X6+mrVDIRvpT/3PIc4/Mm/a
         v79w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=nHZ4Y7Yb;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id o125si45728pgo.3.2020.02.27.16.22.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Feb 2020 16:22:49 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id x185so732244pfc.5
        for <clang-built-linux@googlegroups.com>; Thu, 27 Feb 2020 16:22:49 -0800 (PST)
X-Received: by 2002:a63:5713:: with SMTP id l19mr1913060pgb.216.1582849369348;
        Thu, 27 Feb 2020 16:22:49 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id h5sm7577879pgi.28.2020.02.27.16.22.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Feb 2020 16:22:48 -0800 (PST)
From: Kees Cook <keescook@chromium.org>
To: Borislav Petkov <bp@suse.de>
Cc: Kees Cook <keescook@chromium.org>,
	"H.J. Lu" <hjl.tools@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Masahiro Yamada <masahiroy@kernel.org>,
	x86@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-arch@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: [PATCH 4/9] x86/boot: Warn on orphan section placement
Date: Thu, 27 Feb 2020 16:22:39 -0800
Message-Id: <20200228002244.15240-5-keescook@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200228002244.15240-1-keescook@chromium.org>
References: <20200228002244.15240-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=nHZ4Y7Yb;       spf=pass
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

We don't want to depend on the linker's orphan section placement
heuristics as these can vary between linkers, and may change between
versions. All sections need to be explicitly named in the linker
script.

Add the common debugging sections. Discard the unused note, rel, plt,
dyn, and hash sections that are not needed in the compressed vmlinux.
Disable .eh_frame generation in the linker and enable orphan section
warnings.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/x86/boot/compressed/Makefile      |  3 ++-
 arch/x86/boot/compressed/vmlinux.lds.S | 13 +++++++++++++
 2 files changed, 15 insertions(+), 1 deletion(-)

diff --git a/arch/x86/boot/compressed/Makefile b/arch/x86/boot/compressed/Makefile
index c33111341325..e0ea6b0924e8 100644
--- a/arch/x86/boot/compressed/Makefile
+++ b/arch/x86/boot/compressed/Makefile
@@ -46,6 +46,7 @@ GCOV_PROFILE := n
 UBSAN_SANITIZE :=n
 
 KBUILD_LDFLAGS := -m elf_$(UTS_MACHINE)
+KBUILD_LDFLAGS += --no-ld-generated-unwind-info
 # Compressed kernel should be built as PIE since it may be loaded at any
 # address by the bootloader.
 ifeq ($(CONFIG_X86_32),y)
@@ -57,7 +58,7 @@ else
 KBUILD_LDFLAGS += $(shell $(LD) --help 2>&1 | grep -q "\-z noreloc-overflow" \
 	&& echo "-z noreloc-overflow -pie --no-dynamic-linker")
 endif
-LDFLAGS_vmlinux := -T
+LDFLAGS_vmlinux := --orphan-handling=warn -T
 
 hostprogs	:= mkpiggy
 HOST_EXTRACFLAGS += -I$(srctree)/tools/include
diff --git a/arch/x86/boot/compressed/vmlinux.lds.S b/arch/x86/boot/compressed/vmlinux.lds.S
index 508cfa6828c5..b5406a8cebe0 100644
--- a/arch/x86/boot/compressed/vmlinux.lds.S
+++ b/arch/x86/boot/compressed/vmlinux.lds.S
@@ -73,4 +73,17 @@ SECTIONS
 #endif
 	. = ALIGN(PAGE_SIZE);	/* keep ZO size page aligned */
 	_end = .;
+
+	STABS_DEBUG
+	DWARF_DEBUG
+
+	DISCARDS
+	/DISCARD/ : {
+		*(.note.*)
+		*(.rela.*) *(.rela_*)
+		*(.rel.*) *(.rel_*)
+		*(.plt) *(.plt.*)
+		*(.dyn*)
+		*(.hash) *(.gnu.hash)
+	}
 }
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200228002244.15240-5-keescook%40chromium.org.
