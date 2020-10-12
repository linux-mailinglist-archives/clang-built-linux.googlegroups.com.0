Return-Path: <clang-built-linux+bncBCS5NQE5SUJBBG43SL6AKGQE3KZI5OY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3b.google.com (mail-vs1-xe3b.google.com [IPv6:2607:f8b0:4864:20::e3b])
	by mail.lfdr.de (Postfix) with ESMTPS id BA5EF28BEB4
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 19:08:44 +0200 (CEST)
Received: by mail-vs1-xe3b.google.com with SMTP id d9sf3710412vsl.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 10:08:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602522523; cv=pass;
        d=google.com; s=arc-20160816;
        b=VqhJzmfgbOEUhsCGB2d4ikgt5W7sT9QCijYCVBAe+1EZVWNN5Wa+4vQvJ7Z8tQJNV+
         VpU91HMLL6l9W+ntTE1e1qzrl82LXmQpRwOlcmuR4LalBITFIiFEzL6D0EsDRcbsHZjc
         8X/SpPk4C4vHcvWGaQkfZ/FVUPrtscK3Z3sxwxxKrObWqGRp68r8YEx/NZMktejECD4c
         9zGHxbHpBRx3gnQghjGWz5Xh4pz5PeeNwlpy9tVnIInIl5wT22Bcpf8rydgdRJXjlqBT
         SUCtTzdvYEIwkYIA1tXbaENj4gkdV+EBXEklxZkTFetWcoN8v0AmdKGGrcF/sTshTJkZ
         o51Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=c8aYKLKnf3OeFQk/AlGsp3Ci+ZoVk9X/zA98h63DNY4=;
        b=XBURz/CUr55/p/07JoWh+5S/qQD7TdHGBG+8neRpgz1UDKEAK0PVjsJuIp/p0D4rHL
         d9V77zup/7nxPXyugw/ENWibob6JDGxKT479JzAB92zPS2t2kQ+3a2veg8mo2VqSNu22
         cqO/yRhvEK4GY5GYJkP6QIxFR7OIVJuLuZe/Dcmq5wOj2P3/G3lRLEU30OEovS1EO0nG
         dTto3uVP5OHIVrALdmBFJo3NaWsMfgYXhOXVjphrvfAuUEn9uMkwOftKp+CDoQ1MxRS7
         6SEFvEiG9OBDFC5M32rc+vnamu6RZHCMW3Xr6gMXC1YbZHM8Mo0DFUg99XiTQ8EbNpny
         RRpQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sYwWJWtr;
       spf=pass (google.com: domain of ujjwalkumar0501@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ujjwalkumar0501@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=c8aYKLKnf3OeFQk/AlGsp3Ci+ZoVk9X/zA98h63DNY4=;
        b=dpkBqNYOs8un3vxX4UtnRKByP1xfJbAPv6czFb95R8VDxk5R1Y06iF5XIKL3vJTHXY
         wpI3jAhKy5MFTxIfvyz4RysREZtI7n33x/E5p33blWFuNo3iOEkUDnj7lrKH2XxJ27RV
         u01y2fSlPkko9Ong8E0OFrhdwRmR4BXAS43HooaJOYLN3tGnp1QoRV2jyvuViD3NI9O6
         qfHcoNJzEC0qcjY7y+nsr0WZOjfLCGwf2qQ4e+uKDO5RYUrkXRHom4JwHWFjt3jpLjT+
         /0o6b2pDWy997gU5uuij23CfJn4an94PB5e6faZE6NzvL/0qExvodelOv+2i0aVMMCFs
         NIuQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=c8aYKLKnf3OeFQk/AlGsp3Ci+ZoVk9X/zA98h63DNY4=;
        b=s7lvVKZDAKATCkuc8mLBoSwgMxRQ7oMODYh0dDsgiDBr2VwXOUrPN1mdhqNarXqzkz
         SpnB1Ha2wvb/uSvBQa/mRx+DwMoJ6u3o1HhW4iU9yOK8M64rIA39Bz9HSjs57N3zc31d
         kNLEAIMCBfhl5P6DDQxbB11lzHNfJIkSdlYZWxJ55ER13s6zdlNxVM1e8ZglEkWVbO67
         VoJHvqnJQCMJKh3eZRq8NRubX86l9BVmYDCnSs+MzGLPWTEfsdA67SzHP5AqKjtyg7nO
         h5Mh3UL9JAt7ORuFiGgXXjqhttl43PTAjnk4hodSVnGL2Zzpy85RCkCnhbBsV4oBeeQB
         xRmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=c8aYKLKnf3OeFQk/AlGsp3Ci+ZoVk9X/zA98h63DNY4=;
        b=kWaMzcGa6lia/E4t3jApHNpukx30lwARuq12/41VPGLYXGhSm7Kf4IjndROLukNE/5
         tZ18DFPuCl2UOH8VSMeaD5IONl6k/abDhU+fOTmQqe0LKybFRxE6q6bGJvDw5P7wf4bz
         wx383d51A+qs4Iwyp+ePN7VD1q2ySEDendYZ/XPEI+5dP7ihCeIagnw/kWcktLsQ90Vc
         dVfDONmTwUKNQw6DBobrH7q1pWXC0berNHG9mXR33i7dLO2tpP3b9uun5lNy76UpkJ6q
         xQJ2E7Qd0zfT6cEu0O38PQ4PKaesjzpveqgYoInLwuFAlaRk/Y0O87aLatVGr00oiVX2
         l6hg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531gMD0LH/cbX0W3Sc/RmYEXQ2OP5NE07njCHdZFDiRupkIsr6Fn
	be8rGqjari95iGNYA9tCF6Q=
X-Google-Smtp-Source: ABdhPJxYOigQHIw7ZfQ2Qvui2k+gtzOetuCIozDVbKiV1/L9fpNI0TCQmhg8bdAcOuPcirTEFGWyhQ==
X-Received: by 2002:a67:d888:: with SMTP id f8mr4219898vsj.44.1602522523726;
        Mon, 12 Oct 2020 10:08:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:e29a:: with SMTP id g26ls999285vsf.6.gmail; Mon, 12 Oct
 2020 10:08:43 -0700 (PDT)
X-Received: by 2002:a67:544:: with SMTP id 65mr14910477vsf.33.1602522523197;
        Mon, 12 Oct 2020 10:08:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602522523; cv=none;
        d=google.com; s=arc-20160816;
        b=Yj0DkE+ZKYQqxrlGbmW81YeRPpvlASb0XrIlkNlYx0KcoZoE1Ivq61xEM7+lXTEWpr
         bNVYKjS0rMgzefafB5fJzSP5LHv1TRJHjEjU2tPGmqH9mB/bbWOidTxzEoculQoY0gYJ
         MrX5brsbfdeeWxZHmEJY/5RjvNu4+uraGpvE/F+oShG/TMc5Mgez6RreVHos5hGdMhvy
         SV9IwFAOdTgM8nspG5ZdMeulGj6iV+n7tQT7tddLdgyL40sDDaPjnido0ZYkEkVBn9JD
         0D5mTxp1ftTmjEcEIEi4yJupNYDOpkskSw1Df1/3RA39PJS7geBVepHJricQerjnjUSr
         YBDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=wsnME6USK8j5YcCHUpqMkEeN66nLTFH7nMQRb2b+NL8=;
        b=kPu66RqY2RS9JaS+gGc+sbXjqNuwEVdkThOi+hDhJBZh7Y7yojotQ6K5haHLsM+7xy
         gIf5PxNZxoMjPBVemeYm4Q/MmHHJ+fvQ/A0uKCXt4REpGDr/mQScVe0OTrpIPHSJ8qQu
         mbHct9gAj497nqId8yQ3lHurQ9wnn290sy50s4r+DMkpTZ9ej3TA5Zd4hQuCUBI5N7Xm
         G4+nk739LvbbSJAvKbTe6UY4TQwiN58xsX6CLvNY/nz7waydvobcBBi9SWlp+dOdAByk
         89f1SQI5NZtVUVmNjsPd2u2U405zsKub4b4V+tKsl7BR1C46S4FwWlbwiR+ZE/Ng36JE
         caJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sYwWJWtr;
       spf=pass (google.com: domain of ujjwalkumar0501@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ujjwalkumar0501@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id e21si1125726vsj.2.2020.10.12.10.08.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Oct 2020 10:08:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of ujjwalkumar0501@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id r10so14903692pgb.10
        for <clang-built-linux@googlegroups.com>; Mon, 12 Oct 2020 10:08:43 -0700 (PDT)
X-Received: by 2002:a17:90b:50a:: with SMTP id r10mr20953225pjz.231.1602522522731;
        Mon, 12 Oct 2020 10:08:42 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:a404:280a:90bd:7a49:dcda:1fb1])
        by smtp.gmail.com with ESMTPSA id x16sm20494337pff.14.2020.10.12.10.08.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Oct 2020 10:08:42 -0700 (PDT)
