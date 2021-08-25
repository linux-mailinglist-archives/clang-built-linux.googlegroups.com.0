Return-Path: <clang-built-linux+bncBAABBCFKTCEQMGQECKYVNFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C4C43F727E
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 12:01:50 +0200 (CEST)
Received: by mail-lf1-x139.google.com with SMTP id d16-20020ac25ed00000b02903c66605a591sf7075770lfq.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 03:01:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629885704; cv=pass;
        d=google.com; s=arc-20160816;
        b=KLVo9PtvtYOOHR+xW5tv9fuZ4rKI8sf22tAgjZnPGT3dGdlRTSKpENyaaJgPenuGCg
         POqpmsbsaHbmpo0oeMFIXptK0GbTQSSsFfkmR6Jz8LL/Q98e9F2cxORAxrNI8ZGbONLT
         RXqIza7SJgto5ZE4RyODWzzMvcchVUlKO5aO0QeuRwWoC98pZ2yTcZAHawMJ/eUmaucz
         VufxOjJcay16X+nRhSQ4pnstPKNR5YdkmII+tHQuaSSNbTeZByJgX8kipTlsEbubi4J2
         dXIQHIeE0oWFeW2JUcPCENU/PnBbnfgK/ZWyeOBZUQNG7P9sqvLhL6IeCOfasPyIE4vH
         jEdw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :message-id:in-reply-to:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=voll8Hkp18cOXSagBnUOs+nQbmtS+9smJcuj/mfcTb8=;
        b=KJ8W1UmX8y94kLQnnRB9JlULG/vYDKMsfD6PSFCOkRJACf2frxhuuBWVzDM8auZ0H+
         x/r4hmgffI7b9ArqKfAbXMJheCzKAW2qITRoCCc7Ysd4g8dKoGeQEVzqyjf+YRvGr3r7
         vgTI2tCjB0xPIm1QZIh999fkEVKwGEKVXm0b0wAMTYdRBGxLbMmgOuDU/r1ITItUIB7V
         FTAra1XDc4OenKW94+18yUgaKxYxyzrexSNOicE9EyHdOGMNOBbkmK15xfD7u5GZXhKx
         7o5Mk8lSHFL1cZUc8CAUF5y5HYHTtxl88SXQ8/qfgBaD+CcZdi1X/3xVIImI048CxdTV
         bAPg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of cl@gentwo.de designates 161.97.139.209 as permitted sender) smtp.mailfrom=cl@gentwo.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=voll8Hkp18cOXSagBnUOs+nQbmtS+9smJcuj/mfcTb8=;
        b=eVnsnPLbN4cog4Y8YvfCUWaB3AiVhiWlhkycUR1To1Ircu8LG6GGSFkF+Z//5o12El
         lEJ1891iIomuuTn9URHu2C8WcPiBap6XJ28/iC/Xmqro0crPEo+Tpooclzmw+nX9jw6/
         ArMD94ZJRBP9BYwWNhMgnH3oquWb1DohNMye7HlrK70lVzgV2E1QW3pCqlYYMzCFztgx
         yh2fa/4TmEeN9Qsp9y6cLo+xSZKSlkh5xMftXHIruAfKTUSKw2/PNy3glEnGQH6B6bCe
         NnzAqW8mYIT6qHCLdTZK0vsbKby+DnSBvcD4IpGuLdUXbMZ31St/8vG1TDUisVNXAzWx
         ELhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=voll8Hkp18cOXSagBnUOs+nQbmtS+9smJcuj/mfcTb8=;
        b=KDmHmTY9UWvGy4Cl0orYQKA9X5yrfHoNr4DbD+PyG9ShbDSkbyiErZLBM9lGX64R5r
         FYMuMxJqFaEYde2syhK6ebbEBRHCz8Muzbt08dajkM5tMc/UJ2CYJA4P0oSD4gQx09EF
         dSeZv0o5LDbRgabZK0iwDs/jVP1AFvaOy6bb/RgX6/BfOlEEl9EjRdA1bYJer7S8Nc1D
         eUXkGnTIaSVWHKUAW5+kG7lCEa6wSUXx4ZUDUp4ICYQrzABsU4tjitGq2QILWEMHhh1a
         SRDxP4skB+naOraIcpc2Crf1m5pPnc7wCcaNL67ZepUyztr0qSpc8H9G9UK7HoGpdb6e
         liSQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5329HZSivh9+9sMBoIFxxwx3V8mIZrZo7IT+Hffz+qI9EQgJlQlU
	ctuC5oyR2OFG3Caqpo1PFG8=
X-Google-Smtp-Source: ABdhPJwKh1oe+EZ9FP2spNEr3lwGG5Byu+NY7eoJrcl6qfCgW/8dlmZ1Z1Th1a/2h+wIUF6DQMxkRg==
X-Received: by 2002:a05:6512:3d8d:: with SMTP id k13mr31447293lfv.163.1629885704592;
        Wed, 25 Aug 2021 03:01:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:91cf:: with SMTP id u15ls284671ljg.11.gmail; Wed, 25 Aug
 2021 03:01:43 -0700 (PDT)
