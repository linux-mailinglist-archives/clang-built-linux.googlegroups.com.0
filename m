Return-Path: <clang-built-linux+bncBAABBDOD6HZQKGQECLKTIXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x140.google.com (mail-il1-x140.google.com [IPv6:2607:f8b0:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id C8D8D193A29
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 09:02:22 +0100 (CET)
Received: by mail-il1-x140.google.com with SMTP id p15sf4545510ils.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 01:02:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585209741; cv=pass;
        d=google.com; s=arc-20160816;
        b=YqZ8B0HUdFpshzSkYEZk/CKTduK9zFxv34Jo/zxnRk6RLP9kov0CogbKtaybaOqqr6
         HzteqwTORoS25iwY0j3xBoKikj55YKMZXnbNlPZD4g8Tu62JeVXNt1mcwq6Pb7bp4IgS
         zNI9eCzfJo5+MPjb+lP68GGFGuGInQsrvAy5TdOykswIVIy4J/2B3mX+u12hIMQQ1ms0
         D0D+vcSHNOFevjIjvZh5d7wgxixXmq1N7fufhI9clm6iq1s7nZnMw1VF9bN6F3gPklF/
         rUD0jXk/nlH1GjrV+XvxzanNu1UwLSAvK1VrYLOSJDPmJ8b/BZOujAhxXWQm3tSIyGcP
         PBOg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:dkim-filter:mime-version:sender
         :dkim-signature;
        bh=rwrUzzoyKWebfMyV8dF37VpwWc+965jijCt5QMn7mfk=;
        b=RtAYzM/Yak+mM5TqwPWEL+ug7xPxxB7+kMnlXCv5NWXEEZQsudckTAR2Pz46uluREh
         B9nuJs+hJBa7oFIiO4xVQxJX9L1h1XupKnbYVpWe1jYyx+9t+nkn/4BV0b53KWZnkBXs
         HNGbLaNEt0nSgo0R1nQHZXaYa87+9tZ9BIHzHlhvca9RgXJmCE5YkGrwzDro+uiP2DJj
         gpFeGw9E1nffmdKthtU2SaG1gBLhCYiBymGkCXc1da+pjvGTZ/BZGohfC7pBaWo8X8Ls
         84XXKpnj+lvjyNXtKLklk1imxo3enACdLFMWnv4i2ZbR6jwYx4KurT4wsPA9MkYc5T7f
         T3cg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=AEjWLzxR;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:dkim-filter:from:to:cc:subject:date:message-id
         :in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rwrUzzoyKWebfMyV8dF37VpwWc+965jijCt5QMn7mfk=;
        b=tbn89qCnVUrr37CMnWT7/Ei/zczhAsPOFiVVEdX4XFRE7B0mS4urs/QjYGzRy2f7DE
         07e2CqJK65KkN9kRf9/XifQSviam3YprO9vGUGo3Dkaq4EoGW7FDwFNmT317AXbtgb/C
         K1tWAOpTAF195sjWXLFk7PKHs8ojhTWlIs1SCmj+xPf1BZq0gCPduzDP5FePhjGW2ae6
         GmcZzeRT7BZbtPLcspd+gNLPHg9FeAwqbpCZCZ7GD8bvtR9CAv3agp+S+bffa/AbAL7Y
         Ufro7kqoQKxizN/F5TmPGsk8b4VcgEKP3Q2rjiOkRtQYJ9lUQcJGhEpLecHfor8GQC1R
         9zkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:dkim-filter:from:to:cc
         :subject:date:message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rwrUzzoyKWebfMyV8dF37VpwWc+965jijCt5QMn7mfk=;
        b=n8BO0n7YvUJxvMa4YSWl7abPEawv3CHC+ULBE6voTxk0bwB7LTJMF/e2tbOgG99YCo
         /9lv4//kJjhOm9Ex8EJGLEkCBmrYq+whApPvXBlJ87iSS674BB5LTzrnEBdbg0QTIy1K
         I/p56EHa5wJX7irSy/c9020Qfy0FYOgOlnVjiy1KfGa3VQaiYvjDgdN1dSPipAoSHB7c
         KtmVy97f9WM+4yv4Ks1d74pMo40Lx5vfbk+8AqB1xOOUFRxFM7iImj2gP8vp3hYitwpO
         ZqyerqyqO2B0XzksEOgtiJiklXQP5haS5kA68vjM1EJDh9c0TM9uFkorUTcZEK1u8yMd
         f2SQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2yx4sgYxxpq0EYAJMzLLHZ2LLBmdaI737yY2mDA+8B63TA4oga
	7BuCf5wL0Zvn6z42PdDEafQ=
X-Google-Smtp-Source: ADFU+vtqf6VYXXa+IPJp7rH8bl62CCO0t3eUJbEXnc5oSgGyX4/04p2LM6HHrTSbYEFl6ZHWmc6pCw==
X-Received: by 2002:a92:2544:: with SMTP id l65mr7828298ill.286.1585209741793;
        Thu, 26 Mar 2020 01:02:21 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:194:: with SMTP id 142ls1355755ilb.4.gmail; Thu, 26 Mar
 2020 01:02:21 -0700 (PDT)
X-Received: by 2002:a92:90c:: with SMTP id y12mr7358858ilg.212.1585209741522;
        Thu, 26 Mar 2020 01:02:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585209741; cv=none;
        d=google.com; s=arc-20160816;
        b=0GIcuRkOkW6sv3HckfYmk9MXxU6g/nRH1pNBruKr687XwFL5V8LC6GIF3VtnTvOnJk
         6sSp0kR1vS7DTjMY21KMB+rklo0m6EkLr5Otl2umnCzEOXttROwfwDxMJhecQxDwnzVw
         NUewjczbPFhPwj+b+x38rzARsPSDsBAXmeqkgexlCthb1vHv4vdyjx54eBdbqYU0P6+9
         rM8nfB9M3p5ag51oTGxL6k28VwwMoga6/yreNLBUPF4H3CTZdoWYGLbRoZwP8IDCeedE
         C91ZNWv3oO94M67MOHX3vOXlVKbDYosTPpFqlKDIWB/wlPXZUVbvirQfzjND4NA2mPrN
         fyAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:dkim-filter;
        bh=fxIIn+ZInoY5PaLn5E0uj7poqY5wTi2d6aVUXentPeM=;
        b=y5P0w/jb+qNpOd+/qwPWLnXj6EkjYug/8BNnxyDKddSxN2qtWFruWzMjKRnn990s0e
         20KVYotebcmz2Dy2XUD5qXKm1Zd1JrSFElK21MU5u3BxJwFNzTRgbURgAK0mIYve5+27
         uRLLqGkGimAOIsCu1mHGydEoNTjSLSx4b9BQW5T3YQVaBFC7iJLfrincxVIOyuPL23gQ
         L9ZB0ADP93mguzU8lcR0nUOL76LgPKYWLsx+ZY6qZE0iRmeKbQNjXXN2qg4k+bIpBp1r
         Yyu8FlOID+ZOmAP5VYunM+jJ/cp6K23etMvRbrxemdly1ANXsZlmPzUFQl8w5Vy8BedI
         9JXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=AEjWLzxR;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-11.nifty.com (conuserg-11.nifty.com. [210.131.2.78])
        by gmr-mx.google.com with ESMTPS id u6si57867ili.3.2020.03.26.01.02.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Mar 2020 01:02:21 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) client-ip=210.131.2.78;
Received: from pug.e01.socionext.com (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp [153.142.97.92]) (authenticated)
	by conuserg-11.nifty.com with ESMTP id 02Q81Wpd002183;
	Thu, 26 Mar 2020 17:01:50 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-11.nifty.com 02Q81Wpd002183
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: Thomas Gleixner <tglx@linutronix.de>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Borislav Petkov <bp@alien8.de>, Peter Zijlstra <peterz@infradead.org>,
        "H . Peter Anvin" <hpa@zytor.com>, x86@kernel.org,
        "Jason A . Donenfeld" <Jason@zx2c4.com>,
        clang-built-linux@googlegroups.com,
        Masahiro Yamada <masahiroy@kernel.org>, Ingo Molnar <mingo@redhat.com>,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2 10/16] x86: probe assembler capabilities via kconfig instead of makefile
