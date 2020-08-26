Return-Path: <clang-built-linux+bncBDY3NC743AGBB7NITL5AKGQEOP4GMOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 083F1253592
	for <lists+clang-built-linux@lfdr.de>; Wed, 26 Aug 2020 18:57:35 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id x13sf1731694pgf.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 26 Aug 2020 09:57:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598461053; cv=pass;
        d=google.com; s=arc-20160816;
        b=Bv6a8IYMcTqCeyzgaD8Lkt2q+duDfDHFsez8+6vOf0ezVWf5LQ1uFAtFepai5/sX/S
         6KepkzMYJGCKTrSabXoZAWPXhwlbMz3tDTSgamsWYO6zbTgKj5qsN9+zJymBG2DCuHB6
         UB5Zl5TV7KuS1gXzQU+5nDIUQ8CK2ElAodUKD5J6IyLr8DH+kkgysgdaQu8to0LrP5fv
         ShSK/SKkiFUWzDM9XKZT83t9N/ThHLikpbGfieShVYqndth58vBknPa9tBQHD1HGn7kM
         TDDBgHS+Xw2ZSqfJu0NMQjn6QvTVfu7PKZdXfdI3mR8GZ80saH/Sbp3VS/B0ecugbkzo
         4+vQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=rL8pvc/EfwfcgCvk2sfDefYhvoRoYFCC6W/6PMAbxZw=;
        b=PxYB7AyGfuYCWxLvfqydTlWWVgLqV8fmyrZeGWMzkZBKt3GJz4jv3DOxbAJ2ywmat2
         1rkOUCqrG3wgj9nYJ4omkvbUXzrPoIcZDglTwbMONhkq1Cu/r3byINfaSp3SkfBthaI5
         CslsLQ01A79bOojrzz/acXmD5cTXhSrR7hG48urZ5JL3MjVrN1rExdNsu3NtePYhWWwv
         zvb4jaNrw2Ob5+Qxcv5lJGxpP2zKl7ujjKDrf7upK2FLwoMxpTPot6CjSCQ96IZdiTc+
         d41Hg4JCTt9ImupcBwlKNc01pOrl6dXvkQ6sYeiq9675pADJEIhG50FyLNM6pVjg+QZj
         Trwg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.188 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rL8pvc/EfwfcgCvk2sfDefYhvoRoYFCC6W/6PMAbxZw=;
        b=pqAhxNdVHu4XsS2nGYbnvds7fj2faWnyIh/hT4qtQodGOyYURGgk11evFaruBzQLRn
         0W0AYzoIcHCDC4xuNsyYbUbCme7jIVGeyqoXd5pAK0tkhKjzz2037g/SyOgqNhEHeHz9
         z1Gfqiw+ENwxFM2GlI8BHQmMyrt0ruqKJgAQw2wGVMzziR1N1ZMnzLYOOzPgX/Fjjbk2
         wQqxEoJ4SI/4ZYShLYl925PnbfnTE6+9imq8oVozexQzuKHSI0sYUhTptGy9YxFIR/af
         Ik1aC1c3JUVMJnJAfAlLYE6l6vKrRXSkpYYndz0Q5z/3l3xaf97Ujv6aQzTcXyz80fr6
         P0lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rL8pvc/EfwfcgCvk2sfDefYhvoRoYFCC6W/6PMAbxZw=;
        b=SaijEAvPtKQnmQ+KJJqvl+qmE83MzVeQ6lHxWUVpT94Fc9cgtOR+D1Ec61tODSc8YL
         OlGcrg/+SOWp0703bO4YpGt/jzQWknwG0VcrsGrc+MNNi3mqwaDaLmNK6TJBqh0ppCvD
         ffiQ/66CIbqbQpcFI6MYo96H4WaOAQKxI8TS7rd9awMoHV9OEruO2VLNTrz8quKvb0SG
         gqyHWnmFsujbif+H+DfQxMpxi83nDrjj2M+U8jaOQ8vPogQI+tXEGqEZKVD/4JNzEKw+
         ix0vOxlsZHFPee8BFTOk24pocUUz/DGqL0lBMKoLzb+GiuwJ7/LV7I1+n01Ti1P7OEde
         Ykdg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532K/K+p7nqqlyFoOEvZFYm7Qt70Ys9b1bcv8Fw6cmohMc/zJ63b
	H+fhXPY0LV2tTT5z7Y98S4k=
X-Google-Smtp-Source: ABdhPJxB9p2CWyLDeuw5p83ZVINPi1KZA4s3/+fRElwhhebqkHhbRVhl4Z3YKYixG6AGdquEywtuhA==
X-Received: by 2002:a17:90a:8817:: with SMTP id s23mr6936630pjn.158.1598461053771;
        Wed, 26 Aug 2020 09:57:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:1453:: with SMTP id 80ls1195311pfu.7.gmail; Wed, 26 Aug
 2020 09:57:33 -0700 (PDT)
