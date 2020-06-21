Return-Path: <clang-built-linux+bncBDY3NC743AGBBE5YX33QKGQESD2XDLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A1C7202BDF
	for <lists+clang-built-linux@lfdr.de>; Sun, 21 Jun 2020 19:42:45 +0200 (CEST)
Received: by mail-io1-xd3c.google.com with SMTP id j9sf8988945iog.1
        for <lists+clang-built-linux@lfdr.de>; Sun, 21 Jun 2020 10:42:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592761364; cv=pass;
        d=google.com; s=arc-20160816;
        b=plYEfKWCgUyqeLEG37TnBL0EdwCoDF0PRW8ZZB3enD5VSe7jFjalE+GyAhy8DtFg+/
         ZPIkaL6HppdIJGopCbAJLF/JC9k0v5fl77ym9p0nTJeoBfIHmBxHjl1vxaVSnwwXBmd5
         xeTZ9o8Bhu3BAymKHkraRa+NEMeJL/2WRvEbK6nSpe2BxO8Y+FMQI4ar7GLJJhDz8u/E
         Ux3FL6ydevp3/1zBm+34sWVQsXqdI3ikCcZ8RtvXyUidY2j7DyYAvFT+a9y0AMK7o0Kg
         s4DR9lV3tzxGI9U725cLobcR2LZrbIZoVf3mma5Lp2Yd19SFBChCkIFAbcZKfbzax8Cn
         y5Gg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=FcaVOldstHpau5en5ecmx8oru4QRJ/GvvuLdyMZQ2Ls=;
        b=IRd4kaLHtNTwuuURqNgYhb10XKzLqPcYIlKNC4qbJPfS0SkHB/nt2UnefIOiY3FU31
         8dj1kYvUf+hy83Vkt0d4ZJLaCBAGH2J7Gj1pIiLzU+ewS/HhEbM7RV/+b3skPbTNazXR
         9RUvbelanz3YzTILU9miFNImydTpunlxvO36npjYjHoiklIeVYJuPXJjJgLoJqk9Qcee
         bI7iukWkE1wH3cBghME9JWkj5W+qaSpFL6DJVoULad3/EC9n1XsVKSxmv9jf2xk7ZI+F
         7xds5o5t6VudmOYmYKTlcrVQx652jI0QNUcswlfChLK7AstirsRd16bhxaNcfpQgnssF
         vXpg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.139 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FcaVOldstHpau5en5ecmx8oru4QRJ/GvvuLdyMZQ2Ls=;
        b=N3Kk3KvV+clRapYiXcbaiw0hlnB8xl5p+uACo48CFQkqTL36+HuezcWjm5WQfj8SxW
         dUwYdk2crdKSIv29JEGIs9fI/bybtvG/qbaNxvWTx67H8E3Dad0LSyLWAPjVUAQa04Qv
         aDQsSZwfpJduAgeIybCL7JdQJDys/m4S/1z6c/g4vPtZtEdHwX5QVKxENkentJU29CcI
         305kweyoYhjrplTf3xITv8pCQJhtioh3yz6+9qJudxrGuyjs+KJSMD4TdwUJJoi0XpoA
         CxhevX/BEvfmwdDPvYnr+bR8+1RyvVkBjMzUMR4ZBHl4Y0eAXWN4riF2Nlzt9yDxEYrC
         8b0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FcaVOldstHpau5en5ecmx8oru4QRJ/GvvuLdyMZQ2Ls=;
        b=HS1/UZbLI2fsWMgvtlpqjRTzw7N+hzgecG2K7+f4alBlX3DkzTzeI60e2nnc2IRRdm
         xquLnZaGJ2qlH9lLG8lmM4e88ZivTEGsP+V7mL+uSdk2+hxaVJc1lRgHm/BYyBoz9pmf
         4aEoG6fti0GSEXcVIzC25TzFOhK20xSUVxRYBCfZIjYfR9ZpgOhBrEiVfdueQa8rw9cd
         vszXBnrbFFuYK05oyJmL32Ym+ZKGiN72juLY0hoROlTZJMywh4zepc3rsx6HG3Ut55Z2
         3Nait/J1ECm3CAeKbW/XSNzc1q4Ki1ODic6K0v6ml3eUG2d++urpP4cDh8uKJ/hpuGsz
         D+8A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ki1JSkX6vBRhGg+By5QzRLVx4a4rVVqyBw7JCaJQBtFE8BzmB
	EMjsJW6FXCZCxuMoH6sdn5s=
