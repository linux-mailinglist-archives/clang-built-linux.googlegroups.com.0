Return-Path: <clang-built-linux+bncBDY3NC743AGBBBES4PWAKGQEPENHFZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id E9AF3CCB6A
	for <lists+clang-built-linux@lfdr.de>; Sat,  5 Oct 2019 18:47:01 +0200 (CEST)
Received: by mail-pl1-x63d.google.com with SMTP id g11sf5864045plm.22
        for <lists+clang-built-linux@lfdr.de>; Sat, 05 Oct 2019 09:47:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570294020; cv=pass;
        d=google.com; s=arc-20160816;
        b=dza6YPCcwDYyWIJU6Bh7xjfD0lzCi/tpfhZJy3cZn4nuXiXw0nhjcMz/1VFzT34I39
         Fhav2Q52IPDiqj/lQxzqEYnp6l5ogkOiry7wguI7gyaC9h5478+bvhEwOvx0vPrm0Qe+
         d8EussHOYiYrd+tEpJwp9M9epxkpK2clVlc3wMqNR7rsvnHOOsmjeWFXqMbTViMB26s6
         rAHmOu+osouBb48mmtjam1euX0Y2x2KycNtZ53y2tV26NzNOnRtHhrkt7c0SbPKiIPic
         LaF+vE7qIgpK1AxsRe6KuiU+A6VYEidq1h96lksqJ9qUMy6RIFVtZglUn0zI6xBn+JR+
         4w4w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=01NWrMCnXoh+PVJDivgq+Kuf8zBoSCZ7D/TAAiofDvc=;
        b=lUga/lLNVokfCbGGsOMZX+TbU15PqJCLdPYpycTNCZRn8lwrL93VOlLTu6A7JIUrBg
         47Mqhuess9KoyJnUwSCHyFuXdorRAOt6eEDp6eE0ozjEb0tJF1AefsH5ThgAcrgD552P
         Wu6oqd/l63lS+CDhPLtgM0yb7hnUKNA6QLmc00aLJonP0/I3QCyy/DyHzYyoHI5eDPi8
         4Xv8SQdWvM4gjRajk6d2TYDGXJ///KncjTNaZUJyYo5ViR3l0M+xPYGuflXxzv4FS/QZ
         gepHaucCu3eA0+4XXI9CBbv/xeFq75NJEuM+7OgKzNYryWnTM+l0ZDHotwQs2czq40sc
         0QEw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.164 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=01NWrMCnXoh+PVJDivgq+Kuf8zBoSCZ7D/TAAiofDvc=;
        b=D8MaHCe6iaVR7Xd7M3azd3izVgtwI9at17s9sg7Zmzosu8pL3OgbGJt8PEbxMAbCuS
         xDmzOo2mXJuCXQmlCNlhbfV6kbcCvnh63jJKrMg6hV96+g4wTET0+qA0dzM/kCd54EGf
         C+E8o7/Lgf9dFm51oMq9pSN2qbgplgbMSjScRUsKogcdbrm30IfBn7+ayb64ZnRugHId
         3hpSKDhgNWhMUsuLv/BlD0xnuzbPzTQoy+OCgIc3KbIHrqDHoOdkJt4v/ALklSInLjIr
         ajAqWqTgb+7Xla9onzS7QmQh0psqsRKwcNVC47ZCNFXXUZkh5fu0Gs+x9xZo5szO8DtZ
         z4bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=01NWrMCnXoh+PVJDivgq+Kuf8zBoSCZ7D/TAAiofDvc=;
        b=EEI3Bij/rolACEFZS5+yuZuGG45E2Yfdmg5bTTPp6J1tBz4YahUQEx9LD6L6Dc+nzA
         t3v/Ay7hVTWqElp6dQCajZEltOQC6uS3lC7uRSZIz48n/DX5RM0myHqRFRY9ynzr53YI
         GmR5hfLfCocIM6xGDiVjHFW8ga3KOIp7IhS/wrwBc9pu+ZlHJzvC0shNpi55JlyJ0Jjp
         li+oW9cZNKmzLPuZ7cfxNC7SogkFfl/CMiJS0MVHegVqjz4BZ3fVDue4AgW7m9pwsCUq
         jB/tZd6SnpDIKUhJ3TvV8RajOd//Tz7T9FakkD7alTMfIzoOeJdYPAf536bzneu25y7Y
         YbKg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV9gcUbOjvOXDEX+sUEw3vjNslrYkKRpcC5XaX25priAnZdXJIw
	QSJz7+GH3rz5brHG4Rb2U6Q=
