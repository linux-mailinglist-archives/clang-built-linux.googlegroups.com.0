Return-Path: <clang-built-linux+bncBC2ORX645YPRBV7HQOFAMGQEWHJFT2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id 5339940B790
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 21:11:20 +0200 (CEST)
Received: by mail-qk1-x740.google.com with SMTP id e22-20020a05620a209600b003d5ff97bff7sf795477qka.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 12:11:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631646679; cv=pass;
        d=google.com; s=arc-20160816;
        b=UWnrB2Yb+ORfPKQqQp64WKPufs0aOmT5aoiWNr3rg8YU5tCbw695JZC6BOMohQlLPf
         xGRpJo+CUB7L5vun2S6AxKh7/LRp5rh/Pmfd/5/xSEBLVFxirVVzFODRfygT4hNzatVR
         Mk6Z8cZPoiRYBCXSMygTsTu2kGWqpTrLPty7oZYh7Qvp+eaXN4sCRiWZJsv8rBP1ppd0
         nvgnJy9MSMM81N1bIyNlq0dTYvB4pDRazVXNdOlEOq/bPFr2FCJUvEAie4LrY8uV5ZQ0
         ctuLz5o0bRHY0+XQhpwTE5etkyCw2ChDUK+S+0dZ176pK5Ow41Uf0xToqkGAX/gpWzFE
         Hw7w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=KGtkkNL53a6rpfUd4RWzb9gb+I/VULEE4PBQ8Mn/Wy8=;
        b=IDug9eElQD2ACtsO0p3UaXNN89rOE21QFT+GVh0exPrMGUEdKb5Ocdp92D5FvFUxrF
         8EROjYLl6l+/wHtnniBAdAz2qUncz5BdLwVJsiCdHGSGVpY0i87CzFIuuXAKS+OUs/cT
         HDE4CdwUv1Bj0hCPgScCNLXDIbrsRTYpXerAm2FwkZBy8+Ptz3NMS3dIztwTGkD87/jE
         olxBPU1oneDMjYDnphsEfGCQ3Yfqrq5D0xr5+9Pbwje1LzckAZaXIKtQ8WfmibaXDPjl
         d2SYUfiJb2L8i3noqamzsd1c2Aamp/YkP3HA9BDspyQQ9D5XLTcLhLv1zXvP+h9DbIEI
         nLog==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=AqILFiwQ;
       spf=pass (google.com: domain of 31vnayqwkanefx95gb8ixa1a3bb381.zb9@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=31vNAYQwKANEFx95GB8IxA1A3BB381.zB9@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KGtkkNL53a6rpfUd4RWzb9gb+I/VULEE4PBQ8Mn/Wy8=;
        b=TSPJzxt8ae3PbDhHhaW4c/WizCEPhqe47RkdCXLX2zUH78mml/eXna6XLD5zsp6DmB
         tMYxYEjzsBu1yPlPSt1rBq1BKnDYE8r1rTfHANNkVzz3PXItuPqrkF/IzMdq88XAIgRp
         iQqHv7sR1Fm7Y7YFkRpQunPVlRhZyC8SqZKuaQBTZRR+UapHJJzStQ/TLOeezG9Bncxw
         UaTub0w8Z3VnvrJcNbPeHJ5kF2TCTb3MRcq1lQZCN4SWEcEH6XUgCPXhRK+VBOGNMZ0I
         aPD/4PdZZptMjdPaYn02ZtUeBJXBJfXnYYW4tmGM/BDXqiMjvZw2Hc5ni+i39vnbitkT
         mkAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KGtkkNL53a6rpfUd4RWzb9gb+I/VULEE4PBQ8Mn/Wy8=;
        b=kCEiQfP3QEKUWO/U06NOg6zNTLJjy0/XvhSdHtsQ5NBvL5gt70IoSI3R5FoZbiV3Q8
         eOBjyRWM+8RiWQOGf0vRQ2iGVZq5p8uFTWn76GY2p6iuCQEwPtx+j4NAz9Upa1WDmm9U
         3ZiwcMxbCZhSwOopDZ/vfFgSp7O0kx3q+S73/no983MEGCvZNcj+EYwSaC0UxleA6z3o
         BNXF9SCDOCLPOp3HAwgkr4/rCb4gTIAGM1FiZeijOXbpDZXbvgMnGan82td/VzlNZv37
         vXJbZcGny3kULC2eRGP8zz4nh6upv6tsN4Km9rH6TL5xspLToDrq62QWFCUccdGoihU9
         IO9Q==
X-Gm-Message-State: AOAM531CNDNbtby+50Iw8jG167ZBxQSMp133YTBQFxpgSzFWJKwrupfA
	8ihw+NAMckxWluSqq5PC+Io=
X-Google-Smtp-Source: ABdhPJxolzuQYxczEvSvV7KSKBqGne4vm+66axq15yn/jeKoGlBRDuWQ4Y0QINwZ37h19Tuk6CR/HQ==
X-Received: by 2002:ad4:5569:: with SMTP id w9mr7149847qvy.52.1631646679477;
        Tue, 14 Sep 2021 12:11:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:5a8e:: with SMTP id c14ls17475qtc.7.gmail; Tue, 14 Sep
 2021 12:11:19 -0700 (PDT)
X-Received: by 2002:ac8:d1:: with SMTP id d17mr6331359qtg.311.1631646678985;
        Tue, 14 Sep 2021 12:11:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631646678; cv=none;
        d=google.com; s=arc-20160816;
        b=rRc3dPgnnrWAWPS9+oTRYx3JGTYhYU+YsUUO+c3WWOR6Lhi8Gm6R8I16/hOF73GBT4
         PABgp2wGk0pzghvaK1tiaHlqMUZWSmMwtJ0Of9xNz75uPMjQgWGpwNXm5PAgBremuoEd
         5chJB3aYCHyoDl97jyB7RuGfslfG9//ky+8ez0s7gGsk0AhoDP5cMcNoijO0cRPTKBhr
         5ZD9SA4jOqW1Caow2NVdnJ2uBKnFczhAv8NIVgDjIDFusC8IBAADGmigkngiAp3fGdA+
         hhtLrlNjRi3DSxYz18nRj6RCRgSaumsfbYINOU3V9EjJKNhSVebftFLgtvjNc1yFixKh
         0ZBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=kfIc+vswMal1y/GnkCq7gBbYkzLItYqo8IumxqOd7RU=;
        b=jjqefkGF0lhTPCNZQ8/JyXjlD/jBJckV2oi6ubdyE+yRVxQr1fiAAkKj7vYcdQQ8Sw
         4H0AB+pKZBt3ormLrn+XtGQFJ0leElqTnXjCad32o+Q1WmWtuKsOz1guw3beeBKfaVSc
         hrrwXe7RgsqTflXkKlGcLedeE67w6oVWerZWJmkwHMgxkVMH5+mOORcuQGmOxdMNWNVi
         OVnDmA4NA6Wu9fIbRyYdgghrW+rabGBZreMS6KU2IndCBOyZF1L93Zi2kybvKNAPd38y
         K9jVh1cdVy8qXtEW/60vmjHPa3Gn5yw7DHff168C1LZC9dQk8TijTncHcCLfaKyt4vOt
         i4Pw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=AqILFiwQ;
       spf=pass (google.com: domain of 31vnayqwkanefx95gb8ixa1a3bb381.zb9@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=31vNAYQwKANEFx95GB8IxA1A3BB381.zB9@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com. [2607:f8b0:4864:20::849])
        by gmr-mx.google.com with ESMTPS id 6si1154929qkh.3.2021.09.14.12.11.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Sep 2021 12:11:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of 31vnayqwkanefx95gb8ixa1a3bb381.zb9@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) client-ip=2607:f8b0:4864:20::849;
