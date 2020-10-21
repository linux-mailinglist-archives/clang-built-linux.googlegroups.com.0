Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB2MMYD6AKGQEFR3SYNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id 23875294AEB
	for <lists+clang-built-linux@lfdr.de>; Wed, 21 Oct 2020 11:59:06 +0200 (CEST)
Received: by mail-qk1-x740.google.com with SMTP id w126sf1342087qka.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 21 Oct 2020 02:59:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603274345; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZcfcDA/EkHSNG2rEIjvt+aFRYRp8dU641DnC7BDPi/QD8JMSgnipgW6ZKRCdklYrWe
         6Cecpq9OzoFJkltLN+pL+tHicGuKe/I9IWfqcDdeqC3KixakKoMwBelK38q+BE/7EEM9
         E6HIzs9E7ln5vrIapZP5LsHG0MkojN1HnuRJdutamvuBzkWa/LgW7/jy5qtiDGFkExwU
         Y6ADLhKVny60/5FnTb3n6VwwF5QxjvuHAliMfQkrjdSwh3KZrOaZohC++yzjLI9a4+DR
         VLNWHW0PhyTdwHexNbMY0x7wi240x8a+n138wTIsKGrZxeG6n6MS8WG2xcfwIrcuTVfX
         xh7Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=d0gRWkDMQdKg5oDdDRxuYvrR2TjKkTWe/xt9ZzXJLzw=;
        b=XuBYBoK9t7G8v2Q/A80OYWf0j9LKCzWMXRrYRsMJxpKB+EOurTlzz+WZotjP2Eeuye
         zcXJFScHIDJ6rtZxMyYEYnYFlEPQLbUoHmqqVNSGHRwqEO7pqE1YIOrwllfqac0ghk2L
         qSgpfw1bBZBjY2uzkNFkRlN1oZPpRBwdtU4DDpM3B+LOGCJS3X3YzR7D1KiY/4xg/OHa
         yktJZCzqmqQD6EXCOBbqDJS1eprp2j/wuy1UxYb0teUvhlZPHUyIDGz5DLJlnks4cnea
         bxM+lnJQaAlWa23cHaRnmndyZmoS7/Lk07rcZNXjnXN3NoZnI314/4rwPnlkKjxZZzFF
         A/AQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="ELI5Vc5/";
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::131 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=d0gRWkDMQdKg5oDdDRxuYvrR2TjKkTWe/xt9ZzXJLzw=;
        b=sAlpYaTdhiXfZElQp1gNJvbuc/J+0obLiw95goEoeUxiKdI+JVZ+l1jP0aAag4rDP7
         Uc+vTx6MS12UqGwgDI4oqVINPTwf4ermf4oBbpwfeRAXCmoFKvRf7FJFTiaWJ55YQgyi
         FywGO9dr6og1XTAZznsxDs2daW16n0NdJBZe3F4sFnHWS3wkisrAsS14BekStD41zlNF
         ZpjCL44CIgPJXdZhc4EoAWP1C6SXlKUCpwDIasrN9++V/9GJgfn70VnPK0aLP1PckQs3
         1oONLJsd06KO+nOAuu55K9NQmruuHVp3Xg0LE183VZ0sBx4MHPgB6LdF5Ca5s5FUJrES
         2gkw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=d0gRWkDMQdKg5oDdDRxuYvrR2TjKkTWe/xt9ZzXJLzw=;
        b=U7Lbe3CpPzYlYttMv4W0ZgFOT/nL6UJyRpslqpGnqn8OK+s1yjjyfRgFuH9xUge5UV
         ukDr0+rVQ7gUm3v/l/hLHl0lzOlVKgdHwNJZh8dYaGzfchozsWZDz4Fbosf981OxEVKQ
         OFKgk7QGm/RU+ljsO0ObyLUsdelDarYVfOe3ykK63AH9LRT87yuB4D4ngKQJ6R0oWCJm
         vnZvrMJKAoVkYFAw3e2sJqqT9guuJVy23yXVBht9/Z/MARF4GtVpyXnZ+LLRoMxwapgI
         LPxUYUCe5brZ5yQCCVZy4t7yeGUfds7K2J9deToszyC+p3t9rPXrC9rDg0o99ArIRS8H
         0FIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=d0gRWkDMQdKg5oDdDRxuYvrR2TjKkTWe/xt9ZzXJLzw=;
        b=OQMyn58V9ryOzd1RIihAHR3wvcLB3kbyirhwp1vI7uXvwwPnunj+N+iostSiVIGTVw
         NCyE13nE2tAEP03mDrRxUPfCqRg+t+aboW6GDiD7Q+38JxIw7aznwOR841cT5IC5RQTz
         Wjq1GCkGejxCOqL+9gzWiR2rbGeo9aybTTLVRhMnl/KXD/dyMitDtH2hrV21Ltj5gd2M
         ubApXvNhoFKlSdP766ycBBJY03FwoBhx8Fzq5qOX4yjGJzEI6C7mYYiJC+Bn1xEooEm4
         mb2IP02JtmOT69w6N5mpv+fw8fjpX1iUVg0+cLOsPwxr1sJCbPrOBguzFAdAGzdpfuzu
         4G8Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531sYVGuAZPobSKQgU+IDJiGAOXF9F91hLB+fPcENZZjzoWNmAOV
	f/v6+bTfpSPoNJoJn19qE/c=
