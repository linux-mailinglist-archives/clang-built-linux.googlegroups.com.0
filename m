Return-Path: <clang-built-linux+bncBDRZHGH43YJRBKWXUP7AKGQET3Z4LII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id AEDB92CD7C6
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Dec 2020 14:44:11 +0100 (CET)
Received: by mail-pj1-x103c.google.com with SMTP id kk4sf1362337pjb.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Dec 2020 05:44:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607003050; cv=pass;
        d=google.com; s=arc-20160816;
        b=t4g/aKGjMltcP2ay3EuZ/GEpJsm47HGcwZLOKnav72O9g7iJhpAUE9ONjpUxa+KDE+
         ENXijFJ+vNjF5j2CbyMlYGvvj/gdIhlP2mT6r9JVgiZO6oDVswbutgVhxg391iUhYe1y
         exa109S97n+ZPH2KSEhues19QUxUp5crDW69jW8/V5lECNbpMXUKMglkNDkpaOc5jOgJ
         Dp9BNCcvbUk3CPYD2KjR3Cjaa/dI3xHzPlbUJDnWMxpLEYZUcMfX0Sveq2bmPkVY8rqI
         XYBmVxMPSY7EE/c5v+i8ymqQF08T03VyfR+LjWP9aML92hYv+LH50b8JoxNROO/3r4U+
         bZzg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=9Yjf/Gh8PBfMkWHDGVG6OtgyWg0FoKRvMyhxMKmXbek=;
        b=ltMLQ19JXpurw14SZqFhCzOVNzoxX/pdVMCwaZGW7q6D0oGgmzNXiYz/491Mu1XBLb
         Z2sUadefLyZysULVCl2+W+dOqYtuM+Mn2Ln/QKt8WCJFrw79+MnpLwkD69PbDjZZvV58
         f0uV6J69vGRIl/op8qFOE1hXWW7raIiI3qwePexs585iaKNpiLgh5ZNvSWQK7AtTwVH+
         fide9AjqRYYKgw56fDLiJiQt0iI2Gc4VIIsfHMYtdqiB39QSsxY829/Sr8M+90VZNfoM
         0J89LmrjykMg/BL5UXyInf7yTDGTQpiFSsf6UetiLihlW4cnFFRkdrx306YMOEcHs8jC
         UlFw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hkGfBp5o;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b43 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9Yjf/Gh8PBfMkWHDGVG6OtgyWg0FoKRvMyhxMKmXbek=;
        b=p4DNktMhGhS0Y/WRpq+JxhT1Xr/nCXKrN5jW9O0p4c6Cmdg88BaexOLKcaljg5yk58
         kcbUowkfWInci+V4Zrnyw4uIeBVFFABe/3QsMg3fuVrZAt0Gb0vSRQp9V/lWYYvJ6Wfq
         /oEgLubKExcPtXjtoOeALNp0pcE7of28snysG6P6qJmdZpHF3yaNazscjGPJXM2lVnYK
         HDcsLbrxUAgYTSUzl544qo+GF70we0vDbgSaw1ClFGHQAT3MS35l+uIdC5IOXLKZl7hn
         A2lcLIQgwGH7Vwr8TsR+E/pd6VOe72xgtylp/irpxEldV7UHDBoX6JG9AGI4DLOkwgkr
         UZEg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9Yjf/Gh8PBfMkWHDGVG6OtgyWg0FoKRvMyhxMKmXbek=;
        b=emFxyIW50ZkUEIZ34+Joh04MfxJ7KV4XB8HfRnmcjAi3sonn9X2OfzC4Dy3kiuJ3Y5
         Yd9PzuN6hwnEFzwCO8DsTX0BKpt2Z3FbtS/Ro1bcLJOpggseOjATZH2SyPMOqN/q7N1k
         31kVDBaN5+paODm3tGk9tQtIdZixUlwPstgW/3B0xaEpRSrp9klFTyhJhakaQaFHKCWr
         7rBpLkzlI8HY99mrrGGh7Jd3CbH+JFOVCnFLY144yUOiR+3p5B6mTa+OH6lLcYA4eqkf
         h7puFumOfj0jjHEqDd6czrfXdpRh937UssHVWK6vYNmF9H4oT4l1lIAGARVXUBYVUgF6
         lYyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9Yjf/Gh8PBfMkWHDGVG6OtgyWg0FoKRvMyhxMKmXbek=;
        b=H+Lb1s1US5ZicB02qhYGpGGBMwTj91jd+RjoRSwljPCpUaOh+mHEXNnHdrpvWfvwBi
         9vL0KX3cQMS7PjvVx/4BmynHJSt4fpRpYwx1iqy/icRlvo5kmQ59RAAAsmi7RoRzs1K8
         kGs2i9wfDDap/f6Td8O9ogv1y/naqVVGGBHcZdjRebj529wWYiTs7FwNag24H8abskBo
         W6lW3dysnWmqOn9hiXT9OnCTvM84zTU4pNHf1TM9daoVTM9AQlReLlk2/xcD4hUAPrLg
         XDbbxAJ+2tGWWGUnWIBzWkPXo0S9cATyIWz9zP57C1oIVfBSaKRA7O9c/3dUusxEhwGZ
         iQHQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531uXx8/802VDgYqiQpCZpG+efnBmXhw/ceble+NB25Q7Q9j+uxj
	AfEMsY7t1g1ZL+v10iNRib4=
