Return-Path: <clang-built-linux+bncBDYJPJO25UGBB74B5SEAMGQEEQOGKJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 13F793EE0CD
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 02:21:21 +0200 (CEST)
Received: by mail-oi1-x23b.google.com with SMTP id t42-20020a05680815aab0290267a116f6b3sf7254723oiw.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 17:21:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629159680; cv=pass;
        d=google.com; s=arc-20160816;
        b=o2v9INAcDf4XSS2/6RbvnKKzZB9FKtJfRALAeBFLYV0AVdhMEQ4yieoBQ0jdBxSqu/
         ZAYioJgqRZCTQbOkZnjpdnULLk3TAD3hBCieLJc4NU593oJ31d8ElRE3GhHQeLnFVGJ/
         QnghA+cj5gItEspht6NOMv3NeltcUVFsxaoSM971KSHiMqKOx0R/3ANIDQt+tU43Vjdr
         +jkhnikMmSjj2Eg3aYHdd8+MXIY1nZEQHygPPU8o4Ohu2Yd8Y9AR66HWWvV/APe+s8ZP
         wgFHKBfmhUuCQ3GWb3SvO1v0RlONNEcH3VRE5vFKON64sdg0aLfUAgVlvOilSm4b4rKI
         N6ng==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=/1D8iRzujJSzfDDnOty+4RD9rQcuByyc/fKHNZ3TsTY=;
        b=aiL2ipPPMZs/IeoXUrS89X1WSRzvFXgrTSdgt9Tp09B9hyHYf8WjhDrNDoIHx4GJhS
         b2v/YGfoxkkRQohU05gXHOgl07eYmHCMzaPzrVpiW0OjsVc2K3pb21Lvp8Lp6gYZbl9f
         nXbco3rJxhy4+k1BE9FY5aVS7rkS656cBz8oywA0hpHyTCvvv2SU44UNTJ4BhD21CkpO
         mM0Ras7MZEVY7gPtLmm+S1uNPmC04WRcMFxbjTYclRl/q6nDT7GxmnfAQE9IxpWYPqLD
         qT3o8bP5GLZp59vudDblYwXoaOMMWGvrsQLt2cMbSDudH5M1jGJ2LxCHxbsM9AX9aNMT
         4UMQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TarIsOJv;
       spf=pass (google.com: domain of 3_wabyqwkahwsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3_wAbYQwKAHwsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/1D8iRzujJSzfDDnOty+4RD9rQcuByyc/fKHNZ3TsTY=;
        b=k7be0EDZ06Ew94+J4p5c6d6D6LKKJ48h+z1vFSa2oF/b97XHp+D+HJRh30FjTYsYC5
         PufXNMn3UMpfgwhjZ4p0nkGDwuUScfRO1/P12hIRBNnVj+5ZWi5hKybE5o5rSCTAC4t9
         TheRVGnboak057DmikjPNc4Bs9Wxu6HX/PAj8l3USY0tjFbahMQkK/d9r4FX3fbwtq9+
         aR6Ab7Re7zM03OGzG9djfjyHhd+Zmm4asEznv9zE/E3UFV/WPL3BX9kJTs0Yegys7EJz
         Kg9yBfDLhpOg8pXccQJS6fub94+3q6oGdCLXwZW65xl8ICIbwVjbTf5ui3/w/aZuS2V1
         lBjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/1D8iRzujJSzfDDnOty+4RD9rQcuByyc/fKHNZ3TsTY=;
        b=cLfS/CS+VfueV6Uc08SdDEDxTfOXNihcXchZIvkiVNsyDVGhfXAEFJHI1pXKpqEyMe
         +8yhnhtwae9D/hRFYt+EaY191TtRqhF/f5cjkZRN8PobM2uUBHvcew8BHU6X/sK3PwWq
         WzOsYWd/hYifn7N95SuzkaEKzBJdp/vF9d6XNv7EUlSz4V7W4O82jw5Bhostjl75TAVk
         ny/Gn4IdNtRZ5f97gJKZqcjUMbPIZlkANp0sHpQDQ+PoYuIWzeOa6igYNbKEt9xDpUM2
         wY490yVFpFgg3etAwgWl4qARy6z6rfppEbU/FAXkuNHIDf9qaNTsfuMXlvhm02TRS7Qs
         DWtw==
X-Gm-Message-State: AOAM531u+dnBark78J2/nCGXOipD83/R+VsOqkPiTL5DD0kInu1EF+11
	lYZiTBXRM5BP/vk9VgHfmoc=
X-Google-Smtp-Source: ABdhPJxEaKeYgZYMIH/ZeESlXCg8MbwiYM+s0e5HfCz9xoR/Qtb2uDv80lhLT9mMJw1w8bbqy4G9aA==
X-Received: by 2002:aca:2116:: with SMTP id 22mr374621oiz.170.1629159679989;
        Mon, 16 Aug 2021 17:21:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:1509:: with SMTP id u9ls61194oiw.6.gmail; Mon, 16
 Aug 2021 17:21:19 -0700 (PDT)
X-Received: by 2002:a05:6808:1301:: with SMTP id y1mr377520oiv.156.1629159679598;
        Mon, 16 Aug 2021 17:21:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629159679; cv=none;
        d=google.com; s=arc-20160816;
        b=zT+xVvA4BQzUch5HK9JN96ya46hVABiz/anBvkGpw0JWPRXSt4zEYd7sf9DaIkzhJ+
         txwpYmlsyVUNqMxaPcBwgL1aaILdmtEfiC5mtlCCw6dWppWa1dP7tce6bywXVNqiYiSt
         ur5vt0PqbnnOdLJ/8zqBk3t2JibJypTFTI5h2kDkkg5tzkoY2xrnVFT4WUd/Yw1wjrbO
         lfc3HS1zTjN+mEmxETQOcNLSqZkx7AvgA9HSuMk4iYHsR7b+wtiAJWjfAf2PQ3Gx3fsd
         Lut8GmBZfi2DKF+UmHimlQdQiQgJWZcppuwhmLV5VqATApxsBZn6/UajX1yTpoq2AIJW
         oUPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=0flG7tBXqwB6ZGV3wjc6S5xzmJOwRAtpip9gnXv+kK8=;
        b=tKI512XoZOQcGTLNM2FHCE44Ic/vUoBRQLO1O3wsr6HDqoJxQ/YlUamJnb2aHgFvz1
         ZlWGqa80MCH5sq4WRACIDVQzsmqI1eJ9k0KcqxAvdSRcjsoot1xqXnxi/pQPIbi0Ppy4
         PksQBsBnXRVAWx7QIMKmZWKzjYVzb7tT9gjwVXp47s+duQGs82n1LZswKeWujlFGwiKG
         uYnIbJilCcwsX10D4Hm4pXWPdsZ6MfUadtVqJuQ6KzTtzjMOWromBMSJGYr6xG4XClOP
         6f08jri8YP+XKC1zeHwa1UeiSrFFXxgBxC9nayHwcnvBX1HvmG66vgvnOLpx1KCZkgKR
         wZ+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TarIsOJv;
       spf=pass (google.com: domain of 3_wabyqwkahwsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3_wAbYQwKAHwsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id 72si18931otu.2.2021.08.16.17.21.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Aug 2021 17:21:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3_wabyqwkahwsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id d69-20020a25e6480000b02904f4a117bd74so18598745ybh.17
        for <clang-built-linux@googlegroups.com>; Mon, 16 Aug 2021 17:21:19 -0700 (PDT)
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:478:6e44:5cf7:fcde])
 (user=ndesaulniers job=sendgmr) by 2002:a25:7ac6:: with SMTP id
 v189mr870163ybc.485.1629159679127; Mon, 16 Aug 2021 17:21:19 -0700 (PDT)
