Return-Path: <clang-built-linux+bncBD737MVJ2YLRBGF6XDUQKGQEK65BYII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 74A916AF82
	for <lists+clang-built-linux@lfdr.de>; Tue, 16 Jul 2019 21:01:45 +0200 (CEST)
Received: by mail-lj1-x23c.google.com with SMTP id o2sf4789703lji.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 16 Jul 2019 12:01:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563303705; cv=pass;
        d=google.com; s=arc-20160816;
        b=juFP32L+7CtEzm7LShnWL3Yc321m6LVJGvWjd/1aghin3WPkgIjjXsDwW6oh5dER3L
         towpn6ShZMReWRQIL7GIsjQbnbMv5TAsxiceENz7ZT8kXNxLO2dmn9GBzi5NYoWlBwAm
         nRas1o4dsFlMTbKkA/FmA8HRkk7IRACjval09mnMCNIkBaaTdlOhbCGQ4GYjRZjwUZLz
         zPjDBh0YXbTOklRc98K0h//OAiRS6o41xPJxDxWS8en7Ckz+Hs2tP8EWIJ3nQQ//EMpX
         Xsu4raOodv9ifWL04oqmpJ/9F/ruPNK1wjw5V/BkN+stGNwbvMpyQ6u5E1VlBDAflgLQ
         xPHg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=r8S0rfj3b/nRURuD3bLK9O0NQSe7NRDftF7lXx5JbiU=;
        b=tVOTjYBFWYjtkp91gx5DtzLVwtjZQG629paReMJykqWc13T5anDbiOGt21cWdovJkQ
         +E9xC8L+gWuE14K3sYrNjk/XxLxeriNzEPSVKlx5QCTsdi7OYv9VEM4YTKLCsRF+P3D3
         1qwOsvbA1OOqfSCV1mYJiBAt8PI2/2lrJpWXoM3t+898Y1TUC8TvwuMhqb7wlwnhouVO
         J3hXCYkl+m+ADNxSIhBIBdQqumUjn1KE4bdGy8wXS1V8hZHZE84fXLrDA2653i8FlWb+
         uIaIm0JqwcKE0YPHDvg4iNeD0BeyAt+nR2eeVlD3AwO21roHkOIcw+3sPGVrTw8s7jV9
         PMwg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lBVmOyHm;
       spf=pass (google.com: domain of willemdebruijn.kernel@gmail.com designates 2a00:1450:4864:20::541 as permitted sender) smtp.mailfrom=willemdebruijn.kernel@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=r8S0rfj3b/nRURuD3bLK9O0NQSe7NRDftF7lXx5JbiU=;
        b=WxXfSqIdNiRfvYQ+z5m909P6Jjv8WlnyiSdULGIVuyJcT0de8Qbjd/Sbq66HtqpHih
         aSIlCJXlrk54V/2zvZ/603wG2ym2/jdWrX/oS3gtojxbXY3m8+2WINo6UsvU2lLqYenl
         m8HOl9HjEo5NPF8AIf9AiUjuER7qv7jRnDAEm1vM/eND8rw1ec6z6iuGgwQCQ1UcfjXX
         GGHyDrnYV5aVLpvSw1BalnvKbrCKPQyTawocT31p7Iv7qUk6v7V196wfGr/A/WmUFW3e
         qsRXZKWU53FHSTUv2fSpHgistTLcC/QM3L3cL2R0GRqtMTbWpesc4rILiuRUXL6q7ZkV
         2Ztw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=r8S0rfj3b/nRURuD3bLK9O0NQSe7NRDftF7lXx5JbiU=;
        b=CgD7veclJZES2f1gxoLMRhF/FL0RcRggNIZ827+3UU+qyUAkJ9MOnSw4iP9rONhiJR
         VVTEz6sKQSJJa6dLFJpj0/kAIlGSh034vDlYb4zxSAGJej/k3cHDsIuZpettz09sYYXU
         lQlXHlke4HarejiTjZ4q8mUYQprtH0ODHtUzARtdqoPnXLCxD+rhUM2dRzW8ZGRB9PeL
         Wf5ittA2PTG1lHvMmFJ/xdHX5DUf4fM51wiG0DfzaHJjJvP9IRO8iFRQCuYysyVWBfxL
         qtMLEFbD0pi1eoUGmUfLVDtPooUiuCxA1qURCVRIrIQGL4BpA8azF+PkP/1WcNWNkPNB
         8RQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=r8S0rfj3b/nRURuD3bLK9O0NQSe7NRDftF7lXx5JbiU=;
        b=Etb5C6bnv8ASoklrSFWLERn4k1Nc1738U80BSP5mFkWXq+yUz3iokXJNAoBILlz5vX
         RkzuHBvcF2tzQjq+026hhrY6rYwyqrVd2GlRVWmW4PjX7PReGbVOkVupzr6lzHGLLvrA
         xOy13rQl57ukgGZU8PQaXIFH0mTuhaFYxVJ9F9au4uptCDENpAmgi3S6fBO3bJruejyX
         R4jCQlpLEI0s62QgYhiIE6eoT08YA8uz21T7SC9rMdkrPwWICkwN960hPramDbSVsz9Y
         BnREsewcdd6EYFF6Vxd/eMq0/Tkbs/ZsfAyoPXWlp64ReROMTVviQzs22xqbv8RRGWKl
         qomA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXLhoMFE4Wc78UFQsAISkI99Pj46FQRDis5CLrpecXmINyKgHcB
	USRpby6DxtQRDo+D6TsH6x4=
