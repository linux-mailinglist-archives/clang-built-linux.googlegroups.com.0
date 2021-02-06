Return-Path: <clang-built-linux+bncBCT4XGV33UIBBJNY66AAMGQEHZMEYYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F914311788
	for <lists+clang-built-linux@lfdr.de>; Sat,  6 Feb 2021 01:00:38 +0100 (CET)
Received: by mail-ot1-x33e.google.com with SMTP id z2sf4422035otk.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 05 Feb 2021 16:00:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612569637; cv=pass;
        d=google.com; s=arc-20160816;
        b=gOo33yLwwGgAjlqJcmjbqPfg8B569At71vYjIbczXmvwy1U4MWI85iWoXpH/LHnCGr
         +M9l6p1Qsj0ax9D/k4jSUPa2C6AzvA9z7BumqliieKs/XO87vkLzhhaxxXrnFrMJYMVw
         P5g+WaFGOGcuseXlKh4kzPqFCERChCvBVBD+QqnaNadOe4DVptGf2pjF3DQ/nbZDs2OX
         eSAyQy469UjvNlo4XhkIeJUZxhQmwNQ8geSV2qpS1UdfdtuqopcycEhl4VoNrfoDmO28
         LZfKSbmO7bUWmmR6lxPDgbXrNtD2jfMGXVvTEIacZzwVStGKSn/zyPIGTN9NLlFcA8A9
         6FHg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=HF4C/lT1BOe485+BKgKj6+SlfXBUCjJQn9lolNravDY=;
        b=te/v/NmHL5ho+as557kCee4lrfn/9KnVl6klYGOcgaeWChSvd/MUvpaOzT4313KJhK
         QRx+9U/uwk4Wq9uIcq3rHNFfHnuxUvsgqWIJHzyhhrrxL55/CGsdmTVbrgv76i2J0/M/
         qUqbkUNMDCblyYe+CRe+PTFJV41AucMLJSL9fdZhY/iGg7ExNdN5/m9czWvjUhxIqw/P
         vDtm9tybWrLZ69nGYjookh0GZB7O5LJbdTU9dhmn3w85W+vsGBoqqJVm2lMblM41FJ1A
         5KlSwCNnHzii/obe/5oBv/qVVHc+kg0iLa3zBPiE+APyyhzKm6EOGZqGUI0iF5NRWvDh
         w/cg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=korg header.b=MUBkFywy;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HF4C/lT1BOe485+BKgKj6+SlfXBUCjJQn9lolNravDY=;
        b=YwTsrEUJ9bLl2UdcbMy6RlTGvteJzx3Ot24nQId7W8HQaSBgyg0cE/D+yx95/tZpTY
         PJMVfV8CMdCbZ5y617pm4gpeY/UXNPN8exLmRAooe/Pr2MHHSL6NAhhYY07sjPt4HvKR
         o/NH6l9v7o/SyIy9jfppLWRI0OI4pHsFo2Yg8IwQS6rDJY4RSipY12r3IAJBavPPmqcU
         bBzddcBYvj4azGT0hfSq0oa8qarJdjr9YfffiKbsIwziHm0xtzeF4wM6zy9bxw6K/7W0
         U2WulxhqJa0Atzh0QUzwXwWC3TojBux/kBTcI36vNbgbL0Wmj1WJb6ENSy58DCuMoCW7
         wigg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HF4C/lT1BOe485+BKgKj6+SlfXBUCjJQn9lolNravDY=;
        b=DZNbr4oogZBbcZmg/UNHmgoiFYgFQ/wcSCC4OV4oyWs4ywvcD45IxhYD4wAEJ3BrUW
         troPe02kfQy+0YbkK5oowTSRIOxUwYpSGVCZlSTJJ9Iy5o3o8YpJOU7aS31/iC618gU3
         yiU421FsdUL7W0Yg/lC3eDbPEDwhMb1D4uHCVTFclTIvtlGa70rae7iWPwAQoTkCFwFR
         DFXV/pWVh7VfvYO2kCWJ5CvBNMYRcrFxADEBXyC4tJ7v6biVaf4DqKYvY9ROrR3arZ4Q
         lzQ1zoxvcF/z8YVP/X3swmtLQ0Djcfq1ShyAG03lVYQVc1RJkhBEMw3Khr3K1E4pS1lo
         zlJw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531scS9qlrJyeUSQ+oyp81iYy7xkKHEKl9phRAAJOkngW2gBCLOy
	io1dvKBVoN0lx2meUv4TSdA=
X-Google-Smtp-Source: ABdhPJxEIwAesPn6kRkLoHX+PzZzvqMm2QFq8w8btJFUquGvL4x4+hazmI8BVPXJcv/ZxQntVn+RLQ==
X-Received: by 2002:aca:4e8e:: with SMTP id c136mr241905oib.173.1612569637250;
        Fri, 05 Feb 2021 16:00:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:d0d0:: with SMTP id u16ls104110oor.10.gmail; Fri, 05 Feb
 2021 16:00:36 -0800 (PST)
