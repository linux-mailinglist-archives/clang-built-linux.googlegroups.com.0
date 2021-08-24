Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBEVSSGEQMGQEZD4TSOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id 731283F55CE
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Aug 2021 04:27:33 +0200 (CEST)
Received: by mail-qt1-x83d.google.com with SMTP id o11-20020ac85a4b0000b029028acd99a680sf9700735qta.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 19:27:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629772051; cv=pass;
        d=google.com; s=arc-20160816;
        b=kVeFyKG4eeQlouIyLHAUvH0NWtfNx5xKCTg4YLLVJVJBi5VWchE1MyuYDkrqPbBpqz
         NZmA8uTDFvvYHZj27VfLl+EJPHxE5dgLctHHlsnfK0Iz/PJQl4MwfUFDIEq82FC8T5xL
         OLEkcWwgjc0fuXhWNiSsii3vzNLz9vbJ1lYpxewr7diI/mhYi7M0500imt1VuBdTzF1s
         zZ49brpHUQ9XK7fbCgn53v/aZyNJrENQz3U0JIeOG2ACpQcy8Y5OxUgdOjh3jvqjdc7m
         bTGuHDhC680Bxt1p+uMhdcCrzousqMsbS3PHFBEiznSwfpOhKbGfuL5Q2Ksw0UyowH+x
         IQdQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=+x/5xeRcGlew4s+hBxUJli6PI2AATbg+Mx2ZiwElOsc=;
        b=fZ2G6gYo0CLf9oEkxtD+1qvD9PQKMxyRaBUKFpAvnILdhkSggxzxsYe1/kdjLECKs0
         50WOGBJqy0DUnRgeF12kIqg9eoBeVrgIUNVVI5CUmF2UWPMISSGQqPk28Ug0tecXFMbF
         pfe+s4TJsp0W2GJlElZ3ZmSjoSGWdVMF/k1LxIskJZyazBPRxPuA2jffhZ5bu16k85c6
         Hk1TqzJPrsZ9+2HV882eFclKn2ofNT3K7uEvq1ajE3hUuImjhH7djT3IutXlPQcXRYEi
         mC2k+C6AoX4FW2JPV0TAtIOXH3O7XZ9DnvC4IYgP1syQn7ZOHXKBWv8/b7KDDLckeKIq
         b/3w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="uXps/PBH";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+x/5xeRcGlew4s+hBxUJli6PI2AATbg+Mx2ZiwElOsc=;
        b=fNZppjTuhsINg+vPtClJjnvLv6mUW//hXW6/MVvsADNThUckJAcdCoyVWVBWUPQBse
         kNBupzbblqNHa8yC8JFUvps5qG5012khNx1u1j2GpcAU0Wc1mZ6T1gzOkg2H7uk3Uooy
         OfyqBeFYUTEZNBQ9E03M4Qfaq4VBwm8k49jcuzjU1Tc4hxFbHMt7C/6r3foNQoorLLIi
         cObl5h9nCQ7RDu1xjlhfG4khKWTOhwY0OZ74nldt2ilvqw+MkbxTiNtjD0wMs7j8PTl9
         ByF0iY9qmRdG0YqKlRIzGsjMdLDAvY91fo6KQnjJWEGmbWIuGOy5/oTDPLcGu9unaqsM
         QiPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+x/5xeRcGlew4s+hBxUJli6PI2AATbg+Mx2ZiwElOsc=;
        b=tImq7qWp3/0YgTA5hueCLhqi6OWyZ1+8KYgUpj/vzEGYCvvNDWGMpQ8jq4CR50zULb
         Vfmzq/A5YSJaeaNkHEbB8PDonoQ9Jr512060Pn2OWXAUwQNBaZOisC+lPO1Rt6Epekgi
         2HOukWsEqeiggZHRaj9roHUQMUG3yXvDLdxK5xY7KUQQJ/hMx0tg1DDqEeSJOFR6DR62
         VBxFmYaTkrZHKVdYL5WJFdlZx6WyIvjGZUisCACUkYqTov/o7CKiVxH13jyk1tCyzpg6
         oCt8o6wZ/wZwJ78XPuWkyH9sfDthb+7wAaivikfs0N7anjtOG7eaGVpdstGqRhZQDB3G
         zqWg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5333QiBgdCEdT70tDh0FZnGeTUbrGxwn+4ud7A3T+ZxOFFRysHTn
	TJ1hhlFvH4drzO7vjr2qHGQ=
X-Google-Smtp-Source: ABdhPJwWkCKYCYEZnn04btPDErQvtiOM74PF0hyqH4jIG6rHujpDeRw/Hl7EhaM95CL/FfAZ38zc4w==
X-Received: by 2002:ac8:1498:: with SMTP id l24mr32212762qtj.169.1629772050977;
        Mon, 23 Aug 2021 19:27:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:1582:: with SMTP id d2ls8916361qkk.9.gmail; Mon, 23
 Aug 2021 19:27:30 -0700 (PDT)
