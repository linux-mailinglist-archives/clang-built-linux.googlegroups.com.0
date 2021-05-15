Return-Path: <clang-built-linux+bncBCKJJ7XLVUBBBJXRQCCQMGQEV3G2I5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C7AC381B28
	for <lists+clang-built-linux@lfdr.de>; Sat, 15 May 2021 23:10:00 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id g144-20020a6252960000b029023d959faca6sf1995176pfb.9
        for <lists+clang-built-linux@lfdr.de>; Sat, 15 May 2021 14:10:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621112999; cv=pass;
        d=google.com; s=arc-20160816;
        b=m3HPSjoLx4uah2W/qPha6WlrVPxclnnLIr3VTe6j9IPldIudiVVCVAOwE1Q0gIShBL
         JXhx/Nu7dE2knxRkI9sMu1QGQBzIHhzYvpxLfWODB6MyghtOLp+YXFyPrXTMEiQekBfY
         zzJBGXsqPA1uZAD5Zqop/PqK0pXh2WTpzrhElhEHYv0VzGbLXU60rPGxNNHIfBFFXZZn
         cXhXd75/Bivh20tuJ4UMptWMjzp76yJTYqP3rLMamfPFL1ZRx9eRCyV195Phq6riVuDB
         l9Gb+1A9VcNHvNT7yqUG4UC9LuaBXcpCozWSSe6pl5yROB1z+qsi95tx63JwyYqFjb8a
         PqtA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=y6Xrh01+4fnA0USg5oySHHvF9v8FsP/oXYKslqHf0Ac=;
        b=Dvh6KQ4zr8jFIMI35iWUROZnWlUBJaYa4K9qUiQhBFhbXHRUim1Jsi2921chg3gc58
         EmvlhPv+xK7pwKWZ+y2zubPtnPHAV1/dFXLCHfm88BPs9JpdWrePajNsk3tFFQIfDB81
         0x5JH6HPc0F7K9IRt/nTQfLUH2eGBriA7XRvF+ISAvbAZQVA/g1c5wEHaQZNgZ94q7M4
         sNRPtXo0IgBxzKjpB4Xi6KDu1UzWGGto3alw6FtGfnpLbUSM5N6ZlckroEo1pQwumtxi
         0OnCLfc0Wr1Qa5ZwmeopMHOd5uduOs9HATD1a1MVnMRr2GIJQ30tezR9UnKH7bsOMK5o
         Gw/A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hLe8uQ8J;
       spf=pass (google.com: domain of 42.hyeyoo@gmail.com designates 2607:f8b0:4864:20::635 as permitted sender) smtp.mailfrom=42.hyeyoo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=y6Xrh01+4fnA0USg5oySHHvF9v8FsP/oXYKslqHf0Ac=;
        b=PhsDPxyJIzrlY0d1bBfo1plbIJACweLWl0OsifMNlNIq3Bel9K6mkQ9YUAhJyorFTL
         Inek0UeRr0Rcb8/vPx6UDehros480vEkdyAsnmSBFFcwZiicqEKhGcnvojwGGAhlMkEt
         jWnr2x8sX6AjVZLsb7PDTO7azREPCkJ0shPPE9h4f2lW8YPkeJqjIQltCFw9k022PsZH
         bRrByHxs3MtWzCQMjqyHl4cIKoYjk1MAv1w6DRkUkuD8BtqtkpVRgN9cdg5bTwidfZm3
         BAXsEoS7h/JRUdKFfze32K00ZEPh7Z9VbrFvF1SDx2KTFxq/lQd9FmC3oRe2vhHP0xx5
         JlTQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=y6Xrh01+4fnA0USg5oySHHvF9v8FsP/oXYKslqHf0Ac=;
        b=GfraH9eiVaHbuPHtkzOQkrTelmQN0AavmRdUdHk4OpWfxk59CC8Ovoivgv8/uZfrym
         MRe9yuk7zXT+oRdZbqSbBqdTFl1MQ0QYgS1vtE4QuYUjwXcYme7n36Tm7XHNsY857Y/Z
         ns0vtjTDfLWDp0UqPPbTM+/APiWxB1ovCldrQyBw+OcAUaeKlGk2m0wctxLUroIiqndt
         1HGaahUmWOehfTskETNX9qJlvWZSwVgN/P8ZGnXJBSnmakQSN8Znueg7G0mRC8CAnwLl
         uUWw+nAhptLyqmvhJbrDs6ZKb9ASuMEPxxcZxFRjc2QCvqBMH+KtBXVzOKXes10FodKs
         Z57w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=y6Xrh01+4fnA0USg5oySHHvF9v8FsP/oXYKslqHf0Ac=;
        b=s8GHMd8+mB/QXSZkrr51p9uIKU3Ou9ZeCw/MEZkCual5ZsA7qc+6D9Rbe48WB1KXns
         3jKfplgGVOZaGMNvMkbP3CiF17SGYOjbLLiFrORJD4FTNtqCK0k2qu34gGF7gujuWAYI
         Ye5m9ShmmiZil8CEcKeBJqpoizW1ok/DrBH+wBWUHJDiCPTnVV7IiO1ryi7/JhLMvcZG
         cHTlbdwNyDj1nmGdtdWilcGlYM4USFUI/p6b7uzcvkdxgIwFxyy4p1tSpAFXqUts9C8i
         2O9tJJxyfMDVeieBzaG85xqyNCkGR5yrqTj3/Mw9T/vsKY5SSRvvWUwbKg1HSAumtYFK
         Ai0w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531eZLBn38gQuqMO9KVJwp82Em+PY6MHkimy1tZPW8ITYoS5BlM4
	lkKgyZmYNvzlniwWwWKKCc4=