X-Received: by 2002:a05:651c:1409:: with SMTP id u9mr35238415lje.429.1629885703623;
        Wed, 25 Aug 2021 03:01:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629885703; cv=none;
        d=google.com; s=arc-20160816;
        b=bXJ7myhwg4rlfCqLUxlLoFH3tgaHTrGR4GsSTl27/Tk7HzsggniAjkfNF02njmquXW
         fiKOQLTcAx3Fp8hGmNxsxebh8LGybuwuhhj9voLxMKR/JJtxk/XwTt/5FVvCqZiZMXhI
         ayynn1HjWj6aiWNqxPibkiI3FKLEVgrALTT6AOzm6oUWEffWrlg2hSS3a0446oXyfKI0
         4K3No9AAbRbAq/g/MOVYAK81pFkDCs3xT/bsd8YUrRBuV6mrk/fAWuZ0OAjPEycPDoEk
         9ckFkhpKoBFuwqOPP1SEaQjiYuOTMk0y//rMBFpMNnSeosDQkuN8+FXwxLLZOx2KAsp1
         TTjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=9oJ6CJBroI89A+Yc8quEo4xqgpEr0O1UTP9oPtzRdEM=;
        b=sit7iD3sqcEcVIQFxCBI4dnRL2MtneOoMja8jC9+J2mp6sx4ficiX8o/HAYhC/OkwI
         0zYBJO9AOldYk3pqX00u/qSy/qf6cdHvPD6yiIKfC1rQchWRUcfvNDQbr4Wup3suEdG/
         t2ES7+PO2kEH5R2QQhfgMUsCqJamQNhgJ+33PLf2VWbYdLbg9BuUpX70GRhTpDBm/91O
         FgRhWIDht0FZ4L6/qyVIq0HnjF+lfcJe32uLYDRj+bxKXRrJJYo4AogBEYINMeNhH7d9
         wTwL/3xoD/eBsXgPo06KCjLES7DYeKDnhHozPD+JXzFsqoM6nosC3u/N6NhnBxJ9AnZl
         D5ww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of cl@gentwo.de designates 161.97.139.209 as permitted sender) smtp.mailfrom=cl@gentwo.de
Received: from gentwo.de (vmi485042.contaboserver.net. [161.97.139.209])
        by gmr-mx.google.com with ESMTPS id c12si720337lfi.11.2021.08.25.03.01.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Aug 2021 03:01:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of cl@gentwo.de designates 161.97.139.209 as permitted sender) client-ip=161.97.139.209;
Received: by gentwo.de (Postfix, from userid 1001)
	id E4281B004CA; Wed, 25 Aug 2021 12:01:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by gentwo.de (Postfix) with ESMTP id E2A99B0021C;
	Wed, 25 Aug 2021 12:01:42 +0200 (CEST)
Date: Wed, 25 Aug 2021 12:01:42 +0200 (CEST)
From: Christoph Lameter <cl@gentwo.de>
To: Daniel Micay <danielmicay@gmail.com>
cc: Christoph Hellwig <hch@infradead.org>, Kees Cook <keescook@chromium.org>, 
    kernel list <linux-kernel@vger.kernel.org>, 
    Andrew Morton <akpm@linux-foundation.org>, Miguel Ojeda <ojeda@kernel.org>, 
    Nathan Chancellor <nathan@kernel.org>, 
    Nick Desaulniers <ndesaulniers@google.com>, 
    Pekka Enberg <penberg@kernel.org>, David Rientjes <rientjes@google.com>, 
    Joonsoo Kim <iamjoonsoo.kim@lge.com>, Vlastimil Babka <vbabka@suse.cz>, 
    Dennis Zhou <dennis@kernel.org>, Tejun Heo <tj@kernel.org>, 
    Masahiro Yamada <masahiroy@kernel.org>, 
    Michal Marek <michal.lkml@markovi.net>, clang-built-linux@googlegroups.com, 
    Linux-MM <linux-mm@kvack.org>, linux-kbuild <linux-kbuild@vger.kernel.org>, 
    linux-hardening@vger.kernel.org
Subject: Re: [PATCH 0/5] Add __alloc_size() for better bounds checking
In-Reply-To: <CA+DvKQL6pLfK1vRzaOkEWR7DQLgTh=WZTka2L5yuS8Lf_1ZmoA@mail.gmail.com>
Message-ID: <alpine.DEB.2.22.394.2108251158420.317806@gentwo.de>
References: <20210818050841.2226600-1-keescook@chromium.org> <YR4frlpfJQonPuKp@infradead.org> <CA+DvKQL6pLfK1vRzaOkEWR7DQLgTh=WZTka2L5yuS8Lf_1ZmoA@mail.gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: cl@gentwo.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of cl@gentwo.de designates 161.97.139.209 as permitted
 sender) smtp.mailfrom=cl@gentwo.de
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

On Thu, 19 Aug 2021, Daniel Micay wrote:

> For example, it will know that kmalloc(n) returns either NULL or an
> allocation of size n. A simple sample program with calloc in
> userspace:
>
>     #include <stdlib.h>
>     #include <stdio.h>
>
>     int main(void) {
>         char *p = calloc(64, 1);
>         if (!p) {
>             return 1;
>         }
>         printf("%zu\n", __builtin_object_size(p, 1));
>         return 0;
>     }
>
> It will also detect an out-of-bounds access via the allocation with
> -fsanitize=object-size including with a runtime value as the index.
>
> It's not as useful as it should be yet because __builtin_object_size
> must return a compile-time constant. Clang has a new
> __builtin_dynamic_object_size that's allowed to return a value that's
> not a compile-time constant so it can work for kmalloc(n) where n is a
> runtime value. It might not be quite ready for use yet but it should
> be able to make it a lot more useful. GCC also seems open to adding it
> too.

The other complication with kmalloc etc is that the slab allocators may
decided to allocate more bytes than needed because it does not support
that particular allocation size. Some functions check the allocated true
size and make use of that. See ksize().

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/alpine.DEB.2.22.394.2108251158420.317806%40gentwo.de.
