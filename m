Return-Path: <clang-built-linux+bncBCRZR4WKEIILZXGLQYDBUBFP4QPAW@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x239.google.com (mail-oi1-x239.google.com [IPv6:2607:f8b0:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 456513B1597
	for <lists+clang-built-linux@lfdr.de>; Wed, 23 Jun 2021 10:18:05 +0200 (CEST)
Received: by mail-oi1-x239.google.com with SMTP id y137-20020aca4b8f0000b02901f1fb748c74sf1237395oia.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 23 Jun 2021 01:18:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624436284; cv=pass;
        d=google.com; s=arc-20160816;
        b=MR52FaYMK5dQt5eltjjqb5ghABBjuqaMIQJ4jZHfHsT5KH71YI7cdwOo2DQ2xm5kz/
         Nr/y7mSp1AKVpzVDe6PBxziXoCo9OxihAWbWmA67s3FGsMWrhss2GCrygZ0IJUNefK3K
         ec8kahjF0omJjXrUcFHLGZRVU9eg7pukh0gNhtr4qz/z/MGrYuZDdZpq02FZRQWYYzjY
         35uiXBXtVJ2rw2troTYnXfEYBw/WinjLAQPPUmo7kMETg+s7yLgp/10ZblK9d2/L6fAG
         crPE1Er08kn2ckahl2LCQ+OX7GYI9FwHTJlz7gx0l2NH3K+C6dlz5ae/jcJ9wwduzrN1
         JdUQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:in-reply-to
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=x04zXoaoZMZwokasY7+pl43ZnVsT37AYhwlA0bLIaRQ=;
        b=gVnp0U7had+gacQqEH4TZdcbNVyWew44pE9BKtmK2g6JGezk+d6Hipmg5DMe/VOGpj
         wRdf98VyIfQSrk6yoBJnt2gFdZNtdfIYGpSiPVbArkf5t8qhZovZQLamgw86xji4AK2L
         deLfvAdnQlBODG5Gt9cau0kl5ECj/Po+69pOOtekjgg/xAryjjXAlZ5At2z4j6Cml+0f
         tbYURLjlZas/+IjQJqyMqIDPyHTRNdlm83E5L4KQQUCl8XreaheD6+qxkTH2qHaObALG
         Tn80wwtGk8YfB6/SPkViRQBgbp4LcCOILnuqVSRGLugeSgq4skA/ZX/Ks1cK7yEDRQB5
         Y9gA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=gMLZTn6m;
       spf=pass (google.com: domain of atomlin@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=atomlin@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :in-reply-to:content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=x04zXoaoZMZwokasY7+pl43ZnVsT37AYhwlA0bLIaRQ=;
        b=SJJXIUWS03oniW7AzNJDHakXiBEqY5KX88zQ5h10oyVPDmzbshdoKEddkUMaUGX8Qt
         vKY5Q8Tr5M2HSUJSdKw2uhx5/JB/+MhJ0TlZJzlt9u99pJw5WArwDDcoyTItvZHFOf4H
         mXJL2ftSGg/ToZb+nEr3P2Z8/NidGA/L8KUE+/Ks+SqZHQzLKXBCuALDm8tX2fMZAy8J
         k1mJd3AmURDMR7TODZzpLufjaCHppp9LQkQk7RkvLnY15tB3aJD6jTrxnkghg0h09+5s
         WnNd/47XdFR79PvCKTsJdwTcvacoXivHJAyfge3iYxlTZ+ruD0nr1ywa85uGz7CVECFK
         6vbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:in-reply-to:content-disposition
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=x04zXoaoZMZwokasY7+pl43ZnVsT37AYhwlA0bLIaRQ=;
        b=WAnBAGp8SCKPxgpFyWiSfIsYY52e+6XnWLcKzzvsQJ9pk8kaQglg6byh/1z10J3nnk
         aGzIo/LYEsohrEqDOZRAeVqNCgQ5Hhz2zT1evcaGpiTiua0q0XAA00ZLYVtKS0PFFXxH
         lYq+A/IJO9HaCKPl4ZiDIAgpEgRQdEEXq1X+yLKk/WuBwz/n/qp1zA4S1hjwG+j+hhXW
         C9BrmE8JQ5vxuHK7QSitp8OoZCkbJTUaolTiG+eOqeVZUUklCKi1d8Y5ahVP1aRna4MD
         4bYSHh3D7KDGXfU8njhT239hfwLrJ0Slzy1K2v3ftUoXLLJ9zedSPNCqcHdfXg3ucF29
         SVfg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531uahU9KvbQYR+XMtBLpfYIZbHlEfB1scEw6j+/cuxx85+ES+vQ
	J/nQUQQC7+LONiMxpW538A8=
X-Google-Smtp-Source: ABdhPJzYfEEHECNXlzEitYpKXoF0FuxaD0D2nN5xnf+WgtRzIxHnOHOyfMx1IDfOLcrkQSR4xoJBgA==
X-Received: by 2002:a05:6830:1489:: with SMTP id s9mr7037594otq.267.1624436284258;
        Wed, 23 Jun 2021 01:18:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7c1:: with SMTP id 59ls497893oto.8.gmail; Wed, 23 Jun
 2021 01:18:03 -0700 (PDT)
X-Received: by 2002:a9d:6019:: with SMTP id h25mr6419179otj.317.1624436283881;
        Wed, 23 Jun 2021 01:18:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624436283; cv=none;
        d=google.com; s=arc-20160816;
        b=tzdjA2mAwU8gGC0DeD7M58fPPz5OpFd1kqDqA2pTxnuk5cupHv0OiJKDEw3THXYg03
         W9DNSwu5uSOmASQ3dNe+LG6+aWOztKgOredFeY8RlbkFuZpR+lt4qreKl2cczt4yyIEh
         o33eEzgYl8riUwff0nuILuTgt6BSLOlkmMdGCl/q7DDs08AdLzuSD5nTMauI1E38KwqW
         XJik9aOUKr07OfpMlhHuoacYxf5duLMIw3Jzjjer0BKQRHuUrB12XCtwLqAFaUDcJ0LA
         ykoqZvmP2c8soIIxY2D2bxd/W1wYHIxMp0EFaE7XuQHz7WBt/nQM9VxPHR/60QZ+vKM+
         Qtjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:in-reply-to:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=byL4aNmZ1MXOtXz/cMDMruo6tQLqSeWl2qFyepat68A=;
        b=b6G0hZ7Sc1zeyF/TcvTqjMMwsKKLTRkY3j+r2xn/7LYGHKeT0iI2wpZ4B5ebeZ7W3R
         S7X6shWYCM5UVlQP0PTPJxd0LIZsyQnzTOJggnoUX9cOzBWAtJYYaaZQ57jCyHszwGRQ
         BoYY5O7Y+E0oRoNlMhYhAEE5pn522YiAW9ZcwslSdovIW0UrSvDKksYa9cOM+L/K/eFZ
         mFjjzz7b7aqwe7PgmD/QxB1Tei4BXOY0YtFQLFye1yXMThcGHxonk+EGacxet90cVBpT
         fOaQTZWC/PVGFSLfMgzAzeEf2KIBCmuz6V6bwO/oMnyZoVgsdC/GNJdSoAdKqyYgO7Jf
         ByEg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=gMLZTn6m;
       spf=pass (google.com: domain of atomlin@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=atomlin@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id p16si366437oou.2.2021.06.23.01.18.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 23 Jun 2021 01:18:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of atomlin@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-560-fTBnqKokMgK6MIbjwDOLxg-1; Wed, 23 Jun 2021 04:18:00 -0400
X-MC-Unique: fTBnqKokMgK6MIbjwDOLxg-1
Received: by mail-wr1-f70.google.com with SMTP id v9-20020a5d4a490000b029011a86baa40cso773746wrs.7
        for <clang-built-linux@googlegroups.com>; Wed, 23 Jun 2021 01:17:59 -0700 (PDT)
X-Received: by 2002:a1c:1b10:: with SMTP id b16mr9479875wmb.130.1624436278926;
        Wed, 23 Jun 2021 01:17:58 -0700 (PDT)
X-Received: by 2002:a1c:1b10:: with SMTP id b16mr9479859wmb.130.1624436278788;
        Wed, 23 Jun 2021 01:17:58 -0700 (PDT)
Received: from localhost (cpc111743-lutn13-2-0-cust979.9-3.cable.virginm.net. [82.17.115.212])
        by smtp.gmail.com with ESMTPSA id c133sm4878187wmf.0.2021.06.23.01.17.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Jun 2021 01:17:58 -0700 (PDT)
Date: Wed, 23 Jun 2021 09:17:57 +0100
From: Aaron Tomlin <atomlin@redhat.com>
To: gumingtao <gumingtao1225@gmail.com>
Cc: cl@linux.com, penberg@kernel.org, rientjes@google.com,
	iamjoonsoo.kim@lge.com, akpm@linux-foundation.org, vbabka@suse.cz,
	nathan@kernel.org, ndesaulniers@google.com, linux-mm@kvack.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	gumingtao <gumingtao@xiaomi.com>
Subject: Re: [PATCH v3] slab: Use __func__ to trace function name
Message-ID: <20210623081757.mfio55dq223m37jf@ava.usersys.com>
X-PGP-Key: http://pgp.mit.edu/pks/lookup?search=atomlin%40redhat.com
X-PGP-Fingerprint: 7906 84EB FA8A 9638 8D1E  6E9B E2DE 9658 19CC 77D6
References: <cover.1624355507.git.gumingtao@xiaomi.com>
 <31fdbad5c45cd1e26be9ff37be321b8586b80fee.1624355507.git.gumingtao@xiaomi.com>
MIME-Version: 1.0
In-Reply-To: <31fdbad5c45cd1e26be9ff37be321b8586b80fee.1624355507.git.gumingtao@xiaomi.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: atomlin@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=gMLZTn6m;
       spf=pass (google.com: domain of atomlin@redhat.com designates
 170.10.133.124 as permitted sender) smtp.mailfrom=atomlin@redhat.com;
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

On Tue 2021-06-22 17:59 +0800, gumingtao wrote:
> It is better to use __func__ to trace function name.
> 
> Signed-off-by: gumingtao <gumingtao@xiaomi.com>
> ---
>  mm/slab_common.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)

Reviewed-by: Aaron Tomlin <atomlin@redhat.com>

-- 
Aaron Tomlin

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210623081757.mfio55dq223m37jf%40ava.usersys.com.