Date: Mon, 16 Aug 2021 17:21:03 -0700
In-Reply-To: <20210817002109.2736222-1-ndesaulniers@google.com>
Message-Id: <20210817002109.2736222-2-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20210817002109.2736222-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.33.0.rc1.237.g0d66db33f3-goog
Subject: [PATCH 1/7] MIPS: replace cc-option-yn uses with cc-option
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com, 
	Nick Desaulniers <ndesaulniers@google.com>, Thomas Bogendoerfer <tsbogend@alpha.franken.de>, 
	linux-mips@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=TarIsOJv;       spf=pass
 (google.com: domain of 3_wabyqwkahwsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3_wAbYQwKAHwsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com;
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

cc-option-yn can be replaced with cc-option. ie.
Checking for support:
ifeq ($(call cc-option-yn,$(FLAG)),y)
becomes:
ifneq ($(call cc-option,$(FLAG)),)

Checking for lack of support:
ifeq ($(call cc-option-yn,$(FLAG)),n)
becomes:
ifeq ($(call cc-option,$(FLAG)),)

This allows us to pursue removing cc-option-yn.

Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Cc: linux-mips@vger.kernel.org
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 arch/mips/Makefile          | 44 ++++++++++++++++++-------------------
 arch/mips/sgi-ip22/Platform |  4 ++--
 2 files changed, 24 insertions(+), 24 deletions(-)

diff --git a/arch/mips/Makefile b/arch/mips/Makefile
index ea3cd080a1c7..f4b9850f17fa 100644
--- a/arch/mips/Makefile
+++ b/arch/mips/Makefile
@@ -58,9 +58,7 @@ endif
 
 ifdef CONFIG_FUNCTION_GRAPH_TRACER
   ifndef KBUILD_MCOUNT_RA_ADDRESS
-    ifeq ($(call cc-option-yn,-mmcount-ra-address), y)
-      cflags-y += -mmcount-ra-address -DKBUILD_MCOUNT_RA_ADDRESS
-    endif
+    cflags-y += $(call cc-option,-mmcount-ra-address -DKBUILD_MCOUNT_RA_ADDRESS)
   endif
 endif
 cflags-y += $(call cc-option, -mno-check-zero-division)
@@ -208,31 +206,33 @@ cflags-$(CONFIG_CPU_DADDI_WORKAROUNDS)	+= $(call cc-option,-mno-daddi,)
 # been fixed properly.
 mips-cflags				:= $(cflags-y)
 ifeq ($(CONFIG_CPU_HAS_SMARTMIPS),y)
-smartmips-ase				:= $(call cc-option-yn,$(mips-cflags) -msmartmips)
-cflags-$(smartmips-ase)			+= -msmartmips -Wa,--no-warn
+cflags-y	+= $(call cc-option,-msmartmips -Wa$(comma)--no-warn)
 endif
 ifeq ($(CONFIG_CPU_MICROMIPS),y)
-micromips-ase				:= $(call cc-option-yn,$(mips-cflags) -mmicromips)
-cflags-$(micromips-ase)			+= -mmicromips
+cflags-y	+= $(call cc-option,-mmicromips)
 endif
 ifeq ($(CONFIG_CPU_HAS_MSA),y)
-toolchain-msa				:= $(call cc-option-yn,$(mips-cflags) -mhard-float -mfp64 -Wa$(comma)-mmsa)
-cflags-$(toolchain-msa)			+= -DTOOLCHAIN_SUPPORTS_MSA
+ifneq ($(call cc-option,-mhard-float -mfp64 -Wa$(comma)-mmsa),)
+cflags-y	+= -DTOOLCHAIN_SUPPORTS_MSA
+endif
+endif
+ifneq ($(call cc-option,-mvirt),)
+cflags-y	+= -DTOOLCHAIN_SUPPORTS_VIRT
 endif
-toolchain-virt				:= $(call cc-option-yn,$(mips-cflags) -mvirt)
-cflags-$(toolchain-virt)		+= -DTOOLCHAIN_SUPPORTS_VIRT
 # For -mmicromips, use -Wa,-fatal-warnings to catch unsupported -mxpa which
 # only warns
-xpa-cflags-y				:= $(mips-cflags)
-xpa-cflags-$(micromips-ase)		+= -mmicromips -Wa$(comma)-fatal-warnings
-toolchain-xpa				:= $(call cc-option-yn,$(xpa-cflags-y) -mxpa)
-cflags-$(toolchain-xpa)			+= -DTOOLCHAIN_SUPPORTS_XPA
-toolchain-crc				:= $(call cc-option-yn,$(mips-cflags) -Wa$(comma)-mcrc)
-cflags-$(toolchain-crc)			+= -DTOOLCHAIN_SUPPORTS_CRC
-toolchain-dsp				:= $(call cc-option-yn,$(mips-cflags) -Wa$(comma)-mdsp)
-cflags-$(toolchain-dsp)			+= -DTOOLCHAIN_SUPPORTS_DSP
-toolchain-ginv				:= $(call cc-option-yn,$(mips-cflags) -Wa$(comma)-mginv)
-cflags-$(toolchain-ginv)		+= -DTOOLCHAIN_SUPPORTS_GINV
+ifneq ($(call cc-option,-mmicromips -Wa$(comma)-fatal-warnings -mxpa),)
+cflags-y	+= -DTOOLCHAIN_SUPPORTS_XPA
+endif
+ifneq ($(call cc-option,-Wa$(comma)-mcrc),)
+cflags-y	+= -DTOOLCHAIN_SUPPORTS_CRC
+endif
+ifneq ($(call cc-option,-Wa$(comma)-mdsp),)
+cflags-y	+= -DTOOLCHAIN_SUPPORTS_DSP
+endif
+ifneq ($(call cc-option,-Wa$(comma)-mginv),)
+cflags-y	+= -DTOOLCHAIN_SUPPORTS_GINV
+endif
 
 #
 # Firmware support
@@ -277,7 +277,7 @@ ifdef CONFIG_64BIT
     endif
   endif
 
-  ifeq ($(KBUILD_SYM32)$(call cc-option-yn,-msym32), yy)
+  ifeq ($(KBUILD_SYM32)$(call cc-option,-msym32), y-msym32)
     cflags-y += -msym32 -DKBUILD_64BIT_SYM32
   else
     ifeq ($(CONFIG_CPU_DADDI_WORKAROUNDS), y)
diff --git a/arch/mips/sgi-ip22/Platform b/arch/mips/sgi-ip22/Platform
index 62fa30bb959e..fd8f1d01c867 100644
--- a/arch/mips/sgi-ip22/Platform
+++ b/arch/mips/sgi-ip22/Platform
@@ -24,8 +24,8 @@ endif
 # Simplified: what IP22 does at 128MB+ in ksegN, IP28 does at 512MB+ in xkphys
 #
 ifdef CONFIG_SGI_IP28
-  ifeq ($(call cc-option-yn,-march=r10000 -mr10k-cache-barrier=store), n)
-      $(error gcc doesn't support needed option -mr10k-cache-barrier=store)
+  ifeq ($(call cc-option,-march=r10000 -mr10k-cache-barrier=store),)
+      $(error $(CC) doesn't support needed option -mr10k-cache-barrier=store)
   endif
 endif
 cflags-$(CONFIG_SGI_IP28)	+= -mr10k-cache-barrier=store -I$(srctree)/arch/mips/include/asm/mach-ip28
-- 
2.33.0.rc1.237.g0d66db33f3-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210817002109.2736222-2-ndesaulniers%40google.com.
