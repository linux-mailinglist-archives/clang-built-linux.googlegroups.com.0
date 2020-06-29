Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBSUP433QKGQEL3R4L4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe38.google.com (mail-vs1-xe38.google.com [IPv6:2607:f8b0:4864:20::e38])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B67B20CCB2
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 08:18:51 +0200 (CEST)
Received: by mail-vs1-xe38.google.com with SMTP id o2sf4755269vsq.18
        for <lists+clang-built-linux@lfdr.de>; Sun, 28 Jun 2020 23:18:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593411530; cv=pass;
        d=google.com; s=arc-20160816;
        b=amvxj7UfPNQAnCbYuoF4+ISLzvowAhGOrFDEYG1wk2G/v4DETQNSmb9faJGl5D2iae
         lfdMAwX5A/9X8BMHIdCOxCkCZXml7x+gdsj1KUaklFeO5jjRwynsqkBf8oF0NnZUg1nC
         CAtl8oORljGLaztmtwgl1RgvfLFy3jAzuzRYiHoQqjndhtCf3ehGs1Qtduv/sD1g22T9
         ldpqUzkQ4QigIqa5tlSF+LhHlRYzijaw/xbiuVKaEsSd7/IkEaDA9Ib3Z4oSaE+EqDoY
         bk8keDW0JLU2yPD0bDRSS3RBkXCkUxoXHRd5Baa9edwg9fKYzX8qxfi7fgJoWrKsqO3S
         +WLQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=p9eWRPB0NHW8PwZ+OJTb7mepxltOhhiA/dUH6rPfrtc=;
        b=L9PxqVFKR7ihLhE81zYsUS1AbUABCrwRoWyUXPxxhvi+WxUlXCzs3Bq9v34hyxRK4T
         BA1/67yq4yxOQKGgHO9gpHY5HqTnOHujAco/PxuicXUGpKSvRvc4EVOkZlHSKbuT3SGB
         jtjaWC+tmO9uiNEvvQupibrCVAq9wpTBgF7yIsbjB1D5NQuxbA5/ueG7EpDvoDpK48Si
         sCU/35ZNiD8VA5RGGZUl0d49WJEgiOtIr1wEcZvBlaWJS1/ciazRZWYRj1EQExz/2lpd
         AAb6RA5IJOLD+fb/JZ5svOjXypoydIFnfQb3D1Znc0TAZKhPzduUy6mIHWIbTMOUwq39
         oz8w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=SPivvXbh;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p9eWRPB0NHW8PwZ+OJTb7mepxltOhhiA/dUH6rPfrtc=;
        b=XZxBpGziRjRuayUwn8htB2iaMvBE+A0if09aGBMTHrEIWWSHpbicuulIKMsIF4b6jP
         FZUr0SsR6ew5YV+HonzthtOba3nAEUJyLX4pmnlruT8k3VEbUCH0E2hAjHa8OVM5i8sB
         l7EAnubelEcNUbgl5UD+dF5o74WUuwhIDSTjRYPxrGL/7SEW55YKIVWOrhVTFby8KgLX
         zcH/srTLu4ubUw02vjdKO46HxgjaBjMMVBtv5w+M9XAwLWdZecXOZYvX3niH7JxmDt2n
         2YC/5bdcM/0LqJQ0EFYg3oxDfSgwHbeLaxo3lHHOQr9X/A+QOGL/3UVpRcvfUyIaAY0t
         kfKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p9eWRPB0NHW8PwZ+OJTb7mepxltOhhiA/dUH6rPfrtc=;
        b=NImumMXxPwfC/0WsiYES3j159sCTQuT6f/REIU2C+jAwov+yJQKKzD9Aqm57jgpuk3
         uQ9ADBKpVd0vaSD+jZTCJz94V7pgUOTyW3W1YMaH13zfoDRVF0JbbxYVrifNmrguRc/h
         1FzetSaZHEn8pGPYIOJWPZ4r4NeZk1j7r5eVYGDCM55aDvpnvguAIUhvGRHfOmXecwcx
         bIOiWai94PIzg1qb/DhQWdMyEZdCkncoEhXC0uQpI9a0lOh6TcgD9DLdT9YGdeWs2Ic1
         fbAAxF7M4/IfgZIf4OYhOYcgw70E7hIBU2trX5nWsKABXfaSwQx+DEpRYE5i6sFNtC5U
         D3eQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ZhYDOmy3dp4ihiyELuzF4gt+3nq5EAia8+MmNYQ0r0YpAcnZy
	KMyqQfHKWYn0mhCOF1BrqIQ=
X-Google-Smtp-Source: ABdhPJwAHvCvSaKeExsIIkR6VEWYcH3QAiOJ1V9aDb3AZdKdDBkiGCe9pAvDEPuJJPh8zfiYWF1yvw==
X-Received: by 2002:a1f:344f:: with SMTP id b76mr8991996vka.33.1593411530228;
        Sun, 28 Jun 2020 23:18:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:2912:: with SMTP id p18ls140603vkp.1.gmail; Sun, 28 Jun
 2020 23:18:49 -0700 (PDT)
