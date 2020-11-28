Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBLU5RD7AKGQEID4T32Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93d.google.com (mail-ua1-x93d.google.com [IPv6:2607:f8b0:4864:20::93d])
	by mail.lfdr.de (Postfix) with ESMTPS id E31AC2C6F50
	for <lists+clang-built-linux@lfdr.de>; Sat, 28 Nov 2020 09:47:43 +0100 (CET)
Received: by mail-ua1-x93d.google.com with SMTP id b25sf2314566uap.19
        for <lists+clang-built-linux@lfdr.de>; Sat, 28 Nov 2020 00:47:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606553262; cv=pass;
        d=google.com; s=arc-20160816;
        b=OG2R319yyrXpUg8nwGFP3zluC/lze9kTXAIDyI4D+MvivyJE1cuvF+hRFIo+viLsSa
         KPcHFCET6ryQUBpZU6Js5SWx3GdPp4nsFFEPKxBxVHjM20kKWL89TqjCS1RA1jz1jho6
         SUDMUtFRX0LeUAZtX+ksg9o4hKTo57xga21QQpeaDywaY9V0NDaqBddzFpEy47PJon6y
         106Twi83ZCpuTUiXpu+h928dzpS6WHLc9Hx7Fao0auzTMYWvJjLN5kp5y9JejzppNcXr
         8OcLLsBtMyaZgsw/3AdNn6h4Jnq9cnM5n+er70wGgumIXIhIddiuGZJlV78FI+D9VfWM
         BILg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:dkim-filter:sender:dkim-signature;
        bh=HJSIoY/uKjiiRjhAQm9tDWHyfVh5HlNpmr35L6WJpkY=;
        b=fQOCcfeAv+xJUr2FQfTaLZ+idNlh6W1ihx7WRmX7cDk8RKOBe4o+SP/YEOzl9YNWwD
         tX8sNNfx4T9R9YwKijvvRNL5Y+0cnGyUJLQopSKebepeWaoFLN+G05F9GB2S5W6YyTaO
         zq7UM6K4TrxOCC3niFsAeFNU+cRTxLXLxCfdBxdtPX+VUtmHI+xRoy7Y/P7uRjHsMLSh
         yb2wEGji+reQco6veBNiSIs7JS1oAiXdDeGaVZ86Wr0nqDn84SfDgiclkX1QqDDwZa1P
         DXTr0Fac2KzY2k7rFJiyveXIF8vPpS4wssG6vGCho6TDfNgy8oj76PaMJ+EcOa1+pdkh
         OBhw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=SElIFciY;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.75 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HJSIoY/uKjiiRjhAQm9tDWHyfVh5HlNpmr35L6WJpkY=;
        b=G5N28CNoM8P3uallGiJ5n7HG/mbfCtIjIEF9Wt8nfllDBTsJhcAXG8fSYrNEZFnLbv
         EIPWBksnSFHLNZ+FgWRHfD2o4iEMPsruwxwSMtt/OFLd968u3KbPlQV6pByb6x430LQn
         K6/Wm8quUeLqH/r+vG+1V5hwY5XWfh6Rc0RFvXJVW9+Bu+EyhdGVIXc5TkyRlCUD4GEg
         s21A6SCEmsGybt1kbX5DIPj5l70wf6andad6D2JBg3e3mENkQcZ+HPkOjEjcCidXrb4v
         Z0s6D1SO0F/rraB07oWqOvZfketjPeUj6qtmpyfH3wjWDQ06Wng/VuH8CY3JpRrYZGZJ
         vezw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HJSIoY/uKjiiRjhAQm9tDWHyfVh5HlNpmr35L6WJpkY=;
        b=tilX+Ch0ateL+C1dx40AWchsFXggdVU55TDEWRN7WXIfdskVz37Yo0Xppqy7+P3FBE
         oRcVlor2fhMB3Va5K/uHysXXRusc8HFZcxWxRorR7juFPFQclNz7v+8TKjw2nDR9Q80A
         HDvhQtvYluZ8bVhUZx9BiVw4vKttlHWpry2428ODrlA/eX/Cayqh46Tj4abNGiztGH6a
         c3r7UBDHQVlYsuMhAnRsX2Ur573SgE7Vcm8w1VIAZ6GWwyiXBTFMuMfgkejV66CjZC7h
         GVqAYNGtMYd6v4ZBG8ILyOpCWvECZQAe52h3nv1LVRuyWMk84FmKyiiFC/4BAxr/tezS
         GZ6w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5313bFHHYa5Y84+3R115UsS5mAxnbjZNHvi34taNrc8lHJpJS5fs
	pTX5JDUwS6fWBqV/NslBYaA=
