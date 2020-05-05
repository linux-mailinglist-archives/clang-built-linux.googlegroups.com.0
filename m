Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBHXIYX2QKGQEGM4Z46I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23d.google.com (mail-lj1-x23d.google.com [IPv6:2a00:1450:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D9BE1C5841
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 May 2020 16:11:43 +0200 (CEST)
Received: by mail-lj1-x23d.google.com with SMTP id m15sf462018ljp.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 07:11:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588687903; cv=pass;
        d=google.com; s=arc-20160816;
        b=thSLw4yDqeccPWGgZGPGYyXfHP7qIPG5OfgkQlpGWD7KM+IIDXUGT/D6doxLrxSuEr
         Wl1Gta7/h1N+1lhY/7l2OXM71eCs06bfo7yP3L4zeIcYbVOCFug0yTSN2LBgwY2mXhWc
         65QR9XtYJP1AopLI/10qvQGO/LHthkeA/SL3avGi7g4M855PPPndW1JWNnJ//fYti0KX
         9jMPyRwrdoLr9gG3GpHY/PE+sm+WgG3nzYeIE45RA98a363ey1g/BDZ/dKXI6VlIOYEf
         hnpzSIO8/Xfa3BmcaX2ewlfdXVWW33GixtEnkD+TumQGefXPjKLZvUIv1j7CviYSxxZB
         dmEw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=a6QBpQb3HN1Cemqfn1w2NRO763rMdgEQ7Da2PGKysMA=;
        b=DDrVzKMwoyx/w5VqG97X71Pr3YoR4s/m4VN2y+KP6N12i0LarmU56c9KHER02ZDsVK
         kQNgdItZwOyouL+0va7w/5gZR7/Ixy/rHjN3VSGgVnvRQFNdWsbF9XHBSsZJVtG9qjjL
         3xuT0riSHdAZ0BA42EIkj8Vsld3vx2OoRe6kZ1vY0ilbyd8CI9kyVxAdQ88941RzT/2/
         mrXQJkzI796ZZ7Of0c42KUCsXHuqBhji3jz8pGEjOwdaU+eg2TSzVXMxfZuYYuZg3p7N
         r5NGhZWrveVkScDo71zXwgSRsNB/+Kjk8j750/UAEHwjIFCwyZL+vjcAqfJ960yThwHm
         6RBA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.75 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=a6QBpQb3HN1Cemqfn1w2NRO763rMdgEQ7Da2PGKysMA=;
        b=MrIwELWlBuubVD4Kw3YtU81eTC1TRrvRX44Et+iSOIlgDS4vV8GHeixjbsxpJxWY/b
         GWoOSfHmuG0X48Q4Ng4MpVJLdmaWJiP8ckShM5qgkd0nbbgvfhU10VjKSUtFvreAd+bw
         F6YMjebXa6cBFvlZwzvGKiRUpJjO6dlmkjzgCxwcQTwpVjJ6ze++uTYPizymDK5A+DSV
         LAS7PleMUo0K75uwmrHGBdT50ADPmT0OVUzW4z4wW2vFZtzMqvCNNfaY2f6LwnTqTDyq
         cuRmf4p3NyesoaXXDSlp3IOwa/dCPLKX8N33AP60Qj83Vlof4/zilBpNvZ4ETjjSXc4p
         yNbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=a6QBpQb3HN1Cemqfn1w2NRO763rMdgEQ7Da2PGKysMA=;
        b=iwP51SP5VokfL6C8mgiI6Jd0keaB+HGkTKIW+ETVz375RO2R81ga9UOkW4KX4Bluzc
         U5C9ZF5mkst6VO+rQigcAlVI3ayFpRWxwNvN6GsN8JwZEqPcAP3SHw6eG7YAjxWFwXf1
         2l24oTlbWjF+lfSD1t8CGXt8Ny/CQWJil8S0mMhMFWHqzgXNBngdD6hCnkzkgLu9ro5r
         lN+vshyJTQ7dyS5teM4JZ9la3wM8cig3pp80AFRT9Bbee5Y4SIq8i4b5YVVgtMPlJ6JB
         4wkf1PM4iad0pan3q6zMtPQKyhNNoBDOcXn+KYyOADZvamiM6gY0gWRzCllwtzz5uMSx
         QUlQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZEHKLT4Rh628WxyE581iVRIaL5b9DzbwauWZvpZYVGmLuzN7D9
	H8l90B/DC445N41qLORrVaY=
X-Google-Smtp-Source: APiQypK06wdvguRws9HzIPk8baeJWdlgoeW+1reD6gakbADp0BzFcw7UDESmFFYgvcKBaNAkRddA8A==
X-Received: by 2002:a19:644f:: with SMTP id b15mr1874521lfj.28.1588687902819;
        Tue, 05 May 2020 07:11:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:5c09:: with SMTP id r9ls431282lfp.5.gmail; Tue, 05 May
 2020 07:11:42 -0700 (PDT)
X-Received: by 2002:ac2:5ccf:: with SMTP id f15mr1797996lfq.216.1588687902166;
        Tue, 05 May 2020 07:11:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588687902; cv=none;
        d=google.com; s=arc-20160816;
        b=fImWDDptv0DCUs+yPo3Ceo6WZZxyOth/QPEVXzlsk7OvlSyQftN0catF5B57Zj6c3B
         ayl3+/E4mP8SyHakMgTPAK+vD4PJpCtMU19wwO1+IGJPutb9CBsUSdVm44e4ZcyDXVrE
         YDeltYK/5tzEc8lRiPKG1Rwb75UVTKrTuHrl/LQt+ZA5CN9YV/licOew8yFNgeaJlzeM
         wTAPn1RaVv/KF7tHse7NIcJKG3/1Q1RDtzrIl+3qCJuQS6S4+LQrJ4G2G9hivsPCelYf
         u4n81J/WG8SBbwFyboMQNWcHMPcng04j9YDwrit0a4uricsM2Swr9p/1a2K9Ov6YDJCt
         C6/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=zU05TU+QUIRaqX+VnyxrDevjUbJnipcQuTghFVPkR0o=;
        b=dTjBbKKATqKzlfq6ZLks4l6ICkn5gIAjxI7NKMUrzkTa6MgENx00XcZXkiTN9k+sxk
         +D11DqUI+6OGFOguceE+dEGccXyizM4X+0xOwbcApmYPZqVhhKY3ohy+N+kR4288HqaZ
         ijYvPuIfyUM9Cvu8eV0CehaG/sXHw4BOTIFRMrOlnM83XqrIl7j9PdAfAkSZCU2uHPaJ
         Nwx8BbnEpr7cMP1zXRD8XNIaQWbtw/J0YJ+zgWZKKig3nekQMC48Mfpm+5w0LjBmqM3f
         uESJ9Vdia9FRL4ox+dW6ZDcMz1bjP/8j5Lp0tJ++R8PUMq0z8ovhpa99VrEBPjVAreMn
         Vrcw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.75 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [217.72.192.75])
        by gmr-mx.google.com with ESMTPS id q24si179047ljg.4.2020.05.05.07.11.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 May 2020 07:11:42 -0700 (PDT)
Received-SPF: neutral (google.com: 217.72.192.75 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=217.72.192.75;
Received: from localhost.localdomain ([149.172.19.189]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.145]) with ESMTPA (Nemesis) id
 1M4JiJ-1jVhJS0JBB-000KCA; Tue, 05 May 2020 16:11:39 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: "Paul E. McKenney" <paulmck@kernel.org>,
	Marco Elver <elver@google.com>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Andrew Morton <akpm@linux-foundation.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	"Steven Rostedt (VMware)" <rostedt@goodmis.org>,
	Kees Cook <keescook@chromium.org>,
	Mike Rapoport <rppt@linux.ibm.com>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Dominik Brodowski <linux@dominikbrodowski.net>,
	Alexander Potapenko <glider@google.com>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] kcsan: fix section mismatch for __write_once_size/blacklisted_initcalls
