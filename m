Return-Path: <clang-built-linux+bncBCMIZB7QWENRB4G4UX6AKGQE5GH6XKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id A9E26290251
	for <lists+clang-built-linux@lfdr.de>; Fri, 16 Oct 2020 11:57:06 +0200 (CEST)
Received: by mail-pg1-x539.google.com with SMTP id x77sf1055830pgx.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Oct 2020 02:57:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602842225; cv=pass;
        d=google.com; s=arc-20160816;
        b=WWtQVIbCgHsBz7tRd1siH81FcvSaRCm6+OXCc72GFYFkhdu+vTBnROP6W2N6mI4Yeq
         ZlOSqVhsVBJO+o3MjM3EwpmH5zPF1GyEx/Tjmoon8gSSnI5JZWd78K0hsqtDrCjiY1BS
         Z1T8RUQuUqexx9Y5chZmcbj/9YzlklS6qyjO13GOrWk82mflnfbB98zZjlWckpdp0EJk
         +hQS62193kcQSPLK9JCiNIy+IEAoGekUIOo4WcptOtCaEa0aa4+SqNHHna51EaSe0EJH
         rQuAi+LnidLn2pIMPqtR4dI3ISliXCpUpiPEeGOQkt50Ge2RQYKlOqjkDsBh77WqR+cy
         I7xQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=k8/P1NVtG4/mPmUc6ZLYX2K0zCjQfK0/hI7Yk6CMx00=;
        b=VNtm3FUy7QG00aA6qo+39XOXyNXX078gKNkr0rQgqwSsStxyGmWf5HKqUvkuwyn2P/
         140YMyO8bOlJyJ9HpNqnkoZlzuCXtflmj3I6dz00HzBhoTTNZLftecUMbLrYo6HDfG1L
         RAkCi7tgUEtI6pQzugGKDTZ4MqKEf2P/eKAdjAKRGxgeeQHThNjXZKfFQzeAzw9D5W6N
         wugV9RfChqJrUqUI6awgHaIm7n2tHX0HJTlVYQUQ7+WrVGEkca1VMRvpUJyIt+w1eaA0
         ZjyMyLa7uWLd0I+TNylnrLKVlVspXBW0Wx/vXbhsj+j16Z2dX67twzBQPMRojSXUYK3b
         GN/w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=AsqMTfOp;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k8/P1NVtG4/mPmUc6ZLYX2K0zCjQfK0/hI7Yk6CMx00=;
        b=K2lsafof8eNZJxKQrYuhoGq5byo8/yWrY7baIHvL76/kZ+Y9/R7+CZhj7gtQCxkASY
         7b9/kTx086A+KSGOMMadp6uM9HqCaV506EN1BdxcHEBk26xxvhm3C2MHo4V6LjPK0muT
         tQgJqWZrN5MMGvtfGqdzFOg2bvNMQwdDkhbydcIBf0j1If0ulpEYGJXUBCfHlbE9g62/
         HCqpyEjkx1wE+7FsgCEhL1jlL9XzAcP+b5AiIU63HeZaZoAqmyjl9HXDhk3qqeLsFUzT
         gwXMV/h2tApCISYqNBAeG/DKmnDDCdMd/XgLQHt2TA8nReOQW030wWe3ZsRa1OIpoYAQ
         bGMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k8/P1NVtG4/mPmUc6ZLYX2K0zCjQfK0/hI7Yk6CMx00=;
        b=ck2sHS4Du+JHc+DpivDWST7vTGgOU6UYehN3BhH0GkPpqtF084vzYneqPZiAQyO95o
         K6lJ6g8kaJLqiWSUCzLa+mz6K4ToZOod2scP044qCI3+u/3rb8CRhp6jvNK+N7Pd1XSf
         RYq/ze+fb31c4+GHydDh8K+2IsWHOwXVESh0uLlpqJ6FetVUaRMrxeMEl4yDh21yQLoe
         j3KsKMBFsxkmL8UM7qqZ+sRfhSaSfEPanQQqCZAAAZf12t1nDej/Ej7v/NunE6/FQNVq
         rYgSPQU8W3TCQIASNn+MN7K4t5UbzndZLicqnRwGZ2831yruk8sI+NukG1Fvsnqr0VG4
         WiEA==
