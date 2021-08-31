Return-Path: <clang-built-linux+bncBDP5FWOTVEGRBTH7XCEQMGQEOVH3KQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 021323FCA09
	for <lists+clang-built-linux@lfdr.de>; Tue, 31 Aug 2021 16:42:22 +0200 (CEST)
Received: by mail-pl1-x639.google.com with SMTP id z3-20020a170902ee0300b00138918cbccesf2587635plb.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 31 Aug 2021 07:42:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630420940; cv=pass;
        d=google.com; s=arc-20160816;
        b=f+DWb1jepRSa04dt8lmfcoorRkeYtoDxcYtIfwmCLI61QJkqHcRhn1pjLzpozR7Sox
         bERvo1QWZ6eIEY9JZLpnFD49YQIyU8J1PTYZTWP0XD8Ygp95C0lCcQOjiCowXYjVK/r+
         h7V6hlEPU7DKGHWA2YxIuzaXiEzJlDTET2EqWS6xQ1W2PCRBMxjFp2hmcTC0BqOhS7Pq
         HosnypGsT2ucNxg0P4Sy/sIUuVxOfm0w1VvlT0CZ25kzku7Uqb/KB+CeSJUuble4hxVX
         eOuR6KyyAu5YyKzXgU+uYoUdP1hiMeL0EqY3GuyHiPZbArOMZmQPsHGJLrecV1GPvkx8
         GSYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=9JU/7afMGM6Qhlp5hkf+Ys23c42DJthIIY0iFx+I5Mk=;
        b=XHv+aw3sdlyU8EEkuyD8EgHdtifXfPQbVXFoTu0D6Zq0rgs3xqVPW1jFgKkmgAz3Wq
         ijJ7rhD+dYibUEhksMrlpnPEJNkdpnnePiOMCb7HqGDzwP22h6yTLbzUF49JGudvP1Ch
         XRFi3O2QIzgVEGyslWSkJeAdFU6US0LeqxJvGWDsfA571dXWezkDQGaItFP9Qkyp3Omy
         5q3iBls2CicFMBTS006K52SPVa+zMeRijdXaWYLvJppDQLkmAuoTm/7Ieg6FcGwhBWmC
         Kzvd12yKohIupeTU7f3B2k2umLKwZuBBDxvN6wQWfyDCdafeEmisyr6MvzUl9oU2h7y7
         HNGQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of alexandr.lobakin@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=alexandr.lobakin@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9JU/7afMGM6Qhlp5hkf+Ys23c42DJthIIY0iFx+I5Mk=;
        b=YYVoCwX4awGKBfzWoOXxEZjN94PV5hBO28noK0FAftxobiBzxUTisJIKEfkzCJjMzs
         +8zv8yEJK62FQXqPKYGb3dXaNHsxt5EA0wCFOlRh1r0tSShJ7yFoYqDqHoL9mY8yicLB
         egfrYjrHNC2Kv/1XJEKTF47EevrMxcytb/mIRSOkvhUE5Hou+lRcKen7amI+tDWxIUwD
         1y8e/KUq4xgge7yidqHXfhdbP7nO/sly1SGDxjqX5iYwg3XU0XakD0VQBbjpOT/vXHOS
         CATcQBdXiM3hTGW/mUTix4nINITHuQ0cKwpUTLDXzM224rWF+uxGQ7AfI+T9V2MCs073
         zPmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9JU/7afMGM6Qhlp5hkf+Ys23c42DJthIIY0iFx+I5Mk=;
        b=Nxprs65V4Pw4+g9pd9KhDAgF7F7ktBYwYE4FzZ7p254HPwiaks38W/R7SjmV338Idd
         C2G9kk6PGa/OEynoGKbRsGBB2XlIhbLWgXRdqeDDLJZCpAPvVvZh5YS9H/jCOE+RS2vL
         L/1KTCyjaDBig7zkBGIsL76XSlIGfZPI8u5kS0nB/bJP+y933h9GkZyHhIkWQOax2Zl4
         GpKbxYeWuUtusehNgMCIDsxjIvianlcoFwgY5ZXe9SFP53CD3T8Jkx8dOvyoctNxAxFF
         ipzf9toXhPZdMjb9bK7uvQM3329NlwBXWoQHsZKKgEdf3rUDqA7vYbGG5WIDkFmYWG4H
         +ncg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Lei12aPvY4+a9M7E5oLCKH/bhkyvC14KY0VkHdl7TyrH5TinN
	+xvT3tSvND5AuzO3GXkrkdc=
