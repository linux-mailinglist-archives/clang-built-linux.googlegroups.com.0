Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBS4Q7P3AKGQECBD5BBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id F33D41F248B
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Jun 2020 01:22:52 +0200 (CEST)
Received: by mail-pg1-x537.google.com with SMTP id 21sf5633126pgk.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Jun 2020 16:22:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591658571; cv=pass;
        d=google.com; s=arc-20160816;
        b=LjeYdGbHEFc1jRv3MkCZWC8Z0U/g5iXS+idv1cnXfELNqZW47DXh+TBE0BCHwVsm0h
         tCZq9ngcgYu0wSCnbpPovIP4DaK55GjhV2wpbVew9/5rbu6OmxX6BWPlg73C8SK2CwUt
         HiB+zmDgDov9XlR+6NXjGhFgSbz2Vy5UKBT4rhvabFg0vlElAG3blRSa3m9SNqKXsY9w
         e6UliNID+GP1cJmbdFygyVyVvToX6eCXerceKMgsUSmpJ85gaOGDbL2VVAMPeQaRJ8To
         eJVT3hnF1q6N4i1/Ql1UJB8xnzBZMbEeMgDj713eEeOMP8MfqWHvtClySWXbhMpbYI7b
         tijQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=QIWYb8Mpf2fljOykiGvGtqsKbL8B1/K/UsxDiV4nS6Y=;
        b=l4kAKAm/OevZbk1OnvFc9vl6fByfQg3vbomJpneFeUwK5fEoviEdFYLC0vAdPxcQZz
         j0CAKr+X/D3z4nQIqxMUfVVvrd637rikBoWoMtZYebp0JH6+4LQsvT7/FUMTjEN0RXHD
         qAxaNSswlMjgwMn3+Qrbkk3w0NDw7VTg5YXU/BplHkwL+ifhbxjN0q/a2eTm6XMA19HZ
         90ECoi/gZQ9SNhGISzGRDr9f2slVRbOF/7ZZ9pJr3L2x925qpJcqgLygyipwWXGAEG6J
         SDA80yFZ0wlTpk6OlU/sOCH0VVD12j7z+X2U/eOqoTBWF5LbBqwcFyR2MCA6HKF5nO85
         r42w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=aFzj5DtN;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QIWYb8Mpf2fljOykiGvGtqsKbL8B1/K/UsxDiV4nS6Y=;
        b=hTOQ+oPWlPWwnOdVU8scpvexYZ9ac3sWxDVW3qAcxesc9YA0tdax2tw9ModdJKUGMA
         LkbiddrJHnX/qMAa94ByuScgoIDHYBGga0DzJNf6YcoZk15koLprU6kclLZiwRNWWd71
         W8JxtJV/TAJQw88RVVn5aje9Jp3RuuehOjt3dF+1zUf93BP1cPWFX1xslpIuCbR6AkQG
         0Gm3dvTLX9q+ylDdYbJyEinnKTkxYaY+P1o1UAWxjamlpqSjEZeg4ncXZ/RRfeseNaWe
         SdDRTBWAWSMvxvlvU5sQ6WeRA47Waty0lNbT7P3bKSBLGi2iWCCIYGE7/QzyJb7Vu/yi
         oWSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QIWYb8Mpf2fljOykiGvGtqsKbL8B1/K/UsxDiV4nS6Y=;
        b=PRHjMhB66Viua4OsjXEyY0SM526MJEY7eVHkADoved5lMXWQXmQqRySGMV/x37tlGG
         +YkF7MVdpXHAVcd4L2N677RChpGIyz7Eu9AQtWDRYm4CsfCJh/qep8IFozQ3G+zb1TdI
         DccrdnkmjeuLixG/l31ZmVdXuJYiCWx8myB6NC3/ZfkANVVH0BgJp5TGuXF4AgB98wUY
         3KbJdDWmH40g7Ge1D7xz3FozYu6eTSmWtpH5ZM4S7/aLn+0y41DgiifiPYle6NGj8I/P
         TpO4Pu4nuZu3H6h9Hco7HH+CBKaNztC69OMT2N3XoXo1belaX5/5nK4WdARAVj+Fo5HB
         vb2Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530UpNV4UBvpy8oOyhTE3HIGS/AjeRiRp3v9qqfR6KhxT/Mxdovn
	RNWUGbz5MWho22qjc4GbWIM=
X-Google-Smtp-Source: ABdhPJztMWmWsSP9IGINxwTgjaCWkiXmWDZVB+jG+ACyyZac3lHGxrCkSLkM1fOBGcHTxy/tmbXWIg==
X-Received: by 2002:a17:902:bf02:: with SMTP id bi2mr919102plb.330.1591658571711;
        Mon, 08 Jun 2020 16:22:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:c253:: with SMTP id d19ls398446pjx.2.gmail; Mon, 08
 Jun 2020 16:22:51 -0700 (PDT)
