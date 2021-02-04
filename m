Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB3W552AAMGQE7JE4E7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id B54D230EE41
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Feb 2021 09:23:11 +0100 (CET)
Received: by mail-ot1-x33c.google.com with SMTP id 44sf1309090otc.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Feb 2021 00:23:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612426990; cv=pass;
        d=google.com; s=arc-20160816;
        b=x15HLdcqi+Cqvv/GFGpAnojd2Y3xL0TkhYhjG3POj+q8iHatFn9M9YGhjUkGyc9KRY
         UG6mMNZVyazOCRGsodkwhkv333YXvOnlwNqQX17bVig+nJjkZTcdlKVp6prboaasHCE7
         svfs2AYEA4gTs6Aj9mwMBGBjtswtVAJRLR6eApCqSjznRWWilvwichD4uRiABDd/ajDH
         a5drNSpkCijVOvyEMInt+7B0o4efmlxTtX9QShWGYPczTXjRTwFVijXv2EqATZgXyBhk
         ypmNNi6eBjtsgqNq6PgJ8rBtAsGvE32UX0hBnXBsiMVS+u/lMXbJatkewk5kukYkgZGs
         3clw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=KhZF1EAFdk8svqD9uP6UBjsrYwhN5fcjBdihJVQAIxc=;
        b=NJJcsE+M4imYeRtr40BkfUK2/6UwOrWDQ7ZdNC6l2bSxmeMJMxZXn0k+2YqDtyu0ln
         HDhQjgQi+nl43HgiHHrouG81FuePIheIquDgjSr2LqVHJbw1N4yZ0K0ncsqE4SNFGhd2
         F+anjf0wpxS+wq2ygoyP+9I63dIQ+DYMJbyDGhE3skmVxmDjVq/8NHUBd2R8YVN+HtXh
         P7eANiVCg2p0WM2IzpcFW1mz1ssVhcQLljo8i9sGeGMFOTJ0Y6+2qsiR/w8vItQsZjfI
         5NL3PZ/PZ8CMs3mv1igORk8B+jCJY42n9BkATTZ0YfSFUSLKP9GXswDuS2eqQHdDF7cv
         hoDw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=J4jdqH29;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::131 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KhZF1EAFdk8svqD9uP6UBjsrYwhN5fcjBdihJVQAIxc=;
        b=Lj7MmAS5VPmqWFg92AdgomhArfBRy3peNdrTYipsiJqKV4KX/ay9anDaZrF6I6RBM3
         78QtO08tzmhl0M5CdRZT/DmBzgKDQXJdAEaKH4ZE6c0NcJYNyf3EUHcmSqIidTsxff0S
         fsZzT/aEH6RT+RpcMYbFsnkScWUUDc8rZLEJVGllfIwlR55xdOXGF7U3WoPm8YilT/Xo
         sWSFlpCKLAlXzvdDSZyo41LBaAssPTGyNz76oT8kOIcVNB6HQrQakkuOUiGVFS5X9Cyk
         xFtjSDJXlyRnXrDKsqE3QgORuHd8SgpQNnD+w3XR/VX1sfqDj+4F1xlXcbVmRlr9Qjti
         nm9w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KhZF1EAFdk8svqD9uP6UBjsrYwhN5fcjBdihJVQAIxc=;
        b=ng2I/3ymQLUao68pkZYvi9jpuEqoLX+gA9zIY4ATjGJouXv6Br0pcNnS+HJmFc+FS+
         +30Js22GDeZOMoGG3pMoti6FRmCXOtERLnto9yzspnKMhaTaxgcYmMvsx0W/JA/WBO7n
         GmehQh+B8oRozznrC8YNXl3u2f4b+Xqs7tSA+VQgPKbmSCH1VLkPmXJSxTZucqPITpLm
         akmbNus10lx1lLeoUTigf56YcJF2qF5GyUxTDgZiC5x5jxDejPZEI8UXcWp0G+fQRM92
         x92TEzVIlLiSNBeUIdLJvti3xsEk5UXXjCVxK8oUTKznLnHt70cDXCbx6yP8hGf36aYh
         pkgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KhZF1EAFdk8svqD9uP6UBjsrYwhN5fcjBdihJVQAIxc=;
        b=mAJj7oo1m0tiPQRbBIqksTZ0mMOYX5I7KQL/Nuvl8J9mDrTjEWFuD4wMW1fcTlcLcX
         Z0ekBoD5k4hkRgBwL6RdydFbz8wDzRK2pG1ZPeDVeLAMR7yecMNyKaX4oOS15qvfy87W
         B9Tf46kHxo+K3zRQSOq4KEPbz3Nj/m5FlqstBwtEjZwZuYPNYvqxADisosBh2qy+QnF1
         xU/mYE+M05hM1wxCHEDLKU6FQ92HEiFS+7OM+qDjfHxgMgbG6Q4Lc/b2PEpj4w3oVJe0
         wURNoLyfuG02ECx1G4hlsND+D2Zdxc8EOeeeupxp1Pk0emjrpxIsRMIGNvcgLKZACWhz
         PMHQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5321LbNA5Qnb5r/phwOaoQgwCfX1AuWNcqIIGZirNtBBS6+nh1Ce
	JdnWVZzaW9gp77WGK327PSo=
