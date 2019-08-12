Return-Path: <clang-built-linux+bncBDYJPJO25UGBB76VY3VAKGQEPG5W3AA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3e.google.com (mail-vs1-xe3e.google.com [IPv6:2607:f8b0:4864:20::e3e])
	by mail.lfdr.de (Postfix) with ESMTPS id AA76E8A55A
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 20:08:00 +0200 (CEST)
Received: by mail-vs1-xe3e.google.com with SMTP id r129sf3769219vsr.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 11:08:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565633279; cv=pass;
        d=google.com; s=arc-20160816;
        b=MYIbyXtzVtss+40BFf69A/Ak6Cv5Z6iBWcQq3UfQh38zBZp6dRatgqE1TiUy4qNIf1
         GwRrC0VOC6DAlFIq38io7rR8EB9F41LAQEG0rapB/TMNTD6DfDPlVhSsQHTkauZqKVNz
         ttkUzgBumjJSLfIHYhoFIB5l2r+rkBLRcWs0W7MPkKZt9fGPxU8HTz2F1MhjaT1EByGB
         W0LpYohmPJhVvNzyqgeRGcgOQINijKnGvOtSx33vRcWVKkX7V/F/h06SGquRLyx4/orz
         wfEMHjXTwK5/Lyf0zj2nL3uscVSM6K+k11TH44oKr862UACrWAry6UPkm8lNpKfsogb0
         OxlQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Za9l315ZrL5UzhkgVIIxAlO3bqc7L10OIb7gDpDon0I=;
        b=KBHC0OAlsynfeVcBpGAlzIs4/8DDFGevDNC/EUsDL1eBopnwUSglLWF5K15YBDQhDL
         4h7WNCzqboowqt8RK1W9uitCS2ap5JOdoLyl4WWreNYg1ZKo+LLqjdJ+4+dXIEbUCKzZ
         BToqqV6BjdDv1jvPDhOeCSXbu5hRDdsvJMpqS1Kze78gRPoQh9CsKOHkhqn/XBeMhvoi
         ppTFyQ2XZpTm2ZtSwUBZcvhtCWqIzuqt4BM00hqPh/zfbRkIwImsebGylfxRtcDRdXWT
         3hZnlKCg8l1FqMvvNh6ksqUvnGd6ofr7YtFIshK6U7wVAtDIShcGrKePyueH7g/czslJ
         Er/w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=S4NPmiuz;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Za9l315ZrL5UzhkgVIIxAlO3bqc7L10OIb7gDpDon0I=;
        b=JQImLi0Or06bTPiEPF0U/0yj5dKUG2bySpKXMeUxozVbr6zvXNoW5DTv4bDY5juoA1
         ulkA5yzia/YgdbRq9R9FOiNIEWZu4P7bVg2tZckM5rEsuTD1oNyxVQV7oSSpdnt4JF4f
         izK0Lc/03IUhOsvah4vkXt8ycuQwaT6AhPv36eTaLPr+SGBj4rsJPayzbMOP8+kLjxYC
         ntCuTWhBTqNrdaSPneo7S0sLQELBUiU5WZiNepzv6SNu6CySYf376pu4F5mi2iZKtxBU
         ror+HGdy0AWbwhSQdx6JyuPY1OrHjBs/1sWTlEvnGFaKMZb0MO/uJwcvMvjfbLStSxal
         ZqWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Za9l315ZrL5UzhkgVIIxAlO3bqc7L10OIb7gDpDon0I=;
        b=Z6kIv1u9Ry/KEEpkqaTPbOzfi7ktfWDAX/zvvZloyEy9uPAObjW0NsWm2ct+ivWo5T
         NvBCIJoN+Y2uX5XumQl4+2TuOtDKEbIxOzDlj7FzxzvymgdVv41fuuMEQCV7vhXU5nR6
         zNZWx9wQWSTMwFJRH++S/l0p0mcUwnTO2QJ4aHgMnmVyU/KJYwNi6t1HiFMUPLOx/NX1
         8NCAFSXTs5/ByVfkHa+ZrrlcYEf7R6lPh8GxoOuEKzBc/cOGmSHUcjDubCkZwcj12zqj
         L2n9bqzUR0W8TwLQbVSGFWG9HupO0xFnBGlpycu5nUNoAJMO5yktNpn2pw1lKB3wf9cU
         kFYw==
X-Gm-Message-State: APjAAAVtcPwwdufP8iLgGnGOsdqwMfFXrOVTTj1z720n+H2vo7o2V+H5
	cUPC+vgtdCRK0otWNcwThSM=