X-Google-Smtp-Source: ABdhPJye7vmwWSCBWtLgOOzMdEXGwrYuSQZI2ZfOLBAQIKyO/VSnZda1GXEHebeYoYwblvViH/G6jw==
X-Received: by 2002:a17:90a:ea08:: with SMTP id w8mr5924405pjy.218.1630420940748;
        Tue, 31 Aug 2021 07:42:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:d995:: with SMTP id d21ls1815848pjv.3.canary-gmail;
 Tue, 31 Aug 2021 07:42:20 -0700 (PDT)
X-Received: by 2002:a17:90a:e64e:: with SMTP id ep14mr5714902pjb.113.1630420940255;
        Tue, 31 Aug 2021 07:42:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630420940; cv=none;
        d=google.com; s=arc-20160816;
        b=pRnYxX0vy0SHyGQ3XbBJO8OtLYGVhuIIB5AejDujaElZQbs8M3JTDT44hGkE1Rn/K6
         wl7ZcsFTi64xVLCM6OsduM1SueYsPxsZ2vM3r37l/SmbfrzDVE2gUd8rglENMNCawzps
         p1zf22cLAu0vZNhkfMrZc/cpRRvIPOCjr5W9pm2yOKgb9FfTqXXIyg4qzG6H5GdruaYn
         50p4WP1QOOsk+let3hQMA72M7wiyAMBB8qyF8StPce/tEG/nFHinJiNVGj2MxSp0flqg
         10GjLIfwqjlZBAY1BJeR5QsTy/e7BeGgUjt0BgeujnmARw6ZGjm1E/mY7weoUtuTUFK8
         mH6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=LH0GnqyVw7yHBEdU5gDJD3heSyyiuRzKF0EIqns8BQ8=;
        b=zczrvYjr7pb2sgh8Fz5BqbUHhkDkkO2q5/L0rwblRMKwxy4mHlHpZb2nP66t9nJod6
         ig2+M3+m2SfwPv9N8kSrySnVmObzDnXa/hReBZV70GU0Pz97l/YZ02Iv0GoqCrTkyPHh
         U3q0oOGBVsBSAsVQVRGCymDCKxuaZVHVOVMLbrdTNIKBx1TqRZ7CS9j3haBmKHu+L+Tv
         sxeUu21I/vQgxS2MEM80ogbhXYAgY8GMtlzzLXAm2WnJsV04PHgkw2pjUomZnEhbqU0r
         5piVG9bxpVvgW9DpjWzlzdyCJxXyP05OkFOCGpl9uUMFgTmnkr2ek/KpbHO8rYgWAKMr
         cobA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of alexandr.lobakin@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=alexandr.lobakin@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id r9si890878pls.4.2021.08.31.07.42.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 31 Aug 2021 07:42:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of alexandr.lobakin@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
X-IronPort-AV: E=McAfee;i="6200,9189,10093"; a="205617060"
X-IronPort-AV: E=Sophos;i="5.84,366,1620716400"; 
   d="scan'208";a="205617060"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Aug 2021 07:42:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,366,1620716400"; 
   d="scan'208";a="427495137"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
  by orsmga006.jf.intel.com with ESMTP; 31 Aug 2021 07:42:15 -0700
Received: from alobakin-mobl.ger.corp.intel.com (psmrokox-mobl.ger.corp.intel.com [10.213.6.58])
	by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id 17VEfmfc002209;
	Tue, 31 Aug 2021 15:42:12 +0100
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: linux-hardening@vger.kernel.org
Cc: "Kristen C Accardi" <kristen.c.accardi@intel.com>,
        Kristen Carlson Accardi <kristen@linux.intel.com>,
        Kees Cook <keescook@chromium.org>,
        Masahiro Yamada <masahiroy@kernel.org>,
        "H. Peter Anvin" <hpa@zytor.com>, Jessica Yu <jeyu@kernel.org>,
        Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Marios Pomonis <pomonis@google.com>,
        Sami Tolvanen <samitolvanen@google.com>,
        Tony Luck <tony.luck@intel.com>, Ard Biesheuvel <ardb@kernel.org>,
        Jesse Brandeburg <jesse.brandeburg@intel.com>,
        Lukasz Czapnik <lukasz.czapnik@intel.com>,
        "Marta A Plantykow" <marta.a.plantykow@intel.com>,
        Michal Kubiak <michal.kubiak@intel.com>,
        Michal Swiatkowski <michal.swiatkowski@intel.com>,
        Alexander Lobakin <alexandr.lobakin@intel.com>,
        linux-kbuild@vger.kernel.org, linux-arch@vger.kernel.org,
        linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: [PATCH v6 kspp-next 12/22] linkage: add macros for putting ASM functions into own sections
