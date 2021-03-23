Return-Path: <clang-built-linux+bncBDYJPJO25UGBBAU75GBAMGQEQ75C2BI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63d.google.com (mail-ej1-x63d.google.com [IPv6:2a00:1450:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 26A6E3469CE
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 21:28:51 +0100 (CET)
Received: by mail-ej1-x63d.google.com with SMTP id au15sf1591612ejc.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 13:28:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616531331; cv=pass;
        d=google.com; s=arc-20160816;
        b=HBsX3wQco4vCu+v3YdWzqvmMunMkR3OZuPIv+bmr/Xa7vrrQBjXQaFT+tc72+eZQxf
         2XpisoTIiEbwRtKWNcu4f5E7AUlSBAdUF400FyWMfGLAs3hUdDv60VJkQqOiQTSh496a
         UJXxVVCj2EZGm485IDaasGVmL64v9R6UUK116aj+wDP4T63nJsxmQKS98hw4Xgqf7Yj2
         gUaIK8z5C0FtmAprCf3ceFcin7lApDEjq6XM8iiL6arZXQR2gvAy5vMcxZM5bkkSYY+k
         w5ao4MhFXAE94dZgAlJII23VGAuWeC/B5GEKKPf2oMiWEqe/Zx8BYITuw3HUILpkzt1v
         QGoA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=qpWnjPBQLPzmxTmm/C7ZklrSt3KRcjBMhF0kYwu73xU=;
        b=OVDenxZw7X3/s0eeXNXL2oeEQTC2EPkWG6v8DuINscPILpwbBiKORJzUyWdM2g8qCz
         RQc6l4UxXKIwhrqsothe8X6QReQS5+j3ywWIYjl8ghuvGqDagP6CVxFU2vyu4xQ68kkD
         LPY8TAUNn2S733mNtaBD9ZUs9m3kSSZtrCCVnkTyx7dH1c0mH8uOO3jQwY1OksJWEXI7
         cn439NNn9H/AJ75EP/qByX3ygaowKOsZCNWKWdjByVQWut6oVwdFSgw5a2HdbfJwBac5
         Ir/As0rw8JwTGCqp5s2FGvPcKY94stUwLCBGSQQnhq0qFJcx61fsvigsXTdQpYAvekFp
         92hg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=g14x6sHm;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::135 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qpWnjPBQLPzmxTmm/C7ZklrSt3KRcjBMhF0kYwu73xU=;
        b=Fa7XHXA4NsOpOdEeTxKg2C9aOAjkj/uuAqiE8OxhZVo872SZp02b7D5BoEp9RKqHTi
         W7ca3YUeEizKIsmjj1MWlUGrzpp8Ce7Ub3FgbwvbgB6WyrSWR4rYbxATmP/2rvF6ahZ/
         o37J9hNMYvamNhbbAKdsyyae/7A7AQXDiZrYVI84xAaQmcefKiMGvgJxJFMRcNBECVHk
         x2ZkzqLSYqHKqwVwyxd6aLjWrDXl7OqUHIWoH7zXmau69AAGWg0/W1atQWNljyvK8Ukz
         V4R1aSADgC3fdlagIaiEp8eUZuKsCxAJeEIiq+P3etLs91uN1dLhTpW4emPV/FmVYNbx
         JXgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qpWnjPBQLPzmxTmm/C7ZklrSt3KRcjBMhF0kYwu73xU=;
        b=DmGRNuYhCoDk8wNoPKDSVgtFt4y1zsf/zCmvXDeZ+Q2xw1q5Qx0KT6VD5GaT9zxwul
         dd1vqyLEZCpEa/9wSKFrKvmVaAgEFVRJ3+1tTvK+4n/xZOpoBA4p961Hpli8GkHgQsGE
         yfBN1KYwhAPmjlr8p/82XdqNBuGdN0l1FuL7AhKM/5Fq8ANrjP2BLCBNa5SBV4AYQQgr
         Kr3GnIHxttIn55Huj8N/bcVuQOB9sZQwZ4LJA6TwpF1gWMYx8sIrHb4yBgVLvrvU0BYR
         r9PSv4FRbKBeLRnHa4ULFPab2wA7dI7LhmtlLb1myaFsWeRUhvzI3PwcQAyVvqsfaXJL
         2sLg==
X-Gm-Message-State: AOAM5329VVbC/jx3sEOmjqcXVICmZNvq5AtW0WkCaGFUxTg1qPXmSk4u
	o3672VhPOZKcbwgSLzikZDw=
X-Google-Smtp-Source: ABdhPJzXuxngAFjZkwnIF1tgaLeHTFBkX5JqeBkzmY9SbkDKUOI9p8GctFILTIijRC0Ebl6r+eHwTw==
X-Received: by 2002:a05:6402:105a:: with SMTP id e26mr6362333edu.164.1616531330942;
        Tue, 23 Mar 2021 13:28:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:d788:: with SMTP id s8ls172096edq.1.gmail; Tue, 23 Mar
 2021 13:28:50 -0700 (PDT)
X-Received: by 2002:aa7:d296:: with SMTP id w22mr6646722edq.150.1616531330126;
        Tue, 23 Mar 2021 13:28:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616531330; cv=none;
        d=google.com; s=arc-20160816;
        b=yhbBwsijHpmR+gVgYrIe5CLziq0yKCESOVmI378ubUmBaPOlhs8ezEP7QQYgpJlxqF
         qu43oFpWyen98i695RzlN8V9f707ddHCBKqdUtsfkTeE+4zZ8AA2Kwv7CTs2aAUS9MaK
         5hRRa5s1EGZXdx5A4LFrJ7EsjYcq5xOECWXIC/2EB1uPdjM+RRuNH2Idk1/FeHK+/3R4
         sLeWHLaCV+SqUDmwyac/maqCUul5rzgryP70KV5Be2BxznbGV2y1z7lAeVMSPdvv6/eK
         BU89V93qWb3R6pg/PrEezhSlV2l13PG4Zjk5NmjHZycUCIxzFwWg8DSN2C01JjJWcI1F
         8EiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=1mJxXlJLpF04ktu0Td/MXe7AhNpm2832ClSG5vRPtkQ=;
        b=rk3M4OJe1wcsyNDenSk95es/4WZ5nNFNQRlHO1eL79wMB4j7klb/UBcTFhfP5crI1F
         ad7l8uLEdZHAOg00H7rJvz/Nwe2OXKQNtsGE16njmK6iC8hTmEmRuxJP07fvVdFEzQyu
         /NeZdgszXSUgPEg4pR0+b8++G/+wTe9/+p9PKCW5067YzHKaPRCgqJC9YVpSUkS6WYAC
         w6BxCxBlslyowl4JQ2LHLzkN/lF0JJ9K53izjHp79+FcYI4+cpu9+AyC93DqLu/36xvR
         rwouETnPAPN2PUvEw5xTaeH0kCHMEb1Dwegn6I0Y96DXoGAF03EOiI88dT7ZUKnnE+GQ
         TBRw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=g14x6sHm;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::135 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com. [2a00:1450:4864:20::135])
        by gmr-mx.google.com with ESMTPS id t7si6919edr.0.2021.03.23.13.28.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Mar 2021 13:28:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::135 as permitted sender) client-ip=2a00:1450:4864:20::135;
