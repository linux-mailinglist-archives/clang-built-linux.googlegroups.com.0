Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBTHXZWJQMGQEMNQ5EMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf37.google.com (mail-qv1-xf37.google.com [IPv6:2607:f8b0:4864:20::f37])
	by mail.lfdr.de (Postfix) with ESMTPS id D6B8F51B8B4
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 May 2022 09:25:01 +0200 (CEST)
Received: by mail-qv1-xf37.google.com with SMTP id kc6-20020a056214410600b0045a97658c7dsf2559008qvb.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 May 2022 00:25:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1651735501; cv=pass;
        d=google.com; s=arc-20160816;
        b=bq0GKODtckLhfu+2eEQ58jemTOfUfaYW0UYB7lovTz/2kvSRCuLj8ER5MQtQeaIJjR
         su5TlPYkWWMVBAR1WmsOEWEYYlO6f/AKpzhYGAnJ3WeveKqXzvxU1Y5iclEUq2BGYlnP
         oLGgy/ufWG3j8eWEJTOQmAHKNKWRKpL/OpFm48/fPGEYGXro2nlsvuW0Jj8ELBFWQyQN
         6g4/2JEqnB3xKBazr5pT5KXnbnUwf0oNd1RCVaUu3vt2EBd1wif94q1MatDvSb4j4X1e
         cySm/lAJe0hRXR6e7bobPi0Q668OdKPcGGAnaUtohBCL7+dV/+UmRj5VMlsfly1GgPt5
         O/sQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-filter:sender
         :dkim-signature;
        bh=Udpb3hs7Tz0VeMWmCtCHW35TQp+v38nyz5/5mf1XWP4=;
        b=mv4kRdCom7N8zPn/WQmJolFMnQanE9LChb0Hl0YkEkgLevHPLfMhX5f5BZWeUnRGjO
         mR23hQtFn6mZfCV72w0Dp7zN+97yr8hFHJyFY8OR2v0yrsVZRZtkaUUoh81QDzl9n5Zz
         POOJfx8nK/83WXKXveDtDJbelpSl8lhVla/l4COkaQdKbNTfV+dhTzfh3CUFvjFCMkQV
         fvLS9ohExtVf8Q/D93vRmCU2Y9pjty7PwmC88GwxJeoKTUmUr2za33D8ePkVTBKdsWsk
         w3KoQS4TG7p200RQP4OR07cRtfgF+2fIzLPRgaue+L/wKRaU5u1aAEECD+DRsfZc72X+
         keCg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=FuOivWkX;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Udpb3hs7Tz0VeMWmCtCHW35TQp+v38nyz5/5mf1XWP4=;
        b=h0q0DmsVPt9+Do8hNbnHgy4DSIzKT9Y4dVuoDMHCjQ7I0U0jizG8IHOlFZJp6XR176
         B4IC11ETHnfT0AvPucXoGPqQx0wBtgxTR+1g6ylE2RFaLsjDpJ7RPYpquQaOe54hciuM
         cJN2cwIFrFemJ8m1Tfw5BZmc+B05H3rn5ewsEF7zWAVeWAfW6aOywhz6nxZaoI80nseH
         FMu9pLXpQQQN8/hOgBzswnc3w75xVNv55oIuWkuao24DSLNvP/pq5dqOYfC7NOcLyvB0
         P6SjJdbMaP0SwrSnt2A9V8ArBvIly3iLsSNknHlyLNoe0F7LIm9qwpAk3k5WMk4fouNn
         BqIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Udpb3hs7Tz0VeMWmCtCHW35TQp+v38nyz5/5mf1XWP4=;
        b=6abb8pZ0GscFW8bgnFg8IHc6l2IWfkt9z62mCXwIPYjQ4QU8rqIEl5ymrkqnuovnr6
         Yr5ywE+8y+f4OeRrhCAu8zzZbRUeM7WBeORoWDKRyD4iolsBs87hM8nHMQvyqhfTwpI0
         lKGrJjSG5w+gIRlW64VSBM3nLY8sO0KcDbGuGqilqvsE1wg1VrOD3BGinq2tJ3h6l/Pi
         6JXHAT9AQ1sMe2Vd4cukp5bnMgplKA+f7rycULIvEakeVEviccchc3s+k1XDZ4UbR+pk
         wktRp2qqNKdskPfPQg6/R57f95A9dAq2v20XXXQiGff0o4CiPIkpbNqDNzJvNfnvaOfi
         l9sw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533PGJc5Z4GZ2k4QvC1bqQFPovls1uDW4vSJMI5NIaV+tgAIsB+n
	oSqTLnq7YqKJs9gpYiUAbIA=
