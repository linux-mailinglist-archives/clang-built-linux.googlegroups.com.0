Return-Path: <clang-built-linux+bncBDYJPJO25UGBB3VM4GAAMGQE5FUYWJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 3699330B05B
	for <lists+clang-built-linux@lfdr.de>; Mon,  1 Feb 2021 20:28:48 +0100 (CET)
Received: by mail-io1-xd3f.google.com with SMTP id t127sf6239099iof.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 01 Feb 2021 11:28:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612207727; cv=pass;
        d=google.com; s=arc-20160816;
        b=uX9b5U41UV/iRdgXdwS1SUd5GxOL11MHyf88Tz7Msxni/PH8fdFsya54ZjChMk9i1F
         HYXab/ZH3wZLTQ0oajpynLWx+pIjJEU6xwVJwhQnrT+LEy0qG1gDskXi+7iSlXKmETAG
         gBzNzafwgeJAqS1IBD2PwXWpg3lcuJVqmcAziY448hCgYRKOM8T95YG1h1nBlcEIcRpK
         NGYj+bs28uWm+1THAEUVMF8xbCZAgvVmDxq9UfGSnlMOgUaOqvs1TElT7onop4bhg7cS
         MtOmnqQbSUc3k+Oxun5jP67AsXbkxwN9jLQIEh/iuiWVN1SVAHus2HU0FX6lnLU4p3UU
         TSLA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:mime-version:dkim-signature;
        bh=7fLcRL/mGs5g+SSCWSGV5/HhQl8nYbZcGO8qFJbVUIU=;
        b=y+hTAvJyAizUlXGw4QbnhaH2RPqTaivCShwcy4pU1agNInpp9EB1HHonLYIZa9ZMzx
         OrddbwCNfW+k8rsohWM9abkRuNjMPyaj1N8zK2W9r6sO+doz92BccDfaIQUZJ1NnuQ0T
         D6lJIk7jTOqRx77xQh6zPtBD+a1OAV/rEVn89NNpqal1vybTbnYNKBwPjYCdBIjIk5C7
         D3bh0aJylWqbna5DSvPhD5aV4sdXoN7frTHOV0fOV+Oci9HlYNM7Sb+ThlmuhKMxL+vE
         B0k4Td1BpA4yAZsL1PiVFQtxZVENUK1meto6d+rGX5r+T0lMGoMnIEmVH8ePoLVkaHV4
         7FUg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lVzFKjDI;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1033 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=7fLcRL/mGs5g+SSCWSGV5/HhQl8nYbZcGO8qFJbVUIU=;
        b=dqfXlM6So+tWmYMkhG7H7qEPBBolaBbVNHG8ZbX4w/wHUX8PFD9y34oEAbCIMLsdA5
         TmBwjOhtm1QYg4IZw0iK9XJagVWrcdo5ImGgjFI00arbMK7CTpf16Cjwyevzwm+dKC3R
         mTNzCGdIRP2knH2B4s9fn4S/8AIhoPuXVahqT/wSDuE0vJjzx2u7wG16hTUlsulcdbNc
         +zAVgooxBNAmF2RIriv9cWJ/pnvR66IhHQUUrdLwqtwe++dZhXVl+KbWLAkzMmWSvnYj
         aLNJS+PhApHRX9cR98AstWSLeyGpTAQcuzPerWD3og9dqUYo+/IgcmSADvEsFMliNBvB
         2wfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7fLcRL/mGs5g+SSCWSGV5/HhQl8nYbZcGO8qFJbVUIU=;
        b=oZMV0up/+9R5UB9ggd7RGuVDDVtmh01njzogGKAR0n6JiQegR7PqYL35tkebXF3Gl8
         Zb/nq4Cc6f9q14spDyS6LySizQu3VeUVMFyzdVBC1UpFq6CeK3Ga9UE8jinhBbXvsa+3
         oFD8/2Csfx/Odmewh0Z7EoopyCEX3iI459tz2EQg5GJ31HCK141SvcGQP9wk9mTPug1O
         ckpRJeAjlps9gnNQmcq3hj2wo7z8mdWw1pG49zk8VNhpYVZcuAnTKLwUHePci8O40Z7a
         4Qjg7HP5YAprrboe1gUcmY9Vn6RLWi0tg0WDLoma7o4VXYrZT1sYJaZrxODRCoThgVX4
         DiUQ==
