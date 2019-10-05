Return-Path: <clang-built-linux+bncBDY3NC743AGBB64R4PWAKGQEFYKEP2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id B3D82CCB66
	for <lists+clang-built-linux@lfdr.de>; Sat,  5 Oct 2019 18:46:52 +0200 (CEST)
Received: by mail-qt1-x83c.google.com with SMTP id c3sf1661561qtp.3
        for <lists+clang-built-linux@lfdr.de>; Sat, 05 Oct 2019 09:46:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570294011; cv=pass;
        d=google.com; s=arc-20160816;
        b=pOpp5oLLefkLNBKiKq42lyiNn+BvLWTkrWnEFNslGlmlBVi/i8Zm4MOltWZJY4LS77
         ZvR8set7oIsyTWVtMhHWKpmzvIOiFjb4mCrsm5yMMBu62YwfTf9bctyW8n9ThklHL0X7
         BR17wIcaS89v2ZIbwyi7LTa5XM0rgVrfYtV31XRiomQHRZonLKjnFqGK5cz/msi/xvva
         f+8A6qae01BedLd3Ge3z7E57edLZ5JpNcpTyslAGNPkvb0hgJOQLYHAi5wqu76Me5Fr1
         Uu+/8jp6LSXx0Ap0poTAcUvsjNQW/i3NyHxLRCojaFJB7zRNk0qqL+Yk3cIUhw0jo2Fh
         YI2w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=Xyofla/ZxVPSLpX89U68SH3qj4nIl6zP06JoEsI9PdU=;
        b=pPm+kxU6Vsy2Or/JJW8YG70Wa9EZHuCVg3T+TkeBoLngsXbpk1Mb+JR9rt9i+UfvDD
         U80enlFZpGLlE/3nIrQFaAFac6vvi5jUF8VC4DYpBXsNU/mvSSwpcc2ozCocRAGeH+Or
         OlTFzNGuzEIckEWUhiK7fgG8ZX1oBVNVWdXMaiAtpFoB9MIbL3dtZUAFpCVPG2WKjnj1
         yjabY55aBY272AbbHiG733SUDOBfV62YLoXp1ePmfwhFr3qZbJpNxJWnrtaQc+gPKU52
         eFzEObpHdv9KMhSmnj823dLOrRSE3zcIWVPeXp9TCDhKvy/8G+eCO7wTffMCeePiPBya
         p69w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.104 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Xyofla/ZxVPSLpX89U68SH3qj4nIl6zP06JoEsI9PdU=;
        b=OmTImA7k271bcN28jBxSZKBkaEv1pEFSTszf2r9yiB1+4uGDJzojs17gC4XKTKNj/d
         uKMPTReogE8ovBtvOq6RvdLgoCh2QrCam+1DG6F7mV9FycY2NZRp5g9mCIWTX8m5iDhj
         Vq3LC8wCQR/CM6EGMzhYgXNlMpzLyws8J3obYbZrKrBdetaJCw+xn4K3HmKcLl/68NZg
         +UMVql96MJ7xjMWRzMGddNwXXNSIuIgGAnaAUPpcDJxGVdK8G5xL48vEwZG8u2qaHUcI
         V4ngESMDUdK5EZFrO+w8zh/1Qf7g6LXfdN3Jul8vZGCMTqAY64IUGdtshw30Ly5yoGaM
         xK9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Xyofla/ZxVPSLpX89U68SH3qj4nIl6zP06JoEsI9PdU=;
        b=XOElOXJU/G882l0/lU+LU5PpWkh5AaV7VIuXBcVH0synDjZu/AmGlzgjq6w4ZnZkTt
         hIA4I7SLf1bzsaA8a1EQ5p1JhhtzvmjE4A6Zj07wEpf44ZtYN/mkhsdkUSmCDZJXK0a6
         8tUZ8/Qjh5iSJutUkCe8N+gRmZ5Cx6ko9L6cCWhjht9r25aX0jnJDnrWjkpBn2wm0Bie
         iLHqdeT91QMaAJQsanKWBWxDHKsI/0eUUVGhc2G78v8pO/QmJ9oE55CxEp6ku8+672rw
         fjjmV/tWN3UDCcXGvPMteLd4DR7DleMUwC0BrOgyncrtQilrIeSURwn4rdZ5UVZltRVG
         UZ4A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVOeyoCXLOxpl6oIiD3WKUKvkOCdXmNfMFbMQVFqbJqJ5yxhWG0
	+9nw8Ea+VbuBg3hVSFSGl2M=