X-Google-Smtp-Source: ABdhPJxCWsU5L/luKTryEo/1B/1gNkt5I+gie44DbgeHcizHCcwc0tI5a6xq95BCGM5Kuuu/sdkA9w==
X-Received: by 2002:ac8:5948:: with SMTP id 8mr2203342qtz.215.1603274345218;
        Wed, 21 Oct 2020 02:59:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:4d0c:: with SMTP id l12ls1296847qvl.4.gmail; Wed, 21 Oct
 2020 02:59:04 -0700 (PDT)
X-Received: by 2002:ad4:4c4a:: with SMTP id cs10mr2189278qvb.48.1603274344756;
        Wed, 21 Oct 2020 02:59:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603274344; cv=none;
        d=google.com; s=arc-20160816;
        b=mRyrkCSrrBUJe7DPbb3w/GBJQNNE0WhF3JCq2tDYHo3V7SmHnw68sJswXsCm/B/s+k
         FAdkvha1yBjynRU5Vg1ocMW5MfbgZJN0XoTaPNxJipIBoDbC12dp5nILx3zIyj+BSB3Z
         DCBrIkz6zfwqvXEHPhqatOxw1Q2MQQ/CWEnabh1vmu67yOfrzp6Tc0B/WUZSLAAJJjmc
         pbsxYSxZEDLAKi1SC8ioYlwprPDmqA1zZSD+A+nn5ETAtFemx/mzx6D9/zhJdSiFJC1R
         r5wJEowG2tYG2M4dniwS0493isodPjtXbA0zTdKZzquO8wnppdfRgHa5FCX/DUKOmrO0
         FDgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=6W69/njfIMXEy0oBZ5PWyorwnFC19IzM6XyIZO0SCQE=;
        b=td/ZwO+D9XkwyARr8ehGAQ9SNZS6qHILyWhadgZ4gtjY3pahhlERz2EdYgRnUWIqqg
         OqOXEY56DPhunyZtEzeBr7qmDJV/iQneIMyiXV0VCMJ1N9VeAQ5CMQyO62fh6s4f8yVs
         10JiCCNaP4QfnvkCEzBjgDk7K0FoJF0zcjEeWyhWvj6yvyU7xqaPw0qkNG5uSvisOvLV
         jKA5Z4cdAAgC120XGoy0ywUAHJFYO3EywAl26PdAgfWfUgv+0G+lXrbSzgdHWySqA8kd
         4g1uvW/X4wUtxy0BSJa/TvnmQMjSzd44heM97lt9bAMQ98Ey5ElV0pEPv3/uC8XEhkAn
         REUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="ELI5Vc5/";
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::131 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x131.google.com (mail-il1-x131.google.com. [2607:f8b0:4864:20::131])
        by gmr-mx.google.com with ESMTPS id z205si98492qkb.1.2020.10.21.02.59.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Oct 2020 02:59:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::131 as permitted sender) client-ip=2607:f8b0:4864:20::131;
Received: by mail-il1-x131.google.com with SMTP id p16so1940496ilq.5
        for <clang-built-linux@googlegroups.com>; Wed, 21 Oct 2020 02:59:04 -0700 (PDT)
X-Received: by 2002:a92:7f05:: with SMTP id a5mr1917469ild.112.1603274344240;
 Wed, 21 Oct 2020 02:59:04 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdksY9bakKwNLS3v1YqkS3wwqy3cUxzRVLCx5grqMB3fbQ@mail.gmail.com>
In-Reply-To: <CAKwvOdksY9bakKwNLS3v1YqkS3wwqy3cUxzRVLCx5grqMB3fbQ@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 21 Oct 2020 11:58:53 +0200
Message-ID: <CA+icZUWZNWEMCOJ3UXH3AzGpuS+5Acfy1rEPFPitk7vNJO20_w@mail.gmail.com>
Subject: Re: Sedat top tester, Kees top dev
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Kees Cook <keescook@chromium.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="ELI5Vc5/";       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::131
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Thanks for the Link, Nick.

Erich Waeldle from Linux User Group Tuebingen (my old hometown)
pointed me last week to that LWN article.

- Sedat -

On Wed, Oct 21, 2020 at 8:13 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> https://lwn.net/Articles/834085/
>
> Congrats Sedat and Kees!

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUWZNWEMCOJ3UXH3AzGpuS%2B5Acfy1rEPFPitk7vNJO20_w%40mail.gmail.com.
