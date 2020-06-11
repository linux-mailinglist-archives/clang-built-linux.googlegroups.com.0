Return-Path: <clang-built-linux+bncBDRZHGH43YJRB55WRD3QKGQEFTHUNEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C07B1F673D
	for <lists+clang-built-linux@lfdr.de>; Thu, 11 Jun 2020 13:54:32 +0200 (CEST)
Received: by mail-wm1-x337.google.com with SMTP id 11sf1030114wmj.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 11 Jun 2020 04:54:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591876471; cv=pass;
        d=google.com; s=arc-20160816;
        b=gRz1K/z+rdQgsVDjrUcXrjP8/3Sjq2Lt0Z6DcUbE77cMsnepAStw1f3Pp9UTUbCUc/
         EASJWkd/lOB8fZ6o12CA0rntaY3UTsYIsPmFzDW8VcuAmAirjgBsvGjAaxqzK+PCicmw
         K9A62lMhlijFszv6I+/xg1nyrbMTMpmtxTCPWYm+39+FGu15XmJ4U1lwOjAUpvKOsvoB
         IVSwkv+jXz/Zn1DHjK5fE/C9h0bHqWcz3ZVW5kL78/n3M2WsFJMVBUYZ0z5zaMHMkG6r
         YZP4ykM2rqrb07nM4g21xtuqiaAb03yf4CVkSnEkGzAPyfQlrStQRRsSRnBhHNr3F+uE
         Y7qg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=FWGsyvQqmoqlX2yUPHPC6cgYUz9sTht3qYitw4JPgRw=;
        b=y/nzw32McUTQNvqg91n9DhxOmJNQLM4pU2udoDhXz9/o5wPU0xLWd2U1j71TNQCp8o
         w5Wf27KW232cd62Grd2MnKvGKoG4UmJgTpu8Xy6MgSVajrmqrXYDUKoVH6wO1oF4wFe6
         Nv366ZntEzDfpBHiWAXdF5+pU/m7g+a28XeDPqMA/6MYuREzHYKQ+Y+t2autQ4EtYYqU
         WxR2kOZ/w6Qbgn6koEq+lgP5jCCtsn97aFDvy0yytnvflMUGtUpYXspO49nf+pwra4Q+
         TL+GH5jYynMcmTDQ2JZSY6j04599yVFUfvWkqepuyvp7ZFO8Dt5sq2nGqxSLJGawdxbd
         eJ1Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=izHn04h0;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FWGsyvQqmoqlX2yUPHPC6cgYUz9sTht3qYitw4JPgRw=;
        b=c1/dAFOT8qw82hIezHJ7+0v8/njrze3dUdsoZ6295i3Ltt4aPh7sPAbPDHiorv2flX
         8J19Z5GBJYZ0SIZF+GS1Fy0oOevuims4boe7Ca4lbmoj/NnrfcPvaHXuq0y5fAwbuja4
         yQVWZuf1zMbxp7P1r7Lx/FL043l8gqKxRwxWuDuXLResPOf0V9HQm4zQuFxZhCMmgnNa
         BRHYETzb6iWYnG8xsiui017vVvPBv9rEFm9hsHnAjznNicjLP4fjeNx3kJeRD/SPbliI
         HwgX/25ErMbkGW5ZVv+D32tMWGoz6tbh1z521DxdNZFvn/Gp8tKRacQACoA218ZdQWfs
         LEXg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FWGsyvQqmoqlX2yUPHPC6cgYUz9sTht3qYitw4JPgRw=;
        b=j11SoVfudRjMoaxLVxJ7S5hsTd4401zdplHL3Dt+ncz4FbSpFzZqONvpaKxXiOjNZn
         oDnmYaA34T3jkKmsySQDmsY+KuuoHNig6fTdgXCLxMiHxKHYonmZaOhXEbFARrjkbIlN
         FWaMTmh3htTzVdg2mBqWH32pq/Qvvz3EN+vcMlPkGhJaRktBqXcR6KY7vkFCQ21xTlcB
         GYVgoLWcPVO2mVBs577Od7z3TjUs8+OUWGoZP4XE9OYAD21hoflPJWskegphdr3qbZIM
         3hdpSJkl5nrBUjdRl9r544HvWM2Wx2p4OTazx5nIVVlRXwmFhHH+kw1y8WSmefPYklar
         b0DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FWGsyvQqmoqlX2yUPHPC6cgYUz9sTht3qYitw4JPgRw=;
        b=J883GHTYmB2erzmuQVQKXD8CWDuZdX46ZDYD8j9vrYYu9J6xyVir2LFP9SAyUfMmJt
         pmitFQJzmeN3BeIy4poClXFA4cs47YvzjaMIVBEUWu4pR6YlelPoscIEyIRGhZQoq4SL
         hppjfj/DVFaiBDt2KmBnPOVEwmoYtS3MLdsOI0qARvP3W64RxpZQaUMxarRRD93ht/KN
         rXuEZu8ZDyOnnZ5hmdlqx/VYx3wZl6K9Z39SU3mgnukxKtLmBkTDWAOl0EmTsEr6ToXX
         wYWq6DTuXLHStoPS8EwPb5rmYi50Jvht5lkp0sjF/nmVE/YcpUGkO6JayMjCo9rCDxx/
         9EBg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533T5jiOP/MJeVsNHrEhxekbcrOZdRqxGKej3AJoT58gARk/yNNS
	8IxQRPUMXU+I5zaNbqKKX5I=
