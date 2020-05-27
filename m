Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBAXMW73AKGQESVFZTBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x937.google.com (mail-ua1-x937.google.com [IPv6:2607:f8b0:4864:20::937])
	by mail.lfdr.de (Postfix) with ESMTPS id CE3851E37AD
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 07:09:23 +0200 (CEST)
Received: by mail-ua1-x937.google.com with SMTP id 65sf8974112uae.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 22:09:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590556162; cv=pass;
        d=google.com; s=arc-20160816;
        b=d1KtBuHqSLYcnHoWtdZbQgZqCrK5UD6sOr0krUSIN0tcU3uc/qafbBole2vIUna4rI
         QmS4/b8d7VE7+mFyfpPwToLcvZ1EQ3XFzEfLYp9NMLe0lZF4z6ua/XxFUdDYFSpSve08
         jcAlmSm6Wa8DtwnZEN/HjYzyIwpfuQPYLFJvnQu0Nr65v/fbu+a8dj0rfyXdIDgsm1Tq
         h1bMZwl9BMHRT34PTQZquVbHmVPgp+99naqUj3oE92XR1MO3rh6hytTMGNAGvyq+AW1k
         mfiJJPjV0KZDEX6Q11FU7Qd+J0WnQujr3287xlgWsSWciv3n+S6sCzTFEK8G6M8/IPZH
         6oEQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=sN37J9hrCYIFcIXrnhYEaOiMQg/LfCouzZ4B5z+HfXI=;
        b=m7aoYQdpbn0sI5V8fTv2V7As075rzypnXFChUVHzALFSZg+CR9p94lfVSHof6xdxsO
         i9NhWgzkVFtXM5i7LKTZfXFysrt80THNY9hxCY1e/EcaNqOMGmAbF5ptvdC0wAj71stj
         ezxruSSZcJFFsGXDQt6t7r4HgEuuXqQ+QzlAcZtuqQVUG0Mzav4Jgv1lfLQtDdSWTpY3
         Lo9YUSLwocmhZAAQWdR7fdYfkK2oRYGL+ED0Xbznjxzkr7fHQDG11l6NFwoVAd7f7Cv3
         a8ed0O1HFQFhzKgYishyGUzqXHqny393ZNazIEcH/QCzu+soTpLFhYckJL5Wqgv35dJG
         elAQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CV2ucSIX;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sN37J9hrCYIFcIXrnhYEaOiMQg/LfCouzZ4B5z+HfXI=;
        b=HzMTDt2YJbf2a2bZhToESqcXhzQtj3juhkzvLdiK7W9YmhhuTc/+ForcadoI6zqQ0S
         PWllTfBFk4Ar29rVlMkU1PEe2n02NkT2MR6wIhiVpvY7t0AXmf4ZFuRjs2JpD9JA5ZGf
         AP4dZDOjhTIjSBdECfhaJ2nyFyNAlYDUQxLtj+94/SFpY0y8HooytWxIbo0FEyp1ZyNk
         VTifZkw0B86bUaOTL9gryX8kpg5xO79XM/68papA0wpFoUWvHZHxNc2V4tGfGE5jeqFb
         dyYCXjtUvPvzWgv2X+GJYzD5sZC1Lu+s4Z53iTLjo01diJ3fivCNHq7tQc01bFHAdSVB
         51Ww==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sN37J9hrCYIFcIXrnhYEaOiMQg/LfCouzZ4B5z+HfXI=;
        b=SMYdoXRkmRIuYtTn7OZV0UI7cTrjnHaknC1zsSJsxHL8ZY7KB+gyF462DETcoynYs+
         cQO0IEg8+DUJzMF3ILZdXcLeyha8oTKg3Z1hfA6z62Sn4RwfOrJ8pVLNEDflodGA5S/l
         sCZOVHc5T93m4mBV6VcKUSsFiSSUyOXOOEqUTNwTOjYuVllQSrpyugqCyQNjz0R0tgqu
         dVvwxJNJac0c1Zi8kRJhRGUen3Fa+yL10y4ZXu6GdmAASiqVGuJjdOB1WrCTjQWvrk7p
         gThJjXeMznbZfJ43QCyjbjpJlSpZDAmYm/y9PScRX2K5QIr7rtfWEta9qbGsBKRSzYZH
         KheA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sN37J9hrCYIFcIXrnhYEaOiMQg/LfCouzZ4B5z+HfXI=;
        b=eZMh1/J5pIKZvJUsIXgDAOBTa1al2xydNnMxd+E8KRGM+CG9saqt6LylXyvRYTzM/b
         WwoSlYKqJ5g86DmvC5mCYaDL7QyY7FHyu7bvVqyOgpPn7CLavKdywivH+lgNFJq1mdQW
         B/dmPwwiJRc4ryXQZ9v/fI6HCyN5nhHABVqmN20C3evfnHcD/4hTJ9GTwqa11P5jPbq0
         Tbhy4tBQaHXlP4gLf42Y78dDDQt+VLXvwFO2gD/ZG1JHzR5YYbtdCdp88b+H+73HrU+/
         i83RonD+dye5tqaoxWlo/wyeC+pTbvIvL1Mc5+GPUftE+J+tL1csi/xeSWDdCjPkCbSH
         zF2w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533y7R6Kkz9wM75n+23Lingpa7j765pnuJXDczmxWWBKGX8WhT6N
	0XeZPWjLNMZk6w733fSK8nI=
