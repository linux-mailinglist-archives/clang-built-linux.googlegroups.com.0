Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBXF24HZAKGQEDGKUN5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 69842172D07
	for <lists+clang-built-linux@lfdr.de>; Fri, 28 Feb 2020 01:22:54 +0100 (CET)
Received: by mail-oi1-x237.google.com with SMTP id 199sf561537oie.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Feb 2020 16:22:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582849373; cv=pass;
        d=google.com; s=arc-20160816;
        b=FJnbPtmwbcnaJrOQHQ0sIwzbQZSRiMuRLwG40dTqbjMl9MZOdRhIDNTLqDY9BP20gM
         WsZoNx7WzoI4MxVnZz3mSHOe9xTTZQ7M6CjUhiqOLf4ZWSm/VKKHIrZudIKHjROojIqO
         tSNFNVoF2BgqP+eHcxklrx6KaiyCpunPbdG0K7ndiIQpBpgflwH6HlDL6WbSu9Jankgz
         /F3hNbT4srMPYR907+Yko3995CqUi2/dsse9wC/UkdekCwBzEd/2rOFW6HstF4ZyzRID
         RYF43dLNl4tdkSGUg9rva5Fk/y5D5URDoXvp2u/MZhYu9WgJsOzgM6lysq/JYpPN8u2p
         ULjA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=NTlfRd3NrpCzs/lIbYjXga6xlGH/aEUl9+QqkQKvBr8=;
        b=JAP5W0ReFC/hQSJRLqjjaefcfIwBxFAHb80rhHyft5tMSYo7qdm7SyRGXcsgaJTZuj
         m+zBhYaXq4yDWuwrG/d7Xdhg+sf9GM/Sz/Jz0gveH2PQCQKy4PolHOgYFBGfbzwLMLPe
         w+EkvgTgm8Qr6mS1Qe8CrVcCVyCJgdf9ZYGyXCnH+z/+LR64IRS29f1g3j+4EZcRc6uy
         X3q3Ywi356k2orF1hxYaSvofrbpcW5Gg3jyHrgLanb1SL0LOjGzpJkf/259rzyFgquJ3
         agB/2SbFFMAacqAyh974h9jElKV0pcFgvaNhcxtuH9DlSLSJc9LGImEKPqjuA8K4Q6QJ
         YZkA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="dsuY0K/A";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NTlfRd3NrpCzs/lIbYjXga6xlGH/aEUl9+QqkQKvBr8=;
        b=r3rp71OCbP10sjsb0MVFK7N9vmCepWivGeqIgRVHAN12IxsnXRSc4clZEcJnHiyJP4
         h3TkRUGdkSk1+MWRvyQZuAsEoBVIfyaDsXVbae1iH5pakWY5GuSSussjwVKsI9+Vez8G
         XfobM3qPrDl+imaJ+Sblc6yUWn4+EkQD8QV/jIzThN0l7yFtCTbndhP3+Fl/1SOfHbTZ
         lobPzvPSZfUWgGDNoG6oMwunQBg5Z0yfrnDHTlflZW7Q4tt5NkY5Kkqq1fZQXuGHqvNH
         loFvinojykE6IfNECB4SjujrIgrbRATlo81jO87mKyI7e90/DktmHfC/NVlAyjbDRGrO
         zXCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NTlfRd3NrpCzs/lIbYjXga6xlGH/aEUl9+QqkQKvBr8=;
        b=Tg+5ub7rCBqZ/MMAIcuhUwLUQYwMgSrIMVVPLhKXLZaNHwfZ3RtfFmJJfc8fmF2xcn
         4JKbgwq/5FL0tz0hAhNiLpfacgb/0OQeRRcJDJHbXYugACMzrmLVIc1Pa6PimQ3FSGns
         KRIzMtHm5/OCrfCRWQMjjQRxGmhG2oAi8VAZx4QnBGReU1SO+5JfQwZMOfZ7brtN8Bj6
         UFm3pHp5HkgNS6Akc4Gd1V9t1pNf/kyVck6OSXX6Go0+w1dv08GUIh9ppy5ALA5Rt+lj
         xNvRm1gY6qnxbs+/ncK+KX49ETKf0bXA/rPCjSjLsHiyxl/TKtRUvMAScITN4FIavriW
         7qIA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVwCKqs9hJa8sbXpT/Fv0rvXXEBsb294He3bmlkeOK0jmrB0Kt+
	I7CrctVTRv3Pyrr7tkCIQE8=
X-Google-Smtp-Source: APXvYqwiKshb7KZO1vSd3WZWa6jz14rIiTpNPUmWjSUuMgVjM367hiaCutS5SuxqkLSoW8970Eaw+w==
X-Received: by 2002:aca:c481:: with SMTP id u123mr1228225oif.177.1582849373115;
        Thu, 27 Feb 2020 16:22:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7289:: with SMTP id t9ls482636otj.3.gmail; Thu, 27 Feb
 2020 16:22:52 -0800 (PST)