X-Google-Smtp-Source: APXvYqwDlZQShDDHO9KYUUDjY7A8tjfVTJzMkg5vNFqDl9k5cxn+HDzBjmmPvO+dWgypjNsIEd5OEA==
X-Received: by 2002:a0c:f98f:: with SMTP id t15mr20101081qvn.120.1570294011263;
        Sat, 05 Oct 2019 09:46:51 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:e409:: with SMTP id y9ls3441737qkf.1.gmail; Sat, 05 Oct
 2019 09:46:50 -0700 (PDT)
X-Received: by 2002:a37:9b48:: with SMTP id d69mr16618006qke.390.1570294010836;
        Sat, 05 Oct 2019 09:46:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570294010; cv=none;
        d=google.com; s=arc-20160816;
        b=Rk0OgAEz8/ULttE620mMezA2YJc7eiy/LPk9sxGapVquotMxy1zluVEgbksvYdb/HP
         I6RQbn1IkcUgINGRoy8tHdDI+GhViCf4VNZvj/G2LjQHmfsOivpCE4uLkg/DQLIK8Wjw
         xEZuKXwL0sCFzpv3QkY7U8LpcJ6WsQXdmo+Uh6nyIsI7Lu3nNkD90e5X9I5KFVA9kmne
         nn1pXs5U/Qy1+etP0WTomdkq/ttgiBjSzmGCZtxkWlIzE/g69+PLc2rE9x2nIXbUQDWi
         A2MBcNPDrnSzP7J3kO9u1ev1KpF++4ZDp7OWDCLHzcCtJdPnVoat871RW5n/f68kCdat
         G+Bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=GzCGpUKqJSbn2Z3KutWD6ZF6sUxZESiYS0anMuTGgV4=;
        b=nfRgKbDsnrJn9C/rVTiVBToTYJ/q4ITAJincuOjTxaP0V5US/BQ25NvE/89V+bVbQ6
         wXCaYc4+Qfkn7Hl4+H4rIE+ww9zIYOXcZDi5YZve3ApFQeFjRAExpBzG0XrzroCaWslM
         1k2AeTYc820tip9btKmsJzpQmfkfRYDswxFhDEGYqt1ZEqhz08bjqvthIC1plbzmJKGj
         OLFgOuPmIFV7HGPaaETgH5IwNW3aeEiFYmMcVs7tytpCNzhI2rkrazDLpJY5gR85FEaF
         hrKQb7h8n/BvRMD285msGFkvuefvmaKw+b6Yw35KYLBf+AtN4RV5eFBP5lIujPIOntSE
         +N8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.104 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0104.hostedemail.com. [216.40.44.104])
        by gmr-mx.google.com with ESMTPS id u44si877925qtb.5.2019.10.05.09.46.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 05 Oct 2019 09:46:50 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.104 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.104;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay07.hostedemail.com (Postfix) with ESMTP id 51AC0181D33FB;
	Sat,  5 Oct 2019 16:46:50 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::::::::::::::::::::::::::::::::::::::::::::::,RULES_HIT:41:355:379:541:960:973:982:988:989:1260:1345:1437:1534:1541:1711:1730:1747:1777:1792:2393:2559:2562:3138:3139:3140:3141:3142:3353:3865:3866:3867:3870:4605:5007:6119:6261:6742:6743:7903:9036:9389:9592:10004:10848:11026:11657:11658:11914:12043:12291:12296:12297:12438:12555:12679:12683:12895:13069:13161:13229:13311:13357:13972:14096:14181:14384:14394:14721:21080:21433:21451:21627:30054,0,RBL:47.151.152.152:@perches.com:.lbl8.mailshell.net-62.14.0.100 64.201.201.201,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:neutral,Custom_rules:0:0:0,LFtime:24,LUA_SUMMARY:none
