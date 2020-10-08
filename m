Return-Path: <clang-built-linux+bncBCBZLC554ENRBFW67T5QKGQETD5AMJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F9F228770F
	for <lists+clang-built-linux@lfdr.de>; Thu,  8 Oct 2020 17:24:07 +0200 (CEST)
Received: by mail-lf1-x139.google.com with SMTP id r6sf1454078lfn.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Oct 2020 08:24:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602170647; cv=pass;
        d=google.com; s=arc-20160816;
        b=AA7x+gb3970ro4uko8YCchYBaQxYTRkZst9w+YDb+ceinLC4nW6M2nuiKM0dB8BEg4
         hgPYXXMVpvE+PZtKtGEl9hiHoE36VLka14k1tJ+IyeNtM4GqSKsyuG4/yY1y1BJgeRof
         fREmV5BKAf0e24p4dhTcY+2+4uawdLrObh1LXxOz9+Nj4EzLi4LIchaqSE1rx3dC9y9E
         As30xNLs6ia90sqXGJODztXPgJeH2vCvyCaaeXN2Vet6trpY7d8WO5OInoWpzUfhqpz6
         ujm1lj2iWF8+DNrVOXIANRJ8A9FiEYON7NxwWG8UX1MpeAiFB9orTWhLJ9MgICKcK7di
         UGHA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:sender:dkim-signature;
        bh=Hebm/1gXtqTW2684fyPxQ+1zQIU+yCP77e0aBooT4wo=;
        b=nS4eBhsWiA5k7GN6TGSOR0jziBPzszN0tku+sQnOtVW1ZU4HPkxOAeXFZkXk9UNLar
         Rrwhxy5zQDObLzJw0xlfr+SmhdRjaFMKVlH91G/kv68Jb+jv9+OlyJyxcL3o8bewjOP+
         78/LNG5PkytW9n2/4wuRtOlwJQWZayMzwLvYN4LzwvuG/uUNsNUJzqQHhDyrtqVpJnW2
         VyfAEyfpuLPt9Skn6qp3oCYCwCrxBj7LutOkWS8Ebg5sJryh+Uj/cwvR0mLdBJm8sjRV
         3H9t0VVe+IsBoCTJzQD/CxbtFGsppYzTMuKUl0enmdxG7VZ1q75p0v45EqS5E0gwTwr6
         IJ7Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jengelh@inai.de designates 2a01:4f8:10b:45d8::f5 as permitted sender) smtp.mailfrom=jengelh@inai.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Hebm/1gXtqTW2684fyPxQ+1zQIU+yCP77e0aBooT4wo=;
        b=supwpq8xbc3UBBdi03BJBv6ThXNoi26ZQVbS9vmNvo0P5bdcGgFMKPvRlKKc37lgaB
         OLb8L+D7JMFMjlQpaJuFzvrFVFa9ygJ0pTUrPL9XrtRrQGrkzmudAIrbNLCpLZENtjf0
         zeex+oLPvxy1cuB0yw/ezZudrq6nJ/NhpVxsy3g0SVnTDz8CW7u9Qm0GZ5kitP6S+Ce4
         +md49E7WSf0q69q2qwuqTFWfXXEoFt67SdQOCJpLnOBFrLs4oS5UYQiObyELN4burGCa
         9HgI8tNhp7Mv2rIVhr/hfBws00/a2FnP+bQJxwtgZlTYnU5eceJd6sSr6TgiwL+oAQt8
         jSgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Hebm/1gXtqTW2684fyPxQ+1zQIU+yCP77e0aBooT4wo=;
        b=aI8Rw90Rn9WPadGASwIjUEwk78Mr4cZs37wPO/8s1z6YP5AxYQEMQQFboIZUpWwobA
         tYW0m76vaNpMVnfW0+tFIMLkCp9k5tVpnFLFtA5mdt7z6xYNnymZGGVPgga3OiS52GeI
         hkocQ6EMKZREzQMjqhMEMBUJS4pvPE2XAPpDTyK8uwq45rwmLhVtMpkeNjv6/c+mlDCH
         +yTXAwYEmZIjuXR96kP2Ol6BXTBb7yp0GLFDuQCMc2qxnv4TQHdnG6u5vqDQMwvi+dOl
         NrgJ26iOE2H7zDonCVVqe9g9KXmvct5/chAZISi7C+blI4qeDpOOslyGEarpIX9GA4Bg
         GOmQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531fa15rGX/jC8YGIT2bW3hWI3H1eoXIgSHRdjjvieURrm3JygjG
	6j17wsC9FLMdCbjrkAs9pkg=
X-Google-Smtp-Source: ABdhPJw5WA9JBkhcAGAdbWUYi6nidBPrurtt4J9p8jzSj79gxPuH5pRv02ze7QyTtlwteoe7G1i2Ug==
X-Received: by 2002:a2e:9b51:: with SMTP id o17mr3904505ljj.141.1602170646869;
        Thu, 08 Oct 2020 08:24:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:ad43:: with SMTP id s3ls3489548lfd.2.gmail; Thu, 08 Oct
 2020 08:24:05 -0700 (PDT)