X-Google-Smtp-Source: ABdhPJxfsbwhtenJaM1RQ6uRbem/ZCVlbJK2sDap8wHtzRsVBZDfyXMk4a1xyi/ki25m/KGa4bcw5Q==
X-Received: by 2002:a9f:24c7:: with SMTP id 65mr4909676uar.112.1606553262707;
        Sat, 28 Nov 2020 00:47:42 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:1cc3:: with SMTP id c186ls410846vkc.4.gmail; Sat, 28 Nov
 2020 00:47:42 -0800 (PST)
X-Received: by 2002:a1f:fc82:: with SMTP id a124mr9113415vki.14.1606553262296;
        Sat, 28 Nov 2020 00:47:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606553262; cv=none;
        d=google.com; s=arc-20160816;
        b=1CyBKTPfV7GlF53WCkzKUAZeEnufRZ7gK4fBVTMVKDVY5onjiypUNYJdWpYkNXp5+r
         5INRCk0IdMsVjjl9iNt3UUrkqR0e5ALle4WOG5MQQsWglgu3GQvMePUfmK//p1b6vJsK
         84Er+eLfOspDB7A90LSV+QVfOZf3ZpRFeUoV/bcV9TFqFJMSxHPZpHRpGebGEeQqhIVO
         8gLMyczPNgVMf7onoq96pEqViYlZNF9EQIdhOHQp51bqYkWvrdpg4WHjuF7GAYNniheV
         +a8vDHFnXBlBs39UwaXppdsjnXTw/cSqZ54Z6XXRppUzIAeJsjvjBIXc2uprzZHNPPMO
         0SUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature:dkim-filter;
        bh=3ZxQhTM55h3T1rci5XqtW4G9136NvehcsYvGcG3kcgc=;
        b=dWbR+OA+V0Vzrgd0zY29+dC2vT+RmGSd31WhGQClblQe+5HAVYR3tsjuN+KzvqOJM5
         87vfM6hBp1IrF5Ofz1NMxL++KgQHo5AFxVo/xAR3PhRdhieNZ1LGj5MV5XRu2vy0NoF4
         /GWkTUaZ8opiXWTDZb7nN3GiOEGtXyNkE+TGMfuPuiJjsMVaWJxt3ybGarTlacKgod1p
         5MA3x+fU+urTPCcsE8xEn8SskjfeVRYnjuo4XvxnsF7IANKzS7JOWQIxYuox/r4dptH7
         5vCrAXTo6fqG/MeqpxnQi+f2F3S6a9LBSwKgMYU8VX3FFFElE1DrSWHWWutrzkClM0bN
         JxVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=SElIFciY;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.75 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-08.nifty.com (conuserg-08.nifty.com. [210.131.2.75])
        by gmr-mx.google.com with ESMTPS id k67si514495vkg.1.2020.11.28.00.47.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Nov 2020 00:47:42 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.75 as permitted sender) client-ip=210.131.2.75;
Received: from localhost.localdomain (softbank126090211135.bbtec.net [126.90.211.135]) (authenticated)
	by conuserg-08.nifty.com with ESMTP id 0AS8klCf024281;
	Sat, 28 Nov 2020 17:46:47 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-08.nifty.com 0AS8klCf024281
X-Nifty-SrcIP: [126.90.211.135]
From: Masahiro Yamada <masahiroy@kernel.org>
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
        "Jason A. Donenfeld" <Jason@zx2c4.com>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Shuah Khan <shuah@kernel.org>, clang-built-linux@googlegroups.com,
        linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org,
        netdev@vger.kernel.org, wireguard@lists.zx2c4.com
