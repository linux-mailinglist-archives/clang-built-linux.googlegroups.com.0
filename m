Return-Path: <clang-built-linux+bncBAABBDOD6HZQKGQECLKTIXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8696F193A28
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 09:02:22 +0100 (CET)
Received: by mail-yb1-xb3b.google.com with SMTP id h185sf631107yba.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 01:02:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585209741; cv=pass;
        d=google.com; s=arc-20160816;
        b=CJdAipZQkUjMUQNMRx6jozux2YjCZmWzA5GOfFebTiyfmkYQ10C5DCf7CAxqICYbvo
         43U3k4GAn+/KpgkT0YpGu7VuAm6pduflqnU4UGUubftmYjnuwukPNSWa+yovClWNbUiX
         nCDSwn1cvICaP/YnlfJmfZfIshebRu+5jn11LAaFd+1AAdAm2mpOBfhHr6+ZhRgLICG3
         1RIFu4/W1sif2FtYn1sSMmjDXKOIu368W24AkQ1UP82BpaYkkehMsFWPrXOgaw5hhjJj
         0g7VPQrUC6uvEoECyqOQyRCrQ+IM28VSemiUbbVS1U+ftNIWrsT0aMUYMilJdqRXEgeR
         ELEQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:dkim-filter:mime-version:sender
         :dkim-signature;
        bh=zqMvEMOrIFKH7gtknuHm3TTSXHz/PfLxdHHQJue+Lpo=;
        b=IhrykhpET7k/qgYa3ESIQ5ilezPzcY3Ruv7m6g3wop0DbHpVfZIzY4E9Vt+XPJccyf
         HXD3+8DjSp15f5BwyKlXXvPsZGgugjlNeq2IembrOexJ7s/FnS4U+7hbgDmMToqoV43U
         evFvVar2wwb72PtjkeSYC5kHKbDFrwGCNP7SHBcTNbYwcb4BtNaFE+MWoGYSIHTveu/w
         7vczqcGWtNEC+aKeaRUuEfUe7VYrifFyKazfuxOCBTryczpamn1hvSu9CDRjK6Wytq05
         npiMMweWmKRUWxQvcCJGMIymviJM60+QZfksuCFJyjZN3NrNljhprjHX2/BdlAfNqd8Y
         VHdA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=Y2NGdCpo;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:dkim-filter:from:to:cc:subject:date:message-id
         :in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zqMvEMOrIFKH7gtknuHm3TTSXHz/PfLxdHHQJue+Lpo=;
        b=OzrYyiFkT+uNLzZ3cXxdB3vaFcB+MJRs/Vj+4NWrUinc4ItAR/VNd2EiSsCoP8zIyd
         qqL3YDtdLc/68U4JMOMHlcavk8kiYRU+c//GIfqGcVLmuIXiZX82KcBR/gIT9KZNqlub
         ZweyrPAZoVGI9YtjpvqKrnHq1KWjgXGwiIUKu/C3JzVrUrodYuPyoCSpf9qj9dGSu37Y
         tPlYwjf9zX5XaVa2ze0yZChexmUI59JP7MG5UbPakzIWjoptODyxn45pG0v8e9TIrq9Q
         y5Yxb+dVMTPCQbFGXuLLhDqNYEAnsyHL5UVM3a+HhyaI4jTkPTYk4wIWplSx4noQg4ra
         vbBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:dkim-filter:from:to:cc
         :subject:date:message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zqMvEMOrIFKH7gtknuHm3TTSXHz/PfLxdHHQJue+Lpo=;
        b=BPZ9loKu9oymw7qxFWya2r09WuKMLH/xYOhXF9/x2fn/L2+BwwL5KRT/rn0qyTl2HD
         PXFbn3AJtxkvU+e87Kab7FZibS6Ct96CzpV6SHT2/iIMjw6uxR5RBUSxNScQmplcvYHU
         qGh6qaUhEw1kwAfHZ2PIz5rQiPu4ZXh/Tz9Hjm1kZ8DVqg3f5rhO+5oHYHKNnM7Kyw5o
         ctQbcI8MxBxWWEdKPCJnDu8lane020ng7cXQ+D1oVmP1WxdFH15OOak6EAGHyhMXozsN
         mhx0qiRNj449/HZu04P2OGuCrUaG/KOBvnvYM3xjZeesMoxsyuN4CeMInh+mOA4aDeAk
         FmxA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ32ncpDOt+VK6CaWs8zvfm4ilEfCgPWcKcAqMrPNXBXTJwIlBsd
	kJzDiMZFAbc+CggO6hXTnrU=
X-Google-Smtp-Source: ADFU+vvPC78TH/Oag+1aw54ehxZ2JcocSP/i83g+zc0dibuNyVKkjrabe/tQu31+2+92SBshGzwfOA==
X-Received: by 2002:a25:cb17:: with SMTP id b23mr12303732ybg.319.1585209741389;
        Thu, 26 Mar 2020 01:02:21 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5b:5cd:: with SMTP id w13ls1811309ybp.10.gmail; Thu, 26 Mar
 2020 01:02:21 -0700 (PDT)
