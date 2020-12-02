Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBWX6TP7AKGQEWRDJFSI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 80E152CB2E0
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Dec 2020 03:43:39 +0100 (CET)
Received: by mail-ot1-x33c.google.com with SMTP id j8sf218188otp.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Dec 2020 18:43:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606877018; cv=pass;
        d=google.com; s=arc-20160816;
        b=OFcaDbXMICdGcXg475ujyqfS0I21em23/kz/TGPJvXASwSsemhdtTFYvLVvFuesi/d
         3ja41eUTaN97iqsVZAKJMf+K5OS6nME42sAFUjMLBFh02XwrzS+5TSMeWrQq1ijx+yC8
         DzfEUKi4/6W3TqU3yeiqr6hbdd9WEFE/a22Mqmy3tMyjc5PBqC6Kq7B2O3JwLNPx4K6p
         iEH1ujzGwqRruGN1+CBaFp22vWnzrh8zG4wENJVX0HPRWkAscueLr5sJ+a5oDG51zvQw
         JgL7LKi21GMcqvzAN+ueWXi+1EzqX5ydW/+mXBoOxSCm0o5oTj90Yx/38Hgge6fCV+Xz
         cbhA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=m5zYGfONs0rYukLbDVfiRJvq0ap+WvNrhB0qx0k4AW8=;
        b=hcZjHS2E/SNvyvdVbrtSvNcXf2RDbpr+ND5OrO4hns9KrnRG1h/J97y8zeLUZ9Rt79
         BZojQAOONc/YmNM5DofEp8hunq+4E0cVMzvL5cL0LZEJS5XyBAtX+uTGxpz/WD8SGkE7
         xjOAHzeBg1EO43S9qwmiE+SyE+YGFRCHxEUH2q++J1VsHeePYvbp39HQMxcP+rO/U0vV
         4CSpCrDnd038kuPHeFLoq2GzZMoY7EoYqRbcxa+lIYqNSDJOZNgVIc1W/WAB1WjXsdKC
         J022jdTY5+8wUHO1sCYr8sKAUN42hQA+rU+nrdn79rp65ottJYp1rlQBkXj9bP2aGTr6
         s+2g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=YhmiZCSW;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=m5zYGfONs0rYukLbDVfiRJvq0ap+WvNrhB0qx0k4AW8=;
        b=gum/P5c0KRP62OxZYHEJTDOATYX3uMPp5jYOYSDcvbWcxZgJ7KJ6F6VLu4lzVFRx/l
         9KlqyGbsZ7kx6Z5Ukcg4oGx3RwNiVS6b3paiRmqtdDvxvQGROnyBdQGv+9rpRmjmI9Yq
         wAXF84wZbsG03OJaKdPusaRG9RS7fwCuJmnFpb0pHbaJ4Hhk0MM/hxyg6oWpoRPQGNft
         NQ5kmg6DW3oe/96wHLcCoTV8PXcgNtmUL+1LDPQtGks2wvNZjX7OLXS1doBCK+8xAqm5
         tHrtJqPSxI/outgkFYM92DQF43Nst1eYP1Ols/8b0iuV6oJCMQQ/XdJkr9RUnBtwwsnK
         srHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m5zYGfONs0rYukLbDVfiRJvq0ap+WvNrhB0qx0k4AW8=;
        b=k6wyrSvsmDcSn02CmkpRahC2YX8QwJ5qq2j+4TPKXh/wWxDyre0dFfMUYuULZoj98v
         wNRGLnLMD53tfRMfgVZD+yUGSrZPk3UhPqDtAORt6jtXFaUzoAnXLqqa4Ou8Zu8p/+rD
         YfbhLU3RilPjlpqa8oNyKyXJzsh5pgfIgkMzIgsEtA4FGDGzoQiHEWWOGYoQKgbptMRg
         DEjnasqwvjoV2BTUnTbr6An7rjAgv/k/Pp6+a2/PiEn2zWe45nGIMZYYbPCfCAJXAs/T
         TkT+ZkUlwm6847ne6cAGKuc/jqoinkY/OgYKkIC9RUeelm9M4haxBqd/gQ31fEfcEiIo
         BtbQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533sncUi+kvBkxZnEKm1Drj2VgF+max7lFLWtn26no3Vtsiup4nh
	fHJY/aEyehg8gE87F0JITU0=
X-Google-Smtp-Source: ABdhPJyGYxi5b/l5pc5r1Voz58dSQ7JtqDZ0jqXMN6zkCZN0bQG8ihutcyCPf2ZrI6+BH5bEaChBUg==
X-Received: by 2002:aca:5544:: with SMTP id j65mr262184oib.18.1606877018196;
        Tue, 01 Dec 2020 18:43:38 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6c53:: with SMTP id g19ls27035otq.8.gmail; Tue, 01 Dec
 2020 18:43:37 -0800 (PST)
