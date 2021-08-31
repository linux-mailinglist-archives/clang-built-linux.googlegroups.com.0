Return-Path: <clang-built-linux+bncBDP5FWOTVEGRBTH7XCEQMGQEOVH3KQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id 612093FCA08
	for <lists+clang-built-linux@lfdr.de>; Tue, 31 Aug 2021 16:42:21 +0200 (CEST)
Received: by mail-qt1-x83e.google.com with SMTP id 98-20020aed316b000000b00298da0dd56bsf4629347qtg.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 31 Aug 2021 07:42:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630420940; cv=pass;
        d=google.com; s=arc-20160816;
        b=lwzRW6vrD0qJrInaDu9coAcir84P0Frcorvwj44+ZVxiiEwwTBdaQNqyioLUdGH4Xo
         BGsKdmX01+nDFDVVmdXlID+GRkc3WSUlxx7Ig4OZ6UvouxOaX3OCtRQsow4+Tpey9M75
         nvIY9nuDc62CFQ7nmTsneduUm0LChGopUVfpWY+R3sChGMaqzQ9BxByGBThn4bfwUVWj
         FCkxF14ZdPGirLVLx2I8D2vp4NE4oFXEfMr8J0homwZUe/ajQdif5sDTREH07SkUogT7
         mbx4GPIJLEgCbYDLHLYzVnaWn4QEUdHnwRtQBkV/KLYGM0bt5Vk6rwegH21GzPuMxiW3
         Vm1g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=aTEzVBHqB2mY7vTZ0yHqWIvUF9cCq6xFAiddbQRfmqg=;
        b=mR86zOiYZGiFfhp1d7GPjNivqFSvW6APLihOvvRokbkK8igvfc3pEZjgDFzIP6r2Mx
         xVYPo50yW19KEsJQOWmz3QY48C8pvp2tLOZvzc9W44olssQieTLfnz78VdUC5yJ+iIGv
         MxIMmkecmr8r30cHIFKcQD02sklA+MlNBlPAEkj/Tqp/vpg2on+Dc6qSpXvVxkkMl7YE
         Gt6rTkJDk4TUzULaHN8OhdRck/S2cvBCRsSX8bKGU7ryHADTSrOQAD6QtHjaPQqBIuKa
         uJFdlIyp3yJZZBgvHOtalPa43U33SNDzZSkCRGCHEDgTmebFs0I0syPNqBWA73HpTuUC
         0vXw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of alexandr.lobakin@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=alexandr.lobakin@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aTEzVBHqB2mY7vTZ0yHqWIvUF9cCq6xFAiddbQRfmqg=;
        b=barAlECJam4t4Kata/yj7qEozdcK5M1IDkqyP3z9bTxW3SrzhAWd6X7NPfZB6pjHCr
         aRxcCGV6l4dWHxdQUbz1jXoW+ggZJ5GgzYYlcRvr0tFzx80qCVNzulA/LRg17tNr71U0
         jOpILh3hA4J9BFFj7DeqIxOHKXo8FG9SMk42TmVbJ+gvwZNK/MLXr54JWFw5R3FiL1hr
         iu17uDZcSry9DYHVtj47/o4MMjGVwmHFKQkxhsXFOtYKd2BrDZFVXFr7D2rvaYXuNFTu
         Qn9ZljGLnk80Mfmkuqx52YNVTrInMSaNXdxzKCkjuIlLPvDe6AQBxaKlTaNuvrtHtNY7
         4Gvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aTEzVBHqB2mY7vTZ0yHqWIvUF9cCq6xFAiddbQRfmqg=;
        b=HoaQX1pcYvJ/PLLCRgNx4DhxAwbbaHa1phKIZoE3oOZ/YmO0kcEgJ/lVUz4JQHSW1f
         NnK2fvAMJQvHrq2hFEGXeDTYDCpa/jSgx9MCdn7KO2j/W75r5SUsfAWbsxYFCgXFq/N2
         KQ3Hq2s1t2jyoudzggmfmNKP/j5ifIDdK+6TcYOmf8Pt94nDhMnO+pLB84fCMvO9cT2m
         685dS24jas1vhNnW1FiZPQ49AGBR3+8ELW/36zcFRHlIJ6khDgDnCeeBay5HJINEJk2G
         x55axglAtHUs5tCksexsCiCZ/Gd7IslhubUfC0GzfLmS1JZWGgf8qzlHm6vvKr82a0ko
         ETHg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533jR+usvUFYe8TJSFuQB6E+9lN7MU0jTxe4uI8A0FkUyJhuQYoz
	UjRt2CgSjtxZdAkPpegiO4Y=