Date: Tue,  5 May 2020 16:11:32 +0200
Message-Id: <20200505141137.665940-1-arnd@arndb.de>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:sZ6XTFz2CMPzSBdwXqFLEezhdI6Ey4V6Ow6vBHN3y1kBw7EMdFh
 y5nNhRnXQJ73Pg+qHy/UJHeUVlDg7lkVCQGKEhyeWAy92WId526I8uu/QZro6fYW7ebtZrT
 ul2g/2vxNn9QJr511dIObPohwg3JNFDkoGe6kAj4hn38WAtksBxdNfM0griAJGQc9o9XpQ5
 INo2uJqhRbaGcCB88gHog==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:RI3Kzrd0e/g=:AIXv0ToRN1k/nvlxAzGBxM
 Tz4lY6vQzIM6rMn48R4pTFOHWdRdvmOBNSQ97XjRhhqf5Yzth2BHoNoKlWdwlPpdHl37rdlFv
 atbnENqa8azxgZkyb2Rly8OxUy4qkvXPc/BeY/pKgqBNFsevVEuVuIivbSPjda3dKrt0Fz1Rp
 zTXt3/HgJVfqyEUERTWfB1pjnIgf6QirPK/namxOZrq+BtKVidVoZ9bldImXck4zuYxp1cgjD
 l/TVoYypaoNIg0mienxNLvJrPfSmm4OMNwhv4GQjYAMIn7mcSHdniKI67YWyqiu5d2KSls9yd
 2XTD4h8sNA017a9Gc6Zx4TV4wgV0EtHXy4xW+f2vZP5mZwZF5+RNAs8WaCnq5z6XiUvaj2+uB
 4XeVo6W3U0UhV+G7iCZ9ctHTZsvKtBm3PHAXqaxPlcCjHx7h9cNI+uTUf2e2k2V9RkeFjMhqw
 ARbWiYYTggSpPtqH8vFbGspdaiBxBWg6iB1SWxZk4K3FDZAVoSX1niVf27VNG0QW907f4giXm
 ETrIGe6sTzhLEx2S9NXsXyPtl2DKPDVM9vBZm4M4WkEo+sPJs07B/KjwugIhlltz3ktOX8qf5
 uFn0h3rYnIecJ/JZq8ZGYLJjZZj9FLiHTM4+8MeT6GFMjLcRQEznClPB0Nbstuxht4qB3L4P0
 xUxT+1WwmnbipawbgfCkvrjBYV/LjNFQlJftcGoPz0JY9TPY45ti69jFaGPV4leHBZyd9eZqe
 28nnXdb2CczmbFMjxXuQKZRWLUeMv5rPijpw+adv8Hmd631RBaTnlUUK/eC2DtkfSx59zR1bB
 ZnFvyifIFRS5cLQL9gJ4Lt8927Zs0oR6upAv3Tb9RxtrE0C4FE=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 217.72.192.75 is neither permitted nor denied by best guess
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