X-Received: by 2002:a05:6830:104e:: with SMTP id b14mr375466otp.32.1606877017808;
        Tue, 01 Dec 2020 18:43:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606877017; cv=none;
        d=google.com; s=arc-20160816;
        b=aif0lVKxIJ46ZmYeKHWFk166FrSKUvQaQwqnusG3czlLqZAK0dwQ0Uy6KPUArWxsI6
         cElksYDoOiMnqLavKj71hRK0y98kkUibVHy9PklbZMvNErc7hjVzYH2EO/WYh1aBgLcT
         uQWDC2IzhGJF+4h1ep45vA79mdQUbcDa0R1ZZ3YAjizoeOyhfetw8teSQH0Cknce9blB
         CKJjNlDNP1XYPpRbJ88w2lZJYBPbIUnSAE1YGa3A2+KJ8GVtz6U3MMXI2IBVebcM4Bfg
         irxCoiRgkfKWIOr9NR3qTMM2k7aW4V/Q7EpZkhzaEP7Q8bidriJ/ie+CUWT/5I6827YN
         Dueg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=//nWGYyIDtis41/3ZWUbaJfDU17XquHuh1VxESk+fpY=;
        b=vQDshOxZbYa4mvDNHo61J1nbJgVrFm4mGhwJIjLtxJrMMpjoOdVj7+aNhg6Vyc0eg/
         xj8hdLbLf/uHNaP6URVPM5Qzn5hPcH8km7sziTt0koAdog2f/r59Kz4nvkK/9Iex1ZjK
         xHXVljrmyTRn/uFIunqEZizaZ17ZMhSGvlON6NRa0jv525IF2HQW3dCb/XMhLHW4Oxst
         N/2y0ua6p2rqSTfllRgH14RY64pZxViFJ4g5auVzHd2Mb7sPQOya/XjWrJI1SfKrtume
         rSg81lS/XGacmJmn7sOIX84ljNAUH215bMMvvrrF14kBbw0ecbuX1Pos/DKm7Ap+yNyr
         F4Og==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=YhmiZCSW;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-03.nifty.com (conssluserg-03.nifty.com. [210.131.2.82])
        by gmr-mx.google.com with ESMTPS id o23si19735oic.4.2020.12.01.18.43.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Dec 2020 18:43:37 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) client-ip=210.131.2.82;
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170]) (authenticated)
	by conssluserg-03.nifty.com with ESMTP id 0B22gxrq032288
	for <clang-built-linux@googlegroups.com>; Wed, 2 Dec 2020 11:42:59 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com 0B22gxrq032288
X-Nifty-SrcIP: [209.85.210.170]
Received: by mail-pf1-f170.google.com with SMTP id q10so291977pfn.0
        for <clang-built-linux@googlegroups.com>; Tue, 01 Dec 2020 18:42:59 -0800 (PST)
X-Received: by 2002:aa7:9606:0:b029:198:14c4:4f44 with SMTP id
 q6-20020aa796060000b029019814c44f44mr748749pfg.80.1606876978646; Tue, 01 Dec
 2020 18:42:58 -0800 (PST)
MIME-Version: 1.0
References: <20201118220731.925424-1-samitolvanen@google.com>
 <20201130120130.GF24563@willie-the-truck> <202012010929.3788AF5@keescook>
In-Reply-To: <202012010929.3788AF5@keescook>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 2 Dec 2020 11:42:21 +0900
X-Gmail-Original-Message-ID: <CAK7LNASQPOGohtUyzBM6n54pzpLN35kDXC7VbvWzX8QWUmqq9g@mail.gmail.com>
Message-ID: <CAK7LNASQPOGohtUyzBM6n54pzpLN35kDXC7VbvWzX8QWUmqq9g@mail.gmail.com>
Subject: Re: [PATCH v7 00/17] Add support for Clang LTO
To: Kees Cook <keescook@chromium.org>
Cc: Will Deacon <will@kernel.org>, Sami Tolvanen <samitolvanen@google.com>,
        Steven Rostedt <rostedt@goodmis.org>,
        Josh Poimboeuf <jpoimboe@redhat.com>,
        Peter Zijlstra <peterz@infradead.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        "Paul E. McKenney" <paulmck@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Kernel Hardening <kernel-hardening@lists.openwall.com>,
        linux-arch <linux-arch@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        linux-pci@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=YhmiZCSW;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Wed, Dec 2, 2020 at 2:31 AM Kees Cook <keescook@chromium.org> wrote:
>
> On Mon, Nov 30, 2020 at 12:01:31PM +0000, Will Deacon wrote:
> > Hi Sami,
> >
> > On Wed, Nov 18, 2020 at 02:07:14PM -0800, Sami Tolvanen wrote:
> > > This patch series adds support for building the kernel with Clang's
> > > Link Time Optimization (LTO). In addition to performance, the primary
> > > motivation for LTO is to allow Clang's Control-Flow Integrity (CFI) to
> > > be used in the kernel. Google has shipped millions of Pixel devices
> > > running three major kernel versions with LTO+CFI since 2018.
> > >
> > > Most of the patches are build system changes for handling LLVM bitcode,
> > > which Clang produces with LTO instead of ELF object files, postponing
> > > ELF processing until a later stage, and ensuring initcall ordering.
> > >
> > > Note that v7 brings back arm64 support as Will has now staged the
> > > prerequisite memory ordering patches [1], and drops x86_64 while we work
> > > on fixing the remaining objtool warnings [2].
> >
> > Sounds like you're going to post a v8, but that's the plan for merging
> > that? The arm64 parts look pretty good to me now.
>
> I haven't seen Masahiro comment on this in a while, so given the review
> history and its use (for years now) in Android, I will carry v8 (assuming
> all is fine with it) it in -next unless there are objections.


What I dislike about this implementation is
it cannot drop any unreachable function/data.
(and it is completely different from GCC LTO)

This is not real LTO.




> --
> Kees Cook
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202012010929.3788AF5%40keescook.



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNASQPOGohtUyzBM6n54pzpLN35kDXC7VbvWzX8QWUmqq9g%40mail.gmail.com.