Date: Thu, 26 Mar 2020 17:00:58 +0900
Message-Id: <20200326080104.27286-11-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200326080104.27286-1-masahiroy@kernel.org>
References: <20200326080104.27286-1-masahiroy@kernel.org>
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=AEjWLzxR;       spf=softfail
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

From: "Jason A. Donenfeld" <Jason@zx2c4.com>

Doing this probing inside of the Makefiles means we have a maze of
ifdefs inside the source code and child Makefiles that need to make
proper decisions on this too. Instead, we do it at Kconfig time, like
many other compiler and assembler options, which allows us to set up the
dependencies normally for full compilation units. In the process, the
ADX test changes to use %eax instead of %r10 so that it's valid in both
32-bit and 64-bit mode.

Signed-off-by: Jason A. Donenfeld <Jason@zx2c4.com>
Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

Changes in v2: None

 arch/x86/Kconfig           |  2 ++
 arch/x86/Kconfig.assembler | 17 +++++++++++++++++
 arch/x86/Makefile          | 10 ----------
 3 files changed, 19 insertions(+), 10 deletions(-)
 create mode 100644 arch/x86/Kconfig.assembler

diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
index beea77046f9b..707673227837 100644
--- a/arch/x86/Kconfig
+++ b/arch/x86/Kconfig
@@ -2935,3 +2935,5 @@ config HAVE_ATOMIC_IOMAP
 source "drivers/firmware/Kconfig"
 
 source "arch/x86/kvm/Kconfig"