X-Received: by 2002:a17:90a:294f:: with SMTP id x15mr1545021pjf.97.1591658571395;
        Mon, 08 Jun 2020 16:22:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591658571; cv=none;
        d=google.com; s=arc-20160816;
        b=uQYE+iS+bjdLOBpnV8Fq0QsFRpf532bYynr89tbYpGDKX38rMYl2FLvnBlfby/pz2X
         TUx+xnC0CmqQs5nbxhBd8AKmWsPSLvKmXKlehOUVvNkc3hc1mPm7NMOsBYJ/S2vX5AKs
         72rjVofYY+AT/hr79XOeo9k7Q+6ReczFEHGOwdq9wuPnfDbkhow+uGvP2ZGCWIVTLToh
         8N3OST9dfapGQ8OmKRtX9Rb+ujjpxuo1tpc1nRRM0ZYwESHzQwnMfQwxsi4n+ijnAPmX
         lrqVknX40zGVJn5IsoeVLj6JM/NoHbGIic4X9sxLdtGupGcqJ0o2slfIO+gBVIXpceG8
         6R0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=m18DJ8qvpeI4oGEyO10/jHpQ0Fx6FO0SqxjPAKlXnE8=;
        b=A4vY/K1rtw7loyWecXbp+LgeydRGY2hxsfbO8zHeI2BCcKeXvBcwR/kJTpGMw7w0fL
         75K6UsKdbeAbw8jHRF+t1ZTcUmHw9tU0lNQoZQYHztOARbjocIRNwGdGFmy10urTmbxm
         Jr5umrQco1F+sMek9an74GigdwfxyI6GNBDRAt/7/ZH5Alr9364mY0wv1jue22rkl8/U
         scsu/8H9Jkdrs7t6IBESidCvcxYnqou+6vBbnTYQeY6zah2/xzFLgaVhXq6iUuC3yPnG
         DBUkSoHMtLDIlVjFUEJAd2gvY23MEW2j95W43usM1T5s6kV6xPfR+W4VipBS9NBzWZsW
         rAxQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=aFzj5DtN;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i17si62725pjv.1.2020.06.08.16.22.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Jun 2020 16:22:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 129A2208C7;
	Mon,  8 Jun 2020 23:22:49 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Ard Biesheuvel <ardb@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Peter Collingbourne <pcc@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Fangrui Song <maskray@google.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-efi@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 010/106] efi/libstub/x86: Work around LLVM ELF quirk build regression
Date: Mon,  8 Jun 2020 19:21:02 -0400
Message-Id: <20200608232238.3368589-10-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608232238.3368589-1-sashal@kernel.org>
References: <20200608232238.3368589-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=aFzj5DtN;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
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

From: Ard Biesheuvel <ardb@kernel.org>

[ Upstream commit f77767ed5f4d398b29119563155e4ece2dfeee13 ]

When building the x86 EFI stub with Clang, the libstub Makefile rules
that manipulate the ELF object files may throw an error like:

    STUBCPY drivers/firmware/efi/libstub/efi-stub-helper.stub.o
  strip: drivers/firmware/efi/libstub/efi-stub-helper.stub.o: Failed to find link section for section 10
  objcopy: drivers/firmware/efi/libstub/efi-stub-helper.stub.o: Failed to find link section for section 10

This is the result of a LLVM feature [0] where symbol references are
stored in a LLVM specific .llvm_addrsig section in a non-transparent way,
causing generic ELF tools such as strip or objcopy to choke on them.

So force the compiler not to emit these sections, by passing the
appropriate command line option.

[0] https://sourceware.org/bugzilla/show_bug.cgi?id=23817

Cc: Nick Desaulniers <ndesaulniers@google.com>
Cc: Peter Collingbourne <pcc@google.com>
Cc: Sami Tolvanen <samitolvanen@google.com>
Reported-by: Arnd Bergmann <arnd@arndb.de>
Suggested-by: Fangrui Song <maskray@google.com>
Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/firmware/efi/libstub/Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
index d9845099635e..d3777d754984 100644
--- a/drivers/firmware/efi/libstub/Makefile
+++ b/drivers/firmware/efi/libstub/Makefile
@@ -28,6 +28,7 @@ KBUILD_CFLAGS			:= $(cflags-y) -DDISABLE_BRANCH_PROFILING \
 				   -D__NO_FORTIFY \
 				   $(call cc-option,-ffreestanding) \
 				   $(call cc-option,-fno-stack-protector) \
+				   $(call cc-option,-fno-addrsig) \
 				   -D__DISABLE_EXPORTS
 
 GCOV_PROFILE			:= n
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200608232238.3368589-10-sashal%40kernel.org.