X-Google-Smtp-Source: ABdhPJyp2sdFo78R7e/pjtv2YR/sN4As/0kdk/XHPlbsSQ/Car1GC4CkNDZPpDOWjEBrpKLCNu6s1Q==
X-Received: by 2002:a1f:a6c8:: with SMTP id p191mr3616800vke.94.1590556162719;
        Tue, 26 May 2020 22:09:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:4504:: with SMTP id s4ls598698vka.3.gmail; Tue, 26 May
 2020 22:09:22 -0700 (PDT)
X-Received: by 2002:a1f:2b53:: with SMTP id r80mr3741887vkr.17.1590556162372;
        Tue, 26 May 2020 22:09:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590556162; cv=none;
        d=google.com; s=arc-20160816;
        b=VmdYLaOqGRr925eKo2Vio/9Z1SLy4j6/8gOz7j9ql8pffNVkflQ3waxV9vlM0XQ3TM
         ICxT+ppDL1pHfeKA5ZAMAOu7s+hux6zJCdpdn2kzF33rmYTU4bBAmaNQ7IhHupjfZBgu
         srDPDCY9mCDChzAFUKyTATjReSg3MaCNbEOFVGIdA8MOyAZBT5pYSOD2MAoOPC+pLo0v
         wypzDj2RmidepKSyK4mCSX2JBn8/mKPV/UkO0vCwnMxkfip4vxeBoIJhH7gt61js0uLC
         WvGxUUV80PWSRjQ+bkRBeepwx9j7hGZtmHuuovjSQWVX0n67doaTN8lx2ZSevZjF552z
         UZoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=iTJZDY5H/dFxsdNEjr0CYs0oWVGjpyqAezVJ96AZYfc=;
        b=z1G2OPAMPrsTGpufQmojhO+ABsbZ3oDR/esnZtCSL1XFHME2a3xSbOK/pcV/SRKOQm
         +iffA+taihrwON+4q+BvMzxmteMMBLEW56QvhTv1dJeAyjpBmsWhUMJPRW07Lo/zlZB5
         VbheMnrYw5WOQOSTHEYUN1yv4RM/O5kU2QgRHaOtKQsm3vlJDcrrioq8P3fDOALRdevJ
         nahcIw34CwSaEiavyuxUj+3GvA56/v/EA/WoybTf+wCWsUFzpFUu5fCLi0LpdYLwb8Ib
         5F3nyZ9gpi7e5bFgAxY4dnDXt1dmBxjBNLp99sTe2nuTJjlYJnPHvH1F6TCmcN4mjkUJ
         q9pw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CV2ucSIX;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com. [2607:f8b0:4864:20::741])
        by gmr-mx.google.com with ESMTPS id j5si226751vkl.3.2020.05.26.22.09.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 May 2020 22:09:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) client-ip=2607:f8b0:4864:20::741;
Received: by mail-qk1-x741.google.com with SMTP id b27so13239860qka.4
        for <clang-built-linux@googlegroups.com>; Tue, 26 May 2020 22:09:22 -0700 (PDT)
X-Received: by 2002:a37:a89:: with SMTP id 131mr2339534qkk.92.1590556162058;
 Tue, 26 May 2020 22:09:22 -0700 (PDT)
MIME-Version: 1.0
References: <20200527015704.2294223-1-dxu@dxuuu.xyz>
In-Reply-To: <20200527015704.2294223-1-dxu@dxuuu.xyz>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Tue, 26 May 2020 22:09:11 -0700
Message-ID: <CAEf4BzbR+7X-boCBC-f60jugp8xWKVTeFTyUmrcv8Qy4iKsvjg@mail.gmail.com>
Subject: Re: [PATCH bpf-next] libbpf: Export bpf_object__load_vmlinux_btf
To: Daniel Xu <dxu@dxuuu.xyz>
Cc: Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Martin Lau <kafai@fb.com>, 
	Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>, Andrii Nakryiko <andriin@fb.com>, 
	john fastabend <john.fastabend@gmail.com>, KP Singh <kpsingh@chromium.org>, 
	"David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, 
	Jesper Dangaard Brouer <hawk@kernel.org>, bpf <bpf@vger.kernel.org>, 
	Networking <netdev@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andrii.nakryiko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=CV2ucSIX;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
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

On Tue, May 26, 2020 at 7:09 PM Daniel Xu <dxu@dxuuu.xyz> wrote:
>
> Right now the libbpf model encourages loading the entire object at once.
> In this model, libbpf handles loading BTF from vmlinux for us. However,
> it can be useful to selectively load certain maps and programs inside an
> object without loading everything else.

There is no way to selectively load or not load a map. All maps are
created, unless they are reusing map FD or pinned instances. See
below, I'd like to understand the use case better.

>
> In the latter model, there was perviously no way to load BTF on-demand.
> This commit exports the bpf_object__load_vmlinux_btf such that we are
> able to load BTF on demand.
>

Let's start with the real problem, not a solution. Do you have
specific use case where you need bpf_object__load_vmlinux_btf()? It
might not do anything if none of BPF programs in the object requires
BTF, because it's very much tightly coupled with loading bpf_object as
a whole model. I'd like to understand what you are after with this,
before exposing internal implementation details as an API.

> Signed-off-by: Daniel Xu <dxu@dxuuu.xyz>
> ---
>  tools/lib/bpf/libbpf.c   | 2 +-
>  tools/lib/bpf/libbpf.h   | 1 +
>  tools/lib/bpf/libbpf.map | 1 +
>  3 files changed, 3 insertions(+), 1 deletion(-)
>

[...]

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEf4BzbR%2B7X-boCBC-f60jugp8xWKVTeFTyUmrcv8Qy4iKsvjg%40mail.gmail.com.
