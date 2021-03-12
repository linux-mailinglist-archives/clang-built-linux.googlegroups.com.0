Return-Path: <clang-built-linux+bncBDYJPJO25UGBBG6LV6BAMGQETQK2IZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id A470C33996E
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Mar 2021 23:05:15 +0100 (CET)
Received: by mail-lf1-x13f.google.com with SMTP id w21sf8300351lfk.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 12 Mar 2021 14:05:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615586715; cv=pass;
        d=google.com; s=arc-20160816;
        b=Hl97GYopP5GTUVpq1jP1JPB25SmDRM9Q7X3KYd/kXYgMWynyTaPxhcJnL+dSuHlg47
         vt0dLdSA3Y1vs0fNOFQKm91E3cHHJTcqdA7hZrMENevZrmhsuBIHiwWvSPmpP/mcbsL6
         W38j0qUxRhpQmxvdTR//GmjhoGODiMWVVegat8Pj0A7XxEQ8YIPp+xFWBKL2hAw254e8
         jz+A+TnKrkU4qYtjUmav0nvX2vEzVACcBthGRITnZNCrPgUxq6dahPAVyUHRerSoWo6/
         ynbNex0BQk0chZga9PdrQl4bM94MHXI2hgX8Q8oYMXluWyMP/7q5D8CCUJRvUZCHg/H7
         YH+Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=doh/aTgHE2cz7YbGy7k89uI0yRkEQ2gukYntMFyFEbo=;
        b=xq6zfZLwfoW+sKOg70lckdzrbQ6OuzqiXanw+AXZc9w6uNd1Ri/ks126+8qIGHfiAF
         Tq/bC3GYKlM25Zl8oQXq5tBCOcTUv4tz7vNRzyOkY6Dh/SUYbQjbItTDioCbjeLEjEaY
         yOMZj57tLnktP+2umytGoTcBBYA/8dO1r70o8zG5O6vUC63FEpK8aWUqCFMbje3/7bei
         yloQBmiDuS2UWfpC8Z7AofeW5yb+sjw3YxfNYsQ/Ar5ls3A5+Q+OpCsff10XMeb4I4NY
         DqWtrBw3qm82DD4Jd2OKxbuVkiJ1fCH4M0VRDMsVuJ/sGVDa0QAMjZ4gILaa2GRUH0/1
         Th6Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FA1WSoHx;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=doh/aTgHE2cz7YbGy7k89uI0yRkEQ2gukYntMFyFEbo=;
        b=h5Zue7n0vn94y2XsVpr4i0d7nrisW2Je/p1HMZZa2E4vhhGdLd44Yf6jqWHhC/83Nd
         v4qGF/KZb3mfwA8sqWvTppP7/PT4SBEcy1lK/NKZWIQQ5ueiM4P0cPTjtm4gTlUoGqGB
         +07Kc+Xh3gSAdN2hD7yzmv8GmNu/69v8kS9JfGYNN4R5nA7d8Pv97AF7LIFcPDEHNH9k
         SUEt+25g2tRjwoLT1+8AuGzwrf5vMWsTTzFsbYvAdfKMrhXyIAXzKNH5Y7WAvX3O3oNU
         e8UjJdaizmG8aGM7NTJpn2BP7KeaE6gVoa9LVLrgwGLsxCrczln0NHIB8RLvnKBumDuh
         8Maw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=doh/aTgHE2cz7YbGy7k89uI0yRkEQ2gukYntMFyFEbo=;
        b=UVULdC1eHNAb7Q6NT89t0bbQW8eFVla8/5l598bLGTe9waEJj4FnaHQMajS/Vy+Rjp
         np+zXhf/U5GwLK1wFCIu44nVznJcMy4Scaai3q7BYcxa8bs9TlYMVrZPc4MxAanSfgAI
         O6MB3b5toaYpAxl62C9frE0sOX0TxkRcwAnjWvcT9WoBrHWpP1rzRB2mAd9i9RsblGyX
         aMJj+qKme99QoJrryryclf5cw3RS+PrZhCkklhUMEgD0v2w/Q2IRLW1AM8aV0S9Pd/47
         KAAnxWMe2MUxADqHuTAFj2YBBxJsVmGU/MXLjuiAhKxZKAUFkTd13vsw4Q/rHxwCQv01
         vwFA==
X-Gm-Message-State: AOAM533VlfRyFZIhttsdnfl+cEuOHo9NQIYgC2HZgdEsV+IvbpIlKCf8
	L/POZ7uN5GZakZVmr6Ip/iw=
X-Google-Smtp-Source: ABdhPJyCs4bWQ78NoZAYOBZk2Y9zSgPa2rYbCUYAGUOvKjQPp+copJ/LU1rOozYEqBkb4F2z1LhXnw==
X-Received: by 2002:a05:6512:906:: with SMTP id e6mr768865lft.224.1615586715264;
        Fri, 12 Mar 2021 14:05:15 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8915:: with SMTP id d21ls2295191lji.1.gmail; Fri, 12 Mar
 2021 14:05:14 -0800 (PST)
