Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBFES3XZAKGQERTHTLDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13e.google.com (mail-il1-x13e.google.com [IPv6:2607:f8b0:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id B92F6170FC2
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Feb 2020 05:44:05 +0100 (CET)
Received: by mail-il1-x13e.google.com with SMTP id u14sf3385779ilq.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 26 Feb 2020 20:44:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582778644; cv=pass;
        d=google.com; s=arc-20160816;
        b=ASmRTWvOnsUw6RL9ECoSkirU8+eC8BddR8O4gg5IGBYxs74Ln4BRAYsd+ZA4rB0koh
         aAS+WLKTCZtfmJNgMrfh76OfA8Rx+TQP//LWRxIBcmhBmxYTg+L0THYrKFVEslg4WV9z
         53LPMr6tkv1nvz/prhhi+l0GAqbEQWstz85SeElDxh0S7YyTLrb/mcEyKMGEiJ23zM9/
         GcHWwKaEbCd+v5HUJsh/DHPnkytKodGOgFRJsNBxOi+UsvbsJ/K79bX9vXhBlDba5Y77
         wfwaYxV7NEYzRJ7s1q+TdVrpPUjoEgTdYoxc4fGBKvF7CyNThgBHd3grM+C0CWgGrta3
         Q0/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=GKhp2A3hpSMH+siC5A7EKQ8fwpsOjCJE6lPjcEUtuEw=;
        b=JJgMlOjUH/DTGnXv/3Jm8TvnxUfId2jTbpG1vRW8tiCGwcbStABryZsdGDroKT5aWA
         4DBnPvdgyEWuBuOPe5OAapp1xDUK6+A4HTxfUPI/LSJsLnTbHe1NFqqicOKvOz11B3M+
         0Qp2XtQ4eI0/q2ZXy8flaEFbs0cOqCc7hMGNvodbvq9ZaOZlMKt7vgCf9WLKGuNsrLND
         NTN5EqTtvO39GPBFjuU9IFFa+xAe0GJQRZRjgLMtq4vQhm3vJczfVxVLpxF0ltLuyakO
         h4SmfnaiByQbCtudbJO58/SsEU2E+HkI/MFLeaRwoNVvkjdBDRonbw9htNjmQueFK19e
         BNVg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Nol59jAC;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GKhp2A3hpSMH+siC5A7EKQ8fwpsOjCJE6lPjcEUtuEw=;
        b=Y7l4C76tPKVflpsRMx5nMlR7lzkJAuamkdqAzMf632OcZUYXr2Lg4KgSNKTxxijEMB
         5t7/wkMbtkTk2Mjc2NY+pk7SxU8NnZg0165TVDzFKV5JZrAHU4yyMzI2A8nZvXFF7NoG
         EUd5mfHiRaeTVoRRehYo8NUMejP3C+qG6/NjxEq8Aln0jokTFboo/bL6fAJ/W3uHaMaE
         3+hO+DXQO4Tzl7/WQE4SiIKpPb/U5tKbKMIR7r/Ig7qrv1fiys9chR0CzrGKFaonuqpu
         dZABx/W0NKeUUGDUucZybe2yeNdyeUeMgLrJnN5TWGq2pXzGzE/5LlnCa+s8IOPpFns4
         ZgnA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GKhp2A3hpSMH+siC5A7EKQ8fwpsOjCJE6lPjcEUtuEw=;
        b=fR8L/hnuHIzRPXwIUpOI446huwvrFbcBfhmtytYPeaEhwR8D7jhzVhsntL1YlkfTjX
         oMon0vdBM82Icfv8MU5B41s6nZsMFUkzPduc9SLWqmWLHFIb0pMFT93qVED1FTgYYLOE
         p4wsc4b1ViOYsyTxkQC0VKbNbSyw4mYk6we5/afCUhCm3HvzjUQ/OUWlQK4GwkP84uPf
         CTtWShOVu1+GO47Za3720hOQntIx4oKMUEz+H8+L0rY/OklaNiKc26R4QrzPxp0hU5Oh
         ghvyydAAQG6s7MJCjnFvcW9aCusEn64HHGFy5MR6CNmdhtRWusjzqz1/lgvx4M+c3gcr
         ao6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=GKhp2A3hpSMH+siC5A7EKQ8fwpsOjCJE6lPjcEUtuEw=;
        b=eV1HLtgZzh/5jnnozdkR4rhsIrJaLQfaBYiyOZ1+HzX+OFNoIJ5f2JaudAIQnFlTJP
         YTj3Fh/66NSBenw5vomgJCNcxGqEV6BhJXzSUfjQuo5l9yWhgMbzpwySGTuD+wSxwfbP
         C7zV4WB503GSnuK6EA1bthLnMLANEq//r8KOSfbX7XPeg/nrm/Pe7BV4uiVBRGujx94n
         3dA49WbPaxJJJxGc7YZ74OCObNz5tH/V15kGIzV+MIx3Xk5CgVW1ssI+2FZyQrwHt4lL
         FYRw0mmxZJNF+s75LgEQyeJD3KHpjR/9cc/eCcxsnMT+1/kBT8k70Uvqt1wD2iy7xaNH
         ct7w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVxFnkzcTkA00fRuWQNScAo987fW7pzeNW7Hyd9ptjB3KH54pg8
	iX32iOeISk9CchiyiTX0Smk=
X-Google-Smtp-Source: APXvYqwiqPKohyjaO/Bq/pF1Xtc8muPDCBNG7uqeOYLW7WqCpmkrCqsVrIH4PvIotDL9sRar3JqzzA==
X-Received: by 2002:a02:caa5:: with SMTP id e5mr3440175jap.116.1582778644672;
        Wed, 26 Feb 2020 20:44:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:18b:: with SMTP id a11ls204717jaq.2.gmail; Wed, 26
 Feb 2020 20:44:04 -0800 (PST)
X-Received: by 2002:a05:6638:2b6:: with SMTP id d22mr3410120jaq.59.1582778644260;
        Wed, 26 Feb 2020 20:44:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582778644; cv=none;
        d=google.com; s=arc-20160816;
        b=vayvi4kZsj91bc3Lej5/IOHGMxRr42/pQIokxSspdb+lOZP2ivveuZn7+nS0taCjmV
         SA3jEMVdiYkUFtSmzvYPfHVn/fCAnkzs+0L9p9/ChOCMkwJS8kFeOygsKYXBDs0qMMvv
         OwYBQTSpsy4yReK95Cy1WhgMXp/gzSB1mzxjbRY9unrXmdebE/HNoR1tICZyZCnvoCfP
         oGpYLLpcGyeHMuB1BF5bDDQwzfwLFXJSONBCKOVXeD0aQcbqw8QU/pCByDdfnHkzTtFZ
         UYI51pRowJeNerxq5HqfaB8A1aiRl835yvaTzlkwFfglqJDz7B3Ajqgl5DmFnnk6wWxe
         wlJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=4RNB8wxWEzVJtgJjqldIaCI4XGfYsamNd1UsJb6gSog=;
        b=fhrXtksFdLEg/Vea0XahQg2OgAYbbaJVMHEM0xpbc/QfU26sRp0exktHf4P8KtEX/v
         QkwRucBrC1ydu3rFpgL4n97wnxlMYFgKe0waUeXRlMZwGLkLb29CO23yM1GJYFLwDNX/
         BVRaMh7OJpAfrWQtbrVcCya8ikRlGoePQqMr1dtbs/kUjF+4iqlEMSaUniuvUM21W9Om
         CGS3K1DcPBOF2bDv0dvlyDechkmVjeT2gRHoJNGarS7XYKD8vvjJZvWd0NT7y7xcE0P1
         EUfmX33MwagqlubLeWsptJKTW/X6DWX5s74t26pkBtBA3yG5S6adDVGF8+CjWveW1YR7
         7X3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Nol59jAC;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com. [2607:f8b0:4864:20::241])
        by gmr-mx.google.com with ESMTPS id x6si158954iox.4.2020.02.26.20.44.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Feb 2020 20:44:04 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) client-ip=2607:f8b0:4864:20::241;
