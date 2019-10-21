Return-Path: <clang-built-linux+bncBC2ORX645YPRB3FQXDWQKGQEPA3TTCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3e.google.com (mail-yw1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C6CFDF6ED
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Oct 2019 22:43:25 +0200 (CEST)
Received: by mail-yw1-xc3e.google.com with SMTP id o204sf11450736ywc.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Oct 2019 13:43:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571690604; cv=pass;
        d=google.com; s=arc-20160816;
        b=CB437KjtaEwEB0qSALl65Mc9kMhjkbmSLidv9lxgrcT/SY0PH9LU5oMZ52SsFQNmYP
         zlC4si0Rn9nZ+Zh/HXlGf3qR0Hy39hOOhyJe72XTAg6XHN2H7bbLBdILRVBE0qMaOwwS
         0WU3DI9hu8sgAY5pvN/IfVupWPlAsu1J/fTKCyStO6AHXyl4s/jIO3/zbOH6JyvuwrCz
         pIzb4EyocsSXxA1HRPyvsOqD9FsY+X8x14CuDtQcUVSS8T+b+anYRAnDAa/ueg6GXv5f
         kqZVBT/Uoj7JNlpgLTjgyvcdB2Tm+1jhR7ghWPAwYA+oQpj1bci28GCycYL81Ih98dKy
         AQrw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=hEJCeKeRjjwARbGVWiUmiZ45HNij+PefJkjzShCE6QM=;
        b=d8KR63a5areXebJj5h2moxQvOHFTY13c/zfQ/fTJd1r3lEA5LDjAL5j6M4uZYGTQpF
         fvEiZoXSSYaSKEYyexnnJWDMcFw3Di+y1KoVYkZUhEMO/OSRN+sr6BECisTYMOmQRIoS
         5hqnTKODu/lxPZhk3f1iwBEa8mpgRGE47eUzY+FuymKREj0fj158Hq32j0TaZbDqvl3H
         Sm/WcDGLOqpR2F8+HPJcXyhy1eW2URETjO9UEjsdfSIqadhB5mCH98FxpG20bUBHnZXY
         HXZHf9xjC/XULYrEjIzq+TpKmrA8Cf7OXR2r5TgzUroojP2BWwEroUA9eWrjNC4aCyd/
         qvjA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KSDqpUym;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::941 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hEJCeKeRjjwARbGVWiUmiZ45HNij+PefJkjzShCE6QM=;
        b=hRKkrBnTCTlLwA8G7CjjygmQqOuumUt4C1p7uo8J473SR9larnSyQYjc4lAsELrQ7d
         vQw2NKx1VgTLrB2vSWlyzMXjzk6Hd02sHgfS6ay1XWwsgIlsAfyi1eGfPx4fOWXqY/jS
         TaIWKDYVrIGMft4gjnkdqQ3ezYklZ0O4DTs2SXELT4Vf82yBwdCwxNtGtl/6AzcfGlvs
         dn4RWEo8mOGqr7GmZytSWSua0yXh9In0bqWy6QCENioli8f3Mea5LriHF0EItXz9cE0o
         1rNMG4QONVtWvT/GnlJsv/LI0Cg4jiVK+5QYuOm369GMCwZaBl6p9aZQNGlXLFAuc1Jl
         cxpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hEJCeKeRjjwARbGVWiUmiZ45HNij+PefJkjzShCE6QM=;
        b=j0eSNz+t7bPGjqMhhObDEOOW7kCekaoDwPwycm7RvoJohEZ4WvH0xHQKqWwIOR5/75
         hwd5am00O4828id2M7Qz3EZMTVDUIiMYoWw6E24qiAVylhwAfjhtcR6ivdfG81zx7OmS
         q59s41SB8m7yeDOJJTgjCsoUBdiRcZAreVO5iJ78Erqs1xDWepb+wMGtV4eiSixVDZGy
         0DfR9rzfdvpEpvqT8pf/n+G62Mtt/sCB4hO1RZvbKGMWT2O3Rnwxj2pyPfjtBKB8bJ3B
         fYEKGLRAS/M3Zk2+dRmNrhEWUL/2AGmdcPA9dFV1zGiQAMeOta2ZIpAOoFivfEuWffuA
         mbXw==
X-Gm-Message-State: APjAAAVrFuN9ds79zTowv7ogG4ipymt34RIwayFqEo+WGYGZe8P8spRU
	rxeUJcQ4fhVgG4woI/nBdIk=
X-Google-Smtp-Source: APXvYqxBJ0nSJRnUpiFVbn8RkaqdfDkIVDLTCbAe/hSxi/tpwDBexIl+Avn7lqQkp6JYghj/d8TQuQ==
X-Received: by 2002:a81:4e8d:: with SMTP id c135mr640815ywb.149.1571690604354;
        Mon, 21 Oct 2019 13:43:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0d:f703:: with SMTP id h3ls501336ywf.2.gmail; Mon, 21 Oct
 2019 13:43:23 -0700 (PDT)
X-Received: by 2002:a81:9486:: with SMTP id l128mr652001ywg.334.1571690603873;
        Mon, 21 Oct 2019 13:43:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571690603; cv=none;
        d=google.com; s=arc-20160816;
        b=SEVycTwFIN/cpQwjcysYOdII3+PcsS56M8W4Yaa2tHoOrYmigs12JPTFK7suKGTMni
         TIp7IEqhDECsyqAMf4gWDEDo/aVZrbx1OcRX1Pvkxh/4bP94LozRjAJ9MC3qcST3UwPZ
         EfEB+/d3z7rwIB5labLxYW6QHPV5SxAeHiwFv2Sk2hQ27aKMh1+a5753bynGIVyUNjxD
         bgF9VaifrkT291JXaRNYa0wBBheBFolXCiqLUKwklVhojWhOyRhKA6bp2xwB4flT4ICD
         daSwn6ZpZ8jeK/ow3eV1zQmrwo6GyFoIA2dYuEpT0AhPbAkffv1lym++f7M/ICAmivpP
         KVoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=/J47pHWT2X7Av3FRgY9sGp9A1Q4EsZtxdv8QeJCfN3I=;
        b=QxG3at+R6pOR+Rr2Xv/zfPquSgCGODdceVKGu8in6lzhK/8R2VoYV6KltWe4p07+5I
         GUQt/mErVKzvxkbu0cDLQJUPkwNKa/BIOR/38Nztz3pTg66DJvdM5SuYH0e4Crp9Q94v
         fJsBACRldDKT3zbzQc8G8KeAyXMCJ+I3n5RiWO4EVwGvE1z8tRiEkb0QiEpJAwJvW/F4
         veb82x/hph239e+ZO8YVUJ7d0B5kB3TexHI6lQJn5iVq/U809cmx6IpjbzbNLbEhWpMF
         v0oQqW47xZNsqDx0xNDxblWSK1b/nX7mjuAnaE9iUO5VJIsaGU5y6fq2hRVR1hCD3fHR
         YU9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KSDqpUym;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::941 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ua1-x941.google.com (mail-ua1-x941.google.com. [2607:f8b0:4864:20::941])
        by gmr-mx.google.com with ESMTPS id v135si553436ywa.0.2019.10.21.13.43.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Oct 2019 13:43:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::941 as permitted sender) client-ip=2607:f8b0:4864:20::941;
