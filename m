Return-Path: <clang-built-linux+bncBDYJPJO25UGBB5X3SSGQMGQEXW7E2RA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53b.google.com (mail-ed1-x53b.google.com [IPv6:2a00:1450:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F79C462295
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Nov 2021 21:54:15 +0100 (CET)
Received: by mail-ed1-x53b.google.com with SMTP id v10-20020aa7d9ca000000b003e7bed57968sf14852162eds.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Nov 2021 12:54:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638219255; cv=pass;
        d=google.com; s=arc-20160816;
        b=qV+JELh4IW3DrGq2cBAFSP9rYYzlHaz9KWQU4R+3Qvir/mOEJDPOlQJOWcYaDeLhfu
         xGdZRF9LvzyWUHiQ/+h/6FxEs7Y61b4iDZ3crrwUse7+mq0s9gTyGkxurZers/sgRLXl
         1CeaZL26Ht+HgxNYfdpfFSCK4oGyVRrjLKE8KT1csN5K8lFzrEHqxbqe5He9G5V62Qy8
         UBmGwEiW+9U5qok1IZkmLvjni9pi4FfTUsXp9LCqxXCOipHpcJCOh6hUT0WTw/LZCR3F
         0kmwku5YLlCCVoIzP6EzRAaqjMjWXVqi5J4ligAvdAEnxKuJcPOL5k7zjEsGsMY49Idp
         SiOw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=gJQhafJmy+UnBCYilIbbCCH89XxjzwH7UTbsrAiNtmM=;
        b=VLPRK7EGa6rUWQCyf2WMiJUC9ma9Q8jD5L82IwOPHNdbjTKyksGMwjY3t1bFknDQW3
         0NY+VoDBsBnXkScA+QVlIedEIktQz7qwV6YAWKxSnonLpN7WkD65iz5MC2lg9iX8zbum
         UxW+89OouAKeNpac9jfUQerP+i14HUJuQ+Fgub6VxImqmnu40UFpwsa4GAFHYvPAgjY+
         Pj/AeHPJS/nNmwUO95hsO/QBx6sUAonGSLLpaPc3I1SuUa79UZvvpGNe7MMMZ3d9o+ia
         lRv7VYvfTl+FCtaqrB1pqytJHwPGmfGOzwxFfjUmdDJ27v+DZlaRrwNf/KwBcFcIl8UL
         mf4Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=h5z3sLFj;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gJQhafJmy+UnBCYilIbbCCH89XxjzwH7UTbsrAiNtmM=;
        b=GryLIMjFsxZ4HarabP+cw019Tx+y8Hmnx8E/y5dQI0eCoy8Ikn4KqNmDQIJjqi/LN/
         oB8EIF9VA0VcaEcoxD8tf1P71CXp2jLyiUChl7TrlyANVoZqi7nhaCNPyaRGaeKsNlc9
         etj0w+QsN2dytWKEt+l8IF5e71Ez+jiwlCEBPM23K4UDBjEVE705CjNtPMgRNeynQWMy
         DnMuL8zEsbP6CzfyrcyEw3RVT2+u6yPfUSbSPEbnS6GcoUTxLqu8OguVnSL4dYLxXNHP
         3zG3MC3PLOAETLUQauMivfG1/yep05bRwKsOCgAhhO20o7LkFd3RDwoAEnpohCgtjA5m
         P3Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gJQhafJmy+UnBCYilIbbCCH89XxjzwH7UTbsrAiNtmM=;
        b=NvWcyu2HtAGmLuZWkgsFZPeq10gzyiGGYvxM7+ww1RMJCpLk22cRLtyvKwAMlI30Tb
         4cs0oIdRb1dtdD+O8gox534CdOxxDAlGK5PQ41KYQqXxxpfoxm9crqey2P3ChvAZc3fb
         vneHmtDenrbl/hffOJ8fOyT6PMVupAwP1U84I/HhYsQNea9FyP2njFJr8ZO/ro5BFzOD
         H/USjwX8ICf9tvaHjjOWxUZmBR0K+ZS+0LaFuTD7MDP3UbNUEIEV+kbj5/4nDB89UR69
         D4FPHK6jDkKACBuvW/6Q9qzWCKpnskxwnloLjoL3PONwqpSSuhIKUNA+roXn7ZkrE6NZ
         uRBg==
X-Gm-Message-State: AOAM5300PkjT4rtYC+uoCd9Um98e7xyW2HSgypvrgA1AkCJ7fpNEh4wH
	SRiVU1N1EBYGfVvNmFZ/HOU=
X-Google-Smtp-Source: ABdhPJyQnTqKhJdSOSk8m8YrErHppBqI8eLzefJJ+MPnr2U8Lfcemxg1/yGbYW/MUgD+LsaBdj+Niw==
X-Received: by 2002:a17:907:1693:: with SMTP id hc19mr62316636ejc.396.1638219255102;
        Mon, 29 Nov 2021 12:54:15 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:c98f:: with SMTP id c15ls5798845edt.0.gmail; Mon, 29 Nov
 2021 12:54:14 -0800 (PST)
X-Received: by 2002:a05:6402:7d8:: with SMTP id u24mr77992590edy.215.1638219254247;
        Mon, 29 Nov 2021 12:54:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638219254; cv=none;
        d=google.com; s=arc-20160816;
        b=pe9rGs415JGhzk6Fl+s9VkTAZyoUZB08rAHGUXHZZwU7T8O6YZq2fj2gQawtMk4HrB
         tPL/H9IJYSB5fwpEaoMGRrN7KbXgwrSgSfJ0TBnGY3BKaG/oHq6GNIMjnueppWDEIzhy
         kwnMEKFJLPmrLQl6BW5c0/aWyCytGhQP4hQQwIcnZORLuyzCjf8fVigiNpsWL+D0RC/H
         Q3K9KJuwgtTXDD8toQWET5k5uixQK+ULpnIcONTdG7grUDYPorTjycJa+vXtUjy1KTLe
         ixKecy7t5/EDDZVLLzIDsBp9/QqbWizZqNia4YMryySwc7AEiRzfTGW5wy+7O+eESbgI
         BxLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=NUc4UIgUmOS+2n5tRItQ7mz1lqCuaJyaYH1Za0Yeymk=;
        b=kRaRZMRy4ryUHh+ZAGhHgR+p5tjr7PaQFDnN+O/bMVNVdQS1HTv5RS9SS9mWcdWk3H
         zjEd2PVQRJjLxOCTLuI1Ec2wJebLcrX+V7MAwb254oLNghOTgLlexmD5lKAn52Mxg+l1
         WquyRGvv0mI/a/mVx7VSFvpP4hMj2csX88rwEbxiFvtSMLKFNNLiXrVGzbF2BLxximYr
         yBxo78Z6SAHwGP3fHKjPASnw9Jtwsts0BZFC2tY6z8fmLzisddU6atpFClXGcFZYyqtM
         JaaVCDT2eTtPHudkuedyYg8wmbMbBjYm0hQOXUUa3Jjj5MCef/l3Yl2Tv3Ye9uRI3zGt
         OEgQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=h5z3sLFj;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com. [2a00:1450:4864:20::12f])
        by gmr-mx.google.com with ESMTPS id e10si1248449edz.5.2021.11.29.12.54.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Nov 2021 12:54:14 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12f as permitted sender) client-ip=2a00:1450:4864:20::12f;