From: Ujjwal Kumar <ujjwalkumar0501@gmail.com>
To: Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>
Cc: Ujjwal Kumar <ujjwalkumar0501@gmail.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Kees Cook <keescook@chromium.org>,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-ia64@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	linux-kernel-mentees@lists.linuxfoundation.org
Subject: [PATCH v2 1/2] kconfig: use interpreters to invoke scripts
Date: Mon, 12 Oct 2020 22:36:30 +0530
Message-Id: <20201012170631.1241502-2-ujjwalkumar0501@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201012170631.1241502-1-ujjwalkumar0501@gmail.com>
References: <20201012170631.1241502-1-ujjwalkumar0501@gmail.com>
MIME-Version: 1.0
X-Original-Sender: ujjwalkumar0501@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=sYwWJWtr;       spf=pass
 (google.com: domain of ujjwalkumar0501@gmail.com designates
 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ujjwalkumar0501@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

We cannot rely on execute bits to be set on files in the repository.
The build script should use the explicit interpreter when invoking any
script from the repository.

Link: https://lore.kernel.org/lkml/20200830174409.c24c3f67addcce0cea9a9d4c@linux-foundation.org/
Link: https://lore.kernel.org/lkml/202008271102.FEB906C88@keescook/

Suggested-by: Andrew Morton <akpm@linux-foundation.org>
Suggested-by: Kees Cook <keescook@chromium.org>
Suggested-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Signed-off-by: Ujjwal Kumar <ujjwalkumar0501@gmail.com>
---
 init/Kconfig | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/init/Kconfig b/init/Kconfig
index c9446911cf41..8adf3194d26f 100644
--- a/init/Kconfig
+++ b/init/Kconfig
@@ -30,12 +30,12 @@ config CC_IS_GCC

 config GCC_VERSION
 	int
-	default $(shell,$(srctree)/scripts/gcc-version.sh $(CC)) if CC_IS_GCC
+	default $(shell,$(CONFIG_SHELL) $(srctree)/scripts/gcc-version.sh $(CC)) if CC_IS_GCC
 	default 0

 config LD_VERSION
 	int
-	default $(shell,$(LD) --version | $(srctree)/scripts/ld-version.sh)
+	default $(shell,$(LD) --version | $(AWK) -f $(srctree)/scripts/ld-version.sh)

 config CC_IS_CLANG
 	def_bool $(success,echo "$(CC_VERSION_TEXT)" | grep -q clang)
@@ -45,20 +45,20 @@ config LD_IS_LLD

 config CLANG_VERSION
 	int
-	default $(shell,$(srctree)/scripts/clang-version.sh $(CC))
+	default $(shell,$(CONFIG_SHELL) $(srctree)/scripts/clang-version.sh $(CC))

 config CC_CAN_LINK
 	bool
-	default $(success,$(srctree)/scripts/cc-can-link.sh $(CC) $(CLANG_FLAGS) $(m64-flag)) if 64BIT
-	default $(success,$(srctree)/scripts/cc-can-link.sh $(CC) $(CLANG_FLAGS) $(m32-flag))
+	default $(success,$(CONFIG_SHELL) $(srctree)/scripts/cc-can-link.sh $(CC) $(CLANG_FLAGS) $(m64-flag)) if 64BIT
+	default $(success,$(CONFIG_SHELL) $(srctree)/scripts/cc-can-link.sh $(CC) $(CLANG_FLAGS) $(m32-flag))

 config CC_CAN_LINK_STATIC
 	bool
-	default $(success,$(srctree)/scripts/cc-can-link.sh $(CC) $(CLANG_FLAGS) $(m64-flag) -static) if 64BIT
-	default $(success,$(srctree)/scripts/cc-can-link.sh $(CC) $(CLANG_FLAGS) $(m32-flag) -static)
+	default $(success,$(CONFIG_SHELL) $(srctree)/scripts/cc-can-link.sh $(CC) $(CLANG_FLAGS) $(m64-flag) -static) if 64BIT
+	default $(success,$(CONFIG_SHELL) $(srctree)/scripts/cc-can-link.sh $(CC) $(CLANG_FLAGS) $(m32-flag) -static)

 config CC_HAS_ASM_GOTO
-	def_bool $(success,$(srctree)/scripts/gcc-goto.sh $(CC))
+	def_bool $(success,$(CONFIG_SHELL) $(srctree)/scripts/gcc-goto.sh $(CC))

 config CC_HAS_ASM_GOTO_OUTPUT
 	depends on CC_HAS_ASM_GOTO
--
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201012170631.1241502-2-ujjwalkumar0501%40gmail.com.
