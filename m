Return-Path: <clang-built-linux+bncBDYJPJO25UGBBOMV23ZAKGQE4X73TOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 77A8D16F0C2
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 21:59:38 +0100 (CET)
Received: by mail-ot1-x33d.google.com with SMTP id d16sf184152otp.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 12:59:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582664377; cv=pass;
        d=google.com; s=arc-20160816;
        b=GT39727bPef4s/c6oBrvKwjHr23myP6SEmcx7lHqXvn3JVtoLiAsZAB9wDwo/OMHlv
         uSooMkS+JSmxC5yREtYI3oEsnKihTCQYopgZ1rt6sgxPr1XwiIdAb4sE3CPDNzMMbfGj
         1A5kPSX0zY6amTaAvR+FnY7/yALSgm8S6Aoo+eTjkWr9R5BE68iiEK0W33o7rvRXkf/m
         yr7RTiw1Jdd3azSJm9Zrdjjlpax6eobx0ygXydo9hQaVyu0WuqxYYq323ARhShxcrHea
         QepdIV6pnJwv60G774JxdzBs5HDJnjlWNk9b2clYiWQqAlC7Eh+NeMVqoRhb7hkJCIvN
         l6kg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=o9WzpggLyy736xQZkeUGzZCklx87iNGOLf6L/9ko9ow=;
        b=hjnwej3tf1mmBw5R3yTYuGhjHOKRmjK3jJTy1USvDFzMIwCzsB1XvElGG+kJ3saq+z
         901K3IZXNE6Xru/p1uh4DL3pUnVM/w4SjzOmofChK28SuAWlA5sYALgqO+duXhhmmW/s
         mWSuxtREhCxEiDvVPc3ojaj1gM+0bGSQDd7XIIFp1RZQCQALomrgY4qL1A2Xgv8OvNfA
         8YU72mhrAmClC4X1jNanBhlkZPtL2a6ajAfpU95zIEXC8pduGjcUHm7+IGozOOBLAZOt
         PErNp1ZZkFf25hdPqxa663BtuMbsw7UyR756UHf141bUoIEoeozWdkpjJVBehQ7AmMYY
         dK1Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qYTPCkYA;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=o9WzpggLyy736xQZkeUGzZCklx87iNGOLf6L/9ko9ow=;
        b=A5njIk6qArwa1oJNnGZ8bGf8BQtxBDFK+2blacTHFZaAWmfR/vUZElfypX8ilhNTQy
         wW5UDS7QxTKyG8TcOa/o+CLmO3O+LEX/D2AqWWr2LwBW9WZSmI27Ff11eIH4TUN1DDJs
         rkmUGfytHPtdYM3VyZ7Sr8xqYVb1BiXujBde1OiGWQpVBZEDKW0B4CCK7VnfTR5RefqP
         MNK8cvxhMFTIDEs0RHLcpbzh6OveNSgfDJEhjz4RoXusBqxuJNUyGXIawx3MPOl097LK
         AMfnmln/e2bmgeHynXObaDyo/Vpdj96l/QXis8wj6kyboL7dkandjMnC2Cxl/1i2lpSN
         4Y2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=o9WzpggLyy736xQZkeUGzZCklx87iNGOLf6L/9ko9ow=;
        b=PLDUAq5udTQLue8noR6pIjDMOaLoP9xDdVgJSpJqSaK5Pi3zvyWB+rfISP1R9u2JeV
         B5ZHNgZywEFxn6kK/gGBQP7YdEmCZTkaPH5Vdl6T2BkbKJHUXyuA6EA/FciQeFQt9fIF
         7boAqGCfraKjbr+OHQTYYKLhrYbhR9WEC+21z/ceXisKFFVSBtprV0rBWBHxbnqMltdp
         unIoDtz3Zl8diKR/sV11w2RTw1i+ojGzEDsSUeobW/JWS7y9/JZ5D+iAaeUES5MwPLYB
         GLPG5nY4xc+JYcUmrf65QF0agz3fL0Q4AG/E8NjodwZx/QXRV99Id2mYEDwgbypIDnxY
         eVYg==
X-Gm-Message-State: APjAAAXwvR7FlmvUyr/CSaH0lvb1U2WgJvIEDSfscKXOztedkHrgUtoq
	z2IjudcG1vAqku172xSko3Q=
X-Google-Smtp-Source: APXvYqzoWxXBAaXO1CPG0ipiUWmvm5bqV9XDOinnDg24CEdCfjYxQziGB2inVBIl5fJ9ROnvfN3Nng==
X-Received: by 2002:aca:c515:: with SMTP id v21mr678748oif.60.1582664377471;
        Tue, 25 Feb 2020 12:59:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:c7d8:: with SMTP id x207ls97986oif.0.gmail; Tue, 25 Feb
 2020 12:59:37 -0800 (PST)
