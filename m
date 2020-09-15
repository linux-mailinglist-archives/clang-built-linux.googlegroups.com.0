Return-Path: <clang-built-linux+bncBDYJPJO25UGBB3UIQT5QKGQEU5YNCEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id 65D2C26AB9C
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 20:14:08 +0200 (CEST)
Received: by mail-io1-xd40.google.com with SMTP id b73sf2900148iof.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 11:14:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600193647; cv=pass;
        d=google.com; s=arc-20160816;
        b=qKmPaPs/RQm+TmZ8+D4seLwFE3pyJniSxBx2POPvbpbojbLs/06U6/Ol38Tum+4fAh
         Z1hBroTIAbIYpEAFK1e6v9z00QQ5LRRtbufP2rbOonGT9itKMg1IeKlLOKNv1Jpicdk4
         ARZQyVGZ2xvMZpW/93JWN4dyTrjf7bX4kQGn21QKKMtMMG5Uw6PTGku1IlbkJlcAQph8
         ER+zb88sDh+o52Z1SD9n5FB6flLfbqNt4O/eFgM70DcHsv1HuAG5Y28PXA6q+Td7y85K
         0cTjs1hEEj0AkLcqKN8dcMzHy87CgOl3CgiEolXvGTYRlJn364JPlkfmvNj7b0TRtHfm
         pAew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=LM4zgo1sdhUEBtKaWNzqHm9VDg+7U7pcCxFAeLhF3nQ=;
        b=rgCnkkioVk079ShbFA8tF9aqxJc8nSAYnATPR+wmiFy4KiuHp3lm8noYRwC/iwRlqR
         kgPdRQE2Y++XZQmyoLPqevbIBOsEoPnTNA+XcsJ0mDSjsDEhhVcQPOxIFilX8EWsYrpc
         Vm0jaqNKjan3kZdQGV+TlSmOkPYrvhtxJFlAOVXfvGSskt7hnx3csBI3b1x7K1PFiqyM
         FnTO5AO6C1hYIxuID4Tr5yTGhl5KPC3iji0ABqVKbU5kwRO0RBeG6sP0WXb9h8EvxUNh
         XpNWO61biJnqgxqiLH1v/h4RSwrSOdorbZ9NzmhWrUwC+xJH5EJxebK0jQxt5ijshYrp
         nmCQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=oVqB6rH1;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LM4zgo1sdhUEBtKaWNzqHm9VDg+7U7pcCxFAeLhF3nQ=;
        b=WT9qAw+Sgh2Bd9DnDcFP3O4FZ/q2l4EZuIjk7zFEGv5wajR6LHx7w6Vi1TvsiMWXUy
         gs9ZBH5J1MNBElWVuVBlIxklIJURMTdG/qsOWbSpQTtoFyREnuTNeFgjkfKCGrJMKgnA
         GBzfJ+QqIMktwshf3+FwVPgw/NnpKaJCl4wOZ+f8uKlwGNLHhMoGkk2z+fkjxzSC4916
         rfgOXfYRTlEgDjsnfjbEBS53nW0Xi2OGTWL0FJxcC6sNSMyXJJP/jr7X1nNYHnwp9mK7
         4DEXZ5tQvYx0t+36RhxtVwa+117tZXC7lGaUr758U0kO0VJwU+WQgOv/ohcUglicOYLj
         AkZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LM4zgo1sdhUEBtKaWNzqHm9VDg+7U7pcCxFAeLhF3nQ=;
        b=K0+FLurXlUQPWSQDe88aRKBfaEgK1QdCWSwr00siu0JnLzDCIhdcQfXhqKWGEUdJnN
         j23EEDHafXhnpTQFUZ5Bbr+QE1m/JxblbvwDz2xZZ80+vlOy3k4BTO04MYgILawip47f
         BBlHdCidG8D0gYWZRL2VOI6ZaAGnljpmZQcYKp0iKlXd3wcqYuFsYsnpAXQJG7quw9J4
         wG74f2WNcNRP3Q64+58sYa9vxSu87rSbJoOCL3yX8D9Qj4SeowyhqHLShbf6gHhvodTQ
         0xHvvJ37U9FBsirqywbBX3oXvsdBp/zblUbwldZ6J2cYTsXKy17WqRpDuAgo7XEiDTOj
         I7xg==
X-Gm-Message-State: AOAM531cz26r+SMENMNOUTyTN+4o1oqTmlPa/quFJha+TSpxnfSFarI7
	q2ySBb9N+DrNkKSJ6yQKmSI=
X-Google-Smtp-Source: ABdhPJzWJ25zYh0sz8gEam0iZ+SgUkFKNCK0k5WB5T1qJsgRmmTjTq0MZzDPN9AYatI2ef6L5OMc9A==
X-Received: by 2002:a92:589a:: with SMTP id z26mr17865452ilf.267.1600193647095;
        Tue, 15 Sep 2020 11:14:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:d344:: with SMTP id a4ls2369089ilh.0.gmail; Tue, 15 Sep
 2020 11:14:06 -0700 (PDT)
