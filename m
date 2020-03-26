Return-Path: <clang-built-linux+bncBAABBDGD6HZQKGQEL4GLKUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FC3D193A2A
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 09:02:24 +0100 (CET)
Received: by mail-pl1-x639.google.com with SMTP id y4sf3736210plk.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 01:02:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585209740; cv=pass;
        d=google.com; s=arc-20160816;
        b=U3iDQhMlx29e8q6ms0XRB09hxaBK00CSPxVNu3mKKa17rT371s8AWnObTHFpNTG4YK
         lnAEoCoppkkg2R5SP47ZkUHKCJqP9lcZ0E6xQTNO9GOBkqRBJ6oaJvresQMh7SIAzf6T
         O8R8M7eIEr57ADw+u+PIVKIQjiG+S/8ZS/gHMsvkDpZyPYrvXMFP98njF5HcOuYyzsD6
         4XgfCQdTrTAq6wUbVToCEhKuqaaB6Blk9/fEn4LQs9xYsyjaHDAeS5qVPXHwM1FRSopP
         SQkaT39ppuvFPkwjBVK+XqxUwoEYTWcTims5TYd55+wieEmYLHOBWvv2ViWnZcjxYdCd
         O0rQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:dkim-filter:mime-version:sender
         :dkim-signature;
        bh=WrUApvTFV+VSD/7XnQngHoE2S6S99FR0EIyD3ljfCe0=;
        b=krkfADsGhc9p4XmcP99dqpQVvfXnnd01T4gsi8FDy7oXoCUecrutGXJMgPYx3uh8Q1
         TVt9dw68tAWOqCvcfaR8b/g1pBrdQlfc5AELGnwzeCgDcC+fLVyZ62059WzI5RznX7uA
         A5pMki1UwpPDa/FpwaFp8fzIO/hvgWzwxXL6qlYxx6DYWosf/nbCY/lKccTnOmszwZG1
         J+H7eQ0Y3mVEB2f36h5chO+VqqfP9jIcfORPluZSz2BSrVW8wHKPJAG3fLfKSJK436da
         W/wmWD2iCRvEGFzEiv9m1SZbIMM0kNOpaKvf3OFu9ViDG8Z/tR1654Y3iE7seZPdVlFB
         n1nw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="fGi8/XXG";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:dkim-filter:from:to:cc:subject:date:message-id
         :in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WrUApvTFV+VSD/7XnQngHoE2S6S99FR0EIyD3ljfCe0=;
        b=OrWA+2JlIueI33wWtK9unpglKuc2zwZxTADSRnaZAQWhr2ZzPhfx3QFO2d99mL6/+5
         1IUbAp0BqAteDB2u+oqZjneakVMV59HM2moDSpL13Auha69a/bHZbU15f0TcZHeITh+J
         OldgCKHa9I1TsKXKH5L0x1bg3/VrJ3a6yFYFyHdp/mAloCNK3M1s2X0bxvNFvmgpAlX+
         VHfNhe6S0DZXcV3CKt7Y4IVYbjGLfAuR3seDvzvM7rjZWhnMh9wyBtJ2goAD+cHT4CBh
         eL+B9K8KcJcv/J8su4WmATkiXL0cgYTs6KxjPZONBAtf4M+EduTNKZYGTJrbNpecgwp4
         hG9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:dkim-filter:from:to:cc
         :subject:date:message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WrUApvTFV+VSD/7XnQngHoE2S6S99FR0EIyD3ljfCe0=;
        b=P1sYb0SbwdIah6oF7/HS8CSE3FK3y8pCZdg094nXOypqRyHCHfVdDsH34yePg70DVx
         vwD04oyrYFZ8uSDbnx1UMqsrqtJttuTceIsf/RzwpfgT/0Rp9E0YBnhp1K9fsheHGNDK
         nluA4qiykic8Q253r6UIfaWotcrxcliw/4fWCs+l3VCo+tHGjqWFtllpeHY6QPxonopA
         1L0i4+iu8jg1+g1W285FeM2jit///TKFkHLHkYxyBGcPb5BfxqRfe54r4HAG8adhVwCA
         s7oj1MYcnikLeMmFun5B24JRuOJwJhZOWjONQnPdt48XxbzMx4D+vYKeTMHONEU+NsxC
         J8NQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1H7fcX+VYbeQI69FejFu7LWJ7Fpev6kSWtug7ILNC0KToMvbBm
	iwzbp21E20ii3ngmbZxrgN0=
X-Google-Smtp-Source: ADFU+vsbzHu11gHG1/SgaSF23Wptq0RzIdM7jvgFjlwuTAeQtK5QBv/SuEoyLTeIeZDv7LwE97Y2Ig==
X-Received: by 2002:aa7:9f47:: with SMTP id h7mr7751268pfr.292.1585209740191;
        Thu, 26 Mar 2020 01:02:20 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:fd82:: with SMTP id cx2ls3998678pjb.1.canary-gmail;
 Thu, 26 Mar 2020 01:02:19 -0700 (PDT)
