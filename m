Return-Path: <clang-built-linux+bncBAABBLU7Y6DAMGQEFFGQT5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x140.google.com (mail-lf1-x140.google.com [IPv6:2a00:1450:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 80E483B0363
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Jun 2021 13:55:27 +0200 (CEST)
Received: by mail-lf1-x140.google.com with SMTP id d12-20020ac24c8c0000b029031fd68ac844sf1740139lfl.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Jun 2021 04:55:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624362927; cv=pass;
        d=google.com; s=arc-20160816;
        b=X+M56jxuM61an6HxfefyQvLR3BCOBwdK8c2i5wnMZ2ql6oGVrehgt03LmLMQJ3ML3D
         ZI+bmontwuFKVtghZpFxDEig8e03PDCm76ZUotBGRAnRHqnrUSR2QIHiizPqQLfj9Si7
         Ti3KXMgdVRd0ABtuV60VPFxX//76+5ybikx3cwgU2JeWY3WsNRgj0LhDbWsmBMl6BNzx
         KYs3G3ycAYn18Hm9b2Jn/DTFqGIUgwHNgNoeWVizrJ2rl7AF67GRqNdatb7gebbzT4lH
         2sGknC5voyTe+oX+2hJf9hPz47paDp1NcYSmlVQe/1gVzMdz2U8t4ZUxZ5cfLQ58SrhS
         IZYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :message-id:in-reply-to:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ArWcYkUkbda62eVrWmJ8o0Tx2yzTzvT6+kDrArTxQQo=;
        b=rmYkIHnCr6P7xfRQG0xuhFGreaue+PmSKx3Y2ef/tyN9Y3OGnAwWh6FOCgQAeA471N
         LL2KmhGDBnkDa2/Bi+en7zydY6wMFF4f0mnOAtMztl4HLD/XFsTc/BiB1AJvQP4ur3St
         wBWCcC5BJATd/ayNEkOs2l2Rfx1B+MlEwyb3CM40a+sf3LY+4XUmEhwEATgzxU4K3nwZ
         uvy2EtE1DgQrSYZj+0igzwqAwQ9CV77M+PAj38vjCEbo3N9OEpaDJpXmvupRm+4pPKb4
         RRPELlTZv4eoMG3U1PyKQnFRbPH7GyEje10u7eLd6lUJRTHi2LUAUKRwj1xOEYhPni6z
         8i8A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of cl@gentwo.de designates 161.97.139.209 as permitted sender) smtp.mailfrom=cl@gentwo.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ArWcYkUkbda62eVrWmJ8o0Tx2yzTzvT6+kDrArTxQQo=;
        b=AEJZN1/ULEmmKKBHejQ/pBbjw1UAgQ9KeyfvPSmfwhBqnXlssNQBh+ENqdQu/yeEHL
         fIaCLUjssYf8mAr50OoQLybArqA11asHCC1400oqRPaXC5lGzNo+zhOFHy4NsT6fUyNp
         uj3qsiTaAQgpFUWYVcHbd5F6xUzSCIhtgzpunutWIiahcYMZk52UIaKkSAe5s3ZDmLx5
         NKPgfybEu7SZqLjzFFxAUfDhAFQYy6+QGC63Afhahh3UR1z6rIBm7T5/FnhDhNuqRacQ
         R0YL5W7R2gcbd17a1k37MTQ63/PTOlCvz3zNG6KuD2g9vfnoPuGxU8sAspu8C/N1XvPD
         DLkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ArWcYkUkbda62eVrWmJ8o0Tx2yzTzvT6+kDrArTxQQo=;
        b=hgChkVUHoCQGv8l72kRGCwOH71pLqT4X592GjIbiHXBLkuyQ1PldeKUG8iIKEuRK5A
         O0QXb4b0CWRJg6chi7oqg4AQn9O1vF9T6ZA9EuUvNN6w/N3+6ewy1cV5poc6djCTwW+C
         ZrNawnBKxNUa3E9y/weq1BcOZuMRb3D+TOdAzdWhVrYiBKRTJ7V9WgUfFRNHpiULU02e
         GvN2GDBWj/MDGd/PjQASjOcf8/rcuEFg855qOxjrmtVMJ7OypDqkSyi61lKrxhXJUHbb
         dQkkMCnvnBeBl+EyGepyUd5zAYrkvJVIyXP8aS0MEtjjUj/O04qQXczhKHdgKHMXFqu3
         lINQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530UUQkyoAKMPmgexAq2fsDTX25h5wq1pq7XQEn2NDQalOnQfDg/
	IpH38Dayo3uucBD6qI0GDw4=
X-Google-Smtp-Source: ABdhPJy0s3wNP3ikxaiWpUbPHNYl2XlFaKoYPD2yYBXnOULeZtfWJm8qdvAQ1QX2WxbZZBY4BR+ehg==
X-Received: by 2002:ac2:4906:: with SMTP id n6mr2750710lfi.592.1624362927090;
        Tue, 22 Jun 2021 04:55:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:1025:: with SMTP id w5ls5792225ljm.0.gmail; Tue, 22
 Jun 2021 04:55:26 -0700 (PDT)
X-Received: by 2002:a2e:b5cc:: with SMTP id g12mr2929331ljn.16.1624362926250;
        Tue, 22 Jun 2021 04:55:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624362926; cv=none;
        d=google.com; s=arc-20160816;
        b=f6s4aBhFWolVi+PelmbMMYaQkm1i7b2gbZBUliTyQAGiBq8yj6ib+DPLrugP+mSjhK
         Jr0IfeVq/2Hni1GI+EWATeI4uG0dg89Exlz5GtJnanjEPczquR3xgkLYWJxEPly2ufNM
         cZPY7uLXVEjT2GT/5hPeoNxnYJ4r3BNHUwKZOTk+P/5x0w7HyfYJQbMR4jIa1YD27y47
         Ddps+wBGs3U8TDaivoY6ai7IwIfQAychbJZiHCPjeMPO0I06jceiwRGoHOpzZVLsl+CL
         IR0xmTv4hUTSz7GCH4o8GRFfH4p938aNX+WUodEYXrh/Xsng/+YX8U3tR36u6+LAyVWL
         Vqdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=ni3PJqI0c8o2wiSBw59uRbR1kLQwkBot/uDlqCOrHVc=;
        b=TZbo2q8wknCqyQ8eLDQ8mvGryejXbLP9TsmNtCRh/kC2qULWlv/foP7xWhwZsMg/kf
         Fv/qouS0E1Jo0rWV1TFESjGF3g+HfofjhJwJJ4eUwu1He+beLsWVKXkVM+hlZ6m366Pn
         zSPzFU2IOooH05z6bBS3AwKN6dZY/au7WLvpBR1mqLn+j53b2gP3t2lLpaXlw5ozEVdJ
         ecIyldXh/kvjTq3TncWfnW9oEKZ7rcxNlU/fyPOMOG3hEDuk4Gag8TjWrZZqU/w4jF0s
         rvMlOlClrFj8lACLkKxyklqP9ZkRTuw339qESxWR6EIBnnU82IvBJY4bSJyb7brCJ9eR
         7frg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of cl@gentwo.de designates 161.97.139.209 as permitted sender) smtp.mailfrom=cl@gentwo.de
