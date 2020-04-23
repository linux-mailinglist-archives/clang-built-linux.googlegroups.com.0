Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB243Q72QKGQEQOZECFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3f.google.com (mail-vk1-xa3f.google.com [IPv6:2607:f8b0:4864:20::a3f])
	by mail.lfdr.de (Postfix) with ESMTPS id AB29A1B61C6
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Apr 2020 19:18:36 +0200 (CEST)
Received: by mail-vk1-xa3f.google.com with SMTP id f142sf3157408vke.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 23 Apr 2020 10:18:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587662315; cv=pass;
        d=google.com; s=arc-20160816;
        b=FKgatXH4CVS8cFEIcYHd+WaZw1nsyCbeDe6tdUqpMfUkN0U80VuDjRNWG+FCaRjyMZ
         Ya9nhv8h4sY9ZM5SyzIpRPguHzxX1oU+g3rFPRMWAwvFP/JFCQ8f3G6DFquQ/Tn/mC6d
         7EhfSOQFRi0qqlfsfdnRuxcRCJ7oAHP73BDchAzqNazX73s/B6ceuIvAGWCqDab2H2Qm
         dP41JocQPzAkztT3SlDzopOgW1Rn2uPr1oL6jBMhn9Nx6hA53wRO+2MB8qPDc+1wotun
         zDvFQMz2BqrYlVeBZDMDOMwgOK4sJiD8jj73l8VREDSQiWnt88opw6V3UGTBIbHu4I/Q
         VhAQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=gzzT4Gn614dGshgV5g8YYT+G4wL01Suf8q2k1lIqhnE=;
        b=LoAtUj3GxKFhpJfqkM8To1R9Kz3BuNXWG/NBWXDKzBCKxgfKGCkThEm6cEjLFO7M41
         n/tssTgTUWFWoLKfP6EEdG8M9tsezn81bK3Ru9oRlfUZ2fTnK9xXIdJNzbjDCskXJxWo
         nTK3iXUgMhbMy7ZjXgkNEsSYjZmYLmegfseVpkOHzDmdOc7IgqyCHKymZlSXG/zHnzmd
         GTSB86rP8cjUQYFBZcMDjO0lqcsbNy6DgWS5nApsT5yAiy0OuDpdE1Sj94adrDLyGFVF
         ONrVfmM3Lnzw1SZ6kifJmSn4+Jcf/zvTY9lHTeiFDHh8iChhC0Kz3NEW0r7sR46Vhz48
         BRjQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=boH2xgHE;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::c42 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gzzT4Gn614dGshgV5g8YYT+G4wL01Suf8q2k1lIqhnE=;
        b=SME1bCiqMt6oDcFs+qhRyO+pUylLxIVVpwh2nGqBm9czXdTdK1Kn0OVUxVTzFCgH1Y
         TpHC2i7ERKT2SvQ+FMCZpv6d02bpIyQsCHWIlqrHe2DSHnICmfySJFbJYi+JzU5g79j2
         4fh3rJMP9hdzilWAIGTy5oDKpC8dvEs2Jqj5irp9a2ntLZeN1we6qSj3t9wEmcr8hiDH
         cVXxFZ+WNAyHf22MW284AUeXRLVwe8rQfrosG9exueERNYx6rDIJ5HU4rb6PkYtwXkro
         XtKKAm2zU8r19GXTHsl3UBWYQ6NHEbFF5utnRvmN2vCGJut+RoZxLhDc2TEXob24jl21
         eO3w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gzzT4Gn614dGshgV5g8YYT+G4wL01Suf8q2k1lIqhnE=;
        b=U6pTDHKARV3HcN3Cd9hlXkosSr1XoFgTUqtiWe/p48YXLjfhk6qf/rMpmWce2NmwBm
         1lrtqweiY3JAs8sDdLPN7R275DJN79kNOMbNnFV9xStbg5kLCnLtrGb0mylg7fzdaHHL
         rrdkHSpckYQwcouqeHXDmYcIgJhfQAlsuUrrZEvD1Zk6Y5by2cPN/u4I4vj1c+U9j3qu
         VVN+B6Tliy4zSd6trYVg7SN+FIo8kZ7Cq/pDhWadkUGQozP8W8K16kOreSyyMEcZYbEk
         p+9aI8GQJqr6yZqiSmbEaoAPiRIAMwtICeAW2Emf0rYsgTpILFF4NMIuhzUTJbMzceTu
         cmBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gzzT4Gn614dGshgV5g8YYT+G4wL01Suf8q2k1lIqhnE=;
        b=YQNeC4Jloc/LrLRj+5+6fDCgy+P9LE7hQ3klXJk1cKlexrvpXjU4wmMu2eEhwwWrK4
         7GuPa4N/vgCw6gso8NiKoqipG7I5Zgl0FxKSpZSe65clVUPXITpJQPO+Amd8MgblKm6q
         xTaFhkzIvsrJ3AeEoagZZQTZ4ehkNeRHsqr1cvOO3uaqy1G7jZqjUeMsytDVdzGNQLBn
         0n5KS4TOUuFvAyp+UpgE5p/iBLvOmJDGhApiO4Zxn9dsA4vrjk5QJ97oHBcmcyPfHIBU
         eNDmrxltJ/BLfNh1bJjacXWTqnug3+nucv03kuAN//9m5lMipBVmjT/+vysJyVVZtlAT
         Mivg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuakVWtL/sWNf1cWPMKtRO51qDaX5/R0xjzOePNOi/BSIsUfeF91
	W42LucNQvhULa9mOmKky+NI=
