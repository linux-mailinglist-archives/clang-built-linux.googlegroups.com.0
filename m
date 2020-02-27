Return-Path: <clang-built-linux+bncBAABBBX53TZAKGQEZKECQGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93f.google.com (mail-ua1-x93f.google.com [IPv6:2607:f8b0:4864:20::93f])
	by mail.lfdr.de (Postfix) with ESMTPS id 507E3170F43
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Feb 2020 04:59:03 +0100 (CET)
Received: by mail-ua1-x93f.google.com with SMTP id t24sf398272uap.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 26 Feb 2020 19:59:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582775942; cv=pass;
        d=google.com; s=arc-20160816;
        b=Vcg0iOka1mQSfyipa5OZBrdZO2W9ov7O0jZcQtXrlBaKKxZnGtTrNpcrRGzEmAe278
         u334UkPHR43FHYZ2opa3XqUTGDyP6cdzA/rWsWgrNyTEmzFsiyQv/MM6tNtwMi2ca6Nz
         ahz9FmZghKSz4x2Mmqvfaqs4KSZHhkZOOMnGTmR3VICb8x4HzCwfpeN6JlVl/HOwSPtB
         suM3BU3yad0CsKXdc5up1z3G3BeMP+ooz4dpg69oF4BmAJm1KKq3jg/B4kt+Ih1UcrmL
         pLVnflebRaRYxToD0s4dCzeWPlnLQdrs+8GILYs8jK+rwXKx0bm/qmuRbEFtBSDR53XI
         J8CA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=iApBFrmzWPv7RXaPB9ru8fFruMP2Cgf/SpvAtQa/xpM=;
        b=oGdDLo9kYexc2IGKvNLVnOJW+wZgvFsmkPOP7/66nFOjAR8AxwtTMsEXjXSQLaftGx
         PV0bLWF85pPzj5Om2lgunNcvRTWkNEuzFVXy09gvpINaQ+Y7ZY/bjr8O9yor29cQhTed
         fiS7m0GuKL0qY4OUlWK1KNwSJ/mBWlIt3s2UM3m7sIXW8Qf9YdU9gpgyJWPPWBO3hZ4C
         3hjg2IjQLoOKhLeNZsPdjUdasZb9YhWbOfFWnE4qsHHQJdFrCxYK1Bwkt3icD0RTXTUX
         EPE96SKDkwHx4vD3rja9efmoad3CJvTOBvR80CJcNjEO/DDnkHt2dkJNufJfF5z4Bk/8
         ZIrQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=phyVR1Ua;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=iApBFrmzWPv7RXaPB9ru8fFruMP2Cgf/SpvAtQa/xpM=;
        b=qYHkjBGcykgsVb9pWHrVOZH3cXvJdm7RGumgeKi6og54/agYpHphIUdyVhvdQRoRMc
         Ydo5gG2pXONrTY7c/CYsMFcSgnsRTZ535vPFQGFy8W5JmxC1AgrmlDRJtkTHnXw8muhs
         wMiy8pcvzMOQLFGePrjRAWGn44aaI14DZoJIRLRbyP/6/VYYdxcelLYWMvbKJxj9xKvt
         cK2AIWufHTsdh80rVkXjzO1v7zWL5IsoHxQemBd817+4yrJVxBYMQP390o2Y0u3nX1My
         slQjhBRpZ2PvtBcNue+EqgaSv3fdTONBhzYhDlQH/ysbGLlfX+9qL2yGrvgSeVuHTkn1
         yOPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iApBFrmzWPv7RXaPB9ru8fFruMP2Cgf/SpvAtQa/xpM=;
        b=ueB/AJKY27v4Y9psLcRVLHof1HcQBjHVre3ZrpUN+fxRv8pQUrhGQG0YG8PBDekSRD
         QAJOLN4zncTiyBF01GztLQIIZ4jsIFGhUJTuqjA0kmIdHr6AmzknNDktLFL58/sFmfCo
         8cZswk8HExk/mlrqj56LcpZNZtmUQBBXrrxdFTwsASTCIOPCKOu25nppJ2n6E8FlBNxM
         Fx6UzsQpdTUZmuFJS5ujmOmyFeHMWhAf6q4WpbwddraciiAUwX7CqAvvKRtfvuFUHl5p
         3QFEi/0TpzWL6WT5eou3YpVkdSPnR59k6ws6dzjzNhEuUW2wBJaE0m+odf0RT/1dRSqR
         ZvAg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWF4sTYYtIkvETVTrTB60awzzUeSMr0EHfQVOlKuHm8oQ2wTpF9
	ldqw+ipQN/3OprBzxAKfFAY=
X-Google-Smtp-Source: APXvYqyefJPcFLV2dlaAyqv3wYQCuakA00g0qbgqaRQ3Vr4tudVk2J4pPultE2pf3RC5rbndqqHK9g==
X-Received: by 2002:ab0:740e:: with SMTP id r14mr1527436uap.104.1582775942381;
        Wed, 26 Feb 2020 19:59:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:a017:: with SMTP id j23ls71318vke.2.gmail; Wed, 26 Feb
 2020 19:59:02 -0800 (PST)
