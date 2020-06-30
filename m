Return-Path: <clang-built-linux+bncBDRZHGH43YJRBVMU573QKGQET76UWQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id ACFA4210064
	for <lists+clang-built-linux@lfdr.de>; Wed,  1 Jul 2020 01:27:17 +0200 (CEST)
Received: by mail-wr1-x438.google.com with SMTP id j16sf14085852wrw.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jun 2020 16:27:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593559637; cv=pass;
        d=google.com; s=arc-20160816;
        b=nshVRm1/bhXqY8jeL3AuG2jN/rKEXxWHyNR7SZ0+cHKfSyKJi2hRIytBCC1PtcEt9o
         3HJd/JBY1wXRwGbPJRJwXEv+anVkOdDSeuv6Th61ZUPRjpP8R/vX2enWfqdZF9ijZe7v
         fqNkg6jVZ8znUWL6ICRqWSguZqYa2y1WIUDvhuDYq2eH+ua5JOZPFSwp93Gt37kIBwst
         Yi1RGkm/CW9drv+OKfSxp1ZdoMZVVFZ7ArXCARk1nOz9sAdzpzrTFXipqQq6Fn7z9HLr
         bpr8Gi7bDbP1eLBJ4+C7UliYVLn5wuQ4GkvGPjkYm3gRxACq3ySaOwRWDYN7X25obfCm
         hSxg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=PLuXVkKcGlp67+HyAEHO0Ao36Y7RtsdvjXTv3JrHoxo=;
        b=wnl75F94RLv38UItu3BfYliH66uRRa2rIeRY/b/LHToyDHOGH7o5Pq2Gm7JR/zGT3Y
         z5mt42Yqo2JspeCUMwodDceObyBQ9H+26i0uuG5KM9YZ/123VG8685DOPRhRXm2OmJtv
         x09DsLs9Jaq6hRp7QDzPurOSrSkgLLZ7XdJ9EHUBR0hv0CLi0Xt91bvOdXIsc9piHD/y
         NDWLpoNyBUo+wUyN3SVqYf3yiifUi+UWi1ZD/QG7cwPvLfd8qMcK0bMjts/gRpvyNOLx
         SmqMMb7xh6OW7ToiLs8h2RYLFnnO/QAqa7QfwRTrbZYid53KMAdCo/pN1iOEcfZ5jQNW
         /LSg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XOd0G8vh;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PLuXVkKcGlp67+HyAEHO0Ao36Y7RtsdvjXTv3JrHoxo=;
        b=bT9Qe5IE1zm9mYRaVjJsbdUFNrv9VUOaQzu6c9whixBnrFG5PGK/u3UF15WwLS/ZQ8
         h1ZkthzD62N4aejFaHn7UFAY8/sJuvvM/BJrwpjsPQuOwdjjyZAOTEsNCqM4v0m+QL9q
         i6SBCUtyEKJ8LIqUj2+oolPlYeU+o3qhJn9/YVyMxWpSggo1MFq2BBiSfoPkueXlYdU4
         /HomU2rJvXnJYk+XgzlwtR8GxYB2ww6ezPKvacdJ+iG+s4taL+j/zObYoh4K6fNMI9Rn
         nrDgzAcU5O2TIn0e3oOjHwa0Ut5wdgGRV4wFr6ajtzMtNffWbm5xL9ECalILNvV91SRF
         Un8g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PLuXVkKcGlp67+HyAEHO0Ao36Y7RtsdvjXTv3JrHoxo=;
        b=VdnNm+0tU6G1X7XjaDN30sSUeZrWOyT8DImJGLrP2fRAOaTOixQEX6aTqP+AMXeVp0
         IzW0b3O18EkeaZCBvJn8tL8xdmvIGy8lSyblv2ubFzsPve+NXn3MyT2ALEiPND9so+t6
         HI26wNTOAFnPzXl+2K/rNWqDkMrYDXgZFebNXow/nYofWwLJjAtb92m6Bp4KXUIk5lv0
         RXZ+BVd/Ov4gnT7dVvB0403SRNXD4fumu1pfhZorgO4d6zFXYsinHcAfLwaioSzZUvbu
         r+bHuo4IYOH/cSvqSwYfGLnDS1MzD2XuuNMQq3irQXrYaRM8RCjJck455oMDGiqwRFcm
         x5mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PLuXVkKcGlp67+HyAEHO0Ao36Y7RtsdvjXTv3JrHoxo=;
        b=trN7nnqCztzYc2+nQuusqzheEeCs9eBjZf2EMNZmoRUgU/LLdqXBpTcSBQJXzPc0Bl
         0I4X0XNzHc1KQFuZGM5ZLi+wmKOdKn70nMX/n79porGZAD++/MGqWgINmmCqSa6IGvAb
         +bfqYnPVb+e4yfaXtdd4Rj1Lm3sc0xKZ9u705RhYTIuEbebS7KsDb1+3L4GL3i6x2kNj
         /tZFg8CzugrgW+gzRncVHjZYFr8BtD85ZkvIpOp0Cj7gGmYMtPwCM9QK9m1QEyr6Z25B
         QXlrHGvKJD0pVUKAYkNmfbvZ5CfzJk/S55b/XZ7nH2WjB1vlStbMSfGz4YJqH/0iZRAN
         zigA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530IIErus+pEshy3VRWsQyfDvaXuRAvGx0t2B4Lr4YBMx4oexXhk
	ytgw5OlkwnDsoyp+D8UYePs=