X-Google-Smtp-Source: APXvYqxLwbFDFjeKQ5JoWeI6EWaptdQerGDyyiaeBYjkItfYwSd4mIXp2Te8/G7cZKwYMhOpnLr9dg==
X-Received: by 2002:a63:c947:: with SMTP id y7mr22343796pgg.345.1570294020311;
        Sat, 05 Oct 2019 09:47:00 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:2766:: with SMTP id o93ls1759302pje.4.gmail; Sat, 05
 Oct 2019 09:47:00 -0700 (PDT)
X-Received: by 2002:a17:90a:950b:: with SMTP id t11mr23469070pjo.97.1570294019906;
        Sat, 05 Oct 2019 09:46:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570294019; cv=none;
        d=google.com; s=arc-20160816;
        b=tLE3JdSBbpkSD2nQ4+af6KRe3OoP84kOt1eYBFLG+CA/Pyqs/fAtNsHp2dwUUEDQUo
         rmt1wmCmWIj7vpdHlnwUquKVLO0VEU5NI9yk2p5sU9DofffZsHYuiPdkoXuJkJXWTyFV
         luHWGR95wdH+O7RKGd9oaTaBdnx2TmVct/ESM1fvTYM4F5v8kLg0PIM6B8yRUBMNGaz6
         TyZIuAHF+8Wdd7uPRVURLjXGZhHk972flMPGRi1NRhiaGaBzt4GU2gmVGRODth99eNjN
         gdfAsV3IbO/khYGrq2I++br7j32b9RLchPNTDvhI33vIzs+9UFTw+jHpJbU8Q/M1xp8k
         cdtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from;
        bh=0hOCUSaGNp1+g6Ut6KSXyGlNIh8wZl0posGYXNOfLMQ=;
        b=B5UDVVhQmD6Fp8DoByZgP/53Gwh4g5OlIcTquzPjeMbtAuucU4tsKF7LNNllkH9xEB
         X/GMgt7BPXp2C62obXnClMCb14se9mroiYFyBaHZhAwXv+MmH6hiW+E6oTOW7V/Xek3o
         /ASxqDgxTRAeMxAZs3b47EzWft5OZG9RzVrXh9mLikedDgY1OCay0Gxh0Zwuk4QTZ7QA
         cwUQE7vbvjeUR7pk4U6zIMnRkjj1YAhwc+NE+Hoir7IjNeifQ2v2A0DrUohmvdIq0Ai4
         w3wffE0DG3uK/WMAt2voPtsJBlk5tSlGHufF07jUOx66UOBceAGZHjIhhdJbbNN4BGHF
         X9fA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.164 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0164.hostedemail.com. [216.40.44.164])
        by gmr-mx.google.com with ESMTPS id d5si610892pls.5.2019.10.05.09.46.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 05 Oct 2019 09:46:59 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.164 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.164;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay08.hostedemail.com (Postfix) with ESMTP id 7ABF9182CED34;
	Sat,  5 Oct 2019 16:46:58 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::::::::::::::::::::::::::::::::,RULES_HIT:41:355:379:541:800:960:967:973:988:989:1260:1345:1359:1437:1534:1541:1711:1730:1747:1777:1792:1801:2194:2199:2393:2525:2559:2563:2682:2685:2859:2898:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3353:3865:3866:3867:3870:3871:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4321:4605:5007:6119:6261:6742:7903:9025:9121:10004:10848:11026:11233:11658:11914:12043:12114:12297:12346:12438:12555:12895:12986:13069:13255:13311:13357:14181:14384:14394:14581:14721:21063:21080:21433:21451:21627:30054:30055:30070,0,RBL:47.151.152.152:@perches.com:.lbl8.mailshell.net-62.8.0.100 64.201.201.201,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:neutral,Custom_rules:0:0:0,LFtime:36,LUA_SUMMARY:none
