Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBWHUU7VAKGQEXVJCC6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 5060F83D34
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Aug 2019 00:08:24 +0200 (CEST)
Received: by mail-wr1-x43a.google.com with SMTP id b14sf42711483wrn.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 06 Aug 2019 15:08:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565129304; cv=pass;
        d=google.com; s=arc-20160816;
        b=KzBm81uH70mIoUvMxa3wkZmoTDUcUqDc59xGBuSpAjGw8gD8Zdx9p0cPZcNiwFHsD7
         5psNbwZ7yOu9KZGj1VL5SB0alhvhcLfX9Dv+mZ47jauA3DXxC09o9Fbf9o7WXaWktILU
         xNL3Epupu72Dnf8ogEA4OA5rU43RVRg60d1+wXdy62RUCykUzhfTCpvdD3FTfiRq424P
         gsQ/Ro8qk51mU3Upgc8RQlndnMXpaMyYnaNHhdT6oKYPdGi1Nq9bSiy+kyXqRb/FO8mZ
         6MVuIiROabSnhXswg0sSixcBuzP0b3aJrmI0Yl1zrJ17YhBcpX1RwHE3IXbiklZu09oN
         8avA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=D1ndsI5FAibaf235SSo4hE2dZSlL+lVpFlRhTGgwqHQ=;
        b=vzAoVmQQsorRGcdP3JcW7M6obZu+k4WnIX8zs4PAELTJa775HqzqUXSopRTCmQh22M
         ZgYi0LE14mQRtqKA/DVfgbwmSKCQVDOG0AnKE9aznNxkJyfT/v0CHMTW7LVF4Z3uYnht
         qqDRZUOtCs4EjEgPmJfU+BmWGe7LsaWdoZK9nsjt/wIwKWpx/0M/maWaWE3y0yrYrm1r
         FVKqF14MtQlLEKVVR2r4aKx5HFjHESbTR1qyI2YDLY8J3VGnDUaNB6HR8pZF4N1s71aM
         8NH/VK2+F08nclQ3lcRUjRJAn5DWbrU1Gqvn++4H/2o4cX8hI5DDy6BYm42g5VASfFIO
         mGqQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Kpairgd9;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=D1ndsI5FAibaf235SSo4hE2dZSlL+lVpFlRhTGgwqHQ=;
        b=ZoRvjcWZJZJCnju4iMDQ3ltyoCvoKWhIKny0/w/TbPqgR6wLBRM8ynHRCzo/p8dneI
         px8ZjAdLC/U3GaQrjZugMYKfQu03GBLV5c3PFgL2zwndLqmnQJoJ0rpaMDHtpSd7lHUQ
         j3dbD8EoAWCZPInt15N2vViwjKx0Attb04RslrD6uaBDEYQ4i8kO9V6cM0gGCQC47HHk
         x0fN1uwGA9/9AUulx/rfMfiqqo0YaNmc2CZwRguRYKK9jvUITtiWkjTBhuEF9RSw7kxA
         FdvGh+2Mkl4e4l2LSL2yeW/M6NRYv1K8eBJiSvUWu3OpZQ4+OkUGa/EmZB46cEdQi6Me
         +1pw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D1ndsI5FAibaf235SSo4hE2dZSlL+lVpFlRhTGgwqHQ=;
        b=RG2IELiVTNvXkQdwcZhE2LyUDXo3tX2wvuhMJphLxclj/DgefZhsKX8/OQxE6qtw8I
         sfLoCj1Njpegfdy2+OizUhL0p6KZRO7Ulso+zPU/UVRGUCAobPEloGlLFE3LDF6/TEtn
         X84CpLauCk736yrWkd9G6NGDAqYuZBYnGsjX7OOmvtO7zFpPQVhWUBbsiMxyq+34ZgeU
         wa+butXSd6zjseTYOyIrB9WGuwYRpC9YqdjELIP4u5fNoLKGllqD8XO1n3jf7RSuW7bw
         SqlSvaBih+oZDWJdcWBdsmymOiN2Y4t1JWg7xrsjdrHK8ZXqfJ029FhATLqyKuy7eD9U
         TiQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D1ndsI5FAibaf235SSo4hE2dZSlL+lVpFlRhTGgwqHQ=;
        b=rH90bkLA+ii1FVCE/LQej43vaeryCDsxBeEWubY5Nx45YtgSExemBNliPz1zHIqGG3
         5PibD+bIbefi2bTqP/N7Cy6vRLe4DQXQLDSw38n5X3Nh75JzJVZ6q1WogmGTFClKQGg7
         QhNKsoAxRWhRq9x2q4VNfT+DlV/guzzefJNdOFkj0StwBqrlrTqpo1MwqWeg3aFjyyBa
         4jOFVQD/GKKaPlfkT/vHOeR4L1YHeiuZ7wABGPgL5JEOjlTG1e0nh7SUMb3q76ETCACI
         NXM74jG6xqN2uK6QLetEoNLqNxGUPZgO56372s9UBTrmy0NqHKV6O1CI3Dit9GYKvc4E
         Lqjw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX/aWl9o02RUb0atrGvkjnRyzotGcyBcl3GHakL9C5IH7DwABty
	iGKiNQi4lSyt/dI+dNfGS7U=