X-Received: by 2002:a05:620a:2298:: with SMTP id o24mr24046225qkh.235.1629772050555;
        Mon, 23 Aug 2021 19:27:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629772050; cv=none;
        d=google.com; s=arc-20160816;
        b=KJcRfC+Q974ZhEbWNDjc19tI/fK0Wi/ah6pgZa+Ua9NK6vj27v0otFyUf+rDqB0NDw
         mQLLOu042XitX/pZZteobTCJRDdZonFQ8QUE198RVoiB0RGiIHVxrPmXCPsdHAHbl3G4
         nHLfvVB6Jr4P+Mmin8OcP3220cTH5cpUhNM3ha1cfuutiXVXHwNLMcEbbT/d8Srn3zuO
         hGB2ssd5lYh66lC0w9Xvj24WTDpOalNvXnIojBm+LTocjJVK9iIWbGDX72RdLsLE27pP
         WMF786EH5Gy+nbeTa2I5Aae5DV67KpJHo5JLVK7W6k8cyP6ajwSRpeCsSfKBga/zqaET
         l8fQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=/CfdeF3e/S222tsS9NmH58crk+px3xofYyxdrCax4/0=;
        b=EG1ycULB6FP0M8kFnp7rTTmXir95R8aC0Mw6QaMlZrL9VO2XDwhWSN3b6lCA452HWu
         RoBs1S7kiLreB3kQzplW0xPCt+0dxXBMyyFMEJkjQhJU8gPh3rdtk1kgG7bwd9ygwnDw
         Q3yqBOvfCijgiVjgIkkZIQJHyy2rE8T1eZ1/TL7biaW/UciSnWoUL+w6K8NNNoq6JGTY
         R5jfnhchV9xcLGw5HZX7EiMIfkoI5lCmC1Hc1TnkprppPg1oQh2A/NBVIs4e7ZEGEQJ6
         wcwkQ1WUxFUEUMZa2s+BQClENILGf66sqoVNBEx0ocJu4gGE2CRymM20E76Tyxky8/gR
         vo5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="uXps/PBH";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s128si1156278qkh.6.2021.08.23.19.27.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Aug 2021 19:27:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2B58F6101C;
	Tue, 24 Aug 2021 02:27:27 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	x86@kernel.org,
	Masahiro Yamada <masahiroy@kernel.org>
Cc: "H. Peter Anvin" <hpa@zytor.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	llvm@lists.linux.dev,
	Nathan Chancellor <nathan@kernel.org>,
	kernel test robot <lkp@intel.com>
Subject: [PATCH 1/2] x86: Do not add -falign flags unconditionally for clang
Date: Mon, 23 Aug 2021 19:26:39 -0700
Message-Id: <20210824022640.2170859-2-nathan@kernel.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210824022640.2170859-1-nathan@kernel.org>
References: <20210824022640.2170859-1-nathan@kernel.org>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="uXps/PBH";       spf=pass
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

clang does not support -falign-jumps and only recently gained support
for -falign-loops. When one of the configuration options that adds these
flags is enabled, clang warns and all cc-{disable-warning,option} that
follow fail because -Werror gets added to test for the presence of this
warning:

clang-14: warning: optimization flag '-falign-jumps=0' is not supported
[-Wignored-optimization-argument]

To resolve this, add a couple of cc-option calls when building with
clang; gcc has supported these options since 3.2 so there is no point in
testing for their support. -falign-functions was implemented in clang-7,
-falign-loops was implemented in clang-14, and -falign-jumps has not
been implemented yet.

Link: https://lore.kernel.org/r/YSQE2f5teuvKLkON@Ryzen-9-3900X.localdomain/
Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 arch/x86/Makefile_32.cpu | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/arch/x86/Makefile_32.cpu b/arch/x86/Makefile_32.cpu
index cd3056759880..e8c65f990afd 100644
--- a/arch/x86/Makefile_32.cpu
+++ b/arch/x86/Makefile_32.cpu
@@ -10,6 +10,12 @@ else
 tune		= $(call cc-option,-mcpu=$(1),$(2))
 endif
 
+ifdef CONFIG_CC_IS_CLANG
+align		:= -falign-functions=0 $(call cc-option,-falign-jumps=0) $(call cc-option,-falign-loops=0)
+else
+align		:= -falign-functions=0 -falign-jumps=0 -falign-loops=0
+endif
+
 cflags-$(CONFIG_M486SX)		+= -march=i486
 cflags-$(CONFIG_M486)		+= -march=i486
 cflags-$(CONFIG_M586)		+= -march=i586
@@ -25,11 +31,11 @@ cflags-$(CONFIG_MK6)		+= -march=k6
 # They make zero difference whatsosever to performance at this time.
 cflags-$(CONFIG_MK7)		+= -march=athlon
 cflags-$(CONFIG_MK8)		+= $(call cc-option,-march=k8,-march=athlon)
-cflags-$(CONFIG_MCRUSOE)	+= -march=i686 -falign-functions=0 -falign-jumps=0 -falign-loops=0
-cflags-$(CONFIG_MEFFICEON)	+= -march=i686 $(call tune,pentium3) -falign-functions=0 -falign-jumps=0 -falign-loops=0
+cflags-$(CONFIG_MCRUSOE)	+= -march=i686 $(align)
+cflags-$(CONFIG_MEFFICEON)	+= -march=i686 $(call tune,pentium3) $(align)
 cflags-$(CONFIG_MWINCHIPC6)	+= $(call cc-option,-march=winchip-c6,-march=i586)
 cflags-$(CONFIG_MWINCHIP3D)	+= $(call cc-option,-march=winchip2,-march=i586)
-cflags-$(CONFIG_MCYRIXIII)	+= $(call cc-option,-march=c3,-march=i486) -falign-functions=0 -falign-jumps=0 -falign-loops=0
+cflags-$(CONFIG_MCYRIXIII)	+= $(call cc-option,-march=c3,-march=i486) $(align)
 cflags-$(CONFIG_MVIAC3_2)	+= $(call cc-option,-march=c3-2,-march=i686)
 cflags-$(CONFIG_MVIAC7)		+= -march=i686
 cflags-$(CONFIG_MCORE2)		+= -march=i686 $(call tune,core2)
-- 
2.33.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210824022640.2170859-2-nathan%40kernel.org.
