Return-Path: <clang-built-linux+bncBDRZHGH43YJRBQNXRD6QKGQE2U6Q3NQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13a.google.com (mail-il1-x13a.google.com [IPv6:2607:f8b0:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id DEE0C2A5CF2
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Nov 2020 04:10:58 +0100 (CET)
Received: by mail-il1-x13a.google.com with SMTP id z8sf14411850ilh.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Nov 2020 19:10:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604459458; cv=pass;
        d=google.com; s=arc-20160816;
        b=QY7HtEvMWYH2WAiQoXqB28wVHdVo8Cvz1Vd9l08ofIaDbfa1jGpidx8JlYI6q6Deka
         kHEHi3NJlAa9Isp627+fBrFMNh4iuiNWvxcb5Rs6/Q6sjIN2ifAPU0CfPApVn9bTFcMO
         bzIm2JZ4k9iZFEpP+jViav8n6UCAB4UT8jxO8N7bJt3fMJXvSzObBEPRxekFYM0uOAAX
         Gvjneqvvb+73M+I+1zeD7DxM5l9eydlxn44SA2FrfT6grEmqXW8Gnd2AonJ8OYdsZTj6
         29dCLbSf1fEaLDPNaerB8GASZrkVvuuPrPd0Z/fTzerGxiyzVgxztnpln2YiJW85ahCD
         +kaw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=jsA0kFJlRN3/MkUlnD1HNWRXO85oZleH/Rc9ZZBB9TM=;
        b=U34igUw56WCKkSD+bPkFzoBcnopgOoxhdHutG3Qn9rL24rUaGIjL3wXQOMqiVSIITu
         HgPtgKeYtfocDzjyqzI/7hdKQLfQEBLMwxC9bb92+2Dxu38yFaDF148dOKJEZns/4zgV
         dZ+tjzSGB6BR8B21HK/UY/LF8JU746ZEn1Mp9CKeeeFjdX4iWfLyP7jS4tP20lE2HCa8
         Xsb/huermhipy/CWsfyJL++kyK9ylVhZuipoaDtGgpTIibK1wCTnRR5BcqMUNKlY8qlX
         0B8CXadqQoQJTiInjaCmqnmhp8Q1HgBSltCrM2dntV0Hst8Cnr7urL6jyVqlSKXx/heC
         cN6A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nImedaiM;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b29 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jsA0kFJlRN3/MkUlnD1HNWRXO85oZleH/Rc9ZZBB9TM=;
        b=nOoAd9aZqta/fgfqCZXWlpTyhceU5ZQTEDE6v/iykXee0awQMdeRaK0XtNt2Gl/Hen
         ipWdbhvNIEAHKlPLCVQEK96QtI+nzYNH0BIoveiaPeGfx/YEHcST4fsA7TdOyMK4GzKK
         ogDddXb2H9q+vWigDjkr4m+HrQQ2ZuJjifvKYf22ZK2ulPC/aFMd6iJ3m/9rzuKx60em
         KLcMHPSqqvDB8sdWlY0u5qfbSrkeoXos1KWcfY+Cw2YJSar9P64C5f+e4u9B1TgpLF7N
         GRqb3KWpnIp6L4pegULnY6zFIZY9fJKPqEA7pHKpdLnchqd4R68RRmiWtpZZasvBDCae
         qIIQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jsA0kFJlRN3/MkUlnD1HNWRXO85oZleH/Rc9ZZBB9TM=;
        b=eOBD9JEb7gypD7Dh5gPSmWdNwB4P56Wy+T3ut7BWZUht8AkVbGuX/hZPnsZkhSE+wq
         gi6xjNxYqwFWRL+bvb1GhoJA/th5jihuGpXq0XPTZKVHCNS8NzBzPGw5/b4hEjCI+JaF
         5ubowhef6N+nl+m0jn8oadHI4FEnpK58uGVr6smNm13ZsIiRVtI/hCIrtLSiCMZWswoZ
         WDVJc5mNYa8773g6ORHmPsD81im87z7kxk4R2+jSpqHXVwamfpjTcyV+871zrCCG78Ot
         cqepj7nUCGQFBqMi4kLPBwFjm/txZLjowAtVoitH7eupHNxr5SfIORUogBegnfJDR377
         +vPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jsA0kFJlRN3/MkUlnD1HNWRXO85oZleH/Rc9ZZBB9TM=;
        b=iTvCZTVqYkqYhT0P+FlTfn1rTFQl6UpBkF9ZIqirV9Pd8yewrvyq+nCFCTG40Ni2ga
         Z0zeVtV2fIAuimt1SwnYZq+beFUlyvvgODsHqp2dAmYZazmy5HWWLNLRhecsx8/en1Q1
         QjGkUd2m23l6t3ZZKptO8RKx5lrLNU5OUKbvbalL3ULJGjeSwKN09rRPNfas1odOVUNZ
         WjcNOi2uq6l1isoAFLAWfRz7ZrPi6BnpSDTQRmD6hI4O0VNSxN5DIk5kCElwC7okqC1Y
         cWL7tKMsv5I5Zv7UZO9D8F1sZqoGeeAAzueC0MamBtxAk3ACim5Mpay0tFzWTEJs6695
         p8Cw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531NbJ3C3jHLRgvcu0h+pW+xKJWTzWfhCW21Mv4aeVD3VfZ8FLSy
	hDWmRHS4+zwjEIuuHFfogYM=
X-Google-Smtp-Source: ABdhPJyEBgfldISRo4IOJ7dEo+jAu5ZW9yCobV5u2xVPeaGqLumF07AEfMq5mkb2yvQs766Qhv8oZw==
X-Received: by 2002:a92:40d2:: with SMTP id d79mr16843479ill.7.1604459457851;
        Tue, 03 Nov 2020 19:10:57 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:f90c:: with SMTP id j12ls6509iog.7.gmail; Tue, 03 Nov
 2020 19:10:57 -0800 (PST)
X-Received: by 2002:a6b:fe11:: with SMTP id x17mr16335731ioh.192.1604459457383;
        Tue, 03 Nov 2020 19:10:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604459457; cv=none;
        d=google.com; s=arc-20160816;
        b=lf7u8xTYPQI93dQ4frzNVoOC6NqjH69zlTRUbQPEEnifY4pOHh/UrV1n8PZHfBDMlH
         e1oRpn6W6oY/t+/dk2eHPYKya5okZW5GlTCzmE5EGj1MrrPRR54OBYg9TpYFYVFGEtgR
         M4rnJ0BeErAw45GGJve3gfFuun5QgvgF3EafRI8CmvCitHHNbbt5PGbf4izvlDO/0v3i
         7Vmbk92H7PwrrH6oe/cSI2C+6d89w9viXZHndHNVSftHNhJd0Luc49sy5BVgmUaddHdk
         EbxMioxc6YOBQhDjShipuwK4Uri+ENbqKMAF79QB8+Z9wUoREP0SYTsJHLKApAwY3QF8
         IUbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=VuSQyNdXyckv6X3cT+S/PiFw418RH9fxe4aXmrLulpk=;
        b=SHCt0U1+yuNg1hF0A4TuKcfNnHkj4a3fpCez77WckRc0e6AQiluGIXDYISGc4Ve66t
         pKZ+hEM7s4km7b53yP2VgRp8QkZI1b39D/aGM7RBYCVkiGjtZZqATIHiQr6mboGh0Nv1
         ujfcM1flpjWCPNp4JvlRHd6ZdPPX1u4fSsXU0lpGlszDDlEvZMla17YbmYpoUEDU25vg
         HGi7QebAsDw92EEfObhndr20rdITJahIUL9pjGFGmcfELKlrlNQX1pJ8M/Jyh9KrFmep
         2q54J4yX1yTx3fSnqgBnNHiGGWrXBfoaZ6FCT3PZ4el/wFhlmBbB8UcdARq1V2AE3Ujk
         BS8Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nImedaiM;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b29 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb29.google.com (mail-yb1-xb29.google.com. [2607:f8b0:4864:20::b29])
        by gmr-mx.google.com with ESMTPS id l1si38411ili.0.2020.11.03.19.10.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Nov 2020 19:10:57 -0800 (PST)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b29 as permitted sender) client-ip=2607:f8b0:4864:20::b29;
Received: by mail-yb1-xb29.google.com with SMTP id c18so3934343ybj.10
        for <clang-built-linux@googlegroups.com>; Tue, 03 Nov 2020 19:10:57 -0800 (PST)
X-Received: by 2002:a25:491:: with SMTP id 139mr34396718ybe.22.1604459456999;
 Tue, 03 Nov 2020 19:10:56 -0800 (PST)
MIME-Version: 1.0
References: <363325b4a85f094ba9cf06301dd022912ec79d03.camel@perches.com>
 <CANiq72=r6oieZ-Nj-e6e+HriW8kADB75z2pj6W-gg7Cff3nqGw@mail.gmail.com> <f474396f8f47c303e3a3ac90a582c116e38e50e4.camel@perches.com>
In-Reply-To: <f474396f8f47c303e3a3ac90a582c116e38e50e4.camel@perches.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Wed, 4 Nov 2020 04:10:46 +0100
Message-ID: <CANiq72nnpdPSngjoOf=imLxZ2g0A7ZXe5nRjF0qf5AG1UCfXyw@mail.gmail.com>
Subject: Re: [RFC PATCH] .clang-format: Remove conditional comments
To: Joe Perches <joe@perches.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=nImedaiM;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::b29 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Wed, Nov 4, 2020 at 1:56 AM Joe Perches <joe@perches.com> wrote:
>
> Do remember that this patch is for the current kernel and
> not any old version that someone might be compiling.
>
> The current kernel _requires_ clang 10.0+ and that would
> obviously provide clang-format 10+ as well.

You can use clang-format without having ever built a kernel with Clang.

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72nnpdPSngjoOf%3DimLxZ2g0A7ZXe5nRjF0qf5AG1UCfXyw%40mail.gmail.com.
