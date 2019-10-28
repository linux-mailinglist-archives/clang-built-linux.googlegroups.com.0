Return-Path: <clang-built-linux+bncBDY3NC743AGBBT7B3TWQKGQELJWPG5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id DFF7EE783C
	for <lists+clang-built-linux@lfdr.de>; Mon, 28 Oct 2019 19:17:52 +0100 (CET)
Received: by mail-il1-x13d.google.com with SMTP id n81sf10370410ili.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Oct 2019 11:17:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572286671; cv=pass;
        d=google.com; s=arc-20160816;
        b=WcXCPD4IR2A3DLh+ro27VRmxLwyICLCARvlZ6V0YUeDLOP8WFHmxnKZ/SHBzGocCIm
         KpIcyglaTHMF5ZAGD/2dgYKH07hiBxJtvWKAqaYvuMqYEbJyjBmOas+KMx+1MTvv/xdz
         Rv/dlf508/jViFe1GCtPZAwg4SROT4EcUtVcyuvlUY/b8A+yGJectA9uTmzod7T7NIFl
         t1lRslUU7DqXbpdPkac7JL3I92BA5lt+Y0p01jvv/AypJf++TsNIymc8W/Smd5QpNYHR
         JRlHrqWGc+VLE+FjMB+yX610nGZarV+/TZAE6fzCBHJMiD8OH0MQ1NKLqEDeSROKdje4
         ZYGQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=/iK7mr+LqU/s9sUfVyhmYN87FiDjlNoBkzan176pgkQ=;
        b=mp7Rvt5t5nirlwJw+rhUJRFL83waIqa4rNJW0OQvMk6E9QdxmuiVJrabiXarvYQ6Ql
         w8QYXuOq4Ko0hrAWZVB7utyu3Nr6W4C3M2OL9KnDQ0Czz3Kq0AkDVTD2s3SG9aYtSx7R
         pL1jPsN6bcEah4hMqcusPVIPylMVNgVapSsZw9OtTj9qN9sOgLPKSs+55R5XeoGQSnNJ
         6lftJcW1A4ZAvjCSbdRC4R/ukqrFROlpZrEnEMU8CUFR+zVSEZKaHuO2M479xAqv76c2
         q4TL+KXyCdnjoZuTgjU8RgndDB4k9silRgNtjq7ZnKe5/0MJAKyAJckQAgT4nvw7ec16
         +N8g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.70 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/iK7mr+LqU/s9sUfVyhmYN87FiDjlNoBkzan176pgkQ=;
        b=snJ5Pst2wOQnhgGKp01iL9XuPpFY9HW5vitwmRpeOEtKm1gPbXWrc3rsOI1QyK/vpz
         3xl5CzZ/hYwtxrTa57cPx5cVX+tbpr+4OyWuYLVxu8twaBpXlKcW2JUQjv+/El5PnFnb
         Fcw6toZOnvGILa0ZICaDBX9h3basiPV2u6q7HbUa2qs48MUq/H3lfPsinJ1vbeEMrTZr
         7eCqJDgcwAtpPPVT0qIaY8rCukYKdh0AAqS8IzIkqVYfsIFjSLiT86f9nma1C1ZBjnio
         s0lhtDJFk45V34KIcZ6r+14B/LB4dCihmEJRvx+D9otoEeHxgRquNF1z0fOLm4umM+NW
         Z5AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/iK7mr+LqU/s9sUfVyhmYN87FiDjlNoBkzan176pgkQ=;
        b=GOkzZgop/6+KDy4IV+Tk/9iUDcAc+4MNHrVmpZ+9xaUwVD+9I2ruZP6SyxkpWZHqfe
         yRz7QlyccvRDlMIKaDUIgJKjXY9sa1hffzB0Yl3rHFbblbJzg53Km5edtnpW8/WmZhnm
         oeM3d0MaaehDcTkMd/371TnEqGv8WG7NoQZQit+JLNstsI1/9EujW79oJMrzyRlSLota
         k+FMtixgRKraDsK7E+TuJKWRXZkMLusDQz+eQgmFeQj3IMtb675lelh55ddgMSE9o8mg
         fkprYp71Xl96eQNLBkvnzCJ9IrYOtPthYn26NKaFWrDk8+eOGz16slaDL7lfi15CSMOO
         h44Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVbcMEhXfwM3flwnhou4z1BKcS7amyibCZlFweMRVC5AJxvjl3z
	FO57vuh9yP27JBBY1WCUz5k=
X-Google-Smtp-Source: APXvYqx1JCPlV4on6AvUEoMjvgdWunepm//afKzOtzHMA+Czv+gBa785vLeVhdRt7ZPUf1nb9zNleQ==
X-Received: by 2002:a5d:87d7:: with SMTP id q23mr6000616ios.304.1572286671759;
        Mon, 28 Oct 2019 11:17:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:a598:: with SMTP id b24ls152713jam.4.gmail; Mon, 28 Oct
 2019 11:17:51 -0700 (PDT)