X-Google-Smtp-Source: ABdhPJydSl60jHNNCd0O9gbyfwGoRNyvvN/0EXo5ToRRAgtkYuI8cjBr82AMO2/thbLcNRm/ShITaw==
X-Received: by 2002:a92:6f03:: with SMTP id k3mr10071849ilc.280.1592761363841;
        Sun, 21 Jun 2020 10:42:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:ba8c:: with SMTP id g12ls1886648jao.6.gmail; Sun, 21 Jun
 2020 10:42:43 -0700 (PDT)
X-Received: by 2002:a02:a80f:: with SMTP id f15mr14460139jaj.90.1592761363496;
        Sun, 21 Jun 2020 10:42:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592761363; cv=none;
        d=google.com; s=arc-20160816;
        b=CYrD00tQRh66gKL/lIa40AF+XwgQNV/6q1tuSo8IUNVRnkh5bcS6YZ4TqLTaF6BgZK
         L4A+Dz/MHS4sN4xA1su+S2X/PzJ+/URUuNNcZYNbWLz0MQT6ob4+4bqyD2gwny57WOQh
         oAHXboF7wA0lucK3As+jbUi9r/4cMyv6rTjAe2cMQzTmLKoPNDN5Sqq8ff8jDiLcU6pT
         olwctFUftUFEfo9C8wEUCBT0skQ/LCrAFTrlxFquB/7hqpIvjIYmIqOueFm2qAmK4ik8
         ul1qYlywk1TUBE51VTegHah1X5L23HidGhp3RUvjq8IvgWdYm/7qIzGHtL6FehpTjzBK
         KSGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=XQX4FeGiK/zLE1ykFfabqfXGFfghIcg4x0sk50X6klw=;
        b=TKa3TA0spdG1m8lHCl+fo0k9ZDnAPdgZK9bioUp06NruNzTLsFZsF1NFJ1R+eEtYwt
         prKmAgn4gaEKZsfgBjC36qsyhfq7UCXBSWbbUHWFSYsCt9IvS1muiOxqWCKLJwHOqcqK
         ubcBpNqYqLYOcoZp83Ls0wyFURw8ySNnCzQBafGmUcSy03LzSmKP8dGrQ9NmhtZqSR4x
         F62Op7tc89gr7F/UizS+cCTSKpvwDH344yavRv3G/WrbU4LUrvHtSviIacLkq+w1dA2X
         rAHCzEIOQ5dz0ZLtr9UjhtEe5Nw2gHmHT3lGFV/E+tyhPw9DCCALCCL4PB0GYB6l752e
         231A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.139 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0139.hostedemail.com. [216.40.44.139])
        by gmr-mx.google.com with ESMTPS id g12si594565iow.3.2020.06.21.10.42.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Jun 2020 10:42:43 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.139 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.139;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay06.hostedemail.com (Postfix) with ESMTP id 9471A18224D6E;
	Sun, 21 Jun 2020 17:42:42 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 10,1,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:116:355:379:599:800:901:960:967:982:988:989:1260:1263:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1540:1593:1594:1711:1730:1747:1777:1792:2393:2525:2553:2559:2562:2828:2945:3138:3139:3140:3141:3142:3352:3622:3657:3865:3866:3867:3936:3953:4250:4321:4605:5007:6117:6742:6743:7901:8814:9388:10004:10400:10848:11232:11473:11658:11914:12297:12555:12740:12760:12895:12986:13069:13311:13357:13439:14181:14659:14721:21080:21451:21627:30054:30060:30062:30070:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: top74_3b0614726e2c
