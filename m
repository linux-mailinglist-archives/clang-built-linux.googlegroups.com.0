Return-Path: <clang-built-linux+bncBDYJPJO25UGBBX6K2GAAMGQEK5N3IDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B731308D8F
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 20:43:28 +0100 (CET)
Received: by mail-pf1-x43b.google.com with SMTP id x206sf6560265pfc.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 11:43:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611949407; cv=pass;
        d=google.com; s=arc-20160816;
        b=a/pwMYuOtrNpSFqcmTFuSfRi70LJ9igl/Fmyfeg+/3m+R8q4QThlqDLwIB22u9ud2q
         kkxUmhcFRldoejzq4SSquuvVj1ph2bsHPPCnQjDqdQoiwo06UQMfmXT/mQU7eNHwXZSD
         5DvIz+LeVSJqhcLfjn+QQ1FrZQzGbUyLrQhN/S2CWfkfx5y3D9HBwvevCi9KlN8ur9Yf
         4GI0/nOSJTT7JWhKkg2mh+TPA77hGu5WjZxX3LX5j14RyGbno3D+b/cQlzJ/3mOD1bT2
         koYQVCwSaczYEaiohyWpHBxKjDh+aI6c5wZY5R68JsNkmgyeEHz9D3p9KYBeiKkyhSt8
         TRIQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=JdBPxUAwATjKdXC0lgHaDVlSs2H69jT3Vex30DD7KiQ=;
        b=gmCTPCqvkth3NBK5hSQjXvx0KtDkyKSbTzU71LWAc/7o0hL4wz/N5NQitocdRoTRD9
         r8pl8UgGLsJEHZXHVuDJBLeTFVQVu3mX35OLvHYEn5jcqco9WJa6IjjF+TLyj3c2Mtzm
         c5GQuvbwYpiyaTC1vo7GZYwCGrMUOxkBsyoGmcH4i4j5kZ3pSQDjTPHvstXEBIX8SO/s
         PSqYmko0+wbhVkM1Ci1YRDielB2jmkjxvsQTyRESsGVwCUqp7f695qRauHvf1WvfAQ1s
         4KUD9RotA4jpXL5YmjLj5JierU33eF5rcuAVlzuMIi9GsxXVfJ5TVdAjbI3JjAA7+wjj
         ajxw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=svdb9knN;
       spf=pass (google.com: domain of 3xwuuyawkaiarhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3XWUUYAwKAIArhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=JdBPxUAwATjKdXC0lgHaDVlSs2H69jT3Vex30DD7KiQ=;
        b=cwEF9YTgMa3Nif+6NLZl9i3w8euA07aWVp/hbclrWTnd0wbpu0HIEMuHm0bbTtx74o
         hibKbhe7sAQfaf+V3MBBGO+yg21TMxEj3hnwTXJcjw2AZ1NkQoqOZu+x7GltryAsLdUT
         CtiR5K9q6jsM8xrf2mHC4ZJzVi/7BtvsDvZtYMXtcIYqOrn7umDBR0BLTN1gxyHXlYny
         f/244ydihySuH/uIle+qUWx0BxQrLCUAgGcOgtbvFUtXn0brjpoNiN3mCdTGqOSNSKRX
         PQKkj+4TfUKO2Dxxiv2jx5XBicssKHs4aYtdXSasWzBExHSSdWnPgUnJlyGWDMKpFEfH
         QbGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JdBPxUAwATjKdXC0lgHaDVlSs2H69jT3Vex30DD7KiQ=;
        b=rbHPOJxsgsNmExrRfsGenjwXJ1H0AyUZN6kWQ4LHkmECwmbmlk2WJyohuFfDjSZhff
         EiWOQsS0K/bwfuSuTle4cVNL2Ci8AjAim/qHCO85R5AuSZtSjZ83YlIDvDkm3WBxCeHt
         ViGHZ6rp68804M4jG4GACgwNQEWVKnsTYolEgkLYdUDtTYGyzumOcbt0emdIlafVrsBG
         eybDO/VFAl85N/QVBfFgpVd2BfO+iQTYnZE1UXZsSrEPcdy0hgj3cJ933uKAbL3DdMNC
         ymGPbEh389o/TEfFORZ2hlU3brLCbzJBLYyXaekw1ivwERFjoz+XYzT9aW2w2InvQ02k
         BOKw==
X-Gm-Message-State: AOAM532iQJWOV8UhW/co0sJNyUvz48nyHisxQAFAvoa/IJYAnf03kaDd
	6uUoa8do+bsyCfqwy8R8VlY=
X-Google-Smtp-Source: ABdhPJz4F3xbffpPS/q6oQJ6+TcOFcopX0UNTc6RHLQjNUEog3yhRIw381z9+8kEZlpI9nwRzBsBfw==
X-Received: by 2002:a63:c441:: with SMTP id m1mr6076599pgg.353.1611949407164;
        Fri, 29 Jan 2021 11:43:27 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:3583:: with SMTP id c125ls4019474pfa.2.gmail; Fri, 29
 Jan 2021 11:43:26 -0800 (PST)
X-Received: by 2002:a63:e50:: with SMTP id 16mr6164420pgo.74.1611949406540;
        Fri, 29 Jan 2021 11:43:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611949406; cv=none;
        d=google.com; s=arc-20160816;
        b=s8klHKc5ocbB1FhLPBIPE2OQYDS6JLAUsx+4drkmhiZqrewxbxR4VlPQdnNwm4fX7W
         cX6wU1DHcz2QjxYWr/J7uLp6lh0FS9fG3qQ11rACcr2gubD4kAdvxNSEHGUatzGmU7ov
         uw/YvP9NXAgjoedvLtJ4riMDPH/RZkrHdLyfczmT7gAZhio++JA/Wl+uGYKs7Ynb5Gva
         iE9QoNWYnXlPycmKyUK2b27rzHNLm62r5tPnzPfHlqZ96lkDwLjbffpsMTy4mj5Y/yQ3
         gLkynidNbzx23bUCJlbkFNQhFMEv9enoqSci0WwFh0oVtsx8BVsC3jHlHUdPZWBx+EZk
         mH3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=T0BCD++IafOESsvir6N/Nl3Poh+QbVCsSZz/sfNR8xA=;
        b=BSQ29/nq+KLY9wF9sNl/GzuJjnkEf8X98fjK2Sj8I6Bz1RfJyl+Co+TvLeIbB0EYOl
         Tf89sKd+dKfvqxP4qOujs4DmyXdX3TvfL0pDUo9b2yznRy7XV2SJVtVnvrYP9gGQYjQJ
         az06EBTKpJZp7Rl273vULn9HplsvfMveSCj5LqKX++6Ntq4logBqKNCw0EFa/jbD/oR+
         UeY4D/9rPfiroVADSWO7N1W0gslapwVumoxNcu3H1NU2NpxpxB0oSRVU9VAZXYb1TQnt
         Wk5o5kq6k8gUTMZusH/SU8EcL3HXpbIi/eRVVyTF5PyR3o3/x+RI2LqQDwE4inOXQUOk
         lhIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=svdb9knN;
       spf=pass (google.com: domain of 3xwuuyawkaiarhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3XWUUYAwKAIArhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x74a.google.com (mail-qk1-x74a.google.com. [2607:f8b0:4864:20::74a])
        by gmr-mx.google.com with ESMTPS id r142si568475pfr.0.2021.01.29.11.43.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Jan 2021 11:43:26 -0800 (PST)
Received-SPF: pass (google.com: domain of 3xwuuyawkaiarhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) client-ip=2607:f8b0:4864:20::74a;
Received: by mail-qk1-x74a.google.com with SMTP id 70so7909070qkh.4
        for <clang-built-linux@googlegroups.com>; Fri, 29 Jan 2021 11:43:26 -0800 (PST)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a05:6214:3f0:: with SMTP id
 cf16mr5289648qvb.25.1611949405727; Fri, 29 Jan 2021 11:43:25 -0800 (PST)
Date: Fri, 29 Jan 2021 11:43:17 -0800
In-Reply-To: <20210129194318.2125748-1-ndesaulniers@google.com>
Message-Id: <20210129194318.2125748-2-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20210129194318.2125748-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.30.0.365.g02bc693789-goog
Subject: [PATCH v6 1/2] Kbuild: make DWARF version a choice
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, linux-kbuild@vger.kernel.org, 
	linux-arch@vger.kernel.org, Jakub Jelinek <jakub@redhat.com>, 
	Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, Nick Clifton <nickc@redhat.com>, 
	Yonghong Song <yhs@fb.com>, Jiri Olsa <jolsa@kernel.org>, Andrii Nakryiko <andrii@kernel.org>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Arvind Sankar <nivedita@alum.mit.edu>, Nathan Chancellor <nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=svdb9knN;       spf=pass
 (google.com: domain of 3xwuuyawkaiarhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3XWUUYAwKAIArhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

Modifies CONFIG_DEBUG_INFO_DWARF4 to be a member of a choice. Adds an
explicit CONFIG_DEBUG_INFO_DWARF2, which is the default. Does so in a
way that's forward compatible with existing configs, and makes adding
future versions more straightforward.

Suggested-by: Arvind Sankar <nivedita@alum.mit.edu>
Suggested-by: Fangrui Song <maskray@google.com>
Suggested-by: Nathan Chancellor <nathan@kernel.org>
Suggested-by: Masahiro Yamada <masahiroy@kernel.org>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 Makefile          |  6 +++---
 lib/Kconfig.debug | 21 ++++++++++++++++-----
 2 files changed, 19 insertions(+), 8 deletions(-)

diff --git a/Makefile b/Makefile
index 95ab9856f357..20141cd9319e 100644
--- a/Makefile
+++ b/Makefile
@@ -830,9 +830,9 @@ ifneq ($(LLVM_IAS),1)
 KBUILD_AFLAGS	+= -Wa,-gdwarf-2
 endif
 
-ifdef CONFIG_DEBUG_INFO_DWARF4
-DEBUG_CFLAGS	+= -gdwarf-4
-endif
+dwarf-version-$(CONFIG_DEBUG_INFO_DWARF2) := 2
+dwarf-version-$(CONFIG_DEBUG_INFO_DWARF4) := 4
+DEBUG_CFLAGS	+= -gdwarf-$(dwarf-version-y)
 
 ifdef CONFIG_DEBUG_INFO_REDUCED
 DEBUG_CFLAGS	+= $(call cc-option, -femit-struct-debug-baseonly) \
diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
index e906ea906cb7..1850728b23e6 100644
--- a/lib/Kconfig.debug
+++ b/lib/Kconfig.debug
@@ -256,13 +256,24 @@ config DEBUG_INFO_SPLIT
 	  to know about the .dwo files and include them.
 	  Incompatible with older versions of ccache.
 
+choice
+	prompt "DWARF version"
+	help
+	  Which version of DWARF debug info to emit.
+
+config DEBUG_INFO_DWARF2
+	bool "Generate DWARF Version 2 debuginfo"
+	help
+	  Generate DWARF v2 debug info.
+
 config DEBUG_INFO_DWARF4
-	bool "Generate dwarf4 debuginfo"
+	bool "Generate DWARF Version 4 debuginfo"
 	help
-	  Generate dwarf4 debug info. This requires recent versions
-	  of gcc and gdb. It makes the debug information larger.
-	  But it significantly improves the success of resolving
-	  variables in gdb on optimized code.
+	  Generate DWARF v4 debug info. This requires gcc 4.5+ and gdb 7.0+.
+	  It makes the debug information larger, but it significantly
+	  improves the success of resolving variables in gdb on optimized code.
+
+endchoice # "DWARF version"
 
 config DEBUG_INFO_BTF
 	bool "Generate BTF typeinfo"
-- 
2.30.0.365.g02bc693789-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210129194318.2125748-2-ndesaulniers%40google.com.
