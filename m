Return-Path: <clang-built-linux+bncBDTIRUHU4QLBBOW7X32AKGQEOOFDS5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 976BF1A3CD6
	for <lists+clang-built-linux@lfdr.de>; Fri, 10 Apr 2020 01:28:59 +0200 (CEST)
Received: by mail-qv1-xf3e.google.com with SMTP id dh19sf231515qvb.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 09 Apr 2020 16:28:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586474938; cv=pass;
        d=google.com; s=arc-20160816;
        b=tVneN/xrOwo+3ItY5fkrvCODOlPqcKs6yH1DjtuooLBbjzAIkSps2hdmH+pf4ETvgN
         YP4WVbFJ1KrgHeGLehft7cePIeyM6DUHxOesEgjkHTjjxl8PEXYC5aAuGqt8Ya5ml6CK
         FaI3Fmx2OYVGCIWCDZ7q+ZFrLoXrQjvsSr/53ktBN5mN1qcuFjK7f3bqzVXukZw0fLA/
         O+PVqlki2vf7sjTJtL0ZZudDuTn3YgChJz+KYObI+w8nGtwAAfxEIHOYY6kIVsp6XDnn
         xBUyyLKwgoHEcsqXs1i2/UIO0qVBwn4xuJDON8fUFlp0R+NfkdSKA4G85A1bBb35FKbx
         EY2Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=6yjDw94imt1jcAu3QdzcXCM501XUffofOBfy+Al2LMk=;
        b=hh9rTdOUl69cC1ykI+jRpIsrXOPt2Yvfs3LJ+4uJZ9qbuPqbx+k2FKA0NLghMSsSuA
         ONtQrlun2MD7dmHNxmBjrWb6OvrxD92WNXnF7pKFE6UURR4vddzJ9OWQ81ecYjufhLwk
         bOhRumQXNPgpwsfyXBahW0klFzMjfqxuIQJAk51vNLmXXrWGk2ZtVtRBLdNHaAxQVE+0
         H08qAfhPdsJU1VJ3k9h9dIl3Gb8cV9xjY2RTOHNkFzcHevCx0NLfP/7v03MJ9EA7jUNB
         OW7++uQvR4J2VqQcnx2tZBnHFd8snJlC7bzHTfYVWZ+HSfyfdhztVze35i6tpczrmq4X
         aSLA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=B0EmNRpP;
       spf=pass (google.com: domain of caij2003@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=caij2003@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6yjDw94imt1jcAu3QdzcXCM501XUffofOBfy+Al2LMk=;
        b=WVib3/D3ZooZKMA35AREpWermM5vI87jaG3no3YNFPOURtRpAgCh6yGN67+E5Oe3Rw
         DsqN2h6L47AXim8epCZATmgcQ7jjPBamJZwo944dNEXOKPlr7nSLLyDRTNC6pgEQYnrn
         O9gjDfvNgmGGyGcV6p+cOvKY7zPieIXZeGteQzNnTrWs1RA89I0bsOx23rnueqyiMAZb
         IK9sMGTjB0Lfbngl3fH8hlXZlEwiL8U9lUxYOpUTjzFN6UMU5O912FhM95a69APCughl
         pIYnvpyYRmaxG7dhEK11zj5LTZV1vluGkCqtXDccZRYTknCLA7iL9GGXCVZPZs0ruX5z
         2s3Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6yjDw94imt1jcAu3QdzcXCM501XUffofOBfy+Al2LMk=;
        b=F32KQqVtrs5jAiImkMOeWS4WVA3AGh6veOxtGEH9C6lHiAN5APJ5zZDzBf40dBfthw
         xjFWpwJHS4L7dWuYmDa6NZ3lDKuJMRYgtRCcC67uTbJZs2FglcHHbCsO85USbuJHmOXO
         2b/VpnEtEI8cU7WBNtrYwhWJ00qeeVjlxrz552aRe+PWbq8GfnzmBpWpIs9cyccpNr9h
         rgTRcuLHoEMUO+AtRDaN0KWJuJs1Mztrni9og4mVDyzXkCx/SQvN/qCuKgyUzX9m0Y3l
         Q5ifHa2L7uckURfamFu8FzjzC9xWrF7XOUmMecC783LiYzVJ7sR/5VQfmq2qk056/ZoS
         gN3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6yjDw94imt1jcAu3QdzcXCM501XUffofOBfy+Al2LMk=;
        b=neXomLLNzg1m+dhflV7eKJ6dUlgTaiNi2jxaMdw9TMoCz7yB7MtivyPh5jPSuLW/RN
         0QVO1axLGGhK/F/i/JrlUCv6jDII2WwBySWtcaos2ZyX6Iu/OZyj+XFLhJUAf/XuZCRM
         Juw1UA5yCIwmiAjS2sQh0JRHnSoajV9hcVzksZgvV4R0rOzMKAdp2QxSnQ2db7DZ1ODu
         0LC1YNJR9UzWXsNNyi65a4eojBq52xtoqQPkSRd8Zk1S+ZOrDZpiVjocjTvk195ZK9n6
         1ANgUVF1iCkcj5gTntPcMrmsDzPBM+Fjughr7hahQOZtOGGCmPNZt3M4glMp3f2r5hoY
         yQNw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubJpDZ2pIXbSxUVPv5sdiBr/17RcDG20D8kBGWUEFJn9z8gAS0a
	SqnBZQEAewhETEetW+HJX2g=
X-Google-Smtp-Source: APiQypLPJGDhdtHSXknAhE5guEiIXQFbhIaEKz48EPhs0d9Fw4xNTrk0qc6Y+9jv7+inMR5a9OmcVA==
X-Received: by 2002:aed:2183:: with SMTP id l3mr1839090qtc.332.1586474938238;
        Thu, 09 Apr 2020 16:28:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:a391:: with SMTP id m139ls7696040qke.10.gmail; Thu, 09
 Apr 2020 16:28:57 -0700 (PDT)
X-Received: by 2002:a37:c4b:: with SMTP id 72mr1512819qkm.2.1586474937933;
        Thu, 09 Apr 2020 16:28:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586474937; cv=none;
        d=google.com; s=arc-20160816;
        b=OC5YsdzbcieVZxk91i3gE6CJlGSx/xlaESFR+DU8ToXQ8oJon4H6k2AfIK4E1XeGOx
         exZMmT6PNt5ZkrwA5O9fwnmHDg0bOrWeK5QcaUKIs+R3Fbiwmc8PqciJ27za/LM5dkjJ
         WgYNAr3tRZgyYKgX8IzCnIZC1vj8eZ37qR/2S017qbH2RJOrxkX+LtZMUvDLbIwL25m0
         8db5Lzkd0S1GVOpSTqYIGlGFtuqFUJYDcr1r8FPbJ0hQSRkTT0cHIfvrFoJubf/dDGJo
         Uqb98cPpICEKPmR5VUNDf0Cj4SHBfJmIIQorJPqm8ETpmKVeah54dyCXSZViq4b1j9Pe
         3G3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=j6nOAWhXcgV50dfI2kOZff7IGheVzW2uE0Ud7W3fojM=;
        b=lLEcRnL+KOKyfOB/q9xDEG4ByvFT55dmUO2lLcRhzFnn24EbMRw7laB8qnKr0RW1uZ
         JDtoAhXbaz6pZ6KKFRYSoTRB9O9RuNPHbh94D4EyKVpViVN6k7XrWmCIOcd7YjvDBXin
         32nYeKetO5k+tm70vkksuYnAtJ80UIw9TaRjMCbOKNp1uHQNZOwhwwm9NlRG1h8ODJmm
         Gs/uEByZ+U094ll1SrUaKpBom7hm4hrq40Rg3E36qVillpsp07qYIvoi3eMpGOVeVFtA
         NvgY+c7jzscqIYqs8S4695yFLfqfPmwjUeweP4tgB7dMo1PZiixOXdDps4pU+qIZTcim
         1QMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=B0EmNRpP;
       spf=pass (google.com: domain of caij2003@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=caij2003@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id x11si27178qka.4.2020.04.09.16.28.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Apr 2020 16:28:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of caij2003@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id ay1so83572plb.0
        for <clang-built-linux@googlegroups.com>; Thu, 09 Apr 2020 16:28:57 -0700 (PDT)
X-Received: by 2002:a17:90b:3585:: with SMTP id mm5mr2132232pjb.168.1586474936962;
        Thu, 09 Apr 2020 16:28:56 -0700 (PDT)
Received: from jiancai.svl.corp.google.com ([2620:15c:2ce:0:b7ed:16a3:9dc0:21bb])
        by smtp.googlemail.com with ESMTPSA id e14sm238783pjg.0.2020.04.09.16.28.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Apr 2020 16:28:56 -0700 (PDT)
From: Jian Cai <caij2003@gmail.com>
To: 
Cc: caij2003@gmail.com,
	ndesaulniers@google.com,
	manojgupta@google.com,
	Peter.Smith@arm.com,
	stefan@agner.ch,
	samitolvanen@google.com,
	ilie.halip@gmail.com,
	jiancai@google.com,
	Russell King <linux@armlinux.org.uk>,
	Arnd Bergmann <arnd@arndb.de>,
	Linus Walleij <linus.walleij@linaro.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	Doug Anderson <armlinux@m.disordat.com>,
	Benjamin Gaignard <benjamin.gaignard@linaro.org>,
	Bartosz Golaszewski <bgolaszewski@baylibre.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	"Steven Rostedt (VMware)" <rostedt@goodmis.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Tejun Heo <tj@kernel.org>,
	"Joel Fernandes (Google)" <joel@joelfernandes.org>,
	Patrick Bellasi <patrick.bellasi@arm.com>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Dan Williams <dan.j.williams@intel.com>,
	"Eric W. Biederman" <ebiederm@xmission.com>,
	David Howells <dhowells@redhat.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] ARM: do not assemble iwmmxt.S with LLVM toolchain
Date: Thu,  9 Apr 2020 16:27:26 -0700
Message-Id: <20200409232728.231527-1-caij2003@gmail.com>
X-Mailer: git-send-email 2.26.0.110.g2183baf09c-goog
MIME-Version: 1.0
X-Original-Sender: caij2003@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=B0EmNRpP;       spf=pass
 (google.com: domain of caij2003@gmail.com designates 2607:f8b0:4864:20::641
 as permitted sender) smtp.mailfrom=caij2003@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

iwmmxt.S contains XScale instructions LLVM ARM backend does not support.
Skip this file if LLVM integrated assemmbler or LLD is used to build ARM
kernel.

Signed-off-by: Jian Cai <caij2003@gmail.com>
---
 arch/arm/Kconfig | 2 +-
 init/Kconfig     | 6 ++++++
 2 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 66a04f6f4775..39de8fc64a73 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -804,7 +804,7 @@ source "arch/arm/mm/Kconfig"
 
 config IWMMXT
 	bool "Enable iWMMXt support"
-	depends on CPU_XSCALE || CPU_XSC3 || CPU_MOHAWK || CPU_PJ4 || CPU_PJ4B
+	depends on !AS_IS_CLANG && !LD_IS_LLD && (CPU_XSCALE || CPU_XSC3 || CPU_MOHAWK || CPU_PJ4 || CPU_PJ4B)
 	default y if PXA27x || PXA3xx || ARCH_MMP || CPU_PJ4 || CPU_PJ4B
 	help
 	  Enable support for iWMMXt context switching at run time if
diff --git a/init/Kconfig b/init/Kconfig
index 1c12059e0f7e..b0ab3271e900 100644
--- a/init/Kconfig
+++ b/init/Kconfig
@@ -19,6 +19,12 @@ config GCC_VERSION
 config CC_IS_CLANG
 	def_bool $(success,$(CC) --version | head -n 1 | grep -q clang)
 
+config AS_IS_CLANG
+	def_bool $(success,$(AS) --version | head -n 1 | grep -q clang)
+
+config LD_IS_LLD
+	def_bool $(success,$(LD) --version | head -n 1 | grep -q LLD)
+
 config CLANG_VERSION
 	int
 	default $(shell,$(srctree)/scripts/clang-version.sh $(CC))
-- 
2.26.0.110.g2183baf09c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200409232728.231527-1-caij2003%40gmail.com.