Subject: [PATCH v2] Compiler Attributes: remove CONFIG_ENABLE_MUST_CHECK
Date: Sat, 28 Nov 2020 17:46:39 +0900
Message-Id: <20201128084639.149153-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=SElIFciY;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.75 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

Revert commit cebc04ba9aeb ("add CONFIG_ENABLE_MUST_CHECK").

A lot of warn_unused_result wearings existed in 2006, but until now
they have been fixed thanks to people doing allmodconfig tests.

Our goal is to always enable __must_check where appropriate, so this
CONFIG option is no longer needed.

I see a lot of defconfig (arch/*/configs/*_defconfig) files having:

    # CONFIG_ENABLE_MUST_CHECK is not set

I did not touch them for now since it would be a big churn. If arch
maintainers want to clean them up, please go ahead.

While I was here, I also moved __must_check to compiler_attributes.h
from compiler_types.h

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

Changes in v2:
  - Move __must_check to compiler_attributes.h

 include/linux/compiler_attributes.h                 | 7 +++++++
 include/linux/compiler_types.h                      | 6 ------
 lib/Kconfig.debug                                   | 8 --------
 tools/testing/selftests/wireguard/qemu/debug.config | 1 -
 4 files changed, 7 insertions(+), 15 deletions(-)

diff --git a/include/linux/compiler_attributes.h b/include/linux/compiler_attributes.h
index b2a3f4f641a7..5f3b7edad1a7 100644
--- a/include/linux/compiler_attributes.h
+++ b/include/linux/compiler_attributes.h
@@ -171,6 +171,13 @@
  */
 #define __mode(x)                       __attribute__((__mode__(x)))
 
+/*
+ *   gcc: https://gcc.gnu.org/onlinedocs/gcc/Common-Function-Attributes.html#index-warn_005funused_005fresult-function-attribute
+ * clang: https://clang.llvm.org/docs/AttributeReference.html#nodiscard-warn-unused-result
+ *
+ */
+#define __must_check                    __attribute__((__warn_unused_result__))
+
 /*
  * Optional: only supported since gcc >= 7
  *
diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
index ac3fa37a84f9..7ef20d1a6c28 100644
--- a/include/linux/compiler_types.h
+++ b/include/linux/compiler_types.h
@@ -110,12 +110,6 @@ struct ftrace_likely_data {
 	unsigned long			constant;
 };
 
-#ifdef CONFIG_ENABLE_MUST_CHECK
-#define __must_check		__attribute__((__warn_unused_result__))
-#else
-#define __must_check
-#endif
-
 #if defined(CC_USING_HOTPATCH)
 #define notrace			__attribute__((hotpatch(0, 0)))
 #elif defined(CC_USING_PATCHABLE_FUNCTION_ENTRY)
diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
index c789b39ed527..cb8ef4fd0d02 100644
--- a/lib/Kconfig.debug
+++ b/lib/Kconfig.debug
@@ -286,14 +286,6 @@ config GDB_SCRIPTS
 
 endif # DEBUG_INFO
 
-config ENABLE_MUST_CHECK
-	bool "Enable __must_check logic"
-	default y
-	help
-	  Enable the __must_check logic in the kernel build.  Disable this to
-	  suppress the "warning: ignoring return value of 'foo', declared with
-	  attribute warn_unused_result" messages.
-
 config FRAME_WARN
 	int "Warn for stack frames larger than"
 	range 0 8192
diff --git a/tools/testing/selftests/wireguard/qemu/debug.config b/tools/testing/selftests/wireguard/qemu/debug.config
index b50c2085c1ac..fe07d97df9fa 100644
--- a/tools/testing/selftests/wireguard/qemu/debug.config
+++ b/tools/testing/selftests/wireguard/qemu/debug.config
@@ -1,5 +1,4 @@
 CONFIG_LOCALVERSION="-debug"
-CONFIG_ENABLE_MUST_CHECK=y
 CONFIG_FRAME_POINTER=y
 CONFIG_STACK_VALIDATION=y
 CONFIG_DEBUG_KERNEL=y
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201128084639.149153-1-masahiroy%40kernel.org.
