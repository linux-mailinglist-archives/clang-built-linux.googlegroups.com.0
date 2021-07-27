Return-Path: <clang-built-linux+bncBCZ3LGVOUAFBBBVGQCEAMGQE46TX6FA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id DADD93D7808
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 16:07:02 +0200 (CEST)
Received: by mail-wr1-x438.google.com with SMTP id d10-20020a056000114ab02901537f048363sf2854379wrx.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 07:07:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627394822; cv=pass;
        d=google.com; s=arc-20160816;
        b=YJvHl7Cj+8a/ItgBbSaOACvDtBOYf/aHIfKH47jRSNX/EN2NoLs7LENg0mb1PR42YJ
         Tjyjljf+0RzGXHSPDubDXLVk79B8SIghJuAaYYJeYu59RUQ1TEYlofK1J7XplbUH1Ew2
         bGqFXr29T/QEDUEL2As4PW6mr/MfUifgfVTUqM43qc1T/e6sw0Gej2uQZBf0mSTFencx
         /1fpQi3CWkmNya6jxH3Hx6csm7X/NLqOv0Zs0tZTVasC+gb9rN8tV/8q+Eeo0T2uFURx
         qiNTP9uNU1HbY37S4WkcVQ0UTXM7DU+yjfzYHXtbaHd0/HSfQ3iunTNWP0D+rf07Ao2H
         gqQg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=Tgvl6EILbu10qGyAkekpQTnllHoO8pPBFhsI0Wc/Cu0=;
        b=jzescUbbe+/uQxaVaOYEFbnntItaWdOOvQdNcXg2XHRjygLttdl7eZKEP1E82gbZ2u
         TOx/RHxo7JcxGSjivkJs4bV/88ngWEaFsp4KSFbw4MCdcvsTKAml0PJiWaPi14aXmZJS
         GE6YL//MaSMp13KOFIkBMl/+W3NP+2cLUw3n/clIpqH/6tCRTWz4tQ7szcYsp66DRi+f
         Y/TOl/MO4MaPO1HgFfL3mfh34EtK1WJu3cRDAeKa2lKdFsIwH364nkXg9sM/SRGOtkP5
         0ySCyhuGciUKeJu60oe8OFSc5nDVBSxRkCJun8Yhq5IzVm9EUL7w/6tGAEX5o5iMYovS
         2JRQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iqHRjUeu;
       spf=pass (google.com: domain of treasure4paddy@gmail.com designates 2a00:1450:4864:20::629 as permitted sender) smtp.mailfrom=treasure4paddy@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Tgvl6EILbu10qGyAkekpQTnllHoO8pPBFhsI0Wc/Cu0=;
        b=pFVwK1DFqT+7C/s33eokDACg2Xd6F+1dV7YSkQHfgm/vFPf72GIziQ+pIzPyzpj4Z0
         BXYkdJ0driU3pU0Z2kqed7QGawqH47xmBP+Lga+21mMAblKQ0lXfKMdgawLRJml/GBTa
         oib+nZ9P5A3MUg6/agpY8E3FShIlBvEbr8AAFKJD0nkjnN/w8hTNqMTaH9OQT9bQ3B9s
         +UMsly3tGOxZzlwsgwDxY8kKDMBDKbPzmHnPekQO6UDgdBJMy+Vy/5fEHVYOBZOLGldE
         M2lOP7dN3cUkqgeWqlqwfYHweCR2xmdKnSeBDxF/MF9cCNyDiO/amZnwYO+kydOdNyof
         eXug==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Tgvl6EILbu10qGyAkekpQTnllHoO8pPBFhsI0Wc/Cu0=;
        b=dQQAdZGELSYtm8ObmuWOtbLXbHWLiXWIolz8XVg4lCm9gLliTuT3v/7l/6w1s/iZnc
         N1pwiX7hNEI16HXk6Lh32W+5MPxKkGIphbKSadd24CpZKnNhQnC2UKSuBudHJH2VOEG7
         GSZm50CLKP1GmBMDJLXrIJbCkI9BsH5sChnp6wiS2fu1acv5KY2WIB3S5O6IdNW1gjQa
         Z2Ff+7+FFR5KMXWvfDGgJFlBrqM9wiPH3UW4ADk+O+HzOx/vCUtLGFBP4Hao7wScifhr
         6RDce7om8895KoYHhT7/bX4UoSc4jxMFe7C/jY0pKvev8zEZ/JlWWu8qabQkYYZ1d9Zh
         wvnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Tgvl6EILbu10qGyAkekpQTnllHoO8pPBFhsI0Wc/Cu0=;
        b=ExJW6Or15rRqXhkyUoW3OOVZB8ydBr2KqsEUbI0ZFuw+6fhJ56Aa+7AcshiFJcpByC
         PpHE4lGkSPcxS26tpwYfy3as9MebXvUfltOzR2Z+/KB4tzUhUjLCFYUEOf4JHMuuLwE/
         s2Pb4RD5yIPJhLt2BrDClP5po7wzrudcHdvRAPztXDk6iy2rLQWr4t+Xu2Aqgd1OJyjj
         6L70hCr7SVdsSbjvOt1yebI27bSOeXxUI7ppJlwjUPDJQFtT3z7A1tvT6SqndeJuv0MQ
         xcxq3AmL86dc/EguSHn63L3IqzRnb0Q+Xsy4FjgAPKjagJOjFWfs6pv8ZSNzizgjON2V
         RXoQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Y9I9wrEDIuOkoaBxwImZZgcLn7wMo0wFF24K77ghK/gqWSiTm
	PoFkO4zp2EK3A4MdB8DOW5Q=
