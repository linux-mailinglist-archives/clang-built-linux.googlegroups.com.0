Return-Path: <clang-built-linux+bncBCFPF2XH6UDBBIOJY7VAKGQECAMD55I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53e.google.com (mail-ed1-x53e.google.com [IPv6:2a00:1450:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 855548AA38
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Aug 2019 00:13:53 +0200 (CEST)
Received: by mail-ed1-x53e.google.com with SMTP id r25sf3516350edp.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 15:13:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:to:cc:subject:from:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HiGK+mBgCz3tkdvj+0ass9IyGa2tUd5zIOih8uwtwIo=;
        b=HMeZe76UTM7BPbJwBUCyUl54xxdjAUs4UL/JcnWNoCFkJgRrmnkkZ1mAsBhBmW/Ynz
         Gxda0zCLVbW/0/eJW+dUdRkmcDZwXuFu3S3eh/C4zQNDbFyG67Oz6F3sFwb/2/NBwIwt
         3ko06AWSgfz5QhVgznzYoALyMHIkfeapOWUAjLX2DLSr59T0SJcFvb3fpFUjPe/qS9HN
         tS0nfZ0sKuRKdJdVlOWYQBY4inFU35ShMru79cSFJ1VsojJOgqU505/rFXkBtaTNI+KT
         U08ajc3nmg8GPv0DbhTv0YIro5kZwa1/blF41JLro/wfFNxOiNQ9/mNhrjMBk8Rg1b9o
         MNUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:message-id:to:cc:subject:from
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=HiGK+mBgCz3tkdvj+0ass9IyGa2tUd5zIOih8uwtwIo=;
        b=feYgjt5BXZH8CSSXxTcG2EoLHUIwJDOuYSnIaixTR2QY1mL9ibS8V4ExEcGKKH1/2L
         5I9TahQDIyKvG14mJYwFSWGcyuV6DUqDtW45dic/+Z76i/xl5v7aZzPJcibXkjZAOnni
         p9GslVOlzrG+iljeunSJI0Mv6cM2UsSyd7ucsZBG9QHog0WjjjkTRKGByUzEW852UmrT
         4EGyhpAITphnYi+0OUrtK+6m+wL7vPGkhc8a0GBQuMDtch3F6tn9Ad882EDxzFu35M4C
         a7ztWSJ7Prk+RNpzO0CIdp/Od/LNfVbBya8tqhDMXbaO/B38ZXxLAq9PTfZerMzEHV5G
         uKug==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXQ1uovmib4ZT6AiPZVg/dOfDJEhbIJYZK9yuoYuXylPkRhJ1QJ
	t8gBprykvqOrdQTR8y1RjSA=
X-Google-Smtp-Source: APXvYqw3p/2VIFcoiUVdZvDw7GWSPDXQkP4hrwUbz7z6HBbniIDhYUWk++FZBGmRqAvTq/UslkL0xg==
X-Received: by 2002:a17:906:2ecc:: with SMTP id s12mr32978113eji.110.1565648033336;
        Mon, 12 Aug 2019 15:13:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:970e:: with SMTP id k14ls713517ejx.1.gmail; Mon, 12
 Aug 2019 15:13:52 -0700 (PDT)
X-Received: by 2002:a17:906:3518:: with SMTP id r24mr13767296eja.133.1565648032858;
        Mon, 12 Aug 2019 15:13:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565648032; cv=none;
        d=google.com; s=arc-20160816;
        b=S9YM0pCaWVPB/0e3ab7MXzZiDnXUwEAAKMTk23eKglu5w99XBLb/Q/Ihk7gBgERyQP
         uMoQof3wKLPi5TXI5dXA+kdIVcGaqBxWmIj0T+/KL66fgfNRRC8qBJ5I2quCfSyD2UyE
         Hz9c6KRccWV7w2kxj3KylkfqzTWkT2SGlFAV9K7cMGV4ggmEUOONgBX5rcZKRv6+mv39
         eJt6M7dCX7lQiPQtkkhGRYWmDqxV9ewHhZwGtpT8iLw1/phR1RnGcPzGNAiqd/4YelVO
         8Sj4+N0LzSnbFTViyIvmLE3dzrJXsp9XnvhXTb2M1ZRy7SLIua9+pUTmaJk0S+2kHYFr
         hPOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:from
         :subject:cc:to:message-id:date;
        bh=HiGK+mBgCz3tkdvj+0ass9IyGa2tUd5zIOih8uwtwIo=;
        b=Cj+ncQ65KbgR6S8GycleUxuRM0bS0/GLCwTv6jOQgI3MUUyD/0Y2vDAzcI4GOP67Tw
         1LOTLTa4tYG8rtj9VqEsC4Lq4QmT5bx+5HVfDbH6usIBEaAY2XXIQMygC5RHdBKqH2Gi
         tv0aW6k5Ycb9CuF/NMCsq1xby5tC1SoOLUrpdpW5siJuk7wZe5gQnHASMTZresjGFT2Z
         tIAn24iqdhp7L4o4npxSnqaFk2CJfmO3lAnGvBfILmsUCHmi3OHT1/iwB4L476EDjGt0
         5uhTS1ktB2WFDCTF6CTsly3WD+/sBlp/eJryGngDpxrmG73LVj24BkfXtkbEhzq1Fhvi
         AHaw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess record for domain of davem@davemloft.net) smtp.mailfrom=davem@davemloft.net
Received: from shards.monkeyblade.net (shards.monkeyblade.net. [2620:137:e000::1:9])
        by gmr-mx.google.com with ESMTPS id m16si295777edv.2.2019.08.12.15.13.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Aug 2019 15:13:52 -0700 (PDT)
Received-SPF: neutral (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess record for domain of davem@davemloft.net) client-ip=2620:137:e000::1:9;
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
	(using TLSv1 with cipher AES256-SHA (256/256 bits))
	(Client did not present a certificate)
	(Authenticated sender: davem-davemloft)
	by shards.monkeyblade.net (Postfix) with ESMTPSA id D331A1264D004;
	Mon, 12 Aug 2019 15:13:47 -0700 (PDT)
Date: Mon, 12 Aug 2019 15:13:44 -0700 (PDT)
Message-Id: <20190812.151344.808737276838117231.davem@davemloft.net>
To: ndesaulniers@google.com
Cc: akpm@linux-foundation.org, sedat.dilek@gmail.com, jpoimboe@redhat.com,
 yhs@fb.com, miguel.ojeda.sandonis@gmail.com,
 clang-built-linux@googlegroups.com, ast@kernel.org, daniel@iogearbox.net,
 kafai@fb.com, songliubraving@fb.com, sparclinux@vger.kernel.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org, bpf@vger.kernel.org
Subject: Re: [PATCH 09/16] sparc: prefer __section from
 compiler_attributes.h
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190812215052.71840-9-ndesaulniers@google.com>
References: <20190812215052.71840-1-ndesaulniers@google.com>
	<20190812215052.71840-9-ndesaulniers@google.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12 (shards.monkeyblade.net [149.20.54.216]); Mon, 12 Aug 2019 15:13:48 -0700 (PDT)
X-Original-Sender: davem@davemloft.net
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess
 record for domain of davem@davemloft.net) smtp.mailfrom=davem@davemloft.net
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

From: Nick Desaulniers <ndesaulniers@google.com>
Date: Mon, 12 Aug 2019 14:50:42 -0700

> Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
> Suggested-by: Josh Poimboeuf <jpoimboe@redhat.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Acked-by: David S. Miller <davem@davemloft.net>