X-Gm-Message-State: AOAM531YsPKsVSDbe6C3imoXFZc0OiueoZlbzVmRNZACWfCnwEgHo/2q
	beXFbYcKpIKNObbeKYXEgds=
X-Google-Smtp-Source: ABdhPJwHUcRrkzFAqssCrl7nujNx+c7/oBzIiyQidX4D16upxvhKTGDKmMfEjWi3UPiyx7qxB9Lt5Q==
X-Received: by 2002:a05:6e02:1b84:: with SMTP id h4mr5687228ili.196.1612207726916;
        Mon, 01 Feb 2021 11:28:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:1687:: with SMTP id f7ls2113250jat.11.gmail; Mon,
 01 Feb 2021 11:28:46 -0800 (PST)
X-Received: by 2002:a05:6638:84:: with SMTP id v4mr15747804jao.30.1612207726336;
        Mon, 01 Feb 2021 11:28:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612207726; cv=none;
        d=google.com; s=arc-20160816;
        b=neTtAWokLSGzzF7wwOiPLiLoxjLfWacOZJB4mRF0OwF4Y2sl2U5AKy8EJT4NmVxPfT
         T2LKsIJgpyvAx5vBgMttv7InPWvROJkGa4Y6f3vwYXKcQiA72rKuYubEkB8rC2edyykU
         sjtRVvhQ8/sUck8nyzSsJYV1v5NuGnmBkC0EOlFdywB99Gt0VXYQdBc+5I246mQ9Z3nP
         ccIiFSoOwiLuLOFYn6nAfIIWwgLZ0WPW/6kBB+1X1rkG5tnRz+c/Yhb50qq6Blh84jb7
         mRomXLkf5nMBK+otJ7Tdja7dS0/ZiE9+qxD90jZaCkd2m1/c6KkOiwqbPLemxkQEjgmT
         W3Ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=wDcHABJiwOBkA7SNZZaX4vw0uFH2NmjQON+BJ6DNLv0=;
        b=jnJNlTlu3CPwmuJ2OX2I6kBw4mUKEFCfG4mSvzgpflK+YOHPJWVosvVqULUfpht9H7
         o+IB2S7bMBmNScaHDMQVuh5bb+V7YbiL4D7gyp0IontLHwGVhzq3OK80kGk7uFhCvupC
         +XKWKa68a9VGWVqbdmRgVR8WtI1/X7Kw0yYAr0xhx/6Uy1PRs+6F+zu/AcSSiG0vs8gh
         KrrxmonkUi0BSo5Dw2sTKdxg/0q4lbx6EQjK/BhmEZ2iMQiY+9HOwILcbnIUYEsrCHt/
         c+6cPNTTPrIZA81sgAATHLqWm9spxN3oIN4GCrK8NINFlV8tTE5uqaZNcBCbrUbBEBEm
         CwDg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lVzFKjDI;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1033 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com. [2607:f8b0:4864:20::1033])
        by gmr-mx.google.com with ESMTPS id o7si876970ilu.0.2021.02.01.11.28.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Feb 2021 11:28:46 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1033 as permitted sender) client-ip=2607:f8b0:4864:20::1033;
Received: by mail-pj1-x1033.google.com with SMTP id kx7so211840pjb.2
        for <clang-built-linux@googlegroups.com>; Mon, 01 Feb 2021 11:28:46 -0800 (PST)
X-Received: by 2002:a17:90a:8b82:: with SMTP id z2mr411891pjn.25.1612207725297;
 Mon, 01 Feb 2021 11:28:45 -0800 (PST)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 1 Feb 2021 11:28:34 -0800
Message-ID: <CAKwvOd=5CWsfW-UY-k0ocTwLV0nLq3sUVVmFvNPLmTcqFxTz9Q@mail.gmail.com>
Subject: "ClangBuiltLinux: What's Next?" - Nick Desaulniers (LCA 2021 Online)
To: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=lVzFKjDI;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1033
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

https://youtu.be/GpiWVXKs9Z0

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D5CWsfW-UY-k0ocTwLV0nLq3sUVVmFvNPLmTcqFxTz9Q%40mail.gmail.com.
