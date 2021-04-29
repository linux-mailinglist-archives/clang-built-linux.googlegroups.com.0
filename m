Return-Path: <clang-built-linux+bncBDYJPJO25UGBB2MZVSCAMGQEHFUZHJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id C2A7336F088
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Apr 2021 21:45:45 +0200 (CEST)
Received: by mail-wr1-x43e.google.com with SMTP id o14-20020a5d474e0000b029010298882dadsf24227992wrs.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Apr 2021 12:45:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619725545; cv=pass;
        d=google.com; s=arc-20160816;
        b=RFEuw9/HP+h9YhWhyfgiIelGgNI0T38rlnx0MQgPKeRQp0kY1Xz3LAr6oMgek3iuCa
         4xTEylM2eVCssQPG6nJjYyU7MtcLKeGmtV18KS44a7168nfDg4CGWZDok3d8byoYs5hc
         XznCA4Aocyhs5xYXWoPIX2J3WrL+dh+cGIgMb/i5IMdS5diPz7zQdzbotm+blfs9U3iY
         5ag7JVjke2YHv6hxWqWTyisgT1JkeCl3WwbeAn+Im3BSIHU7kkQGYCwHy5To2ze85sG4
         m5aKYT90Lp0PLCQTUIjH+0QL75VqEIYm2zIWQxsP2u4pYRdAxICfsz+ggKmW9nle396M
         o9SQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Yxr+q7zLMsvUR8WF35bHTZLpEvip6MItVzBee8S3Yts=;
        b=voD0iO71+yY+4sMlrYy+KtXQlA5HexrlvuYwlJiXegz9/5rU3k3ZCLqoYWd7q7A7c5
         7SbsJhei0jt6+dDl45cE/etF1omYrHAPPGb+tlRe+wWIgFHcUHnCc33CTaLlAJwaASkT
         4QXYQy1e/xYcvPmNTknIiLwBVEi3X7jhHm8hsbO4QPVJbErHrVq7JvmKv1vHk9vru/J4
         cfLVfkkqPtFwW2EyLV2V5MynfHkQIMj6xa7gEOeV6XzKCa5L9FbdEX+06RbZUe0ncsj7
         5wI39PI/x8uOtxbTRcT1JaMKjHgDwV+/+gIskIwpZrR0FyKj2dPWFBjQAdUj6Ly1Fy0H
         9Zpw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uh3gQY36;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Yxr+q7zLMsvUR8WF35bHTZLpEvip6MItVzBee8S3Yts=;
        b=K5ZxV3FE6NyYO1x3l3jz0YrBxryjriF7b/azvHGjt2AGmXd6Gtl7dCTxCkKHxgKwBL
         sxNe+8nEXY2B4ppQSClYSIbNE2ZzVwxhrNMHtvDYXY9HT56FWpHA5ImkWxIGa6C4fA0q
         11K2yzPLqNQHTATkBeLD2ZvaHEdVHP0wKOK5gn0cxOLrU+awwzulBwwzOJt6z58BczNI
         mUC6pO86QsyazC4F5cCHXtOWDnvbop5x6VCe1LjKZsGrs2m2q8SSObYtySugtYrr+tIL
         x6SDM1B52fEvQL1U2LRKz3SMEqAx559VDHCJvItUaHybVRyXOp1YV0PjgVNQAd3Yd39n
         E5iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Yxr+q7zLMsvUR8WF35bHTZLpEvip6MItVzBee8S3Yts=;
        b=YLZrRMN1UFDXAs0b4kiHPbt4u+u8pFTsqAZAYCSjowSFof8BVOaQe8j5nN4sYWgsGu
         W0MWaS1xwUY9wjSPKw6mSkptGlWY1hAve88gnHC1w705kA94RRybdAqBXqifHIRIHeE8
         5XumB4C0zD2sEOOxtrBD/7Oldni2mi2poLDA+N2PLBXO2GOEwBQgkMZrL2XH1h6V9kSI
         R6cDaqhyA7rxKRCPJv/ozXY2j8SNQ+h5Qj0uSlPpHCaDYu5NUhWd8bb3jO0fRfI0ARm5
         1Ubiq9FXh4Y9x4U1zry/rsg/QwEcC3oayR8hvfrLr3GytXkTnXO7umm5h0+z/HdEV5Va
         nLsA==