X-Google-Smtp-Source: ABdhPJz1rNmvYoK2OFrYAaVP5ghIN1of+dmpCwechhltgtziJA0zVZKgrahvRvBOPdILnfoVf3jocA==
X-Received: by 2002:ac8:6894:: with SMTP id m20mr3097834qtq.332.1630420940458;
        Tue, 31 Aug 2021 07:42:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:4006:: with SMTP id h6ls12806371qko.11.gmail; Tue,
 31 Aug 2021 07:42:20 -0700 (PDT)
X-Received: by 2002:a05:620a:145c:: with SMTP id i28mr3343765qkl.118.1630420940000;
        Tue, 31 Aug 2021 07:42:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630420939; cv=none;
        d=google.com; s=arc-20160816;
        b=Y5wsAs/L2TJHk6LsRG2PGGgOzrRLrXp/SCamQDfeXFNN4migIgFPFLO8h7VitK/0C8
         0+wgJOSdFzQAKOWGhRhnQmebFEROMFQZEIkV7sPElgmrHP/kGr0j5AcQvI6eypWVPLm0
         kZQZbI2TqVOmc0H8y40cmTgXvVvu3ZTpcMaJUmhWuibiuEO0x83atTLQG/bzrAk7pcmq
         n4DnYJf9DX6rPhLYR/sjIQ1nzrxFtx1xCD0/u+dBxFE42mwaZJUh/eAnYPzuZ4dxLxFC
         9FZGkNQnwD7mcU/DB+VHXPGJgp3SLrc8B0bHw8FnKGkic2Fau67lks6b7BJzdwekRAtB
         1IVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=c0euDP6iWIrsQLEy5iDZrfrB0jyHkNjXY0JBy0jjVOA=;
        b=TimkZLCkehwJ34U0qX+tzVZfD2wIUGyBKPcDbR/v6AeHFWStQNbxsxR0iLqJ45V6Iz
         3zeN7KtukWqu8VYsHC1wt2nRB2HaQkj/h/n5pj2BlSFatJCY2zYX1E5F0NQTrB9PlbSe
         ELo8E3NEnflmXNKrPBC82++VFAMmgNr4H43LlTz1jDlAGsZrRT5y4vZo88Imae2XvixA
         gGA5gSO38HcDE5CLick0hDl7Tq22ZqHOSavxpP/HT4+eizQQ5sMVEul1YsjcQozsiTpc
         +WHA07blX6v6+DtstYZgeqbAzPOMGSCcbnIK3di5tUREFxtiAQz6oKk+PLFo558OfaF3
         m8vw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of alexandr.lobakin@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=alexandr.lobakin@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id 6si1278907qkh.3.2021.08.31.07.42.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 31 Aug 2021 07:42:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of alexandr.lobakin@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
X-IronPort-AV: E=McAfee;i="6200,9189,10093"; a="279497136"
X-IronPort-AV: E=Sophos;i="5.84,366,1620716400"; 
   d="scan'208";a="279497136"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Aug 2021 07:42:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,366,1620716400"; 
   d="scan'208";a="498317032"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
  by fmsmga008.fm.intel.com with ESMTP; 31 Aug 2021 07:42:03 -0700