X-Google-Smtp-Source: ABdhPJzR/mSUx7sFdHnyX4n6Sw2hrPO9aTfdfYFkDjW8oULowT3DtRia5LHn6GXunAjgO0fHL4p0zQ==
X-Received: by 2002:a65:48c5:: with SMTP id o5mr53921052pgs.101.1621112998986;
        Sat, 15 May 2021 14:09:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:5249:: with SMTP id q9ls5740964pgp.5.gmail; Sat, 15 May
 2021 14:09:58 -0700 (PDT)
X-Received: by 2002:a63:5b23:: with SMTP id p35mr53281403pgb.352.1621112998256;
        Sat, 15 May 2021 14:09:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621112998; cv=none;
        d=google.com; s=arc-20160816;
        b=SudiaXgNURNu5b9ovYcKKZTRCIKF0mpSbJc6v1Zg8Yck0LPJHe/idqbleFU4LEyOTa
         SSiZdQeemRINxDReNctfmvnJL2CGgWnpoTh+NyztAokj1nYNbGUD/8LTC6kF/mY8GJ1y
         +Qp/SmUPwnIjJOkQTO9re288pKbJPlpzjosXjUAJIOFa0SMLkDmO9KlNrgLItZ/84OR2
         ip/OTOiF9HOHels9jC94KSV+NbSrBOCpzuvRxlXwuqtjTwsEetI8+X1r83VHNl4KQ+qP
         ZNj5A97DDQvjjsnwRKcyj5+/P3a3alhsRVUoreoHGlVsyUA+6tzgIrr1L4B95QyoWWP5
         jwIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ltTLpCrnm2D4gKDn1Zfq2cLVfBe6PIkORVLPwHe45WQ=;
        b=CC+V8EQGjse7AiYD2JdSrnFjhrl+5n/+yw2ijeKpNgCrgMUjNckD7IzD9HWYU475iZ
         XnQmksMzE1Qmc6zK2GnTlztmr9+c/sM+mEcFPA198bN0i3vBzAmERZdX5/R1DFOA2OXW
         Gy8AyeRMybe4BZg2Qidzb5keeEFB7P3xQSiNzh5L5o29NWHw0UIkv7rgTKf7zdUAMHgA
         xdLlzmMrnOvXvCFcbKNrM0SBOdnKLZFRys3u5HnFeJA9ZomC6gFkwh9N1FPL+Rdi0wVy
         ig0G7AauJdPBOl5qpC6tN+KxWG1PZjbGuAIQjng8FsTYGPUhaTaKllCnjxzidoVWOrer
         WvyA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hLe8uQ8J;
       spf=pass (google.com: domain of 42.hyeyoo@gmail.com designates 2607:f8b0:4864:20::635 as permitted sender) smtp.mailfrom=42.hyeyoo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com. [2607:f8b0:4864:20::635])
        by gmr-mx.google.com with ESMTPS id n21si916146pjq.1.2021.05.15.14.09.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 15 May 2021 14:09:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of 42.hyeyoo@gmail.com designates 2607:f8b0:4864:20::635 as permitted sender) client-ip=2607:f8b0:4864:20::635;
