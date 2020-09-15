Return-Path: <clang-built-linux+bncBDY3NC743AGBBYEFQH5QKGQEXMUO74Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 70171269D7B
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 06:28:18 +0200 (CEST)
Received: by mail-pg1-x538.google.com with SMTP id w69sf1310150pgw.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Sep 2020 21:28:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600144097; cv=pass;
        d=google.com; s=arc-20160816;
        b=FGr0D6Kv/T3edqbOn+4Qj+L1ptHdZAhDxKVb0TIRGav+cIpBMyHKpB2FotUVeC0UZK
         yiKvwcx97phVFCsmazTYMROFTq5kZemuDfSo7kw4TF/A3uxxH1eykzUEYaPma+KvaTNg
         OjtG9Vl7r00JaamPSTho+QNX2LvACgQlEyFW/iLLA1YzoVFUJJx7K5eG8eM3C6KAC8/z
         GPtBD4otpKdBXWY7DFCXU5r/S8bZUx/NTeRisDBbIL1wclb0dMb2gpwC+5gilXj2PB50
         llohk6+//Xx2c0r1fL5W3Hj5lOTcWaJj787rOdji/1zOokuTrGGVmpcS1S9ecfEP/qBq
         RPUA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=8BdOHxGM/iexekPDnZszCNqoUsgpEk3Ejo3gGAP4Q6E=;
        b=EvzZz63z4atLBPNAi50rgtpVgYEsIhtcaxbVY3mKD85InrKH8Y5DYzaf1NOF3Ug7G5
         +yn2/NQWeOlP0rIXxG+R0QRf7/ewejAWJFkarlNflagFZ+LjATpLKcco/hhu6o7ysRSG
         1JbxRImNOYhqP+sIpVTd2nhmSMsnIdELfV5duDeyp+R1XL6TmxE5kPZoRb8BpINgyVcC
         OCf73I4ShlhD33b3sBwiVTbyHkPE0Web848k3nQcXHWhuLeFbscDnyNw5oalCcqTbl5U
         QR+SCxaGh1Se6UnYdDy8jGurwIHT4Iu2rFv2aGacfd0sl3elop/baQtTWMBgJpsiIkfA
         +ELg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.66 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8BdOHxGM/iexekPDnZszCNqoUsgpEk3Ejo3gGAP4Q6E=;
        b=tSa69/y1W3zFH4gU3gNvXfxLT5CTvlcUOF3SwCvfi9oaQyU0nW3fqUtwQ74ZovVdCb
         s+CZB1akI1PUz0MMNozMfStQm6XjCI/A20oZUM+m4cslL8mLhq4KK+iTMIP7p2+J0vSl
         DBkN+FEtLpHF/ZFwENTnlhy/RYbol7PoI3H9b3Bs4ovXYZwvLg6N1V1TLrXpJZCS4n7Y
         3bqJM25stxxTGpRpwGLjQpcJUgNfKvRX7Ft6FkplfVOKIxvqUc9cvSdP558ENlkAorM3
         XWABfnA/APfc/mswQx/jKxCI81yGq13mR+qujhUJnm3/ZjtP5bzAYu8baBscN/3cHIjc
         r9hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8BdOHxGM/iexekPDnZszCNqoUsgpEk3Ejo3gGAP4Q6E=;
        b=Hq8a7HI2PFEwVWG5etwK3UX63To+PnkwSlxli1pzmfiwdn43UEZoPkOM3sA/KHWEGM
         gOcnJDeqIE954sx3DeO5nCVGn3HzdIjCxPKE485NKGOnD9s7ZI88zNj3d50VJbsP6iGY
         Vgfjf4xoimL/X3bdXqA+F7sdKADed+8xJ2ntcEriKXNhGChsvEFTpag7mda6ckcKAibW
         khK5RJYmLGgV9d2OYWe5kO7cwxYqrpgLJfG3JFbh3bSwUJFGlvRS6oVG5y+H4u5VW/Si
         eOkthtxOpfu6C7gKelwNBSdDC5pYYtEm/OMivstHRm3N8tDhqGtJddgY+5DdynWX4VPt
         V1dQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530j2SWdbGhkL83n1vU81G6x+Wu+A5ETp2J1ic7nBkLJvR0k8x8A
	m3VZTvLxdFGAnRTlw8+NYGg=
X-Google-Smtp-Source: ABdhPJyOvKvJTH/KRgNwWNhxDEfvf8zN26xZkoqL3QdM40URdVG9iSMuoJ5dXK6sxT/zpgW7YprANw==
X-Received: by 2002:a65:5641:: with SMTP id m1mr9740986pgs.16.1600144097153;
        Mon, 14 Sep 2020 21:28:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8f92:: with SMTP id z18ls2733939plo.11.gmail; Mon,
 14 Sep 2020 21:28:16 -0700 (PDT)
