Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBIFN5SEAMGQEVHDKHLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 78EEE3EE3FD
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 03:53:37 +0200 (CEST)
Received: by mail-pl1-x63c.google.com with SMTP id y3-20020a17090322c3b029012d433951c9sf12007612plg.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 18:53:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629165216; cv=pass;
        d=google.com; s=arc-20160816;
        b=oGLy3AR4eacW2yxuR1ME0RkI2uJpz5DTFoE+axmmgST0mERnHFsdAH0+FSqvjACIqp
         ZMzgrrRiVBhfA4UyBlOwqJzrUvUsexd5oeXrmVErmWXy0argo+WXByE0gnX/tnotU6eV
         zOf49jYPEP9k6ynpl0rnbCZWsQfwaCHop/eKuqR5PMQxdKcczidl2p1FBICxbTa+HQcj
         pHVO8rHxuaOwg6hGmxcfAqrCwyixxphtx7jB42jbHL5U+AVe+JQMGXwhQM1s5oS5de7m
         Hoyaq9oSVqo1TjlC+QtXBqufg/r6f2dCizFuwxTeFuGAqNoNsCXUBmPhkFGhb2bBinpy
         ITGA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=hatJFiCxS08yb4J67Ny/PRYGtHYJyDv51/xMw2Yvm2c=;
        b=yz1y73VmdysenQfpA90VtnkoZbAM7NtydlnpC3gPyLjkVBRKz8OMYgaHS1HZsxv8zv
         v0oT0VbHDxNezu0UshdFC7Uk+l6j71FjEc1wTtKFkB3bQYve78ZFIEXnz+5UpIlpsJBa
         WUDcSsqBvKdO2fBgJbnsFaIZLUrSIgenfMSNdjvRNI88xUOVV3bshkUCMpQrev+4/hlE
         9SYeZqrLZiY3PGaUZR6LXIzDHKhED8881U8i2kXZf1+gA2kjXOWUJddqQkfgDd7FtG4i
         mkMShRdKt5wyOyy/CXwD4TikqUs0N7uCNa3XDzdxzZOYS2JuX4xTaIHtZ7H5IXw2NLoK
         Vehg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=EIxcxXc7;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hatJFiCxS08yb4J67Ny/PRYGtHYJyDv51/xMw2Yvm2c=;
        b=eTqjlYHM6WOeYr7vHDyDN4Qu177TodRR+mwVaRC5RJPNY+W+apgwjExPsNX6pistjh
         W7JJGPTRFCQYTmTnQ3ODBXjjtIjTWx3Q30f9kVFzVQHB5i6ui2lY4kCeAXiQfr69FQOt
         gqY8hxUJ+gCfl6MAal5MGtJrptOkjaSMP5gXJrJsjVorF4brBFRuw17KbxdiHJqtC/mL
         c5kvSxDVt1vUZ8DnjSEqgPTH9ffVtqdqZrcQOuHjqiyBA9w0sLMUXM/05gfiGoTYGdBg
         HawTLvwECLwnSnSqRcV2jz77b1aIUc81J+uYCNETwrdMuLA+44raeX4TstmSl/GGh3d+
         roLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hatJFiCxS08yb4J67Ny/PRYGtHYJyDv51/xMw2Yvm2c=;
        b=BCx1yCR2vanpVqQz6Ej4L9L/oK1ZfzUAl5Yepy/Rgza0T5aBUZceBxa5rdNgPxNJwD
         mB5IQphTn2sIQ0B+AHwJvuLgXX54nkJt5G1UZczUoqKGIh4INt9dUrglOWQWBTa9a4j3
         g5zChpT6fdl9rtzEUFBnxXCc5P0oYop/0/wqJmwL4NfXraW3rAx4Ab/SPFFWjxNkYvSL
         +5raHMdBxiTxCk+GC1L1UonqXs1kIZqrEJLTvU9pmWKKNbNVNKGzTnAmV4kxpDDCemHv
         rPFdxlC+wbCEG4w1NZCNmWl0Jhe74ELUH7zYRGjrlSz0cCx8eNOAAzqzBdFzDYwR/vvc
         tZjA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530bXHA6XlzBZLzq4+JH1ZeirSE7Oy7EKHbgpkQ006s6izIjv1UD
	tONGIW6ANYjeMFkGhcgkNoo=
X-Google-Smtp-Source: ABdhPJxbifBS79dE20ayyGqij9OsROpg7zlgNJqhMltrOqMg+zqRsyWVIK47ge0yY/X82Mo+Hk2lgg==
X-Received: by 2002:aa7:838a:0:b029:3b7:31a5:649c with SMTP id u10-20020aa7838a0000b02903b731a5649cmr1006104pfm.44.1629165216159;
        Mon, 16 Aug 2021 18:53:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:bf47:: with SMTP id u7ls324092pls.11.gmail; Mon, 16
 Aug 2021 18:53:35 -0700 (PDT)