Moving __write_once_size out of line causes a section mismatch warning
with clang in one instance:

WARNING: modpost: vmlinux.o(.text+0x8dc): Section mismatch in reference from the function __write_once_size() to the variable .init.data:blacklisted_initcalls
The function __write_once_size() references
the variable __initdata blacklisted_initcalls.
This is often because __write_once_size lacks a __initdata
annotation or the annotation of blacklisted_initcalls is wrong.

Remove the __init_or_module annotation from the variable as a workaround.

Fixes: dfd402a4c4ba ("kcsan: Add Kernel Concurrency Sanitizer infrastructure")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
So far, my randconfig checks found two such instances, one for read_once
and one for write_once. There are probably a couple more in random
configurations, but I guess they are rare enough that we can just work
around them like this.
---
 init/main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/init/main.c b/init/main.c
index 8f78399697e3..441c384a73cd 100644
--- a/init/main.c
+++ b/init/main.c
@@ -1020,7 +1020,7 @@ struct blacklist_entry {
 	char *buf;
 };
 
-static __initdata_or_module LIST_HEAD(blacklisted_initcalls);
+static LIST_HEAD(blacklisted_initcalls);
 
 static int __init initcall_blacklist(char *str)
 {
-- 
2.26.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200505141137.665940-1-arnd%40arndb.de.
