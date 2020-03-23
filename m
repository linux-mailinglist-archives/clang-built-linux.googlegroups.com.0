Return-Path: <clang-built-linux+bncBAABBV5U4DZQKGQEXMVRRYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf39.google.com (mail-qv1-xf39.google.com [IPv6:2607:f8b0:4864:20::f39])
	by mail.lfdr.de (Postfix) with ESMTPS id 8690218EDD7
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 03:09:28 +0100 (CET)
Received: by mail-qv1-xf39.google.com with SMTP id d1sf11678153qvp.17
        for <lists+clang-built-linux@lfdr.de>; Sun, 22 Mar 2020 19:09:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584929367; cv=pass;
        d=google.com; s=arc-20160816;
        b=pX7CvTdXoh+IrYpF/ARNn/xn8S7Ue95cMlHc+dvucVSs0YoQMjU7AqGs4L2LakTINL
         GMjehzXh9dI3lM/1pWcDuQiKubZKjxYIj14RGmMXaoCIhRnfZ20fYdzDxoH+eN7xWJyF
         EeR3mwMymISs8prnK+FcYcgAlHMja8JQp07G7gG4FE1JXa31GmAQlWCJuHslr41V9/LG
         GRRaj1Qditps2omGJV8LECTjGv4aPXrqDt+ZFyLkjsTI5GAGFnOlQ8yECoRZCroW+mAO
         mGWCZL8DaZItEkG8MLegTooI7QrTCD7QBZfwglbCoblXfcthNIpIQw9dKpvTK0J9XImO
         reBw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:dkim-filter:mime-version:sender
         :dkim-signature;
        bh=jTCYPEDaOHmYHEgwoURmTP3FdfFIJeXpQeE+u9NbxQI=;
        b=epHrJ03UvMP/HVgJCVf/1Cgce7BKVypclXDG4KO3z6R/FBHjHV3uhy/i/IhKxR/f2X
         /nZ7TnxacAHgS4uRqGpAB0+XDFOYil2iBR6h8U2Bx4cBCunvcafgWdNKkI/U/ACAL7hs
         nbe4aSb7v8jNYINEZezH/DZSyMn3hFOIGvHhk8ynmRfGbzXDC7Antn8FUMpFHrV/qoMa
         IVkkr/01y7IoR+B6soxiUnFbjr4MBdBUuEmNccYpbaNqmNF24/1xZatmUiJqDaiJo1Xw
         CPFWo1cEnIlhUBoxCA6WZF2cfkdxLj9tgVxtnAWIFx0J4RR15F2lfkw/fucaF3ScfwN/
         MTGQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=YU0prPnc;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:dkim-filter:from:to:cc:subject:date:message-id
         :in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jTCYPEDaOHmYHEgwoURmTP3FdfFIJeXpQeE+u9NbxQI=;
        b=RX4ZGrb0vXJIPrFL6v93PDbZLBvUA5BqP1a/qwel0K5VsoKThAKuxBaQigdlv4/ZjD
         4QfbQXgF8I/6fs3eqLmVcc7BlLw4W4YHczWb4fHVYhJqzy0oE7Ix3Z2kL5KRnoZDYPkO
         wuQPjjHVIYLPKb2XhNTKmE2W/CeNTSEm9X71H+eLfhhozisyY2npPUfoFtKLLfBwik7Q
         bmVdyENZk1x1ugsnq3Vh9guEY+Bszc26EaEhnDiyBxy4T8S57AF2Ng9uw2rWnSiTQpn2
         8dAmX3AHSxwiwKYrOp3dRbkchp7MdjML/3Wv6a4S3tpBue8UCkr5JPzp9r49VfZH3I1d
         f/3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:dkim-filter:from:to:cc
         :subject:date:message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jTCYPEDaOHmYHEgwoURmTP3FdfFIJeXpQeE+u9NbxQI=;
        b=Uh5ObackPO06Y01wt9o7RBb5aKRS+uoTG5ltEJ+BUWQBlAirsWxee6Un8eGBbe+rNx
         4dyujvJ16I6DugrNfSKPPJuNWI5IT7d0b2LrDwIkmz6kvML1ZPfsiReS0ohjGNlWhAp3
         WEn4y/oqjxS4sia/rn4y1a6CpNeZtGd//2X6RTGeuqjqH85Puts5eiWzQ1eKsganePIm
         aBe0EAJMNie+itmhAOeY4pMf/VLqEUxkd72DCnbpmGsmJizLz7uO+7Ow8H6XsRMQ54Jp
         rQ/qHqwZT5wmRcHR9Kan4AoKPDafX3zTYn32q9uK/jjbnJLHJRJkvDIwVpy/27G5QxcN
         nA5A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2Eal8xZT9a4g230U8kFNah4ybHlrfd4CbDNtrhbjHyUnZOoRbX
	Q4oHQW4i04SbFsecEX5zqR8=
