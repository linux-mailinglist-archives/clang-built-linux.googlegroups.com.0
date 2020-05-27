Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBYPBXH3AKGQEBDNWJSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id DF7301E448D
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 15:53:37 +0200 (CEST)
Received: by mail-wr1-x438.google.com with SMTP id z5sf11215394wrt.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 06:53:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590587617; cv=pass;
        d=google.com; s=arc-20160816;
        b=Wo6/FzBlKiZTB8iK3bDfeOJ0sOLXNbVQGv9v2MAe7HChUy90O5lHAICnW+owNo+2d2
         /f78QagVMyAtYsjbpRTQDsCUZdWS2mtg5NPCNv13J4xbzTwaSi0a7dUGc0iT9JhKzDho
         P1354i6dDHr+sfjy6Z0Wg9OmXTpjvDQnSQELjfk6PTOvGbNC9lpKFYOyUMyqqxo8NJRb
         GTQXd2cr7S+Drk8kgTcrGfYCt7HCa4B7yH+xNONLjGg7XEwABy29EjEDD7OWIDSlXUCE
         Iapmy2/CUaU0CKMr++SDy5Efq/yp3MBWfbY1iH6lUAkI16cTZMSzFVchqqe6OVFXemou
         ZXhA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=mwP+aMCruhPG7JT+iGFKwNX2Q2+ke8pWsU8qOHXn3Ug=;
        b=YLnqrZqsn1bn9K3vRpqQZIhW7prUslY7h8/TZgdSOsKFWJY4HVlSNl9aeibVOd2+Sm
         iZArvYSEGgjL1FBIEnPccBqv8ADcdXMLLiV9B5N/7wzYdC6/Tib96Xjg+qLF7bQ+GAkR
         JrJa8lc1541i+SQy0M56ksSG+TcZ0d9EbXZZ2IXrDYkY0Fl1I6s6Md7mePFOgNfObmw2
         0RPgrO4ktHMJ1/JeGdK/fSCOEQf+lUUhyQcSur6alpC+G0hluqWMozYAKrCTxq9Y8Y1c
         Fg1y5VFjw/dXsc1C5El+0/spmyZCSo0g642/OL/mAjk8k/M/kJDqUVjMSzmjoQAu6Rm3
         8t8w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.134 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mwP+aMCruhPG7JT+iGFKwNX2Q2+ke8pWsU8qOHXn3Ug=;
        b=qry/fK0U0so/ChtfNlceGHJVmAC/AaXfyPvuwQN+ppUwt9JKWQ/D0eK3bRLcOp4Y+z
         ffUqcQE/XxyKnlDRhx+Hbr9mHm2InsxKesu3wZ9TDX62wI8z4K0IgXgadbcHrVBsPXI3
         qlhMVasKTG8ChWTx1WJOorqVirb4lCN3r6nSXLHpSy4LEuZbNVBZnZv8WMsXW8VzdjnP
         /kTeukQc9i627zmJiKE9SmSGETCSGokKPi9oavxETHQB+ZrzCUWdQcit7hAqVmI4cnfQ
         QWNMFbXeB6cN14SWthzRGfizbpllui5LDLhiFSQyvO2xZ2UHnFiS5OH6TL1no4B95Dh4
         zl7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mwP+aMCruhPG7JT+iGFKwNX2Q2+ke8pWsU8qOHXn3Ug=;
        b=A+Nzx5G46rIZHpGq5++bsH4XlaMex46a7VRU3a9AttQu/NAApGtA4+miTY+C7bJVtz
         JJcYDGAEkWnP7kkhOmQ/9RUUCWxOWXXt5CI1fBYUls6WMXo8xYH7aN6Nzb7K7V7wzW2g
         5ovfQCEC3XXpXdUbYbpvAbzXb6Zbjld9dq0slHbNnHp2268io6UnNVsPAbfRvsObZ6mc
         C4xGrsdXfRy+MqUmLajy9iEfcXjKJ8/VFhjo8B3RKn74Ho5c99jkgFP8BEAynmcwV6Ez
         B0VAPPlewSD5tdK6KRutLxmV8Ku6PMCOHGOCyumHrxL/8h0wUwfuXbKy9cLxTrL2fhPE
         q9nQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533w8OjyUh+Gogf+mbI6+SZO36fq6BboLlBDnXZKAW8rCLyhXoiC
	ktqobO9uhAYQUrxSqxbTnco=