Received: by mail-qt1-x849.google.com with SMTP id p21-20020ac846150000b02902982d999bfbso3688qtn.7
        for <clang-built-linux@googlegroups.com>; Tue, 14 Sep 2021 12:11:18 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:d19c:5902:49bb:c41])
 (user=samitolvanen job=sendgmr) by 2002:a0c:b2d6:: with SMTP id
 d22mr7033291qvf.7.1631646678669; Tue, 14 Sep 2021 12:11:18 -0700 (PDT)
Date: Tue, 14 Sep 2021 12:10:42 -0700
In-Reply-To: <20210914191045.2234020-1-samitolvanen@google.com>
Message-Id: <20210914191045.2234020-14-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210914191045.2234020-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.33.0.309.g3052b89438-goog
Subject: [PATCH v3 13/16] x86, module: Ignore __typeid__ relocations
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: x86@kernel.org
Cc: Kees Cook <keescook@chromium.org>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	Peter Zijlstra <peterz@infradead.org>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	linux-hardening@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20210112 header.b=AqILFiwQ;       spf=pass
 (google.com: domain of 31vnayqwkanefx95gb8ixa1a3bb381.zb9@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=31vNAYQwKANEFx95GB8IxA1A3BB381.zB9@flex--samitolvanen.bounces.google.com;
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

Ignore the __typeid__ relocations generated with CONFIG_CFI_CLANG
when loading modules.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/x86/kernel/module.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/x86/kernel/module.c b/arch/x86/kernel/module.c
index 5e9a34b5bd74..c4aeba237eef 100644
--- a/arch/x86/kernel/module.c
+++ b/arch/x86/kernel/module.c
@@ -197,6 +197,10 @@ static int __apply_relocate_add(Elf64_Shdr *sechdrs,
 			val -= (u64)loc;
 			write(loc, &val, 8);
 			break;
+		case R_X86_64_8:
+			if (!strncmp(strtab + sym->st_name, "__typeid__", 10))
+				break;
+			fallthrough;
 		default:
 			pr_err("%s: Unknown rela relocation: %llu\n",
 			       me->name, ELF64_R_TYPE(rel[i].r_info));
-- 
2.33.0.309.g3052b89438-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210914191045.2234020-14-samitolvanen%40google.com.
