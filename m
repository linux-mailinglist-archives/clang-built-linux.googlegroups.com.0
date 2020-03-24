Return-Path: <clang-built-linux+bncBAABBIMT47ZQKGQEELELYHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F102190802
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 09:49:38 +0100 (CET)
Received: by mail-oi1-x237.google.com with SMTP id a13sf12518039oii.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 01:49:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585039777; cv=pass;
        d=google.com; s=arc-20160816;
        b=AQ+zjda4pz7AuCCaL5xXW3/IwKQI0J0CeRkoAC88bgX6DxnsLLG1bH4I05I/FeJC3x
         8fDLMxf5hrFPFcxh0gRrjOL1Wdcnhwc2/2/cgIg5cZCRPI2fLL5KhQJ2+w8XsUASNIvV
         zMxLXeVmCqYZZsuHnueKErCLz8pMhJnAZIbGMxalLA0dEqwrLS06dnPBGRgqcbjGErKP
         2YMTq1VzHohCnkz2AJyxw0BWSYjAUbVfJ8aWq/zzBLajwHHjEx8umemxR34bFL9jAmgx
         vB33Af0D40gHezNiVoozQCb3k2C9lhU6S+tADnPgdOOTCMWhD5WWAsq4ivmXCTjz0wEu
         BqTw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:dkim-filter:mime-version:sender
         :dkim-signature;
        bh=eX3/I2SUKLMs3xaMnoeSvQNw9Urck3CscqIMHe5R2yw=;
        b=iqmAYJz92HUqVINXDavfQ+CtDWjmD5288pCJIuJ3TRa98iAPyStBTFfjHCfdIOx19U
         t0EkLttYlhjoxC/tgHGjyFZ5IMOV1hUKflTBtV7lgh9LR6p4Xtj3HxPWjdIn26yUIdpo
         MmipucNVBrJV6cVjB6HE+o0GPVj83GQA/SQe+5UJfG3pdXEmyt0aE5SyDDfLEvh4DpSd
         SH+7ttIN/7NQuX9FtOB1kTBiMfai/WK1k/LgjtlQr7yBqvRmcyRTbGNW5WqT3VxAPAz+
         z5Rt3p0X6FXMq5mH12Q/A3FWlAJGwL9vESyOFlU+ml12m3aj4JXonIDqnwPi64g2Mm5w
         RmyQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=qhHw2Kmx;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:dkim-filter:from:to:cc:subject:date:message-id
         :in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eX3/I2SUKLMs3xaMnoeSvQNw9Urck3CscqIMHe5R2yw=;
        b=eVdtC7ewpNHg5H4vGtcCfNDBqDh6h4rvW1Sy7A3cz6qyhslcEMM/VVPE6inxDmrTOw
         sPRFrnu6edbu/vGE4LnR8XUnKjVffgI/MjmehdKkUp0WvEE4X2PCfyTFBiPcD1mmIZA9
         5OF9c3Cr8zPRYOysvGLrlqPFJRWtTMwW1rpDG4vBZe5rEXVxrgImtVxDkIfzmEqYTv39
         SC1JRWNk3VEo4YIyIykaPm5NukoGb1mU5JwPVrsp5ze7bwsCDPEOeis2S++0Y90Z7Vw8
         px7o8zEylKwcp8lyBFX7oF2mSf+ziAW9p+wwPb5iarqTThRKLRgjniRpBWo5PrXuXf2l
         pU3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:dkim-filter:from:to:cc
         :subject:date:message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eX3/I2SUKLMs3xaMnoeSvQNw9Urck3CscqIMHe5R2yw=;
        b=kVCHmFBuCkCzS/pUB96lR9JHBcrUESxnfuz2T6o26L90Wrh03vScJIrk8ecMUgpc3q
         F/JWn2Bm6Ncf/1Nax6CShHiqkDAQ/lXHDfB7dlOZgmr2jB/jZzrf60HnYR+IVigH9A7V
         zWjRcgoI1F3l+sKfYuVVVMSEkPhjm05bBA2GObV+eEH7IMgWfY94GuURd+Rd8TKGiRv7
         L7uqqLvrIf+a3fmLwa/AlCt8bmqN3g66/NGy8dcTM94os17VQ+55Fymvl9Gt6PuoTRGQ
         83qKa084hAs9FbDWXtDCkskugrV3FArNnFqa50vV95ltHJA6CBUWuM3LQyIwUTuyBQxk
         nO/A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0icz9hLwbca0yWa93W7rwjR6mFwDeZFa4nXpYm2HVt3iIqLGuA
	Q/y6iic00zeRQYiYWOsS7TQ=
X-Google-Smtp-Source: ADFU+vtFTQZpRsp7tSFyPDq9CzrLRWiPPHJhIGcdwyF+/3uGGpKsvC7irApMsWCNd1UsqWj2CAWmIw==
X-Received: by 2002:aca:fd44:: with SMTP id b65mr2405774oii.119.1585039777502;
        Tue, 24 Mar 2020 01:49:37 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:52d2:: with SMTP id g201ls1474214oib.11.gmail; Tue, 24
 Mar 2020 01:49:37 -0700 (PDT)