Received: from alobakin-mobl.ger.corp.intel.com (psmrokox-mobl.ger.corp.intel.com [10.213.6.58])
	by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id 17VEfmfW002209;
	Tue, 31 Aug 2021 15:42:00 +0100
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: linux-hardening@vger.kernel.org
Cc: "Kristen C Accardi" <kristen.c.accardi@intel.com>,
        Kristen Carlson Accardi <kristen@linux.intel.com>,
        Kees Cook <keescook@chromium.org>,
        Masahiro Yamada <masahiroy@kernel.org>,
        "H. Peter Anvin" <hpa@zytor.com>, Jessica Yu <jeyu@kernel.org>,
        Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Marios Pomonis <pomonis@google.com>,
        Sami Tolvanen <samitolvanen@google.com>,
        Tony Luck <tony.luck@intel.com>, Ard Biesheuvel <ardb@kernel.org>,
        Jesse Brandeburg <jesse.brandeburg@intel.com>,
        Lukasz Czapnik <lukasz.czapnik@intel.com>,
        "Marta A Plantykow" <marta.a.plantykow@intel.com>,
        Michal Kubiak <michal.kubiak@intel.com>,
        Michal Swiatkowski <michal.swiatkowski@intel.com>,
        Alexander Lobakin <alexandr.lobakin@intel.com>,
        linux-kbuild@vger.kernel.org, linux-arch@vger.kernel.org,
        linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: [PATCH v6 kspp-next 06/22] x86/boot: Allow a "silent" kaslr random byte fetch
Date: Tue, 31 Aug 2021 16:40:58 +0200
Message-Id: <20210831144114.154-7-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210831144114.154-1-alexandr.lobakin@intel.com>
References: <20210831144114.154-1-alexandr.lobakin@intel.com>
MIME-Version: 1.0
X-Original-Sender: alexandr.lobakin@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of alexandr.lobakin@intel.com designates 134.134.136.31
 as permitted sender) smtp.mailfrom=alexandr.lobakin@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

From: Kees Cook <keescook@chromium.org>

Under earlyprintk, each RNG call produces a debug report line. When
shuffling hundreds of functions, this is not useful information (each
line is identical and tells us nothing new). Instead, allow for a NULL
"purpose" to suppress the debug reporting.

Signed-off-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Kristen Carlson Accardi <kristen@linux.intel.com>
Signed-off-by: Alexander Lobakin <alexandr.lobakin@intel.com>
---
 arch/x86/lib/kaslr.c | 18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/arch/x86/lib/kaslr.c b/arch/x86/lib/kaslr.c
index a53665116458..2b3eb8c948a3 100644
--- a/arch/x86/lib/kaslr.c
+++ b/arch/x86/lib/kaslr.c
@@ -56,11 +56,14 @@ unsigned long kaslr_get_random_long(const char *purpose)
 	unsigned long raw, random = get_boot_seed();
 	bool use_i8254 = true;
 
-	debug_putstr(purpose);
-	debug_putstr(" KASLR using");
+	if (purpose) {
+		debug_putstr(purpose);
+		debug_putstr(" KASLR using");
+	}
 
 	if (has_cpuflag(X86_FEATURE_RDRAND)) {
-		debug_putstr(" RDRAND");
+		if (purpose)
+			debug_putstr(" RDRAND");
 		if (rdrand_long(&raw)) {
 			random ^= raw;
 			use_i8254 = false;
@@ -68,7 +71,8 @@ unsigned long kaslr_get_random_long(const char *purpose)
 	}
 
 	if (has_cpuflag(X86_FEATURE_TSC)) {
-		debug_putstr(" RDTSC");
+		if (purpose)
+			debug_putstr(" RDTSC");
 		raw = rdtsc();
 
 		random ^= raw;
@@ -76,7 +80,8 @@ unsigned long kaslr_get_random_long(const char *purpose)
 	}
 
 	if (use_i8254) {
-		debug_putstr(" i8254");
+		if (purpose)
+			debug_putstr(" i8254");
 		random ^= i8254();
 	}
 
@@ -86,7 +91,8 @@ unsigned long kaslr_get_random_long(const char *purpose)
 	    : "a" (random), "rm" (mix_const));
 	random += raw;
 
-	debug_putstr("...\n");
+	if (purpose)
+		debug_putstr("...\n");
 
 	return random;
 }
-- 
2.31.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210831144114.154-7-alexandr.lobakin%40intel.com.