X-Received: by 2002:a4a:a22a:: with SMTP id m42mr5401730ool.22.1612569636819;
        Fri, 05 Feb 2021 16:00:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612569636; cv=none;
        d=google.com; s=arc-20160816;
        b=CSO10uxQWEwYHECYK8aoYZUs4zwUdPLr5Pa63kseXkGgPcyHHS93I4O5kjBYH0Bp8H
         58eC2M15sO7e8SD+3GokRi8Q1SPRFK+zRS083Z86i1w0sE+tyNFdQKVFVD+bJh93KNfz
         3P7rxsmRa5JAUGj3K5DTnlNQqdZDapCzSFpw6hy6O7FjpyyhIrcDXPEWOAIhKSIM/rL8
         7fw8gB0FKcpxoaOcWSv4bSXN5W87N1y9OkFirPGHq7CKO65Rmdh2YWYo5Xy8Vpm7Zu8D
         +VubF1o9UTk3F3YxHXtRDgASkWIkMQER69cfwgoGlX850uKn6MMVVKqKpFswGYOS/JBI
         8GAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=SdWzdOJGYj5Y+S0+fu35J2pYLbW7/m3DxL+t+E0Qb6g=;
        b=ZQtf93RN1y/ZxgjqleH1+6zfeToK+oXILbEzW5t6IyNFPp+3ehJb/E0g6mmVJQVK22
         M69tNMfba/CuvOyiYVVfOnlXgZxK4b4sCIFsVIkxOXIeNtfnaCzBFoeFMlHawjoMbPut
         df9aOJwG/HiRghLE4q5ob33dUhiJLcDvuu7b9TEnENZex1VAVHUupil+g08rnOhDYeP0
         OCjTGnM/ID2ClD1eMAEWg+F7vqPtsi/fr/ZIQ0Uq9eU7CNGOYH0hiPIF2F2gZxjUL9yo
         6v1MRSiNKY6weWsDnLfqWbb0fVVRj9SZNgd6wle5BO4OQsaV2i7p4WPS9Ittdku78rmA
         gSoA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=korg header.b=MUBkFywy;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u78si458603oif.1.2021.02.05.16.00.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 05 Feb 2021 16:00:36 -0800 (PST)
Received-SPF: pass (google.com: domain of akpm@linux-foundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 04A416500A;
	Sat,  6 Feb 2021 00:00:34 +0000 (UTC)
Date: Fri, 5 Feb 2021 16:00:34 -0800
From: Andrew Morton <akpm@linux-foundation.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Nathan Chancellor
 <natechancellor@gmail.com>, Sedat Dilek <sedat.dilek@gmail.com>,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
 linux-kbuild@vger.kernel.org, linux-arch@vger.kernel.org, Jakub Jelinek
 <jakub@redhat.com>, Fangrui Song <maskray@google.com>, Caroline Tice
 <cmtice@google.com>, Nick Clifton <nickc@redhat.com>, Yonghong Song
 <yhs@fb.com>, Jiri Olsa <jolsa@kernel.org>, Andrii Nakryiko
 <andrii@kernel.org>, Arnaldo Carvalho de Melo <acme@kernel.org>, Arvind
 Sankar <nivedita@alum.mit.edu>, Chris Murphy <bugzilla@colorremedies.com>,
 Mark Wielaard <mark@klomp.org>, stable@vger.kernel.org, Chris Murphy
 <lists@colorremedies.com>, Nathan Chancellor <nathan@kernel.org>
Subject: Re: [PATCH v9 1/3] vmlinux.lds.h: add DWARF v5 sections
Message-Id: <20210205160034.a0e0ba06752bef03e60f91f8@linux-foundation.org>
In-Reply-To: <20210205202220.2748551-2-ndesaulniers@google.com>
References: <20210205202220.2748551-1-ndesaulniers@google.com>
	<20210205202220.2748551-2-ndesaulniers@google.com>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: akpm@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=korg header.b=MUBkFywy;
       spf=pass (google.com: domain of akpm@linux-foundation.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom=akpm@linux-foundation.org
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

On Fri,  5 Feb 2021 12:22:18 -0800 Nick Desaulniers <ndesaulniers@google.com> wrote:

> We expect toolchains to produce these new debug info sections as part of
> DWARF v5. Add explicit placements to prevent the linker warnings from
> --orphan-section=warn.
> 
> Compilers may produce such sections with explicit -gdwarf-5, or based on
> the implicit default version of DWARF when -g is used via DEBUG_INFO.
> This implicit default changes over time, and has changed to DWARF v5
> with GCC 11.
> 
> .debug_sup was mentioned in review, but without compilers producing it
> today, let's wait to add it until it becomes necessary.
> 

There isn't anything in this changelog which explains why a -stable
backport was requested?  Or is there?  Irritating linker warnings? 
More than that?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210205160034.a0e0ba06752bef03e60f91f8%40linux-foundation.org.