X-Google-Smtp-Source: ABdhPJyuG6sIIqY2Joe2pLgFv+tLlWSAj8s/Ch38jGXFsH6VzS6QRi1uEL9HftaLomohVNV0RXiu+g==
X-Received: by 2002:a1c:7917:: with SMTP id l23mr8472383wme.117.1591876471800;
        Thu, 11 Jun 2020 04:54:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:a70e:: with SMTP id q14ls898394wme.0.gmail; Thu, 11 Jun
 2020 04:54:31 -0700 (PDT)
X-Received: by 2002:a1c:38c2:: with SMTP id f185mr8154875wma.79.1591876471103;
        Thu, 11 Jun 2020 04:54:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591876471; cv=none;
        d=google.com; s=arc-20160816;
        b=h1lSItd1ijgG1Cn+ADrR5xrKaU9CUgkTx1Pe7ydw7Z9BuhGMdeZfAE2gwWL6qc04i5
         tRU9Mna/2dNV+Da766p27HDysBVETEC17oe3C47slWeFn8oDDHBbWJIobeT07ogY8Eva
         mqNRxHvT2H/ynadVXSEDhuv4o+LMegGWgVn0ylqqF4gWE2Ae2BJyzPink+S2u5MIMwWe
         ZrgoMbcIy2mZ+QtoT7xH8lfiquKLoprnZvhHsdDGy8TMVSQHGwWKX1Kf5pviJvEf9x7X
         /3Er/NGmf7mD58dAuE86uAfnf+Azo24pi50dwaoPOuOi113tfiuenOPdlxpSwfrUlTvL
         cung==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=KpSE9IXIWaR1OHxswOLDwFAs52InKm2JRRYIDBwBJ0o=;
        b=A083LmjCXFM2Msu909jtNT2tyruflejERgmFDzhLVmh8N2tKDOAFE/vO+1DPa+oKVU
         fylETr/Nc4P12EdYywvk2EAW63eGEHTj8UervvoZSZT71XODQ5zU16Wxd2HzcEnm08mz
         ALUPBLrMqeGucOi3Gf55it4VQhhQqIzBMqlcgiaaQOrORF/UP0LM4VP+AmYIDdTIXxPf
         MxpyGRXrbn7tBJgDNTa4QQMS8Dpq0EK+MKj557Fbi38IMAaPueBmMik4zacMXqREByQs
         q0diX3hGh4IRLWN+tnBS8ipBFO8wQsON9K/OH+JMELPOiL6QXAmUB4BHoe0Z7IivrF8k
         Q/Gw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=izHn04h0;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com. [2a00:1450:4864:20::242])
        by gmr-mx.google.com with ESMTPS id m20si159727wmc.0.2020.06.11.04.54.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Jun 2020 04:54:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) client-ip=2a00:1450:4864:20::242;
