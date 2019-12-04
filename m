Return-Path: <clang-built-linux+bncBDB63H54RYOBBYHSUDXQKGQEJ4S33NI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43d.google.com (mail-wr1-x43d.google.com [IPv6:2a00:1450:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id F0F6C1137DF
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Dec 2019 23:55:28 +0100 (CET)
Received: by mail-wr1-x43d.google.com with SMTP id h30sf557359wrh.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Dec 2019 14:55:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575500128; cv=pass;
        d=google.com; s=arc-20160816;
        b=TUrD4QRsr3YrZZxTENmw73EIOv3w6N7ZRyiCGbZYoJYzHCkLQhW2iDAQmelwQKOT2Z
         UeyeE/WT+0mVwRAKHN7ZQGGv8tE3sXzPyChTHwu/69mMcc4uGjIax122VLpEvkD8exFs
         Zd2GOWD/ODdQoiRK0AC4WImrN3wQCzMjx3CWaftVFS0Bh+qEiyTNqutXl2RnGtX6lOnT
         VAigvJJNoFSACbWW/eWqigI+Q6VZjI5P/5WOI5wjUB+WTA9I8IeVQAGHPZ1IuHiheZnO
         v6PTfaVWijvZ4qY6F508rfNqz5MpfsI/l+3wres9rXbYOQgb69LqNfBFgABJFp6MYnyd
         zPZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=iM8CWONt2wPm+UQG0ocfh5GO+ge9dfi3zXxmF/1HxYA=;
        b=TOl+iV8iZxZ+dyZWFvOAgvuVVahYV3w+9EYa4YYrA6QqG8E884yBmp2dAIRCm1I8I8
         hFHGyyzGyeuS7usncY/dTP3ebckbVaAeJq/g/m/3MGnmBbCkVUxOD/QUV0DywpUuR+PH
         kOMtI/bwTdMsuAA8BfqNq4eOkb7foUQ/7O7D8EG3xXwSn4h/Hh3las/jdfPps2QHz1rR
         PR6cRygrbXPnajEwlhJzNuQ2yaD+cqE9mP2Bs4YTg5qF/MOmVvXFelRWMw+5FtpjqbUc
         S9+gDUFd3xD54YVKvwhdjoBMq5X1WOiBO4HmeM69CIZeBDDwE51Dzjfo2I5rqi3PCB/L
         oL2w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@golovin.in header.s=mail header.b="jE0Xif/F";
       spf=pass (google.com: domain of dima@golovin.in designates 2a02:6b8:0:801:2::107 as permitted sender) smtp.mailfrom=dima@golovin.in
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iM8CWONt2wPm+UQG0ocfh5GO+ge9dfi3zXxmF/1HxYA=;
        b=WE1qIfEQ11fuEqVplWTy7knruuwUpmF2TOuYqVl3uMW0sN9H1IbGRzzSipAx8FWebi
         JmMyN9EPy64saB6RGfv1JIqUNwho/+4qVl4Y+zkvHXydP2vWECzKB6FEN7Jb7cULh/KR
         LepBY+oc0FLIch2Kea5ZS/Z4/8VLiRqzDDG7vyfrlwC3xfq8TbPyEIsVju8g1t0hvt8X
         oteIkGbbQ+48BeQ0IFBvDknlAvj0GusGmRviX3MiV51tFuHlqwh9fuyVGB+RN9qM4LqB
         io4Xt1iiKpFS4anIs0O90Dv+SXsDmPVAY6wfSeM41mMjfFvbXxm87wu62EK4R71rgoOe
         eE0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=iM8CWONt2wPm+UQG0ocfh5GO+ge9dfi3zXxmF/1HxYA=;
        b=OXzRzzzhjBi/1rAEgdKw/NEGXI3sGLCdV+ps7RqjjS0XHJcUI7Z1iiJf57Ubx+d26j
         dctImGOXJpxoxVBu2nr9MpkyCh8G+KSpjRjysaUfomaJNZ/934EXaiUsDhgdNWsSJrNk
         H/UOcMY4tQ2QDq6dlZ8OWBxoNzNa2FL+8fccpPbYEnAHzo6aqXemDAZ4l3+/DHfGT0TH
         409OwaP2o396cmIjmQ/AzcCOtTdfwohECAairf2LuZvmAj2XR0t3Amkzv9IPl69MIfdZ
         Ww49TUnxCJY9iU5+vXLi9TzgdYBd+3NzUCukOjSDL1uds63227T8z9PS3hPkV9r/egw6
         e8sA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUb7qkfeATuVTzbhTxXnGWWxKWXylPXfa/OWihp1c+c3E9uMNr+
	l0CzFf2UT2O7v+EnuZasAQM=
X-Google-Smtp-Source: APXvYqxlW6E4EVVbv2bAH8rakjcy5Yyc+E82W0Va507YMRNT3zhL6YghVzSox3Pq/1eYuX+ox9coew==
X-Received: by 2002:a05:600c:d5:: with SMTP id u21mr1985714wmm.85.1575500128655;
        Wed, 04 Dec 2019 14:55:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:ed48:: with SMTP id u8ls425360wro.16.gmail; Wed, 04 Dec
 2019 14:55:28 -0800 (PST)
X-Received: by 2002:adf:f1c6:: with SMTP id z6mr6997534wro.279.1575500128148;
        Wed, 04 Dec 2019 14:55:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575500128; cv=none;
        d=google.com; s=arc-20160816;
        b=X7ZKakehOPkxJgtlNymD7VIzkrIGk3fz63zCcyFeu8XQHmpboW1zaY7UYIUdqL9HqV
         b4Y6IC1js/X8g5XZTcqT98JAFM9LSNBwG/9B8qXhiQwURCqXWkuVbokX/CmLypACJZKc
         1Z0bMQLAKRYYUiz6q4QNsTwIxnz1tbxP/A/+MN8EcZRiCiNcrCDxkZAUh8gm/AaOwOXr
         2/JD/2RToGDqJdYD8j/rpMZu3hHoKYLAc00VHDXbZ2CmitH8aWncHVzKufZ1j878Zi8G
         p37T6qB0UarVSvEmy17MB7A92l523/OhNffcfCBmNifM4AhSJBc/btMqrG2R55HtdBGy
         iguA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=A0Ogu7gZHOBeP65sd0xtu2h11UWTeto1NUvcxcTaNio=;
        b=ZhAiJnSG7RvpaEeQdlBTEjN565kLn8NC2dlbHihwsWI7RmDm5oA2gcyhzeJtwc8HdO
         Wf/d5/7Od4K6BAWuRwj/yJFndJxjrHyWKIckj8sBlfnUYzJXwLk5ydw3TVdaQ1xCkln4
         +a7fgHIh9OZ2LQ3QVQHgutup8nCbMYgU1WbES0sbnF+gFp0YNb69eNZoDQqP1KYJ0eIl
         V3y8bUe3Z9lSrsHG+KLDRuKzUGugovuPi9jo8aXcHT7PbBrEoXIzsujz4wC6LltL/slW
         tJjTINZSC83iQWzLZTWDWiEDkfQ7eF/d5X0LO7+FDt1wJs6h+h1pwD3IY5eLiniASZ6B
         m3mg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@golovin.in header.s=mail header.b="jE0Xif/F";
       spf=pass (google.com: domain of dima@golovin.in designates 2a02:6b8:0:801:2::107 as permitted sender) smtp.mailfrom=dima@golovin.in
Received: from forward104j.mail.yandex.net (forward104j.mail.yandex.net. [2a02:6b8:0:801:2::107])
        by gmr-mx.google.com with ESMTPS id a138si447165wmd.1.2019.12.04.14.55.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Dec 2019 14:55:27 -0800 (PST)
Received-SPF: pass (google.com: domain of dima@golovin.in designates 2a02:6b8:0:801:2::107 as permitted sender) client-ip=2a02:6b8:0:801:2::107;
Received: from mxback26o.mail.yandex.net (mxback26o.mail.yandex.net [IPv6:2a02:6b8:0:1a2d::77])
	by forward104j.mail.yandex.net (Yandex) with ESMTP id 100914A0BFF;
	Thu,  5 Dec 2019 01:55:27 +0300 (MSK)
Received: from myt2-416899e1d7e0.qloud-c.yandex.net (myt2-416899e1d7e0.qloud-c.yandex.net [2a02:6b8:c00:1caf:0:640:4168:99e1])
	by mxback26o.mail.yandex.net (mxback/Yandex) with ESMTP id CiCpCrHJu0-tQXeZx5L;
	Thu, 05 Dec 2019 01:55:27 +0300
Received: by myt2-416899e1d7e0.qloud-c.yandex.net (smtp/Yandex) with ESMTPSA id QEcSBchbvx-tOVumEJ1;
	Thu, 05 Dec 2019 01:55:25 +0300
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(Client certificate not present)
From: Dmitry Golovin <dima@golovin.in>
To: 
Cc: Dmitry Golovin <dima@golovin.in>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	"H. Peter Anvin" <hpa@zytor.com>,
	x86@kernel.org,
	Bruce Ashfield <bruce.ashfield@gmail.com>,
	Ross Philipson <ross.philipson@oracle.com>,
	Ross Burton <ross.burton@intel.com>,
	Chao Fan <fanc.fnst@cn.fujitsu.com>,
	Daniel Kiper <daniel.kiper@oracle.com>,
	linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] x86/boot: kbuild: allow readelf executable to be specified
Date: Thu,  5 Dec 2019 00:54:41 +0200
Message-Id: <20191204225446.202981-1-dima@golovin.in>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-Original-Sender: dima@golovin.in
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@golovin.in header.s=mail header.b="jE0Xif/F";       spf=pass
 (google.com: domain of dima@golovin.in designates 2a02:6b8:0:801:2::107 as
 permitted sender) smtp.mailfrom=dima@golovin.in
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

Introduce a new READELF variable to top-level Makefile, so the name of
readelf binary can be specified.

Before this change the name of the binary was hardcoded to
"$(CROSS_COMPILE)readelf" which might not be present for every
toolchain.

This allows to build with LLVM Object Reader by using make parameter
READELF=llvm-readelf.

Link: https://github.com/ClangBuiltLinux/linux/issues/771
Signed-off-by: Dmitry Golovin <dima@golovin.in>
Cc: Nick Desaulniers <ndesaulniers@google.com>
---
 Makefile                          | 3 ++-
 arch/x86/boot/compressed/Makefile | 2 +-
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/Makefile b/Makefile
index 999a197d67d2..612a55d25442 100644
--- a/Makefile
+++ b/Makefile
@@ -414,6 +414,7 @@ STRIP		= $(CROSS_COMPILE)strip
 OBJCOPY		= $(CROSS_COMPILE)objcopy
 OBJDUMP		= $(CROSS_COMPILE)objdump
 OBJSIZE		= $(CROSS_COMPILE)size
+READELF		= $(CROSS_COMPILE)readelf
 PAHOLE		= pahole
 LEX		= flex
 YACC		= bison
@@ -472,7 +473,7 @@ GCC_PLUGINS_CFLAGS :=
 CLANG_FLAGS :=
 
 export ARCH SRCARCH CONFIG_SHELL BASH HOSTCC KBUILD_HOSTCFLAGS CROSS_COMPILE AS LD CC
-export CPP AR NM STRIP OBJCOPY OBJDUMP OBJSIZE PAHOLE LEX YACC AWK INSTALLKERNEL
+export CPP AR NM STRIP OBJCOPY OBJDUMP OBJSIZE READELF PAHOLE LEX YACC AWK INSTALLKERNEL
 export PERL PYTHON PYTHON2 PYTHON3 CHECK CHECKFLAGS MAKE UTS_MACHINE HOSTCXX
 export KBUILD_HOSTCXXFLAGS KBUILD_HOSTLDFLAGS KBUILD_HOSTLDLIBS LDFLAGS_MODULE
 
diff --git a/arch/x86/boot/compressed/Makefile b/arch/x86/boot/compressed/Makefile
index aa976adb7094..1dac210f7d44 100644
--- a/arch/x86/boot/compressed/Makefile
+++ b/arch/x86/boot/compressed/Makefile
@@ -103,7 +103,7 @@ vmlinux-objs-$(CONFIG_EFI_MIXED) += $(obj)/efi_thunk_$(BITS).o
 quiet_cmd_check_data_rel = DATAREL $@
 define cmd_check_data_rel
 	for obj in $(filter %.o,$^); do \
-		${CROSS_COMPILE}readelf -S $$obj | grep -qF .rel.local && { \
+		$(READELF) -S $$obj | grep -qF .rel.local && { \
 			echo "error: $$obj has data relocations!" >&2; \
 			exit 1; \
 		} || true; \
-- 
2.23.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191204225446.202981-1-dima%40golovin.in.
