Return-Path: <clang-built-linux+bncBAABBVVU4DZQKGQEMSXTB4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DF3218EDD5
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 03:09:28 +0100 (CET)
Received: by mail-io1-xd3a.google.com with SMTP id d13sf10405956ioo.23
        for <lists+clang-built-linux@lfdr.de>; Sun, 22 Mar 2020 19:09:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584929367; cv=pass;
        d=google.com; s=arc-20160816;
        b=MR9p5+BWyh5Rc9oPjTy9bitxhy3e3wSlBUI6klni2QfCFmT5Jsk6CY0VBygUcFOFVh
         /VuId135EKsHjRD0vDalk9eWsVjt5IX6JqwEx3lxkfre9qwzfNClNWZOunGJWiU+CAoM
         8xU+1m36eIh7/jeZ+V23oBGEst15Fz5OFA0mby9Qb5jXIyMBJh7N0NVvhjPBriRoC9Ab
         UFmqZe6o1QlXACXTOUaom/vKOzYgumP+ItQa3qYMMYRLLrc0kEZQdwXkR4lBuf4IBJfU
         D2XAQWtNduoKOXI5iRuhFsETiMWphWprlGuu1ElRhXEXp7rCRxURDyfse2GDN5Q65IwI
         B+hg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:dkim-filter:mime-version:sender
         :dkim-signature;
        bh=hYYcGWqtRflichONeWhsKL7YKQoahwv7fEhdLQekq7Q=;
        b=H8d3nU7/m9UbP/XR64YEXPLu0Fpxp9U5KZRJvOjim3rUG5oBNwZwRNesC1S9sBIq1H
         EJ960SOSgZhH4YpLCuRMIEhwnhwv0OSe7QZx9WfG3tH7mfAa+wPJprdkAsiMV+RZPBfl
         NKzHD1KR2S1V4IuTCoo7zVplpGIQHVT8l74IyygUdYNwltJ16WLabzHWaib5mY5LW4Ff
         lNfDNHwmtrVrppjFrkQxctv9FY0p6JFAXzsB+VQoUDkANZy2/7UknYd6BEzBxVXKxv+z
         D3BATUlbRujRnG4BPcmTBYDxnHlSJtKJOsK1dyXkebTJkZngaqQcNb/ANPwm4Xg2aGEB
         Wc0A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=GY4fTicq;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:dkim-filter:from:to:cc:subject:date:message-id
         :in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hYYcGWqtRflichONeWhsKL7YKQoahwv7fEhdLQekq7Q=;
        b=aGP8lCDUl/bePb9bIRRux2X6aZeDmGrdr6TBAquY2EP1I69PFS4NMcranun+eGFO+c
         /6CPbWMuoiNB5pLKZJm5mtI6g2dMAzIiL8u+djtzHLCCu2B+JjdHROVHX957HMLE9Vsr
         JxPouReyKHQQ+7xh5tZWy6ORah38cuS+CK8X5/M+y6+3Ym8R5zBdu+6TKBZKWjolKfFp
         SPzEHgnPUjO8zsODAunzPKxaH+FtUfeaVebyEmFM1FVMT49PkJLcn7NKG8jVRNxn4eZg
         GQ82btvnnQJU4s7fNQKWIPiUsnNFBJsA+Fp5j5boml3z9KyqkV0b/JiX7mPzRTvL/IA+
         zfIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:dkim-filter:from:to:cc
         :subject:date:message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hYYcGWqtRflichONeWhsKL7YKQoahwv7fEhdLQekq7Q=;
        b=h3AWGyMxHdsySqCIh1ODKdh/1iKzPNKw95xICGrTr3ZjL/XfRicKVuuc9ehqdHkscE
         opL2L/uf3MVkBWe9cGFjrkvBImH5FMOVAaBc5VQK2xOFuGBSOJYDtl2bEb8eys4zPe/i
         bI9TME3oUow59abUFEECbW+Ovj+P6vLulW8hGkZJA/caPrQtc6Jjf5WJrnfUJ4lomXbM
         pbZabJ4FaXa67yYUK6X16EUQhov5x+H9tgwLXlY2lZIki5YuFZNogKv0UIKI6WE5sQJZ
         k0hlQNIjDj98J8mkaDrXzQamSs/BDqY3Vg7NP9+RiG6t7Y70uXAnWHAEhOgXNUMgzB1x
         1jLA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ21Rfmnx01yyufO/40gNxWV5hGrtJcQLI8q0BvM1AKJAhr8lu1E
	5MWuUxQsPE2eW3xjuvtTFm8=