X-Google-Smtp-Source: ADFU+vsJMTB602wScbJOPtqasjniyeoXQr1XzLHNdXztSOf4qTMlLwx7jXVa3UYPYiKTrW1rFAUa1A==
X-Received: by 2002:ac8:6f14:: with SMTP id g20mr1625324qtv.53.1584929367164;
        Sun, 22 Mar 2020 19:09:27 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:1021:: with SMTP id k1ls2975140qvr.4.gmail; Sun, 22
 Mar 2020 19:09:26 -0700 (PDT)
X-Received: by 2002:a0c:90aa:: with SMTP id p39mr18487641qvp.38.1584929366883;
        Sun, 22 Mar 2020 19:09:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584929366; cv=none;
        d=google.com; s=arc-20160816;
        b=sYwG6ZZJ7wiOYhJyE+xgnGr5382O22G6ggnIHsJfH+cr2l/T/ih4rAD2Kgo9/SEzIu
         H+CcGHKr4eWS1k0uAXaxmombA7lWWa1gnCGZVx3l73EJGxipWusEE93lTVRvelEdJ1AP
         CV8FIanlvF4ocd6XYLepPrsBVEgrVeFUeWP15P0Q2ZMa6BgzdM6vYbiELMO5albFYaR4
         5+DpcS0xAh/Wjheis8pYSwyl43rv5RblnrpjqMosFKIYBuqU6MC2SDZgHp3JR1gXbnHP
         RJIqGv/P3GHUP3N9p8mOiWNiOahpuntMCVL6+B60ytvMXbDYwqRbmFS/erTU8ML9Ehvq
         eAKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:dkim-filter;
        bh=QjbliSD/zWqt8gByD48exSE3mzIP9mMQi1PQ0wMIen8=;
        b=z848gjteV0WyrD2vLy1LN+GOxmAqzTxHYpJWpBX+5g6EoretrDYH4ipM9eHmJ0IzBO
         q77fJdgqBzd1gXlU1KndUacLjM8Q1ZlS/9KnIKkLfXepctalAzhoWawXeyDgfGYPLu7n
         GzVE7uF2u9Ha0qT7+50raMRJCfh3H4sYjMbaoPa+frq0ez4HHCPDMI6Fn/91FSpdtZWg
         VzqetMBKuhuTqWqMOo8eUZ/Cj8PPwYgcljnTEKZtQyWjesjtwYC6u0GDcE3gysKR9ybf
         NEoI3FAMGbywixsN+5L452CWAJjZJgNx/4wQmxtUVk87heJHRn0tRRG3fkckOmhAUQ30
         WmeQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=YU0prPnc;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-11.nifty.com (conuserg-11.nifty.com. [210.131.2.78])
        by gmr-mx.google.com with ESMTPS id 198si666739qkh.7.2020.03.22.19.09.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Mar 2020 19:09:26 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) client-ip=210.131.2.78;
Received: from grover.flets-west.jp (softbank126093102113.bbtec.net [126.93.102.113]) (authenticated)
	by conuserg-11.nifty.com with ESMTP id 02N28urV002941;
	Mon, 23 Mar 2020 11:09:01 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-11.nifty.com 02N28urV002941
X-Nifty-SrcIP: [126.93.102.113]
From: Masahiro Yamada <masahiroy@kernel.org>
To: x86@kernel.org, Ingo Molnar <mingo@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>, Borislav Petkov <bp@alien8.de>,
        "H . Peter Anvin" <hpa@zytor.com>
Cc: linux-kernel@vger.kernel.org, "Jason A . Donenfeld" <Jason@zx2c4.com>,
        Masahiro Yamada <masahiroy@kernel.org>, Ingo Molnar <mingo@redhat.com>,
        clang-built-linux@googlegroups.com
