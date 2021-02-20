Return-Path: <clang-built-linux+bncBDRZHGH43YJRBY5TYOAQMGQEHVM5I7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id 45B283204CF
	for <lists+clang-built-linux@lfdr.de>; Sat, 20 Feb 2021 10:44:05 +0100 (CET)
Received: by mail-io1-xd39.google.com with SMTP id u24sf5645323ioc.16
        for <lists+clang-built-linux@lfdr.de>; Sat, 20 Feb 2021 01:44:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613814244; cv=pass;
        d=google.com; s=arc-20160816;
        b=S8qyhNn0VXJ2ZmN1o/f1mVA8QkLAo+Q4XuDww2eB7YlyXKKSwixak66dorkdCE8EL6
         sD7VembqMon1ehoVM+/mgmtLbDRb0IhyzACCu3DVT5kZdpE1+iwfgsYb4LSt5wxZIJOO
         vQNpLMrJRf+4E7LUtOsLanBEawILJM+QPRb1fmLL74sY9eTiencgdF4BrO5LpsyO7Qhl
         v37wRDrSQn3q72t/WSs6JgLWrcvl75EFI9GOOpbwNyDw/WvjXKaonKiNm3wpt6EfXjT7
         wPx9NkzuGJrsNaycQbW9GEjE5rQxrtFvg9gLAS0LJ24dBwqda6vDL5oDumU7N0m0D+qp
         CwXg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=1OqH7306z6VEDNGOuyg8hDtcrBbCEl1LrRZzD+hDZCo=;
        b=lt9V93BXF5b3fewvbTarsS6y9gCFGtQwVhWBWj2VcIxVIr/fWhgID17I/hQDqSiwQ6
         1BeJWfxg+1/hpLuKmynqkzgTOjq0F2Hehw4nsjhbsSptZPt5tdxzcgUpy15dYyxno+9l
         1dllrAa0xh0ljwAwy27vWsjKHUlmXZFQCL0rRAH3f037AWUzUY82xZKy/Fn9bu/HeLL8
         9SdZES60yurchqSSSxqT0A8mxsoxmAsTlMCWFoLpvDNyyV0A3+03viKDX/Dt6vaHfhNs
         WdEQz8L/qktLFnkhrx1G/S+8jZPPSrRgPirc/G6P3Vrlg6nvwkgw0RwAwdYgVTgY2tFC
         RrvA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JLMWTVwt;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b30 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1OqH7306z6VEDNGOuyg8hDtcrBbCEl1LrRZzD+hDZCo=;
        b=bgeDU4mOohS/2/iBUzSFMKEyjDvWz9JhcW42xrhprFqCzKwRC5CXdkFuPrfcD8CoVs
         sZQyIME3HzojopAyogEXEn87sqmrvlH9HlU4CvwYUZygzPkLBVHDIBF/RdbG/6yx6nV8
         BYKmFIdz8Pi4OgJVXrzsj9rsb8AEyb7AlzNeU4FOd6kkQD4jhMJB5tzb+cZ8v7qmiGC2
         4oC/AsD08L3T6kMe0BIWZmFzgWL7PufkCIhqakL/plwIcHnmK1+rLQEJ8ucFKCF4g1kg
         Sh1bHcsnDAXClHxafwIcJipt62tR3t3jUpJmT6TzHRaoKaEhmGhIZ+lkYnAbeadLrUeC
         11Xw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1OqH7306z6VEDNGOuyg8hDtcrBbCEl1LrRZzD+hDZCo=;
        b=mtlvNgw1RzPTc9thgcdiDuRScbPaQeLAiBrFJWIiklS/h/B451II8++fVbGMcAhNTX
         XlU2NRA03ufhD77hRTmLC8rqsuRBFzshLsphf30zQxbCCpFh1m9UwEUY8NPH35qUFUr0
         O89m5NR8l+xgh6FlvDWBxH8m2901eNlTAOL+NjXr69GGgvI1IaslUOenLsqj4x/NHcnv
         mR6+ByJh1uu3dj05xw1TuMCZIsPlF+5EQHVmIfbks1mZYDjBfimYCnmk2oeywlTYZWcl
         0Q6+rqceUi+ucZgGz43PqCeuUAKFyrim2ziI8wb6fnOtCczrYL2kdmGsC4o7aTE9ctnE
         Rkww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1OqH7306z6VEDNGOuyg8hDtcrBbCEl1LrRZzD+hDZCo=;
        b=n/J1Ng/H7KT8qmtc16/m8hJm55EODAiSbxLmL1SSLBpy6fWZ7MwYgKn+Zz8mqJV6xF
         QYlVD3xKrF9H1E9AeQKcnmKkD+9sdzj1wXXojhuLSEXGrJujr2lwO+AOVR0Yu6/NHgsb
         wB/EtVOPPYGxRbiEW9b2KHZHhlDC9vHPsYPvhvtj2+G+niT4iK9x5DAaf0uVVga/pSLS
         nhNMJDN8B1onBRp2nVHEvMhSNQr5dXVMo/oWBUlxzlVvB84g3/s+8heX9tIugLYF271L
         UKYn5L4KEUIZ2A+ffsrhqPO4iit6161Ht52hkATH7f61WND7GAa5QzV9zCploWlWV46R
         n6Vg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532e4g3mCtcUtjF5TrE3m8wFROFtcjIui3/x+K1ky4n/0pYQpeGf
	iVGvKohLGbwQWcPjzuIGJLw=
X-Google-Smtp-Source: ABdhPJzn6LJzhaeuU8SNN2ToYqrfXa/G2L1be7IaGqvrwwQvjznQZSVmKu4AgjfX8JXqYIJ2oqqBog==
X-Received: by 2002:a05:6e02:20e5:: with SMTP id q5mr7241807ilv.131.1613814243945;
        Sat, 20 Feb 2021 01:44:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:1032:: with SMTP id o18ls3093453ilj.5.gmail; Sat,
 20 Feb 2021 01:44:03 -0800 (PST)