X-Google-Smtp-Source: ADFU+vuSujtJzVDR8dYST7hHCmHa5+hOUG6tY77N2TGu+a9u5QTYUQEfc+ldVoFFaPsjxwqiMDYtoA==
X-Received: by 2002:a6b:f913:: with SMTP id j19mr16951276iog.124.1584929366747;
        Sun, 22 Mar 2020 19:09:26 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:9057:: with SMTP id v23ls1933867ioq.5.gmail; Sun, 22 Mar
 2020 19:09:26 -0700 (PDT)
X-Received: by 2002:a05:6602:2434:: with SMTP id g20mr16471131iob.97.1584929366441;
        Sun, 22 Mar 2020 19:09:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584929366; cv=none;
        d=google.com; s=arc-20160816;
        b=QpbU88aQkKE1W9PwF5Kt7JuLuX6zDOT6ko6dp8HzG6IhOoG6fuJwrQRuPtPxh/Qrzz
         R0YQJaRIhVMSqd37I9s4YbXt+5CRbNgCezt5+kcVzJJcn+znpcvdqcFE1GahGwI45rnu
         t4od3yvWsWWwAkz3GCYaT8ojP35qKuDfqNESJcCpzuH753m2SBi5qSB/YBjizv7rQUrU
         mmDTzsKn5R//O0J2vM/b4c2VLuv064+/ciApAOFLYPG40NsNB1pbUXwMjWmB9zJ/FQXL
         AMoyugrMcipv/geufnmHBuwOFhK+JGQhNc72l/ta4VJsCKnM72sJtrRHUqeprB3yABZZ
         zVVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:dkim-filter;
        bh=nd/oHID8eH/14iCoxOKwvwzNHlBaytPY2wrQZxGEUsg=;
        b=srX2wiKlO3M1y80VFseghvPSyA0S58O7msZrP0pzyHx7ornc/izLmOwhoi2IzbURnT
         lRbViySOgJncyJIosdiM17EaS3v4PhkHuPo88syfqCAfUo9kxawpY3oh8nqNKJFxxewL
         wmeJvJwv7Qki8kNzkNwvd68vdI1+9ckpRTzBfjrNb5l17PVY9o6lXBBViUlqSl0aIYVv
         xzQWu3VcCGGFVFjX7qk4aJbYcA9GSSWVKlHafb/P6YbwxiHVRInFgfPdXIF2YnngXdMV
         nNvEwJMhdjPO9Jbs30PbIcPPKKsWlDKQgi8LWdUG6Q6nEU/JhMmSNmFLTfSiCz86SQzW
         DLHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=GY4fTicq;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-11.nifty.com (conuserg-11.nifty.com. [210.131.2.78])
        by gmr-mx.google.com with ESMTPS id u6si975938ili.3.2020.03.22.19.09.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Mar 2020 19:09:26 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) client-ip=210.131.2.78;
Received: from grover.flets-west.jp (softbank126093102113.bbtec.net [126.93.102.113]) (authenticated)
	by conuserg-11.nifty.com with ESMTP id 02N28urU002941;
	Mon, 23 Mar 2020 11:09:00 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-11.nifty.com 02N28urU002941
X-Nifty-SrcIP: [126.93.102.113]
From: Masahiro Yamada <masahiroy@kernel.org>
To: x86@kernel.org, Ingo Molnar <mingo@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>, Borislav Petkov <bp@alien8.de>,
        "H . Peter Anvin" <hpa@zytor.com>
Cc: linux-kernel@vger.kernel.org, "Jason A . Donenfeld" <Jason@zx2c4.com>,
        Masahiro Yamada <masahiroy@kernel.org>, Ingo Molnar <mingo@redhat.com>,
        clang-built-linux@googlegroups.com
Subject: [PATCH 3/7] x86: remove always-defined CONFIG_AS_CFI_SIGNAL_FRAME
Date: Mon, 23 Mar 2020 11:08:40 +0900
Message-Id: <20200323020844.17064-4-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200323020844.17064-1-masahiroy@kernel.org>
References: <20200323020844.17064-1-masahiroy@kernel.org>
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=GY4fTicq;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

