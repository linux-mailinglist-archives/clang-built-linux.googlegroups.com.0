Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBLGK6SBAMGQEU2TI6II@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13a.google.com (mail-il1-x13a.google.com [IPv6:2607:f8b0:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D35A349D2E
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Mar 2021 01:05:01 +0100 (CET)
Received: by mail-il1-x13a.google.com with SMTP id o7sf5414805ilt.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Mar 2021 17:05:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616717100; cv=pass;
        d=google.com; s=arc-20160816;
        b=ucu8dVP663H7/hBoqJsfGzFZQUHVr/P4Rwl7aFujj6fs8U+HqPSRwbDiMSvDaMleWE
         nj0etiWhMvTdtKvn37t3aVwn7LHInYFfT+GtK2sj8MSSvhK0XUeL6aEU4DF/4Wd5FZ8T
         brWj6+5QtmsxdqHJOlieas4a0uj+d8BOuGA9d+lKtaq11coSsHLuvVdHfuFJp9IuIvJ3
         kuOc0tgZlkl+MytDUwoQU6gHMnkRa6mrr1Xl5ulY1rFbkwj33o7vLO0F63ZLq5X0Np7F
         pMeeGyAFS5kwTfbg54B9Ocs/r9yOyZaRswgAjMFWPL0WTk2th0zuQo4NqO7yulW0PfoY
         NwGQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:sender:dkim-signature;
        bh=HLzGNUzLX3mqDK8aZPPHOvTI1WusP9ol7Ug/P8gWZus=;
        b=XWBUzDPvd6EWgNdcGCX23TNdXYNuTcyqIqQ2SYJ8dihEkFAACINWh0VdyXhmDtS/cI
         Nc/L553y3+jbnArQyXZxOeNKF6p9hugJtd1tULlqvmZy2Y/NDWB5ZWbzkEevlQpGlWAs
         j0uvAK21AEj6WPdJOS6MzOmPLa2qYj4MSMQ7LhWOmKCca7r+NYfF/pxm2B/O4P0Pwvfe
         Shbjnnu/XJVZuTnlaMoRTMFKtIKGSoXrcr8312QB2781ZAgHhlehUMu944Q32UMij0B6
         2iqKV1MTq7KDaGWpXLl9Xbs/BgkyuHMwmQZsp0zlTGYD2nkr1Szgt1pf0dVjCt5lnnYP
         FTDw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ii6iPhXw;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HLzGNUzLX3mqDK8aZPPHOvTI1WusP9ol7Ug/P8gWZus=;
        b=sVZHCN2VYaMzjzrxPMOjDtYCOJDXXVdhuDfRo2Ab419tU63GfTnBseFiYy8rzL/2P5
         CbnSJ6sviQzyP/ahNRbixAx7022DBP3ss4hBUXor1aMSlpJEkzzGntHYbf9Cs2KFCy5Y
         A0CAuhkWwsU8y5w/OrAdifv9h4CaEjRNLgKcHWUQgTpS7WEiKtwvzCbH2Ol5+HxTcZ/t
         SDEiEbLNyw+PoqMA2eCF2lCIKZHxDmuvDAcaJK8B1fGxYFOqEb05Drm/vjyK5oT0RiCP
         eI6fuEvP9yd3ICHJFeGbKrhHwOLjGNO5EsXeRP/Oh2bCKOtjkH4tmE5ImCGVD+Rqr45O
         bnhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=HLzGNUzLX3mqDK8aZPPHOvTI1WusP9ol7Ug/P8gWZus=;
        b=N0YeqtouQodZyrTO1c/6GZQ1FSZcO3+U3TiQ4BudifQtpSRBFMHTso4GoknOgxmbzC
         24EmFoshhxl6/s/7b6aaxyVMo0DW47HV8W5HgGgckf/yoAMEigGm6OhiY2/0whg0ZEJe
         20EPyBQLU6pPUMmhX/gIVxy/7l3SqhMRkeyyrdffi4AQmtYGuiAmlUMqy7jle2Cqowg8
         Hxmp69RDxukRKZaDLIvAQFeMruOSDUIPE4zV2NldpJlql6nJw3cvIYU8HhxWCXaH266x
         nlvSI1gcclrjiWW1+v2TUjAM/0a+Cw9eqsTKHMN7wOes5wO8Iz9xDCogyiQewocckRGb
         hsTw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5328cvqI2bQepnQL1j0QzH92XEt5yRvuHSihA8E8AxjULf18O4uX
	cRTissyDZl288ZVMuqPt4y0=
X-Google-Smtp-Source: ABdhPJzkNV0ZGcklrY3KFgDAO0QOqZhcnRqZ/9cInVywcfV+mj/T2ra0/GKNmWUubj3xbnVATlhNvQ==
X-Received: by 2002:a02:24a:: with SMTP id 71mr9846131jau.22.1616717100470;
        Thu, 25 Mar 2021 17:05:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:1a44:: with SMTP id u4ls1674357ilv.2.gmail; Thu, 25
 Mar 2021 17:05:00 -0700 (PDT)
X-Received: by 2002:a92:d483:: with SMTP id p3mr8846636ilg.28.1616717099964;
        Thu, 25 Mar 2021 17:04:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616717099; cv=none;
        d=google.com; s=arc-20160816;
        b=NmO80aGmOyLP2jWQfE9IxN+nxKUNl5SCybMxk0OmITDN0C6zH0FWUxhouxWJgBnA0h
         LVGdOsHMuDtbvAWd0Ozy0E85iPvpQ8a/HvHKMrP9cn3nAaoeLe033d/ziqY5Ky9eAcJY
         jzGrW2WsVzOqPCVd9oK6+mpsVLJaD2fvzkZuaTZy+8GriWf/1J9cwFnJ6ly9d4rjn+Od
         U9FWpbrvuNk7JhveeADMtRFakbGF2MFQ66kWWmNA+tdiwzpDZUaDYjttGPSFGUnkAEZP
         tvwPOf3so3PCm3np34Dk8gRwZgyT8DHBRa9YWEWaTE+aH2GN4H3i9TtS2P42SOqPm2L/
         tvzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=FMNLUWjkeKrsex8PA2EhzYcdGdSneanMecWjgyWhIuE=;
        b=JHe2FPDNIZW0x6QlwrPQScHzs41jeB42RGewxGq7zx/TaXcTvpRzXYl75jUBjjfpKK
         gQUIVuXLowLhDcowohb+qma7GNVjpzPQJEXg0mAq7DwwFKFO1JpzRnxQjQ2717FcbgIh
         5ouhP9UyDf7GSvSSMSWy65eOTaoU9GtmJZmyaA8XygCrlJtU+ijj462tk1eiS9s8VLxg
         eCU1uC1WgBTlc6HmkxWS+hY/pzhraD2EvLh++yeV2sPyGt24yWv949mdvb6QG4MJ2ZH+
         c7UVzEuqaZTpAc2e/FyKZ91G/2CuaPexMHQswlm109KJ5PUBB6ImR5ZxG/5wdkcVxTts
         kH/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ii6iPhXw;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y4si554198iln.3.2021.03.25.17.04.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Mar 2021 17:04:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0145561A13;
	Fri, 26 Mar 2021 00:04:56 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	x86@kernel.org,
	Ard Biesheuvel <ardb@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	linux-efi@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	John Millikin <john@john-millikin.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH 1/3] x86: Propagate $(CLANG_FLAGS) to $(REALMODE_FLAGS)
Date: Thu, 25 Mar 2021 17:04:33 -0700
Message-Id: <20210326000435.4785-2-nathan@kernel.org>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210326000435.4785-1-nathan@kernel.org>
References: <20210326000435.4785-1-nathan@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Patchwork-Bot: notify
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=ii6iPhXw;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: John Millikin <john@john-millikin.com>

When cross-compiling with Clang, the `$(CLANG_FLAGS)' variable
contains additional flags needed to build C and assembly sources
for the target platform. Normally this variable is automatically
included in `$(KBUILD_CFLAGS)' by via the top-level Makefile.

The x86 real-mode makefile builds `$(REALMODE_CFLAGS)' from a
plain assignment and therefore drops the Clang flags. This causes
Clang to not recognize x86-specific assembler directives:

=C2=A0 arch/x86/realmode/rm/header.S:36:1: error: unknown directive
=C2=A0 .type real_mode_header STT_OBJECT ; .size real_mode_header, .-real_m=
ode_header
=C2=A0 ^

Explicit propagation of `$(CLANG_FLAGS)' to `$(REALMODE_CFLAGS)',
which is inherited by real-mode make rules, fixes cross-compilation
with Clang for x86 targets.

Relevant flags:

* `--target' sets the target architecture when cross-compiling. This
=C2=A0 flag must be set for both compilation and assembly (`KBUILD_AFLAGS')
=C2=A0 to support architecture-specific assembler directives.

* `-no-integrated-as' tells clang to assemble with GNU Assembler
=C2=A0 instead of its built-in LLVM assembler. This flag is set by default
=C2=A0 unless `LLVM_IAS=3D1' is set, because the LLVM assembler can't yet
=C2=A0 parse certain GNU extensions.

Signed-off-by: John Millikin <john@john-millikin.com>
Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 arch/x86/Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/x86/Makefile b/arch/x86/Makefile
index 2d6d5a28c3bf..9a73e0cea19c 100644
--- a/arch/x86/Makefile
+++ b/arch/x86/Makefile
@@ -33,6 +33,7 @@ REALMODE_CFLAGS +=3D -ffreestanding
 REALMODE_CFLAGS +=3D -fno-stack-protector
 REALMODE_CFLAGS +=3D $(call __cc-option, $(CC), $(REALMODE_CFLAGS), -Wno-a=
ddress-of-packed-member)
 REALMODE_CFLAGS +=3D $(call __cc-option, $(CC), $(REALMODE_CFLAGS), $(cc_s=
tack_align4))
+REALMODE_CFLAGS +=3D $(CLANG_FLAGS)
 export REALMODE_CFLAGS
=20
 # BITS is used as extension for files which are available in a 32 bit
--=20
2.31.0

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210326000435.4785-2-nathan%40kernel.org.
