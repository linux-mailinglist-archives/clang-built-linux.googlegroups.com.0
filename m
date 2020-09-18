Return-Path: <clang-built-linux+bncBCM33EFK7EJRBOEOSH5QKGQEVNFDXEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43d.google.com (mail-wr1-x43d.google.com [IPv6:2a00:1450:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 39AA926F567
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Sep 2020 07:35:53 +0200 (CEST)
Received: by mail-wr1-x43d.google.com with SMTP id b7sf1706915wrn.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 22:35:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600407353; cv=pass;
        d=google.com; s=arc-20160816;
        b=lTRv8ETtElq9HHHkdaQS1lj2cIexAHTxRf7zKHiJyUj2zoZ7twsn5i7/1IrdmPbcol
         UsN1NB/19i0aDHcMg/opcW+NjXxU8KenigVxXXSa9wlt39q+Ve+wBByBXGdgH6yfNdZJ
         pD2EvgfL3t1FrCf8J5E83xGofcxm1yirZN2nAyB3eoHvgClmMFwXabU4efCu7XQob/t0
         LTwF92Xo7cgYjMnWWuVPySLr9qJzhYkXdTeXx4TcRf3+Zq4OSFEk5TpfjeEJqwhkTu69
         Xrd9MZu/kHchLTPfSDykyl9iOgO+mKyRLcNiuc+wyTB5lIXvZZIuttoIicMXcpo3QKOE
         F4gg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=Q18TZS4w+PPkB5zHaRig3nVTFtmO7H26AEkjYfSE684=;
        b=oNSxmAVZ5vCBX8ICtGpOWoLNXJJcylxeAR817gzftfxssdzkspn6H1M/dWfQM6kjVS
         6E3SzhfdEydx+nd6Lr65aYDevVInjHZRsgQpp69OffgO7V2aQfJIkv6VooqG5vWMBcGk
         affgB45R2vBgZZ7wo5ABp/UZx+a/CCIAkHZAOnfSZzBl0vQHPQ+JkpWG5busXIL3soKY
         q0eXv1GtCP28B4cNwCZsRv8IaBbzOaswimkmzpERwgHJYkjAolD2xHgM/MzM8HjmO1G8
         7tmFfD/4zZHOhret/j+/J1dE1RkcSrRztOe0wShlZt5uEc4s0oebdcBwRJJqklo498Fe
         whiA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="uis/nomw";
       spf=pass (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=ilie.halip@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Q18TZS4w+PPkB5zHaRig3nVTFtmO7H26AEkjYfSE684=;
        b=ZgNja6VhLlhntDv20GUQSQSG7p6BGpZ6NET2S/rGDWwrFwt+4IatBnBJ/eyQPrRQsv
         Pp9a88AKSbgFzMBH0z7xoFsCxBbC57vdy3uL4bg26TX++qpov+WknqL6Ll2lNVh9DLFp
         6KaPP02HvDomdFKGUBSnkSAtNlUZyP/+2MUU50z+oUKDodIeW9YoWB+O73vg3gpqn9/p
         DASVbTtAkJquOfhy6OREsFwjyXXIyNW5hMEr5Cs+XXPSL7+hZYJe2IphoeA2qy3cYtJ4
         9byH8BHVpmn+srJuoHi1WxfCe9IomzIuUfOouAIx3lGAb0bf8zlwq80HLmgslhba8cjg
         CY8Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Q18TZS4w+PPkB5zHaRig3nVTFtmO7H26AEkjYfSE684=;
        b=SnmNoDdldHBe0LG9jw00GfptRr5TwpGbL/ORgGn293sXVHJWk+uYW+1qGcJL/z+YyZ
         PwUQc3XXRM41R6ygCEbrnlZZ6lPVYz+dBrUk0GfGK1XG/1rpnx4r69BS9goa0SmSfD/X
         jjjUMEfQhPt16E6Ug1B8HUpcPEze5nokT9dw2hYdLXbvvm7rc+HMLxfWhJ36zHQjUyLF
         WfCyQlFXBgDQPjbIQa+UfdTVSEerBEYOsbu5XvTwj5lLeCWgEOXb54LvEpQpBOC4B6ty
         n7/olMqXQnz15jMsl6NQz8ItGZK0Q1iDananYK2PaOzrmnbEsK8WcJrTx9tUnLMaOXhH
         JyJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Q18TZS4w+PPkB5zHaRig3nVTFtmO7H26AEkjYfSE684=;
        b=e6INLk4xRXS1ggIaGjbmKkp/WzYKvMGCXuc/PjAlXT+yadT2PKUEXZAezdeOTyswz/
         QXg5hr0ttBvYeAOdVAbxARr4/LYq+gq3hYm9iHsIY3o/envatTTtdqif16tx9F0Icux7
         nPY5gEgW8rerrMTPE37kBLPSrUxAn3t55/KLwoKvnwBoIs6l5ZHdoVmkL+SZx/AlOYeX
         x4R4M/pt/pH2k7d+Irz4Z6r3CvbmLP60SCRXmTdKPqt0d/niBzSgT/E+EbDqQ8qN9F4p
         XahPgyMH80kosPvPR2haob/SE6+s9fcYbijcoEFNy+FgWvQjth7vVj2h7BImVZeTMJ0m
         e3FQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5312PyhypihFJwc48cmf9e1zlLFhCFPaGSOBG4gPSHgUB4BQcAQ1
	IGmh/LufoNYi601gdO5EYvg=
X-Google-Smtp-Source: ABdhPJx1SDIBvxbaNnY8gZrVoz72PAD1IDwz60XX5Nvz+ZGNmKnGpj2qgZtv6scDTF9ObSxPv6bXvw==
X-Received: by 2002:adf:ab46:: with SMTP id r6mr34158585wrc.360.1600407353012;
        Thu, 17 Sep 2020 22:35:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:dd0a:: with SMTP id a10ls5071199wrm.2.gmail; Thu, 17 Sep
 2020 22:35:51 -0700 (PDT)
X-Received: by 2002:adf:cd0e:: with SMTP id w14mr38659238wrm.0.1600407351891;
        Thu, 17 Sep 2020 22:35:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600407351; cv=none;
        d=google.com; s=arc-20160816;
        b=rJT3kqqHqZl/ydca1HbzL9bxAO124hlIGkLz16g/G0bK95BxHv8SNOpwWCe/5NF9np
         9WhSsPWlOLLxSkT/wQj3bKF3H2QnKQRDnwQ7dG3WTsxHlkMaUXyOwZO+EOgS+duFjzHe
         jspJSl9Y21UmFEO8P/zUjxcYRhnGSe/zBR5SqEY5yd/cS5dMDW8qGVxnlhEWYdogfZtB
         aLBfc7NyhxnTQqi14qMbRSisfF2mTgO8K5jiAELDg6OdufHdrlJR/5osScJW4Wg7cNLJ
         pOQ9+igFePPRfbpiKziRrHTmFUDNuO5xMevZXU+fxQOlQO7IYPBDIb0injV/ApkaxpE4
         yxgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=/bymMNxBgwleuFgLBFDrHQ+0acGZRuWjBwHuK7Z5b7Q=;
        b=Q3KFBlZaIHp0t/hRUxPAxW6cqMvV/oBsJQMIHCM742Fe8TtmWCm0TeMv+PGGj6wIpd
         bLTv3v/1taq4DzoO+sUHG09ZvjHVtLvhlN7jOa92EXSlod7Oep7hvWnnLVfdEuHAWxEP
         xzrRpT9KwRRHfRyn3AKkfwYreBIC8EF6KuKnKIRzenqlPqbrFEq94FQ1oO8NNCqSujwC
         L3OJDItg5HaaG0nn2l2FIO8I9cRDreM40blGMKg+GANWT2K8OOvX7AU0rKaUTqsLTpGl
         SCPn1hvBzznWyl3xW1cKGUdSsF358LX5xsLJYRTL9uS2iPtG4DnXmcI+6GDraTOSvwny
         f3oQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="uis/nomw";
       spf=pass (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=ilie.halip@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com. [2a00:1450:4864:20::141])
        by gmr-mx.google.com with ESMTPS id s192si170713wme.1.2020.09.17.22.35.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Sep 2020 22:35:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::141 as permitted sender) client-ip=2a00:1450:4864:20::141;
Received: by mail-lf1-x141.google.com with SMTP id b22so4726741lfs.13;
        Thu, 17 Sep 2020 22:35:51 -0700 (PDT)
X-Received: by 2002:ac2:5193:: with SMTP id u19mr11584170lfi.518.1600407351407;
 Thu, 17 Sep 2020 22:35:51 -0700 (PDT)
MIME-Version: 1.0
References: <20200917084905.1647262-1-ilie.halip@gmail.com> <20200917221620.n4vavakienaqvqvi@treble>
In-Reply-To: <20200917221620.n4vavakienaqvqvi@treble>
From: Ilie Halip <ilie.halip@gmail.com>
Date: Fri, 18 Sep 2020 08:35:40 +0300
Message-ID: <CAHFW8PTFsmc7ykbrbdOYM6s-y1fpiV=7ee49BXaHjOkCMhBzhQ@mail.gmail.com>
Subject: Re: [PATCH] objtool: ignore unreachable trap after call to noreturn functions
To: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Rong Chen <rong.a.chen@intel.com>, 
	Marco Elver <elver@google.com>, Philip Li <philip.li@intel.com>, Borislav Petkov <bp@alien8.de>, 
	kasan-dev <kasan-dev@googlegroups.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Peter Zijlstra <peterz@infradead.org>, Nathan Chancellor <natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ilie.halip@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="uis/nomw";       spf=pass
 (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::141
 as permitted sender) smtp.mailfrom=ilie.halip@gmail.com;       dmarc=pass
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

> The patch looks good to me.  Which versions of Clang do the trap after
> noreturn call?  It would be good to have that in the commit message.

I omitted this because it happens with all versions of clang that are
supported for building the kernel. clang-9 is the oldest version that
could build the mainline x86_64 kernel right now, and it has the same
behavior.

Should I send a v2 with this info?

I.H.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHFW8PTFsmc7ykbrbdOYM6s-y1fpiV%3D7ee49BXaHjOkCMhBzhQ%40mail.gmail.com.
