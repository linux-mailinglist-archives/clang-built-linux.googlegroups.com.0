Return-Path: <clang-built-linux+bncBC2ORX645YPRBIHZWHZAKGQEKN7T5SI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F52C163821
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 01:09:06 +0100 (CET)
Received: by mail-il1-x139.google.com with SMTP id w6sf18416131ill.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Feb 2020 16:09:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582070945; cv=pass;
        d=google.com; s=arc-20160816;
        b=gtfrID+pe4I48yBlccqWAnWdc7AsJu5py6IKxB8+05RMOC8tLUg77eOwHcZXmE4URO
         Pj6aGi9h8dtvA/59c606pCpUl6HLABtXib0b/GHoLVO8SrnsO3JFtOc5pn96s7cybwFF
         Yzm1+uh953+lFYpuT2TrUR/AmDiSOO5qvMaToiyqpypzK0fY+QxOzsXFs8zP3z2KWKBk
         hEgwuH7dP9CGSlyFZckdx1qkOH8LheYASvkp8UIXIt9eKMOI3bQkWmhjcH+EpVd7Sng3
         Bcf107u+S2cPgZZvFuxDeQ0xdt7HYM3brO9Of43z1ZdRfbUEF1VOyLVKMRhjXnAiyefn
         CXrA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=bxvld9uJHd9FVi1XwOXO/tFhMyptjrwuZ2lzBN6g6Io=;
        b=f//fD9+erTw0qdbv3wO05YMH4xp8/T/PuB3/FUqobNXrv0LzFZERAk79yct/FN5mr2
         VGeLVk8dfAnPXddELO4wbgha9wdcJ98Y0aXB9hNn0oFFS7H6z/DKWXIq0QU2KyWVNWb9
         +OguL5L93mqm5+5LOFp6AxY9pieWlqkLBiK4yRYkQjRdafs48c/XHYmfVCbJ72l1HM3/
         O8xmzX6x6kNe438xA9VicPF/H851rM2jI/OLUxreu09xqaUFJXEZvrUX8YG68WKKPiwJ
         29jJGsmTOYakhTFD3LrMHsBnSQGrHGrYTfiP9GZuQjcDEqbErz461nHulxcJaBjruOxN
         pQCQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ExdFaXJL;
       spf=pass (google.com: domain of 3n3xmxgwkami0iuq1wt3ivmvowwotm.kwu@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3n3xMXgwKAMI0iuq1wt3ivmvowwotm.kwu@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bxvld9uJHd9FVi1XwOXO/tFhMyptjrwuZ2lzBN6g6Io=;
        b=pdQ10cIp1swy4e3WFdNhTrfHnVEl21S0QJD67ByeTOjLnYtnTJe7DLMfrOf1TcShAZ
         BOocjeJ3YrfY6JeTolcZnTlTj3xWyv5v0XZbRnPrIeAasoFbPjU3KYPd/E9J9yFczm80
         UG66QazsIwiPJmAvvov/SWJlkOc99HzQYbja6+EBDp+ilnfjTTq+6K5w6FlDlLdVpRpr
         ZGInA71ma7iFDtGe4OTY8/ylK0Cw3sYdMetPiNbsOkjFznYErFOyEG+jEQ8TtN1Y0lVD
         IsuPCumuwiiIAMig0ZTBjgFXiWEhXXivI5fQcAtUZKWui5wLO8O+Sq7Q/pR6wleByUlc
         9dLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bxvld9uJHd9FVi1XwOXO/tFhMyptjrwuZ2lzBN6g6Io=;
        b=T1gzQ+XUMTpeyoRb6LGWK080mSpR7YwNGgXTzPs30DMhq5HszZs+JrrkCi7Ks0O/Jp
         0AdfwucdWBRUugvMjpgsb1moM90MgVxrWYg/lRbLIx9xmR2cTvWCHAf3bfpP150L2KFx
         IBVy1b0s4wNdH0ybmi6MWaEmBNqLMgvOq2Va5lxzskxSh6B7WRCHHyf359bfK3I9tjpk
         KQKNvkpJthpm2Bob2sUwjrdh3/cRdy2/VlZjNY1JFobyHCyMQM4eJj+1QNS8GHZBLvbe
         In0X2uiPKOMX2+RdbVuHrPCJ9+xBFOT377WglcGrosAoGlhD+Kl9JZZpztbT5Bnxhoh4
         o2sQ==
X-Gm-Message-State: APjAAAXi1oIIPwKW2/5VAJZRdepeU8bwkMnshxGkOEmDSMZiuRi8ScUt
	J3zRj1o0Hcc0d2cwjLlo9wc=
X-Google-Smtp-Source: APXvYqxUi8zW19bgXYBGdhazveHCS4vCHPYjkuBF/tw/Z25+dcVU7ArpibFAleRg+qOwGL37wb4GrA==
X-Received: by 2002:a05:6602:20d9:: with SMTP id 25mr17156825ioz.181.1582070944967;
        Tue, 18 Feb 2020 16:09:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:5e84:: with SMTP id h126ls1621230jab.5.gmail; Tue, 18
 Feb 2020 16:09:04 -0800 (PST)
X-Received: by 2002:a05:6638:147:: with SMTP id y7mr19231500jao.115.1582070944565;
        Tue, 18 Feb 2020 16:09:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582070944; cv=none;
        d=google.com; s=arc-20160816;
        b=Rpm/C5cCA+L0LtaFcX4PAjQ4zHP733Bc3FhWhn6fCryT81JIk7moR4pk/MFeppb7pS
         HgKkkIdBitBEUVFojkbDDvgUE+RdCrlCnZahSMmJnxTKYmQLiQOSKYDFhlx2ZamF6kbZ
         D5n2GCcvUVoK68Di0VICBPvpcdqGkUCi4OscDiubCClju9SxxhwHUy0aS92axQzoKVir
         PuM15ButRwWIbPepNSjraS1Sd/BKNRiIRVJXg4hGwCClrk4UZ2fNcUW5zVuH4k23qU16
         WwOdA9i3eBKI3HGYGGtjpDRJL3QKE7kFMCyKbMLOpqYsJxPvg/V87ipgrfkTPIRzQkYm
         SSpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=ou3AmoAB4pAV4E8hHdrZJU8tYRoLaJy68OnSkjNriPk=;
        b=O+kQSQmwXDAhNTuqEAY7hFA+uVhNx0C4ASeC53jdp4CqWPjgl8al6aFixvdaM/MWcf
         N5mAvX8LrKognZ3LpplcxLhKv93Dgy26KQrYTJ6o8ijPqOMLVogMLufQR6cOWffCgyQ5
         T0DpRCYFpp+ojglMIZwvnGJERkBi9NmTBGwrlfQojyWWaMgAjB4NAmFClvXIzqmEJdBS
         opbfvcOj3nailreKbvaYWQmGB7e2ttfieE1VL5+8TO2XlZff6fOFZrtOpeZrdDwCiNoC
         a4nae8iFS/A+DiA/Hi9Ldfo+tSNxb/mKtAJc4Gq9W5VNU23EHGrs//4xwBsI93jeMT69
         xKXw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ExdFaXJL;
       spf=pass (google.com: domain of 3n3xmxgwkami0iuq1wt3ivmvowwotm.kwu@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3n3xMXgwKAMI0iuq1wt3ivmvowwotm.kwu@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com. [2607:f8b0:4864:20::449])
        by gmr-mx.google.com with ESMTPS id z6si9895iof.2.2020.02.18.16.09.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Feb 2020 16:09:04 -0800 (PST)
Received-SPF: pass (google.com: domain of 3n3xmxgwkami0iuq1wt3ivmvowwotm.kwu@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) client-ip=2607:f8b0:4864:20::449;
Received: by mail-pf1-x449.google.com with SMTP id z26so14296136pfr.9
        for <clang-built-linux@googlegroups.com>; Tue, 18 Feb 2020 16:09:04 -0800 (PST)
X-Received: by 2002:a63:30c2:: with SMTP id w185mr26462644pgw.307.1582070943849;
 Tue, 18 Feb 2020 16:09:03 -0800 (PST)
Date: Tue, 18 Feb 2020 16:08:17 -0800
In-Reply-To: <20200219000817.195049-1-samitolvanen@google.com>
Message-Id: <20200219000817.195049-13-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20200219000817.195049-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
Subject: [PATCH v8 12/12] efi/libstub: disable SCS
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Mark Rutland <mark.rutland@arm.com>, james.morse@arm.com
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ExdFaXJL;       spf=pass
 (google.com: domain of 3n3xmxgwkami0iuq1wt3ivmvowwotm.kwu@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3n3xMXgwKAMI0iuq1wt3ivmvowwotm.kwu@flex--samitolvanen.bounces.google.com;
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

Disable SCS for the EFI stub and allow x18 to be used.

Suggested-by: James Morse <james.morse@arm.com>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 drivers/firmware/efi/libstub/Makefile | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
index 98a81576213d..dff9fa5a3f1c 100644
--- a/drivers/firmware/efi/libstub/Makefile
+++ b/drivers/firmware/efi/libstub/Makefile
@@ -30,6 +30,9 @@ KBUILD_CFLAGS			:= $(cflags-y) -DDISABLE_BRANCH_PROFILING \
 				   $(call cc-option,-fno-stack-protector) \
 				   -D__DISABLE_EXPORTS
 
+#  remove SCS flags from all objects in this directory
+KBUILD_CFLAGS := $(filter-out -ffixed-x18 $(CC_FLAGS_SCS), $(KBUILD_CFLAGS))
+
 GCOV_PROFILE			:= n
 KASAN_SANITIZE			:= n
 UBSAN_SANITIZE			:= n
-- 
2.25.0.265.gbab2e86ba0-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200219000817.195049-13-samitolvanen%40google.com.