Received: by mail-pl1-x635.google.com with SMTP id p17so1171454plf.12
        for <clang-built-linux@googlegroups.com>; Sat, 15 May 2021 14:09:58 -0700 (PDT)
X-Received: by 2002:a17:902:bd42:b029:ee:2ada:b6fc with SMTP id b2-20020a170902bd42b02900ee2adab6fcmr52707265plx.59.1621112998025;
        Sat, 15 May 2021 14:09:58 -0700 (PDT)
Received: from hyeyoo ([121.135.181.35])
        by smtp.gmail.com with ESMTPSA id f13sm6728644pfa.207.2021.05.15.14.09.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 May 2021 14:09:57 -0700 (PDT)
Date: Sun, 16 May 2021 06:09:50 +0900
From: Hyeonggon Yoo <42.hyeyoo@gmail.com>
To: vbabka@suse.cz, akpm@linux-foundation.org, iamjoonsoo.kim@lge.com,
	rientjes@google.com, penberg@kernel.org, cl@linux.com
Cc: linux-mm@kvack.org, linux-kernel@vger.kernel.org, nathan@kernel.org,
	naresh.kamboju@linaro.org, clang-built-linux@googlegroups.com,
	linux-next@vger.kernel.org, ndesaulniers@google.com,
	lkft-triage@lists.linaro.org, sfr@canb.auug.org.au, arnd@arndb.de,
	akpm@linux-foundation.org
Subject: Re: [PATCH v3] mm, slub: change run-time assertion in
 kmalloc_index() to compile-time
Message-ID: <20210515210950.GA52841@hyeyoo>
References: <20210511173448.GA54466@hyeyoo>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210511173448.GA54466@hyeyoo>
X-Original-Sender: 42.hyeyoo@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=hLe8uQ8J;       spf=pass
 (google.com: domain of 42.hyeyoo@gmail.com designates 2607:f8b0:4864:20::635
 as permitted sender) smtp.mailfrom=42.hyeyoo@gmail.com;       dmarc=pass
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

Hello Vlastimil, recently kbuild-all test bot reported compile error on
clang 10.0.1, with defconfig.

Nathan Chancellor wrote:
> I think this happens because arch_prepare_optimized_kprobe() calls kzalloc()
> with a size of MAX_OPTINSN_SIZE, which is
> 
> #define MAX_OPTINSN_SIZE                                \
>       (((unsigned long)optprobe_template_end -        \
>          (unsigned long)optprobe_template_entry) +     \
>         MAX_OPTIMIZED_LENGTH + JMP32_INSN_SIZE)

> and the optprobe_template_{end,entry} are not evaluated as constants.
>
> I am not sure what the solution is. There seem to be a growing list of issues
> with LLVM 10 that were fixed in LLVM 11, which might necessitate requiring
> LLVM 11 and newer to build the kernel, given this affects a defconfig.
> Cheers,
> Nathan


I think it's because kmalloc compiles successfully when size is constant,
and kmalloc_index isn't. so I think compiler seems to be confused.

currently if size is non-constant, kmalloc calls dummy function __kmalloc,
which always returns NULL.

so what about changing kmalloc to do compile-time assertion too, and track
all callers that are calling kmalloc with non-constant argument.

How do you think? If you think it is the solution, I'll do that work.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210515210950.GA52841%40hyeyoo.