X-Received: by 2002:a2e:b4b7:: with SMTP id q23mr3569355ljm.88.1615586714416;
        Fri, 12 Mar 2021 14:05:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615586714; cv=none;
        d=google.com; s=arc-20160816;
        b=RyPuE9JQ39mvnQtNjBQipM20yIjV4v2ahlB/gGfGcBBVvEdR9W+mtxV+WE4OSqHe56
         Je1qCBCBOScf+wn+Il9sF+VjopuLb3EgeLokOkjOVQ8vOvWsGKz80YWn52LwY9xLPPc/
         0LN8VLRosecbaquA25N+gwYgE8IgmPFdRxEEwpv2BAKMbY3mwnhEzAWEEbJJvKmHIyFw
         wXF8SUUQHysIDPGKb3G/68n5IOb0Nj5M0vSTXdCZTXz4+VJRLUZtNuE+SZ2P3XVYFVov
         r/6ukhjiahM1BZ+1djburgp/G8GWxV5nEMeAEgZdaiyGInUEWPbLGfTAU53BchaQhjyp
         s3zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=zwseNeEs0krod4F+IhuF+pHQNcsyduOIl992m6AfVdM=;
        b=bOTlQyJPFamHsXkE8bVQZPmF8sffRZU9uY+t9zIRqzCTs6MpXZcM/BPrf6DkMptHrw
         S5Zdn0G2LXojDaFdmVLEOvpyylE7HTYew7uf585SAMtChvWDAuuZAnWhjnfQ8WK1YGvu
         QbGNMU3J3mrr/ql+n6MwG3fX/NeS7Evbo6DvQTp2yKtkxenWVz8faYOVogRDV7+t7y+U
         Ia6VhFgkJw+rkzw243BAmR5XzmIymawomZ++wEmkaIdZXjmncHCZPktZhlBd66T8W5DB
         Oc1cE3LCc4r7K1LYLkSxRxok4pX0NxgxMT0F6CwheBwHhNffsfdevZuLGk/Lr5Tjmeph
         cAeQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FA1WSoHx;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com. [2a00:1450:4864:20::12e])
        by gmr-mx.google.com with ESMTPS id o10si330517lfg.12.2021.03.12.14.05.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Mar 2021 14:05:14 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12e as permitted sender) client-ip=2a00:1450:4864:20::12e;
Received: by mail-lf1-x12e.google.com with SMTP id v9so47656229lfa.1
        for <clang-built-linux@googlegroups.com>; Fri, 12 Mar 2021 14:05:14 -0800 (PST)
X-Received: by 2002:a19:8c19:: with SMTP id o25mr757160lfd.547.1615586713934;
 Fri, 12 Mar 2021 14:05:13 -0800 (PST)
MIME-Version: 1.0
References: <20210312192139.2503087-1-ndesaulniers@google.com> <20210312202537.z77v4qnvptbrug2f@google.com>
In-Reply-To: <20210312202537.z77v4qnvptbrug2f@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 12 Mar 2021 14:05:02 -0800
Message-ID: <CAKwvOd=8WM9KVoPxy7x9kQR5cEz1M+hJ4Pbz8kU+5ipMSzSJ+A@mail.gmail.com>
Subject: Re: [PATCH] gcov: fix clang-11+ support
To: Fangrui Song <maskray@google.com>
Cc: Peter Oberparleiter <oberpar@linux.ibm.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Prasad Sodagudi <psodagud@quicinc.com>, Nathan Chancellor <nathan@kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=FA1WSoHx;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12e
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

On Fri, Mar 12, 2021 at 12:25 PM 'Fangrui Song' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> function_name can be unconditionally deleted. It is not used by llvm-cov
> gcov.  You'll need to delete a few assignments to gcov_info_free but you
> can then unify the gcov_fn_info_dup and gcov_info_free implementations.
>
> LG. On big-endian systems, clang < 11 emitted .gcno/.gcda files do not
> work with llvm-cov gcov < 11.  To fix it and make .gcno/.gcda work with
> gcc gcov I chose to break compatibility (and make all the breaking
> changes like deleting some CC1 options) in a short window. At that time
> I was not aware that there is the kernel implementation. Later on I was
> CCed on a few https://github.com/ClangBuiltLinux/linux/ gcov issues but
> I forgot to mention the interface change.

These are all good suggestions. Since in v2 I'll drop support for
clang < 11, I will skip additional patches to disable GCOV when using
older clang for BE, and the function_name cleanup.

> Now in clang 11 onward, clang --coverage defaults to the gcov 4.8
> compatible format. You can specify the CC1 option (internal option,
> subject to change) -coverage-version to make it compatible with other
> versions' gcov.
>
> -Xclang -coverage-version='407*' => 4.7
> -Xclang -coverage-version='704*' => 7.4
> -Xclang -coverage-version='B02*' => 10.2 (('B'-'A')*10 = 10)

How come LLVM doesn't default to 10.2 format, if it can optionally
produce it?  We might be able to reuse more code in the kernel between
the two impelementations, though I expect the symbols the runtime is
expected to provide will still differ. Seeing the `B` in `B02*` is
also curious.

Thanks for the review, will include your tag in v2.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D8WM9KVoPxy7x9kQR5cEz1M%2BhJ4Pbz8kU%2B5ipMSzSJ%2BA%40mail.gmail.com.