X-Received: by 2002:a19:8116:: with SMTP id c22mr3162343lfd.101.1602170645796;
        Thu, 08 Oct 2020 08:24:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602170645; cv=none;
        d=google.com; s=arc-20160816;
        b=U9n2bajfqJMgDRptRkH4p02kC3F2bcppzUYO9VszeBv3T0ldex16VR8SWJC7H4d/iM
         rZvdD7W/UyOFd/1iQIHpwRfB9r745+rVMP+LLxit1kXa+vnHXbeW+6cbfnwCoFtcESOq
         Ze7snRHFspRyhiJaSnRpfP1biEj2n56zSmWjsvdjnZW3fHs45NJ03+ROG51OqwK2aJ/a
         vhg2oCh5YKgv9A/EGUkBQeV3GjxBHhy1JFzBlRseUihJE/UxFrI7W8kQkBo0FBfX7qQ0
         nXlv6WiurqlIWr/TEcP7+/oolEMda2itlhk3gGnADS8Q6V1Ar/R4htgJnPNqWk4LwkQP
         4MHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date;
        bh=Xv0GgH3hIsV199GK6f8sg9VY5w12vjI8U+YUJvD39y4=;
        b=VkOrHsdTSuFR2J43d9d8BzJX1ui2bdqydDDhMWpgrxxgMcR2v1FEsxfv6t79ELKtiL
         ev2Ay+QpJF2+BHdhz7XK6Sd9xUWi5Ax6OUB4Vn3BFJaWgi05iLHbAB2ZQVhY/llJbGPY
         jp07uuFo0q7F7Rq65KgDFEuQyXbeDIdDBuSh/AATb4FfLrfz8sUxP2H9Z66tgqUS3AE/
         DGaFd9nc4U/PxuDkiDqh//W6q1MVQi8AfjK/ES2F2AsHFtoYQqXy3pGZjCdmYvjENEJ4
         JbhBTQiw46cBeFYGsAoc6Fxq3377DkKHRSMl6AGmC9ENmdfVZVyRyEui+HfgD7j2PHJM
         qIog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jengelh@inai.de designates 2a01:4f8:10b:45d8::f5 as permitted sender) smtp.mailfrom=jengelh@inai.de
Received: from a3.inai.de (a3.inai.de. [2a01:4f8:10b:45d8::f5])
        by gmr-mx.google.com with ESMTPS id b5si162699lfa.0.2020.10.08.08.24.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Oct 2020 08:24:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of jengelh@inai.de designates 2a01:4f8:10b:45d8::f5 as permitted sender) client-ip=2a01:4f8:10b:45d8::f5;
Received: by a3.inai.de (Postfix, from userid 25121)
	id E3B3358758003; Thu,  8 Oct 2020 17:24:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by a3.inai.de (Postfix) with ESMTP id DFDF360E1940A;
	Thu,  8 Oct 2020 17:24:03 +0200 (CEST)
Date: Thu, 8 Oct 2020 17:24:03 +0200 (CEST)
From: Jan Engelhardt <jengelh@inai.de>
To: Jason Gunthorpe <jgg@ziepe.ca>
cc: Nathan Chancellor <natechancellor@gmail.com>, 
    "Gustavo A. R. Silva" <gustavo@embeddedor.com>, 
    Linus Torvalds <torvalds@linux-foundation.org>, 
    Kees Cook <keescook@chromium.org>, Greg KH <gregkh@linuxfoundation.org>, 
    Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
    linux-rdma@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: remaining flexible-array conversions
In-Reply-To: <20200424121553.GE26002@ziepe.ca>
Message-ID: <36r41qn8-87o3-2pr1-856p-040167pq097@vanv.qr>
References: <6342c465-e34b-3e18-cc31-1d989926aebd@embeddedor.com> <20200424034704.GA12320@ubuntu-s3-xlarge-x86> <20200424121553.GE26002@ziepe.ca>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: jengelh@inai.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of jengelh@inai.de designates 2a01:4f8:10b:45d8::f5 as
 permitted sender) smtp.mailfrom=jengelh@inai.de
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


On Friday 2020-04-24 14:15, Jason Gunthorpe wrote:
>> ./usr/include/rdma/ib_user_verbs.h:436:34: warning: field 'base' with
>> variable sized type 'struct ib_uverbs_create_cq_resp' not at the end of
>> a struct or class is a GNU extension
>> [-Wgnu-variable-sized-type-not-at-end]
>>         struct ib_uverbs_create_cq_resp base;
>>                                         ^
>> I presume this is part of the point of the conversion since you mention
>> a compiler warning when the flexible member is not at the end of a
>> struct. How should they be fixed? That should probably happen before the
>> patch gets merged.
>
>The flexible member IS at the end of the struct and is often intended
>to cover the memory in the enclosing struct.

There is no guarantee for the presence of such a struct.

In the case of the RDMA headers, even if we assume best conditions=C2=A0--
a block of malloc(sizeof(struct ib_uverbs_create_cq_resp) +
sizeof(u64)*N) and not some struct=C2=A0-- it smells a lot like undefined
behavior, because ib_uverbs_create_cq_resp::driver_data accesses data
as u64 while ib_uverbs_ex_create_cq_resp::comp_mask and friends are
u32.

There has got to be some aliasing rule in C that causes RDMA's
purported use-case to be UB.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/36r41qn8-87o3-2pr1-856p-040167pq097%40vanv.qr.
