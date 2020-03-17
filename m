Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBU4CYPZQKGQEZOA4SQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x540.google.com (mail-ed1-x540.google.com [IPv6:2a00:1450:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F8F91883CB
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 13:23:47 +0100 (CET)
Received: by mail-ed1-x540.google.com with SMTP id x1sf18123311edv.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 05:23:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584447827; cv=pass;
        d=google.com; s=arc-20160816;
        b=ihtDnG23qKLvToJodRrCPY4nfsy7tLNIPKhyL48SGpiZXxSqPRrkrbhoKbtjfhaqe1
         KBFLfKpzwFNoo9RVZZoOnshOE8Vqxwf3O71A+JYHpfzsGzrq5aJ/8tAfQXwG6gBDnCyR
         vzhfVBCbuDzJwyKOBcvs4VE6HorTsWbHK0I0HyRkELgFRpFKU1S3TDQsbMG0hDNYyBjx
         C1SZ/ZphTOmPIG17BGUvhp9P+GUqdEbRhxNC3kUAz4j8qsRkyMz2Q6jMCOWHUpVKVaBZ
         X+WggtvYdFp68PoiCPSrtkgmpHlGC0HL76pTexSi8t55Y6+206P0KzfTxSN8fdsa9oQ1
         lXJQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=UKQBbPHoffPRG0inWsv8gnmkRpF2xK+5478nsPcUAmA=;
        b=J2UrI8zO0Vv2tYJ88bmT48LstioBxqPgi+XVjeBhQDYhEUs5VAagP9+i1BZ5c/qA9U
         2sd4fTWVBO8OT97AGJcqPp+vflmECQ9VuYcczSwpY9PzRCKfDBuPe3GvNG73hWLpX679
         G2LLtFct/mDLsuz/fbuYa+E3xY+QrVrF+3RA8/QG54Ei9uPaK6UXKRsLxRltGiinSlCI
         iAE0ARGYddgQC/hMMhfS7Vv9bvCVT2uFWdYc4Kp4XsKRtTJ4pR5VjYmbm0kUguC0Pxuz
         b7flFGs9aK6oZK7NomeXvJGwDAgFmCUGufNU5KLDnK0TXyjNVjIwLD2OYnh3RLOeztt3
         0Kkg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UKQBbPHoffPRG0inWsv8gnmkRpF2xK+5478nsPcUAmA=;
        b=FPY7NBhRLg5ywWMfOCQK8cDon0Y8eaxnCfgtQGC7c0LgbkKHLes1IFVyXwJ9MpGEiG
         9+nRtNOzeSfivgba2sLmDvJKr89LYOe01EsqSM1QRiH5VgGJtDK2M9Mqj13aR9eju6bj
         ds9b83ZyQ8isQi4GT4v5MvvZqCTwE/E8TBsKexdzRamPkXiC5ET0mnrYeawj5TNvAQ1I
         VBHFIDHxNoOvBaIUR2XbySuiFuJHNqwNjuoHlaEfehoMg34bZfRfnMTwmEAh2809BSlz
         ckn5HaY0/ZDjfUZxOhYk821Zd6rVrl0xfiFn1vZOzPXZTdLEtP3jbfVMBEVcc0nEpKWc
         E2+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UKQBbPHoffPRG0inWsv8gnmkRpF2xK+5478nsPcUAmA=;
        b=h+umkfBtZXZyhrnbuNTEKxxAgz8ubt9CvWcNm1ZN8owFoNUKYMLZQAkJqKhhXa8Ri2
         5GugjiPLsUzbPM5NAasRfVWkzWa+c6MP4gCt2Qyqr40dku39p9T29Vm98xuMjdPNCEmt
         hPcXVVW0M3unoQe73gjAlnrRPV3LtCabr3M7R+/2s7kE+XeyfTQDDSQQOZ2tgJgwoSLf
         suvM+XetC+aLNr8nv5fs9JQtZ/K3qZOuErU6Pvv/wmGYcjkKRkQiPZM0pUpocEQhkjO9
         y10ihn8C1/NC7hozmnxQ8WmNxXY2/cwTk4uCgVXIVBM4s4jKS/3IfTUqt10zSZH87Juo
         r30A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ21E6ybtvxdZsjFINO4kNuQx4jtO6pSCEB6eWBCKdtBgNBZoXjA
	BYrRqwe+NLuAD8CK8LwJJcs=
X-Google-Smtp-Source: ADFU+vtA5udXVI5rLD+5MNKX5LJceCS11nWC4Z4bn31f8O4NJPYcJXk0CjPwhsxKlXvbmCNaBwOMzA==
X-Received: by 2002:a50:fc0f:: with SMTP id i15mr4824537edr.296.1584447827308;
        Tue, 17 Mar 2020 05:23:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:58a:: with SMTP id 10ls10938491ejn.11.gmail; Tue, 17
 Mar 2020 05:23:46 -0700 (PDT)
X-Received: by 2002:a17:906:4b58:: with SMTP id j24mr4003166ejv.2.1584447826769;
        Tue, 17 Mar 2020 05:23:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584447826; cv=none;
        d=google.com; s=arc-20160816;
        b=Q1YXrEHqrYb1UIhCIJwwLliYk5bK/znQ7KdWfAucBPLqirB4nEyXsBEuMEkfhj+n2x
         UIUO1gppY9mQ3RMhc41wvlhihRyRXbieNsA6xCxB4dDLagtgFr5FmpD43Xkb99M8XY7k
         EwV3Gqv1RjYAyBFsR50Z0ApZZDCjoyuLigWPS6l9Df/sprCAVaoMytuwu7X+MW1MYYsr
         VOG+f8Eqq1LWbYS8t8SBLSuaA+F6IFfTzI5YD5/63VAn6caLwWlB87O+bLZ01eT4Rw86
         U1zN8fOUnj/mGr9Gf8zInNlXT9He/PVERvIiutCLH5EVIJlbVIoE+OB13bidnHEe9dqa
         QM5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=+XT/Ggmb5iCSA91ILbc1CBNHo5HVyQjPuJuT0/OJUWM=;
        b=bWmKEAoiGV7h1Xk4+IHczdn6SNvAcXGQUOXR/jQVQ1nC2aeLd9rs7tEjlCCKDCZ2jn
         gdRXEKd1Vq5ajS9NlVMS3AghOBeqpx/TtwTCE46jCVKBqFA56cr4FmgK+ht9Hp+tjp5Q
         3JCD5wrNiyP01gV25HsWbA2Zk53WdBxl+OIJcikc00i3SCsgkCxW/Vm8gc73ohTn8VZa
         +f4YGS2f1IHAVITo1EDuDufvQ+Ls3CJhqMCy5xwmh/T2Adpvxk+FvBBM5cI7d0JyZ3T2
         yDh2B/VgfNiYeC2VpLHqfYD2UacZ3NH95+OFAqH554mmyj3+v++HzaOTO4Z8L6gzaqrD
         GHBw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id l21si100964edq.4.2020.03.17.05.23.46
        for <clang-built-linux@googlegroups.com>;
        Tue, 17 Mar 2020 05:23:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2B33CFEC;
	Tue, 17 Mar 2020 05:23:46 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3539A3F534;
	Tue, 17 Mar 2020 05:23:43 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	linux-mips@vger.kernel.org,
	x86@kernel.org
Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will.deacon@arm.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Russell King <linux@armlinux.org.uk>,
	Paul Burton <paul.burton@mips.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Andy Lutomirski <luto@kernel.org>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	Stephen Boyd <sboyd@kernel.org>,
	Mark Salyzyn <salyzyn@android.com>,
	Kees Cook <keescook@chromium.org>,
	Peter Collingbourne <pcc@google.com>,
	Dmitry Safonov <0x7f454c46@gmail.com>,
	Andrei Vagin <avagin@openvz.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Marc Zyngier <maz@kernel.org>,
	Mark Rutland <Mark.Rutland@arm.com>
Subject: [PATCH v4 17/26] linux/elfnote.h: Replace elf.h with UAPI equivalent
Date: Tue, 17 Mar 2020 12:22:11 +0000
Message-Id: <20200317122220.30393-18-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200317122220.30393-1-vincenzo.frascino@arm.com>
References: <20200317122220.30393-1-vincenzo.frascino@arm.com>
MIME-Version: 1.0
X-Original-Sender: vincenzo.frascino@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172
 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
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

The vDSO library should only include the necessary headers required for
a userspace library (UAPI and a minimal set of kernel headers). To make
this possible it is necessary to isolate from the kernel headers the
common parts that are strictly necessary to build the library.

Replace linux/elf.h with UAPI equivalent in elfnote.h to make the header
suitable for vDSO inclusion.

Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 include/linux/elfnote.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/elfnote.h b/include/linux/elfnote.h
index f236f5b931b2..594d4e78654f 100644
--- a/include/linux/elfnote.h
+++ b/include/linux/elfnote.h
@@ -59,7 +59,7 @@
 	ELFNOTE_END
 
 #else	/* !__ASSEMBLER__ */
-#include <linux/elf.h>
+#include <uapi/linux/elf.h>
 /*
  * Use an anonymous structure which matches the shape of
  * Elf{32,64}_Nhdr, but includes the name and desc data.  The size and
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200317122220.30393-18-vincenzo.frascino%40arm.com.