X-Received: by 2002:a02:cac5:: with SMTP id f5mr18279047jap.113.1572286671254;
        Mon, 28 Oct 2019 11:17:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572286671; cv=none;
        d=google.com; s=arc-20160816;
        b=gvB7VIbT1nZfW3ySHR3+lMW9O/WWr4M+DWSqVieEyhw8H/m+a7IyzscRm2Wb9kKm3I
         AZbQeBEiKNaHeYaamBukrBhdsG4ukn3glf/b6O3DzT38fnKzpoyKBu404CgzD8GharzF
         dx0cAQxvfgBlpFGMo382/hK0X0ztrO/zIgUwhp2rU0u1T29SZCUISNKQzdFUzB/gphdr
         r4lySx4mmWDYPEy3LbtF8Bw9o+7MiYxiBQNJnKcO3ZSQNgNs2dBIBz8X1cCPhXT3iEwg
         evvdQeeHniuo2v9PWLBFbGQhvqHRngTtd+IVec3noctfpV2GbXb0l4ZdIBs8PBJkbs4N
         rBrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=cXtD8wVDKCY2HkIt3kWPJtyhwCmvcQCTUmdt+hMHbEo=;
        b=lLs2pXkkmCK5ZcSEx46z7/vNM4QZQHyaQwlTiy6WcAfEZZarAIZmHRnlCAqQ9ejaHx
         ZVsvqEGLuydh8CBMGXJQ1hTgOwCM9HumkRn8FLsiFsR//NUr1AqBwTi58MFv5l7Q57pR
         P2p29DejyCH21zC6ICil6YnvBuOfwB30UReM481ej4HiDs6MXzUDC3f00fs05qsN3fch
         RWVI/lgicfCWhM1/Pcf+xp0moCU7/NODn8y5wWuCwlNXSwLxHuPcvrA2GSCQNlAZ5g6y
         ezYZ00Qv3PV/PwSflzee9IaUJDyDRWEorOaR+iH0y4EjO/ElpcA1gDRkY6geF/xls6av
         0wmw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.70 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0070.hostedemail.com. [216.40.44.70])
        by gmr-mx.google.com with ESMTPS id y205si713851iof.2.2019.10.28.11.17.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 28 Oct 2019 11:17:51 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.70 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.70;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay05.hostedemail.com (Postfix) with ESMTP id 5FFBA1801C405;
	Mon, 28 Oct 2019 18:17:50 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::,RULES_HIT:41:355:379:800:960:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1535:1544:1593:1594:1711:1730:1747:1777:1792:2194:2199:2393:2559:2562:2692:2828:3138:3139:3140:3141:3142:3354:3865:3866:3867:3868:3871:3872:5007:6119:7903:10004:11026:11473:11658:11914:12043:12296:12297:12438:12555:12760:12895:13095:13161:13229:13255:13439:14096:14097:14181:14394:14659:14721:21080:21433:21451:21627:21795:21972:30003:30029:30051:30054:30070,0,RBL:47.151.135.224:@perches.com:.lbl8.mailshell.net-62.8.0.100 64.201.201.201,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:neutral,Custom_rules:0:0:0,LFtime:25,LUA_SUMMARY:none
X-HE-Tag: queen23_6160776bf5133
X-Filterd-Recvd-Size: 5179
Received: from XPS-9350.home (unknown [47.151.135.224])
	(Authenticated sender: joe@perches.com)
	by omf04.hostedemail.com (Postfix) with ESMTPA;
	Mon, 28 Oct 2019 18:17:49 +0000 (UTC)
Message-ID: <07d3b90307f85267c7467fd329043a8790a2c332.camel@perches.com>
Subject: [PATCH V2] compiler*.h: Add '__' prefix and suffix to all
 __attribute__ #defines
From: Joe Perches <joe@perches.com>
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Luc Van Oostenryck
	 <luc.vanoostenryck@gmail.com>, linux-sparse@vger.kernel.org
Cc: Andrew Morton <akpm@linux-foundation.org>, linux-kernel
	 <linux-kernel@vger.kernel.org>, clang-built-linux
	 <clang-built-linux@googlegroups.com>
Date: Mon, 28 Oct 2019 11:17:43 -0700
In-Reply-To: <19fd23e98bab65a1ee624445193bd2ed86108881.camel@perches.com>
References: <7a15bc8ad7437dc3a044a4f9cd283500bd0b5f36.camel@perches.com>
	 <CANiq72=B6XKwfkC9L4=+OxWtjxCp-94TWRG1a=pC=y636gzckA@mail.gmail.com>
	 <19fd23e98bab65a1ee624445193bd2ed86108881.camel@perches.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.34.1-2
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.70 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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

