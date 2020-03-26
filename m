Return-Path: <clang-built-linux+bncBAABBDOD6HZQKGQECLKTIXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id 70AB9193A26
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 09:02:22 +0100 (CET)
Received: by mail-io1-xd38.google.com with SMTP id f6sf4487241ioc.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 01:02:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585209741; cv=pass;
        d=google.com; s=arc-20160816;
        b=iSnkxV3TaTWfPPPJE33HFm0s9IQQhU/pCRWClgudfTQbRjaxFH6Sdq+pACBj9coQDS
         LvF0z6XTS4PNLSgDSVKNqcUO94rzm6jciS9CTUrejol72HmiPsAk7DQHhWDDicOJ/vTr
         0sBm7KteiOIqQgaF2/d+Mv+Em0YLQzX57wEa3OtpNl1gGlcBhbPK/SZjK0yStxCl5IjM
         QwwpUwPQg4wYDcRxhE6YGTdmVccL4b1yFhU8PPrApfXo9LpJGrmej6c/JRfgssBVZBw3
         9z+zyHW0XHQ0zOMSZ4/dSf2gOf76i6O44D2DkiUcKq/rSQZ+VDhh3Xrt4niE0w+feg+O
         oltQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:dkim-filter:mime-version:sender
         :dkim-signature;
        bh=8t7yVH8+fpqHPhZa+8MPI7Z0yZKPAeM67U6PPN9dSL8=;
        b=YxLBav89S8a+wYR2c1pJpgs2lTvXKgksdKR9wrK7WQATkdQq2GViJHSwL8cBl8FhTQ
         Yhx49iRhI1D/nQY3et6iuTVZiB1YGwyHdfdZ/wuphUOcklpRHRjmp33LJsK5qvAvo40+
         IJ6zOwvHcrGcFtksUn2Ib/mBYp7GTGmOzRPJgeOOsqd+Cz/vjCpVEKItlD14gsBkIEcB
         ICkVKAYB6wFyyKXI1RsEHbgf33bGrw+qfk/jwrYWS6a3jzsHn1mq4ORxnm44/N4V08Hc
         lDfu1Cis4kXVUro5HbN5q9Riv3ddBRJRDuywPbTfmUAFYJfrH8uCKtkATik2X2MqrKKZ
         r+ag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=TDYIKDX5;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:dkim-filter:from:to:cc:subject:date:message-id
         :in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8t7yVH8+fpqHPhZa+8MPI7Z0yZKPAeM67U6PPN9dSL8=;
        b=jPPCLM/dTQAvbfwXGz6MHi1D8OqLhE7rNAIY2TPZu8/QzMi9WHlGJk8rNZw+PQ226+
         DJxYRWyt+BRiagdyBOMSIitvs4hucCsL/OCP8t++0Peskdx9j/SG8Qx9zW5a2Img+qi0
         st1JKeMW+KnJpHpMueJO+5A1JcJoQnirCt4MJ1cirK2/ZE0kVuGiG2w9vrVoR/5oAyNS
         jXAUt/Q3TU0D74OkC4SsCEkbdcDIV7if6omiDdI7WBJTybWghgJKRsgXhwLe/7iLHuOc
         w9oaHMGJMeZ7Nf8rqcb450Z8cgzZLKyMHtnYLg96gFblJyYncPzS1yvyj7ch0c+LvQ5T
         qR9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:dkim-filter:from:to:cc
         :subject:date:message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8t7yVH8+fpqHPhZa+8MPI7Z0yZKPAeM67U6PPN9dSL8=;
        b=mU2A9wq1W3JA+OPxZFh2XPvRPd7YSWkykMUGiVbtTD+TNqP88nTOM0WYDQ1mFXB2/X
         kxUYT5rxnV9QTuQob6GsBXwYQH26RfDzPViUSQGv4CwSqBAo5cP6ydTPmHeiwV3Kn+Qz
         3LaJaQdYtR4wiESj2bUYM3HsSSVfdQQZ0i03OoEV+HdlQgzhyAGhJisimC5iipVANUpp
         xsHzR9XfhMqbNCwXENBhyU4ra8PgeLGzhNCb0MEKhxrZActGIjxpBZhaFOUVdsja52JS
         ah871YGWND9AKVtL2SRjy58xQrY/hMyi5J/fxRmm24RdhWQtgKvY0mvmLwfVU/93j1Rj
         ZKYw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0AEFwJzBnxl9s6CP5t4oARpst3XbukVk64RZHxVymggBV3cb3z
	n3fdAW9GMl4YSbTeGXd89ds=
