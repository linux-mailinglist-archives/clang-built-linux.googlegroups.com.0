Return-Path: <clang-built-linux+bncBCGYFYHOWEFRBF6LX6FQMGQE3KYQLGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id 4238E43482E
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 Oct 2021 11:47:04 +0200 (CEST)
Received: by mail-qt1-x83e.google.com with SMTP id u5-20020a05622a198500b002a7b4f73ba5sf1666828qtc.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 Oct 2021 02:47:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1634723223; cv=pass;
        d=google.com; s=arc-20160816;
        b=eM49Z7oRcPmjBAeS1nsDEvi//XpPXKhluy2+NlZjoaeK9jibDOmd2VEbICBqwTS7cS
         RdYpXXTBoXgkhjXqLhxlUPHoUqDNWPug4npwKyqNyQVH08wHmeeaJzmVmtO3chIh+FRS
         MOnZAs5ifHqn2cMcSWA1krp7ncwSykMe6DyQEiLSdhZSXCWfTVMr3NeY8ygXucV/Do1F
         dJlV15u9MP2ArFShDlBi3derByCXYqEOOuZkLkjo38dOqk4GhSPFttQH03U7xzL2oXpF
         C0yNMiqD/H1l9wecX23PdWFjzjObf+PshsteyElWPLZfUnsYj5K7MEwqVJXztHW1U7tS
         6oTg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=FLh6B3W2YUeIqTkHkh8Br2VoGoU942j8y4xVJ5INM54=;
        b=KdJZC1lrlZW27Ges45tYVDYQ37tiwacTjk5yqRdZ7elKmz1BoCMiGphBItuLf76g+u
         neYxcJHTWrwIvOTUyN9+qDLuT6z9vzTfAoZzpah5EPRVQDLe7qJDS+AVJREBqHGEdhoS
         Xh/ffVgui2t922Z3BFGPAQqYHF4iw+0/P5qIcPb7CWPGjD/ax8xwoaFLA9uZwwrbzFFh
         DaRJVJCl2o84SZEsDiY88InKY14TF2CTn8mN8ljuwjUKiQxpCjI/rBm54AT58hNX8zrg
         DYd+V5Uoz23KN1wvGEQn51Z0lHq5/ZnfLaKGCoAoR4n53mbRpAybdJmDKoQb4yRibIka
         xnVg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=NtNUyVK0;
       spf=pass (google.com: domain of toke@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FLh6B3W2YUeIqTkHkh8Br2VoGoU942j8y4xVJ5INM54=;
        b=TQqnoxR5mqeFlHFLBAxX0v91PucT4eMurpwCMGZvdP0KT7H/n27DoOFBrU+GA3+te8
         h8ZvLdTQUNebIxkGE8ABSVMGGmL5VmAt5pTVqthAv+8k/rbEJ0MjUn4W1CrR+Vqe/hiy
         SBwReRNM9IStiNMZp2Y2Ll3pSHgYfOxu21AbEpapJXGtu9oH+qOSgyIiZbuXUbNKL8X0
         7tfI7XtgvS2QKRg1EVV+zUdi2Uk2mCKkH0UZGd1Jp1zbqKTkF2h523xg7JEOnhTtMmrC
         LAHIa9Ero1aXpw1a1EtjZ7wllzVI8Csk7aa0D36BuIsdFLfupYvMwuomU3UgYeyDNfZU
         MK6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FLh6B3W2YUeIqTkHkh8Br2VoGoU942j8y4xVJ5INM54=;
        b=LTrpry6lKXyUU7cGz6M+A2XaPuaUl6/H0QfG32yTrjADBsoXyQ1LQTQlOFuMrtHvq3
         qq4KcANLnocG9u+EzAz3qXDk85dz+Y8vFOjLaL3GK6LGHzlEIKIWTYlGomw7UPtRvuOE
         dJ0kQ6NFzKrpf0aStPkB0pWY5meGAVY/pSZLZt4ZNulq/7/qhzFDLmlOBvec58yA+mED
         3imQrgzRBJbbKrfZFcEez15vLnHtq2XaOLsPKINGGzvinfuPAsYJa91Dh0me2BwHAFfh
         rJrpBEeYJc00vT4Zr5M3GxfhvLQ8J/NLgMMa0uTxS6srdq1tRsyIRhdMUYbs+2BA0L4H
         4nkA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530VnUTJ/CoJdTS05EmtsmCXyFrBUncKkOxdRV6tiw4LyApK/fSD
	fVhZax9/cXOw+gnbruJZfT0=
X-Google-Smtp-Source: ABdhPJxZU6r3SLNYotojMxCXIs93aW1dTtdUf+CS3d+vMvEU+vGHOfcAfD+wRCg1ma7NFsW2lR63OQ==
X-Received: by 2002:a37:68c4:: with SMTP id d187mr4346982qkc.36.1634723223111;
        Wed, 20 Oct 2021 02:47:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:11a:: with SMTP id e26ls894889qtg.5.gmail; Wed, 20 Oct
 2021 02:47:02 -0700 (PDT)
X-Received: by 2002:ac8:20a:: with SMTP id k10mr5779394qtg.280.1634723222695;
        Wed, 20 Oct 2021 02:47:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634723222; cv=none;
        d=google.com; s=arc-20160816;
        b=MZ2u+t/8EfmzIiE2/+jz5gI4lRUrZ1MH8aJt1Y7BF4n161txDY3dZd3bONvMOkUofJ
         4nk0XLGYvTz33QTCDEOlYJRcc2PAXjkfExEnosLsl+DK1RtxH9k79zk9ZTGOdSitW6A7
         h5qmOUBzW0wJ+6sNlIQC7iQ7Pm9wb33wY6zJWVJt8yxospLZC2zQvBvB+zCyqwO3cHB7
         kS9Z1EWIeDNWsstQEka8fzlIe4/6G8rHQgLNH0kMK0DkrKHjDWPeSHZSMR28YL/lhxYM
         BTl3nG8TjzMQTOxqNKavRxEywzoUP6GOOnW2IQV0mKGNYcqWOuKvrcNVVTXBbjSVRyd4
         yXWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:dkim-signature;
        bh=MmnjAvIGZuMXOqe+/bXaxv87jyZihvkxREajhAeaycU=;
        b=qAy6w34BLMWP+b3AlOYC+7fenb4MNpxZy7ByZcecKAPspuAwlEA3ig61pPos/WzMC2
         OzwTe/khFb8RuLQhGJ8k1TLQLqDVutB2dLuqQ+THw8nBnyXs2LIN8mQ1ky3RRK51spOh
         nosRg3oVylA7kYvb4ZGfoHDov5if9UkbNXDAj9g7Uftsns5i3rY6V+7IPt+j9xLPT35p
         byeYj0GzYI4ebWUAX6MoEzjIn5Rdv1yFPgBmXHO6M/IG1kILqjw9d/MUzfqa/C6V3hyJ
         pBfcoWDTYtppU0yaySa8fYWBuvzMlP7eWiKJEWV5i1NNqQtJI2IOA5x0i3WBuvXdttpW
         JAOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=NtNUyVK0;
       spf=pass (google.com: domain of toke@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.129.124])
        by gmr-mx.google.com with ESMTPS id z23si178877qko.6.2021.10.20.02.47.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Oct 2021 02:47:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of toke@redhat.com designates 170.10.129.124 as permitted sender) client-ip=170.10.129.124;
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-51-9KwAcY5cMZiXna9J-dgEFw-1; Wed, 20 Oct 2021 05:47:00 -0400
X-MC-Unique: 9KwAcY5cMZiXna9J-dgEFw-1
Received: by mail-ed1-f69.google.com with SMTP id h19-20020aa7de13000000b003db6ad5245bso20539523edv.9
        for <clang-built-linux@googlegroups.com>; Wed, 20 Oct 2021 02:47:00 -0700 (PDT)
