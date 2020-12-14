Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBYHT337AKGQEU4DTI4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x640.google.com (mail-ej1-x640.google.com [IPv6:2a00:1450:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id EB5AA2DA00B
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Dec 2020 20:15:44 +0100 (CET)
Received: by mail-ej1-x640.google.com with SMTP id y14sf4925126ejf.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Dec 2020 11:15:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607973344; cv=pass;
        d=google.com; s=arc-20160816;
        b=WGw77DdqesQGvEiekCr1RAphBrN2SusJxKjvJsCC7H/fMk7caw8NPUtKDsmJb3RFwB
         dnr7E8sxHZ8hF/+YT6mhBEDRoRFSNntC1qejjGi4iCr1ZHCTOpLKmGlXEGbavR1KW/IR
         xfU/VJ3T9FLC/5PQqyQMx/qVpRqcj+YXqZOVUV72OQwg6hmmwkkf4XrJOselHIGDdPjZ
         Hnv7XYCRZrg1zpNtaXDAr53sxbFi/Y+KZShfvsyU7Ity8lojxQ+txyfXv4W8E1YftnNm
         qd0Y+tm3oCIbcb1ieEgctgFhWT70p6NY1r2xzamUoYdlkiSXj5Ot+3ZXl6kTJEin1O11
         uQ1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:sender:dkim-signature;
        bh=kXaAOoc2NjNTCmwN9pfKf0N+Hg/XPMc08vALKe4t6QA=;
        b=P5fS5fjFY00BFpz+nMbBbEWK+6ys8n1EqnMR14GihkB/6OZ9YNWWItlgFsk2/qON8a
         DQS5Rl/PrnagVebrIK/BrIwCLCZ1JgN5Lf02Xg74la3jdLGw0bBRJKZuCX9n4candygI
         1pG3VnUyI86d10dXEB3X+rQpSIKlApnJzRCrr+fC24mtrA0X8bDBDGPF5c/MYZ+RGy97
         PJzvJoVR2773lK8ugk8Lwhg8zptGdvQRZ+80yA+qAxDzKA0maXxXW7OjFBRWO8BIZuBd
         WTPUa72uI72f9vY41XcGqtP66K5l5X6dR8q3Y9uXYwPti7lMCi9Y5r4aSTOvoiqoNxTB
         bCoQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=i11amYTd;
       spf=pass (google.com: domain of 337nxxwukebyahranckkcha.ykiyhwjc-xqehp-hejqtckkchacnkqlo.yki@flex--elver.bounces.google.com designates 2a00:1450:4864:20::34a as permitted sender) smtp.mailfrom=337nXXwUKEbYahranckkcha.YkiYhWjc-Xqehp-hejqtckkchacnkqlo.Yki@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kXaAOoc2NjNTCmwN9pfKf0N+Hg/XPMc08vALKe4t6QA=;
        b=gKDXwihUgC92awIzTC9WdVB9bfETtG+c9Y4rUOogNhA5pLUuxLiDvHd+e8KBl3RkV0
         +1+BCfulTpvNcGT0w4UkQTMBf42PkpodxO1edmWsLmoy5N6FucSEuq1TTPIiKSP2zUCP
         iCfdLJfnEI14cPWksIX9nYsAEw71yDQvp1AfORMSaxKan70XZoGAdoHYllFbRrRpAA4z
         0EUutoetfuabc0iAYMuW1OO9JHqpQAR2eR5iOHR3meuNSJWxDK7BRW+zvjVsQcrpFET7
         zrzfYxEuS+XJuQOKi0efDEqh/8/HVuBMc/PPwhWnOxD1WHa9s3L5CCDqyWsL5trxrqeC
         xR4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kXaAOoc2NjNTCmwN9pfKf0N+Hg/XPMc08vALKe4t6QA=;
        b=RI8No+VRODEh6LOW85cbVg1J3W5ShrFQYnTbSr/glcnYxlAgdgWFQSiEogqgRL3as7
         ml6hhinOAADbX5GzioAQ+gHhUhj4h4aIt/eQUqAumSTuCrlVcip1D1GAMgvGHITk0x31
         BZz7hNXU5J1MRBN5LDjDyHyOzTDrOEL16KnYEt6yvCyO8Jgt0/+vziWWcsJJi7TWz5XO
         aLv36FtG3y8tfScDXXNH6kK2cSSa2Ur5oHoBxXvZHyKUxibOOBZJQAexfv4G7qKoFL4+
         h1F+w45sIe/NtjyxIcUefKhZpfSMIS7DjkldKcs3sS47YPxiXgXeBJlgVGl0EAeE0uTR
         oKDQ==
X-Gm-Message-State: AOAM530hPELfd5rXmsRG5C0NJdQ4YE/dpM9pNLewUmBNEXpvu0cTdqZ/
	64yyEVR/sMoOkUYeJZ9AWoU=
X-Google-Smtp-Source: ABdhPJzaV/KygQxK4ZBLzIKiOPJhLm/IqCfqIWAMP3vjJvGniHJnOZ1R3nle8c6NP0iD4JD20SUCFA==
X-Received: by 2002:a50:b905:: with SMTP id m5mr25787433ede.292.1607973344700;
        Mon, 14 Dec 2020 11:15:44 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:5591:: with SMTP id y17ls839130ejp.5.gmail; Mon, 14
 Dec 2020 11:15:43 -0800 (PST)
X-Received: by 2002:a17:906:195a:: with SMTP id b26mr11779492eje.4.1607973343664;
        Mon, 14 Dec 2020 11:15:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607973343; cv=none;
        d=google.com; s=arc-20160816;
        b=G07cYvmpqefyrnJZdYCOwx7OLneIvvWUQl6JxllE0cc5hcTC/sSMiRUTsL9zD6zxxQ
         E264MEOg1x4l5aQOkjhGQl++slWLuqRyePl6TidXdet29f1kPdv1H3x+2BcNHN9Bnei9
         BN3kYMB6V2htfLPky1pRQkj9eOvjGDytaSB5ZtFKPb93Qw1CkBz8eOPlVertmEGuWrl3
         2m6jHbjsZ4/gUmb0S8XJhBDJbQgIpfTcHKv/xoxkzpsZcK45E0z5NNDzyl08FFKIm+w2
         ndnAbLNdM5B6k7+HxXp5scK6wvjGKxGgHlaecq3cimJtFPDqvqAqkWNb9Eul0bQtP7Ef
         w19A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:sender
         :dkim-signature;
        bh=OXWZqhdKXz2gQWFbmjoSr/aaAS/tBQHv4yy/WSCCm6Y=;
        b=hYPVC7TE/0eD6Vdnl21O+px9IlFTwvmVMaTOELFd6WTv2bxOw6xgbdNmGSH7LfeGQV
         Ybl0Qs1u1a0q2M1D14ga0jck2jJUdjJVvWOBqk9+BHZa5c6yiUB8nmHDYKM8E3/xzrHJ
         yz1YWUhyl3ox/Ojbsp9kBRg8tW6TXbxy4ZVfrAfH8BXYKpzcBXUZMCph7738Vs8PKpQZ
         N/CQxEjmz/LBZciP3nOz8v34mUhW95J2qcGMSwzdpSKn3vJxGCyjrqwTh38rh39D3nLf
         4Xx1lnMhb562Kov8LPrCbaeKDYZvpFG/VxAC5Kxksks/twQ5+oLvVZQjoEE1sVDFy6ju
         IjnA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=i11amYTd;
       spf=pass (google.com: domain of 337nxxwukebyahranckkcha.ykiyhwjc-xqehp-hejqtckkchacnkqlo.yki@flex--elver.bounces.google.com designates 2a00:1450:4864:20::34a as permitted sender) smtp.mailfrom=337nXXwUKEbYahranckkcha.YkiYhWjc-Xqehp-hejqtckkchacnkqlo.Yki@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wm1-x34a.google.com (mail-wm1-x34a.google.com. [2a00:1450:4864:20::34a])
        by gmr-mx.google.com with ESMTPS id e5si412444edk.0.2020.12.14.11.15.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Dec 2020 11:15:43 -0800 (PST)
Received-SPF: pass (google.com: domain of 337nxxwukebyahranckkcha.ykiyhwjc-xqehp-hejqtckkchacnkqlo.yki@flex--elver.bounces.google.com designates 2a00:1450:4864:20::34a as permitted sender) client-ip=2a00:1450:4864:20::34a;
Received: by mail-wm1-x34a.google.com with SMTP id a205so3834270wme.9
        for <clang-built-linux@googlegroups.com>; Mon, 14 Dec 2020 11:15:43 -0800 (PST)
Sender: "elver via sendgmr" <elver@elver.muc.corp.google.com>
X-Received: from elver.muc.corp.google.com ([2a00:79e0:15:13:f693:9fff:fef4:2449])
 (user=elver job=sendgmr) by 2002:a1c:2783:: with SMTP id n125mr25239565wmn.74.1607973343268;
 Mon, 14 Dec 2020 11:15:43 -0800 (PST)
Date: Mon, 14 Dec 2020 20:14:15 +0100
Message-Id: <20201214191413.3164796-1-elver@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.29.2.684.gfbc64c5ab5-goog
Subject: [PATCH] lkdtm: disable KASAN for rodata.o
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: elver@google.com, keescook@chromium.org, akpm@linux-foundation.org
Cc: linux-kernel@vger.kernel.org, kasan-dev@googlegroups.com, arnd@arndb.de, 
	gregkh@linuxfoundation.org, andreyknvl@google.com, dvyukov@google.com, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=i11amYTd;       spf=pass
 (google.com: domain of 337nxxwukebyahranckkcha.ykiyhwjc-xqehp-hejqtckkchacnkqlo.yki@flex--elver.bounces.google.com
 designates 2a00:1450:4864:20::34a as permitted sender) smtp.mailfrom=337nXXwUKEbYahranckkcha.YkiYhWjc-Xqehp-hejqtckkchacnkqlo.Yki@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Marco Elver <elver@google.com>
Reply-To: Marco Elver <elver@google.com>
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

Building lkdtm with KASAN and Clang 11 or later results in the following
error when attempting to load the module:

  kernel tried to execute NX-protected page - exploit attempt? (uid: 0)
  BUG: unable to handle page fault for address: ffffffffc019cd70
  #PF: supervisor instruction fetch in kernel mode
  #PF: error_code(0x0011) - permissions violation
  ...
  RIP: 0010:asan.module_ctor+0x0/0xffffffffffffa290 [lkdtm]
  ...
  Call Trace:
   do_init_module+0x17c/0x570
   load_module+0xadee/0xd0b0
   __x64_sys_finit_module+0x16c/0x1a0
   do_syscall_64+0x34/0x50
   entry_SYSCALL_64_after_hwframe+0x44/0xa9

The reason is that rodata.o generates a dummy function that lives in
.rodata to validate that .rodata can't be executed; however, Clang 11
adds KASAN globals support by generating module constructors to
initialize globals redzones. When Clang 11 adds a module constructor to
rodata.o, it is also added to .rodata: any attempt to call it on
initialization results in the above error.

Therefore, disable KASAN instrumentation for rodata.o.

Signed-off-by: Marco Elver <elver@google.com>
---
 drivers/misc/lkdtm/Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/misc/lkdtm/Makefile b/drivers/misc/lkdtm/Makefile
index c70b3822013f..1c4c7aca0026 100644
--- a/drivers/misc/lkdtm/Makefile
+++ b/drivers/misc/lkdtm/Makefile
@@ -11,6 +11,7 @@ lkdtm-$(CONFIG_LKDTM)		+= usercopy.o
 lkdtm-$(CONFIG_LKDTM)		+= stackleak.o
 lkdtm-$(CONFIG_LKDTM)		+= cfi.o
 
+KASAN_SANITIZE_rodata.o		:= n
 KASAN_SANITIZE_stackleak.o	:= n
 KCOV_INSTRUMENT_rodata.o	:= n
 

base-commit: 2c85ebc57b3e1817b6ce1a6b703928e113a90442
-- 
2.29.2.684.gfbc64c5ab5-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201214191413.3164796-1-elver%40google.com.