X-Google-Smtp-Source: ABdhPJyk/1AW6oed68oEnFT0KabAnXTfSGB5in0ia21vxA2XyJrvXHZRI8/TmEKnO09NHEXfYC4xeg==
X-Received: by 2002:adf:f64e:: with SMTP id x14mr25984601wrp.426.1590587617667;
        Wed, 27 May 2020 06:53:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:9a89:: with SMTP id c131ls1562194wme.2.canary-gmail;
 Wed, 27 May 2020 06:53:37 -0700 (PDT)
X-Received: by 2002:a1c:e389:: with SMTP id a131mr4580978wmh.46.1590587617198;
        Wed, 27 May 2020 06:53:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590587617; cv=none;
        d=google.com; s=arc-20160816;
        b=JVD70GCo4aW+vHaw8tzILafzKv3EucqhX9zx7sfdh/yhMuV/YWA+0bVdez9IYuWeHU
         6hPOKXh3udB3ghxcPGIF7PoLK8UMKIdbGNgu/UheOTvz2JrOq2Suxh8UfR5A2GStGvgM
         wF3tRI8is4uxJgHtrrYBFSGvkvGORkCOAGGwPB5Wlhkni9XynqyFEPhdSyZaGwBlisJp
         JCyg143zSNJkf+gSpMKg0uZeyvA6DU3KkXa/hOVQCsTh42e3aga46OlxWood+WJojAna
         U5bE6xkYV8t1Lj2682DMZz2ESFtRaKTE8UOUNLxLL3yLZISkT2Cc2GmooR1DAnyAC3sU
         yw0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=3OrbvJl1+u8ctjMZoCdQgF5ZV/h/AZJHsksjuO1IF7M=;
        b=JgsvTgg38PtoXRTuKNI9GOOsXUyGsgCGw74twu7gtIxJ4lDMi1wg6eHgzD31X+LcQS
         KpG2K+kAkUWnhHCTWKPsi0LX0/gt5QxJ3Y7avZWkB+ng5d09YQ3OomhQtAFG8hAi90a6
         d6Rnxd8K8GMfi7qWKpw6VV4ghttsV40NgRcLvte4z8+UioXz4DKlajbJtsWbOwRfgOR5
         umCC2tf9PdI2igvNurbiBIpl1ufbgsCj96uH32xLPcSYTAR5MpDQLfq2E6Jx4cFT14bB
         KkU0fi2LRzTsAriHOxRrrIEU4BaHtblFzD1yMrE7z3owv79ozwzd0WxEakxZyVd9P1sq
         CAIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.134 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.134])
        by gmr-mx.google.com with ESMTPS id 135si195709wma.2.2020.05.27.06.53.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 May 2020 06:53:37 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.134 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.134;
Received: from threadripper.lan ([149.172.98.151]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MJm8H-1jKMLM2LCT-00K8Nw; Wed, 27 May 2020 15:53:33 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	x86@kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	"H. Peter Anvin" <hpa@zytor.com>,
	"Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>,
	Zhenzhong Duan <zhenzhong.duan@oracle.com>,
	Kees Cook <keescook@chromium.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Juergen Gross <jgross@suse.com>,
	Andy Lutomirski <luto@kernel.org>,
	Andrew Cooper <andrew.cooper3@citrix.com>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] x86: work around clang IAS bug referencing __force_order