X-Received: by 2002:a05:6402:5216:: with SMTP id s22mr63058931edd.167.1634723219337;
        Wed, 20 Oct 2021 02:46:59 -0700 (PDT)
X-Received: by 2002:a05:6402:5216:: with SMTP id s22mr63058884edd.167.1634723218938;
        Wed, 20 Oct 2021 02:46:58 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
        by smtp.gmail.com with ESMTPSA id b7sm806718ejl.10.2021.10.20.02.46.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Oct 2021 02:46:58 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id DEF5B180262; Wed, 20 Oct 2021 11:46:57 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Maxim Mikityanskiy <maximmi@nvidia.com>, Alexei Starovoitov
 <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Andrii Nakryiko
 <andrii@kernel.org>, Martin KaFai Lau <kafai@fb.com>, Song Liu
 <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>, John Fastabend
 <john.fastabend@gmail.com>, KP Singh <kpsingh@kernel.org>
Cc: Eric Dumazet <edumazet@google.com>, "David S. Miller"
 <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, Hideaki YOSHIFUJI
 <yoshfuji@linux-ipv6.org>, David Ahern <dsahern@kernel.org>, Jesper
 Dangaard Brouer <hawk@kernel.org>, Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>, Brendan Jackman
 <jackmanb@google.com>, Florent Revest <revest@chromium.org>, Joe Stringer
 <joe@cilium.io>, Lorenz Bauer <lmb@cloudflare.com>, Tariq Toukan
 <tariqt@nvidia.com>, netdev@vger.kernel.org, bpf@vger.kernel.org,
 clang-built-linux@googlegroups.com, Maxim Mikityanskiy
 <maximmi@nvidia.com>
Subject: Re: [PATCH bpf-next 07/10] bpf: Add helpers to query conntrack info
In-Reply-To: <20211019144655.3483197-8-maximmi@nvidia.com>
References: <20211019144655.3483197-1-maximmi@nvidia.com>
 <20211019144655.3483197-8-maximmi@nvidia.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Wed, 20 Oct 2021 11:46:57 +0200
Message-ID: <87ilxsf2pa.fsf@toke.dk>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: toke@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=NtNUyVK0;
       spf=pass (google.com: domain of toke@redhat.com designates
 170.10.129.124 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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


> +#if IS_BUILTIN(CONFIG_NF_CONNTRACK)

This makes the helpers all but useless on distro kernels; I don't think
this is the right way to go about it. As Kumar mentioned, he's working
on an approach using kfuncs in modules; maybe you can collaborate on
that?

-Toke

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87ilxsf2pa.fsf%40toke.dk.
