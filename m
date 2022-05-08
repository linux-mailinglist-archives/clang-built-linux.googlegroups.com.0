Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBB5L4CJQMGQEYJVOOLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oa1-x38.google.com (mail-oa1-x38.google.com [IPv6:2001:4860:4864:20::38])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D16551EF1C
	for <lists+clang-built-linux@lfdr.de>; Sun,  8 May 2022 21:10:00 +0200 (CEST)
Received: by mail-oa1-x38.google.com with SMTP id 586e51a60fabf-ee3a9809b0sf2564252fac.18
        for <lists+clang-built-linux@lfdr.de>; Sun, 08 May 2022 12:10:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1652036999; cv=pass;
        d=google.com; s=arc-20160816;
        b=F2fKm99ny15ngMewjG8SOq9W2qYYSTp8YDxahmLc9u+mExFLErCvtj1lf9cMG9opne
         Jg8+HRNYtCHP9llEEt5H5nMdafpz89Wbx6XCFZy0z4nhgXyTyeaMdSLv42VDKLtanuXF
         vL/n3igXkg6Z5odpn/9KmYDGM54jTaxbV+Eg/LXbH8ee3xIz4bQ/IlG+SP51P7RcepVZ
         2EBsYLW/BCm+oEne6VA7Xam6/MGOl1GkWtjCExh2jW4XyJdoPdCnWed0xRnRjoM8pN+Z
         M1XQ4KocSj8KNECBjJTiiIlMTQsnRe6zsP26fSu75eBylS72KWUiXwXwWbOErZY2L2Hx
         OEKA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-filter:sender
         :dkim-signature;
        bh=RaEnZ/mqdQsUdmJGXNqdlp0c2OEnUE+AnVhVI9U3IH4=;
        b=yZ7gIz7W0bvKPzt8t87O/0kD2x1ngMPlfu/vU0vWYMLHFtwPpqKliXmwzPtInODlGk
         1iBErCuaCQuSOUkiQdy6yPHu4xxma29aU4BOPG2wNMTuFt/w2I7mf5QoKBFk9yA5NbOf
         E8gI+c0/MTUaNsVd0TRbUbg/t4cKZARTa2PTtRrwAXDOVdlPRgSEa3w4FkJ4mQHE1EGr
         iUSEl00WnkhOuZ9/8vxItcC6hnUXs21cGtQ4qEvQ4IoUfcv0/77Gjbb8yryZHmjs24ce
         rideZkeL4dIDNnewgOrv6PB8xwhldaCsJC41weRDYSymfBBm5QoWBF1kBsjgVl0muFsm
         5SZA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=tgFPAVSK;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RaEnZ/mqdQsUdmJGXNqdlp0c2OEnUE+AnVhVI9U3IH4=;
        b=gHhNoMvFGRtzbaOfah81hoOq+WNG5FYJEG5OSNieFDVNh4bY5bAjo0VlWbbgQiWaSt
         skaNjJ5PMSQvw61RJQ/mWOXAgrgdEbSd7ZMqFu11UG1v7JgfMv//YfexVnJzeCW8S1WL
         OFK+/rfINXnsEdHwA+EyUJVoJrSqfPbu1pWvxFMayquoMEl8IxaViIbTxanerxesiieN
         Pw3mgMTqP0firsHCV1rZFQukWcGXAO0d5qS5oUjhRtOBL4YGqhqGHXS0Bz6bm0OhW8FO
         EwZIRt99YRppq1CWWrByDzHbin+B1nxpf35iwHHVHIiJ0o6fiz78kanqtfB2zDRIk4sP
         A0Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RaEnZ/mqdQsUdmJGXNqdlp0c2OEnUE+AnVhVI9U3IH4=;
        b=FChR2/tbpmmTqgLCRCz5vGuexc3gsiJxf+JjdSEGww7Y3IYrWUu7tt0z8YYPuWA/lz
         Cm8y3g0mpWpOuslUyRI+r84UWlPzN30RirKiiuo9MYV8hh2B1yDkry3rRH3isR7MT/aQ
         TOlmO/gKjCux3sXYQ3c7TJp+55yJU1fZT0BbwQbuGDvV9LJLd80x+aa692pWgFbaKH3h
         TiVX8bYA+jRjj8GPPx9jtrtunkGuWMb6KA0DwPaSp0n/b2j02gJ+fhvkTUrq3c1UyvyI
         GxXFR5KNvSWEXituvEr+EHQ2EqrF/saRSHBstezrORE3IYL3W5w1MUFJojEh1HqThFXg
         iHKQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530ybEBrso7kK4zZ85GVxhraNpIPkuccMcj3BxuN9OPqbjXZYWD+
	sV35LtnxjjxMFj5Z/7+sRXQ=
X-Google-Smtp-Source: ABdhPJyCvNFvoq4a1AhRNweqt6MoyqET/pytkOE9mZTNkg/62WmpSApsbDbXLGXlx01VJBDj/ZofaQ==
X-Received: by 2002:a05:6870:d186:b0:ed:a737:8ae4 with SMTP id a6-20020a056870d18600b000eda7378ae4mr5493526oac.25.1652036999406;
        Sun, 08 May 2022 12:09:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1508:b0:606:1375:a4a6 with SMTP id
 k8-20020a056830150800b006061375a4a6ls2840477otp.11.gmail; Sun, 08 May 2022
 12:09:59 -0700 (PDT)
