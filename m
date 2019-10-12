Return-Path: <clang-built-linux+bncBDY3NC743AGBBEHOQTWQKGQEGONUWZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3b.google.com (mail-yw1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id EDE62D4C0D
	for <lists+clang-built-linux@lfdr.de>; Sat, 12 Oct 2019 04:14:41 +0200 (CEST)
Received: by mail-yw1-xc3b.google.com with SMTP id p185sf9096371ywb.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Oct 2019 19:14:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570846480; cv=pass;
        d=google.com; s=arc-20160816;
        b=UsCNn3kISxlsP51hczdBm/KTHterJhzW6WyMI3AhMDzrKyElOS1gTOwGqnlVEZkmA9
         hZpb9igffgwgLSFBe1SiZa2v4K5kaCtM6XxHm6CJC5jDboIDT5v13I0hyJUlP0tYO7/D
         YJWwlTfFJ0ybZUf4a9SnAPio+MsaZ4iqQI5zijJoE7MLotP4G+VsWzkLBa8+LRzmaPvC
         A7/yqlJvTZ8KW3BGzaHIhKTYnShnHPUzrEWa62q172HzDtiUUeotFdPUEqIaLt3k02RE
         CRLOwnq1EUCjejV7Iu2A3UbJxbPgcWte7WsTig+bO8CmJdXmTMMz4bDaTke1SwfzGUAY
         uxQg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=qSFNCfv9HUt/r42a2MP5Cg2g8SY6CPx4gyY3kg9I5RI=;
        b=xfG6IYWxv3FwsHgXAhUp7E7Rxwgj5o9+qOuKMr2tZFjm1xD+Z5I5PdSIrt6hd4i0jG
         WhZpPl70yx97sT3gB9kYw/KBp3HA2AupB+1oI+TS2Gz98NdxsB9Pv9vPbGmxZL045Omr
         P+GCx6izTqmRxB6LqkHJf8ARQnkBJDT2/EQhEvbNdsoSxTx6s+2bfPiz/BfAzdELIID1
         KDzmM7uY09A/8intzjGlvdIygICAeuF8LQZ469htYqX3pCGjqENc9QuZg8W3B3J/7ED/
         8Qpfys2cqJlQV443TZjldfe2gy8buAI/YTf/YftKD2I+iYuPQqqRQBcj4vNTF3MGUQBS
         R4yw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.48 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qSFNCfv9HUt/r42a2MP5Cg2g8SY6CPx4gyY3kg9I5RI=;
        b=mwjT+wlE4AgzUpGVMqNdbNigNCRHd5zFVzwbJ3mrHAcJtybJd2BYBOrAaFAec0cloe
         yCodr5dWAVf56ZRAcTCXtE9VggyN99Dgb1GI4lJ8eg/cYWK7wz1IC5hnb4gGUCGLll1k
         //kq1HYZbp5pXvwDAijaQvcURFcHGt+ys3FL47Jp01Iqx/05cu7vf5/yXYamgOiTjyHw
         Vg2+zu21PJvbTY7j8AkfTsd9JgeMuqBzuWqoJ0UCb1lAOfkUL/BC4c80CUO+SCOELsJp
         rz2hi2B4WDcsrfkaDbcmnSuiMVs0dYR3o5BJpUvBJjkHW2qTEEX0CBgG8HfnHgRg4+ku
         yjjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qSFNCfv9HUt/r42a2MP5Cg2g8SY6CPx4gyY3kg9I5RI=;
        b=MHNZWK+ReY0ICpRPV8A4jwPFe0wpndTHxi/TOuxbjq91eGIPj4QFRkO4kSvriyPRLW
         8nTITIPr6AeIp+YkkHnRyITeTRanTSNJ6Fos8or0uJuj7zNq/FF+NpKwV98DPx0OHJaO
         oXWAxjgeB5n9k5FTFazRwdv6uHEbivFX9Uir/a56Xkh2DP41Gr1AE8oYLZtM1s45/fq+
         xKDrPlQ5nqkV5voAKhXJcoq3LGiGKmXvaeVf2mJzudb8XYgnxU0Xd/VQh8HTyoXV6jqQ
         kVZYYKLtCJsR3x4U2RRq84EI58lBM6GC3t4XQCI2SzZrAo8Npmw7UsoAXyasWhTivP7n
         oLYA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWsU/kVzT/Z2cyRhukCj45y8INxyuCAhScOwCBJ+P3jBDrc17u/
	utliNk8Z9XIN0+2YFUQunj8=
X-Google-Smtp-Source: APXvYqxyuJ3TQgY7Rpe7ofhfN+tl++4lsfGtj8G8YBN8jG9SJ46Ce30ytJrTTU19YM2z+ulakLSa0Q==
X-Received: by 2002:a25:d70f:: with SMTP id o15mr13122887ybg.43.1570846480702;
        Fri, 11 Oct 2019 19:14:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:7496:: with SMTP id p144ls862488ybc.1.gmail; Fri, 11 Oct
 2019 19:14:40 -0700 (PDT)
X-Received: by 2002:a25:42:: with SMTP id 63mr12391384yba.262.1570846480380;
        Fri, 11 Oct 2019 19:14:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570846480; cv=none;
        d=google.com; s=arc-20160816;
        b=AJbsdRUljKx3jBBEVP6Po4F5qmdCStqwqLryTW9r3BzM6ovgun7urRfKigabtLf+Lu
         wexDByCE6JzMKnkrzx+1lnivsfRJYaKg80jOcmEdOyKbZQIqQgJSYwF/Gqwgvtn36ddd
         VzAFEBzpxr14HXulkgMTDJbN2eq1lEcDc0reRO9v8ip28S3hTrDbo3aDnNc/S8O3m0DK
         Q6tA2iNt/ms36AQ4tABcPi0127WiIeGKnivaeyUDVPGtW0M5Cfq1z5Mj1Fvo00Y4kNM5
         7i/9LuA0rL+as68SgKnrihSE4GhDr5SOieSkCXe9JqBpNenim2bl3/fc5Fk+zXUHnfUj
         HOPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=bk5mARuDuVxeNJOrWU+VPR9fN2RYHcs5P02OcKai03s=;
        b=H8cmLEWfqkOj3Ft7dnb3p4deCjy5ptCFzbKLHcgjRcUHRklYJ5junboU3ALlxuLytZ
         bM3qb6E6eZHgwM4nGDDPSRZknWjdTlwdBBESn8PN9X6uipTGRUfLiqBQGALxCrWCTIL6
         msCWpeKL/fOQEbr7FLA8Kzq1GzX1A44/SFZdWF5PdHGfYpDhwSvLMUYK8wotyXi/5fzT
         7g+GJpspmqyMdn4B2wRCcq9iHqC0WMX9MbMc466rCPAdneSv7eb/KkfKo0n45OGf9E/z
         Vvyi1knZTxv1aF6aSc34k6B+1SSh3zRdoTQfWISkRK4u3mMJkUoQrhRrBZDcxQfhCfdQ
         CJVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.48 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0048.hostedemail.com. [216.40.44.48])
        by gmr-mx.google.com with ESMTPS id g203si1278971ywc.5.2019.10.11.19.14.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Oct 2019 19:14:40 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.48 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.48;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay03.hostedemail.com (Postfix) with ESMTP id C5D5C837F24C;
	Sat, 12 Oct 2019 02:14:39 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::::::::::::::::::::::::::::::::::::::::::::::,RULES_HIT:41:355:379:599:800:960:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1538:1593:1594:1711:1714:1730:1747:1777:1792:2198:2199:2393:2553:2559:2562:2828:3138:3139:3140:3141:3142:3350:3622:3865:3867:3870:3872:3874:4321:5007:6742:6743:10004:10400:10848:11232:11658:11914:12297:12740:12760:12895:13069:13311:13357:13439:14181:14659:14721:21080:21433:21627:30054:30060:30090:30091,0,RBL:23.242.70.174:@perches.com:.lbl8.mailshell.net-62.8.0.180 64.201.201.201,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:neutral,Custom_rules:0:0:0,LFtime:24,LUA_SUMMARY:none
