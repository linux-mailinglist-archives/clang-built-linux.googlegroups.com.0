Return-Path: <clang-built-linux+bncBC2ORX645YPRBCGXRGDAMGQE3Q7Q6KI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id 68ABB3A343E
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Jun 2021 21:44:10 +0200 (CEST)
Received: by mail-pj1-x103c.google.com with SMTP id x22-20020a17090a5316b029016e69cd4830sf1139071pjh.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Jun 2021 12:44:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623354249; cv=pass;
        d=google.com; s=arc-20160816;
        b=b9KRTpCz9mUgwarjEvS20L6cyFx5sfAC0ZihpJOKQWJF5Kr5jaqFxZDtUdnfnnwcZC
         M7wAnjicPdnQjQvDXCcYinbs23h6Y5yq0ZpXhaoGdP4Zz5GoNuGKLS3TLs2UPVeFWfIx
         LXek3PWWWvFIWibNw6AI6uJCIzTBuWHIvF33NEb8VvCQlye382JiX6KIfIbMHEa/pWx/
         V5jYn/5inanSs69Jvgqqi7qL8FSIdeMIM/HyRhZPfzjBPTWQ/lBedT4B1y/54mdCFrtW
         vS1ZRFyd4vVXl4+NdBsVYH8RdZNP+J8sat8Gr7zI14b/DqYOKc2aKipi2pSBUdrl/IuH
         uLwA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=CQsC/hES6AoWKhxpB8gTobuFaQD+zWSvyH0sCvRRcCI=;
        b=n7kgXNTYeHLJ5XClhNwcxjOmbhUyuMPmv890hr8xz+VhNSRuiAPWX3kx4Zcu54m1Pw
         bOU8/x156OzKQUD7e2svF5Ap/bRilUpaLi75L8/vv32k/AW0gtFG+FpWTHI60vn8Ywqw
         AmwCb2bpQ20bXXje5Bhw/zBQRi4B4pkcSFIW1O07KjNlNByRLUOTFStosQnG6/D6NiJ9
         fxDI17IgUhWk+Q0BDC00cCWXqbMkEZKj93BD5bU4Gd5RAlHoosWUMyMdXouYS6513Ech
         OeHyva2qJtcZVpjJvP7qXpY60lD70cCW8GpCRD+sbdTL8c6kEv9dtnZs9mL+Ccw9XZ/X
         3HoQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=X5XJumtl;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b2b as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CQsC/hES6AoWKhxpB8gTobuFaQD+zWSvyH0sCvRRcCI=;
        b=lgHSQXJFekLY4dzDYO8VOlVeyKms4QdjgA0UQe+73CcDi5d2OJx9vUjm63w2f2a0EC
         HKSdNCNRYaAXuEedvGGAvJoXrRZ8Hzss7oLrooBZO/zMEkjmUnaPU4GdG8XXKlQNb/CN
         yS+Pp7dT3Kzjfkp4TthkcMTVAMbN9idvJn2864c1tPYsnl8QnD41JL7zD8q+NFlgn67l
         vgu9WjLtPZtL/t7NdY3YfSdaDGVpx4K47a6JbgMJqA9sVyqes6la9lxs7Qn134eGtb1M
         RTxt+vpkGGhct5YmT3huHJvi5ZgZB9T1INIdKtWAC5zD8bYYBg4E3oH7Oh0uxUEMby4X
         JUrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CQsC/hES6AoWKhxpB8gTobuFaQD+zWSvyH0sCvRRcCI=;
        b=Rpk+wyLI5xqwBiGIH3c3AddWoWov8R9FOOvzg+q9LZFOV26dKYZVp/65QAok6jzWSW
         9WU8wTBe113iXYG9VWUvGXzBSE3Rzj4GNZYGMBqAI9f44cgIdwi7rSlaRQ0WFJjpfir2
         BnZDjervdZRQqTC2jqkfTun77thhvPhxcUt0X75xaML1bqTfQb53hUkmMJM4ZZfNx1tw
         gDDcMOAwuyeEsyMiC+zjL6m//dvvrB22GzcHm1Aj3emrmVvX1TYwmfCJ4qHoL24klWVV
         PBGSk0XC/k6mqI7zjbMOk3ioMefi5P/Y/JKADnnKPEDavlOq7dYR2KeTvJESrGJUqaRf
         s+QA==
X-Gm-Message-State: AOAM530ur91K7leYOn6FcBhQW0hnx8YyCE1kS/P1/0u6pKCcndDTYRHH
	BpnYtMIsRY/heuDFJDtAdoE=
X-Google-Smtp-Source: ABdhPJx3T+h7Tz8pLA/AoYbg7m/EY8MKFjqX3fwra+Y5E2vuRtbC4GHY+rfvDn0yL9nEO+KGzXcVkQ==
X-Received: by 2002:a63:6d2:: with SMTP id 201mr23218pgg.293.1623354249028;
        Thu, 10 Jun 2021 12:44:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ed82:: with SMTP id e2ls339494plj.2.gmail; Thu, 10
 Jun 2021 12:44:08 -0700 (PDT)