X-Google-Smtp-Source: ADFU+vvytT40ebUslI+UQwTkua4AXhuVMv1CAAgW8lLYeklvdMpKj6zfCto0n0eD3YEK1HXvIZVxrQ==
X-Received: by 2002:a92:912:: with SMTP id y18mr539785ilg.234.1585209741371;
        Thu, 26 Mar 2020 01:02:21 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:6216:: with SMTP id f22ls896224iog.6.gmail; Thu, 26 Mar
 2020 01:02:21 -0700 (PDT)
X-Received: by 2002:a5d:950e:: with SMTP id d14mr6545551iom.77.1585209741099;
        Thu, 26 Mar 2020 01:02:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585209741; cv=none;
        d=google.com; s=arc-20160816;
        b=inGgHkNn5BLapgCWmU6SK5MIcbbrHie0Aa1xPOvkmKvLXeSUqtJmBmrcJoFP+V/Xcz
         PyeyQh5GDQ7KPwI//XcQBQFvq2nstXCJ5fl9sdN7Xz3UWYW+QLmMsxMOrIePIj0O9BCR
         U4muGOPe4i7hG84tyTn5+lZnsh1aNFcuST0XVaOLUXwEn4NpBudKXdANnYM+FeIm4Sx+
         nLjuFSIkOfJwRqcwKrgWh9oZLVsMWzbUIw4Q/ElNW8njd7JAJacMJwWd80lzCLaljJrH
         oIEt3zHRW0zK37pHx2d5y1nEQQ2xyRipM2nLr11kymCpiLwhLvit/mZb7QT9HIyxNVyp
         IWfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:dkim-filter;
        bh=Q+/lW+MK4bN7hGNuhF3kVcr+0Bx3tZbTLSEobJfEkn8=;
        b=o9oy+OKyjPDUr5R7ciDDRCxDL3T9dctwGQP51JjxBR0POIp+gOLPHOUY62aQ7dNkcD
         OrTYW56gmQdKyir8Lc8OGlRVZ15xuGcmEsTRiTWMu0FJpBPQGrSJBzew1YU1FzUdoSvS
         LfceX9JYQpmDUvtuzBE/IDY7k31/RG+QeSZ0h87Erohj3mRJ1n5kiJw8DyzQi42ndgEI
         Hyowbk1xUjuHLQaugiqLp7bCXifsEAoCsPMduqRNgf/QODo7w6EJUF/rWlu3Uk/b44F5
         773pit2EhKunouUKC688HVubBZvywgwIGYmybP6keK4co6jgXvUAaeMVopk0517kbNlx
         wSGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=TDYIKDX5;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-11.nifty.com (conuserg-11.nifty.com. [210.131.2.78])
        by gmr-mx.google.com with ESMTPS id a3si170864iog.2.2020.03.26.01.02.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Mar 2020 01:02:21 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) client-ip=210.131.2.78;
Received: from pug.e01.socionext.com (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp [153.142.97.92]) (authenticated)
	by conuserg-11.nifty.com with ESMTP id 02Q81WpX002183;
	Thu, 26 Mar 2020 17:01:41 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-11.nifty.com 02Q81WpX002183
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
Subject: [PATCH v2 04/16] x86: remove unneeded (CONFIG_AS_)CFI_SIGNAL_FRAME
Date: Thu, 26 Mar 2020 17:00:52 +0900
Message-Id: <20200326080104.27286-5-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200326080104.27286-1-masahiroy@kernel.org>
References: <20200326080104.27286-1-masahiroy@kernel.org>
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=TDYIKDX5;       spf=softfail
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

Commit 131484c8da97 ("x86/debug: Remove perpetually broken,
unmaintainable dwarf annotations") removes all the users of
CFI_SIGNAL_FRAME.

Remove the CFI_SIGNAL_FRAME and CONFIG_AS_CFI_SIGNAL_FRAME.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
Acked-by: Jason A. Donenfeld <Jason@zx2c4.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
---

Changes in v2: None

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200326080104.27286-5-masahiroy%40kernel.org.
