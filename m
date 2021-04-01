Return-Path: <clang-built-linux+bncBC2ORX645YPRBGVQTGBQMGQE4JOZMLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3d.google.com (mail-vk1-xa3d.google.com [IPv6:2607:f8b0:4864:20::a3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CED33523AA
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Apr 2021 01:32:43 +0200 (CEST)
Received: by mail-vk1-xa3d.google.com with SMTP id r63sf2264638vkg.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Apr 2021 16:32:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617319962; cv=pass;
        d=google.com; s=arc-20160816;
        b=UWnvSq0NBv/Ts6LKxUNuSkN1GUpjMI5OQaj7VddvT2v4I5M3Nx+JuT/sjPd9vgKsy+
         D6i5CJkE8lLkeQtk7LmJXGuV4P1vQEJ7jN3WY+wD6QLMqIlM0uUdSrB90+QROJA/1KDE
         CoAsZBaNR9GJ9jCjnZAaVVUuIXZx+YSqdyUBQ9Z1DmTmsmndFl4G34at3hp6xLT6LZLZ
         qdcH9VVHgC95YkUBHX4PwuhAi6to9GgTLOkzPw5GpM08zJr8N50n6KrmLuQAkL/BuqWK
         tHC/4KqBnDJILRN3TSZeLcep4w0PBqbzENpf725GRBj+xlXmPJfbNW7cOxjjirqo3K38
         GY+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=cDpl43eOR5ooa2CJ31nGxdzLexWRpBclDW/Emhw6uWs=;
        b=ZS6/TAK7oI4ii+741SNff4XGKgsTTfezMVrQ7kRekTF9rvNtqsEONnADGI08H84fUA
         WHacsYhcbIQX1COIijS2/v9/nsBH7h1rlQsnpRVLfOKgwHJF1c1B0rqtUE0/2WkbvmEP
         3HQLIMHh4zklFYGQLLQ2h3Ohc6ubVTAv2U6ACN/ySyDDEXRoISANVguIqOAkswsCaodu
         SMn71/Mpkha+6yrqHy9nMgcDyMarWIw2z2Vmvt4ypgMTgzo8f2rjkfQOwUK+vqNd8gPW
         er5bzaePzxroF+DAeOs8PBSv9MMlv4oj7/xoq9i6eEi3FBil3vuaUlxvW+4fANkFr/Ie
         nvxw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=WwXYJEUt;
       spf=pass (google.com: domain of 3gvhmyawkagwckwsdyvfkxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3GVhmYAwKAGwcKWSdYVfKXOXQYYQVO.MYW@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cDpl43eOR5ooa2CJ31nGxdzLexWRpBclDW/Emhw6uWs=;
        b=KABj2ln8284X3WCTV0aUGC9BtcIoqkjLTlpHNZUVpdyFtgK4EarXcFfpPmK45jx6xu
         NtEMTIj0nQ/mOSiK6NE8QMI3Kg6qyF8pPK8XAatR/Raz05eSp2Fr45IZzfGlQSC/Dple
         Mau3peMcEDxEpnUM6sc7btQOlh202e4B3uDcmlybtca0RffloHQXZ4MVIYF8IY/2VdPe
         rcTmEFWdBYjyKfTP5VtvDPJhrGEfQ27dhd5Cq9V6FataeZbnBTxyCIOkS0FECPivcBhK
         a3eC5Y6i+/c8jkHXj6Uikyq16BBgCYkfXBYI02K8bMkNUWH8RKndkMx2XPW/lyiWVmww
         joLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cDpl43eOR5ooa2CJ31nGxdzLexWRpBclDW/Emhw6uWs=;
        b=Pfs7ay7wr51pe7JLKZzsEPAKojpxl2W+Bx6OjqS5hQ52FmIAFhwH6bVCbY72+y/kNM
         6Ulw72WyTQ5RmNf4liv+y9F2m4KZyyZPVrEEaeAYmKs3wpihPHOcenfccl+UKf8ui1Ke
         izNwWC6HzsWMshbORlyQF7PuFDQ6QB03iD8FgmvKc+T7drQBWgKyr53iCoc2D7XxSBu5
         MSofpt/Zwud0t8tmAaQMac/ncLV+0ivwrarHmI33BIlD03jweB9SVKcLFrs6nrOSDPH5
         WqPix6zweN3j86SzpmLzGvIReria56QAVmT6Xdcu3EyarGWpyTFyDlF7O4ku/uQTAae2
         a76w==
X-Gm-Message-State: AOAM532xmUUauj4IVzlolJdHyXLW2gzHV4I76SKOEXDdrq115qAqeiy3
	u3QdYWOBrSibZuwinEy3GoE=
X-Google-Smtp-Source: ABdhPJyjg5z1RhxMbN1zRVqPrL3xeyemz2DbmcWICy9hRB82Dan/gBHFeZBxZM7Sa5wdoCjpQ2HSCg==
X-Received: by 2002:a67:a44:: with SMTP id 65mr2682117vsk.9.1617319962559;
        Thu, 01 Apr 2021 16:32:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:a4d:: with SMTP id i13ls975055vss.10.gmail; Thu, 01
 Apr 2021 16:32:42 -0700 (PDT)
X-Received: by 2002:a67:ee4b:: with SMTP id g11mr7397914vsp.48.1617319962060;
        Thu, 01 Apr 2021 16:32:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617319962; cv=none;
        d=google.com; s=arc-20160816;
        b=hMq+0hLcsAk6fwBVBDoD2lK6l9dTjvvM4PVrzQ3mMHH8N9h3HAqIAuOTtFDM9rn5fa
         K/kUTcH/fMFmJB9xg/zcY4CI7feRrJFgm/ThKxJIbddS24y0NXb0P+LBy1HN22AtAGh6
         CJdXQ1Azk3CCoxPlhwn/ezN5XJcC+IEp0Fk1OC6RcQLIXmhVdlGfz89wevrKiGeB5Wka
         MMAyy2mYuDiSlRMkqwHua/aVZdFjqLoXUEnXpxg60qGIuGhrhh7QqRK7KgCq9MZNvfGR
         a6h1OQorFjrOC5yhDCYRRYcIXpM7SHfc+JjOLt6bmGkrCMN6RwwKqtEbCvdUGRtQDruK
         6qfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=h2cUBfrxKiLvUm4K3FiEqQsW7/CwbTTOloFCTdH2CHs=;
        b=jLEyL4RBzg+zSfXKurL58lrYu3bJPOlOs9bYlnv3qN5dYruRD2elqcFmWWjKPp7jMC
         VsYbygN12uSXRf4F+4+yLo2UDc3E4UdVK7JHsnD6FBjB/2DlYvNH6reXLu6q1ks6CHi+
         vW/MEMG3b789oE3Yxv4Tx1t/m+tx7UdHUbT08sRsg/9NiJ4P/sHoZpeyKotk7bHYy/Wc
         LzpiJUxRThvWE3x1n1C6gLluZUBeFbETiWstrfvHztkJO9QCHxW8yb3q2y4mAzhtSLcw
         wDaJlzWBNdhrnGP/HQ8UxtPbLFEdTVAWwoiJNtNRBqIf38YRHbDgBO1cgRmVZKcC8Wb4
         hpwA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=WwXYJEUt;
       spf=pass (google.com: domain of 3gvhmyawkagwckwsdyvfkxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3GVhmYAwKAGwcKWSdYVfKXOXQYYQVO.MYW@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf4a.google.com (mail-qv1-xf4a.google.com. [2607:f8b0:4864:20::f4a])
        by gmr-mx.google.com with ESMTPS id v23si533550uak.0.2021.04.01.16.32.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Apr 2021 16:32:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3gvhmyawkagwckwsdyvfkxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) client-ip=2607:f8b0:4864:20::f4a;
Received: by mail-qv1-xf4a.google.com with SMTP id a7so4287806qvx.10
        for <clang-built-linux@googlegroups.com>; Thu, 01 Apr 2021 16:32:42 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:4cd1:da86:e91b:70b4])
 (user=samitolvanen job=sendgmr) by 2002:a0c:eb87:: with SMTP id
 x7mr10859482qvo.14.1617319961673; Thu, 01 Apr 2021 16:32:41 -0700 (PDT)
Date: Thu,  1 Apr 2021 16:32:09 -0700
In-Reply-To: <20210401233216.2540591-1-samitolvanen@google.com>
Message-Id: <20210401233216.2540591-12-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210401233216.2540591-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.31.0.208.g409f899ff0-goog
Subject: [PATCH v5 11/18] psci: use function_nocfi for cpu_resume
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Kees Cook <keescook@chromium.org>
Cc: Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, Jessica Yu <jeyu@kernel.org>, 
	Arnd Bergmann <arnd@arndb.de>, Tejun Heo <tj@kernel.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Christoph Hellwig <hch@infradead.org>, Peter Zijlstra <peterz@infradead.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, Mark Rutland <mark.rutland@arm.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, bpf@vger.kernel.org, 
	linux-hardening@vger.kernel.org, linux-arch@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=WwXYJEUt;       spf=pass
 (google.com: domain of 3gvhmyawkagwckwsdyvfkxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3GVhmYAwKAGwcKWSdYVfKXOXQYYQVO.MYW@flex--samitolvanen.bounces.google.com;
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

With CONFIG_CFI_CLANG, the compiler replaces function pointers with
jump table addresses, which results in __pa_symbol returning the
physical address of the jump table entry. As the jump table contains
an immediate jump to an EL1 virtual address, this typically won't
work as intended. Use function_nocfi to get the actual address of
cpu_resume.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 drivers/firmware/psci/psci.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/firmware/psci/psci.c b/drivers/firmware/psci/psci.c
index f5fc429cae3f..64344e84bd63 100644
--- a/drivers/firmware/psci/psci.c
+++ b/drivers/firmware/psci/psci.c
@@ -325,8 +325,9 @@ static int __init psci_features(u32 psci_func_id)
 static int psci_suspend_finisher(unsigned long state)
 {
 	u32 power_state = state;
+	phys_addr_t pa_cpu_resume = __pa_symbol(function_nocfi(cpu_resume));
 
-	return psci_ops.cpu_suspend(power_state, __pa_symbol(cpu_resume));
+	return psci_ops.cpu_suspend(power_state, pa_cpu_resume);
 }
 
 int psci_cpu_suspend_enter(u32 state)
@@ -344,8 +345,10 @@ int psci_cpu_suspend_enter(u32 state)
 
 static int psci_system_suspend(unsigned long unused)
 {
+	phys_addr_t pa_cpu_resume = __pa_symbol(function_nocfi(cpu_resume));
+
 	return invoke_psci_fn(PSCI_FN_NATIVE(1_0, SYSTEM_SUSPEND),
-			      __pa_symbol(cpu_resume), 0, 0);
+			      pa_cpu_resume, 0, 0);
 }
 
 static int psci_system_suspend_enter(suspend_state_t state)
-- 
2.31.0.208.g409f899ff0-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210401233216.2540591-12-samitolvanen%40google.com.