X-Received: by 2002:a17:90a:ac2:: with SMTP id r2mr2520834pje.71.1600144096138;
        Mon, 14 Sep 2020 21:28:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600144096; cv=none;
        d=google.com; s=arc-20160816;
        b=mLL54/oNizN4PZD6oqGBLGnR06w7z4yQZxXpBGJCdr9ZnrfSaLzNxqKV7VoZs6mlXq
         o3rYv7cnqWdE0UxS5QGq2h0WxS4dZznkg353yrtXuyBVPxOke2wY7SvHTJUguAKPA9FV
         ubmyPQsOn+Qvq6j4VYA/6xvFv/6BGZkJNzKYOZcGC9soSTkYhBH73fsoG5kHnI3s61/F
         P//L/IaEtzXBwKA9iBdePa/Kcjr8ADcLKlTh11VmHK+UihHlbG2kjNt2TTL459pnH1eq
         3CggT6fy514B0F3k9IpYHa4JAjsZzhxa+LQ2GA4mqkDsB6lMQGc9kD9a27Q3Yk33q1ap
         wQoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=VFMN1kj26TEsSXn6SKVe2G+gQ0O0SyQzyklSNiCm+i4=;
        b=EpGrE65PjuMJIOG8kJbSU9XCL3M4SUJQbW5ST0BJ4KMCfna0UolQi9+fEqO+ev/O+p
         SD0+zm7LuyK+n7/3jT09F6RxfpHme63b+rCseHr+JgDkvi/mBRVwNI0sPkbv+tang6IB
         I+WohctV76CqF+9M13XLLxv1H2d5f93kjSHjXZocKreSxnIQhAzVi6BSVqaZeYLPODy1
         u8akrAGnGu39YcIUBC6cmiULhc2fWAH38cRmuGN+4ELQgzPQfTb5BiSVMo9+AkpSLy2S
         5Vy17nkbjY1zsGNUiRkv7wgyvJp2EDBj+3ySVDSPw+1L0U/Cfx5DLf9QZhWQkONNkL6o
         OThw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.66 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0066.hostedemail.com. [216.40.44.66])
        by gmr-mx.google.com with ESMTPS id t15si328390pjq.1.2020.09.14.21.28.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Sep 2020 21:28:15 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.66 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.66;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay08.hostedemail.com (Postfix) with ESMTP id 2FFA5182CED34;
	Tue, 15 Sep 2020 04:28:15 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1537:1567:1593:1594:1711:1714:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3622:3865:3866:3867:3872:3874:4321:5007:6117:10004:10400:10848:11232:11658:11914:12050:12297:12740:12760:12895:13069:13211:13229:13311:13357:13439:14659:21080:21627:21987:30054:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: edge48_1415aac2710e
X-Filterd-Recvd-Size: 1630
Received: from XPS-9350.home (unknown [47.151.133.149])
	(Authenticated sender: joe@perches.com)
	by omf09.hostedemail.com (Postfix) with ESMTPA;
	Tue, 15 Sep 2020 04:28:13 +0000 (UTC)
Message-ID: <5a9007605dec96c81ec85bc3dcc78faaa9ed06a0.camel@perches.com>
Subject: Re: [PATCH v5] lib/string.c: implement stpcpy
From: Joe Perches <joe@perches.com>
To: Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers
	 <ndesaulniers@google.com>
Cc: Andrew Morton <akpm@linux-foundation.org>, Kees Cook
 <keescook@chromium.org>,  Arvind Sankar <nivedita@alum.mit.edu>, Masahiro
 Yamada <masahiroy@kernel.org>, linux-kernel@vger.kernel.org, 
 clang-built-linux@googlegroups.com, Sami Tolvanen
 <samitolvanen@google.com>,  Andy Lavr <andy.lavr@gmail.com>, Rasmus
 Villemoes <linux@rasmusvillemoes.dk>, stable@vger.kernel.org
Date: Mon, 14 Sep 2020 21:28:12 -0700
In-Reply-To: <20200915042233.GA816510@ubuntu-n2-xlarge-x86>
References: <20200914160958.889694-1-ndesaulniers@google.com>
	 <20200914161643.938408-1-ndesaulniers@google.com>
	 <20200915042233.GA816510@ubuntu-n2-xlarge-x86>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.4-0ubuntu1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.66 is neither permitted nor denied by best guess
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

On Mon, 2020-09-14 at 21:22 -0700, Nathan Chancellor wrote:
> It would be nice to get this into mainline sooner rather than later so
> that it can start filtering into the stable trees. ToT LLVM builds have
> been broken for a month now.

People that build stable trees with new compilers
unsupported at the time the of the base version
release are just asking for trouble.


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/5a9007605dec96c81ec85bc3dcc78faaa9ed06a0.camel%40perches.com.