X-Gm-Message-State: AOAM531OrZNMKxroYnbvio5K+4vdKyRELvP5FgQnqIrwcgfPFSxiBBMQ
	NuNz9vHh0QXDmjuNkCnB0Qw=
X-Google-Smtp-Source: ABdhPJzNuFAem+FPwfAvEd4a6VZT0gUNubpPl8WjY1mHLHVLxM26VP4TTlR97sb6wLPOFQm+TvRsuQ==
X-Received: by 2002:a05:600c:1907:: with SMTP id j7mr1891622wmq.158.1619725545555;
        Thu, 29 Apr 2021 12:45:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6000:1287:: with SMTP id f7ls1925593wrx.3.gmail; Thu, 29
 Apr 2021 12:45:44 -0700 (PDT)
X-Received: by 2002:adf:ec4f:: with SMTP id w15mr1666383wrn.122.1619725544648;
        Thu, 29 Apr 2021 12:45:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619725544; cv=none;
        d=google.com; s=arc-20160816;
        b=BzrXg0K22opAjr46pJM7tQchFNonzujnDjEa7eR6CacGyMhCPDCO80ybEasc1mHgFv
         zPm8hC+sAT0fibvycX1EVWIXSKigEOa9i85xsbWdjCxtJ3GLisZNVTBc7XD8J6e1E2hB
         HE2Xi58CmhsuFlR+ypQFf0A8e1NVsTrLsD01xS2xNN+3CHLIT9pQuFlocmKEZf/ZaS+N
         7Itt4fvMkiKi1RdMIOU8lHH48Efkxg4vrp5gsLE/PfFcrDRwsm2MZ1ZOgIS4xHhDsPLN
         Hu/GLhN4o32gBEPImylQPl3Ylo5alo1tgJS7adnJcW7Ucp4TOKdokNNq9oUXgq3FBVlZ
         Y1hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=h2ZjEf5o5emwTFsq13F9GOM11LekgbItxKcrf/MXDck=;
        b=e6p0mUEWrPE4nDKWc1r5+DDT3QVrloZfSKP9bG1x+CDHmjJRE3M+ZyPIoclW4/+Y9c
         ScyQSVILxuZCX+wxtKs5kGLmkfhekfndP/bmzKCFcdNCyxNnRcSxytmkT+Up0FCNciTB
         8XcSCQ+y/VWT9Oqh5n1BL5H4auv5YThiNaTmEurUVEooS/EOL9gyuAv0Ah9ccQG1w454
         ABONJRgejJSAeBaUQ3qOzpDK6fjibfWzTK3E4XJ2PL9AYflYubJ7F6qpWBkJVK7tFz4a
         uLQRESirc5NDGfWgPAV2k1P8uIga+7pu9MgM5uZonasIJzexN/TtfNDjTAZTLo4SmZHU
         Bm9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uh3gQY36;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com. [2a00:1450:4864:20::12f])
        by gmr-mx.google.com with ESMTPS id p189si369147wmp.1.2021.04.29.12.45.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Apr 2021 12:45:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12f as permitted sender) client-ip=2a00:1450:4864:20::12f;
Received: by mail-lf1-x12f.google.com with SMTP id j4so67165390lfp.0
        for <clang-built-linux@googlegroups.com>; Thu, 29 Apr 2021 12:45:44 -0700 (PDT)
