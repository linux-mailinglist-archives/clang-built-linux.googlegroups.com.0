Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBQV4Q6AQMGQEADYMTHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id E07EA314528
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Feb 2021 01:58:44 +0100 (CET)
Received: by mail-pg1-x537.google.com with SMTP id t196sf7921315pgb.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Feb 2021 16:58:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612832323; cv=pass;
        d=google.com; s=arc-20160816;
        b=TfeL+6r2a2dHgoGspwIlN67FPAtLSv2Q3JjESHTwlv5xsy+wushNaSnvvPRbPvnjKA
         WRgcEAS8ouEG3MB7GpqNzLBfxI6bEBkMAsi0y93SwFnr9aNxphQD/razIGcuXW34sxjD
         k8sccHxdKFG6s7CGw0SxnG3ZZ85G9bmN2OkBMB/vd1Blp6u4uFp+nTY0YSP+9Covyvnm
         TS3mWMPX/a3SeWiNd3RmV9N+LDENxjaF+BVfSWVCAZE/ehAmQwmYfH78eawqvdw18iEu
         od8hk04GqPSIkejBIu5bIXKyMBk0Qfqf5Hu6sV1JwRGeMLpSCIGo5atG6olwrS5qa7/r
         2zMQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=ClVU/CnW0LzFmVzzBwxpLqixRMnseXdZmnifpDG4QN4=;
        b=xmC4g2XpCImDMCoMjijzpRnNpgExefwa4HP3YEgJOBvzvLCLvsF7hn0CjmIqiKOXti
         Pvd/A37mdEfHqze+BhQO/7Gpa2QQvWCCw/LfNA+c6xsq/RXhbWm4f3ath3JYn6qGwAKr
         rDZfVrb90Emn2yKNq3u7zwlxAyaS3w+ID6dQ6W6+0ZxdpuRwAJq/ie+t3FSO/LSsZT/h
         yeLg9+aaKEPu6b59TWOvFrK1M3DY7jrdB6wSlpCq+lpBq70sqQUf/edxeP43Jxavcplh
         KM+YfleIXKtMtVtUZIr2V5Vlqjx2OSzWrqdr6WD9e/bghclJrAllsOj66gnmMxIrciEe
         NYdg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="PrAK/jQG";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ClVU/CnW0LzFmVzzBwxpLqixRMnseXdZmnifpDG4QN4=;
        b=GHqn3CgsvD3qEjdtLyNaz8aE4o1AK+AuloqtiVrVdt9CNZEDLUv3Yd5vUM+TMtjyXD
         DOO0YtJzHzhcrBYLjC3XTVAO8UyZYT+EAZ2/wjvN7TwQFraoFyo7DOxqZQeuva6k5lQu
         fRcZarTNFO2CVNn0SEuAlEQiQRB57cHcDReRwrpHRUIuuA0hjCdiPLWEecb33N6lW7Mm
         EINXDb4mxw3lTsfMUBFsiLdAuA0iKYqJYTFHMTHNyaZk7Ta19AIW/BLYQ04oOLRW+pK6
         p5kJqyhOr48L6pDfFvRycm7YHQGdJHG4iegpxdQjBzp9OltgRdYO2nuvwqaiHfAGYNZW
         vvyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ClVU/CnW0LzFmVzzBwxpLqixRMnseXdZmnifpDG4QN4=;
        b=BDuiIuiwuX2GzsKFUslknRzKR1MB7pBFhN+xaPg2X07D2+vu8jmvh4Zv+YC/Mk0Tbv
         oI3eOGvRrS2SG61Ua+lWPmT9ivrqbsTXWYUENIeN5jzrTGAewCDd0seu/GEHTxUbpRjV
         LY9B7vDHhg/UROfisYLvqVrEYpExUxHWMQdTbIqqFZngZ1O55e1JN95l4K8/g7ZMPQ3r
         ZYaT1lA/7ScrWzT7pvsiwoVu3lUZSj/ZIf7OBqE4xRcidRXUT6b06L/QtT2iEwqIehDb
         y7COv5JfF69nfnLbpcnv2U91JraAEF5gfGt2fk1yyxHp25FPBj0wdm7drAcpBTfFDRwz
         OxxQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532KBf8okmcT6EF0L5HnPmWfAI6SPNJVqFKJGexEHbbXR+CBYtye
	zN+6uAOc9Ag6eoaBPDCtTlQ=
X-Google-Smtp-Source: ABdhPJxCUGGqUaNUCPnqAk5+Zskh03UQOQleReztBWO2M7CUAZO9xiTS4T/CgPEC+Sn89TIWROoREQ==
X-Received: by 2002:a62:7697:0:b029:1dd:fc37:9542 with SMTP id r145-20020a6276970000b02901ddfc379542mr6137944pfc.35.1612832323111;
        Mon, 08 Feb 2021 16:58:43 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:88c7:: with SMTP id k7ls7548308pff.4.gmail; Mon, 08 Feb
 2021 16:58:42 -0800 (PST)