Received: by mail-lj1-x242.google.com with SMTP id 9so6550781ljv.5
        for <clang-built-linux@googlegroups.com>; Thu, 11 Jun 2020 04:54:31 -0700 (PDT)
X-Received: by 2002:a05:651c:11c7:: with SMTP id z7mr4390510ljo.29.1591876470581;
 Thu, 11 Jun 2020 04:54:30 -0700 (PDT)
MIME-Version: 1.0
References: <20200610125147.2782142-1-christian.brauner@ubuntu.com>
 <c8851256aa453461481233e8a7fea878f9580c5b.camel@perches.com>
 <CANiq72=BbGqXmiG8+1QuJnLXMTwNjUg9WuWR9eJcLMHZ=k5hQw@mail.gmail.com> <4c6f8d63817cbc51765fd0b3046f81dccbd17ec7.camel@perches.com>
In-Reply-To: <4c6f8d63817cbc51765fd0b3046f81dccbd17ec7.camel@perches.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Thu, 11 Jun 2020 13:54:19 +0200
Message-ID: <CANiq72nOaDo9LQ3JoZk6VH-ZYErHpvD1O=DyVngs3xno5e9W7Q@mail.gmail.com>
Subject: Re: [PATCH] .clang-format: update column limit
To: Joe Perches <joe@perches.com>
Cc: Christian Brauner <christian.brauner@ubuntu.com>, 
	linux-kernel <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=izHn04h0;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Jun 11, 2020 at 12:36 PM Joe Perches <joe@perches.com> wrote:
>
> Exactly.  So don't set a new hard limit of 100.
>
> This would _always_ wrap lines to 100 columns when
> 80 columns is still preferred.

Why is 80 "still preferred" to begin with? The patch you sent for
`coding-style.rst` was picked up by Linus, yes, but the wording seems
too strong still, considering it is for newcomers.

The point is that 80 *isn't* a limit, so I don't see why it is
mentioned, much less "preferred". Rather, I would have worded it like
[*]. What do you think?

> Imagine using a 100 column limit where a statement still
> fits on 2 lines.  Now imagine the same statement wrapped
> at 80 columns still fitting on 2 lines.
>
> Which would you prefer and why?

The former. While sometimes it may be more aesthetically pleasing to
have 2 lines of similar lengths rather than a long one and a short
one, having a deterministic approach allows us to use automatic
formatters. Which in turn makes code more regular since breaks are
always done the same way (modulo heuristic differences between
clang-format versions etc.).

In other words, I prefer automatic breaks vs. discussing every break :-)

Cheers,
Miguel

[*] (please excuse any word-wrap)

From 3b3cad415b56498534fadf732f2762f4dbe108eb Mon Sep 17 00:00:00 2001
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Thu, 11 Jun 2020 13:16:46 +0200
Subject: [PATCH] coding-style: don't mention line length hard limits, add tips

Signed-off-by: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
---
 Documentation/process/coding-style.rst | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/Documentation/process/coding-style.rst
b/Documentation/process/coding-style.rst
index 17a8e584f15f..309d3ae17e6c 100644
--- a/Documentation/process/coding-style.rst
+++ b/Documentation/process/coding-style.rst
@@ -84,11 +84,13 @@ Get a decent editor and don't leave whitespace at
the end of lines.
 Coding style is all about readability and maintainability using commonly
 available tools.

-The preferred limit on the length of a single line is 80 columns.
+Avoid lines that are too long and use reasonable line lengths.  There is no
+hard limit: break lines where it makes the most sense, somewhere around
+the 80-120 columns.  Complex statements should be broken into sensible chunks;
+identifiers should not be unreasonably verbose.  Follow nearby conventions.

-Statements longer than 80 columns should be broken into sensible chunks,
-unless exceeding 80 columns significantly increases readability and does
-not hide information.
+A good test is using `clang-format`: if the formatter is unable to split
+the lines wisely, then the code likely needs rearrangement.

 Descendants are always substantially shorter than the parent and are
 are placed substantially to the right.  A very commonly used style
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72nOaDo9LQ3JoZk6VH-ZYErHpvD1O%3DDyVngs3xno5e9W7Q%40mail.gmail.com.