X-Received: by 2002:aca:4ece:: with SMTP id c197mr614213oib.53.1582664377102;
        Tue, 25 Feb 2020 12:59:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582664377; cv=none;
        d=google.com; s=arc-20160816;
        b=Kb0pQr6J+nF7A/sSmZ9iDqOR3Tg/XdsOprwNdRA6lWwFxzVi7aujbXoZX8kpoHAJEH
         Nm/HO++9Oo1PFviPRElUbofQXH38WEtWVNRnFPvjvNOT5ozNwHCOm+f++e9np0Njwm4I
         YNvfx/BxWxFMidUkY20fvmjI7zkICmEAnGlPNi1LK8/klciABRf/0OhWxa5szA/fl0My
         IYf9ByZ2VZXk5rfLEoRWYcGHYctvlsowcu3iSDG4NmTGy1vNekVQRr9qWQ/CRDgCv66Q
         xCxh3+vyrEqDiSDu6gtX6Yqyv8X7BfRb8rodj7T/DpSrCpxHVtDsohNsC1wX3nXya0Vo
         S8TQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=l4iIiKgZ3F5fVRZU+jMxKAB1P3b/lgfIZbluQQ7RBgg=;
        b=ziKh1GkWw1TznENlLMh0k6x8mjUZHrYI3mK+fBlIg9dr1sk+5kSZCDMozSCpiJ6iqu
         jWXG95xpdD5CApyBokg1a6z8YX/1ki+YdlOCWoGi/2rFFQT1+8o65d2qSRcDLvWCuXDe
         dYwAIr2KFMN8wvuPg/Nv1BFbtt2qfPzyvbmIvOTqq9NhUFxkKANUTL3sBxV9q5qbJpHD
         Xlk3+L/cW7JaNFUyTvnNvvFe6UmydzBzkc258YA0tnFvt6kLY3iPHH6J0twmQpN1WVl6
         IknKr/BIXhmKdKTs8ExISpU5Zff1bnpRE/k5ViSeHSEJspLd45eDg6YVsa2I3Zx2JE34
         cddg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qYTPCkYA;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id t18si31787otq.5.2020.02.25.12.59.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Feb 2020 12:59:37 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id j4so158294pgi.1
        for <clang-built-linux@googlegroups.com>; Tue, 25 Feb 2020 12:59:37 -0800 (PST)
X-Received: by 2002:a63:4e22:: with SMTP id c34mr371057pgb.263.1582664376061;
 Tue, 25 Feb 2020 12:59:36 -0800 (PST)
MIME-Version: 1.0
References: <20200224174129.2664-1-ndesaulniers@google.com>
 <202002242003.870E5F80@keescook> <20200225041643.GA17425@ubuntu-m2-xlarge-x86>
In-Reply-To: <20200225041643.GA17425@ubuntu-m2-xlarge-x86>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 25 Feb 2020 12:59:25 -0800
Message-ID: <CAKwvOdn0_EETGtBVhbRKMPqv2K04Z1N4PuOZDZ6++Ejbi9-B-w@mail.gmail.com>
Subject: Re: [PATCH] Documentation/llvm: add documentation on building w/ Clang/LLVM
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Kees Cook <keescook@chromium.org>, Jonathan Corbet <corbet@lwn.net>, 
	Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Linux Doc Mailing List <linux-doc@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=qYTPCkYA;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543
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

On Mon, Feb 24, 2020 at 8:16 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
> > Should this also include an update to Documentation/process/changes.rst
> > with the minimum version required? (I would expect this to be "9" for Clang,
> > and "11" for ld.lld.)
>
> I think the clang one should be added in a separate patch that
> solidifies that in include/linux/compiler-clang.h with a CLANG_VERSION
> macro and version check, like in include/linux/compiler-gcc.h.
>
> ld.lld's minimum version should also be 9, what is the blocking issue
> that makes it 11?

I'm super hesitant to put a minimally required version of Clang, since
it really depends on the configs you're using.  Sure, clang-9 will
probably work better than clang-4 for some configs, but I would say
ToT clang built from source would be even better, as unrealistic as
that is for most people.  The question of "what's our support model"
hasn't realistically come up yet, so I don't really want to make a
decision on that right now and potentially pigeonhole us into some
support scheme that's theoretical or hypothetical.  We need to expand
out the CI more, and get more people to even care about Clang, before
we start to concern ourselves with providing an answer to the question
"what versions of clang are supported?"  But it's just a strong
opinion of mine, held loosely.

Either way, it can be done (or not) in a follow up patch.  I would
like to land some Documentation/ even if it's not perfect, we can go
from there.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdn0_EETGtBVhbRKMPqv2K04Z1N4PuOZDZ6%2B%2BEjbi9-B-w%40mail.gmail.com.