Subject: [PATCH 4/7] x86: remove always-defined CONFIG_AS_CFI_SECTIONS
Date: Mon, 23 Mar 2020 11:08:41 +0900
Message-Id: <20200323020844.17064-5-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200323020844.17064-1-masahiroy@kernel.org>
References: <20200323020844.17064-1-masahiroy@kernel.org>
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=YU0prPnc;       spf=softfail
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

CONFIG_AS_CFI_SECTIONS was introduced by commit 9e565292270a ("x86:
Use .cfi_sections for assembly code").

We raise the minimal supported binutils version from time to time.
The last bump was commit 1fb12b35e5ff ("kbuild: Raise the minimum
required binutils version to 2.21").

I confirmed the code in $(call as-instr,...) can be assembled by the
binutils 2.21 assembler and also by LLVM integrated assembler.

Remove CONFIG_AS_CFI_SECTIONS, which is always defined.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 arch/x86/Makefile             | 6 ++----
 arch/x86/include/asm/dwarf2.h | 2 --
 2 files changed, 2 insertions(+), 6 deletions(-)

diff --git a/arch/x86/Makefile b/arch/x86/Makefile
index dd275008fc59..e4a062313bb0 100644
--- a/arch/x86/Makefile
+++ b/arch/x86/Makefile
@@ -177,8 +177,6 @@ ifeq ($(ACCUMULATE_OUTGOING_ARGS), 1)
 	KBUILD_CFLAGS += $(call cc-option,-maccumulate-outgoing-args,)
 endif
 
-cfi-sections := $(call as-instr,.cfi_sections .debug_frame,-DCONFIG_AS_CFI_SECTIONS=1)
-
 # does binutils support specific instructions?
 asinstr += $(call as-instr,pshufb %xmm0$(comma)%xmm0,-DCONFIG_AS_SSSE3=1)
 avx_instr := $(call as-instr,vxorps %ymm0$(comma)%ymm1$(comma)%ymm2,-DCONFIG_AS_AVX=1)
@@ -188,8 +186,8 @@ sha1_ni_instr :=$(call as-instr,sha1msg1 %xmm0$(comma)%xmm1,-DCONFIG_AS_SHA1_NI=
 sha256_ni_instr :=$(call as-instr,sha256msg1 %xmm0$(comma)%xmm1,-DCONFIG_AS_SHA256_NI=1)
 adx_instr := $(call as-instr,adox %r10$(comma)%r10,-DCONFIG_AS_ADX=1)
 
-KBUILD_AFLAGS += $(cfi-sections) $(asinstr) $(avx_instr) $(avx2_instr) $(avx512_instr) $(sha1_ni_instr) $(sha256_ni_instr) $(adx_instr)
-KBUILD_CFLAGS += $(cfi-sections) $(asinstr) $(avx_instr) $(avx2_instr) $(avx512_instr) $(sha1_ni_instr) $(sha256_ni_instr) $(adx_instr)
+KBUILD_AFLAGS += $(asinstr) $(avx_instr) $(avx2_instr) $(avx512_instr) $(sha1_ni_instr) $(sha256_ni_instr) $(adx_instr)
+KBUILD_CFLAGS += $(asinstr) $(avx_instr) $(avx2_instr) $(avx512_instr) $(sha1_ni_instr) $(sha256_ni_instr) $(adx_instr)
 
 KBUILD_LDFLAGS := -m elf_$(UTS_MACHINE)
 
diff --git a/arch/x86/include/asm/dwarf2.h b/arch/x86/include/asm/dwarf2.h
index d6697aab5706..5d3e7507cbbd 100644
--- a/arch/x86/include/asm/dwarf2.h
+++ b/arch/x86/include/asm/dwarf2.h
@@ -22,7 +22,6 @@
 #define CFI_ESCAPE		.cfi_escape
 #define CFI_SIGNAL_FRAME	.cfi_signal_frame
 
-#if defined(CONFIG_AS_CFI_SECTIONS)
 #ifndef BUILD_VDSO
 	/*
 	 * Emit CFI data in .debug_frame sections, not .eh_frame sections.
@@ -39,6 +38,5 @@
 	  */
 	.cfi_sections .eh_frame, .debug_frame
 #endif
-#endif
 
 #endif /* _ASM_X86_DWARF2_H */
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200323020844.17064-5-masahiroy%40kernel.org.