X-Google-Smtp-Source: ABdhPJzSHz5SEoSLe14evALZiunp9RlJ/g3cswPYAz9HJEXe7OPEyBILLy/tv0WSxUarqJguj3dtfw==
X-Received: by 2002:a05:600c:3649:: with SMTP id y9mr5924159wmq.115.1627394822514;
        Tue, 27 Jul 2021 07:07:02 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:4c50:: with SMTP id n16ls303359wrt.2.gmail; Tue, 27 Jul
 2021 07:07:01 -0700 (PDT)
X-Received: by 2002:a5d:4b42:: with SMTP id w2mr24507763wrs.47.1627394821473;
        Tue, 27 Jul 2021 07:07:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627394821; cv=none;
        d=google.com; s=arc-20160816;
        b=S9haqi9pCAR0toKX/6FALSlFxt+1kc29SzZqKX3vQVgBYu/9UoG3JF9dnPuKmQoKBJ
         TABpE7Fo2TDbKrk0n1uEx/mO4FU95Z2CBqhH3qpSdyE/XBIs8aoVj8psaXiJ1i+VvlVu
         0xrxJrzRPuopknlVqsscNg+4AVWkAiS4csUSpo9Ona8wDjKIcR1NtW9Av6BRD1hD/5mD
         FUNGkWGurOKV8sw/nugoAHQi8dOFN1WC3Uy2wXyeHHarC+P4rasKTjReF6Rhx5k6CGW8
         1KhqskAmw8u3DeoEwSfrFaqP6XgVSnUKZw514qN6bxbMxtdd87cjRJykX7rY1X8mTGKf
         +fhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=vwb7ro3ON5FeVYMNGe8yOwscdFk4k7lbmDY8UlQSSSU=;
        b=WatDoQYKKKkc0qHHl/hEDn/+MSrIm/MdfSonSowxqGsdNc5+hnc/6TScnXmbYzsMHu
         O4/Le6rE6ZPJ8D6lGm8aOBudoPDgfXxBt52PXbGT/Zt4SasalFWjarAbad46wxigeJis
         JsZngdPcXU/eeojEJUrVSZoZI6XZ0mQ3hQr7PdAANsZ309kUjcUnvrxciA+9Mj0uijvw
         +QgjNhcdWwRzWVANhNKeonF7ZOtXMR8J7G+CojpZqGj9gLhFDGgAZhlubhvx7NGY2ebr
         iGrTe05FWa7nNQxHdSiHno1qdNA27cNzvy8wDIDL0a1ltxv2fdFm1tvMEPqE1SesIyoW
         4jWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iqHRjUeu;
       spf=pass (google.com: domain of treasure4paddy@gmail.com designates 2a00:1450:4864:20::629 as permitted sender) smtp.mailfrom=treasure4paddy@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com. [2a00:1450:4864:20::629])
        by gmr-mx.google.com with ESMTPS id x13si147829wmk.4.2021.07.27.07.07.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 07:07:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of treasure4paddy@gmail.com designates 2a00:1450:4864:20::629 as permitted sender) client-ip=2a00:1450:4864:20::629;
