Return-Path: <clang-built-linux+bncBDYJPJO25UGBBPXPWX5AKGQEJ7EVZNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 63B672583FE
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Sep 2020 00:20:48 +0200 (CEST)
Received: by mail-pg1-x53d.google.com with SMTP id k26sf1457849pgf.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 31 Aug 2020 15:20:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598912447; cv=pass;
        d=google.com; s=arc-20160816;
        b=iniXlxosbwp8NnPDK5XblBRzNrrIRKe2/K9BzJl1EYIpDaiO9gTHVqFgCcQEIl+zl6
         bNps26+w1uW42z7ar52RHbWq+wTB3Nnc90mEWdsE+fRMnHRk+DU9UEGWoFUXO/dLwDXZ
         QjBxWInsHfTSl6zRgtObQ+m2drJzRjdpDFt9SkV4D+CpGrgMdk6Y3CFGfx0cNm0JjoS0
         v1OU+9ar8dPtYk14DHg7J3nzdGRWoQMXT2J8G/fehZKrrReEcnINPwN+zjqB3y/6+5qT
         TfaPPEeD0cZWewPwN1EJGN9UWvjTO6XTIXrW7pLLzYAKl5ZWX0GYSEOYBuaKx4qKAMXY
         86bA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:mime-version:dkim-signature;
        bh=VTagUZVCkjrG2sTeyj9McFJpSHROdXGY6+NCm3CF5II=;
        b=fkc+ZwXOZbvDjesZwvmJNi4ZFHyWSm7AZ2zNuLlpitPhWRO+LMCqsOwixfJ44avY8s
         k8yz8h77StnG0mTXEHs2mcTW+Bsw72yvSbLPxStHwnz0ZJiycEJfJBqz5YQLymQsRCxh
         28lYTF2LZbcPdln34H9bIF+EwonaASiR2aJBL1Q/6afWVkKaMb2iD0ZPbyiAmucsdCk4
         bWQ5/7DXfJBTExpC80aHriX88QqzDM+emaTZmgRASOv+LTPSb+SoNV7kOHRNnI8F/dpe
         ixlxH5p/Odt63Amf6/mwSnv5NRrX8Qf4xgQlZUUXiOnfRH9/vq6GpaBoQW2N/UI+2U3s
         H28Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kcBe4he2;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=VTagUZVCkjrG2sTeyj9McFJpSHROdXGY6+NCm3CF5II=;
        b=KjE8OMszv9SADb8e+DbKSMVEnVYpsRtAbW6Kxoqmj87u6MQzIDxweix3Zyv76yZb8m
         BTspN35aF9APpcSZLglOXDmsQXlFSahgD+6rgypYH7bF7/VGfKoavpZ1QYv31K/R2EkT
         8lyyzP0/+X1g+reH/OCTU8nKVWYKtA56pzuR6rW5TPqO4CshRIq9c2yve+0hY86tc46K
         84lp2LMUsEGbdksraHEH8+XzKQo7j3InvtqdDJwH8wUGWN/D2r2odDycIMoAsV6j2JOJ
         Z/KJfoqI4sZS9kTDkr1O2cmkDyivOVA4mxbU8j6Gj0LCOi72gYrG2v26qALWsM3l5uca
         DxMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VTagUZVCkjrG2sTeyj9McFJpSHROdXGY6+NCm3CF5II=;
        b=WJ0bWWhRMw117iQwYDEUccX0TtKLHzzo8aStA5Bm6BUP0F4lsjNb69KJqHItey/Px6
         xLvH2gS4SjqB0VJNZjB7jql1YYcZ38LHXUb0p3CTBo7wWhJ6WvCpvFaIZzQK+R1NhyR/
         L4TYYDDxLFLXRvhyNdoCAF8PptTu1bu6bEzSNqkIzWGtKB8zwJJXAYSgxqysDO7FkDcl
         /F+t+jLfLFt5jI8yYY3MnFNdBC0RmclPFCfMkulVEYcxeV+9nozTwEoP3ekvOSPf2qEu
         iLSdlwyTRf0DmbrZyx4tPKpiUGoZnue6p6FN4BfoqnyMhRkaZ48zJhISbJ9rUyzN9u+8
         Af7Q==
X-Gm-Message-State: AOAM532/RcD6CBjq0dvOoLPkPWFOx3A45O1Wlk4T2D5xlE8DDaXFCq/u
	7zFAIBVqm75Hmi6g6+LYwPk=
X-Google-Smtp-Source: ABdhPJyzAZK1mlEOYvCEGOfLU/toxEbmlS80JZ1ZWWP9XhIEr2XPMZwG4rf8caNNrmyg5wTf2xoywA==
X-Received: by 2002:aa7:8f03:: with SMTP id x3mr2880091pfr.256.1598912447048;
        Mon, 31 Aug 2020 15:20:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:3205:: with SMTP id y5ls2767152pgy.3.gmail; Mon, 31 Aug
 2020 15:20:46 -0700 (PDT)