X-Google-Smtp-Source: APiQypK3XIy+1ht9Gi8H9VkL1JJUfFT891JDcmrki2gNi1sgla451JLsdMVH+ecSpUtAPcFUeUyVvg==
X-Received: by 2002:a05:6102:1c3:: with SMTP id s3mr4594536vsq.56.1587662315501;
        Thu, 23 Apr 2020 10:18:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:2091:: with SMTP id h17ls975496vsr.10.gmail; Thu,
 23 Apr 2020 10:18:35 -0700 (PDT)
X-Received: by 2002:a67:6b41:: with SMTP id g62mr4092264vsc.168.1587662315056;
        Thu, 23 Apr 2020 10:18:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587662315; cv=none;
        d=google.com; s=arc-20160816;
        b=sIIJSftZKRDu0SjGPnCFk0S9LKEkxySZE8tMp98g0//e31UDDJVTGnw4FC6CU5uN/O
         Fuaf+qAvSpS50QA1FX8e5c905G+UF4R5IPMMFOoG7vbarZerohKAOL9++A9xYwWE/BjL
         +MxhE0O7NH4jZjVapwSmh5hxzdU1LEnTtd8zLy6GWpmYB+YbuMBXkHMOy3HrC+A6h2ri
         9aQmYV51ChTXPe72+MprHNvBO4xlYhdqYWZ3rbhAUcqtkKvSuLuWckAG/Aou674KOGGY
         lPcylNVYPP23o5FdzviiRUPpmKULeUIw9m6u9ogrPWOEpCEnm9+PY00K/GgJa9q+WJND
         uRCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=GILvIx3f4BgcOXSqsviaTizrH5Jn18xvHIx2HxEKgO0=;
        b=NQNRoUrOGJ0VKe8DP/4Rk2Fu/okZauecd+Yp20RYfTCUaaP782g8u7Nw4ZQ6o+p7Bn
         ITpPJqL9q9j4AZcYzRKYfSo69pPq1dtK+Y5cMoDUgVUewpExLEAbbi0VuwYcYvUPAwJN
         9Q+xWWRg5u8L6svaHTNhr+bISv63KQUCOuW14Lhu5uyEjYXEe4Bi18Kdb8r+WL6a7ahk
         ggY9kj9B8A/oKeJQF7/NtHMqmGvxPCVcv11dJqSdlGI/gtCBOjUrWh3WB9436AOaqP73
         yllUHCYysJRtm+XA7gSoKghcmaTsF8zfYxkOKonF70fx8a+IZ1knEd3K6/MvCW6Wpwhw
         9SOg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=boH2xgHE;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::c42 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oo1-xc42.google.com (mail-oo1-xc42.google.com. [2607:f8b0:4864:20::c42])
        by gmr-mx.google.com with ESMTPS id e22si316197vkn.4.2020.04.23.10.18.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Apr 2020 10:18:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::c42 as permitted sender) client-ip=2607:f8b0:4864:20::c42;
Received: by mail-oo1-xc42.google.com with SMTP id g14so1478581ooa.4
        for <clang-built-linux@googlegroups.com>; Thu, 23 Apr 2020 10:18:35 -0700 (PDT)