X-Received: by 2002:a63:ce58:: with SMTP id r24mr19335600pgi.192.1612832322478;
        Mon, 08 Feb 2021 16:58:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612832322; cv=none;
        d=google.com; s=arc-20160816;
        b=TX4vlMJ9E/kj87T/M6mbbiOS/Ekts+3tnIowMY3hFnIwXjYVBfvK9verRz+9vA4hna
         rj49as/LBa4IitoUZYXduAbeJNhc/NbLvGfzYQSzjO7AFod/BGeP5OMIbr/q1+13YovY
         yTOCwllhKCxvFThFUCy0XVULDedjLVifdAsxRCIJIXVuNIFef3BIPY4HqX39p4FBC3oo
         EGCqZFVsInjvNUi+aIvisEgt1RHnziSbulRWBesZi0ivGEp7pReVT9Rv9tG8lHxLToyw
         ATqsOqfWaCB5fw4sXRFuWCSwcE+sSsTPXM/csh8khTevkSLDQGPkXkYiHBlULsot578T
         Calg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=wj15o7IxAsOkynxURUiOYgw1AFn9DGFTRWl6qdISNCY=;
        b=QOplUB8C17CyxtzUN8gxa/f3SHQe+U2BV3l/X9XPekGwDH/2eDQAZKdQG7/sQpnSfo
         VeKw0TUh7RieryqQsqBisVhef6T2boVq1W8l4jtpBVV2xOdw5n5UhOPv6xxCjfFTWUnq
         9zDG6rKQnOyD0LM+qzfuRbH3fKIXcWjuzKhNcOJBVLV6Xa5DMacPUtPlSr4tazPsG6IS
         XkPhPUY4mRXWf2vmzJgkrGnkz/2MZbkgTAQDYRjSuT2F/+7V/SA0/cUc6bxWHkSzWvCT
         IMZu0s0K26eASsDroaFnCUhMdx2Wk9qYC026xi5iabJSKBtO+J+jjCgBUPwU/S9TApXW
         pgTQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="PrAK/jQG";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q21si801202pgt.3.2021.02.08.16.58.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Feb 2021 16:58:42 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id E556464E82;
	Tue,  9 Feb 2021 00:58:41 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH v2] arm64: Make CPU_BIG_ENDIAN depend on ld.bfd or ld.lld 13.0.0+
Date: Mon,  8 Feb 2021 17:57:20 -0700
Message-Id: <20210209005719.803608-1-nathan@kernel.org>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210202022441.1451389-1-nathan@kernel.org>
References: <20210202022441.1451389-1-nathan@kernel.org>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="PrAK/jQG";       spf=pass
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
depends on !LD_IS_LLD"), ld.lld prior to 13.0.0 does not properly
support aarch64 big endian, leading to the following build error when
CONFIG_CPU_BIG_ENDIAN is selected:

ld.lld: error: unknown emulation: aarch64linuxb

This has been resolved in LLVM 13. To avoid errors like this, only allow
CONFIG_CPU_BIG_ENDIAN to be selected if using ld.bfd or ld.lld 13.0.0
and newer.

While we are here, the indentation of this symbol used spaces since its
introduction in commit a872013d6d03 ("arm64: kconfig: allow
CPU_BIG_ENDIAN to be selected"). Change it to tabs to be consistent with
kernel coding style.

Link: https://github.com/ClangBuiltLinux/linux/issues/380
Link: https://github.com/ClangBuiltLinux/linux/issues/1288
Link: https://github.com/llvm/llvm-project/commit/7605a9a009b5fa3bdac07e3131c8d82f6d08feb7
Link: https://github.com/llvm/llvm-project/commit/eea34aae2e74e9b6fbdd5b95f479bc7f397bf387
Reported-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---

v1 -> v2:

* Conditionally disable CONFIG_CPU_BIG_ENDIAN for older versions of
  ld.lld now that proper support has been added to ld.lld 13+ (thanks to
  the quick work of Fangrui Song).

 arch/arm64/Kconfig | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index f39568b28ec1..912da4e2ab59 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -952,8 +952,9 @@ choice
 	  that is selected here.
 
 config CPU_BIG_ENDIAN
-       bool "Build big-endian kernel"
-       help
+	bool "Build big-endian kernel"
+	depends on !LD_IS_LLD || LLD_VERSION >= 130000
+	help
 	  Say Y if you plan on running a kernel with a big-endian userspace.
 
 config CPU_LITTLE_ENDIAN

base-commit: 92bf22614b21a2706f4993b278017e437f7785b3
-- 
2.30.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210209005719.803608-1-nathan%40kernel.org.