X-Google-Smtp-Source: APXvYqxGb4bCKJ2xHJEhbaLbN99RT7jX3hNO6vTtlWwJ8LpbuIU1wrneh9+FwoKB8MVivvcEN9Ejqg==
X-Received: by 2002:a19:c711:: with SMTP id x17mr15633421lff.147.1563303705059;
        Tue, 16 Jul 2019 12:01:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:ee0a:: with SMTP id g10ls1732358lfb.13.gmail; Tue, 16
 Jul 2019 12:01:44 -0700 (PDT)
X-Received: by 2002:ac2:5225:: with SMTP id i5mr15360395lfl.157.1563303704359;
        Tue, 16 Jul 2019 12:01:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563303704; cv=none;
        d=google.com; s=arc-20160816;
        b=l/Jwt4zzRriNaPQG4wQml0f4qJBEsBlTf+iUhDFzWIgKML28l80kiDXDrcN9e0tvwG
         r/fGDIf2OdZKxEG903rD8a7oQOomqVK8lZET0qvqtgRxyBYvJooJGnpY4LXL1ENB28y4
         41BwWvG3zgR7diZf0ZWBpIucS2mtc0PJUyvibtNlxd+mInrIMA4mxrqWNoAzwPKoZqHw
         t8ZbH3dkB310Ih6i3vFSO5yBX6/zxFOjA34uaRUvdCyKKzhGDw6Eaux3tmhW+zs66lmH
         rYa84ywnyXy1HuB+9AYA9xyVMtPbrqYEaRTsRpxU8qkDS2F3HbOrL8AuQoEHGcrq+/dQ
         cXpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Np3WkPZiSmEyIIL9cuGmzDJH3HAqVF26+WisTX76KYs=;
        b=dTxzf4GL3SMDGnn9eZ61UMittOq4C5PNFA/vpN6qzEbmtueYLdlakxeAAXKJyOvZr4
         Ti+/Xwt7Y4+1+PbAvDnbWRDw61VdxB7UQ5UHAs4i9dl2pomP2lyyceLYEBuJkmFzQcY6
         NHb4Vh9HsgOxgKR/osuYJPmK4tqQjl7GIT61VZaIdDFT/wotrHNOafM9bG1EaDsJ7p1e
         1b//eRTPfItr4FWD3DBVbbltdQUBLNv12dGMWMJhoKgpbeTA/h7wMZkcHTtEuoaDZ33n
         YXPsX884R7x+gyAvncuxmXQCB0tPyUw6hvExW6ifs5iPQ4e/vEMtKFqcEBn0Y8pzSJS5
         VKUA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lBVmOyHm;
       spf=pass (google.com: domain of willemdebruijn.kernel@gmail.com designates 2a00:1450:4864:20::541 as permitted sender) smtp.mailfrom=willemdebruijn.kernel@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com. [2a00:1450:4864:20::541])
        by gmr-mx.google.com with ESMTPS id v29si1221684lfq.2.2019.07.16.12.01.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Jul 2019 12:01:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of willemdebruijn.kernel@gmail.com designates 2a00:1450:4864:20::541 as permitted sender) client-ip=2a00:1450:4864:20::541;
Received: by mail-ed1-x541.google.com with SMTP id k21so21572865edq.3
        for <clang-built-linux@googlegroups.com>; Tue, 16 Jul 2019 12:01:44 -0700 (PDT)
X-Received: by 2002:a17:906:b301:: with SMTP id n1mr26467468ejz.246.1563303703733;
 Tue, 16 Jul 2019 12:01:43 -0700 (PDT)
MIME-Version: 1.0
References: <1563291785-6545-1-git-send-email-cai@lca.pw> <20190716165136.GC37903@archlinux-threadripper>
In-Reply-To: <20190716165136.GC37903@archlinux-threadripper>
From: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
Date: Tue, 16 Jul 2019 21:01:06 +0200
Message-ID: <CAF=yD-JixO-3HbxFn6BHa5aJY-dJTrNq4sWKneP4XA=xxU8Qnw@mail.gmail.com>
Subject: Re: [PATCH net v2] skbuff: fix compilation warnings in skb_dump()
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Qian Cai <cai@lca.pw>, David Miller <davem@davemloft.net>, 
	Willem de Bruijn <willemb@google.com>, joe@perches.com, clang-built-linux@googlegroups.com, 
	Network Development <netdev@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: willemdebruijn.kernel@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=lBVmOyHm;       spf=pass
 (google.com: domain of willemdebruijn.kernel@gmail.com designates
 2a00:1450:4864:20::541 as permitted sender) smtp.mailfrom=willemdebruijn.kernel@gmail.com;
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

On Tue, Jul 16, 2019 at 6:53 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Tue, Jul 16, 2019 at 11:43:05AM -0400, Qian Cai wrote:
> > The commit 6413139dfc64 ("skbuff: increase verbosity when dumping skb
> > data") introduced a few compilation warnings.
> >
> > net/core/skbuff.c:766:32: warning: format specifies type 'unsigned
> > short' but the argument has type 'unsigned int' [-Wformat]
> >                        level, sk->sk_family, sk->sk_type,
> > sk->sk_protocol);
> >                                              ^~~~~~~~~~~
> > net/core/skbuff.c:766:45: warning: format specifies type 'unsigned
> > short' but the argument has type 'unsigned int' [-Wformat]
> >                        level, sk->sk_family, sk->sk_type,
> > sk->sk_protocol);
> > ^~~~~~~~~~~~~~~
> >
> > Fix them by using the proper types.
> >
> > Fixes: 6413139dfc64 ("skbuff: increase verbosity when dumping skb data")
> > Signed-off-by: Qian Cai <cai@lca.pw>
>
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

Acked-by: Willem de Bruijn <willemb@google.com>

Thanks Qian.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAF%3DyD-JixO-3HbxFn6BHa5aJY-dJTrNq4sWKneP4XA%3DxxU8Qnw%40mail.gmail.com.