Received: by mail-oi1-x241.google.com with SMTP id l136so2047318oig.1
        for <clang-built-linux@googlegroups.com>; Wed, 26 Feb 2020 20:44:04 -0800 (PST)
X-Received: by 2002:a05:6808:289:: with SMTP id z9mr1908161oic.48.1582778643913;
        Wed, 26 Feb 2020 20:44:03 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id a14sm1585830otr.54.2020.02.26.20.44.03
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 26 Feb 2020 20:44:03 -0800 (PST)
Date: Wed, 26 Feb 2020 21:44:02 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Kees Cook <keescook@chromium.org>, Jonathan Corbet <corbet@lwn.net>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	Linux Doc Mailing List <linux-doc@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] Documentation/llvm: add documentation on building w/
 Clang/LLVM
Message-ID: <20200227044402.GB55684@ubuntu-m2-xlarge-x86>
References: <20200224174129.2664-1-ndesaulniers@google.com>
 <202002242003.870E5F80@keescook>
 <20200225041643.GA17425@ubuntu-m2-xlarge-x86>
 <CAKwvOdn0_EETGtBVhbRKMPqv2K04Z1N4PuOZDZ6++Ejbi9-B-w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdn0_EETGtBVhbRKMPqv2K04Z1N4PuOZDZ6++Ejbi9-B-w@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Nol59jAC;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Tue, Feb 25, 2020 at 12:59:25PM -0800, Nick Desaulniers wrote:
> On Mon, Feb 24, 2020 at 8:16 PM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> > > Should this also include an update to Documentation/process/changes.rst
> > > with the minimum version required? (I would expect this to be "9" for Clang,
> > > and "11" for ld.lld.)
> >
> > I think the clang one should be added in a separate patch that
> > solidifies that in include/linux/compiler-clang.h with a CLANG_VERSION
> > macro and version check, like in include/linux/compiler-gcc.h.
> >
> > ld.lld's minimum version should also be 9, what is the blocking issue
> > that makes it 11?
> 
> I'm super hesitant to put a minimally required version of Clang, since
> it really depends on the configs you're using.  Sure, clang-9 will
> probably work better than clang-4 for some configs, but I would say
> ToT clang built from source would be even better, as unrealistic as
> that is for most people.  The question of "what's our support model"
> hasn't realistically come up yet, so I don't really want to make a
> decision on that right now and potentially pigeonhole us into some
> support scheme that's theoretical or hypothetical.  We need to expand
> out the CI more, and get more people to even care about Clang, before
> we start to concern ourselves with providing an answer to the question
> "what versions of clang are supported?"  But it's just a strong
> opinion of mine, held loosely.
> 
> Either way, it can be done (or not) in a follow up patch.  I would
> like to land some Documentation/ even if it's not perfect, we can go
> from there.
> -- 
> Thanks,
> ~Nick Desaulniers

I think the question of support model is something that we are going to
have to sit down and figure out sooner rather than later, especially if
we are adding this file to the Documentation; we are saying that this IS
supported in some fashion, we need to be able to answer how we are going
to resolve issues and what versions can be adequately expect to work
with the kernel.

I think that being able to tell people to update is not unreasonable,
given how efficient we are getting fixing into clang. However, clang's
release model is definitely different from gcc's and that can make
getting fixes into the hands of regular users harder, aside from asking
them to build their own version, which again, is not that difficult and
hard to do with something like tc-build.

I agree this should happen in a follow up patch. I think starting with
clang-9 and saying if anything older works, cool, otherwise update is
probably a decent initial model.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200227044402.GB55684%40ubuntu-m2-xlarge-x86.
