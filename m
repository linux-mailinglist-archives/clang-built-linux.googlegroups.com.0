Return-Path: <clang-built-linux+bncBCIO53XE7YHBBQH5SH4QKGQEUXIPBYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3c.google.com (mail-vk1-xa3c.google.com [IPv6:2607:f8b0:4864:20::a3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 49F69234C3E
	for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jul 2020 22:27:46 +0200 (CEST)
Received: by mail-vk1-xa3c.google.com with SMTP id b128sf9664827vka.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jul 2020 13:27:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596227265; cv=pass;
        d=google.com; s=arc-20160816;
        b=y0/CS3SeTscCUtzmeQulVbKR2MQbD8Yp9WhpOy5Q7Jw8PxrLb8K7HFO/NL/v3J7XG1
         nRx8UX7PxJkx4KxV4FH4sy61ilkWmNeOpSpyG3QqJKC8ZzSxIEhu3XciFbK65ZqmXwfT
         Kb0RIeWbC5W7N1MhvbLTgcY2qbIptnMT1hY6sMRyXGd1HjC+JqTY9VYXqd5hBEXg/PR4
         jZoHFEjiKUIUp8WtJP6aOrXl+X9CyYVIa0X1+wv6iUHr+O5XDtvZ0qANHpJYSV/7F68+
         4zjhJMk2EczqKLyYan4jr8ljfvRX+FDEwiWSCBjhk3fwiKROrtGu2r+wYV0H5MFS7MxJ
         85Xg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=1nt44JH5OAsKWGm0GeyTTMaIwQAImkciGNdD/rzjLmM=;
        b=mpq9AezOuvV0yZPmf+vPZl6rgyiJBiAuotV+1ZVB3dfD0Quge1CkiqtN7MxO8tYLrx
         kemfpZz6Taj5wfpn5GJTCpKQiEiZeMluTj17Q4vyOCxlf367oleC0Y+4WJmZKKuudTCj
         xfuzf+im35OGBIMUVOeokE+Xp4A/sqRobAmoLCOZPKO238c/knbgch1G9Lj1A8vBC8Y2
         rqboy4aKZHRSDtRXrozQS2RKYAfyueFpbh0V1C2H6BhyRz9n2x5AV6+UxRy3zb2gJsw2
         4FBiyQEit4b2LQB8KwCnpPjwRLuxRT72TsIg/dYkKx/RRjjr35Dz85sAPwyJV+1/UUDQ
         vQfg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.219.66 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1nt44JH5OAsKWGm0GeyTTMaIwQAImkciGNdD/rzjLmM=;
        b=nhyQb+W1Wh4IaPsHgdR1jofH25KCq0JgSAfrglOlzPb91QDu9VTJ5vrwoPpkGylEe9
         WSwMoPJkPFLNqN7CB1rU1iuAGUoNwU2R1FDqOWWX8TshpcVDCZgOsqW6ZTWT+Y3eHNep
         6gfgsGeWvd1XUMq6qbcQ0/bvatT6ZfvmLRoPBz9IFmhVx0sO2hfeZ/NsPjiC1pFi2Iu4
         a7Tlxlmb52JPbvvbAaasgv+0c5RhFRXWApyOaTsHf6YODf4uAsG0lTEC5pBaWxFgeKJi
         sabl1AwBJOSx421kyCAUWi56N0qq01NZhEey5lt1ww2KhreFr+0I+IZGXKPckMWhkTOf
         nS6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1nt44JH5OAsKWGm0GeyTTMaIwQAImkciGNdD/rzjLmM=;
        b=q3a824gN660CrTQNLyw+NlBV9EQJhho2ZWZZhB5d5ca2YVibOcUChkf4ixcQPX5BwZ
         DLpvItBOBPAG9N4i4mPs9BhzPkH2BY1u8RNfCRaYZQU4W1jj/LM4Hgncp/F0HMFuJ+o0
         u1vaYc/frreraRnpBGcn5n8fmyrAGMQl/qowUg593Q+MgK/AhweRVYDBGs2qUnH+jnKF
         5qvtdBBNuTsmaCzbykW1atHBfEpfP3SAeeUvQYwuZ4JT8KT+ZzBJqbAsSYvF7P26PMry
         HJJIYK+JFxwej2NZgiDFmPhQxHzE1tO0j20VHaHAR+aZh9sjJcMpU8yj4+2/1TU02lmt
         sALA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531VjxMx/GKZr8uC1iIA+stgIAlrzZ42G4/s6eL6fYNoeGMzQMG8
	9TfcNcIim1WsK+no8zfrXkc=
X-Google-Smtp-Source: ABdhPJwyhZVjlHb9sHZh4mYnXJx9jOgVhyYsitaGc7Xb84P2MqDCsrDWbBt1MV/NJDPCFNARj+gGuw==
X-Received: by 2002:ac5:c183:: with SMTP id z3mr4244583vkb.74.1596227265055;
        Fri, 31 Jul 2020 13:27:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:2b0c:: with SMTP id e12ls732269uar.9.gmail; Fri, 31 Jul
 2020 13:27:44 -0700 (PDT)
X-Received: by 2002:ab0:1052:: with SMTP id g18mr4321989uab.62.1596227264578;
        Fri, 31 Jul 2020 13:27:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596227264; cv=none;
        d=google.com; s=arc-20160816;
        b=YPcYBOGNLW26vE7tH9Ocf6TcnconhVe7xq6LJVi9Jg0K6BclhOTIbh5iUCMXcpH5iY
         nUmk2vOP7fcb9aGRK1aK5npJcvb2oilZq2dGCy/0vQLBGI0a5488El012XWsPxzY2C7Q
         +kI6Bt5y8Ys2ipTJPjgT7Np5p6ITxNotwYobS5VZSb9c9KZU5OVKOZTSTjRL1BfQKj5P
         6owEYiCHaDbFnmW8iXX35mg1MmZUtDk7h2PIzTGcKdGaUcHIOco718zf1leMzy5N7woy
         GUqXk6iR8f3oO9JKcHf7W12uKYXAbxjUU6tT76XP/30LG6H2P2sHdhfqNK1RPPO/s5gy
         elbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=/qFh9Opkyntlzw0i22olFtyaXhlBJzScI7oKFJf/9uI=;
        b=rq7kuYQKgA5sCi/gjO9KabdLfRc2vj40aCUtbEqpKpKXtkgQw0MwW/JRc1cKpnvtjF
         ybRAzdAmJL3jiprSTiVkfq6wzV11Of2g1EbbujhmuRyl0n5/51v7kW8tkBcazWoaGy+f
         /frKfuI58ogZLVHrmm5wg3PXNcfwObsXSv5Bad+WNxqUOo9EgSK8yfJJSRaXdR9v5Dj1
         C8JlzptcfVIRcapt/ZYZKy6n2eWGUO0MF637f0nUxAGJYPPfGRV3SG+W5C0jwmoN2LAK
         /Bg/gAcXP9F2xIcoEqpE1EWcvLrwv3XqvCnTR+ANrIQxIB9SLVdIyIwA1Dq07A3C+EKZ
         8F6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.219.66 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qv1-f66.google.com (mail-qv1-f66.google.com. [209.85.219.66])
        by gmr-mx.google.com with ESMTPS id l129si641622vkg.2.2020.07.31.13.27.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Jul 2020 13:27:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 209.85.219.66 as permitted sender) client-ip=209.85.219.66;
Received: by mail-qv1-f66.google.com with SMTP id r19so6214194qvw.11
        for <clang-built-linux@googlegroups.com>; Fri, 31 Jul 2020 13:27:44 -0700 (PDT)
X-Received: by 2002:ad4:438e:: with SMTP id s14mr5764504qvr.18.1596227264159;
        Fri, 31 Jul 2020 13:27:44 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id t35sm10607976qth.79.2020.07.31.13.27.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jul 2020 13:27:43 -0700 (PDT)
From: Arvind Sankar <nivedita@alum.mit.edu>
To: Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	"H. Peter Anvin" <hpa@zytor.com>,
	x86@kernel.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Fangrui Song <maskray@google.com>,
	Dmitry Golovin <dima@golovin.in>,
	clang-built-linux@googlegroups.com,
	Ard Biesheuvel <ardb@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Kees Cook <keescook@chromium.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	"H . J . Lu" <hjl@sourceware.org>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v6 4/7] x86/boot: Add .text.* to setup.ld