X-Received: by 2002:a05:6830:13c4:b0:606:1c11:742 with SMTP id e4-20020a05683013c400b006061c110742mr4719980otq.347.1652036999100;
        Sun, 08 May 2022 12:09:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1652036999; cv=none;
        d=google.com; s=arc-20160816;
        b=ZOBAulA8RYwN7B0+JcH9btM0KXQlE/uJiQHcrhIYy5/yuE8PgpNkfJe0IdhJxf2Kl0
         Aj5jUfUGMlcqJX8WCnKvppIUMZJKbS06689rkQC9k195ibXoyOqb717GZuOA5LDoZBHn
         QSbnwn1nmoZWX0ngR3Fw3XVQC0T9stXOOWAb8+UiMr+KfsTInph3FVHIvHZNduzcVCqF
         /vOsAHeFzzasYk/JhS5UMECQYWan1mvI8WOfz0mrveCKHNGkN2AJ7s8ZM5VG9XLN6mj3
         s7Sux2uCuh0ss1RjaLv9At6OP9WTuKe5nWouvDYNjAcTtxO5Omy93zhJjototm19gBFG
         ozHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=/sRpYst46mRgR25HUnoY09SDWVnwLpOXCqbbaE612Nc=;
        b=D8CT3WfFOzYxupGjw/G8njbsjNZ4jWcuLdUc3hRNLH6Bz7dX0ToJgUvRF7tKPzrq8E
         OOxRhk5snYPSk93vjL0Xw/ECLNyInij2c8oLqTxj/CgkZHLa43kTUf0NQk5BUnRtAwHo
         9L3EV/28jDQhFsMtzktHQvSLBlXFZiabwU8RkFlSEPE9FmyBfqZ88pGtTHzzZ9vQeEbo
         p7VQGYh8U2h2mfhbsqPO20XuVS7GBgFdIf64u6pjYZS2qUjY46NFSjFHUEEWomKBIvwY
         cPWl5J+7U01N13pqNcoHEs+92dCuPj5UdnvZPwXIK7RWKrSTr2evfoPAa29BIFbK5H/s
         MUzA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=tgFPAVSK;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-09.nifty.com (conuserg-09.nifty.com. [210.131.2.76])
        by gmr-mx.google.com with ESMTPS id z13-20020a4a654d000000b0035ebc490719si717540oog.0.2022.05.08.12.09.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 May 2022 12:09:58 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) client-ip=210.131.2.76;
Received: from grover.sesame (133-32-177-133.west.xps.vectant.ne.jp [133.32.177.133]) (authenticated)
	by conuserg-09.nifty.com with ESMTP id 248J8qSV030019;
	Mon, 9 May 2022 04:09:01 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com 248J8qSV030019
X-Nifty-SrcIP: [133.32.177.133]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Nicolas Schier <nicolas@fjasle.eu>,
        Peter Zijlstra <peterz@infradead.org>, linux-modules@vger.kernel.org,
        linux-s390@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
        clang-built-linux@googlegroups.com, Ard Biesheuvel <ardb@kernel.org>,
        Sami Tolvanen <samitolvanen@google.com>,
        Masahiro Yamada <masahiroy@kernel.org>
Subject: [PATCH v4 08/14] genksyms: adjust the output format to modpost
Date: Mon,  9 May 2022 04:06:25 +0900
Message-Id: <20220508190631.2386038-9-masahiroy@kernel.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220508190631.2386038-1-masahiroy@kernel.org>
References: <20220508190631.2386038-1-masahiroy@kernel.org>
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=tgFPAVSK;       spf=softfail
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

Make genksyms output symbol versions in the format modpost expects,
so the 'sed' is unneeded.

This commit makes *.symversions completely unneeded.

I will keep *.symversions in .gitignore and 'make clean' for a while.
Otherwise, 'git status' might be surprising.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
Reviewed-by: Nicolas Schier <nicolas@fjasle.eu>
Tested-by: Nathan Chancellor <nathan@kernel.org>
---

(no changes since v2)

Changes in v2:
  - New patch

 scripts/Makefile.build      | 6 ------
 scripts/genksyms/genksyms.c | 3 +--
 2 files changed, 1 insertion(+), 8 deletions(-)

diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index dff9220135c4..461998a2ad2b 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -165,16 +165,10 @@ ifdef CONFIG_MODVERSIONS
 # o modpost will extract versions from that file and create *.c files that will
 #   be compiled and linked to the kernel and/or modules.
 
-genksyms_format := __crc_\(.*\) = \(.*\);
-
 gen_symversions =								\
 	if $(NM) $@ 2>/dev/null | grep -q __ksymtab; then			\
 		$(call cmd_gensymtypes_$(1),$(KBUILD_SYMTYPES),$(@:.o=.symtypes)) \
-		    > $@.symversions;						\
-		sed -n 's/$(genksyms_format)/$(pound)SYMVER \1 \2/p' $@.symversions \
 			>> $(dot-target).cmd;					\
-	else									\
-		rm -f $@.symversions;						\
 	fi
 
 cmd_gen_symversions_c =	$(call gen_symversions,c)
diff --git a/scripts/genksyms/genksyms.c b/scripts/genksyms/genksyms.c
index 6e6933ae7911..f5dfdb9d80e9 100644
--- a/scripts/genksyms/genksyms.c
+++ b/scripts/genksyms/genksyms.c
@@ -680,8 +680,7 @@ void export_symbol(const char *name)
 		if (flag_dump_defs)
 			fputs(">\n", debugfile);
 
-		/* Used as a linker script. */
-		printf("__crc_%s = 0x%08lx;\n", name, crc);
+		printf("#SYMVER %s 0x%08lx\n", name, crc);
 	}
 }
 
-- 
2.32.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20220508190631.2386038-9-masahiroy%40kernel.org.