X-Received: by 2002:a17:902:a702:: with SMTP id w2mr7133298plq.107.1585209739849;
        Thu, 26 Mar 2020 01:02:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585209739; cv=none;
        d=google.com; s=arc-20160816;
        b=KdsC9wK2/DxzlY4qVdhzG5s1saP5LF1ueK8Yg8RJPlzVDvdwggI3PyWUFXU4BjuQ3W
         58qwft5P4x0teqVY4CUWduCmDA1W2Z+7BtWZvrZsXbuIzUarbz4Mf1Ct5vALQ8yTHl1g
         QcOUeUsOmg+hCJUUYhatHLsfJ/D7/cCOKrYx9KI2k5kRF72ez5PjvXK5ATcAp+0djomE
         DLJwEIqWPJoi9yaKb1WGbxiLEMkAhK66QugP/wkZCOx1Yw2+PsC22sjPtCHCxqdrrD0o
         RfpSpnjxhdGPVBLDEBX1j/seGypqBrIraF5Q+auKCayQiS3Uwq64KDfOg8D6C8i70L3/
         XXMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:dkim-filter;
        bh=5JogIuDl/6xkH8yyC1ZXgv1FXpGpkCz0cxlniH6eAYA=;
        b=UPYhIe9mRkT5HEd1OKqcsjltJ+DBeTbefD0D0ALsvcttAXP3GP8kOOwPJtVewj99x3
         Q5LS70OQk7Lq3ENkJWS7CiQ9TyMo/B5MEPcmblb1/oKQIPCxWoC6fqMCnyZ4wCL7OREQ
         s4zDl+EozBy2kuQvSZimWsVx1WpU8CgusjBScQ1u6pYy+pscaur4IZQovd7F9ty/12Tf
         qXMjwHw4KFN1iTasKl3eQE3ZyVzLAPQY/+FXd6K3rj4b3zZwCGIxVAK5rPGuE185xbxN
         sIQe2BeLSIqtNcImZXAj+hz7scgagSNUFwAOcTbzav512022ZSpc1X8bTa3D/SPn/Om0
         CHrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="fGi8/XXG";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-11.nifty.com (conuserg-11.nifty.com. [210.131.2.78])
        by gmr-mx.google.com with ESMTPS id w18si114511pfi.4.2020.03.26.01.02.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Mar 2020 01:02:19 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) client-ip=210.131.2.78;
Received: from pug.e01.socionext.com (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp [153.142.97.92]) (authenticated)
	by conuserg-11.nifty.com with ESMTP id 02Q81WpV002183;
	Thu, 26 Mar 2020 17:01:37 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-11.nifty.com 02Q81WpV002183
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: Thomas Gleixner <tglx@linutronix.de>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Borislav Petkov <bp@alien8.de>, Peter Zijlstra <peterz@infradead.org>,
        "H . Peter Anvin" <hpa@zytor.com>, x86@kernel.org,
        "Jason A . Donenfeld" <Jason@zx2c4.com>,
        clang-built-linux@googlegroups.com,
        Masahiro Yamada <masahiroy@kernel.org>, Ingo Molnar <mingo@redhat.com>,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2 02/16] x86: remove unneeded defined(__ASSEMBLY__) check from asm/dwarf2.h
Date: Thu, 26 Mar 2020 17:00:50 +0900
Message-Id: <20200326080104.27286-3-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200326080104.27286-1-masahiroy@kernel.org>
References: <20200326080104.27286-1-masahiroy@kernel.org>
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b="fGi8/XXG";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org
 does not designate 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

This header file has the following check at the top:

  #ifndef __ASSEMBLY__
  #warning "asm/dwarf2.h should be only included in pure assembly files"
  #endif

So, we expect defined(__ASSEMBLY__) is always true.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
Acked-by: Jason A. Donenfeld <Jason@zx2c4.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
---

Changes in v2: None

 arch/x86/include/asm/dwarf2.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/x86/include/asm/dwarf2.h b/arch/x86/include/asm/dwarf2.h
index ae391f609840..5a0502212bc5 100644
--- a/arch/x86/include/asm/dwarf2.h
+++ b/arch/x86/include/asm/dwarf2.h
@@ -36,7 +36,7 @@
 #define CFI_SIGNAL_FRAME
 #endif
 
-#if defined(CONFIG_AS_CFI_SECTIONS) && defined(__ASSEMBLY__)
+#if defined(CONFIG_AS_CFI_SECTIONS)
 #ifndef BUILD_VDSO
 	/*
 	 * Emit CFI data in .debug_frame sections, not .eh_frame sections.
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200326080104.27286-3-masahiroy%40kernel.org.