X-Received: by 2002:a62:fcc6:: with SMTP id e189mr6366997pfh.228.1598461053249;
        Wed, 26 Aug 2020 09:57:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598461053; cv=none;
        d=google.com; s=arc-20160816;
        b=N2AsoC6pjRbHk8GnVRKnq1lQ+m7qGRf3IY3v1/h+KIGhCKHZG8mRs66Vbb8+6oRX9B
         sgeESYCpXNQzyIhkYk8XA59Y0yBlbedY+k3IxVCnCpJWxofUq1OgaKlLGcnW3oyP1PrR
         BMDqhGw1pi7swSoqq1okmuiOv9+iZt4/xo4FNwxtxhwyVIA2iu+PFsJa1Khm1zSYA/WS
         f01wSRiPRZVLh3enso/LdOfNRe8jRWBhXsI4pDk2pACOpD+alHVE0BtA2mBHudD5/aQL
         rL7Z/VNCuaVov9Zr/j2m4E0hakfUd26EfeHHfcsoYUQRyrr+hkz4l83R4Fey48KY+/BO
         yoZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=ddGhV5VWJVODg2+kj/dmFzZCHTpqEqN3iXW2JxkbIBk=;
        b=bi4pddZd7CCcBpqYPhyVoHluAMz2lLlZDKCxd7C7SOD+4thMCpzeUFlMGkNEcXJaPk
         HeJDkIeCcjr0yaSDygiB90kSUoFiL4NnD0ROiL5GqKFX676t3HnTsBJgS/ukBsNneUDG
         c8FxZgWteAKh70KxPjmHrCK7giWfVEOSXYokNcDYTAOS7+6+WgC1dMYiOCWMU2OgASQ8
         WAVkRrJXVlmDHJwZ0zNRdRoELcVd2mTA43MqTueiO1CrpjlDr10P6R/q+U40Zx2/Slwn
         rda8aXEkAj13TbCBFjpWnPdf6mE65J6Sl3aozQBCqdF/CtYIa9AZFI0otWw3jdYko93y
         a7hw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.188 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0188.hostedemail.com. [216.40.44.188])
        by gmr-mx.google.com with ESMTPS id bg1si140296plb.5.2020.08.26.09.57.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Aug 2020 09:57:33 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.188 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.188;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay08.hostedemail.com (Postfix) with ESMTP id 32FB3182CED2A;
	Wed, 26 Aug 2020 16:57:32 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1538:1568:1593:1594:1711:1714:1730:1747:1777:1792:2194:2199:2393:2559:2562:2828:3138:3139:3140:3141:3142:3622:3865:3866:3867:3871:3872:3873:3874:4321:5007:6119:6742:7903:10004:10400:10848:11232:11658:11914:12297:12740:12760:12895:13019:13069:13311:13357:13439:14659:21080:21433:21627:30054:30060:30070:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: doll88_0d0bccf27066
X-Filterd-Recvd-Size: 1836
Received: from XPS-9350.home (unknown [47.151.133.149])
	(Authenticated sender: joe@perches.com)
	by omf14.hostedemail.com (Postfix) with ESMTPA;
	Wed, 26 Aug 2020 16:57:29 +0000 (UTC)
Message-ID: <d56bf7b93f7a28c4a90e4e16fd412e6934704346.camel@perches.com>
Subject: Re: [PATCH v3] lib/string.c: implement stpcpy
From: Joe Perches <joe@perches.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Nick Desaulniers
	 <ndesaulniers@google.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, stable
 <stable@vger.kernel.org>, Andy Lavr <andy.lavr@gmail.com>, Arvind Sankar
 <nivedita@alum.mit.edu>, Rasmus Villemoes <linux@rasmusvillemoes.dk>, Sami
 Tolvanen <samitolvanen@google.com>, Andrew Morton
 <akpm@linux-foundation.org>, Kees Cook <keescook@chromium.org>, Andy
 Shevchenko <andriy.shevchenko@linux.intel.com>,  Alexandru Ardelean
 <alexandru.ardelean@analog.com>, Yury Norov <yury.norov@gmail.com>, Linux
 Kernel Mailing List <linux-kernel@vger.kernel.org>
Date: Wed, 26 Aug 2020 09:57:28 -0700
In-Reply-To: <CAK7LNAQXo5-5W6hvNMEVPBPf3tRWaf-pQdSR-0OHyi4RCGhjsQ@mail.gmail.com>
References: <20200825135838.2938771-1-ndesaulniers@google.com>
	 <CAK7LNAQXo5-5W6hvNMEVPBPf3tRWaf-pQdSR-0OHyi4RCGhjsQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.4-0ubuntu1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.188 is neither permitted nor denied by best guess
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

On Thu, 2020-08-27 at 01:49 +0900, Masahiro Yamada wrote:
> I do not have time to keep track of the discussion fully,
> but could you give me a little more context why
> the usage of stpcpy() is not recommended ?
> 
> The implementation of strcpy() is almost the same.
> It is unclear to me what makes stpcpy() unsafe..

It's the same thing that makes strcpy unsafe:

Unchecked buffer lengths with no guarantee src is terminated.



-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/d56bf7b93f7a28c4a90e4e16fd412e6934704346.camel%40perches.com.