X-Google-Smtp-Source: APXvYqwIBoX9wn/ygGca+XZTvh1COgmSchuCtEOOcKH9D/yTb1kfJzopNK6kPU7cr/Vj7ysFSxrY8w==
X-Received: by 2002:ab0:470e:: with SMTP id h14mr21682804uac.98.1565633279420;
        Mon, 12 Aug 2019 11:07:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac5:cdd5:: with SMTP id u21ls3104382vkn.12.gmail; Mon, 12
 Aug 2019 11:07:58 -0700 (PDT)
X-Received: by 2002:ac5:cdad:: with SMTP id l13mr3688094vka.30.1565633278917;
        Mon, 12 Aug 2019 11:07:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565633278; cv=none;
        d=google.com; s=arc-20160816;
        b=h6TlX3SyfYOWJZBmbCYTEhS2dt+qp7GYI1NGc3MkV2Rsjc+66mrv6Y0bA1zQilp1iA
         Ph166LOmVKTUdLh5JTav4B/bUY/zSPRRkACO10paVlBvUNaiPMzAsCa0mHZydssQ0ZkR
         0GkENCeHbA94LqJp5K7tcHNGnLgqa44v3OXwJfXdE3w7FYjJ6XQkihPKgU6L/QkTk17H
         sNdFx75P9kQ4bMCEoir4vgIGP4FvgJ7p3GuVBpgDPOwY5Bw0LiiuomL4UbEkUzwgJQV/
         Bve5e8HCmY3oxjhZcHrAaHwbTiInbxHluSLAjagqbQli7/QeEME7ZcUH1xITJy4xw+Tf
         iYgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=YwGJn3GU9yAAP6kLtCn+VwU08nTqDgoak6TUbGa8OPw=;
        b=HfdQs+7sMxd14sw+jA6vEvvIbnP8C0TDjW5w8mUgloicrMPGee2E4dkC91LHz24puu
         RMxEWaNe0ZsGNy2zlmOihC7vloAmBeXhMz6o9+xSY5ZMlhxUbh23BHkI9ujkfEz3BUJL
         dCxgQEJOKKUSGKJKOLiZuX/SkbRq6uuPtiiYq64Pgdc4hJrjy/9tOsnATtDo31B1sv8S
         5EE3gTWRbJGdlhK3SmS9Z81oE3xZOnH/79vbhVfKQ3N5Do1xMV/Zy3cwgLEbVbl2/Qzk
         2ZixPTklgM87zBCg/eP7zxG6fFUFaKPiBavzJa1uaDFnwh3oYY2EqYfNg3J7nQvfnGGp
         9diQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=S4NPmiuz;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id i9si7381339vsj.0.2019.08.12.11.07.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Aug 2019 11:07:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id u14so50095350pfn.2
        for <clang-built-linux@googlegroups.com>; Mon, 12 Aug 2019 11:07:58 -0700 (PDT)
X-Received: by 2002:a63:60a:: with SMTP id 10mr30854141pgg.381.1565633277540;
 Mon, 12 Aug 2019 11:07:57 -0700 (PDT)
MIME-Version: 1.0
References: <201908130116.DLYXRj7k%lkp@intel.com> <20190812180544.GA116715@archlinux-threadripper>
In-Reply-To: <20190812180544.GA116715@archlinux-threadripper>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 12 Aug 2019 11:07:46 -0700
Message-ID: <CAKwvOd=xZ=fK-p5_KY+XPHAH8Fvh6Bs4o=fsZrtD85k6Q4CyiA@mail.gmail.com>
Subject: Re: [PATCH 1/4] PM/Domains: Add support for retrieving genpd
 performance states information
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: kbuild test robot <lkp@intel.com>, kbuild@01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=S4NPmiuz;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442
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

On Mon, Aug 12, 2019 at 11:05 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Tue, Aug 13, 2019 at 01:41:41AM +0800, kbuild test robot wrote:
> >    In file included from drivers//acpi/device_pm.c:17:
> > >> include/linux/pm_domain.h:262:1: error: expected identifier or '('
> >    {
> >    ^
> Already reported with GCC:
>
> https://lists.01.org/pipermail/kbuild-all/2019-August/063123.html

For anything that's a compiler error or warning about implicit
function declaration or anything that doesn't look like a Clang
specific warning (like the many we've seen and fixed before) that show
that the developer likely didn't compile-test their code, I wouldn't
waste time triaging.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DxZ%3DfK-p5_KY%2BXPHAH8Fvh6Bs4o%3DfsZrtD85k6Q4CyiA%40mail.gmail.com.