Received: from gentwo.de (vmi485042.contaboserver.net. [161.97.139.209])
        by gmr-mx.google.com with ESMTPS id z4si101516lfs.0.2021.06.22.04.55.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Jun 2021 04:55:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of cl@gentwo.de designates 161.97.139.209 as permitted sender) client-ip=161.97.139.209;
Received: by gentwo.de (Postfix, from userid 1001)
	id 94D4FB00320; Tue, 22 Jun 2021 13:55:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by gentwo.de (Postfix) with ESMTP id 93D78B002D6;
	Tue, 22 Jun 2021 13:55:24 +0200 (CEST)
Date: Tue, 22 Jun 2021 13:55:24 +0200 (CEST)
From: Christoph Lameter <cl@gentwo.de>
To: gumingtao <gumingtao1225@gmail.com>
cc: penberg@kernel.org, rientjes@google.com, iamjoonsoo.kim@lge.com, 
    akpm@linux-foundation.org, vbabka@suse.cz, nathan@kernel.org, 
    ndesaulniers@google.com, linux-mm@kvack.org, linux-kernel@vger.kernel.org, 
    clang-built-linux@googlegroups.com, gumingtao <gumingtao@xiaomi.com>
Subject: Re: [PATCH v3] slab: Use __func__ to trace function name
In-Reply-To: <31fdbad5c45cd1e26be9ff37be321b8586b80fee.1624355507.git.gumingtao@xiaomi.com>
Message-ID: <alpine.DEB.2.22.394.2106221355080.365390@gentwo.de>
References: <cover.1624355507.git.gumingtao@xiaomi.com> <31fdbad5c45cd1e26be9ff37be321b8586b80fee.1624355507.git.gumingtao@xiaomi.com>
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

On Tue, 22 Jun 2021, gumingtao wrote:

> It is better to use __func__ to trace function name.

Acked-by: Christoph Lameter <cl@linux.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/alpine.DEB.2.22.394.2106221355080.365390%40gentwo.de.
