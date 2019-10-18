Return-Path: <clang-built-linux+bncBD4LX4523YGBBUNUVDWQKGQEQTV2SFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 951D0DCFB4
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 22:02:26 +0200 (CEST)
Received: by mail-oi1-x23b.google.com with SMTP id z20sf3860524oih.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 13:02:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571428945; cv=pass;
        d=google.com; s=arc-20160816;
        b=kTN0BhMVUzF8/jW/HqTl/lpkOjyymyqEB14ATSh4ZKviUDF1BwQS97u1W+qGS/zLi4
         WBQT2oJJ/Kst2Ica62hum8lJ7cK9OqHk1jCQHRcHYbrWWkRW6xSVvIjR6fR9L18Q80qr
         tNQ12Hj8MbXqpnatgOrZULj4EXAH2mnu8kMEPBXloKTHXckgY+F/y0lnbNv3rZJOqQje
         Jt0580W1n6MNbs3HHfckHXkWy/f93Z1iewdi5dqNJ/B4ld4hrNIelFtFwBUPdc0zDH4O
         23+Z+LXfyxQ4P43NJeRoo+RcXgUGDzTHmmvNatgmCeZdq97ereeUy6j99KLNGTG+V7wn
         txvA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=GILhjZJYrHt23A1UO4knN+1oD1nuKZpj1yiSTn02W3c=;
        b=0xTvNL4/FZ1DSu4zOM5NjMl57YSnfGAflEs7LOIIadPurRbEYTEbusvf3XWy1WYG2P
         XnwGQqeEkwqHrfR5a+3qu4vlmYmdI1CiygwnPGujeOkPEmBnmlS8wZfeWNF2GYswCZoo
         ZfqrWVL8980VKkOk8gqA1bv+JyUJaioPJOpbCeRuEaOYiUi+YJ78CP3WM2b6M6P8Ttwk
         I0mqqo5j/w+uPZP3v/auQHRALbitlRCyM4s8CR6wXKtJNdgUXqsfGp57yMzoosQFjLbG
         Er9ZvGEzcj2x5AmL65eQDg0+lSgivtyb6mMbazReWDwQOMzzxVSk2BcicAfogq0hpfyB
         MD4w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GILhjZJYrHt23A1UO4knN+1oD1nuKZpj1yiSTn02W3c=;
        b=KcTZJzxgPeFD092PDItAD5SbkdrTIq5B11NNPPdeYkoAYSiF00q8LSBMlrexltHeii
         eTOrESCqqYlBw/lLDJRfRijOlO/0Bn/C4edkUxqVKnk+Uhhi478Zka7FDqpORYo+om03
         riU3tiz3We7f3hl6sClG9zjnGQ6SYbZDx/P9ukoHRtHHkLFSPvczJRIrm416zD3xX7lN
         xSEZUCv+F3Cme/hZmX3tPGkWD2LHHMeRL6J9hd+drvsGgidV1y0zl2duDamYAPjVP2Da
         656uaMGpUJEQ1IBoN5SjpOontNCx89lezSYGweeOYYRDeZ96cCyIJBO1x6CKmvx5pypS
         6bow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=GILhjZJYrHt23A1UO4knN+1oD1nuKZpj1yiSTn02W3c=;
        b=E9t20irw2RjgcudIlQ0cpqL+1vxZ1kFf1COt0djqyGQTJOplZYsOBkpwd5+nocPwOh
         sXne+xRJ5pMCQeuoQICDl0WotsWkMQhojv5PX3fdfcQwU2t4HgaiejGUdP8Q06l20D6S
         PlfQkaCMlgCPuN3cuf3HieU/hYQjmOSFT5LI3S4f4Mj8+8p/YF6BywqXiUqzpq3/4PBc
         C79A4PPiTFNL0xNu8VcrMDZDtykIQQla/3bEDYfBF0NNDThFQUyVmFVvGL+ER4/9a8sS
         /NaVtyOzdtuD7M9Vjbf4iWAWZ3wbMScN5ALDje34ZF2ZVCACRJEmwL0NNy918JAwnRQz
         YEZA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXUARNlxJQMAAEpTVLX7stomtNdJraLDXVpgRXVNlt5lMxnBCOS
	2+xPqnfe6IjuSJSaaUFKwTw=
X-Google-Smtp-Source: APXvYqz8dgOK6+YWxJb2yqeOOPGFgPw7TOos/7s280lVTcJ0syMFp6NbuWZXPHdce/BjHjKyahgLVw==
X-Received: by 2002:aca:4a49:: with SMTP id x70mr9691306oia.17.1571428945474;
        Fri, 18 Oct 2019 13:02:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:1d1:: with SMTP id e75ls1258974ote.15.gmail; Fri, 18 Oct
 2019 13:02:24 -0700 (PDT)
