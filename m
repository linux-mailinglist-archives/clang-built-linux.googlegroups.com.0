Return-Path: <clang-built-linux+bncBD4LX4523YGBBYGG32EAMGQE5ZCZJNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13c.google.com (mail-il1-x13c.google.com [IPv6:2607:f8b0:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B8F73EC236
	for <lists+clang-built-linux@lfdr.de>; Sat, 14 Aug 2021 13:05:06 +0200 (CEST)
Received: by mail-il1-x13c.google.com with SMTP id v5-20020a92ab050000b02902223cc2accasf6623650ilh.10
        for <lists+clang-built-linux@lfdr.de>; Sat, 14 Aug 2021 04:05:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628939105; cv=pass;
        d=google.com; s=arc-20160816;
        b=L0Fx+xdu4vclWdAqJrYPu/WHQ4WjXV3GMO4BsU7kMAbxRv9UAsx8Ajmk61WcoGXTQ1
         s6isMiHX6Rc8NhTWdeotch9UeI0XdAF0wJO2Ab+e7XENRnzz0HIbjnuLx3tKbNyOGb8A
         57lju4noKqNtroHBRpcVMYnl9k/u2+TbkOiVvdZez4xdL1i+wzg90erROHPjGiX/7qeZ
         9yUKwApb+/7hjmxvTpQxiXxbTixUQ8sip75EJrVO9tJ2BY0qqO9JiNy5vV5fTJgAoV7W
         f/LG9YFKZJs0yPI3/oUNoFFzN+/DYuPT8F25+tcOEktOJ98juFksJ9391mmENHLfJNSY
         qVZw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=qV1ZK8j2nATZ2rbnxDsGwWqgKh7OApmNmWXPwLO94MY=;
        b=y/XS4nsCScaY9M52e7ELCVkKBLSHqsjyZMU+PyS1kKTvAQoZrir3AixnZvE9P2fUqj
         pQiZuynYbbZopnUaqeJPtBx9Wso7qXpfuTdGAQl9zOqDtnbzpKfw7jDc0CmuAQmwfze8
         NBA5a2HlZ30IMTItkphovv3sYRNf1ZEcHVCc7+l59VZQQh1Y2Z1fUeRJ+J6i6imA8ZQY
         PCa6ORZpDN/MMULN+C2j6VI//gk5/C+XpZdAnI5ojlkbB4dNfY+VU/e3iEyAEu+0P1ih
         klTeNwa9r7Mgg5K/tUkl6aBlj6GqsgTfziKMUmnJIoeeHQf02K9qeVY5Spi0oZ9a1N4w
         iG7g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qV1ZK8j2nATZ2rbnxDsGwWqgKh7OApmNmWXPwLO94MY=;
        b=FIwK5r/fp3SP7t+jT/k7grJctakFFEM16jGoSBd+r5obLjHYMiAB3MVoalDKLTwe6O
         wxYj0LPjJ2MPj9cD4Roqv8wCQuOhR3yVvnn/gfKEclfCAS2czl7aurAtc/rjj53Bcl1e
         bMeggIhqOsJDfNphC38uVAz1rXQ9AJs2mMd6jAMrGB42J5FbB3woA59hwBrhFiQnuNxe
         gca2ntQ4Rhl067sWDsldIVbLFz91o/ahtd0v55uH7efj2dQTzWM28jSSxAkzPZbgfyfZ
         I5djks5vwma/vnd89Cn01pLrGF1qINb9vwSIf+wmo4vSFbOPdGLNgdvIdZm1/FVcOkVX
         9nXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=qV1ZK8j2nATZ2rbnxDsGwWqgKh7OApmNmWXPwLO94MY=;
        b=lkBxI5FL1Gww1GGHrcw/pnfimwSzxAJLWDMvhnViAzR/6ygNiyDQUu0lSx5euro+zV
         PGkhDiQYL5CHiA/vQgQrsm3XMFITvUrtHw3AtL22VaS+rbOFkqL/TE1OAxUhNC9TY05S
         YYeg9wxqlTGC/8a1wgYTAGeaSQAjfoTqbgCuW3IKfQcr6ljoOKTIY02o++14+ZNBezJq
         WI9aDe6C8Fnq/r5BfzXjEvbyT0l5DH8c7sKWBewIao7MrKXQnGJCzFea25Otalo9T0p/
         clInGQpO+7a6zT7EsHa/Cpxk1QqUNAJNQuMu39ED2sHba/ZT/5iCQGkI7BzVTw5xM0sg
         Z3pQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533F1AGlhcyLEL+WXjf44JHh56geGWmbYTRJeUaAowX9Hen2GPSh
	YMd25FiunBT9acifTtjBIlw=
X-Google-Smtp-Source: ABdhPJwyJGVMGD9W0RK2oD7DGpcKR2vXXKiZdaVt1F4y/HmeEe6KWW5YFQVYZ2JiQU5Gcv0BOXzIkw==
X-Received: by 2002:a05:6602:d9:: with SMTP id z25mr5385188ioe.154.1628939105026;
        Sat, 14 Aug 2021 04:05:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:2c43:: with SMTP id s64ls603435ios.10.gmail; Sat, 14 Aug
 2021 04:05:04 -0700 (PDT)
X-Received: by 2002:a5d:8986:: with SMTP id m6mr5172798iol.87.1628939104519;
        Sat, 14 Aug 2021 04:05:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628939104; cv=none;
        d=google.com; s=arc-20160816;
        b=TSUDOEPCo2SzExEkXRRQbi8wfCp1GeYD83l4NKWrL3jcbVz3mmaxuCoegg68Gnh7gL
         lu3MgSbeXeTXAqukT5m8VSXf2ua/D/sW/iOVCsEqnpgKa6OByX9SDuKpCEO3iIjcZ0NO
         DyACnd7ed1aqhmz934RMkc3pjp7DQGKLJEtblw+2rXKrYxqxZjDTliiMywvA9ee4MUCQ
         m7BL2DT2jjGrQq/xybqIzisUW673JP7xme8/BavCbFR0Gy76+HVKvgo2N0ZxU9FdUfpE
         qlw7bN8DBAZ+BbI5naHt/FkbLO6QcNPMSfOuK1J6nLBXT6vHI58sdkjTvJiIGEr82fIL
         8igg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=MS5++P/2/O+kfNY+7JJ7s6WR+uuPBa6VUdyJm209goo=;
        b=koey8JHSSzWstqkrGcM3bmmCC/semkQsmyBnDLiG+XpOE08KMwGPPsOL1d9Vz+qTWi
         a3eTpo/IzrzUODECwFltEe6D8M353PlzsK52heSZco+RugYMDG7SpWtQIunhNfXcB/XM
         /stI+qDo9evmcI9vqUTK2gw46uD4dkoy6LbVloyOAt88QJiJjU8Dj0N6rdGNq/V5vEPN
         wnWRCIlymBwoNRLfin7W4QNSiGepAgsD2KYeLbOeXZ1LCSkFK9Cq4MZGM5w1FF/qlrrm
         L0fOfwGyhuoZh0/7QI6I5tIB0VIzCFMB4GF5RZ43fHFt6BsyFPWsgGYuzYI8Qy1POw+l
         Yf2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTP id s4si102714ild.2.2021.08.14.04.05.04
        for <clang-built-linux@googlegroups.com>;
        Sat, 14 Aug 2021 04:05:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id 17EB1pvM008610;
	Sat, 14 Aug 2021 06:01:51 -0500
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id 17EB1o3c008609;
	Sat, 14 Aug 2021 06:01:50 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Sat, 14 Aug 2021 06:01:50 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Bill Wendling <morbo@google.com>, Fangrui Song <maskray@google.com>,
        LKML <linux-kernel@vger.kernel.org>,
        Nathan Chancellor <nathan@kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Paul Mackerras <paulus@samba.org>, linuxppc-dev@lists.ozlabs.org,
        Daniel Axtens <dja@axtens.net>
Subject: Re: [PATCH] ppc: add "-z notext" flag to disable diagnostic
Message-ID: <20210814110150.GB1583@gate.crashing.org>
References: <20210812204951.1551782-1-morbo@google.com> <87sfzde8lk.fsf@linkitivity.dja.id.au> <CAGG=3QUz2LNgC8Hn6rU68ejjv4=J9Uidef0oH9A7=sKTs+vf7g@mail.gmail.com> <CAKwvOd=rN9s5YBtt-AMnaqXhYCsAT=6yp29_oomRvTaev6Q6zw@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=rN9s5YBtt-AMnaqXhYCsAT=6yp29_oomRvTaev6Q6zw@mail.gmail.com>
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

On Fri, Aug 13, 2021 at 11:59:21AM -0700, Nick Desaulniers wrote:
> Or we can dig through why there are relocations in read only sections,
> fix those, then enable `-z text` for all linkers.  My recommendation
> would be get the thing building, then go digging time permitting.

It is not always a bug.  You can get much more efficient code if you
have text relocations than if you don't.  This "read-only" memory is
perfectly writable until after relocation, a la relro.

But you no doubt will find some non-optimalities (or even straight out
bugs) if you build with -ztext sometimes :-)


Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210814110150.GB1583%40gate.crashing.org.