X-Received: by 2002:a17:90a:a087:: with SMTP id r7mr5116184pjp.84.1623354248499;
        Thu, 10 Jun 2021 12:44:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623354248; cv=none;
        d=google.com; s=arc-20160816;
        b=aO08jlnn5fFyaXiFKaNo1bbN57XogheePtOligmK+feGK9E3dDmnotzHPv7PoAwgmz
         LjQj3rjAKU7pkqt6WqmxXUBWeDzIErGksjof0g1iHcC14AdDpJiKk+flTyEjos9ev91p
         +2xDQQHdE1ci7VBK+TV3oA7ZOf+qRqqJjS48/4VHxsVCCsM0BvM+VgTUq6TGwvVpsZJl
         SVVsz3zGpvRDekCTgiLjQ+m9LrLDfGxvETyxhk6K1feCO943faZB6JmoyYY1u2E45L7j
         qAj5tKw3SoXHvKuCb9/umHDRhzKHeRmU7Pv+Xp9AGkSxfHyMAsoBoOPSzwdG5tbOsLym
         FDhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=45VPwdGqjIQ5wCNrWGGIfoD9uraRT5+Atyz+alwmg38=;
        b=wXRGbCXPFbIX5I4EYfSnRWFbQMp+l3UbwBG8e8jIsVkYUj8VAEdBGZwN2RFefBRhUU
         C+kUuVlc01u6svfTLvPiUf2jJNy8xUrX4dQd4aU8JpFkgzArmDRn6gsH3zECdx2Q73dW
         hoU+m/Qd6LIT6fMK9jSRmnylMxOw03UUiBN7iD52FHsUmwphvqruDyuLpXguwvwP4E/+
         8wpDFShadirFIuI5EQ6GgXhZqbTzxedUD8W1yh7IODc2E17oQXmyp7Yw0u1jpBnXBBkA
         XFTGscj5maSMiIQPGsNAc7EKvnZt+9Jf1NvdbTRkMDGKx3mnyvHwFbP5GLiWYQEI6609
         5XYw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=X5XJumtl;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b2b as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb2b.google.com (mail-yb1-xb2b.google.com. [2607:f8b0:4864:20::b2b])
        by gmr-mx.google.com with ESMTPS id a6si434597pgk.0.2021.06.10.12.44.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Jun 2021 12:44:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b2b as permitted sender) client-ip=2607:f8b0:4864:20::b2b;
Received: by mail-yb1-xb2b.google.com with SMTP id g38so911662ybi.12
        for <clang-built-linux@googlegroups.com>; Thu, 10 Jun 2021 12:44:08 -0700 (PDT)
X-Received: by 2002:a25:6409:: with SMTP id y9mr558728ybb.235.1623354247973;
 Thu, 10 Jun 2021 12:44:07 -0700 (PDT)
MIME-Version: 1.0
References: <20210506193352.719596001@infradead.org> <20210506194157.452881700@infradead.org>
 <YMJWmzXgSipOqXAf@DESKTOP-1V8MEUQ.localdomain> <CABCJKudzC-Nss_LGrpYwRqwdDxeWOf1o6Bvp3J2fBQthEB=WGg@mail.gmail.com>
 <YMJpGLuGNsGtA5JJ@hirez.programming.kicks-ass.net>
In-Reply-To: <YMJpGLuGNsGtA5JJ@hirez.programming.kicks-ass.net>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 10 Jun 2021 12:43:56 -0700
Message-ID: <CABCJKudpajMRFGpn4Vh-JWzyfprEVrtYzX79iwp++rPu6rQWHw@mail.gmail.com>
Subject: Re: [PATCH 01/13] objtool: Rewrite hashtable sizing
To: Peter Zijlstra <peterz@infradead.org>
Cc: Nathan Chancellor <nathan@kernel.org>, X86 ML <x86@kernel.org>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, Jason Baron <jbaron@akamai.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Ard Biesheuvel <ardb@kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=X5XJumtl;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b2b
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

On Thu, Jun 10, 2021 at 12:33 PM Peter Zijlstra <peterz@infradead.org> wrote:
>
> On Thu, Jun 10, 2021 at 11:50:36AM -0700, Sami Tolvanen wrote:
> > On Thu, Jun 10, 2021 at 11:14 AM Nathan Chancellor <nathan@kernel.org> wrote:
> > > Adding Sami because I am not sure why this patch would have much of an impact
> > > in relation to LTO. https://git.kernel.org/tip/25cf0d8aa2a3 is the patch in
> > > question.
> >
> > It's because LLVM enables -ffunction-sections with LTO, so using .text
> > section size to estimate the reloc hash table size isn't going to be
> > accurate, as confirmed by objtool output with --stats:
> >
> >   OBJTOOL vmlinux.o
> > nr_sections: 141481
> > section_bits: 17
> > nr_symbols: 215262
> > symbol_bits: 17
> > max_reloc: 24850
> > tot_reloc: 590890
> > reloc_bits: 10
>
> Bah. Would something like the *completely* untested below help with that?

Yes, that seems to work:

tot_reloc: 590890
reloc_bits: 19

Nathan, can you confirm if this fixes the regression for you?

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKudpajMRFGpn4Vh-JWzyfprEVrtYzX79iwp%2B%2BrPu6rQWHw%40mail.gmail.com.
