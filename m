Return-Path: <clang-built-linux+bncBC2ORX645YPRBYMYQL6AKGQEBBJMH7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BDF0288E14
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Oct 2020 18:14:27 +0200 (CEST)
Received: by mail-pg1-x53d.google.com with SMTP id c21sf7024178pgi.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Oct 2020 09:14:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602260066; cv=pass;
        d=google.com; s=arc-20160816;
        b=babtr9RWnKTU+27JJnz290JqoZLQRinfRcPZjuLOC/Ey3q8wZ+DiitXHocDuJ4DbDt
         kdTHElqRdCjnUEMnyQlI6uEtVOZTnEAVWNUFTbjYdXRCPOhctVvvyFz3XEdOe5/Tqob1
         ap0fTK0S153cAmfwA+KJZTS81rrU7gvLU9IefpsIImljrtLSzxPORYaOpxjS22dattOE
         VC2F8ndZA+rUGdoPVXYqPeoDcIJEK/tLzuyDADJSFdg5WD9tO0vF4VMhNVnUsRFLHIKn
         jLRdcpUWJUxZq9d/MO51lfE8ks03C+DAE7uEmChk5mUhFexHXISJjpyutdT8gHwz/dMT
         CjgQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=KyCdOtMmDheQ491ELuT8PEnJAeXpE0siMMnuBXK9R1Q=;
        b=LtpgV2myqQPQ+PDB2e4KGmfprzZHUeG7wshtqcgyZ/yyBmnq5Ld5PdQSSojVZ/C7Bs
         byfCv+mPQga4tvmhsYQABExI4IE7u+3UmHqeAuyt9txZoJUGFaKQXQjfy4ZSRBRviO8z
         /OXMn0hALyyYPOJR1RqcsRgDAPdbtuKe/gtnmGQ6vchlY+BoBrVDfnVRcYcOvlnaFHhB
         dK356ePxkpYvTiMH8CnmgrXSn/0i40m/BWBn5dRbjttoI6h5E1boDsmkUmoArjZtY5Bc
         6VK1q6Kk6E8uDZ4FhG4BNHAsqNjpIlCcw1seG/2UUncccPfqX1DQHUO/TVt/9vQ2ZmV0
         uyxQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=M0h0mH4w;
       spf=pass (google.com: domain of 3yiyaxwwkah0tbnjupmwbofohpphmf.dpn@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3YIyAXwwKAH0tbnjupmwbofohpphmf.dpn@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=KyCdOtMmDheQ491ELuT8PEnJAeXpE0siMMnuBXK9R1Q=;
        b=Xduc+DnepNXiPKchn3rxYx4QogbApRfw1cuuvEwvXUsO0NZ5naC0MZOsyhyPcaJlDX
         kjumSVqjwjD9UDC2c3apNYkg7bAR67opG9cLf3Z8LCemEYC5UzaMLKd9qj/rVjj6ZAEi
         7pDaiO4KAnC4dBxWwZRiBoeUwJhywpJKV3L9H14wetzj4nqz5zy5Hwi/HjF7EoBvJGNl
         91DMVr8Eq4Rp08kKLkOsY447GjFGs4/plJU3+LhY1BnDv0ezBG9FrZLm1eMgOnejI6i7
         aJw3lc38fh6vUXtwtIvWFZlMqt03JQ+SZIC1MGn5Kj1WWQ7dzWDfPHN+QPtjJv1HHG05
         E1lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KyCdOtMmDheQ491ELuT8PEnJAeXpE0siMMnuBXK9R1Q=;
        b=qULIxVQVv8rqeGSApRj0wwtiJlhnubHRJEjeBZefw/Hx0wcrpPSFZP48eJcnbOfjGv
         i8KUf/MufYNvy7g96nI64adSLI6izX27RckRSjtWvr1qmafUhx3GmRul6XY7pih7ht1Y
         p6lEHeFSBLspB63FYZRx/CWLDbzsI4RoKd36nrwAfxTi1WD+98g61VWtwVpx5V9YAire
         NME/eehJZHuzMnfauenARRGM4fzpGhQ8ZZocAp7axnSP0UwPd+IHI59Lej9AzDg4Edjh
         sy8ZG63rqblDhblqEB37CAvA1ReZa3DL1v/U68kK86FblYzrmOs5KeVQ9X4j5cLdfVvx
         cccQ==
X-Gm-Message-State: AOAM532t8+7jQGLp0pzVgr42VwKLBQJQliRdvJxvaiq/0f4e6OIucHCO
	ELFWjUOeJhsvTGOFQmIQZ4Y=
X-Google-Smtp-Source: ABdhPJxsEFY9T4Occ9vi8Kaz7sVy+yNh012yzyE3o22laE8fFeU5aVCdnVk4mmrgw/5fZrhasMahJg==
X-Received: by 2002:a17:902:b192:b029:d2:f08:f85a with SMTP id s18-20020a170902b192b02900d20f08f85amr12724377plr.49.1602260065891;
        Fri, 09 Oct 2020 09:14:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7613:: with SMTP id k19ls4574164pll.10.gmail; Fri,
 09 Oct 2020 09:14:25 -0700 (PDT)
X-Received: by 2002:a17:90b:33ca:: with SMTP id lk10mr4595640pjb.221.1602260065200;
        Fri, 09 Oct 2020 09:14:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602260065; cv=none;
        d=google.com; s=arc-20160816;
        b=olt89KSoIEOZl3WK30FmpifMKImNHR5Hj/79lXaVJ5m5eIZhgc6lUsqLVlypeJmtbV
         7p/PoPXLTPNby8M/V78/btZVkMe4fROJ96hjYGnon3GQQ3ozNTVmZ/tkzTvMUWlC9K7e
         rpFeZ0Rw3RMQMBOL8tTjq9nvzG//kPk4rvLB2UCEXUHthj6P3UFoj84G/N9ot9z7QP2V
         lSkASM5qYVsPn8v7IWffpriaG6a/sdaqkFMOit1G7wM/Cww35crCjWjMvS0efRHhn8oe
         +37cTU/ipN6IO2hhYVyR0fNUzDr0A2vq0mWJWralXbOjM58YYgDZSKxnMvl5ZQqqR6LS
         MBmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=JHNK5VWD3ddVakk1msJzGMuIHjr7wcpFWGy1F5g4J2Y=;
        b=RxXpKB2x9JD6TJkxsPq/4gfBZN4UO28e8gmVSIcYw2EI1SwwpI7CzTjRNFhwE4pC4H
         V6Uy/Qo8Sy9cbHI2bfU1IA1pLSVeRUBJeUTl2HspLgV2k4WNb9frg9UYLmB6nSbTB3uc
         TeOFgCPxkzqex7np3RQxmCCraB+GfxJHpMgm87LgcqOkroH3YFb9kvNhueT3fM624Sk5
         d214Y0DUtump6PBq+1dEY7g2EKJuoXe4F7trI9hkWBbun3yUIEr+fQGoKPUIwrcJJay/
         saT9iVP/mMy6+lFW7lzCiImmWxHlzkaNqFSFixAAnZZyjT5ziCD1qFV6C2FkSXVqUZUo
         WBeQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=M0h0mH4w;
       spf=pass (google.com: domain of 3yiyaxwwkah0tbnjupmwbofohpphmf.dpn@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3YIyAXwwKAH0tbnjupmwbofohpphmf.dpn@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x64a.google.com (mail-pl1-x64a.google.com. [2607:f8b0:4864:20::64a])
        by gmr-mx.google.com with ESMTPS id mj1si658117pjb.3.2020.10.09.09.14.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Oct 2020 09:14:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3yiyaxwwkah0tbnjupmwbofohpphmf.dpn@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) client-ip=2607:f8b0:4864:20::64a;
Received: by mail-pl1-x64a.google.com with SMTP id d16so6632801pll.21
        for <clang-built-linux@googlegroups.com>; Fri, 09 Oct 2020 09:14:25 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a62:7a53:0:b029:152:5482:8935 with
 SMTP id v80-20020a627a530000b029015254828935mr13281502pfc.31.1602260064759;
 Fri, 09 Oct 2020 09:14:24 -0700 (PDT)
Date: Fri,  9 Oct 2020 09:13:31 -0700
In-Reply-To: <20201009161338.657380-1-samitolvanen@google.com>
Message-Id: <20201009161338.657380-23-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201009161338.657380-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.1011.ga647a8990f-goog
Subject: [PATCH v5 22/29] arm64: vdso: disable LTO
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, 
	Steven Rostedt <rostedt@goodmis.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, x86@kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=M0h0mH4w;       spf=pass
 (google.com: domain of 3yiyaxwwkah0tbnjupmwbofohpphmf.dpn@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3YIyAXwwKAH0tbnjupmwbofohpphmf.dpn@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

Disable LTO for the vDSO by filtering out CC_FLAGS_LTO, as there's no
point in using link-time optimization for the small about of C code.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 arch/arm64/kernel/vdso/Makefile | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/vdso/Makefile b/arch/arm64/kernel/vdso/Makefile
index e836e300440f..aa47070a3ccf 100644
--- a/arch/arm64/kernel/vdso/Makefile
+++ b/arch/arm64/kernel/vdso/Makefile
@@ -30,7 +30,8 @@ ldflags-y := -shared -nostdlib -soname=linux-vdso.so.1 --hash-style=sysv	\
 ccflags-y := -fno-common -fno-builtin -fno-stack-protector -ffixed-x18
 ccflags-y += -DDISABLE_BRANCH_PROFILING
 
-CFLAGS_REMOVE_vgettimeofday.o = $(CC_FLAGS_FTRACE) -Os $(CC_FLAGS_SCS) $(GCC_PLUGINS_CFLAGS)
+CFLAGS_REMOVE_vgettimeofday.o = $(CC_FLAGS_FTRACE) -Os $(CC_FLAGS_SCS) $(GCC_PLUGINS_CFLAGS) \
+				$(CC_FLAGS_LTO)
 KASAN_SANITIZE			:= n
 UBSAN_SANITIZE			:= n
 OBJECT_FILES_NON_STANDARD	:= y
-- 
2.28.0.1011.ga647a8990f-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201009161338.657380-23-samitolvanen%40google.com.