To avoid macro name collisions and improve portability use a
double underscore prefix and suffix on all __attribute__ #defines.

There are __CHECKER__ exceptions to these uses of attribute types
because sparse as of version 0.6.1 and earlier do not recognize
a few __<type>__ attributes.

Signed-off-by: Joe Perches <joe@perches.com>
---

v2: Do not modify the __CHECKER__ attribute #defines
    Add a comment describing why to the __CHECKER__ block.

 include/linux/compiler-clang.h |  2 +-
 include/linux/compiler-gcc.h   | 10 +++++-----
 include/linux/compiler_types.h | 11 ++++++++---
 3 files changed, 14 insertions(+), 9 deletions(-)

diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
index 333a66..26d655f 100644
--- a/include/linux/compiler-clang.h
+++ b/include/linux/compiler-clang.h
@@ -19,7 +19,7 @@
 /* emulate gcc's __SANITIZE_ADDRESS__ flag */
 #define __SANITIZE_ADDRESS__
 #define __no_sanitize_address \
-		__attribute__((no_sanitize("address", "hwaddress")))
+		__attribute__((__no_sanitize__("address", "hwaddress")))
 #else
 #define __no_sanitize_address
 #endif
diff --git a/include/linux/compiler-gcc.h b/include/linux/compiler-gcc.h
index d7ee4c..7a2dee 100644
--- a/include/linux/compiler-gcc.h
+++ b/include/linux/compiler-gcc.h
@@ -76,7 +76,7 @@
 #define __compiletime_error(message) __attribute__((__error__(message)))
 
 #if defined(LATENT_ENTROPY_PLUGIN) && !defined(__CHECKER__)
-#define __latent_entropy __attribute__((latent_entropy))
+#define __latent_entropy __attribute__((__latent_entropy__))
 #endif
 
 /*
@@ -101,8 +101,8 @@
 	} while (0)
 
 #if defined(RANDSTRUCT_PLUGIN) && !defined(__CHECKER__)
-#define __randomize_layout __attribute__((randomize_layout))
-#define __no_randomize_layout __attribute__((no_randomize_layout))
+#define __randomize_layout __attribute__((__randomize_layout__))
+#define __no_randomize_layout __attribute__((__no_randomize_layout__))
 /* This anon struct can add padding, so only enable it under randstruct. */
 #define randomized_struct_fields_start	struct {
 #define randomized_struct_fields_end	} __randomize_layout;
@@ -140,7 +140,7 @@
 #endif
 
 #if __has_attribute(__no_sanitize_address__)
-#define __no_sanitize_address __attribute__((no_sanitize_address))
+#define __no_sanitize_address __attribute__((__no_sanitize_address__))
 #else
 #define __no_sanitize_address
 #endif
@@ -171,4 +171,4 @@
 #define __diag_GCC_8(s)
 #endif
 
-#define __no_fgcse __attribute__((optimize("-fno-gcse")))
+#define __no_fgcse __attribute__((__optimize__("-fno-gcse")))
diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
index 72393a..506b3a 100644
--- a/include/linux/compiler_types.h
+++ b/include/linux/compiler_types.h
@@ -5,6 +5,11 @@
 #ifndef __ASSEMBLY__
 
 #ifdef __CHECKER__
+/*
+ * sparse as of v0.6.1 does not understand several double underscore
+ * prefix and suffix forms of attribute types, so do not use them when
+ * sparse checking is enabled
+ */
 # define __user		__attribute__((noderef, address_space(1)))
 # define __kernel	__attribute__((address_space(0)))
 # define __safe		__attribute__((safe))
@@ -25,7 +30,7 @@ extern void __chk_io_ptr(const volatile void __iomem *);
 # define ACCESS_PRIVATE(p, member) (*((typeof((p)->member) __force *) &(p)->member))
 #else /* __CHECKER__ */
 # ifdef STRUCTLEAK_PLUGIN
-#  define __user __attribute__((user))
+#  define __user __attribute__((__user__))
 # else
 #  define __user
 # endif
@@ -111,9 +116,9 @@ struct ftrace_likely_data {
 #endif
 
 #if defined(CC_USING_HOTPATCH)
-#define notrace			__attribute__((hotpatch(0, 0)))
+#define notrace			__attribute__((__hotpatch__(0, 0)))
 #elif defined(CC_USING_PATCHABLE_FUNCTION_ENTRY)
-#define notrace			__attribute__((patchable_function_entry(0, 0)))
+#define notrace			__attribute__((__patchable_function_entry__(0, 0)))
 #else
 #define notrace			__attribute__((__no_instrument_function__))
 #endif


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/07d3b90307f85267c7467fd329043a8790a2c332.camel%40perches.com.