X-Received: by 2002:a05:6e02:b2e:: with SMTP id e14mr7116064ilu.164.1613814243487;
        Sat, 20 Feb 2021 01:44:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613814243; cv=none;
        d=google.com; s=arc-20160816;
        b=TmiUTshXdEq5cEev2Nruk9WajzL/vYWKk+nRRVjHBOG3Jg0XjFi9Mev/c37zcd6pEo
         qyF1RwuNhLFPUP5BshatI2JuvRPoSJpOO6MUMIpWqE6Fu/F5H1Ctilp9oIwmEIQ8Hl1D
         un1BXO7Hs4sYjOkWF0IlCWR6LdJN2ADZIZym+W5Dn5EvUOxeBc1LtT+z5y7NayBSfAiW
         mydCvvd2qqrKZkaAFWVj7Lwp8Zd0XbddNg7/9Pc2auU0kdXUE7aYOtXOofrQsqPhdaF4
         nuTA6+9QMNS2Fx5VyfkstF9DH2WJx1t2fF7gwfhyGbZ/CmRCvQl2fGVtJOzCQX8BZ1q9
         W7QQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=wCFYHvazUgNRbpVltxCwLpepYDDeFNsVpUeCIrSJCvM=;
        b=SQDBE0/2vnBF4SIyikq7G3WbN8t2AFfpi/MytVpltqazQJB5H7iPDE8v80aBiLLh5Y
         BMvAx4ICci6RvkJSwvRyUIMc1/685JPclaoLLMbbl8+JYXgtJAc31ggv2hC4c9VxAnw5
         mdv71GifGcnE7mTckKE7RmxiYyKIP5sbIpu0krvwu9bbQDyu7Wv8o4+1AaJjYqOlhiUV
         NhC1obCsh7dcT9RGk5JOLn6DTR9AC/oaC6IMVaZoeB64+niAV2vTie/d6baufIMGW1wm
         zavLxTB1Z6bdZm76heTLr7mqbWbmdPpqFmHPz+oRt+l+IyMZYOxcBRSnxVIJMZG5FeBX
         +a6A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JLMWTVwt;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b30 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb30.google.com (mail-yb1-xb30.google.com. [2607:f8b0:4864:20::b30])
        by gmr-mx.google.com with ESMTPS id v81si590634iod.4.2021.02.20.01.44.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 20 Feb 2021 01:44:03 -0800 (PST)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b30 as permitted sender) client-ip=2607:f8b0:4864:20::b30;
Received: by mail-yb1-xb30.google.com with SMTP id m9so7996977ybk.8
        for <clang-built-linux@googlegroups.com>; Sat, 20 Feb 2021 01:44:03 -0800 (PST)
X-Received: by 2002:a25:b91:: with SMTP id 139mr20140258ybl.115.1613814243268;
 Sat, 20 Feb 2021 01:44:03 -0800 (PST)
MIME-Version: 1.0
References: <20210215204909.3824509-1-willy@infradead.org> <20210219195509.GA59987@24bbad8f3778>
 <20210219205403.GX2858050@casper.infradead.org> <CAKwvOdmNz7PEZGJW5=FaQiWcShYUBMeo--_JS6JU94bUN9HagQ@mail.gmail.com>
 <CANiq72mZPUMipvF6+Dft2XgqqbSRTnAA32P2XM9373i_nq4UNg@mail.gmail.com> <CAKwvOdmo+5oBGcLsboZDQo_qtT9uusXjD5OPtu8isRuUUZ+ysw@mail.gmail.com>
In-Reply-To: <CAKwvOdmo+5oBGcLsboZDQo_qtT9uusXjD5OPtu8isRuUUZ+ysw@mail.gmail.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Sat, 20 Feb 2021 10:43:52 +0100
Message-ID: <CANiq72m6C0U8nG6jaWu4jMa3yzMepGYzwyH-eEufOxCnjy86BA@mail.gmail.com>
Subject: Re: [PATCH] mm/gfp: Add kernel-doc for gfp_t
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Matthew Wilcox <willy@infradead.org>, Nathan Chancellor <nathan@kernel.org>, 
	Andrew Morton <akpm@linux-foundation.org>, 
	Linux Memory Management List <linux-mm@kvack.org>, Mike Rapoport <rppt@linux.ibm.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=JLMWTVwt;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::b30 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Fri, Feb 19, 2021 at 11:50 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> (There is a separate warning flag for broken header guards,
> -Wheader-guard:
> https://github.com/ClangBuiltLinux/linux/issues?q=is%3Aissue+label%3A-Wheader-guard+is%3Aclosed)

Yeah, this would still help cases with headers without guards (not
really common, but...).

> What happens should the kernel move to gnu11, as discussed once GCC
> 5.1+ becomes the minimum supported version for all arches?
> https://lore.kernel.org/lkml/CAHk-=whnKkj5CSbj-uG_MVVUsPZ6ppd_MFhZf_kpXDkh2MAVRA@mail.gmail.com/
>
> Then the warning will not fire, since it's only really meant to help C
> code be portable between -std=c11.

I think it is a fine warning to keep in the compiler nevertheless
since you already have it, even if disabled by default or only in
-Wextra or something like that -- e.g. I would use it in my own
projects since I never intend to redefine a typedef.

> https://lore.kernel.org/linux-mm/20210215204909.3824509-1-willy@infradead.org/

Thanks for the link!

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72m6C0U8nG6jaWu4jMa3yzMepGYzwyH-eEufOxCnjy86BA%40mail.gmail.com.
