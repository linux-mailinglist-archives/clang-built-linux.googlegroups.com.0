Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBI52W6EQMGQEXVCPHKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 84D413FC382
	for <lists+clang-built-linux@lfdr.de>; Tue, 31 Aug 2021 09:41:24 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id o130-20020a62cd88000000b004053c6c1765sf355766pfg.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 31 Aug 2021 00:41:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630395683; cv=pass;
        d=google.com; s=arc-20160816;
        b=EhlQkRD/rlBPduB8hykWq66uFUMLn+Az/+/XcCUPSjOKtrB01bmWwO4tiCOTBOuuHd
         aBeIhZWerJ5jGOLZObVcdJ/IBlxhhtZQqaE5OR3CbEDovQ0iDNdMHO1LVDWy8f97A06b
         BDcAHNbt7H1P0Mf1nET2rUYv7nJ//613lixRzm5cgWrZZ6l2G6OCOyxtzI66poTteDZh
         diKiN0rRdGkdXBS8GE6A/cuS3kB1xgguuBNVasoCy2I01JmObJDjQlKB4uGHVHQM3VJC
         qrlx7bg9+7mSFcJ3FNJs/P6mIm4SJZjI7FV9gkqI4T+nm2311LaGri6fO0Gharw2vflj
         TXRA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-filter:sender
         :dkim-signature;
        bh=ykw/PV1XgKHf94Ct3iQFE6DcRSCz0CvDvDM/imB1RxQ=;
        b=ZkDVJAaCl9h563PTDEbcSvknMQLp04YfjTbpGl9rmnBu4vBBUwuInsR70MO0OIS07k
         zjn8P8lW5bCEUHMh0DkilLSi8rCZ3gqhg7Xv9oUKSfafDspsQCIt7XgBUWVURkB3JQQC
         f5WnIM/Nc0uCl5iU+MlBY22zSUQ+b/LFMctBge4bW9utKxicoJJjitoQvmwHu7/M3fOx
         jKWoZGYEkJJUEpMnnN73iRrf+QdJLGIce2pMw+7vvHAtDZpVnQxyg51xOfIxq3kUp4ZC
         fucAcrICZWStxcs8gNQTNUtMgGeSr90rm+vGYL/tld6CkjROVJs4Y/pVNIHgZwZFGh13
         m3rg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=vuEQ22N8;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ykw/PV1XgKHf94Ct3iQFE6DcRSCz0CvDvDM/imB1RxQ=;
        b=l3gyZ3Wsx+a/sqMyOx+FRtItRNokMyxAY40TszIKdo3LPCdHeh/YVP+tZ02tD4gLZh
         KUEvENhX7a8HJirQU6LA+DIedxB1wRUrkqvcX9vzyVFBhTUtBJfQFmK/TAPQWm36qyao
         mfkSr+TEtH0nP0kUB/4sGFBMeH3M2du+gkMBXWL40Ty+1CnkX0k+yVM4ZxHSRFAqi6XL
         QNmT7CIfnKShK0Fgr3rINcf4y8UGZ8iuRbYjYl0iwODbLWIUuLEtLrwMlpf5TsGQlyEy
         YlODEdSS67B8eW1Q2S8UKKQIgF2jvqaJQRGYEs2MaC1qaEgPHG9TGkxYHtV/emqieUA9
         0AtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ykw/PV1XgKHf94Ct3iQFE6DcRSCz0CvDvDM/imB1RxQ=;
        b=c9Qst9wC2MktVzwg6H4xFKEPAiRsT/9ZAyfmljt9nvj0yAy9QM0cEwiJsylR/VzNym
         J5YktFRt1isv9LM9R1KivQ50z3EbQKWriDzJJM4yCx6ipVgbOTtE9ozlW96OilZyT7VK
         +Tk+eMvnHvJ664R4snN9suTgWA1PrLNPngKKqrlXcPUEbVjc554IHLAr8/aXiwHt5uzA
         7+hQRuSz/6CWb56jt6gYAVM2FnqaSl/ROc/PapUlgmZrwn78uFk5xJLXdRybXHkUqHtG
         Fwjhqxz4w3iLl2HPxW9grBCOu1l1TWECvu1XncRexvSCx7sGQI5hQr0676K2A7pbYMh5
         Gfxg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53399yCSD3CNdhY1Tll/cBVS6LVNYYGUQia1FaXTQWa20KkfUDKI
	y4M54ksy9CIC8jx+rM6ZCnM=
X-Google-Smtp-Source: ABdhPJycSW7Q8G4PG0Zif/StUx2aXSXJxl/eeHEmPhpzTl3gYXz77H1jm3yEyDIfbGxxTeqmpEEcfQ==
X-Received: by 2002:a17:90a:c003:: with SMTP id p3mr3792262pjt.14.1630395683268;
        Tue, 31 Aug 2021 00:41:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:fe18:: with SMTP id g24ls4423602plj.0.gmail; Tue, 31
 Aug 2021 00:41:22 -0700 (PDT)