X-Google-Smtp-Source: APXvYqwwoVr9mzi1n12lYoK529kd2M8N9RaYfZ2IcFbsbEj8FkJKPRtfr5qgVAKqz+0St+NMtsQ32A==
X-Received: by 2002:adf:f2d0:: with SMTP id d16mr6264210wrp.221.1565129304081;
        Tue, 06 Aug 2019 15:08:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:f78b:: with SMTP id q11ls16823547wrp.10.gmail; Tue, 06
 Aug 2019 15:08:23 -0700 (PDT)
X-Received: by 2002:a5d:6a90:: with SMTP id s16mr6609848wru.288.1565129303554;
        Tue, 06 Aug 2019 15:08:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565129303; cv=none;
        d=google.com; s=arc-20160816;
        b=y1TOev99poSE9u/OdJvHdGaEhRsfT0zjGBAbMN0f4a7GyLYN8FWjrc3Or8BhCGSR2S
         9ehKTylu8FpFSQFFlReY907OOTlZdMi4x5vNcbpCGl+pOcrxr2tfVs1V95/TPohIGKab
         taKYMLCDxVXFbMjern4gsJEQJG2j42umfyPhaiBZCngZcDZkv4W0z6VVBkLqC2gvnMaN
         yF4x8P8oDywkRGYIxvUvh1LJKzW1PsPNaMqdY8uwsArGEAE7nfpfFz+2tLRzJX0QSuuz
         J13MdD1DH9Cimw2cd58813YqVIhH281cbKssBJ0cGC9l1if94LiqHD+IFrvgoBxkH88s
         e+gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=qgatc5w5W2Cw/YxayI+PDWTPlaFmL3vZzN9tr+ALhwE=;
        b=JqkXNci0BHfhAz0uyxS5YuUe01nJzKJ8vA9+EFwYg9Tj4FqfucSYVSU9epYiMFTAid
         g9RKNWutlrn5ze7HMZ5ThdVIH7Iex+4vbkgi56Aa5GymdGonajxQRosPsugyuJ5X8ey0
         LuXbsGdwu2izNPmo0O1nsVqOuHSOagdfV/5VMdf/jrx/nt8Mfe37lJ4/kJ4OZIZTOZi4
         bsNLz4zH/G0Il+xAUd9PqFI89lRgBrWY5+asMG4BFy6bwBxIE3xKCquS1rVeJurhtzjx
         KKcJp4Z4rS0cqt/aOyVLOoUH8oSHRXlJZBPUJFikrDe++WuqvmlmSGIbVCNYO4h15GuO
         Q0rw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Kpairgd9;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id r13si4586006wrn.3.2019.08.06.15.08.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Aug 2019 15:08:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Received: by mail-wm1-x341.google.com with SMTP id s15so56609544wmj.3
        for <clang-built-linux@googlegroups.com>; Tue, 06 Aug 2019 15:08:23 -0700 (PDT)
X-Received: by 2002:a05:600c:10ce:: with SMTP id l14mr6268500wmd.118.1565129303219;
 Tue, 06 Aug 2019 15:08:23 -0700 (PDT)
MIME-Version: 1.0
References: <CAK8P3a2FecM1Phd7HRK3Mx1rD92MuU8a1N3++DHX4sq-R0S-nA@mail.gmail.com>
 <CAKwvOdmXMAeNQ_abJehDhXigYWeqZjnUWjxeE+y29QWcQczFzg@mail.gmail.com>
In-Reply-To: <CAKwvOdmXMAeNQ_abJehDhXigYWeqZjnUWjxeE+y29QWcQczFzg@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 7 Aug 2019 00:08:11 +0200
Message-ID: <CA+icZUWY=tCijnsDEvP=cTsTvQVEt4jdcXywOGeZ0DtKfLf8KA@mail.gmail.com>
Subject: Re: apt.llvm.org builds
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Sylvestre Ledru <sylvestre@debian.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Kpairgd9;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::341
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

On Tue, Aug 6, 2019 at 11:34 PM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:

> In fact, here is the commit:
> https://github.com/llvm/llvm-project/commit/c4f245b40aad7e8627b37a8bf1bdcdbcd541e665
> From release_90 (link likely to go stale quickly):
> https://github.com/llvm/llvm-project/commits/release/9.x?after=13c43456a9a81293549e292c31cd29e9aaa67ead+349
>

llvm-project.git#release/9.x has this commit:

$ cd tc-build/llvm-project
$ git branch
  master
* release/9.x
$ git describe
llvmorg-9.0.0-rc1-38-g13c43456a9a8

$ git log --oneline c4f245b40aad -1
c4f245b40aad [LoopUnroll+LoopUnswitch] do not transform loops containing callbr

$ git describe --contains c4f245b40aad
llvmorg-9.0.0-rc1~322

AFAICS llvmorg-9.0.0-rc1 Git tag has this commit.

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUWY%3DtCijnsDEvP%3DcTsTvQVEt4jdcXywOGeZ0DtKfLf8KA%40mail.gmail.com.