Received: by mail-ej1-x629.google.com with SMTP id jg2so17394037ejc.0
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 07:07:01 -0700 (PDT)
X-Received: by 2002:a17:906:4551:: with SMTP id s17mr21257939ejq.26.1627394821179;
        Tue, 27 Jul 2021 07:07:01 -0700 (PDT)
Received: from pswork.ad.harman.com ([62.96.250.75])
        by smtp.gmail.com with ESMTPSA id c7sm1326089edn.45.2021.07.27.07.07.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 07:07:00 -0700 (PDT)
From: Padmanabha Srinivasaiah <treasure4paddy@gmail.com>
To: jeyu@kernel.org,
	keescook@chromium.org
Cc: samitolvanen@google.com,
	treasure4paddy@gmail.com,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Miroslav Benes <mbenes@suse.cz>,
	Petr Mladek <pmladek@suse.com>,
	Miguel Ojeda <ojeda@kernel.org>,
	Joe Perches <joe@perches.com>,
	Stephen Boyd <swboyd@chromium.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH v2] kallsyms: strip ThinLTO postfix ".cfi_jt"
Date: Tue, 27 Jul 2021 16:06:15 +0200
Message-Id: <20210727140618.19130-1-treasure4paddy@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210727131853.GA18032@pswork>
References: <20210727131853.GA18032@pswork>
X-Original-Sender: treasure4paddy@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=iqHRjUeu;       spf=pass
 (google.com: domain of treasure4paddy@gmail.com designates
 2a00:1450:4864:20::629 as permitted sender) smtp.mailfrom=treasure4paddy@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Clang ThinLTO adds a postfix ".cfi_jt" to a symbols of extern functions.
For example this breaks syscall tracer that doesn't expect such postfix,
so strip out the postfix from the output.

Signed-off-by: Padmanabha Srinivasaiah <treasure4paddy@gmail.com>
---
Change in v2:
  - Use existing routine in kallsyms to strip postfix ".cfi_jt" from
    extern function name.
  - Modified the commit message accordingly

 kernel/kallsyms.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/kernel/kallsyms.c b/kernel/kallsyms.c
index 0ba87982d017..e9148626ae6c 100644
--- a/kernel/kallsyms.c
+++ b/kernel/kallsyms.c
@@ -166,16 +166,20 @@ static unsigned long kallsyms_sym_address(int idx)
 
 #if defined(CONFIG_CFI_CLANG) && defined(CONFIG_LTO_CLANG_THIN)
 /*
- * LLVM appends a hash to static function names when ThinLTO and CFI are
- * both enabled, i.e. foo() becomes foo$707af9a22804d33c81801f27dcfe489b.
- * This causes confusion and potentially breaks user space tools, so we
- * strip the suffix from expanded symbol names.
+ * LLVM appends a hash to static function names and just ".cfi_jt" postfix
+ * for non-static functions when both ThinLTO and CFI are enabled,
+ * i.e. for example foo() becomes foo$707af9a22804d33c81801f27dcfe489b.
+ * This causes confusion and potentially breaks user space tools and
+ * built-in components, so we strip the suffix from expanded symbol names.
  */
 static inline bool cleanup_symbol_name(char *s)
 {
 	char *res;
 
 	res = strrchr(s, '$');
+	if (!res)
+		res = strstr(s, ".cfi_jt");
+
 	if (res)
 		*res = '\0';
 
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210727140618.19130-1-treasure4paddy%40gmail.com.
