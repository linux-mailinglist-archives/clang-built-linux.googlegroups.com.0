Return-Path: <clang-built-linux+bncBDYJPJO25UGBB64G777QKGQE63SYOPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id A53062F59C5
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 05:07:24 +0100 (CET)
Received: by mail-io1-xd3d.google.com with SMTP id m9sf6390431ioa.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 20:07:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610597243; cv=pass;
        d=google.com; s=arc-20160816;
        b=v0JUFq/XDZ804rk5zAklu5N96yRLzxWMTAhmd1LdvDmEselyn9RtXIIfvqIfhtGJQx
         jzsAsk5BG59Q/w2QL4wlOFYK6W7peIYY/jZVBc7OhDQBmojc7eCKZl4O9VwrNmqtswSM
         Z1SY9pjru6xh0W01nJFbf8sjGEjR8o/bgG5MJut0SzPoI7mRg67+6DAQRZDXLQ4vEjbt
         jYnARqYV8CRiLLKvwbpb1JIMjqnly7HGfVovOyPB8G03lT501AozsgFkh52lValYfoPB
         RRZRJ0IpECDxcov38+ujUmKydbN/10LVbxytof3weB+yN6rrzn/omTrwbenTMlaRktd1
         Oufw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=JIGKTD1YRZYLAX5JwPfrpg5cZtrVtq89av50eOBu/74=;
        b=0Ygrt7i3TvOVA0GhdiKVIQv1oAfZOYlQy1UZGxLx1KnDAlcVeKcehXtaimQDF9yosX
         llzLYvi2mt0BiIDmH1cjgW6K3aCIgaqOZB5dV/lUbjtjuZHYdrxa1JjJqi2nOOITp0g5
         ZZalOtUlDwx2gxJQO4KdLkqbpJcjOqXPYQOtbl4Psj+vazIAGjNbaVt/bs45Yc0PjS6G
         a97jobYTokH3Si6LjLYL9ls5bmY8yjkRo3zbpqbHe+eFGxp1j/B7I5UrZHJ/Gd5UCIJ5
         qmtJpq+naahb8Sg4yad7woaiP7rEAYLGuh8hy4S37sd3aVDINillqGVO4r/zQ6JlrcTZ
         JVeg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Qb6XObXv;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JIGKTD1YRZYLAX5JwPfrpg5cZtrVtq89av50eOBu/74=;
        b=XNUkdQjAtalkdopnnxxhJ/nhitrab+VIgcY9yEusaNIwm7+USX+j88QG1WV2drw35F
         uqWvu6xJ19CUvXzRbckJh6LwTUp6tdkQrl9zDdAx0DZJJ/dtp9TaKA/PIWXaa4Wa2Vga
         z3iQduf09qR3JpPRI0K64Mggbsno2eQHZg7wwzlYp2OeJNBa5Ay4qZxK9mfCbYPqi0+q
         v96fwcfKAc9pVo/uWzQQ3Ol6ZtwB7gUNmttzRJNZzP1RYVROjukEdNRvGI+XbT1mWb2F
         FcjTHVytK41Ddltec+o1H1udpv8tqQVuXYu3wsG24L5BCFEDgqPtlVKkruBQyofUnJ5K
         Hjfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JIGKTD1YRZYLAX5JwPfrpg5cZtrVtq89av50eOBu/74=;
        b=C76aW6BSmwy+8JVJdbojb1pmztodg/u6QGfQ2fuFQ08cj31O2j4TqlMJxAFuoRO3TR
         AnQMMqpMty3hVOknd2roKj9LbCsFHa89MrChw3gvGO/7Gp6CgWrJA+urvuhUFsMAoaxo
         xCI4jLud2Os3Mz/lvDWvSKtufjbhs0X4h3DVpwBCJRyqIdbErxF886F8+mRe2fPYtHgH
         y5gBkzKrhbkyhDHVphmEFoxOfXAQ2CYu8YzFmsYWMhZreyFwesY7OyLVHhkP4NM04Wsm
         6uEnXqKwOLGP5wK8emkNXXzbBbFFejHmHeMEgoIFBkH2FCkS99u6+rcYUoNod++5lIGB
         pP8w==
X-Gm-Message-State: AOAM531inwGCqS2ry/9zBvoCkQkYTXNmFibsJwPtNjqvqJ7VoZEPAh4C
	mL2RupOcamsTWBSgNLpPfU8=
X-Google-Smtp-Source: ABdhPJwmR4jw9B6CyqDd3n/fYwQkzi2G/YU3VC5sKAywWz2bVm1Kut2ydLZchUz0mnrxKVdbGSqcXw==
X-Received: by 2002:a92:3584:: with SMTP id c4mr5151928ilf.192.1610597243211;
        Wed, 13 Jan 2021 20:07:23 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:13c5:: with SMTP id i5ls519029jaj.1.gmail; Wed, 13
 Jan 2021 20:07:22 -0800 (PST)