X-Gm-Message-State: AOAM5303rViIq+Ek5FOPrEL/Svtcj5cUnZbufmHI5/ViGCHj+m9HtB4n
	Ifn0x05r2/UsL71aNIJOI/k=
X-Google-Smtp-Source: ABdhPJz09vfVoMuvQcPXTHdbwkT5vEvGIiUENHhPwcsDocbddzXiOvpkP+p8sY4Lw4hfW7EuUN2fyA==
X-Received: by 2002:a63:1e5a:: with SMTP id p26mr2486203pgm.85.1602842225015;
        Fri, 16 Oct 2020 02:57:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:4486:: with SMTP id t6ls1148894pjg.0.canary-gmail;
 Fri, 16 Oct 2020 02:57:04 -0700 (PDT)
X-Received: by 2002:a17:902:7606:b029:d3:d2dd:2b3b with SMTP id k6-20020a1709027606b02900d3d2dd2b3bmr3221304pll.67.1602842224427;
        Fri, 16 Oct 2020 02:57:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602842224; cv=none;
        d=google.com; s=arc-20160816;
        b=MT8u9F7hW208qFHbZecX6Bjohfp7pWBuZjjkCunoiXWjZApPW83Y+kcZCRbtsEU2ku
         qvOlTwpj9Z5JDxkFjk01NrL7DJU9gTCcSiLbFgMQNE3tF3UGv3tpXKl7goavG0Kyd/mn
         k7HUroMxxC5lJr/8neYKacKCJsPcfkzgzqEnf7ro+uY6fIqSCLnc83eafMnwoDHt4gzm
         csnldMsxDPL83dK8UvzT4Stno242p1nFfRjadfTCzvgwGWr5NihsKU1scRkCicHoloWt
         2KbEfzyB1/NjgrgBHqZ3UldyTRD+LVKGYZOdnDmY4ZCjBE+MMdcgGCifqnfk1HD6Qmrg
         9Jzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=B1L7qAxVNZRnh5eKsi+5+dAMdXrzBce/POFgmzWQjvo=;
        b=ssJ/h+5lKUdt/2mNyBA0dzx0M4zGi0+LWBkwPqMip42GIL+Qm7NpE3Or+o5C1nB9In
         Vb7XbmeFNpU+DyVZni+GneHy8EwUazWNyJwz38iPLng05xOJ7ukgnGIVg1xaEi6/j39D
         sKt+HTYuFhigqwg1ReUvEgsm/gM4qyjaRAliR/Nm0Gcir+TwZEUlJ8nyqOkh7EvDjdAP
         wfcG2dbaB7z2DXY2r6gIkQeP+V1g4UjjMhY8YZaZqQyxvmbITuKpN/7HkPm1vlwUB7Xv
         LXpjKXwbTQojGY/hxN+OKCaM31lBWTdE43ds3nO+xq5XQA72njLw4uvaWoPEqx+Uu6uY
         Pnjg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=AsqMTfOp;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com. [2607:f8b0:4864:20::741])
        by gmr-mx.google.com with ESMTPS id m62si125985pgm.2.2020.10.16.02.57.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Oct 2020 02:57:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::741 as permitted sender) client-ip=2607:f8b0:4864:20::741;
Received: by mail-qk1-x741.google.com with SMTP id 140so1484261qko.2
        for <clang-built-linux@googlegroups.com>; Fri, 16 Oct 2020 02:57:04 -0700 (PDT)
