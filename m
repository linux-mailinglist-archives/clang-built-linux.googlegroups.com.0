Return-Path: <clang-built-linux+bncBDYJPJO25UGBBK7RTT6AKGQEUT6722Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D56F28E596
	for <lists+clang-built-linux@lfdr.de>; Wed, 14 Oct 2020 19:43:09 +0200 (CEST)
Received: by mail-pj1-x1040.google.com with SMTP id j6sf245591pjy.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 14 Oct 2020 10:43:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602697388; cv=pass;
        d=google.com; s=arc-20160816;
        b=A34ELBmZmOuVDmxkcuiUr0520sFWQlbu7/4E69AvGrLH+PUARmdGHbsEU4ALVZ0RUp
         iJ1Hgw+twYuXhgtneSUQWALsBGy3FLfECqRiwSw7a5GHLdJkg2pLGaf9dcvOQ5LnCsns
         FnNHHtVSdEXLNvVy6Zpl+zVJKFhL6GNoCSCB/Xm9iz0h68kb8lWlVBeY/hoEyfalWj4f
         /4rY4C+yl4y5UmIWAXjFQSm1PR2bVPnjSChtkcpKrqF7IuqmyEJ8a3P+580GKGS2YEsZ
         oVsLjv+unTLC7GsMIn5sDa59c1M3MFTuXFQ1eyXip0dAxvGQUwrKTBaoyQUeVupsSUs5
         uTAg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=UisEGT4CggADLvst5143d0Q4FNkIjwg4h5gybgcvHBM=;
        b=FH7meW6znPCfTdKINsoMEy7Z3Pwdg/1zHYjEQrVyhmcSuQZfVQH6TkOsElyMPJEC32
         F5kDs5m7QIAJNhzoPEaXUZ7UNPO57VPEmwNuVZub+/SuYOL0HfdDsnlzbgGDC6G4bQVA
         L9Ood1jFLyPqRdGQk+AzR5kxJ/wOjuTeGisPZkf5Jo46krPMD7qoD2D/G+6teaB5jPHO
         quAGR4BzG+JPxLOSxxZp2HnQ5NfgO5dAo1rY/t2JeX/xBMjHhicL/aMuvGD14YAr7v8B
         qwqPA//njLJq5PRiXoZyoOMpl4MJOCqiRtlevoO2i66CwWmchCHK+dI6uEi4eMcdXGFj
         ZWRg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="muD/lbk0";
       spf=pass (google.com: domain of 3qjihxwwkadskabpxrikfbopdlldib.zlj@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3qjiHXwwKADskabpXrikfbopdlldib.Zlj@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=UisEGT4CggADLvst5143d0Q4FNkIjwg4h5gybgcvHBM=;
        b=ckprmEqFd2ISpD6j+jDcr+ZlluOAdQaNO7YPsFGPWSWi9JRk3v3YUYyPRXOqA8ENEb
         YBorE+D4FrP+1sqj4kb9/sySH84SDKm5n1XvYUS7sFLfTAWvFawSZmZzx8y/0bq8Xoc/
         hihQgZ6NNzqJjSu6ryxJw1g4nVUfkY7UvLZr7m1PPU8gYRE8VvRTgPQ9d3pRxh49RENe
         0uXp8MT9MzIVbyTSJqzceGUSaKBGD4ao/bpV/msF+8sMcem4FxVl+5K+/TB9yCtfFutr
         dbGn1ippXatUU+rPKlZ3VhzVePjz2lPc82rGYs5RR7qushhj1oGHWq0BmphUR1W2ZihP
         tN+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UisEGT4CggADLvst5143d0Q4FNkIjwg4h5gybgcvHBM=;
        b=RkqeZA3jSswJl+sfma2zBqemM2IfLrIrubUl0kzZQcLO+lrtKhTDzfBcsnrVxQ4ukD
         QeAn3dNDWZdDYHViL11LOUdVTvqnoh+7MKNrj24qegwG8NlpyItL1HtutqVm44Z4q73T
         nmj/lsrux0FGghTNsjAAYNSyuZGNNj7kwYHicXmdhXrf3rHB15gglrsTTIsYJUmZoTq5
         63nlnrDHaJnMXuB/5OK3jV9MrJbw8nQqFALyhv+UHT4jnHeNE4TBaWujEFuP9b9vm09E
         gML9gwwYpSfwF+QzrPkWtNSv23sM+fxEmIgG58vC18ot0AfcDA6xa+oWQiE4SMkHeBhd
         KAGw==
X-Gm-Message-State: AOAM531aC4K1P+rCKPvzzsEbe2aEXyvuhXhV2zj3bYLQuArkpByGPWQ3
	uJVov0s2oyQZgx4iKibjZAY=
X-Google-Smtp-Source: ABdhPJzUWDHGNSJdUN1CG9E+BDyTRKszpVxDnS60T5gJttjT31VknKAp+wzaRDEOkbPqxVT2nn4xYg==
X-Received: by 2002:a62:5a07:0:b029:155:73a4:d73a with SMTP id o7-20020a625a070000b029015573a4d73amr452548pfb.22.1602697388046;
        Wed, 14 Oct 2020 10:43:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:5064:: with SMTP id q36ls64505pgl.0.gmail; Wed, 14 Oct
 2020 10:43:07 -0700 (PDT)
X-Received: by 2002:a63:3e49:: with SMTP id l70mr113586pga.264.1602697387326;
        Wed, 14 Oct 2020 10:43:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602697387; cv=none;
        d=google.com; s=arc-20160816;
        b=IuJ4ZP84b20puAT8fMIGDpqqp0JzNmdggwvFcLAqBDuYnuvjezDwYu6G0aD90xn+0v
         YRjHmBObHDHBIDyK3Ir+Lt3g4uak8/2DDmqMjgdPJtViLeBhAl1MpEDDe4InDAK+T/HS
         rKAzbPaFZz6WZwuyQ+y/oAql9htrKzKeGMHN5E1mLwC8vq47EM0nLZ5qB7hIExAc8CLS
         SFP4PvYxMC2pIl4YxiS67208ge+9bEJeT1MFZ4q3/Rg7BaIUqCP7B5FOjguN93YUDkxQ
         NhrM7SWEa9h0DagyjCggl40SpUPdcw+1tpS2mRoofTxz6fkz0CwdfZlie5GRIBGp2XTn
         xiqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=f0pB5/6uDIV5mRb154M8ZVIAD20wSOQVeYXIO9SVDew=;
        b=N+ZS0v/qrdx7fz45E49b3qbxssO4cw2s2WyZbV8SwQHpIzIcVWM6jazlYGwWlVPtOV
         gTUuq+JO+Ot50MQHxB+RYhXDhduNzOk+6N81qZsEsE9ot3WgMr+FwLG+G2Alpl1wJ0Rd
         K6dxYM2O3rhdVE+uo257w/l2BfrzZzr8nnTIn+bvmwVK62lgYWd0MdHmEUrBApEaw2gQ
         E+ryCwUY9ehxFIX4IdK3hHiNFZUSsOqsWq9BxR8uR7Qcg++CcIhGW6B9B5FnODI1l2Ct
         anKj+IRy8/DbJxgOjiO3jSoECHtphbaA7/uAASOmV14kY6MOWluPcSwqiUN1pqpKgACO
         xwOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="muD/lbk0";
       spf=pass (google.com: domain of 3qjihxwwkadskabpxrikfbopdlldib.zlj@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3qjiHXwwKADskabpXrikfbopdlldib.Zlj@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x74a.google.com (mail-qk1-x74a.google.com. [2607:f8b0:4864:20::74a])
        by gmr-mx.google.com with ESMTPS id i4si27639pjj.2.2020.10.14.10.43.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Oct 2020 10:43:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3qjihxwwkadskabpxrikfbopdlldib.zlj@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) client-ip=2607:f8b0:4864:20::74a;
Received: by mail-qk1-x74a.google.com with SMTP id y17so254873qkf.15
        for <clang-built-linux@googlegroups.com>; Wed, 14 Oct 2020 10:43:07 -0700 (PDT)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a0c:b78c:: with SMTP id
 l12mr651830qve.38.1602697386340; Wed, 14 Oct 2020 10:43:06 -0700 (PDT)
Date: Wed, 14 Oct 2020 10:43:04 -0700
In-Reply-To: <CAHk-=wgUjjxhe2qREhdDm5VYYmLJWG2e_-+rgChf1aBkBqmtHw@mail.gmail.com>
Message-Id: <20201014174304.1393937-1-ndesaulniers@google.com>
Mime-Version: 1.0
References: <CAHk-=wgUjjxhe2qREhdDm5VYYmLJWG2e_-+rgChf1aBkBqmtHw@mail.gmail.com>
X-Mailer: git-send-email 2.28.0.1011.ga647a8990f-goog
Subject: Re: [GIT PULL] io_uring updates for 5.10-rc1
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: torvalds@linux-foundation.org
Cc: axboe@kernel.dk, io-uring@vger.kernel.org, linux-kernel@vger.kernel.org, 
	kernel-tooling@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="muD/lbk0";       spf=pass
 (google.com: domain of 3qjihxwwkadskabpxrikfbopdlldib.zlj@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3qjiHXwwKADskabpXrikfbopdlldib.Zlj@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
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

Sorry for not reporting it sooner.  It looks to me like a GNU `as` bug:
https://github.com/ClangBuiltLinux/linux/issues/1153#issuecomment-692265433
When I'm done with the three build breakages that popped up overnight I'll try
to report it to GNU binutils folks.

(We run an issue tracker out of
https://github.com/ClangBuiltLinux/linux/issues, if your interested to see what
the outstanding known issues are, or recently solved ones.  We try to
aggressively track when and where patches land for the inevitable backports.
We have 118 people in our github group!)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201014174304.1393937-1-ndesaulniers%40google.com.