X-Received: by 2002:a1f:344f:: with SMTP id b76mr8991993vka.33.1593411529897;
        Sun, 28 Jun 2020 23:18:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593411529; cv=none;
        d=google.com; s=arc-20160816;
        b=K4pnI+E7vjm/ivcSsIXxkMK6Pz++vR3DuIfXMBJ8LdngQkos+mLpJqM/7ZEadFNvsM
         DPmcb03IsmacHucyePo3V+lrNq+C+rrUOTzi9yDHWkzYXKu+w4N/jx1DpukFoQj8zft+
         e4WI8emhLkgxv4ohkSpE++tfIvBB+c8IVSxmDGsnfK7HPBbRx7gHK7qqXN9nCx3zohQh
         dEHujBdcrFk1P7CpOjJPeL4uN3r7h9foZsP+diTxwKcsjIP70av8BUpVpeEZrMfryiPk
         I/o7CELz9b7X41nggqgF/7/njrPuvwe+XkeU/gUS1q0cki+Tmfi4R9rX52pMAF6ccA1t
         tQQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Sx4qtxhnzkaAUuvKla0BBnxBLtInQMeed/tdFBRnaf0=;
        b=BXfBtd8TPSU/ilhB3UEUnlJoe2/FsnL68Tof65gylrtMG9L/+jffBPUcr5DWOOraf8
         RX/SXO2xZNfdYIy+CrBdmN60RbFTcDeabL+mD5wBJ7zAnyacQCJ6Fpu3V/fvgDgTwjG4
         VPt6U15aBEqmrfobjbxYw4QdpWrDmf8kOwvgYJFiA1LKmUH6xLEaSxC3PJFGYNP3F32M
         dXSfDI5rv3i5bxzKc3DjY7hCQ6R31iEeSVee2oHlIvSbzuiq/dfgy0R6iQ5Ril1kqgIx
         h/L4DPxUjJx+OUhwVSqOzST0ty65uDaG0jQMekfHKtVeSjme1yrom1yyKOduooGmI1nf
         mQ5w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=SPivvXbh;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id q20si721175uas.1.2020.06.28.23.18.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 28 Jun 2020 23:18:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id s14so6682436plq.6
        for <clang-built-linux@googlegroups.com>; Sun, 28 Jun 2020 23:18:49 -0700 (PDT)
X-Received: by 2002:a17:902:6945:: with SMTP id k5mr11956092plt.336.1593411529540;
        Sun, 28 Jun 2020 23:18:49 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id n65sm32225037pfn.17.2020.06.28.23.18.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Jun 2020 23:18:47 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Will Deacon <will@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	Ard Biesheuvel <ardb@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Atish Patra <atish.patra@wdc.com>,
	linux-efi@vger.kernel.org,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>,
	Borislav Petkov <bp@suse.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	x86@kernel.org,
	clang-built-linux@googlegroups.com,
	linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 06/17] efi/libstub: Disable -mbranch-protection
Date: Sun, 28 Jun 2020 23:18:29 -0700
Message-Id: <20200629061840.4065483-7-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200629061840.4065483-1-keescook@chromium.org>
References: <20200629061840.4065483-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=SPivvXbh;       spf=pass
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

In preparation for adding --orphan-handling=warn to more architectures,
this disables -mbranch-protection, as EFI does not yet support it[1].
This was noticed due to it producing unwanted .note.gnu.property sections
(prefixed with .init due to the objcopy build step).

[1] https://lore.kernel.org/lkml/CAMj1kXHck12juGi=E=P4hWP_8vQhQ+-x3vBMc3TGeRWdQ-XkxQ@mail.gmail.com

Cc: Ard Biesheuvel <ardb@kernel.org>
Cc: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Atish Patra <atish.patra@wdc.com>
Cc: linux-efi@vger.kernel.org
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/firmware/efi/libstub/Makefile | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
index 75daaf20374e..10fa342ef40c 100644
--- a/drivers/firmware/efi/libstub/Makefile
+++ b/drivers/firmware/efi/libstub/Makefile
@@ -18,7 +18,8 @@ cflags-$(CONFIG_X86)		+= -m$(BITS) -D__KERNEL__ \
 # arm64 uses the full KBUILD_CFLAGS so it's necessary to explicitly
 # disable the stackleak plugin
 cflags-$(CONFIG_ARM64)		:= $(subst $(CC_FLAGS_FTRACE),,$(KBUILD_CFLAGS)) \
-				   -fpie $(DISABLE_STACKLEAK_PLUGIN)
+				   -fpie $(DISABLE_STACKLEAK_PLUGIN) \
+				   $(call cc-option,-mbranch-protection=none)
 cflags-$(CONFIG_ARM)		:= $(subst $(CC_FLAGS_FTRACE),,$(KBUILD_CFLAGS)) \
 				   -fno-builtin -fpic \
 				   $(call cc-option,-mno-single-pic-base)
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200629061840.4065483-7-keescook%40chromium.org.