X-Received: by 2002:a37:9747:: with SMTP id z68mr2914587qkd.424.1602842223364;
 Fri, 16 Oct 2020 02:57:03 -0700 (PDT)
MIME-Version: 1.0
References: <00000000000064f6cd05b1a04a2c@google.com> <CAKwvOd=4h5-YFWvUATRx=++oGJ9jfBP+n6B=4iuW_nWU5XfJjg@mail.gmail.com>
 <CACT4Y+Zv5nM4V0jPr+MXwDCcrq8ZZjKFfpHBJBGOekYVOrtOeQ@mail.gmail.com>
 <20201015175819.GB3336735@gmail.com> <CAKwvOdm7=WJHaz+Kq9rxsTZ_AJKAMaYQ65KYOpGWQHu7gXHUiQ@mail.gmail.com>
 <9dd3b8b35a5d03475d9d4f68b54a6265b4c24da8.camel@perches.com>
In-Reply-To: <9dd3b8b35a5d03475d9d4f68b54a6265b4c24da8.camel@perches.com>
From: "'Dmitry Vyukov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 16 Oct 2020 11:56:50 +0200
Message-ID: <CACT4Y+bt6Y9k=tJR6Q9Xo3TT8Xp2aD7zp0iBEFWMnmWGrfu2Cw@mail.gmail.com>
Subject: Re: WARNING in __rate_control_send_low
To: Joe Perches <joe@perches.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Eric Biggers <ebiggers@kernel.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, syzkaller <syzkaller@googlegroups.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dvyukov@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=AsqMTfOp;       spf=pass
 (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::741
 as permitted sender) smtp.mailfrom=dvyukov@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Dmitry Vyukov <dvyukov@google.com>
Reply-To: Dmitry Vyukov <dvyukov@google.com>
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

On Thu, Oct 15, 2020 at 10:21 PM Joe Perches <joe@perches.com> wrote:
>
> On Thu, 2020-10-15 at 11:02 -0700, Nick Desaulniers wrote:
> > Joe, would it be possible to distinguish between get_maintainer.pl
> > matching this on a patch file vs. -f <input>.c?
>
> Lots of things are possible.  I think it unreasonable though
> so if you want it, it's up to you to implement...

Interesting. Looking at the current list of K: in MAINTAINERS (below).
I think some of the entries were added with the same idea. Definitely
"bpf", and I think we got similar complaints in the past for it.
I think it may also apply to mentions of some APIs -- e.g. you have a
widely used API, and you want to be CCed on patches that
use/add/change the API, but you don't want to be CCed on all bugs in
the all the files that use any of the API...
I wonder if K: should be skipped at all for the bug reporting use case
of get_maintainers.pl? People generally list their files/dirs
explicitly.

K: nds32
K: mediatek
K: bpf
K: csky
K: \b(?i:clang|llvm)\b
K: \bdma_(?:buf|fence|resv)\b
K: \b(ABS|SYN)_MT_
K: "nxp,tda998x"
K: of_overlay_notifier_
K: (?i)pidfd
K: (?i)clone3
K: \b(clone_args|kernel_clone_args)\b
K: \b(pstore|ramoops)
K: pwm_(config|apply_state|ops)
K: \b(?:devm_|of_)?reset_control(?:ler_[a-z]+|_[a-z_]+)?\b
K: riscv
K: \bsecure_computing
K: \bTIF_SECCOMP\b
K: phylink\.h|struct\s+phylink|\.phylink|>phylink_|phylink_(autoneg|clear|connect|create|destroy|disconnect|ethtool|helper|mac|mii|of|set|start|stop|test|validate)
K: [^@]sifive
K: fu540
K: ^Subject:.*(?i)trivial
K: regulator_get_optional
K: xdp

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACT4Y%2Bbt6Y9k%3DtJR6Q9Xo3TT8Xp2aD7zp0iBEFWMnmWGrfu2Cw%40mail.gmail.com.