X-Received: by 2002:a05:6512:94d:: with SMTP id u13mr783336lft.368.1619725544160;
 Thu, 29 Apr 2021 12:45:44 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdngSxXGYAykAbC=GLE_uWGap220=k1zOSxe1ntuC=0wjA@mail.gmail.com>
 <CAK8P3a2DCCjOq+sB+9sRM7XrtnkromCs_+znv3dehqLiYFDQag@mail.gmail.com>
 <025b01d7386f$78deed80$6a9cc880$@codeaurora.org> <CAKwvOdnyowwDnHXPyJc8-KZg9vKy8zFn7hErazVT30+sPO8TyA@mail.gmail.com>
 <034f01d73a9d$fc4ed420$f4ec7c60$@codeaurora.org> <028801d73c48$d6bd21b0$84376510$@codeaurora.org>
 <CAKwvOd=7oHJKyb89OJ0xU22krAipZOhase8EovdvgqMqzPp=3A@mail.gmail.com>
 <029a01d73c4f$fa5d9940$ef18cbc0$@codeaurora.org> <CAKwvOdku4aC6zfyGOvcKK0JaPbsxDry6wFYT7xoZcHU6b31KvA@mail.gmail.com>
 <02d601d73c64$eca213c0$c5e63b40$@codeaurora.org> <CAKwvOdnY4F2yxWB7GJA6xqHpbeNvY9p7-ODony4Qbag9mfFdOQ@mail.gmail.com>
 <032e01d73c9e$8c7e5d70$a57b1850$@codeaurora.org> <CAKwvOdnFsnofhaM_OZ55r-00ewwJaRY-1sDwCUJ99TRtZLKmJQ@mail.gmail.com>
 <03bf01d73d25$04637470$0d2a5d50$@codeaurora.org>
In-Reply-To: <03bf01d73d25$04637470$0d2a5d50$@codeaurora.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 29 Apr 2021 12:45:33 -0700
Message-ID: <CAKwvOdmDkneThZ7L_BPx8K7+xR5kWfje4oNSAOAOQsbXd7ZsGw@mail.gmail.com>
Subject: Re: FW: ARCH=hexagon unsupported?
To: Brian Cain <bcain@codeaurora.org>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, sidneym@codeaurora.org, 
	"Manning, Sid" <sidneym@quicinc.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=uh3gQY36;       spf=pass
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

On Thu, Apr 29, 2021 at 11:25 AM Brian Cain <bcain@codeaurora.org> wrote:
>
> > The next steps for us that would be of interest is boot testing under emulation
> > in CI.  Our current setup for all arches relies on qemu and buildroot.  We're not
> > doing any testing more extensive than power up the machine, then power
> > down the machine at the moment; if it takes longer than 3m to do so, even
> > under emulation, the machine is probably hung and is considered a test
> > failure.
> >
> > You mentioned qemu work earlier, but only userspace?  Are there plans to
> > develop a qemu-system-hexagon?  If so, what's the progress or any timeline
> > look like for that?
>
> We have qemu-system-hexagon "working" downstream.  Still working out some kinks to make it robust, but we have done something like your shutdown-on-startup test.  Upstreaming has a few roadblocks:
> - publish boot rom image
> - compiler+assembler upstreaming work to support system opcodes and registers
> - review/publish the system architecture specification
> - musl upstreaming (in progress - https://www.openwall.com/lists/musl/2021/03/09/9 )
>
> I'll see if I can project an estimate for all of this to come together.

Nice, lots of moving pieces; you all are very busy.  Even if it's not
yet upstreamed, but available publicly, we've shipped our own builds
of qemu in our CI when distro package maintainers lagged the cutting
edge we occasionally needed. We could use that, with the caveat
"please work on upstreaming this so we don't have to carry it
forever."

Is the qemu work dependent on the musl work, I'd guess?

Yeah, any way for us to follow along or get notified on progress of
the above would be appreciated.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmDkneThZ7L_BPx8K7%2BxR5kWfje4oNSAOAOQsbXd7ZsGw%40mail.gmail.com.