X-Google-Smtp-Source: ABdhPJxwEubKchPiGlvt0TlIyHBroPKfz1UE7kVq5Vcc+CMAzmOsjPOJVaY4sQh58qFLmpa4Rx8ESA==
X-Received: by 2002:a9d:4c9a:: with SMTP id m26mr4737431otf.7.1612426990756;
        Thu, 04 Feb 2021 00:23:10 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:69c2:: with SMTP id v2ls1153873oto.5.gmail; Thu, 04 Feb
 2021 00:23:10 -0800 (PST)
X-Received: by 2002:a05:6830:1e63:: with SMTP id m3mr4731773otr.121.1612426990370;
        Thu, 04 Feb 2021 00:23:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612426990; cv=none;
        d=google.com; s=arc-20160816;
        b=wtGUsf/sXNPvEwQ3J/XKjqHESKJo63vAbfiDl6KmitgIcNVrJJ56I1uyZd/ukbvKYK
         nygI1Ep9neP1ZsVC6M8MDqITJ7k0rRVVrITmOYBnZVZ15cVNO9kTMNTO26gwzW+4NZf7
         O7YM4GYWvqDwX8enH/W0xVmz1zq/t+2vhnmkAywxwMh4UWymbuAODU14e+DrJKbiuYzS
         GO3CtkFKN43erKTNDnLyA+A3K28xZdEvYNOYFH38QE4nlbef7Z9OE6HTN0kvGj5eCdcZ
         oAiZ9JuZeAHMFhcgfx3NfMzU3xTkaDWMM+3qd0PGqaTW0niOyxC6T0VwGBvkB6xf9r+V
         URAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=hVeXu8KDTq3DcUZSmabKugyarvvt6HgXml5jIs81yZA=;
        b=wG/Q8J2FI4GXtwL6mspH3gyTtxLwdOK3L4D+WFFaDiAJ3aoMu1NWStp0/lY0dOZ4Ew
         Z/seCdMbBA7WrSElZmbdxxCPLUJAdEQZV2jjwO4r8x7RcHcTNqPv+5ukPAGzHghXSZ4F
         NJaxxJvHcGs7lh4GY+7mqCwNWtuqgFgKtc5N3lzuhii2VltxLTkn6iFiHmUx0N9cuFEi
         Y+XbEGb/xV8wm32uNQy6ILs8XBHo5C76wpZg3nkUDhDf0/TtTCDTpAAT5p4fGtfsIjjC
         FQeV/b8ONGt+JYDsYgKBbAroZbOrLQTBNRpScqMYVoNBiq/VpoQzG29OVkHlIFrG+4KF
         OE6g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=J4jdqH29;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::131 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x131.google.com (mail-il1-x131.google.com. [2607:f8b0:4864:20::131])
        by gmr-mx.google.com with ESMTPS id a188si465719oob.1.2021.02.04.00.23.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Feb 2021 00:23:10 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::131 as permitted sender) client-ip=2607:f8b0:4864:20::131;
