Return-Path: <clang-built-linux+bncBCLNDXNS7QNBBYOY5L6AKGQEAV4ZAVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id E150029EAF5
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Oct 2020 12:49:54 +0100 (CET)
Received: by mail-lf1-x13c.google.com with SMTP id t3sf345370lfk.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Oct 2020 04:49:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603972194; cv=pass;
        d=google.com; s=arc-20160816;
        b=e8U/bQWCXW7JNokRGZGczBeu4sAflFV5KRutvULqRsU2jzsaKdV+EprDcpl6AGv5f8
         kE+Kh9Jy72Ebx4Bz8k4fmhNJXYppD0gHIrAIzqLVXQWcKqeIoiQDetV3aqvlDmBJbxNP
         +pJ4RJ/wgGkzkAcsBIHGSiQLf3a4u9CMfo87xPaEuHrf4RI3LEem/J2231aStvku81sU
         YvvD7SyFxrWDH25scP1o4EPGBPlwIkH7jV7eWIsC06JusmGjPblQcEhiALfa674C/O+p
         U/laul6bgilQmNDxsy/fCl0NR5WRSGFlfP6g+QAJRks93EF4p8ZVzswBfJheoL9ExzLe
         kUhQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=x2sS7nyAthKWnQXcZYXTrT+MFiIbhO5A3+541miXMwI=;
        b=GZf8EB7fFfppH8lvB6A8N1ToUIwdKDg72CnvFbAvTtrTgQrYPVlUFgiVp06IsEciOt
         ZbW2kwpjdjgoqHe19lD5CM5m9U+ucIjDDeh8mHJZauXIt03PqIvoptznK+hwbBIogpoV
         SVodNJX+DbRti1xvsM8u+/dxBNaiDwIir13UkhnEEye+TqOIV7o4nwzdYz86hzl8KHb3
         OmRHKp8//KnS5DmVZu8kei8xOmwtiKX05V0Maik+Is5Ev3gBJH0vM4aFvMOK6fHhRCRN
         CIOw4DdqKr05rG+1vN8bqa8X03qOj5F6KBa/7ybP2l8uhAzkLpnxRDbxcz4uLWrwfqAC
         D3fQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@bfs.de header.s=dkim201901 header.b=hUHncc8J;
       spf=pass (google.com: domain of wharms@bfs.de designates 194.94.69.67 as permitted sender) smtp.mailfrom=wharms@bfs.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=x2sS7nyAthKWnQXcZYXTrT+MFiIbhO5A3+541miXMwI=;
        b=VFjbCqzzdvQ0+yGZW8i6ipZ2BVmsZEqDc2xgpgy3SjKhTqH0+AmPXQdo3GynEpMLSz
         JklRVk3IwnvMItNqvDGdNpBeR+1oxlEiNSQ+X77DGF6iq9qa1I8Q78XeSONOfjDRSM0v
         ncIAv4QbjR1vuYhq5Fk10dd1Ccel3o5Wh0I+bCw2TRoV8cL4D77k+uVX9IaoU9+H7JJ2
         JkjD9/+tBjC1Y09t5nxLrL1XjjsyJg2trJ6diP81jFq7jQVI/LTjM1XRHQuJS0kfAlCy
         JXi7NPYoKMwf7cQTQGx2HU6K2wyfBYKscL6Wdyre6nUpXaEpD88NMQdGS1FZ+Bnb3Tve
         PaTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=x2sS7nyAthKWnQXcZYXTrT+MFiIbhO5A3+541miXMwI=;
        b=qMubGbYbVfh2SdiwIQyoWAF+Sq25ARkB+R0OIqocJlPUe+7Lmo0xKfBAUUWBecd4GY
         teNFIwuxcbSUQEUdgmozViQuNeSL5oskESHd0UqsIH0s+8jkRMQxph/ReFlvj1kloTwS
         8mK2TMD42qQiXp2ietqlyg27P3NGv+H6YLvLE87YtFYy/0CQeJWGr0FoBt+QWWdC5Dr6
         40WJzlqhno3FCjPh6TB6Gq4RNZaoQZoXBNUd7+I/4H2KlWBcwpvCFKyGAq+6FkTi3HOy
         c/2uZZHHerh9fi9MqKZo4tTmBJqoXw7Vji1uNtQmTy5w32+rgxXvsib38J9p5hnwUjLN
         jrXg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530UjvF615k3PRw7l8TNTjEX3OwFTXNMKt5LwB68tlfobtA5eFnm
	ukniyJd4KovLGjrJV1o83A0=