X-Filterd-Recvd-Size: 2913
Received: from XPS-9350.home (unknown [47.151.133.149])
	(Authenticated sender: joe@perches.com)
	by omf01.hostedemail.com (Postfix) with ESMTPA;
	Sun, 21 Jun 2020 17:42:39 +0000 (UTC)
Message-ID: <2c60a30eb1fd3616fccd496e76d3d1cc54afc732.camel@perches.com>
Subject: Re: [PATCH] Replace HTTP links with HTTPS ones:
 Documentation/process
From: Joe Perches <joe@perches.com>
To: "Alexander A. Klimov" <grandmaster@al2klimov.de>, Miguel Ojeda
	 <miguel.ojeda.sandonis@gmail.com>
Cc: Jonathan Corbet <corbet@lwn.net>, Randy Dunlap <rdunlap@infradead.org>, 
 Tony Fischetti <tony.fischetti@gmail.com>, Chris Packham
 <chris.packham@alliedtelesis.co.nz>, Mauro Carvalho Chehab
 <mchehab+samsung@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>,
 "Jason A. Donenfeld" <Jason@zx2c4.com>, Arnd Bergmann <arnd@arndb.de>,
 Andrew Morton <akpm@linux-foundation.org>,  Borislav Petkov <bp@suse.de>,
 Will Deacon <will@kernel.org>, "Chang S. Bae" <chang.seok.bae@intel.com>,
 Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>, Kees Cook
 <keescook@chromium.org>,  Geert Uytterhoeven <geert@linux-m68k.org>, Jacob
 Huisman <jacobhuisman@kernelthusiast.com>, Federico Vaga
 <federico.vaga@vaga.pv.it>, Jonathan =?ISO-8859-1?Q?Neusch=E4fer?=
 <j.neuschaefer@gmx.net>, Konstantin Ryabitsev
 <konstantin@linuxfoundation.org>,  Linux Doc Mailing List
 <linux-doc@vger.kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>
Date: Sun, 21 Jun 2020 10:42:38 -0700
In-Reply-To: <b7ba0047-8993-d3bf-327c-1fb70bc0282c@al2klimov.de>
References: <20200621133630.46435-1-grandmaster@al2klimov.de>
	 <CANiq72kA==S-G481VHx2qrKkJmaVK7ZOuYmin4xVr3XKB8x8ug@mail.gmail.com>
	 <b7ba0047-8993-d3bf-327c-1fb70bc0282c@al2klimov.de>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.2-0ubuntu1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.139 is neither permitted nor denied by best guess
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

On Sun, 2020-06-21 at 16:30 +0200, Alexander A. Klimov wrote:
> Am 21.06.20 um 15:46 schrieb Miguel Ojeda:
> > On Sun, Jun 21, 2020 at 3:37 PM Alexander A. Klimov
> > <grandmaster@al2klimov.de> wrote:
[]
> > >              Replace HTTP with HTTPS.
[]
> W/o a 
> such central "rule on how to HTTPSify links"

Maybe:
---
 scripts/checkpatch.pl | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
index 524df88f9364..4e49187a6137 100755
--- a/scripts/checkpatch.pl
+++ b/scripts/checkpatch.pl
@@ -3115,6 +3115,12 @@ sub process {
 			}
 		}
 
+# check for URLs using old http:// links, suggest https:
+		if ($rawline =~ m{^\+.*\bhttp://}) {
+			WARN("HTTP_URL",
+			     "Prefer URLs using https: over http:\n" . $herecurr);
+		}
+
 # discourage the use of boolean for type definition attributes of Kconfig options
 		if ($realfile =~ /Kconfig/ &&
 		    $line =~ /^\+\s*\bboolean\b/) {


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/2c60a30eb1fd3616fccd496e76d3d1cc54afc732.camel%40perches.com.