X-Google-Smtp-Source: ABdhPJwH8+bRn/iA31HUOqKP7QZF37YrGBucl2xAfwh2JTW4KdQNDqYecpT69tPDmfokBnI96YkDww==
X-Received: by 2002:a5d:634e:: with SMTP id b14mr25556538wrw.423.1593559637390;
        Tue, 30 Jun 2020 16:27:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:13:: with SMTP id 19ls226875wma.0.gmail; Tue, 30 Jun
 2020 16:27:16 -0700 (PDT)
X-Received: by 2002:a1c:49d4:: with SMTP id w203mr21850635wma.13.1593544385651;
        Tue, 30 Jun 2020 12:13:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593544385; cv=none;
        d=google.com; s=arc-20160816;
        b=mcPt4FALu4e+Ky/jMKYdIQE++BHAF6Azn7W6QBWts4IjEofEXaG2BhtQiJEUVwNpCz
         cUmWTe8i0DqOESW7w301LYyJ0QGtfFinU8B0FtiA92ZvDIdsgyFgxpIyatpVTD4vOMeg
         sHIoKtf6+6cGCG7pPsg36BNOEmwKg6Irt3fCrIa3ROAimssMrA/ietrHgGMF9dveQMgc
         /hnhpf2SkHxHbg8X1dFqTQX52WOE0yuthVsBkllZfHj/xGMD1XvxKFBviQrNMqjTuq3V
         TxrhEurOmRBGeq/9yDu+YNbmG4Wn+pwv2CVDkjX28mhBmkgs9sii9fznxGcxTSugux6m
         zeRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Qh5qpq0DRF5ItkAziSeZrTjhiLljM/TKCiqFCudwnKM=;
        b=vJH+jo3noQ8izK+RA24eD8tokYMhUl5MsCW/yBuo6K8aoEB0hWoeyDADBYxG1Eos3D
         FB5TpSpjXyeikTv+UvkCIPpfFIkbvrDrANgQjm0PAH0R2zPk2YVEC5kWo+NHeWdas8oo
         5ZfHSBA/5DR3zau1Ok7OSl1dCAnBC0NxnKbsaDnIc21tF0QsgRk5Z6jYzZP0cFtMtTaN
         RGiUcQHefjUviFwGiK5w5vVv8MkKgMwCLjY4DXCJfDnMFUsNRmqul32RmYwkMSJEwa64
         15EsVDMN9P9KgHnq+QwgPyVT2IeHZ02mWxVNVsPjcLRXaLMkN0cygMuzpadw96AsfFT7
         EGtg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XOd0G8vh;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com. [2a00:1450:4864:20::142])
        by gmr-mx.google.com with ESMTPS id g14si1158454wmh.3.2020.06.30.12.13.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Jun 2020 12:13:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) client-ip=2a00:1450:4864:20::142;
Received: by mail-lf1-x142.google.com with SMTP id y18so12031648lfh.11
        for <clang-built-linux@googlegroups.com>; Tue, 30 Jun 2020 12:13:05 -0700 (PDT)
X-Received: by 2002:ac2:46f0:: with SMTP id q16mr12862291lfo.51.1593544385174;
 Tue, 30 Jun 2020 12:13:05 -0700 (PDT)
MIME-Version: 1.0
References: <20200629085911.1676554-1-masahiroy@kernel.org>
 <CAKwvOd=qe5KE1vdUYQmpsW2zmDbk5i-MgRujs9B7wqnAj+af0w@mail.gmail.com> <CAK7LNAR49jFZkEmBqpACE0V_-VyCXfFRcKe1Zq+cqO65QX1ozg@mail.gmail.com>
In-Reply-To: <CAK7LNAR49jFZkEmBqpACE0V_-VyCXfFRcKe1Zq+cqO65QX1ozg@mail.gmail.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Tue, 30 Jun 2020 21:12:54 +0200
Message-ID: <CANiq72nE+1F3yM+e9XzfphzOe3mb9DUcRCAtPuLMyFE4Rh38pg@mail.gmail.com>
Subject: Re: [PATCH] kbuild: make Clang build userprogs for target architecture
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Michal Marek <michal.lkml@markovi.net>, Sam Ravnborg <sam@ravnborg.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=XOd0G8vh;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, Jun 30, 2020 at 6:26 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> I can reproduce this in the following
> simple test code:
>
>
> ----------------->8----------------
> #include <stdio.h>
>
> int main(void)
> {
>         ssize_t x = 1;
>
>         printf("%zd", x);
>
>         return 0;
> }
> --------------->8-------------------

That is the old implicit int rule. Try including sys/types.h or
compiling with a standard like -std=c99 for instance.

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72nE%2B1F3yM%2Be9XzfphzOe3mb9DUcRCAtPuLMyFE4Rh38pg%40mail.gmail.com.