X-Received: by 2002:a05:6830:1e1a:: with SMTP id s26mr9121488otr.5.1571428944921;
        Fri, 18 Oct 2019 13:02:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571428944; cv=none;
        d=google.com; s=arc-20160816;
        b=sAEgcUwiakA038Rhanm5FqqOyGo8KqgdSJr1mt2QIlvcVerLmEZjbEE26Zm62+97+o
         QfMfnoZYCSld8Kv92k9tmDnjB0PVRhg9TKHJk7iFIBL7/eKhz3HyVpwM/yZaFx7q2b4y
         oi26qIY9fVJx64YCYAVYREJtA107XjqTLtUbjWbDIK3fHdsigPpRzLI/hAWO7u48667v
         puXKRmKabi9wUOdKpqRv99eO4v7npK9QJNIo6p83PVYtbi7EAy95dn+EaCB6415aGQ3J
         T4V/F1aOnfsfYuedaMUz/C9lKY0SlQRSL2OTD5JrHYasrr9aLRIgHO/kx2HfswTqbgW8
         aIwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=bFsPKJGhCYHdyHTlvzsP2IpglamPGnCzr6dPQxIbnbM=;
        b=J4K8tVKPtbXh/3hWwil6VLWc6GQl57sjzCn0U1jx5d6mRiRT5m4KK3rAOjXPt52E+/
         aaLBehJoc5fiMVxoewjpmCpHtnqH+Rp6k8b2Rbwo+JpKe1864gAO2C0xKetL2mX6sm29
         5sW+QcZMf7ZRsECdLVOsr6zHJ77Kl0V+VDGVn9vlsFYULGItiex+/YQ4kAJEe0jYeOtp
         PDvVEQR/qWgn3zV5yt7IPIQfdSFeP4oeZ6f5WSUNLm4J47wgBUcvW5VD7A3gwodl+f9/
         1wnPFv71XJ2/Zowcej2X+4IeiZ7OD06Fq4PQPwWCuAy9tCFCSPjZ/OreLvb9WgpjtShY
         Qi5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTPS id v3si382429oth.4.2019.10.18.13.02.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Fri, 18 Oct 2019 13:02:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x9IK2BmA030151;
	Fri, 18 Oct 2019 15:02:11 -0500
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id x9IK2AiY030150;
	Fri, 18 Oct 2019 15:02:10 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Fri, 18 Oct 2019 15:02:10 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
        Benjamin Herrenschmidt <benh@kernel.crashing.org>,
        Paul Mackerras <paulus@samba.org>,
        Michael Ellerman <mpe@ellerman.id.au>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
        LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v4 3/3] powerpc/prom_init: Use -ffreestanding to avoid a reference to bcmp
Message-ID: <20191018200210.GR28442@gate.crashing.org>
References: <20190911182049.77853-1-natechancellor@gmail.com> <20191014025101.18567-1-natechancellor@gmail.com> <20191014025101.18567-4-natechancellor@gmail.com> <20191014093501.GE28442@gate.crashing.org> <CAKwvOdmcUT2A9FG0JD9jd0s=gAavRc_h+RLG6O3mBz4P1FfF8w@mail.gmail.com> <20191014191141.GK28442@gate.crashing.org> <20191018190022.GA1292@ubuntu-m2-xlarge-x86>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191018190022.GA1292@ubuntu-m2-xlarge-x86>
User-Agent: Mutt/1.4.2.3i
X-Original-Sender: segher@kernel.crashing.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as
 permitted sender) smtp.mailfrom=segher@kernel.crashing.org
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

On Fri, Oct 18, 2019 at 12:00:22PM -0700, Nathan Chancellor wrote:
> Just as an FYI, there was some more discussion around the availablity
> and use of bcmp in this LLVM bug which spawned
> commit 5f074f3e192f ("lib/string.c: implement a basic bcmp").
> 
> https://bugs.llvm.org/show_bug.cgi?id=41035#c13
> 
> I believe this is the proper solution but I am fine with whatever works,
> I just want our CI to be green without any out of tree patches again...

I think the proper solution is for the kernel to *do* use -ffreestanding,
and then somehow tell the kernel that memcpy etc. are the standard
functions.  A freestanding GCC already requires memcpy, memmove, memset,
memcmp, and sometimes abort to exist and do the standard thing; why cannot
programs then also rely on it to be the standard functions.

What exact functions are the reason the kernel does not use -ffreestanding?
Is it just memcpy?  Is more wanted?


Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191018200210.GR28442%40gate.crashing.org.