Date: Tue, 31 Aug 2021 16:41:04 +0200
Message-Id: <20210831144114.154-13-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210831144114.154-1-alexandr.lobakin@intel.com>
References: <20210831144114.154-1-alexandr.lobakin@intel.com>
MIME-Version: 1.0
X-Original-Sender: alexandr.lobakin@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of alexandr.lobakin@intel.com designates 134.134.136.126
 as permitted sender) smtp.mailfrom=alexandr.lobakin@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

With ClangLTO or -ffunction-sections (DCE, FG-KASLR), compiler
places C functions into separate sections by default.
However, this doesn't happen with ASM functions which are still
being placed into .text.
Introduce a pack of macros which generate a new unique section
for the describing function named in the same fashion
(.text.<func_name>).
This will be needed to make input .text section empty to harden
the kernel even more.

Signed-off-by: Alexander Lobakin <alexandr.lobakin@intel.com>
---
 include/linux/linkage.h | 76 +++++++++++++++++++++++++++++++++++++++++
 1 file changed, 76 insertions(+)

diff --git a/include/linux/linkage.h b/include/linux/linkage.h
index dbf8506decca..ef8641a7dc1b 100644
--- a/include/linux/linkage.h
+++ b/include/linux/linkage.h
@@ -355,4 +355,80 @@
 
 #endif /* __ASSEMBLY__ */
 
+/*
+ * Allow ASM symbols to have their own unique sections if they are being
+ * generated by the compiler for C functions (DCE, FG-KASLR, LTO).
+ */
+#if (defined(CONFIG_LD_DEAD_CODE_DATA_ELIMINATION) && !defined(MODULE)) || \
+    (defined(CONFIG_FG_KASLR) && !defined(MODULE)) || \
+    (defined(CONFIG_MODULE_FG_KASLR) && defined(MODULE)) || \
+    (defined(CONFIG_LTO_CLANG))
+
+#define ASM_PUSH_SECTION(name)				\
+	".pushsection .text." #name
+
+#define SYM_TEXT_SECTION(name)				\
+	.pushsection .text.##name
+
+#else /* just .text */
+
+#define ASM_PUSH_SECTION(name)				\
+	".pushsection .text"
+
+#define SYM_TEXT_SECTION(name)				\
+	.pushsection .text
+
+#endif /* just .text */
+
+#ifdef __ASSEMBLY__
+
+#define SYM_TEXT_END_SECTION				\
+	.popsection
+
+#define SYM_FUNC_START_LOCAL_ALIAS_SECTION(name)	\
+	SYM_TEXT_SECTION(name) ASM_NL			\
+	SYM_FUNC_START_LOCAL_ALIAS(name)
+
+#define SYM_FUNC_START_LOCAL_SECTION(name)		\
+	SYM_TEXT_SECTION(name) ASM_NL			\
+	SYM_FUNC_START_LOCAL(name)
+
+#define SYM_FUNC_START_NOALIGN_SECTION(name)		\
+	SYM_TEXT_SECTION(name) ASM_NL			\
+	SYM_FUNC_START_NOALIGN(name)
+
+#define SYM_FUNC_START_WEAK_SECTION(name)		\
+	SYM_TEXT_SECTION(name) ASM_NL			\
+	SYM_FUNC_START_WEAK(name)
+
+#define SYM_FUNC_START_SECTION(name)			\
+	SYM_TEXT_SECTION(name) ASM_NL			\
+	SYM_FUNC_START(name)
+
+#define SYM_CODE_START_LOCAL_NOALIGN_SECTION(name)	\
+	SYM_TEXT_SECTION(name) ASM_NL			\
+	SYM_CODE_START_LOCAL_NOALIGN(name)
+
+#define SYM_CODE_START_NOALIGN_SECTION(name)		\
+	SYM_TEXT_SECTION(name) ASM_NL			\
+	SYM_CODE_START_NOALIGN(name)
+
+#define SYM_CODE_START_SECTION(name)			\
+	SYM_TEXT_SECTION(name) ASM_NL			\
+	SYM_CODE_START(name)
+
+#define SYM_FUNC_END_ALIAS_SECTION(name)		\
+	SYM_FUNC_END_ALIAS(name) ASM_NL			\
+	SYM_TEXT_END_SECTION
+
+#define SYM_FUNC_END_SECTION(name)			\
+	SYM_FUNC_END(name) ASM_NL			\
+	SYM_TEXT_END_SECTION
+
+#define SYM_CODE_END_SECTION(name)			\
+	SYM_CODE_END(name) ASM_NL			\
+	SYM_TEXT_END_SECTION
+
+#endif /* __ASSEMBLY__ */
+
 #endif /* _LINUX_LINKAGE_H */
-- 
2.31.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210831144114.154-13-alexandr.lobakin%40intel.com.