X-Received: by 2002:a17:90b:4d0c:: with SMTP id mw12mr3928987pjb.123.1630395682786;
        Tue, 31 Aug 2021 00:41:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630395682; cv=none;
        d=google.com; s=arc-20160816;
        b=gn0pKHJ10OMpdBncS/q2vznUxkSj2HKXLnWMfVZcSNMSUp0DajHAu3JxdJd7Lq3bkG
         JSkCeBhRQbxYujd17yOlD51SDg+U8T1Trb9mEaEu16BhMBseh45g5XS2Trh1Q9uM7RkT
         FJZjmoyO9nyHt6HI4k5b8HzX2W+ieMdCsdTXzLlBvgNC6Jt7cJXSAGrdkmg8j3qVo7GT
         XhcU5vNvdDj3ftnA+iZb+GI17h93sTeFD3qGgMeItFBkeQ37cYf7NGAHt2yLMWrCAf8g
         VDsiK6uXl8at1ZfnxETczJonOEEA2QHqwhjOqz6cN9nxPo8vCX7KdHcK+pRnFVCxhYXg
         g3Sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=tAsPlkr/bNQw/G1Iv+qMo9y06GVNbopbe8/PtkB/0vM=;
        b=BwnW580qRR9RloH+bUu3kbsO0tgzKapnCQ76HctvsXWul7MQsEupH2gUu5bx8zBOBa
         W9lwurdycXslS61l5+MyJP4z3eSmieQmgTWDS8UGMUVBW8xzTeYWK0rE7ZWEqlkEKLih
         t/TX4NTo1wB4WkfP3venuroWwhibVgJL5wHMi7HpX5JrJV8LPRwS4dH+RtfNUgsPXT01
         ziUvusuiF0E++jJL1BzofHpy2riOYXVcqQUJTzlPGPkA2ChHmTEB4xv8Q4kQFrWrqztN
         kIaiVih2L2FO1/+kfDlmzD7vxCqQ3TDH3gs0l/yERgAhyLBU+HPYyPh+jGpNV5PHgPJJ
         lI1Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=vuEQ22N8;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-12.nifty.com (conuserg-12.nifty.com. [210.131.2.79])
        by gmr-mx.google.com with ESMTPS id r14si5358pgv.3.2021.08.31.00.41.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 31 Aug 2021 00:41:22 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) client-ip=210.131.2.79;
Received: from localhost.localdomain (133-32-232-101.west.xps.vectant.ne.jp [133.32.232.101]) (authenticated)
	by conuserg-12.nifty.com with ESMTP id 17V7e8Ed031407;
	Tue, 31 Aug 2021 16:40:16 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-12.nifty.com 17V7e8Ed031407
X-Nifty-SrcIP: [133.32.232.101]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: Masahiro Yamada <masahiroy@kernel.org>, Kees Cook <keescook@chromium.org>,
        Michal Marek <michal.lkml@markovi.net>,
        Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Subject: [PATCH v2 12/13] kbuild: merge cmd_modversions_c and cmd_modversions_S
Date: Tue, 31 Aug 2021 16:40:03 +0900
Message-Id: <20210831074004.3195284-13-masahiroy@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210831074004.3195284-1-masahiroy@kernel.org>
References: <20210831074004.3195284-1-masahiroy@kernel.org>
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=vuEQ22N8;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

Now cmd_modversions_c and cmd_modversions_S are similar.

The latter uses $(OBJDUMP) -h, but it can be replaced with $(NM).

$(NM) works for both ELF and LLVM bitcode (if $(NM) is llvm-nm).

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
Reviewed-by: Kees Cook <keescook@chromium.org>
---

 scripts/Makefile.build | 15 ++++++---------
 1 file changed, 6 insertions(+), 9 deletions(-)

diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index 50a6765c9a14..4d12f83389ce 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -166,13 +166,16 @@ ifdef CONFIG_MODVERSIONS
 
 # Generate .o.symversions files for each .o with exported symbols, and link these
 # to the kernel and/or modules at the end.
-cmd_modversions_c =								\
+cmd_modversions =								\
 	if $(NM) $@ 2>/dev/null | grep -q __ksymtab; then			\
-		$(call cmd_gensymtypes_c,$(KBUILD_SYMTYPES),$(@:.o=.symtypes))	\
+		$(call cmd_gensymtypes_$(1),$(KBUILD_SYMTYPES),$(@:.o=.symtypes)) \
 		    > $@.symversions;						\
 	else									\
 		rm -f $@.symversions;						\
 	fi;
+
+cmd_modversions_c = $(call cmd_modversions,c)
+
 endif
 
 ifdef CONFIG_FTRACE_MCOUNT_USE_RECORDMCOUNT
@@ -337,14 +340,8 @@ ifdef CONFIG_ASM_MODVERSIONS
 
 # versioning matches the C process described above, with difference that
 # we parse asm-prototypes.h C header to get function definitions.
+cmd_modversions_S = $(call cmd_modversions,S)
 
-cmd_modversions_S =								\
-	if $(OBJDUMP) -h $@ | grep -q __ksymtab; then				\
-		$(call cmd_gensymtypes_S,$(KBUILD_SYMTYPES),$(@:.o=.symtypes))	\
-		    > $@.symversions;						\
-	else									\
-		rm -rf $@.symversions;						\
-	fi
 endif
 
 $(obj)/%.o: $(src)/%.S FORCE
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210831074004.3195284-13-masahiroy%40kernel.org.
