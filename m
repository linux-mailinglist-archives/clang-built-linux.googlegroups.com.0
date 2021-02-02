Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB7XP4KAAMGQESLC2CXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id D1E6730B531
	for <lists+clang-built-linux@lfdr.de>; Tue,  2 Feb 2021 03:25:03 +0100 (CET)
Received: by mail-pg1-x539.google.com with SMTP id y34sf12796048pgk.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 01 Feb 2021 18:25:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612232702; cv=pass;
        d=google.com; s=arc-20160816;
        b=eY3jwzMDdjhbUNaWZpyf6YVWIfaL6RujULYpP371zjOrJJ8YxXKR7oWknij0cKLDby
         /VaBmpgpGp8ikIXCN670B9A+W+gYff2dZpvolyjL7a0nzuDaEuMela1GgYOlHWrldI0P
         CYO3EGA8kVnV3Dsx43Jv+KMYQ/Z0Wf6mgYua1etx2wzBS2lk/5GWyEcPbkSQrsEdVgpV
         E9HLybeX0XZAhG8JF8pU5qZjSUDHB3134yCKyCenhkknwv08MdxNuebKUureeFLJIc5I
         QgRcKsFHOlPrqoQv4EZv7y0yZHrJ+ZHMfogvqD9dDjlQwVYatF5116BIPqIfOR3azGQw
         qaDA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=Z9S92YxPROqAbSHvXjV8aGDWnA/peBuPcWwn/gdQwig=;
        b=SbU2fykgcADinXf6AF+HwgQ0XOTQO0aQtzywoIXbyYrmWBMtfFHFgFC8G+64tvOEVM
         mkHzgknhGwDk/57gF8WtTUgdb+F7556U7yI9TelBW5wyf33AqhE5oM0eqppyJ6FbXfOv
         KKXmEwnujmOAqDAg4phYpaCgcsKahfoH7rYho89ivJN/DCunIbBsMjCeptL9wrvUIn9d
         STz5XEmcW6ZSHQ9My3vVX75uSfKou5VHqvnINQOzv21KSWz/KOiPPaqcCOzvybApEOpd
         s1WlAl1Z9TIdqPoF+U1wn/liBFC4vD2ZRF5d+lwSbGDp+6LWQNXCcfr1yXYhgV5UNlf/
         xsvg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=oaHaPq6x;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Z9S92YxPROqAbSHvXjV8aGDWnA/peBuPcWwn/gdQwig=;
        b=A92zVkqZaAOuY4yGo5Qmxppf4uDdxSCJo2KZk9X4lF8kXNqtKy3+nVSo58QS0Rt3iL
         JVeI+LHYqv0yJz0LBg+DQH7IIxDNapl/FKl2Zdi0NZR5TZkuWMdjmbHdlHIDXWT38mX1
         /hT98Gjmh8ash3B62EC5oQk4W3o7vsoqo+8LuEG6RVMd1hm6l9y+iN9SPECjTFpkxVK/
         8D6Euw7EIFAnpRMvKkSqwyeGbHzn4A2iQCnwXB4j9A143I6b5bhDxJYMSDry6cVjrqsP
         NVSagt2VIaYQtZsvvoXuOG9dsuX0eCc3v3ksaiAyAegqzwkBvZSuQgfEiPUtp7a/0Fh9
         YujA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Z9S92YxPROqAbSHvXjV8aGDWnA/peBuPcWwn/gdQwig=;
        b=ocTl7v+cRA6IKh1kWhvCcoYqeQwB37IZghyTArmKFuXnu2trb2Zxmqtyt0kGvIrws1
         IEpM8xCRXvKltgHyUEX6WR4EjStxvKFeaMuPqDtraEKwpjDt/IcOAe5dYYKWCdqtxEKX
         lsRKcplyN+6TCgBaifzztt5PNlGPizC6J3nZjkWabbg6wiw1TuI5/pDINgUw1yz1tb0q
         ImlDEq0aojONPW3Hahkjr6kNTC2oFT451/g7xDIbdLBKC4BC7QqXnbi5aNhLyZ1ifYdN
         Mu+Md+tWhcY0nCFKSBAXM5O6+x2MSI7AyO2/y0h0H+cSu3D0WqZA+ndo6Qq7UakWbTyC
         u4cA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531JIz/si+0EP7jS6KAO+Vvf7UuBrzcA4kvLA5DAL9oF+d6obr0g
	1kIfzit8HWQ49kpC9QBjUSw=