X-Received: by 2002:a25:55c4:: with SMTP id j187mr12634247ybb.67.1585209741035;
        Thu, 26 Mar 2020 01:02:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585209741; cv=none;
        d=google.com; s=arc-20160816;
        b=hp149fbILaKVxrftHqEMBMohspoeJ8pdMhLBo8GNpqI7J2BFrW3UvE7PrIHzfmtmUB
         GMCMMsYOtld6mi7Je/O+WVCeaMZouUthELtY7zVDJpprHDWalggpUyObvOYr2E38RzWx
         H1On36qPqKXE79y7HB+5uDr3yJu5wUtzxzBN7qh7XP/zpTLaz2c7fSGGBm3lY5mMzabF
         WLNr/Z7hnlMR1jDC3kK3+ND1CSB7850T/rRANP13PuGbEZim/JDfmcE4Y6yeYUpLFpeG
         sSRbAtrw+erNLdIZBb8HepsjfwNomdI044LtWG1XnysKEOHXSx0aJACtlLaHQhVff/oJ
         dBog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:dkim-filter;
        bh=oRNT1Ac+rpRmk/HlvvcnBgH0h0mqbrwsbOfQN7oSRkw=;
        b=CKawhlQHrjR+fau+An7NtmBnLpA1sEyMyTJ2u5uYMD22KB6Rgc4PGKSaoO12SuDjUh
         Q3LKfMZi1YD53nKc9pmukM7yu3B/QxlPlxDr4xLnXoGnpqZvHxnSc7Cy6BgGcAcM/41E
         7PSMYhPeFQ0LSBt8LLZZPop3ZXLrCIwyWS1FfaUw6AaEJESgi8CccioJnUeSHtkn+pek
         yE+zpgvvfjBgYSi8Qk63sPNv4vDxC3AjWin6OgTmC83IicifmRYXJliIdCpv2w89zxJu
         sHZ6AAulv2rANYGSn1xVMp+i+JK7bYU4gt3IXaMS1LuXldDBSwXP7bwp7a9qJH8OTyAm
         UfKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=Y2NGdCpo;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-11.nifty.com (conuserg-11.nifty.com. [210.131.2.78])
        by gmr-mx.google.com with ESMTPS id l141si77779ybl.3.2020.03.26.01.02.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Mar 2020 01:02:20 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) client-ip=210.131.2.78;
Received: from pug.e01.socionext.com (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp [153.142.97.92]) (authenticated)
	by conuserg-11.nifty.com with ESMTP id 02Q81Wpe002183;
	Thu, 26 Mar 2020 17:01:51 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-11.nifty.com 02Q81Wpe002183
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
Subject: [PATCH v2 11/16] x86: add comments about the binutils version to support code in as-instr
Date: Thu, 26 Mar 2020 17:00:59 +0900
Message-Id: <20200326080104.27286-12-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200326080104.27286-1-masahiroy@kernel.org>
References: <20200326080104.27286-1-masahiroy@kernel.org>
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=Y2NGdCpo;       spf=softfail
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

We raise the minimal supported binutils version from time to time.
The last bump was commit 1fb12b35e5ff ("kbuild: Raise the minimum
required binutils version to 2.21").

We need to keep these as-instr checks because binutils 2.21 does not
support them.

I hope this will be a good hint which one can be dropped when we
bump the minimal binutils version next time.

As for the Clang/LLVM builds, we require very new LLVM version,
so the LLVM integrated assembler supports all of them.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
Acked-by: Jason A. Donenfeld <Jason@zx2c4.com>
---

Changes in v2:
  - Change the patch order and rebase

 arch/x86/Kconfig.assembler | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/x86/Kconfig.assembler b/arch/x86/Kconfig.assembler
index 91230bf11a14..a5a1d2766b3a 100644
--- a/arch/x86/Kconfig.assembler
+++ b/arch/x86/Kconfig.assembler
@@ -3,15 +3,25 @@
 
 config AS_AVX2
 	def_bool $(as-instr,vpbroadcastb %xmm0$(comma)%ymm1)
+	help
+	  Supported by binutils >= 2.22 and LLVM integrated assembler
 
 config AS_AVX512
 	def_bool $(as-instr,vpmovm2b %k1$(comma)%zmm5)
+	help
+	  Supported by binutils >= 2.25 and LLVM integrated assembler
 
 config AS_SHA1_NI
 	def_bool $(as-instr,sha1msg1 %xmm0$(comma)%xmm1)
+	help
+	  Supported by binutils >= 2.24 and LLVM integrated assembler
 
 config AS_SHA256_NI
 	def_bool $(as-instr,sha256msg1 %xmm0$(comma)%xmm1)
+	help
+	  Supported by binutils >= 2.24 and LLVM integrated assembler
 
 config AS_ADX
 	def_bool $(as-instr,adox %eax$(comma)%eax)
+	help
+	  Supported by binutils >= 2.23 and LLVM integrated assembler
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200326080104.27286-12-masahiroy%40kernel.org.