Date: Fri, 31 Jul 2020 16:27:35 -0400
Message-Id: <20200731202738.2577854-5-nivedita@alum.mit.edu>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200731202738.2577854-1-nivedita@alum.mit.edu>
References: <CA+icZUV2=hj=+9DtbH47wtdE=GM5AZjS1xTgH7PKE+NxsRa2jw@mail.gmail.com>
 <20200731202738.2577854-1-nivedita@alum.mit.edu>
MIME-Version: 1.0
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 209.85.219.66 as
 permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

gcc puts the main function into .text.startup when compiled with -Os (or
-O2). This results in arch/x86/boot/main.c having a .text.startup
section which is currently not included explicitly in the linker script
setup.ld in the same directory.

The BFD linker places this orphan section immediately after .text, so
this still works. However, LLD git, since [1], is choosing to place it
immediately after the .bstext section instead (this is the first code
section). This plays havoc with the section layout that setup.elf
requires to create the setup header, for eg on 64-bit:

    LD      arch/x86/boot/setup.elf
  ld.lld: error: section .text.startup file range overlaps with .header
  >>> .text.startup range is [0x200040, 0x2001FE]
  >>> .header range is [0x2001EF, 0x20026B]

  ld.lld: error: section .header file range overlaps with .bsdata
  >>> .header range is [0x2001EF, 0x20026B]
  >>> .bsdata range is [0x2001FF, 0x200398]

  ld.lld: error: section .bsdata file range overlaps with .entrytext
  >>> .bsdata range is [0x2001FF, 0x200398]
  >>> .entrytext range is [0x20026C, 0x2002D3]

  ld.lld: error: section .text.startup virtual address range overlaps
  with .header
  >>> .text.startup range is [0x40, 0x1FE]
  >>> .header range is [0x1EF, 0x26B]

  ld.lld: error: section .header virtual address range overlaps with
  .bsdata
  >>> .header range is [0x1EF, 0x26B]
  >>> .bsdata range is [0x1FF, 0x398]

  ld.lld: error: section .bsdata virtual address range overlaps with
  .entrytext
  >>> .bsdata range is [0x1FF, 0x398]
  >>> .entrytext range is [0x26C, 0x2D3]

  ld.lld: error: section .text.startup load address range overlaps with
  .header
  >>> .text.startup range is [0x40, 0x1FE]
  >>> .header range is [0x1EF, 0x26B]

  ld.lld: error: section .header load address range overlaps with
  .bsdata
  >>> .header range is [0x1EF, 0x26B]
  >>> .bsdata range is [0x1FF, 0x398]

  ld.lld: error: section .bsdata load address range overlaps with
  .entrytext
  >>> .bsdata range is [0x1FF, 0x398]
  >>> .entrytext range is [0x26C, 0x2D3]

Add .text.* to the .text output section to fix this, and also prevent
any future surprises if the compiler decides to create other such
sections.

[1] https://reviews.llvm.org/D75225

Tested-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
Reviewed-by: Fangrui Song <maskray@google.com>
Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
---
 arch/x86/boot/setup.ld | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/x86/boot/setup.ld b/arch/x86/boot/setup.ld
index 24c95522f231..49546c247ae2 100644
--- a/arch/x86/boot/setup.ld
+++ b/arch/x86/boot/setup.ld
@@ -20,7 +20,7 @@ SECTIONS
 	.initdata	: { *(.initdata) }
 	__end_init = .;
 
-	.text		: { *(.text) }
+	.text		: { *(.text .text.*) }
 	.text32		: { *(.text32) }
 
 	. = ALIGN(16);
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200731202738.2577854-5-nivedita%40alum.mit.edu.