Received: by mail-il1-x131.google.com with SMTP id d6so1806608ilo.6
        for <clang-built-linux@googlegroups.com>; Thu, 04 Feb 2021 00:23:10 -0800 (PST)
X-Received: by 2002:a92:ce46:: with SMTP id a6mr6255144ilr.10.1612426989999;
 Thu, 04 Feb 2021 00:23:09 -0800 (PST)
MIME-Version: 1.0
References: <20210204064037.1281726-1-ndesaulniers@google.com>
 <CA+icZUVVcP5MSUSDM18Wab46n-20eskRE59akdwfxXKpKXDOFg@mail.gmail.com> <CAKwvOdkYkgViVfzAn1J+SoSfzWn4aYVi+O3uwHhTsV92CVEeJQ@mail.gmail.com>
In-Reply-To: <CAKwvOdkYkgViVfzAn1J+SoSfzWn4aYVi+O3uwHhTsV92CVEeJQ@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Thu, 4 Feb 2021 09:22:58 +0100
Message-ID: <CA+icZUVFrk4L+CUo+o3pdsOjaJPKCqnP0zmTuaOoYLg4wyHkbw@mail.gmail.com>
Subject: Re: [PATCH v8 0/2] Kbuild: DWARF v5 support
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Andrew Morton <akpm@linux-foundation.org>, LKML <linux-kernel@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, linux-arch <linux-arch@vger.kernel.org>, 
	Jakub Jelinek <jakub@redhat.com>, Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, 
	Nick Clifton <nickc@redhat.com>, Yonghong Song <yhs@fb.com>, Jiri Olsa <jolsa@kernel.org>, 
	Andrii Nakryiko <andrii@kernel.org>, Arnaldo Carvalho de Melo <acme@kernel.org>, 
	Arvind Sankar <nivedita@alum.mit.edu>, Chris Murphy <bugzilla@colorremedies.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=J4jdqH29;       spf=pass
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

On Thu, Feb 4, 2021 at 8:45 AM Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> On Wed, Feb 3, 2021 at 10:58 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >
> > I guess I need to test harder to get a Tested-by credit :-)?
>
> You're right Sedat, I'm sorry.  Your testing is invaluable; thank you
> for taking the time to help and credit is a powerful incentive.
>
> It can be difficult to know whether to carry forward tags or not when
> a patch is revised.
>
> Keeping track whether someone sent an explicit Tested By vs including
> it based on feedback that implied they tried it.  If you've tested v7
> or v8, please reply explicitly with tested by tags, or perhaps
> Masahiro can apply those for you.
>

Unfortunately, some recent patches around CBL and kbuild miss my
Tested-by's and are already queued up in the remote Git's.
Maybe, I was simply pissed off this fact when writing my response to you.

Feel free to add my...

   Tested-by: Sedat Dilek <sedat.dilek@gmail.com> # v1-v8 with
LLVM/Clang v11.0.1+ & v12.0.0-rc1 amd64

Looking at the (git) diff v7 -> v8 - seen from the code - nothing changed.

Feel free to add the links to thread(s) and patch(es) I gave as a
feedback in my other response.

One reason for missed Tested-by's I see is I am NOT subscribed to some
mailing-list.

> It can be difficult to know what's broken if you apply too many out of
> tree patches though.
>

"Nicht verkomplifizieren."
In English: "R(e)D(u)C(e) complexity" is normally one of my life philosophies.

Fighting with... "As usual: It has to work in my development
environment - first."

Sorry, I insisted that it *has* to work in my environment.
It has no secrets - all patches I have queued up in my custom patchset
is publically available.
That does not mean all of them are or will be upstreamed.

Bonne chance with the Linux-BPF folks and send my apologies to have fooled them.
It's one of my """strength of character""" (note 3 quotes) :-).

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVFrk4L%2BCUo%2Bo3pdsOjaJPKCqnP0zmTuaOoYLg4wyHkbw%40mail.gmail.com.