X-HE-Tag: swim99_ee203254c55
X-Filterd-Recvd-Size: 3433
Received: from joe-laptop.perches.com (unknown [47.151.152.152])
	(Authenticated sender: joe@perches.com)
	by omf15.hostedemail.com (Postfix) with ESMTPA;
	Sat,  5 Oct 2019 16:46:46 +0000 (UTC)
From: Joe Perches <joe@perches.com>
To: Linus Torvalds <torvalds@linux-foundation.org>,
	linux-sctp@vger.kernel.org
Cc: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Kees Cook <keescook@chromium.org>,
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
	clang-built-linux@googlegroups.com,
	Jonathan Corbet <corbet@lwn.net>,
	Vlad Yasevich <vyasevich@gmail.com>,
	Neil Horman <nhorman@tuxdriver.com>,
	Marcelo Ricardo Leitner <marcelo.leitner@gmail.com>,
	linux-doc@vger.kernel.org,
	netdev@vger.kernel.org
Subject: [PATCH 0/4] treewide: Add 'fallthrough' pseudo-keyword
Date: Sat,  5 Oct 2019 09:46:40 -0700
Message-Id: <cover.1570292505.git.joe@perches.com>
X-Mailer: git-send-email 2.15.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.104 is neither permitted nor denied by best guess
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

Add 'fallthrough' pseudo-keyword to enable the removal of comments
like '/* fallthrough */'.

Add a script to convert the fallthrough comments.

The script can be run over any single file or treewide.

For instance, a treewide conversion can be done using:

$ git ls-files -- '*.[ch]' | \
  xargs scripts/cvt_style.pl -o --convert=fallthrough

This currently produces:

$ git diff --shortstat
 1839 files changed, 4377 insertions(+), 4698 deletions(-)

Example fallthrough conversion produced by the script:

$ scripts/cvt_style.pl -o --convert=fallthrough arch/arm/mm/alignment.c

a/arch/arm/mm/alignment.c
b/arch/arm/mm/alignment.c
@@ -695,8 +695,7 @@ thumb2arm(u16 tinstr)
 			return subset[(L<<1) | ((tinstr & (1<<8)) >> 8)] |
 			    (tinstr & 255);		/* register_list */
 		}
-		/* Else, fall through - for illegal instruction case */
-
+		fallthrough;	/* for illegal instruction case */
 	default:
 		return BAD_INSTR;
 	}
@@ -751,8 +750,7 @@ do_alignment_t32_to_handler(unsigned long *pinstr, struct pt_regs *regs,
 	case 0xe8e0:
 	case 0xe9e0:
 		poffset->un = (tinst2 & 0xff) << 2;
-		/* Fall through */
-
+		fallthrough;
 	case 0xe940:
 	case 0xe9c0:
 		return do_alignment_ldrdstrd;

Joe Perches (4):
  net: sctp: Rename fallthrough label to unhandled
  compiler_attributes.h: Add 'fallthrough' pseudo keyword for switch/case use
  Documentation/process: Add fallthrough pseudo-keyword
  scripts/cvt_style.pl: Tool to reformat sources in various ways

 Documentation/process/coding-style.rst |   2 +-
 Documentation/process/deprecated.rst   |  33 +-
 include/linux/compiler_attributes.h    |  17 +
 net/sctp/sm_make_chunk.c               |  12 +-
 scripts/cvt_style.pl                   | 808 +++++++++++++++++++++++++++++++++
 5 files changed, 855 insertions(+), 17 deletions(-)
 create mode 100755 scripts/cvt_style.pl

-- 
2.15.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cover.1570292505.git.joe%40perches.com.