X-Google-Smtp-Source: ABdhPJw6QHe9RuU/6gLurkG2J2XfEPWdW5Hq6XUz2wPSabKLYGpU+z7DI+lGnYT/xjjzS5bYKKav4A==
X-Received: by 2002:a2e:9dd3:: with SMTP id x19mr1811407ljj.406.1603972193825;
        Thu, 29 Oct 2020 04:49:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:b6d4:: with SMTP id m20ls479385ljo.1.gmail; Thu, 29 Oct
 2020 04:49:52 -0700 (PDT)
X-Received: by 2002:a2e:9015:: with SMTP id h21mr1712718ljg.450.1603972192431;
        Thu, 29 Oct 2020 04:49:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603972192; cv=none;
        d=google.com; s=arc-20160816;
        b=XlVjkrXGLFnxxi2AZPa30hLurGW0RE+69VlAL4paxK/GM8LLl9eZLY7rfAtnoVAq1Q
         Yb+ceXnVPkklRmkeYnC0lDbsZzZITnB4qzqjZ8hXJ7NHhhPUGEAEH3oP9S8ekC8QJvLy
         O60meN+Kh9t/U7DsHxUZhS5P/XYlgv15A0k5LnDeh1eFi03Tzyx64bfJ/ACts6fjXmFR
         I5hSgikRftOAiq4fj5BMNUJh2V0sm5b9IdCw4edkPbkBeFqhlPiHqirQkEkBpk9Pu50E
         3NX4ilrOXF8s40IFTV/nLrx+iYek8YMdgqwTnD8BEV7zgGUvPBLFeOFCW2OTB5Ej7S+x
         Jszg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=WJT3j/NIWLP4R0ukUYUh1MfJEJRI4an9G0Vrqmy4RVg=;
        b=m1PQ6mr1ecpII2i6v99RjcnjGuPoAX9Njdq7oa+HHRZTVpHq2gKsJQixY1dDPBM3Ym
         Ug8zOxE5Nm2mhHiYvUa7/7s8+dN72RuZGR7zFnYsm65uorfpz9obh5u5JPL2dQmqZCOJ
         K28+POczttdxwr1Km+YEfcK5xkZ6nc0gOLM2gUuQy4wUviU4VEN0m78q1YYw0Akjy5mG
         GYemmUtYBXHmSSSt0RbA24/o494tpmtZHgKRwDpEjP/Vkp5wUWyRxSduUB8RVQ7G8UWN
         M1gg0K+GztWMp3sL9xTzkv5jJMa+9ZBpDKvTq2hY4HsF4UOYTDWU99s5DKOYOz7pfxqf
         kL8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@bfs.de header.s=dkim201901 header.b=hUHncc8J;
       spf=pass (google.com: domain of wharms@bfs.de designates 194.94.69.67 as permitted sender) smtp.mailfrom=wharms@bfs.de
Received: from mx01-sz.bfs.de (mx01-sz.bfs.de. [194.94.69.67])
        by gmr-mx.google.com with ESMTPS id y17si67568lfh.4.2020.10.29.04.49.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Oct 2020 04:49:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of wharms@bfs.de designates 194.94.69.67 as permitted sender) client-ip=194.94.69.67;
Received: from SRVEX01-SZ.bfs.intern (exchange-sz.bfs.de [10.129.90.31])
	by mx01-sz.bfs.de (Postfix) with ESMTPS id 5FA4820136;
	Thu, 29 Oct 2020 12:49:51 +0100 (CET)