X-Received: by 2002:a9d:4c81:: with SMTP id m1mr1227247otf.5.1582849372170;
        Thu, 27 Feb 2020 16:22:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582849372; cv=none;
        d=google.com; s=arc-20160816;
        b=lU8zPpa6fTN7+dDqxvC1zs2q+V7kJePOYf8eMT50J1AW12aUWi9YTx6PszV8TCwEPv
         rYUXbDBFq5ue8tY04TrwPnc9e2X6BE5UBxqF4d5B8Dp3jno1bRRm0bhlhAg6mBUvLpcw
         S6NtE3fKGTige8fjjzx9xU+x1D+o6lQsjyV/zyF0HSEswnvNc1L2KuyhoyFYh3Qj6ctB
         klJWsj2k7SfddUziUBvjnzxXScPAYRfjiUanPuoIljGoYG08Bz29PalSYHcKDS98rlld
         4/6tSpa+PjQ1MxT3QD4B6pzK1b8CET4KkJmqfgTxY3bLQ9SSriMs0cMxJSmuME+DClOa
         yHbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=QU+opm495Ij9T86I2aM97FnNNq2iPpjTX5kDOiaxevw=;
        b=Y2MTw5635+a/1LWNmS7JCGlFoo3mcvLE+w26WxEhGHUBe8hDpoumk3vSixRnKZmslY
         nkldTAoncjH704b4lNUU8bcobei9mvnX9PNaxGAmWLp49F4L7utQiQ/RTBiAHt3GQ3bW
         aIy5q7NiiDDlLga9tKsj5RRlxG46VxrxkXyMs4zK+BNGKUXi0IPt6lgd1bYZNf9DHWKc
         /7XDx6J8G2mWKYjApHtWEkkDikEzCHwSZFApJuVh6viTOnDWJmO80kdpL+noizf65J3W
         mK3DqyDystu2mGbtlDr3e32nxM07rREJfp5e7jpyRZszinZmCtGq01NC+p+SSVejuD46
         D1EQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="dsuY0K/A";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id d6si100984oig.4.2020.02.27.16.22.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Feb 2020 16:22:52 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id ep11so502974pjb.2
        for <clang-built-linux@googlegroups.com>; Thu, 27 Feb 2020 16:22:52 -0800 (PST)
X-Received: by 2002:a17:902:be11:: with SMTP id r17mr1434176pls.144.1582849371434;
        Thu, 27 Feb 2020 16:22:51 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id c19sm9164401pfc.144.2020.02.27.16.22.48
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
Subject: [PATCH 0/9] Enable orphan section warning
Date: Thu, 27 Feb 2020 16:22:35 -0800
Message-Id: <20200228002244.15240-1-keescook@chromium.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="dsuY0K/A";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041
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

Hi!

A recent bug was solved for builds linked with ld.lld, and tracking
it down took way longer than it needed to (a year). Ultimately, it
boiled down to differences between ld.bfd and ld.lld's handling of
orphan sections. Similarly, the recent FGKASLR series brough up orphan
section handling too[2]. In both cases, it would have been nice if the
linker was running with --orphan-handling=warn so that surprise sections
wouldn't silently get mapped into the kernel image at locations up to
the whim of the linker's orphan handling logic. Instead, all desired
sections should be explicitly identified in the linker script (to be
either kept or discarded) with any orphans throwing a warning. The
powerpc architecture actually already does this, so this series seeks
to extend this coverage to x86, arm64, and arm.

This series depends on tip/x86/boot (where recent .eh_frame fixes[3]
landed), and has a minor conflict[4] with the ARM tree (related to
the earlier mentioned bug). As it uses refactorings in the asm-generic
linker script, and makes changes to kbuild, I think the cleanest place
for this series to land would also be through -tip. Once again (like
my READ_IMPLIES_EXEC series), I'm looking to get maintainer Acks so
this can go all together with the least disruption. Splitting it up by
architecture seems needlessly difficult.

Thanks!

-Kees

[1] https://github.com/ClangBuiltLinux/linux/issues/282
[2] https://lore.kernel.org/lkml/202002242122.AA4D1B8@keescook/
[3] https://lore.kernel.org/lkml/158264960194.28353.10560165361470246192.tip-bot2@tip-bot2/
[4] https://www.arm.linux.org.uk/developer/patches/viewpatch.php?id=8959/1

H.J. Lu (1):
  Add RUNTIME_DISCARD_EXIT to generic DISCARDS

Kees Cook (8):
  scripts/link-vmlinux.sh: Delay orphan handling warnings until final
    link
  vmlinux.lds.h: Add .gnu.version* to DISCARDS
  x86/build: Warn on orphan section placement
  x86/boot: Warn on orphan section placement
  arm64/build: Use common DISCARDS in linker script
  arm64/build: Warn on orphan section placement
  arm/build: Warn on orphan section placement
  arm/boot: Warn on orphan section placement

 arch/arm/Makefile                             |  4 ++++
 arch/arm/boot/compressed/Makefile             |  2 ++
 arch/arm/boot/compressed/vmlinux.lds.S        | 17 ++++++--------
 .../arm/{kernel => include/asm}/vmlinux.lds.h | 22 ++++++++++++++-----
 arch/arm/kernel/vmlinux-xip.lds.S             |  5 ++---
 arch/arm/kernel/vmlinux.lds.S                 |  5 ++---
 arch/arm64/Makefile                           |  4 ++++
 arch/arm64/kernel/vmlinux.lds.S               | 13 +++++------
 arch/x86/Makefile                             |  4 ++++
 arch/x86/boot/compressed/Makefile             |  3 ++-
 arch/x86/boot/compressed/vmlinux.lds.S        | 13 +++++++++++
 arch/x86/kernel/vmlinux.lds.S                 |  7 ++++++
 include/asm-generic/vmlinux.lds.h             | 11 ++++++++--
 scripts/link-vmlinux.sh                       |  6 +++++
 14 files changed, 85 insertions(+), 31 deletions(-)
 rename arch/arm/{kernel => include/asm}/vmlinux.lds.h (92%)

-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200228002244.15240-1-keescook%40chromium.org.