X-HE-Tag: toad72_4533592a26929
X-Filterd-Recvd-Size: 2596
Received: from XPS-9350 (cpe-23-242-70-174.socal.res.rr.com [23.242.70.174])
	(Authenticated sender: joe@perches.com)
	by omf06.hostedemail.com (Postfix) with ESMTPA;
	Sat, 12 Oct 2019 02:14:35 +0000 (UTC)
Message-ID: <01e7fa29d34f210348355c4a507a714e086e7a30.camel@perches.com>
Subject: Re: [PATCH 0/4] treewide: Add 'fallthrough' pseudo-keyword
From: Joe Perches <joe@perches.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: linux-sctp@vger.kernel.org, Miguel Ojeda
 <miguel.ojeda.sandonis@gmail.com>,  Kees Cook <keescook@chromium.org>,
 Borislav Petkov <bp@alien8.de>, "H . Peter Anvin" <hpa@zytor.com>,  Thomas
 Gleixner <tglx@linutronix.de>, Pavel Machek <pavel@ucw.cz>, "Gustavo A . R
 . Silva" <gustavo@embeddedor.com>,  Arnaldo Carvalho de Melo
 <acme@kernel.org>, Kan Liang <kan.liang@linux.intel.com>, Namhyung Kim
 <namhyung@kernel.org>, Jiri Olsa <jolsa@redhat.com>, Alexander Shishkin
 <alexander.shishkin@linux.intel.com>, Shawn Landden <shawn@git.icu>, the
 arch/x86 maintainers <x86@kernel.org>, Linux Kernel Mailing List
 <linux-kernel@vger.kernel.org>,  Nathan Chancellor
 <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>,
 Andrew Morton <akpm@linux-foundation.org>, David Miller
 <davem@davemloft.net>,  clang-built-linux
 <clang-built-linux@googlegroups.com>, Jonathan Corbet <corbet@lwn.net>,
 Vlad Yasevich <vyasevich@gmail.com>, Neil Horman <nhorman@tuxdriver.com>,
 Marcelo Ricardo Leitner <marcelo.leitner@gmail.com>, "open
 list:DOCUMENTATION" <linux-doc@vger.kernel.org>,  Netdev
 <netdev@vger.kernel.org>