CONFIG_AS_CFI_SIGNAL_FRAME was introduced by commit adf1423698f0
("[PATCH] i386/x86-64: Work around gcc bug with noreturn functions
in unwinder").

We raise the minimal supported binutils version from time to time.
The last bump was commit 1fb12b35e5ff ("kbuild: Raise the minimum
required binutils version to 2.21").

I confirmed the code in $(call as-instr,...) can be assembled by the
binutils 2.21 assembler and also by LLVM integrated assembler.

Remove CONFIG_AS_CFI_SIGNAL_FRAME, which is always defined.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 arch/x86/Makefile             | 6 ++----
 arch/x86/include/asm/dwarf2.h | 5 -----
 2 files changed, 2 insertions(+), 9 deletions(-)

diff --git a/arch/x86/Makefile b/arch/x86/Makefile
index 72f8f744ebd7..dd275008fc59 100644
--- a/arch/x86/Makefile
+++ b/arch/x86/Makefile
@@ -177,8 +177,6 @@ ifeq ($(ACCUMULATE_OUTGOING_ARGS), 1)
 	KBUILD_CFLAGS += $(call cc-option,-maccumulate-outgoing-args,)
 endif
 
-# is .cfi_signal_frame supported too?
-cfi-sigframe := $(call as-instr,.cfi_startproc\n.cfi_signal_frame\n.cfi_endproc,-DCONFIG_AS_CFI_SIGNAL_FRAME=1)
 cfi-sections := $(call as-instr,.cfi_sections .debug_frame,-DCONFIG_AS_CFI_SECTIONS=1)
 
 # does binutils support specific instructions?
@@ -190,8 +188,8 @@ sha1_ni_instr :=$(call as-instr,sha1msg1 %xmm0$(comma)%xmm1,-DCONFIG_AS_SHA1_NI=
 sha256_ni_instr :=$(call as-instr,sha256msg1 %xmm0$(comma)%xmm1,-DCONFIG_AS_SHA256_NI=1)
 adx_instr := $(call as-instr,adox %r10$(comma)%r10,-DCONFIG_AS_ADX=1)
 
-KBUILD_AFLAGS += $(cfi-sigframe) $(cfi-sections) $(asinstr) $(avx_instr) $(avx2_instr) $(avx512_instr) $(sha1_ni_instr) $(sha256_ni_instr) $(adx_instr)
-KBUILD_CFLAGS += $(cfi-sigframe) $(cfi-sections) $(asinstr) $(avx_instr) $(avx2_instr) $(avx512_instr) $(sha1_ni_instr) $(sha256_ni_instr) $(adx_instr)
+KBUILD_AFLAGS += $(cfi-sections) $(asinstr) $(avx_instr) $(avx2_instr) $(avx512_instr) $(sha1_ni_instr) $(sha256_ni_instr) $(adx_instr)
+KBUILD_CFLAGS += $(cfi-sections) $(asinstr) $(avx_instr) $(avx2_instr) $(avx512_instr) $(sha1_ni_instr) $(sha256_ni_instr) $(adx_instr)
 
 KBUILD_LDFLAGS := -m elf_$(UTS_MACHINE)
 
diff --git a/arch/x86/include/asm/dwarf2.h b/arch/x86/include/asm/dwarf2.h
index 90807583cad7..d6697aab5706 100644
--- a/arch/x86/include/asm/dwarf2.h
+++ b/arch/x86/include/asm/dwarf2.h
@@ -20,12 +20,7 @@
 #define CFI_RESTORE_STATE	.cfi_restore_state
 #define CFI_UNDEFINED		.cfi_undefined
 #define CFI_ESCAPE		.cfi_escape
-
-#ifdef CONFIG_AS_CFI_SIGNAL_FRAME
 #define CFI_SIGNAL_FRAME	.cfi_signal_frame
-#else
-#define CFI_SIGNAL_FRAME
-#endif
 
 #if defined(CONFIG_AS_CFI_SECTIONS)
 #ifndef BUILD_VDSO
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200323020844.17064-4-masahiroy%40kernel.org.