X-Received: by 2002:a05:6638:14d5:: with SMTP id l21mr5067651jak.54.1610597242813;
        Wed, 13 Jan 2021 20:07:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610597242; cv=none;
        d=google.com; s=arc-20160816;
        b=J9prFip9vborIjnDRf9azuRc47GNV28UT8vwjWFhE3n1f7I2wcIe1qDFTABDcu8OX5
         016pUb+VOBiK9MAnCzVGqxwdoPwtvByLAzSf4fFiXli/MuiMZGrRXzbPY9ZQdrA50Jjn
         THTHGX1O1YSnFtFmq37qYnJfqqApkShvyEfAY1TXEqsXjDmgRPjaIvqHDAhv2cV7YKBE
         D0rcxiSdGbSU2Fl290HypTHgUwaLvXXTa/YX2BSjtrplYPS/+BozAadfJHy9CWZU8hir
         WOR1HzVeGiXFjVBcJFXJsBGHX77If0cR0bhHtkEfppqvfAm2wDmPETD9hLBircfRVSkj
         hoPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=X2Xl39y4Q4WYR391MlcCTCVyfvuGNcf13HwTIUJuHYU=;
        b=Y9Tm1BqHM8ywJCmtJ8EVAZRzaP0ANyFD5H1Wv5ejFbWeu1qkxGcUzQwW7zTDqjXrqA
         4j6goILuPgF9tPUfIYvHtCWO8XvkHcmxNQ4N4wPnn3VPbvX8F7cjYNiDbUGzfURDBskc
         L75KqKAL80tlFQChRdXtEyabQLlkkszB5VJf7UEBHzb/r02gFIrPoUXmSzaBPksPDpEX
         ogDDQg8mCOErICA39fdQccALNZa7fgLwKudf+8oaUU25h2cidZpfJje2pqzeu3CHQkmh
         b50O9OlS0bzWWKQ3/M1IuG2LyPx7Ia5e9gJQvkVSbwd93N8nCiz5LTAp5o2UmyZK6TGG
         yrmw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Qb6XObXv;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com. [2607:f8b0:4864:20::52b])
        by gmr-mx.google.com with ESMTPS id c14si486118ilk.5.2021.01.13.20.07.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Jan 2021 20:07:22 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52b as permitted sender) client-ip=2607:f8b0:4864:20::52b;
Received: by mail-pg1-x52b.google.com with SMTP id 15so2900479pgx.7
        for <clang-built-linux@googlegroups.com>; Wed, 13 Jan 2021 20:07:22 -0800 (PST)
X-Received: by 2002:a63:5701:: with SMTP id l1mr5424394pgb.381.1610597242082;
 Wed, 13 Jan 2021 20:07:22 -0800 (PST)
MIME-Version: 1.0
References: <20210112053113.4180271-1-morbo@google.com> <20210113061958.886723-1-morbo@google.com>
 <20210113205547.GA21653@Ryzen-9-3900X.localdomain>
In-Reply-To: <20210113205547.GA21653@Ryzen-9-3900X.localdomain>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 13 Jan 2021 20:07:10 -0800
Message-ID: <CAKwvOd=0wWz4o652EoZNvfu1L+fuhuGZusqpxiJ+561DtCh7Eg@mail.gmail.com>
Subject: Re: [PATCH v4] pgo: add clang's Profile Guided Optimization infrastructure
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Bill Wendling <morbo@google.com>, Jonathan Corbet <corbet@lwn.net>, 
	Masahiro Yamada <masahiroy@kernel.org>, Linux Doc Mailing List <linux-doc@vger.kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Qb6XObXv;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52b
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

On Wed, Jan 13, 2021 at 12:55 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> However, I see an issue with actually using the data:
>
> $ sudo -s
> # mount -t debugfs none /sys/kernel/debug
> # cp -a /sys/kernel/debug/pgo/profraw vmlinux.profraw
> # chown nathan:nathan vmlinux.profraw
> # exit
> $ tc-build/build/llvm/stage1/bin/llvm-profdata merge --output=vmlinux.profdata vmlinux.profraw
> warning: vmlinux.profraw: Invalid instrumentation profile data (bad magic)
> error: No profiles could be merged.
>
> Am I holding it wrong? :) Note, this is virtualized, I do not have any
> "real" x86 hardware that I can afford to test on right now.

Same.

I think the magic calculation in this patch may differ from upstream
llvm: https://github.com/llvm/llvm-project/blob/49142991a685bd427d7e877c29c77371dfb7634c/llvm/include/llvm/ProfileData/SampleProf.h#L96-L101

vs this patch:

+ * Note: These internal LLVM definitions must match the compiler version.
+ * See llvm/include/llvm/ProfileData/InstrProfData.inc in LLVM's source code.
+ */
+
+#ifdef CONFIG_64BIT
+ #define LLVM_PRF_MAGIC \
+ ((u64)255 << 56 | \
+ (u64)'l' << 48 | \
+ (u64)'p' << 40 | \
+ (u64)'r' << 32 | \
+ (u64)'o' << 24 | \
+ (u64)'f' << 16 | \
+ (u64)'r' << 8  | \
+ (u64)129)
+#else
+ #define LLVM_PRF_MAGIC \
+ ((u64)255 << 56 | \
+ (u64)'l' << 48 | \
+ (u64)'p' << 40 | \
+ (u64)'r' << 32 | \
+ (u64)'o' << 24 | \
+ (u64)'f' << 16 | \
+ (u64)'R' << 8  | \
+ (u64)129)
+#endif

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D0wWz4o652EoZNvfu1L%2BfuhuGZusqpxiJ%2B561DtCh7Eg%40mail.gmail.com.