Date: Wed, 27 May 2020 15:53:19 +0200
Message-Id: <20200527135329.1172644-1-arnd@arndb.de>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Provags-ID: V03:K1:lPqKd3ceKcOiWSf6k7n0RT4DN5BdzpvV9e/sXSasbhanLS+Oa8b
 zCfaDCYQCGPRsqQGnAq8IlMVatLfXkTtRhm+oZ9caPDHrTJjA28xSHP6uw7B7cbHoP+DUp2
 OtVtwLD2cSC0Lh2zT2hmfjFQZ7KcflKRXk++pbClkDFjbyAGo09nwQMeJLEUflpWaeQhwzs
 kFb0rHfkf/bj8PjONn4ZQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:fwuCPC7PnkQ=:DL0TsWJH75aNmoZSVF1D5Q
 dq+b71QtO2Ax/M1aqBhd8xXm/oHYJdSt+YMBPcX83mfCr3VKdX5B7t9SdQzzpVF6bzcFm1vvv
 qUmO1MTs/90Szakgatu6YNZi8D6fOeo8QrbRNeVLjT2GJwa+rR7wi/8bkJaV7lF/uZ604GfIt
 o43mOSlA2z4VHItLnYb4nvlIAPc6DiwgMM91rue4RK6IUpnGDY7PToLoIF+X+Zc5eCxI0NT2I
 cmzeKREiMZEVWhXvxP5XamgDv6/3EaMiUBrEiy+hq+Q2a0PwTAeTq4KE+ld/181RunLOj8j4R
 /aOFL8r8p5TCEA6TwIaye45ypXXoEdR+YKXWTnj1D6c4+yW0zSbxbQiFfBoKtXeBm6Z8FTJEc
 d2lrSiJGzLuaD2rF/IZkkxj6bcsDTNz0IsAo3JctqfHRE/xhd+x6cCMAd+RxVBI2p+WdkDSSI
 A45dSQJ+inGZEZR++eOdnQyfAR1FRJQh1ex89aTswZXLnO21jOCrTncn9fRMRMewwGXsBU1Nv
 9urovaD3b5NuSMJ0jUBkmRF7oXzkdPDYjKdexKMFgaxVecf4HEg0jvbnZhF/3atzYv5XI+2jo
 OcLGlSReK1DTRpoVYn1X2kLCBptbJpXqZ4UMoTjw5y5rkZXaGo+qZCEHnUMouIXvjPReWtY/W
 oLNFN1ic2RsCD4tTxmlbG0e2z6Nv8bvtWlvJ5PEwxLHzmQr6cjNyxHx7eMZvAvBPHq/88y5eU
 pu/PPoXunnSctZWlfOvL6pDkVcJUPl6lTK24QuvoItc1tYZ9HOO92obr2kVBIIHTfefxQWp0M
 ri9ItI+AQjsep3e55X17LZfWUAp0pDioitA40fBjN3LHpZo0Uw=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.126.134 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

When using the clang integrated assembler, we get a reference
to __force_order that should normally get ignored in a few
rare cases:

ERROR: modpost: "__force_order" [drivers/cpufreq/powernow-k6.ko] undefined!

Add a 'static' definition so any file in which this happens can
have a local copy.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/x86/boot/compressed/pgtable_64.c | 2 ++
 arch/x86/include/asm/special_insns.h  | 7 +++++++
 2 files changed, 9 insertions(+)

diff --git a/arch/x86/boot/compressed/pgtable_64.c b/arch/x86/boot/compressed/pgtable_64.c
index c8862696a47b..8595194cea41 100644
--- a/arch/x86/boot/compressed/pgtable_64.c
+++ b/arch/x86/boot/compressed/pgtable_64.c
@@ -12,7 +12,9 @@
  * It is not referenced from the code, but GCC < 5 with -fPIE would fail
  * due to an undefined symbol. Define it to make these ancient GCCs work.
  */
+#ifndef CONFIG_CC_IS_CLANG
 unsigned long __force_order;
+#endif
 
 #define BIOS_START_MIN		0x20000U	/* 128K, less than this is insane */
 #define BIOS_START_MAX		0x9f000U	/* 640K, absolute maximum */
diff --git a/arch/x86/include/asm/special_insns.h b/arch/x86/include/asm/special_insns.h
index 82436cb04ccf..7081e587c1ea 100644
--- a/arch/x86/include/asm/special_insns.h
+++ b/arch/x86/include/asm/special_insns.h
@@ -16,8 +16,15 @@
  * A memory clobber would solve the problem, but would prevent reordering of
  * all loads stores around it, which can hurt performance. Solution is to
  * use a variable and mimic reads and writes to it to enforce serialization
+ *
+ * Clang sometimes fails to kill the reference to the dummy variable, so
+ * provide an actual copy.
  */
+#ifdef CONFIG_CC_IS_CLANG
+static unsigned long __force_order;
+#else
 extern unsigned long __force_order;
+#endif
 
 void native_write_cr0(unsigned long val);
 
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200527135329.1172644-1-arnd%40arndb.de.