Received: by mail-lf1-x135.google.com with SMTP id o10so28590820lfb.9
        for <clang-built-linux@googlegroups.com>; Tue, 23 Mar 2021 13:28:50 -0700 (PDT)
X-Received: by 2002:ac2:538e:: with SMTP id g14mr3441936lfh.543.1616531329644;
 Tue, 23 Mar 2021 13:28:49 -0700 (PDT)
MIME-Version: 1.0
References: <20210316213136.1866983-1-ndesaulniers@google.com>
 <YFnyHaVyvgYl/qWg@kroah.com> <CAKwvOd=9HwLcTD8GaMsbEWiTPfZ+fj=vgFOefqBxDYkFiv_6YQ@mail.gmail.com>
 <YFo78StZ6Tq82hHJ@kroah.com>
In-Reply-To: <YFo78StZ6Tq82hHJ@kroah.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 23 Mar 2021 13:28:38 -0700
Message-ID: <CAKwvOdmL4cF7ConV8841BX+Pey571KDWM8CBt8NnYY47vJ_Gfg@mail.gmail.com>
Subject: Re: [PATCH] scripts: stable: add script to validate backports
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Sasha Levin <sashal@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	"# 3.4.x" <stable@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=g14x6sHm;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::135
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

On Tue, Mar 23, 2021 at 12:05 PM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> The only time git gets involved is when we do a -rc release or when we
> do a "real" release, and then we use 'git quiltimport' on the whole
> stack.
>
> Here's a script that I use (much too slow, I know), for checking this
> type of thing and I try to remember to run it before every cycle of -rc
> releases:
>         https://github.com/gregkh/commit_tree/blob/master/find_fixes_in_queue
>
> It's a hack, and picks up more things than is really needed, but I would
> rather it error on that side than the other.

Yes, my script is similar.  Looks like yours also runs on a git tree.

I noticed that id_fixed_in runs `git grep -l --threads=3 <sha>` to
find fixes; that's neat, I didn't know about `--threads=`.  I tried it
with ae46578b963f manually:

$ git grep -l --threads=3 ae46578b963f
$

Should it have found a7889c6320b9 and 773e0c402534?  Perhaps `git log
--grep=<sha>` should be used instead?  I thought `git grep` only greps
files in the archive, not commit history?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmL4cF7ConV8841BX%2BPey571KDWM8CBt8NnYY47vJ_Gfg%40mail.gmail.com.