X-Received: by 2002:a17:90a:2d89:: with SMTP id p9mr980772pjd.138.1629165215588;
        Mon, 16 Aug 2021 18:53:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629165215; cv=none;
        d=google.com; s=arc-20160816;
        b=XG63B7yb6zIaSMnSIyP7ST+VM5aFGqydO0oUSSGdGeEO8UYSWDiHfvi1vaIjTXGpo5
         2fvyYBJf18juC+ppn6KKyXUUaJQV8Cggjf8M71pi5ZxZ/U2AFf+nJEI0KAwM8gcGLPnq
         i2EIkYKMogMVP6fuI84NOVMQ8wxSu+MTbQqrd/QF8Yv3YMQwp+4eSLUnmugfm0siPTPo
         6MvatEPA31IZWu48GGBnfQrKX7rj6GDsKnFHlgisoU8fbIkvCjBcxdpcURBwCbijAgkW
         ZUAx2qG8ljszAzrnUWQm+EfsbG+02qlxZbCDrqLxjQOHnmhc6bnVAKjLYjw31b0vVpOp
         BJmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=eL/WVeEBR/FnWeVKVtkdcXOLyNoqSrw6WbHUaaORvAQ=;
        b=ZU6HJQEidUnpJv001TSamo4qT249Q1yWAuiSDbqU7H+syKV0Tsb4oywgHTZykWl+vo
         6rBgk0/5CD8x8Ha8AryDvPMpai1o4xbX3zsT9sfSO/gnYkfaVH4d5II9ZGarytvP/Mel
         lGsi9r4ACb/TUVeofzxi+0VLcxZh2UR8laj0MnMQM9rs+PGrzdsTILIj5iBwsE4pQbQT
         aDHCbr/VNNScKo0Kr+JXnBAISFwrzeAQ563EPuV9LJeRjS0rbvw+v1EQFnVrZ6CAzksL
         2vALMiuG5zfI5k/hKCwXeC5NRQX4yVopPFOz9GAMuaJmKFQuNgpO0WkMsXZTbD6nNooE
         llbw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=EIxcxXc7;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-04.nifty.com (conssluserg-04.nifty.com. [210.131.2.83])
        by gmr-mx.google.com with ESMTPS id e11si51820pgm.0.2021.08.16.18.53.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Aug 2021 18:53:35 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) client-ip=210.131.2.83;
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174]) (authenticated)
	by conssluserg-04.nifty.com with ESMTP id 17H1rIuM027479
	for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 10:53:19 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com 17H1rIuM027479
X-Nifty-SrcIP: [209.85.214.174]
Received: by mail-pl1-f174.google.com with SMTP id e19so22894647pla.10
        for <clang-built-linux@googlegroups.com>; Mon, 16 Aug 2021 18:53:19 -0700 (PDT)
X-Received: by 2002:a17:90a:9314:: with SMTP id p20mr972823pjo.87.1629165198439;
 Mon, 16 Aug 2021 18:53:18 -0700 (PDT)
MIME-Version: 1.0
References: <20210816203635.53864-1-nathan@kernel.org> <20210816205246.57208-1-nathan@kernel.org>
In-Reply-To: <20210816205246.57208-1-nathan@kernel.org>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 17 Aug 2021 10:52:41 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQyp0rp9VNAfyRbj=dWRM6+T7EFE0r-0E6H+=qF+Q4UEA@mail.gmail.com>
Message-ID: <CAK7LNAQyp0rp9VNAfyRbj=dWRM6+T7EFE0r-0E6H+=qF+Q4UEA@mail.gmail.com>
Subject: Re: [PATCH v2] kbuild: Switch to 'f' variants of integrated assembler flag
To: Nathan Chancellor <nathan@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=EIxcxXc7;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Tue, Aug 17, 2021 at 5:53 AM Nathan Chancellor <nathan@kernel.org> wrote:
>
> It has been brought up a few times in various code reviews that clang
> 3.5 introduced -f{,no-}integrated-as as the preferred way to enable and
> disable the integrated assembler, mentioning that -{no-,}integrated-as
> are now considered legacy flags.
>
> Switch the kernel over to using those variants in case there is ever a
> time where clang decides to remove the non-'f' variants of the flag.
>
> Also, fix a typo in a comment ("intergrated" -> "integrated").
>
> Link: https://releases.llvm.org/3.5.0/tools/clang/docs/ReleaseNotes.html#new-compiler-flags
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> ---


Applied to linux-kbuild.
Thanks.



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAQyp0rp9VNAfyRbj%3DdWRM6%2BT7EFE0r-0E6H%2B%3DqF%2BQ4UEA%40mail.gmail.com.