X-Received: by 2002:a63:62c7:: with SMTP id w190mr2952834pgb.25.1598912446674;
        Mon, 31 Aug 2020 15:20:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598912446; cv=none;
        d=google.com; s=arc-20160816;
        b=yRA6DjbI/UFW3ZVLszoQFcMlZ/ezMDh7krVcUlAfVjuCJD/y+OMoGl4Pcq9fdMPM5E
         Vx1gpr739Zdwe5XEFvLFBW3Ff5c9obNqVgT9uhn7aAxUe/nBKyZzv63yZc9BbxxpovcI
         yvWmN4+df0oxjLthaVIM0VXwzLGjgsuafsqyh1DlsT7WKaQE9cBKgYoB1017aU+89XNn
         Frf3eeFP2BMKwh87Qx1fpAPi1PKvYbQe2oASPlenkQkhy7HHn9OvnVWTGkeQ/pXofoxe
         OkFTCfnreSYFJ1Xk6pEapadySMGRhILwCeQdUy/22MOnkn7ZUZ+7JJUMWIbqeHzyjDoL
         4cVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=YLuCA4TR4pKcad9yUMlgR4FuBRuJpNn6AW8KXqJWLJ4=;
        b=L1+6bR7sEd9Gq8TN9276ZBLDMYBiY3LDEC+5W40pz9N4vQX74uIgnoV3L3NbpNjIuV
         DaMSiwaqYFJj8sHk1BSq8YnI+sP6gTjZl7dmHDNQXXI97Qc6iaRjolUKCnTgdkIaJEqA
         DrIUaWeoD9KYYrxzq6NZHiFwPI4ljwlU86RkbuxbKKpiiCdhcFnRrYFOQ6CJSqSVkHQL
         OHwBRMk4VrleQi4cxvvmKIXaD5sTjpQ3G/yMCvm923mxwA8qdJu4zWPuRvZVznWy4bOR
         2tj5k43Of2srfkSzDp+FkQQ4R02r+hm9saGZ0YKvbOBt0yQuWmwAqZ5MtcIIQHkV0qIY
         8QTg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kcBe4he2;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com. [2607:f8b0:4864:20::631])
        by gmr-mx.google.com with ESMTPS id kr1si69698pjb.2.2020.08.31.15.20.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Aug 2020 15:20:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::631 as permitted sender) client-ip=2607:f8b0:4864:20::631;
Received: by mail-pl1-x631.google.com with SMTP id j11so3907931plk.9
        for <clang-built-linux@googlegroups.com>; Mon, 31 Aug 2020 15:20:46 -0700 (PDT)
X-Received: by 2002:a17:902:a584:: with SMTP id az4mr2685667plb.165.1598912446128;
 Mon, 31 Aug 2020 15:20:46 -0700 (PDT)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 31 Aug 2020 15:20:34 -0700
Message-ID: <CAKwvOd=viHkHOfpMWLCnWUbv8jXNjBzS+NFnT5uhP0YZQ2Jdyg@mail.gmail.com>
Subject: Thank you LLVM MC - Plumbers 2020 speakers
To: Alex Gaynor <alex.gaynor@gmail.com>, Antonio Terceiro <antonio.terceiro@linaro.org>, 
	Bill Wendling <morbo@google.com>, Dan Rue <dan.rue@linaro.org>, 
	Geoffrey Thomas <geofft@ldpreload.com>, John Baublitz <jbaublit@redhat.com>, 
	Josh Triplett <josh@joshtriplett.org>, Mathieu Acher <mathieu.acher@irisa.fr>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Nathan Huckleberry <nhuck15@gmail.com>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	Sami Tolvanen <samitolvanen@google.com>, Will Deacon <will@kernel.org>
Cc: Behan Webster <behanw@converseincode.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=kcBe4he2;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::631
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

Dear Speakers,
Thank you all for taking the time to write up abstracts and slides,
and present during the LLVM MC at Linux Plumbers 2020.  I hope you all
enjoyed the discussions around your relevant topics, and found the MC
to be relevant and helpful to clarify what to do next and new
questions to pursue.

(It looks like LWN already has an article on the Rust session; check
it out: https://lwn.net/Articles/829858/).

See also notes I wrote up about the conf:
https://github.com/ClangBuiltLinux/plumbers-2020-slides#notes
https://github.com/ClangBuiltLinux/plumbers-2020-slides/blob/master/plumbers%20notes.txt

I'm very proud of you all, and I really enjoyed our MC.  I hope you
all did, too!  See you all again next year, if not sooner?  I'm going
to go relax now with a margarita.

Also, please go fix your !@#%ing compiler!
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DviHkHOfpMWLCnWUbv8jXNjBzS%2BNFnT5uhP0YZQ2Jdyg%40mail.gmail.com.