X-Received: by 2002:a1f:a985:: with SMTP id s127mr1488667vke.48.1582775941957;
        Wed, 26 Feb 2020 19:59:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582775941; cv=none;
        d=google.com; s=arc-20160816;
        b=II1NkXKdap1wGo+wvDf7f6l8pzITc2yY1j8WAPuVK78sWaf+djWfpXEhvfK5R2Bc5n
         olY1YBX3FOysvN9YDwRvyI9K0nAbzy9s5LXvJBqd048h2XFI98sfYtK1brdAN41N7ZM8
         6RwtiORVYNITL7ORZ6kF5s7qhir/U2pVQzGHADaCC0WkwJbB5tRN+dTFxtB/wTyRRm/Q
         6D07LaN4SKaU/zGSowXojQ//QufC0NihKSkMqoyp95dFdWq1C1xdBeAHYHbFhdVTqbLl
         NMKeRybM6ruqWbTMnpqvN3oT+qbQxMsXtaHS+b34I2/nCVV1WUjEFSEXHRzQM/RJ5wAu
         Qhiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=4uYESe3IX1A8M0n72AIHavcEeKHRwHUScqFhq3hkdVY=;
        b=M2mSaNiXOmOuOSfgslptpIi1VilSkXtALuWAw4zXZjeo8xmXcHHiY8JLVPJU5kjsw/
         OfDgR4sIw1y3JHBVy1vya8YhW/GF4fBRi0+1q4Ha42cf1ybxlY0RSKRwmNpaWuwtwCAM
         Itgx6xijQE3QasjNkT22g/zkCEwfX+mgk75aK3STdHLkQ5AFkW5hg78R94Yq+5AP5P0n
         MyevOEu6YD5YuZZhhTs4IiMkTr0fomeCTN0B+HFjjSPSxSayF6Msqb9DJrlJncgr3qa+
         hntVard+KGtaR9I5XUwZXV38L9AxuxHGL1/TqnweV9pG6KckubHfX9bptnHMt6isDaA4
         Z1tg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=phyVR1Ua;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-02.nifty.com (conssluserg-02.nifty.com. [210.131.2.81])
        by gmr-mx.google.com with ESMTPS id 203si17107vky.2.2020.02.26.19.59.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 26 Feb 2020 19:59:01 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) client-ip=210.131.2.81;
Received: from mail-vk1-f176.google.com (mail-vk1-f176.google.com [209.85.221.176]) (authenticated)
	by conssluserg-02.nifty.com with ESMTP id 01R3wfhw014711
	for <clang-built-linux@googlegroups.com>; Thu, 27 Feb 2020 12:58:42 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com 01R3wfhw014711
X-Nifty-SrcIP: [209.85.221.176]
Received: by mail-vk1-f176.google.com with SMTP id w4so350145vkd.5
        for <clang-built-linux@googlegroups.com>; Wed, 26 Feb 2020 19:58:42 -0800 (PST)
X-Received: by 2002:a1f:2f4c:: with SMTP id v73mr278752vkv.12.1582775920997;
 Wed, 26 Feb 2020 19:58:40 -0800 (PST)
MIME-Version: 1.0
References: <20200225210250.64366-1-ndesaulniers@google.com> <20200226232336.252872-1-ndesaulniers@google.com>
In-Reply-To: <20200226232336.252872-1-ndesaulniers@google.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Thu, 27 Feb 2020 12:58:04 +0900
X-Gmail-Original-Message-ID: <CAK7LNASGSWTO+MRAFg0XKvucSe0-y6-i0MiUoSLB4fMyFaLj0g@mail.gmail.com>
Message-ID: <CAK7LNASGSWTO+MRAFg0XKvucSe0-y6-i0MiUoSLB4fMyFaLj0g@mail.gmail.com>
Subject: Re: [PATCH v3] Documentation/llvm: add documentation on building w/ Clang/LLVM
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Jonathan Corbet <corbet@lwn.net>, Randy Dunlap <rdunlap@infradead.org>,
        Michal Marek <michal.lkml@markovi.net>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Kees Cook <keescook@chromium.org>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Sedat Dilek <sedat.dilek@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=phyVR1Ua;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Thu, Feb 27, 2020 at 8:23 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> Added to kbuild documentation. Provides more official info on building
> kernels with Clang and LLVM than our wiki.
>
> Suggested-by: Kees Cook <keescook@chromium.org>
> Reviewed-by: Kees Cook <keescook@chromium.org>
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> Reviewed-by: Sedat Dilek <sedat.dilek@gmail.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
> Changes V2 -> V3:
> * Drop Randy's Suggested-by tag. Sorry Randy, I do appreciate the review
>   though.
> * Add F: line to MAINTAINERS.
>
> Changes V1 -> V2:
> * s/On going/ongoing/
> * add Randy's Suggested-by
> * add Nathan and Sedat's Reviewed-by
> * Upgrade Kees' Sugguested-by to Reviewed-by
> * s/suffix/prefix/


Setting aside the minimal version discussion,
I am fine with this patch version.

I will apply it shortly.

Thanks.



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNASGSWTO%2BMRAFg0XKvucSe0-y6-i0MiUoSLB4fMyFaLj0g%40mail.gmail.com.