Date: Fri, 11 Oct 2019 19:14:33 -0700
In-Reply-To: <CAHk-=wi1T1m-su8zK5LeESoz_Pgf1-4hnjr516NiDLNyb4USug@mail.gmail.com>
References: <cover.1570292505.git.joe@perches.com>
	 <CAHk-=whOF8heTGz5tfzYUBp_UQQzSWNJ_50M7-ECXkfFRDQWFA@mail.gmail.com>
	 <9fe980f7e28242c2835ffae34914c5f68e8268a7.camel@perches.com>
	 <CAHk-=wi1T1m-su8zK5LeESoz_Pgf1-4hnjr516NiDLNyb4USug@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.32.1-2
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.48 is neither permitted nor denied by best guess
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

On Fri, 2019-10-11 at 10:46 -0700, Linus Torvalds wrote:
> On Fri, Oct 11, 2019 at 10:43 AM Joe Perches <joe@perches.com> wrote:
> > Shouldn't a conversion script be public somewhere?
> 
> I feel the ones that might want to do the conversion on their own are
> the ones that don't necessarily trust the script.
> 
> But I don't even know if anybody does want to, I just feel it's an option.

What's the harm in keeping the script in the
tree until it's no longer needed?


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/01e7fa29d34f210348355c4a507a714e086e7a30.camel%40perches.com.