X-Received: by 2002:a92:5409:: with SMTP id i9mr18079784ilb.81.1600193646574;
        Tue, 15 Sep 2020 11:14:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600193646; cv=none;
        d=google.com; s=arc-20160816;
        b=RvXDO8aywCvg8TZBD+n+x6Zr/Pq0Xou8H2uMBnPMzNpQwNCPg8+LK9pNvlvmhwiuqc
         Nre1/dCAc19mnqPgKQqZgPZcNHf/ET3baltFOqrAIVt47aKCOY6eXXSnS5+1Hf1FrOvE
         gT/hWR4I7gF/Slz06CG77gk/yNoEHDSOaYe28aJ7knL/ENg2uDYyJUnlaNwSpGQ60QsN
         q7ZHc+igQX42X+DVdqMbBbnfkwI0MN2MKPdB85G+FWx9peVaNXSgm9HAkKZ9V3qged8f
         C1DNEzC+zQGxjvJf+w9/F+RriIV+A4e97scmlGfwQ4PetVWxO58OPtAC/AcfPettvpL5
         XwZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=AT0mHORaxDdMUqWTyM6bXKGpvP94IwQFIcwyyHppM00=;
        b=ExXo9j+qfXhFjhfqSyqHyYDYI9+vO99Yqj2pih+RwhcWXVvIiRQ6TPki1JQEiDP/18
         JX1GZeWViMUlQXW3lNe1zAmXSdNfnE8gKno3BcUA9uWO2Sm8xG23nTdKPtGOOPmeR1SS
         Y3i5vkN7OGz35ERvL6gQVNrFoXKaXRzJkm+0boQL+NYntTwjSVvKzx4PFfGt78YNHgMV
         nV8pCihuqXCMmCEJTB1UF4/9n8Ur3qYQhsc7prtxMNzmhqMSKKLtQF8dGgswovzbRc7I
         Zhvv58XQkHdv6dPYN5naxqXrGOj/w0Dw1+HLo8wd427ki2xbx4nwmcL3JlO3rsitXoDx
         cZ5w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=oVqB6rH1;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id m2si1154995ill.5.2020.09.15.11.14.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Sep 2020 11:14:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id u13so2435367pgh.1
        for <clang-built-linux@googlegroups.com>; Tue, 15 Sep 2020 11:14:06 -0700 (PDT)
X-Received: by 2002:a63:31d2:: with SMTP id x201mr16100266pgx.263.1600193645755;
 Tue, 15 Sep 2020 11:14:05 -0700 (PDT)
MIME-Version: 1.0
References: <20200914160958.889694-1-ndesaulniers@google.com>
 <20200914161643.938408-1-ndesaulniers@google.com> <20200915042233.GA816510@ubuntu-n2-xlarge-x86>
In-Reply-To: <20200915042233.GA816510@ubuntu-n2-xlarge-x86>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 15 Sep 2020 11:13:54 -0700
Message-ID: <CAKwvOdkg6MNBDfEH_A8=HRstAWFA+OcLkMkHsOLjuvSOWF9dxQ@mail.gmail.com>
Subject: Re: [PATCH v5] lib/string.c: implement stpcpy
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Kees Cook <keescook@chromium.org>, Arvind Sankar <nivedita@alum.mit.edu>, 
	Masahiro Yamada <masahiroy@kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Sami Tolvanen <samitolvanen@google.com>, Andy Lavr <andy.lavr@gmail.com>, 
	Joe Perches <joe@perches.com>, Rasmus Villemoes <linux@rasmusvillemoes.dk>, 
	"# 3.4.x" <stable@vger.kernel.org>, Nathan Chancellor <natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=oVqB6rH1;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543
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

On Mon, Sep 14, 2020 at 9:22 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> It would be nice to get this into mainline sooner rather than later so
> that it can start filtering into the stable trees. ToT LLVM builds have
> been broken for a month now.

Hi Andrew, I appreciate your help getting this submitted to mainline.

Noting that other folks are hitting this frequently:
https://lore.kernel.org/lkml/CAKwvOdkh=bZE6uY8zk_QePq5B3fY1ue9VjEguJ_cQi4CtZ4xgw@mail.gmail.com/

CrOS folks are already shipping v3 downstream since this is blocking
the release of their toolchain.

(Also, I appreciate folks' thoughts on the comments in the patch, but
please stop delaying this patch from hitting mainline.  You can
rewrite the commit message to whatever you want, delete it for all I
care, please for god's sake please unbreak the build first).
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkg6MNBDfEH_A8%3DHRstAWFA%2BOcLkMkHsOLjuvSOWF9dxQ%40mail.gmail.com.