X-Received: by 2002:a05:6808:6c9:: with SMTP id m9mr2632127oih.157.1585039777235;
        Tue, 24 Mar 2020 01:49:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585039777; cv=none;
        d=google.com; s=arc-20160816;
        b=PxOtURfd8MJLydfmYBvhwjCuG6/Q3jEe9Of2c17bDkFhCKlkChZW+lWTtbhPoSNVzg
         a4eK4bAylejRjdP/OG2USXSPhiOScd4VKUBM55WqsZAT2Jxcev4o7B4njQ1i3ZKvlsUc
         02SCTciDjgHjNC1zV6IJruZ8hEqvpg1KaUNkJccBYZEba8QkCUoq5JCrCiHOHWkkdVUv
         CUmtI/6YISdBFeT2PZ+r0MUmUnnRyc7lZdXOgM/2asAHWrXpofZ9atM5Wt7p5FUVgcEp
         vF1FEB5KTfMNhCj9pP0f8UVaCr22YEdzvPIZ8VxuW4fPpfisRSlze+OHacJoHz2iEXId
         6ojA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:dkim-filter;
        bh=0iYh3JlnuBFF7Uur9DV4v9IZOkYzn33VL647mADyAyw=;
        b=vXOP+2cki2RvUAFxYob1ihDioWaXG/TmbSdaL0xY/cndwqiLZP9piRi9iUtNLIYA5G
         kF6WmoTullrWf+Ro986bWuKhyEOdm4Lk3VPnYbBbKNY6z8CBYhttydwnNKLIlweKt3px
         hy5ROlegnH1ohCQRfHu4ALqmYKqdPBrlUSLRXJfGzdsY/uqKJxQGtredQ5EL70zqvUvd
         qMCzSqtsDHgwHz0yGj8fchxmEH5ZhJs42xJHfZbdsPtGwMgXJrW/qAN/r8pVopZn4IdE
         EFqMZMDnOC99MuEM5l5jMAaBjB75bS358GnT9/cxYU0w6RMAQgv4qy9ubt0x3yh4B7NC
         DJBQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=qhHw2Kmx;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-09.nifty.com (conuserg-09.nifty.com. [210.131.2.76])
        by gmr-mx.google.com with ESMTPS id e21si119859oob.1.2020.03.24.01.49.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Mar 2020 01:49:37 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) client-ip=210.131.2.76;
Received: from pug.e01.socionext.com (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp [153.142.97.92]) (authenticated)
	by conuserg-09.nifty.com with ESMTP id 02O8mgsb011219;
	Tue, 24 Mar 2020 17:48:49 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com 02O8mgsb011219
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kernel@vger.kernel.org
Cc: "David S . Miller" <davem@davemloft.net>,
        Linus Torvalds <torvalds@linux-foundation.org>,
        Kees Cook <keescook@chromium.org>, clang-built-linux@googlegroups.com,
        Herbert Xu <herbert@gondor.apana.org.au>, linux-crypto@vger.kernel.org,
        Ingo Molnar <mingo@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
        Borislav Petkov <bp@alien8.de>, Peter Zijlstra <peterz@infradead.org>,
        "H . Peter Anvin" <hpa@zytor.com>, x86@kernel.org,
        linux-kbuild@vger.kernel.org, Masahiro Yamada <masahiroy@kernel.org>
Subject: [PATCH 04/16] x86: remove unneeded (CONFIG_AS_)CFI_SIGNAL_FRAME
Date: Tue, 24 Mar 2020 17:48:09 +0900
Message-Id: <20200324084821.29944-5-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200324084821.29944-1-masahiroy@kernel.org>
References: <20200324084821.29944-1-masahiroy@kernel.org>
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=qhHw2Kmx;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

Commit 131484c8da97 ("x86/debug: Remove perpetually broken,
unmaintainable dwarf annotations") removes all the users of
CFI_SIGNAL_FRAME.

Remove the CFI_SIGNAL_FRAME and CONFIG_AS_CFI_SIGNAL_FRAME.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
Acked-by: Jason A. Donenfeld <Jason@zx2c4.com>
---

 arch/x86/Makefile             | 6 ++----
 arch/x86/include/asm/dwarf2.h | 6 ------
 2 files changed, 2 insertions(+), 10 deletions(-)

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
index 90807583cad7..f440790f09f9 100644
--- a/arch/x86/include/asm/dwarf2.h
+++ b/arch/x86/include/asm/dwarf2.h
@@ -21,12 +21,6 @@
 #define CFI_UNDEFINED		.cfi_undefined
 #define CFI_ESCAPE		.cfi_escape
 
-#ifdef CONFIG_AS_CFI_SIGNAL_FRAME
-#define CFI_SIGNAL_FRAME	.cfi_signal_frame
-#else
-#define CFI_SIGNAL_FRAME
-#endif
-
 #if defined(CONFIG_AS_CFI_SECTIONS)
 #ifndef BUILD_VDSO
 	/*
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200324084821.29944-5-masahiroy%40kernel.org.