X-Google-Smtp-Source: ABdhPJzMG5PJKDZiOERBWz6Wc/dQggvnN0n45dnQhbPzz76OcKdH/pc/oa11uwWsX0rz+V7EmsmezA==
X-Received: by 2002:a17:902:201:b029:e1:20bc:74ca with SMTP id 1-20020a1709020201b02900e120bc74camr14451671plc.31.1612232702493;
        Mon, 01 Feb 2021 18:25:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:19d8:: with SMTP id 207ls7445771pfz.5.gmail; Mon, 01 Feb
 2021 18:25:01 -0800 (PST)
X-Received: by 2002:a63:5309:: with SMTP id h9mr19489136pgb.19.1612232701880;
        Mon, 01 Feb 2021 18:25:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612232701; cv=none;
        d=google.com; s=arc-20160816;
        b=HLSpNcDy4bf7OF9nV2BA+5qJPP7PkNRUUG7I7WZAsT0227OxGv62sNtIuZSdehXK/e
         jiCDjrFJSAxeFIclre8XCCCI8zRtTELYEflDUmYEZYRns89ipS3FsMK4a65pTC/NCUBy
         p3BpspwI5jSuUdpZBheVuAj+SNrmb9T8WwQIS7gEoK6vhuw32Y9hBPobcUmKz38iZuLa
         VAgm73fh1ADWgT9ohudIDc2VLK0n99bpgYDfnlgVRqHm8x3kYSsUNkuBcl2LhG0BdDfn
         qu/A8XE9lR2OBZU9xGYOiutYWCA9W0czrwNqfDY+iqynLwTuFFj7z0nnlQrhFdtN0+tK
         u/9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=Ma+fjx1SUCTiz/bG2e3ixUh9rhnWLUhzdK83PHNNXo8=;
        b=SYIhOulAsStXqwbuKEPNK+qVAhuuQRntmbXFzqKE7MRXacI3cTnD2fQC6AMu4nRoeJ
         +kd4TkRJlHeC6adMRAg2sELetPQOrtHF9kvjLPmhhxWWJaZpw11fLgIc/QCGBsijYC9X
         WxWThoSONE2Rq2oJRl7g44sPH39N0UiHWwZAIrrW8urjcU8WKFONTQpfjjWu769kfrRW
         f21egr36Os7Oxw8NUeLw82MkLtDn5SikOBXYCXM3DHMebMAZYNtGGwkwUlYoJHHk1lCF
         6SA2W60UAb2IvBq5HzzjMMJBgH6r+TGry4+4HkQrKi0Zpn1l2Ur1ugVRyD90y7Dkup/w
         iP4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=oaHaPq6x;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y16si305580pfb.3.2021.02.01.18.25.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Feb 2021 18:25:01 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id AB04D64ECB;
	Tue,  2 Feb 2021 02:25:00 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH] arm64: Make CPU_BIG_ENDIAN depend on !LD_IS_LLD
Date: Mon,  1 Feb 2021 19:24:42 -0700
Message-Id: <20210202022441.1451389-1-nathan@kernel.org>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=oaHaPq6x;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

Similar to commit 28187dc8ebd9 ("ARM: 9025/1: Kconfig: CPU_BIG_ENDIAN
depends on !LD_IS_LLD"), ld.lld does not support aarch64 big endian,
leading to the following build error when CONFIG_CPU_BIG_ENDIAN is
selected:

ld.lld: error: unknown emulation: aarch64linuxb

There are not currently plans to implement big endian support for
aarch64 in ld.lld but if it should be supported in the future, this
symbol can depend on the version that first supports it. In the
meantime, prevent this symbol from being selected to avoid these type
of build errors.

While we are here, the indentation of this symbol used spaces since its
introduction in commit a872013d6d03 ("arm64: kconfig: allow
CPU_BIG_ENDIAN to be selected"). Change it to tabs to be consistent with
kernel coding style.

Link: https://github.com/ClangBuiltLinux/linux/issues/380
Link: https://github.com/ClangBuiltLinux/linux/issues/1288
Reported-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 arch/arm64/Kconfig | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index f39568b28ec1..5ddf9fe7b4ee 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -952,8 +952,9 @@ choice
 	  that is selected here.
 
 config CPU_BIG_ENDIAN
-       bool "Build big-endian kernel"
-       help
+	bool "Build big-endian kernel"
+	depends on !LD_IS_LLD
+	help
 	  Say Y if you plan on running a kernel with a big-endian userspace.
 
 config CPU_LITTLE_ENDIAN

base-commit: 88bb507a74ea7d75fa49edd421eaa710a7d80598
-- 
2.30.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210202022441.1451389-1-nathan%40kernel.org.