X-Google-Smtp-Source: ABdhPJyl0HBY3JytIrShlVPWiFaj5fGyg6UuJHmzijVGlNCtHUefYBbuhV7uOVffVCotZKFPLxku4Q==
X-Received: by 2002:a05:6214:c81:b0:444:1c7e:7b6f with SMTP id r1-20020a0562140c8100b004441c7e7b6fmr20711382qvr.48.1651735501002;
        Thu, 05 May 2022 00:25:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:622a:1490:b0:2f1:d65b:1b21 with SMTP id
 t16-20020a05622a149000b002f1d65b1b21ls2787896qtx.5.gmail; Thu, 05 May 2022
 00:25:00 -0700 (PDT)
X-Received: by 2002:a05:622a:508:b0:2f3:8751:b193 with SMTP id l8-20020a05622a050800b002f38751b193mr22064003qtx.520.1651735500632;
        Thu, 05 May 2022 00:25:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1651735500; cv=none;
        d=google.com; s=arc-20160816;
        b=vrn9y4HhNKO6C31DuOj1YZMqbtXAfOQO9o75mY0QNtts8MQNmmx+zLTIq7kpwYESjp
         pzKST/uFhmu8iS1hKkxoy1g5iE1ILc8GqczDcmOlaT/7O0NF4cVI0N1yzvDtkeL6XDb/
         oNsL6thGXLJapxRyZ0gbIoJibNq29gjyGMWziINbtpHMFZwqnEqJU4LxrvmniYY4Bug4
         3qHv79I/1vfx06XYNkHjv+GISoAY17PHgG7Ve1rpsk63XaJ4dU/jIkPJ6HO0gC57jrnk
         Hbz1lzcA4hns+OPbDtWfTP43j9li0g52MvKs7q+05rvhWKoEQDA2Ql00T7uCDgFZYv5K
         Dmhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=XjVFBOl1B/4tI+LO5abcsoDvV/xc8vPdA32BcnzLDtI=;
        b=lRCXVUIWDIaQXi/d7GgyMHGd4WLxhv/N9ofq7FRqV5DPE9o7BiFZUV1KI7W3Wd5USt
         Gy0sK8ORGZmfKFbQpWTPypvNVT9ksJJ7smbQwG7hl7P65oXuO6eAtneXN7FBDCp2tIsJ
         veUwyAB2fMsnxglsR++mez3/Om0cmAiRkM0nbwxq0z0FjD1vmTXmuWowVokrNQaKwEZ/
         TokqyjNnbyNjGek+nECERXhBSZsW8KOXOC7tmxGw5WEEibMTMBOw3YgWKN7toQuioOEn
         SNJJ601OheNOjaKR4r+ZzfHn8EXro2xGaBV2xpuurQ6eFZPYj/W4AQ4DPlHYZWZzPxPQ
         2xOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=FuOivWkX;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-12.nifty.com (conuserg-12.nifty.com. [210.131.2.79])
        by gmr-mx.google.com with ESMTPS id l18-20020a05620a28d200b0069f8dcf5fa2si49848qkp.6.2022.05.05.00.25.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 May 2022 00:25:00 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.79 as permitted sender) client-ip=210.131.2.79;
Received: from grover.sesame (133-32-177-133.west.xps.vectant.ne.jp [133.32.177.133]) (authenticated)
	by conuserg-12.nifty.com with ESMTP id 2457Nens019426;
	Thu, 5 May 2022 16:23:52 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-12.nifty.com 2457Nens019426
X-Nifty-SrcIP: [133.32.177.133]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
        Nicolas Schier a <nicolas@fjasle.eu>, Ard Biesheuvel <ardb@kernel.org>,
        Luis Chamberlain <mcgrof@kernel.org>,
        Peter Zijlstra <peterz@infradead.org>, linuxppc-dev@lists.ozlabs.org,
        linux-um@lists.infradead.org, linux-s390@vger.kernel.org,
        Nick Desaulniers <ndesaulniers@google.com>,
        Sami Tolvanen <samitolvanen@google.com>,
        Kees Cook <keescook@chromium.org>,
        Masahiro Yamada <masahiroy@kernel.org>
Subject: [PATCH v3 10/15] genksyms: adjust the output format to modpost
Date: Thu,  5 May 2022 16:22:39 +0900
Message-Id: <20220505072244.1155033-11-masahiroy@kernel.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220505072244.1155033-1-masahiroy@kernel.org>
References: <20220505072244.1155033-1-masahiroy@kernel.org>
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=FuOivWkX;       spf=softfail
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

Make genksyms output symbol versions in the format modpost expects,
so the 'sed' is unneeded.

This commit makes *.symversions completely unneeded.

I will keep *.symversions in .gitignore and 'make clean' for a while.
Otherwise, some people might be upset with 'git status'.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20220505072244.1155033-11-masahiroy%40kernel.org.