Received: by mail-ua1-x941.google.com with SMTP id w7so4234474uag.4
        for <clang-built-linux@googlegroups.com>; Mon, 21 Oct 2019 13:43:23 -0700 (PDT)
X-Received: by 2002:ab0:5981:: with SMTP id g1mr64566uad.98.1571690602892;
 Mon, 21 Oct 2019 13:43:22 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191018161033.261971-6-samitolvanen@google.com> <CAKwvOd=SZ+f6hiLb3_-jytcKMPDZ77otFzNDvbwpOSsNMnifSg@mail.gmail.com>
 <CABCJKuf1cTHqvAC2hyCWjQbNEdGjx8dtfHGWwEvrEWzv+f7vZg@mail.gmail.com> <CAKv+Gu92eR81+W1iXOXZHWgub-fNPcKaa+NCpGS_Yy4K4=7t+Q@mail.gmail.com>
In-Reply-To: <CAKv+Gu92eR81+W1iXOXZHWgub-fNPcKaa+NCpGS_Yy4K4=7t+Q@mail.gmail.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 21 Oct 2019 13:43:11 -0700
Message-ID: <CABCJKufZX7McCUoeH8=VR90gdQPCjUSNaPgjPRzo6-vV-y6oHw@mail.gmail.com>
Subject: Re: [PATCH 05/18] arm64: kbuild: reserve reg x18 from general
 allocation by the compiler
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Will Deacon <will@kernel.org>, 
	Catalin Marinas <catalin.marinas@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
	Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=KSDqpUym;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::941
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Sun, Oct 20, 2019 at 11:12 PM Ard Biesheuvel
<ard.biesheuvel@linaro.org> wrote:
> Also, please combine this patch with the one that reserves it
> conditionally, no point in having both in the same series.

Sure, I'll just drop this patch from v2 then and only reserve it with SCS.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKufZX7McCUoeH8%3DVR90gdQPCjUSNaPgjPRzo6-vV-y6oHw%40mail.gmail.com.