X-Received: by 2002:a4a:a54a:: with SMTP id s10mr4319105oom.73.1587662314470;
        Thu, 23 Apr 2020 10:18:34 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id y5sm746726otq.38.2020.04.23.10.18.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Apr 2020 10:18:33 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	linux-kbuild@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Dmitry Golovin <dima@golovin.in>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH v3 3/4] MIPS: VDSO: Use $(LD) instead of $(CC) to link VDSO
Date: Thu, 23 Apr 2020 10:18:06 -0700
Message-Id: <20200423171807.29713-3-natechancellor@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200423171807.29713-1-natechancellor@gmail.com>
References: <20200419202128.20571-1-natechancellor@gmail.com>
 <20200423171807.29713-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=boH2xgHE;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::c42 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Currently, the VDSO is being linked through $(CC). This does not match
how the rest of the kernel links objects, which is through the $(LD)
variable.

When clang is built in a default configuration, it first attempts to use
the target triple's default linker then the system's default linker,
unless told otherwise through -fuse-ld=... We do not use -fuse-ld=
because it can be brittle and we have support for invoking $(LD)
directly. See commit fe00e50b2db8c ("ARM: 8858/1: vdso: use $(LD)
instead of $(CC) to link VDSO") and commit 691efbedc60d2 ("arm64: vdso:
use $(LD) instead of $(CC) to link VDSO") for examples of doing this in
the VDSO.

Do the same thing here. Replace the custom linking logic with $(cmd_ld)
and ldflags-y so that $(LD) is respected.

Before this patch, LD=ld.lld did nothing:

$ llvm-readelf -p.comment arch/mips/vdso/vdso.so.dbg | sed 's/(.*//'
String dump of section '.comment':
[     0] ClangBuiltLinux clang version 11.0.0

After this patch, it does:

$ llvm-readelf -p.comment arch/mips/vdso/vdso.so.dbg | sed 's/(.*//'
String dump of section '.comment':
[     0] Linker: LLD 11.0.0
[    62] ClangBuiltLinux clang version 11.0.0

Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---

v2 -> v3:

* New patch.

 arch/mips/vdso/Makefile | 13 ++++---------
 1 file changed, 4 insertions(+), 9 deletions(-)

diff --git a/arch/mips/vdso/Makefile b/arch/mips/vdso/Makefile
index 92b53d1df42c3..da5db947072d5 100644
--- a/arch/mips/vdso/Makefile
+++ b/arch/mips/vdso/Makefile
@@ -60,10 +60,9 @@ ifdef CONFIG_MIPS_DISABLE_VDSO
 endif
 
 # VDSO linker flags.
-VDSO_LDFLAGS := \
-	-Wl,-Bsymbolic -Wl,--no-undefined -Wl,-soname=linux-vdso.so.1 \
-	$(addprefix -Wl$(comma),$(filter -E%,$(KBUILD_CFLAGS))) \
-	-nostdlib -shared -Wl,--hash-style=sysv -Wl,--build-id
+ldflags-y := -Bsymbolic --no-undefined -soname=linux-vdso.so.1 \
+	$(filter -E%,$(KBUILD_CFLAGS)) -nostdlib -shared \
+	--hash-style=sysv --build-id -T
 
 CFLAGS_REMOVE_vdso.o = -pg
 
@@ -82,11 +81,7 @@ quiet_cmd_vdso_mips_check = VDSOCHK $@
 #
 
 quiet_cmd_vdsold_and_vdso_check = LD      $@
-      cmd_vdsold_and_vdso_check = $(cmd_vdsold); $(cmd_vdso_check); $(cmd_vdso_mips_check)
-
-quiet_cmd_vdsold = VDSO    $@
-      cmd_vdsold = $(CC) $(c_flags) $(VDSO_LDFLAGS) \
-                   -Wl,-T $(filter %.lds,$^) $(filter %.o,$^) -o $@
+      cmd_vdsold_and_vdso_check = $(cmd_ld); $(cmd_vdso_check); $(cmd_vdso_mips_check)
 
 quiet_cmd_vdsoas_o_S = AS      $@
       cmd_vdsoas_o_S = $(CC) $(a_flags) -c -o $@ $<
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200423171807.29713-3-natechancellor%40gmail.com.