Received: from SRVEX01-SZ.bfs.intern (10.129.90.31) by SRVEX01-SZ.bfs.intern
 (10.129.90.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2106.2; Thu, 29 Oct
 2020 12:49:50 +0100
Received: from SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a]) by
 SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a%6]) with mapi id
 15.01.2106.002; Thu, 29 Oct 2020 12:49:50 +0100
From: Walter Harms <wharms@bfs.de>
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>, Thomas Gleixner
	<tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov
	<bp@alien8.de>, Josh Poimboeuf <jpoimboe@redhat.com>, "x86@kernel.org"
	<x86@kernel.org>
CC: "H . Peter Anvin" <hpa@zytor.com>, Peter Zijlstra <peterz@infradead.org>,
	Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers
	<ndesaulniers@google.com>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "clang-built-linux@googlegroups.com"
	<clang-built-linux@googlegroups.com>, "kernel-janitors@vger.kernel.org"
	<kernel-janitors@vger.kernel.org>, "linux-safety@lists.elisa.tech"
	<linux-safety@lists.elisa.tech>
Subject: AW: [PATCH] x86/unwind: remove unneeded initialization
Thread-Topic: [PATCH] x86/unwind: remove unneeded initialization
Thread-Index: AQHWrZZp9P4B5XWLnkejzPAeNoVG0Kmudb7J
Date: Thu, 29 Oct 2020 11:49:50 +0000
Message-ID: <a28022479f594650a6d98adac3c4a6f0@bfs.de>
References: <20201028122102.24202-1-lukas.bulwahn@gmail.com>
In-Reply-To: <20201028122102.24202-1-lukas.bulwahn@gmail.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.137.16.39]
x-tm-as-product-ver: SMEX-14.0.0.3031-8.6.1012-25754.006
x-tm-as-result: No-10--0.988400-5.000000
x-tmase-matchedrid: TE7h93R7O3jRubRCcrbc5pzEHTUOuMX33dCmvEa6IiGoLZarzrrPmeb5
	gCbPfcioIC52rSBOy+gmQDJE1lzoKPGU4m5A0eV9z1H9SpactbiNY/pqxovzxYN0CMTKQ9ev/9W
	PA4ZFFzrZjNZ12FSpFs8bFMQN3nGuMyy9eqWWzjvThGbP9qB93DjHtx4N53dRVsObDLfVQsThCQ
	UB+puAZk12Dax6d5UQxBbcGLES8TueTWqY85I+X7oLyaVI8w2XWDLajM22ETZLxCuBTCXaKrCza
	+U6obX487yjVwmj7q2zCx0lbV31dsxAixoJws1YA9lly13c/gHYuVu0X/rOkKcxvibtoCq3HP39
	F6H4hveqHvcnMH4C7u9EJt2F5Oksv1l2Uvx6idoLbigRnpKlKZx+7GyJjhAUOLgvIsXATHC2ohu
	Rgjqs900g0pBwme1+LRFzqCTzDFDuvr+O/VqMU6mrjuLrmYul6A2mBlkBcjqN9FRlnbL3hF5MAv
	x/fsUBxutS1t8Wq0GIonbnNHgEwM/qYWYfQTGnSQOPumGIku0fwV6sBPR0lg==
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
x-tmase-result: 10--0.988400-5.000000
x-tmase-version: SMEX-14.0.0.3031-8.6.1012-25754.006
x-tm-snts-smtp: 1946DC9CBA21DAD32119240325D8B1EA458CA5236B8211B1D739423198A805262000:9
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-Spam-Status: No, score=1.46
X-Spam-Level: *
X-Spamd-Result: default: False [1.46 / 7.00];
	 ARC_NA(0.00)[];
	 TO_DN_EQ_ADDR_SOME(0.00)[];
	 HAS_XOIP(0.00)[];
	 FROM_HAS_DN(0.00)[];
	 TO_DN_SOME(0.00)[];
	 FREEMAIL_ENVRCPT(0.00)[gmail.com];
	 TO_MATCH_ENVRCPT_ALL(0.00)[];
	 TAGGED_RCPT(0.00)[];
	 MIME_GOOD(-0.10)[text/plain];
	 MID_RHS_MATCH_FROM(0.00)[];
	 URIBL_BLOCKED(0.00)[googlegroups.com:email,elisa.tech:email];
	 DKIM_SIGNED(0.00)[];
	 BAYES_HAM(-0.04)[58.60%];
	 RCPT_COUNT_TWELVE(0.00)[14];
	 NEURAL_HAM(-0.00)[-1.012];
	 FREEMAIL_TO(0.00)[gmail.com,linutronix.de,redhat.com,alien8.de,kernel.org];
	 RCVD_NO_TLS_LAST(0.10)[];
	 FROM_EQ_ENVFROM(0.00)[];
	 MIME_TRACE(0.00)[0:+];
	 FREEMAIL_CC(0.00)[zytor.com,infradead.org,gmail.com,google.com,vger.kernel.org,googlegroups.com,lists.elisa.tech];
	 RCVD_COUNT_TWO(0.00)[2];
	 SUSPICIOUS_RECIPS(1.50)[]