X-Google-Smtp-Source: ABdhPJz5I6t/ExSpV3BbMikK3MOC4Q4EcKhp+hXfBnngudomw/X5SKdxH0CYOY+IGwyF6hCOfYfdgw==
X-Received: by 2002:a62:2683:0:b029:19a:9594:1abe with SMTP id m125-20020a6226830000b029019a95941abemr1300605pfm.19.1607003050435;
        Thu, 03 Dec 2020 05:44:10 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:e905:: with SMTP id k5ls2686066pld.4.gmail; Thu, 03
 Dec 2020 05:44:09 -0800 (PST)
X-Received: by 2002:a17:90a:68ca:: with SMTP id q10mr3232109pjj.15.1607003049724;
        Thu, 03 Dec 2020 05:44:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607003049; cv=none;
        d=google.com; s=arc-20160816;
        b=LCUkRKF4nCii+rDe29u/lmQ45OBf6fIHxXnojRNZBDJkLPG7JG0wyH7fvilL+XHRsM
         RY0mOUEav+emTqgD6RIi1qRHZi8b5oyNe6gMSBzVxgwvxcJbk2CDNArgXCCXdCBhFm7P
         nnE8AALdwGKIrYKTpAfsEPXu6OJDk9OPFC5xvsB7Nzrhzl+b9ll3ngXt8xUGnvpxKrTs
         PXDmz3nwQTQGt7omDlZAhUKyokbCJ9HZklAm5noGoDngVl5Qkuks9hokhoaIEcNieFHc
         207ciSqkD4CEQ+Dv6ZGRbEufO3keNbSj/VD/d1n84H10VX1EWvJyUCDStBycimxuY/zC
         KyBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=pfby8i2KpiZBIetG9ciMHISiPc06IgVPZEII0RJ/6to=;
        b=oH06ka61wohX6ZCaGegg/e9SpqiIHFHEhpUOBFWZAdA5nvkfPuATr4W0idIdUuM3c9
         bbtT8r9G2g+m0EtSdeoXpk7jwOiHxE7DRXCyL8ggeYzl+pZQ1EA7cntkAuLDB+5mn1Km
         TrOqLe6dXlcl+Yxf6zyriINZh9RdaryRvmXuAAq8Am81D8atTZqiJXKiFk8+JQnNtAUQ
         Vp06U7i/UNYt5ViSCMXYVQGRr8956sBE1/olAefsMKbsDDZjNYAgQDNpjpE7O7HKfW+b
         hyncUy4cABSISqPO3jgdZ9N6kM2v5nAJl1xyqfImIVwd1RDUpPpwZbE8hcXf0Cz8bIjj
         pz6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hkGfBp5o;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b43 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb43.google.com (mail-yb1-xb43.google.com. [2607:f8b0:4864:20::b43])
        by gmr-mx.google.com with ESMTPS id j124si128840pfb.2.2020.12.03.05.44.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Dec 2020 05:44:09 -0800 (PST)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b43 as permitted sender) client-ip=2607:f8b0:4864:20::b43;
Received: by mail-yb1-xb43.google.com with SMTP id o71so2083694ybc.2
        for <clang-built-linux@googlegroups.com>; Thu, 03 Dec 2020 05:44:09 -0800 (PST)
X-Received: by 2002:a25:df55:: with SMTP id w82mr4255342ybg.135.1607003049039;
 Thu, 03 Dec 2020 05:44:09 -0800 (PST)
MIME-Version: 1.0
References: <20201107075550.2244055-1-ndesaulniers@google.com>
 <4910042649a4f3ab22fac93191b8c1fa0a2e17c3.camel@perches.com>
 <CAKwvOdn50VP4h7tidMnnFeMA1M-FevykP+Y0ozieisS7Nn4yoQ@mail.gmail.com>
 <26052c5a0a098aa7d9c0c8a1d39cc4a8f7915dd2.camel@perches.com>
 <CAKwvOdkv6W_dTLVowEBu0uV6oSxwW8F+U__qAsmk7vop6U8tpw@mail.gmail.com>
 <7ca84085-f8e1-6792-7d1c-455815986572@redhat.com> <CAKXUXMx0nSZqFfOF63J+awCpkPkgr-kuchUxd2-tuMbA2piD5A@mail.gmail.com>
In-Reply-To: <CAKXUXMx0nSZqFfOF63J+awCpkPkgr-kuchUxd2-tuMbA2piD5A@mail.gmail.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Thu, 3 Dec 2020 14:43:58 +0100
Message-ID: <CANiq72=WZwcPcrnpwGzS=vAGBL6KuG49btKMbwOKTt=puC7qwA@mail.gmail.com>
Subject: Re: [PATCH] netfilter: conntrack: fix -Wformat
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc: Tom Rix <trix@redhat.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Joe Perches <joe@perches.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Dwaipayan Ray <dwaipayanray1@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=hkGfBp5o;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::b43 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Thu, Dec 3, 2020 at 8:26 AM Lukas Bulwahn <lukas.bulwahn@gmail.com> wrote:
>
> It is not a competition between checkpatch and clang-format, but if it would be:

Please note that clang-tidy is a different tool, it is designed to
write lints based on the AST rather than formatting.

> But jokes aside: Dwaipayan Ray, a mentee Joe and I are working with,
> has already submitted a patch to checkpatch that identifies those
> patterns and provides a fix:
>
> https://lore.kernel.org/lkml/20201128200046.78739-1-dwaipayanray1@gmail.com/

That is very good! However, it does not hurt to have it repeated in
clang-tidy too: it is a very good thing to have a full C parser behind
when writing lints!

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72%3DWZwcPcrnpwGzS%3DvAGBL6KuG49btKMbwOKTt%3DpuC7qwA%40mail.gmail.com.