Received: by mail-lf1-x12f.google.com with SMTP id r26so47976147lfn.8
        for <clang-built-linux@googlegroups.com>; Mon, 29 Nov 2021 12:54:14 -0800 (PST)
X-Received: by 2002:a05:6512:3d16:: with SMTP id d22mr48222436lfv.523.1638219253606;
 Mon, 29 Nov 2021 12:54:13 -0800 (PST)
MIME-Version: 1.0
References: <CAGG=3QXA5eEYcQEUJc3yhKXoWr05JhFFSmSZZrYb+2wTJprdVg@mail.gmail.com>
In-Reply-To: <CAGG=3QXA5eEYcQEUJc3yhKXoWr05JhFFSmSZZrYb+2wTJprdVg@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 29 Nov 2021 12:54:02 -0800
Message-ID: <CAKwvOdmC6C6qXVUu_bUTdc8dSdCj+CVaJ+qJQLoDX0BzxCTFgg@mail.gmail.com>
Subject: Re: Backporting KVM patch
To: Bill Wendling <morbo@google.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20210112 header.b=h5z3sLFj;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12f
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

what's the upstream sha?

On Mon, Nov 29, 2021 at 12:51 PM 'Bill Wendling' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> Who do I ask to backport a KVM patch to the 5.10 LTS branch?
>
> -bw
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAGG%3D3QXA5eEYcQEUJc3yhKXoWr05JhFFSmSZZrYb%2B2wTJprdVg%40mail.gmail.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmC6C6qXVUu_bUTdc8dSdCj%2BCVaJ%2BqJQLoDX0BzxCTFgg%40mail.gmail.com.