X-Original-Sender: wharms@bfs.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@bfs.de header.s=dkim201901 header.b=hUHncc8J;       spf=pass
 (google.com: domain of wharms@bfs.de designates 194.94.69.67 as permitted
 sender) smtp.mailfrom=wharms@bfs.de
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

this looks like a reimplementation of bsearch()
perhaps the maintainer can add a comment why the 
kernel implementation is not suitable here ?


jm2c
wh

________________________________________
Von: Lukas Bulwahn [lukas.bulwahn@gmail.com]
Gesendet: Mittwoch, 28. Oktober 2020 13:21
An: Thomas Gleixner; Ingo Molnar; Borislav Petkov; Josh Poimboeuf; x86@kernel.org
Cc: H . Peter Anvin; Peter Zijlstra; Nathan Chancellor; Nick Desaulniers; linux-kernel@vger.kernel.org; clang-built-linux@googlegroups.com; kernel-janitors@vger.kernel.org; linux-safety@lists.elisa.tech; Lukas Bulwahn
Betreff: [PATCH] x86/unwind: remove unneeded initialization

make clang-analyzer on x86_64 defconfig caught my attention with:

  arch/x86/kernel/unwind_orc.c:38:7: warning: Value stored to 'mid' during
  its initialization is never read [clang-analyzer-deadcode.DeadStores]
          int *mid = first, *found = first;
               ^

Commit ee9f8fce9964 ("x86/unwind: Add the ORC unwinder") introduced
__orc_find() with this unneeded dead-store initialization.

Put the variable in local scope and initialize only once the value is
needed to make clang-analyzer happy.

As compilers will detect this unneeded assignment and optimize this
anyway, the resulting object code is effectively identical before and
after this change.

No functional change. Effectively, no change to object code.

Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
---
applies cleanly on current master and next-20201028

Josh, please ack.
Ingo, Borislav, please pick this minor non-urgent clean-up patch.

 arch/x86/kernel/unwind_orc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/x86/kernel/unwind_orc.c b/arch/x86/kernel/unwind_orc.c
index 6a339ce328e0..5c64eed08257 100644
--- a/arch/x86/kernel/unwind_orc.c
+++ b/arch/x86/kernel/unwind_orc.c
@@ -35,7 +35,7 @@ static struct orc_entry *__orc_find(int *ip_table, struct orc_entry *u_table,
 {
        int *first = ip_table;
        int *last = ip_table + num_entries - 1;
-       int *mid = first, *found = first;
+       int *found = first;

        if (!num_entries)
                return NULL;
@@ -47,7 +47,7 @@ static struct orc_entry *__orc_find(int *ip_table, struct orc_entry *u_table,
         * ignored when they conflict with a real entry.
         */
        while (first <= last) {
-               mid = first + ((last - first) / 2);
+               int *mid = first + ((last - first) / 2);

                if (orc_ip(mid) <= ip) {
                        found = mid;
--
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/a28022479f594650a6d98adac3c4a6f0%40bfs.de.