+
+source "arch/x86/Kconfig.assembler"
diff --git a/arch/x86/Kconfig.assembler b/arch/x86/Kconfig.assembler
new file mode 100644
index 000000000000..91230bf11a14
--- /dev/null
+++ b/arch/x86/Kconfig.assembler
@@ -0,0 +1,17 @@
+# SPDX-License-Identifier: GPL-2.0
+# Copyright (C) 2020 Jason A. Donenfeld <Jason@zx2c4.com>. All Rights Reserved.
+
+config AS_AVX2
+	def_bool $(as-instr,vpbroadcastb %xmm0$(comma)%ymm1)
+
+config AS_AVX512
+	def_bool $(as-instr,vpmovm2b %k1$(comma)%zmm5)
+
+config AS_SHA1_NI
+	def_bool $(as-instr,sha1msg1 %xmm0$(comma)%xmm1)
+
+config AS_SHA256_NI
+	def_bool $(as-instr,sha256msg1 %xmm0$(comma)%xmm1)
+
+config AS_ADX
+	def_bool $(as-instr,adox %eax$(comma)%eax)
diff --git a/arch/x86/Makefile b/arch/x86/Makefile
index f32ef7b8d5ca..b65ec63c7db7 100644
--- a/arch/x86/Makefile
+++ b/arch/x86/Makefile
@@ -177,16 +177,6 @@ ifeq ($(ACCUMULATE_OUTGOING_ARGS), 1)
 	KBUILD_CFLAGS += $(call cc-option,-maccumulate-outgoing-args,)
 endif
 
-# does binutils support specific instructions?
-avx2_instr :=$(call as-instr,vpbroadcastb %xmm0$(comma)%ymm1,-DCONFIG_AS_AVX2=1)
-avx512_instr :=$(call as-instr,vpmovm2b %k1$(comma)%zmm5,-DCONFIG_AS_AVX512=1)
-sha1_ni_instr :=$(call as-instr,sha1msg1 %xmm0$(comma)%xmm1,-DCONFIG_AS_SHA1_NI=1)
-sha256_ni_instr :=$(call as-instr,sha256msg1 %xmm0$(comma)%xmm1,-DCONFIG_AS_SHA256_NI=1)
-adx_instr := $(call as-instr,adox %r10$(comma)%r10,-DCONFIG_AS_ADX=1)
-
-KBUILD_AFLAGS += $(avx2_instr) $(avx512_instr) $(sha1_ni_instr) $(sha256_ni_instr) $(adx_instr)
-KBUILD_CFLAGS += $(avx2_instr) $(avx512_instr) $(sha1_ni_instr) $(sha256_ni_instr) $(adx_instr)
-
 KBUILD_LDFLAGS := -m elf_$(UTS_MACHINE)
 
 #
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200326080104.27286-11-masahiroy%40kernel.org.