X-HE-Tag: event87_23423d2c3c01
X-Filterd-Recvd-Size: 3388
Received: from joe-laptop.perches.com (unknown [47.151.152.152])
	(Authenticated sender: joe@perches.com)
	by omf15.hostedemail.com (Postfix) with ESMTPA;
	Sat,  5 Oct 2019 16:46:55 +0000 (UTC)
From: Joe Perches <joe@perches.com>
To: Linus Torvalds <torvalds@linux-foundation.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Kees Cook <keescook@chromium.org>,
	Borislav Petkov <bp@alien8.de>,
	"H . Peter Anvin" <hpa@zytor.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Pavel Machek <pavel@ucw.cz>,
	"Gustavo A . R . Silva" <gustavo@embeddedor.com>,
	Arnaldo Carvalho de Melo <acme@kernel.org>,
	Kan Liang <kan.liang@linux.intel.com>,
	Namhyung Kim <namhyung@kernel.org>,
	Jiri Olsa <jolsa@redhat.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Shawn Landden <shawn@git.icu>,
	x86@kernel.org,
	linux-kernel@vger.kernel.org,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	David Miller <davem@davemloft.net>,
	clang-built-linux@googlegroups.com
Subject: [PATCH 2/4] compiler_attributes.h: Add 'fallthrough' pseudo keyword for switch/case use
Date: Sat,  5 Oct 2019 09:46:42 -0700
Message-Id: <79237afe056af8d81662f183491e3589922b8ddd.1570292505.git.joe@perches.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <cover.1570292505.git.joe@perches.com>
References: <cover.1570292505.git.joe@perches.com>
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.164 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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

Reserve the pseudo keyword 'fallthrough' for the ability to convert the
various case block /* fallthrough */ style comments to appear to be an
actual reserved word with the same gcc case block missing fallthrough
warning capability.

All switch/case blocks now must end in one of:

	break;
	fallthrough;
	goto <label>;
	return [expression];
	continue;

fallthough is gcc's __attribute__((__fallthrough__)) which was introduced
in gcc version 7..

fallthrough devolves to an empty "do {} while (0)" if the compiler
version (any version less than gcc 7) does not support the attribute.

Signed-off-by: Joe Perches <joe@perches.com>
Acked-by: Peter Zijlstra (Intel) <peterz@infradead.org>
---
 include/linux/compiler_attributes.h | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/include/linux/compiler_attributes.h b/include/linux/compiler_attributes.h
index 6b318efd8a74..cdf016596659 100644
--- a/include/linux/compiler_attributes.h
+++ b/include/linux/compiler_attributes.h
@@ -40,6 +40,7 @@
 # define __GCC4_has_attribute___noclone__             1
 # define __GCC4_has_attribute___nonstring__           0
 # define __GCC4_has_attribute___no_sanitize_address__ (__GNUC_MINOR__ >= 8)
+# define __GCC4_has_attribute___fallthrough__         0
 #endif
 
 /*
@@ -185,6 +186,22 @@
 # define __noclone
 #endif
 
+/*
+ * Add the pseudo keyword 'fallthrough' so case statement blocks
+ * must end with any of these keywords:
+ *   break;
+ *   fallthrough;
+ *   goto <label>;
+ *   return [expression];
+ *
+ *  gcc: https://gcc.gnu.org/onlinedocs/gcc/Statement-Attributes.html#Statement-Attributes
+ */
+#if __has_attribute(__fallthrough__)
+# define fallthrough                    __attribute__((__fallthrough__))
+#else
+# define fallthrough                    do {} while (0)  /* fallthrough */
+#endif
+
 /*
  * Note the missing underscores.
  *
-- 
2.15.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/79237afe056af8d81662f183491e3589922b8ddd.1570292505.git.joe%40perches.com.
