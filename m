Return-Path: <clang-built-linux+bncBDZ3F5UE24FRBKG7RCAAMGQEJKWJAQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id 955912F89CF
	for <lists+clang-built-linux@lfdr.de>; Sat, 16 Jan 2021 01:13:29 +0100 (CET)
Received: by mail-yb1-xb40.google.com with SMTP id o9sf8857521yba.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 16:13:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610756008; cv=pass;
        d=google.com; s=arc-20160816;
        b=X2agZ1vZgaxA6sljd/5vZYNHd48/7mCoh9IPCFbNFAcbJwxdfu0nc1Fmzcx3fhoe9H
         U0c6zbphCLY1h58r/mfhZCr5lX7e/fa/WfdCGbF3Nqo0g3ZlcxzoDcpV213PjX1g0WOo
         PPy5OKrtY0NTW9rakO+z0R2mffm6XpoBIcYA//AQSLQ286oMcLYDJCMZRb/WkEqqqz1x
         tnsUnV9bha/hFb5ZSCWaWz//MQ+l34EcVlKuuT217Vnzsw0LV8IS37q6YK+14ZlfTjNk
         +BGVbjICuoWHd6YUglilTWnobWx9hytZdfyqLv9wbhpAUoUOqfjjydSyRZSmiDl5q7ql
         fM5g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=a4HVU8pXaWO3oeXocYXyt2GQOaU4PyEa81gXnZ9ApUE=;
        b=JgUzE/6wPEK26ozDL/fG4gf8uX2g8/StcS3M5ZvSjunpsgTBpzvTHxt987S61+ka0l
         gpRb/xw4WofgRud4h1IWX1RLyrr00fc2gmW+bJ1EcGBOKxJ5MIlnAiZIJOcoq1wFTD4T
         yCe/uNuvR235/S9F9/FXQmdsiyCq6cjm0Pah9TG3WpGp4L7Zo2lj/3L8p5XbujaDpBw4
         9ifMapYFYTiR81OnfDPQR9AfvUPEBZxzWdLt9YbMP98BjQSiMeLgrKGoDO09VW9C4u/L
         mo0VVmjw1keWRMalJMMhMhZqTm7D+7QYV0n/50d8F3s3zOJRA2ns32CfpNlQQ3jMWlVN
         TMsA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Bpag9PGW;
       spf=pass (google.com: domain of nick.desaulniers@gmail.com designates 2607:f8b0:4864:20::42e as permitted sender) smtp.mailfrom=nick.desaulniers@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=a4HVU8pXaWO3oeXocYXyt2GQOaU4PyEa81gXnZ9ApUE=;
        b=cc9wNme+ZSTbrjssBiqXtoNP2Z+HpjLUAq6lu5A93VxcQA8B8oOo31hGniPX0/BO+O
         er7yyin5XXuBgJC0aWQMts2twY42A6uKN6roJRrblLKrmLW6hG9d56fxzTkqlyEtSWyw
         Te+2LduUr9zjUnJ/SVlwsWVbem0eVAAmwrzqFEdgAkSX2LJ1MS/hW6qTXYG37SBr9GKk
         LRazbCoWn6zTdl5s6upCp9kQqerw9Ty2Lo8hFr0LQn2T4qfewY3KQYQ6GeiujOszVwCs
         AYr6D1CALaEf502ErA8mjIu7GdHXnLtatIt62/41G+Z0EaBWBEvy4zojVElk3du3NOTd
         V4eg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=a4HVU8pXaWO3oeXocYXyt2GQOaU4PyEa81gXnZ9ApUE=;
        b=mG/oUQleuMtehCB3s3EBlvz/OiMpWDAHbSzPrYTWrPKGU/+iXN09JcXddIHAzkC+UZ
         PtwgvnNcMrDKKcxAW7eUPJeTkgWQfVnViO2UiG9CwMKYyxSbIP8MuH6Dmhxm6wRRtluL
         wD9QMnbs4nS8c66gepvhywxAtbJ9UQoJOr+DRHEb3mCccMmSoQq9eIW7DXuXlAjIodpC
         2icfFGh/TepeizTSTBfdZ8cfE9g66t4ymNsPtxidQXhV3hK9Vepwyyq+/UQmoHPCO48G
         e3/Y5pLrNt2BRHuYdTzQYnrAXbFMD8qj/h2DgkOoCqI44+lvmjQ13/XyYhu5O2BSIlhC
         WE3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=a4HVU8pXaWO3oeXocYXyt2GQOaU4PyEa81gXnZ9ApUE=;
        b=KvfFyUe9Y+o1mQEPBl71Vf9KtSZxgZwc+PO/KYVyrPZAB9ivQ/UV1yQXQzDYhroh3o
         Ajruto+phjr/GnYZJ9ksXAG/+RyatkTAmUreg/A7eKh8mRR5uxDnLl1pzl7w2zFcvB7O
         +7DI0XKcD3xHkFen1tkKHGL6GmR5kitBQ/Ia6OU3FG8NojESGIWqQBStNdP7oMJKRsju
         gUPFmClXzgXb6Ckhw0M2iVH8aBF3i9Tv1JXGURMLFwUmFVA237gMZ3s2jvuotbiLkaRj
         l532QPzVdaSxS+A55VXHjMn2sjNc+IDLquIfWxD+wJBYkpKWgncBHwkA8y8yQBJHx/ie
         nfIw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532svXaUdtwao6LUuegbWiWUwlfbHfUVsSs6Xaj1mwWz6qdzv/iY
	uCK4FBTfce1VKU/JScqZ448=
X-Google-Smtp-Source: ABdhPJycYd9xk1jdpIaOT1Hn9mS++3SCsVz1MwPajlPpAWW89c1JSimDMvmz/C4GNYa2UJ6VZaWqjA==
X-Received: by 2002:a25:2d7:: with SMTP id 206mr3875383ybc.233.1610756008684;
        Fri, 15 Jan 2021 16:13:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:2f84:: with SMTP id v126ls1524870ybv.11.gmail; Fri, 15
 Jan 2021 16:13:28 -0800 (PST)
X-Received: by 2002:a25:d24e:: with SMTP id j75mr21157444ybg.186.1610756008241;
        Fri, 15 Jan 2021 16:13:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610756008; cv=none;
        d=google.com; s=arc-20160816;
        b=lVVOBa6VG7DxoJUTTk5d+pEDhD9L3bIgWY83gPK0+8U+uRatVnP+bYPRExBtnNNouj
         9eSNHqozxXI1vSQzbjrxVrsKK50ccTVEqrGu3g8A9xrE3QTs0lc15D/FVaJ+hzbHXFDq
         0ti3KFTB6KCyKEzPugl7SS8YlGPsuAO04Bv01ykAWTLpC+lEWbWfReNEufjkKfJLtXVd
         Y08P0q1iSoINXwe3X/5MikPJvdzHdjzmGZRUf7WvaH21XcXMvLQlNKmGZyTq8qSupwc8
         bSbYAx5q/vGaHwOor6zICzFWbSu7G0onfVun7q57y/dzaIPf53X+KZXtugwcXp+wvytS
         G+5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Iezn4Ka6AfOTv8ruHoS6A2XTfT3pZMCeDfnXknJdlqg=;
        b=NazVXn251ySYd7OzZt1I8igOpIDwn62GNlqR96yESjxB57wuzjUjJ2+QTObu1VTHeQ
         m0zyZSpTvRfMFFdSune4OMdVlbtwXKFEuNYrd2frZISLfMkIecBrp5kUCI1UjrLmjxj6
         okTn45PgquIUcfAwxC0eIdj+YwtlL84U62fdiZm+ZBGJedjKkIAqLPNUQHHrznU78v5V
         rTaujzRSOlHnPIx1SiH/04f/nrt1pzcRZJPOQGp9lQIUYmga8/yV4dec86CQxoKXZwhA
         KUx32jbK97zk6x2kJQRbQDkqRnSeOlcN7xsjVCfKfCMZyyEKQpYgTcNM21tjRI4iMmQY
         7pKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Bpag9PGW;
       spf=pass (google.com: domain of nick.desaulniers@gmail.com designates 2607:f8b0:4864:20::42e as permitted sender) smtp.mailfrom=nick.desaulniers@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com. [2607:f8b0:4864:20::42e])
        by gmr-mx.google.com with ESMTPS id i70si862943ybg.1.2021.01.15.16.13.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Jan 2021 16:13:28 -0800 (PST)
Received-SPF: pass (google.com: domain of nick.desaulniers@gmail.com designates 2607:f8b0:4864:20::42e as permitted sender) client-ip=2607:f8b0:4864:20::42e;
Received: by mail-pf1-x42e.google.com with SMTP id c79so6527602pfc.2
        for <clang-built-linux@googlegroups.com>; Fri, 15 Jan 2021 16:13:28 -0800 (PST)
X-Received: by 2002:a63:af50:: with SMTP id s16mr15370424pgo.448.1610756007827;
        Fri, 15 Jan 2021 16:13:27 -0800 (PST)
Received: from nick-Blade-Stealth.lan ([2600:1700:6d11:6f:4cf3:b4a6:3312:eae])
        by smtp.googlemail.com with ESMTPSA id u25sm9280338pfn.170.2021.01.15.16.13.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Jan 2021 16:13:27 -0800 (PST)
From: Nick Desaulniers <nick.desaulniers@gmail.com>
To: ndesaulniers@google.com
Cc: akpm@linux-foundation.org,
	clang-built-linux@googlegroups.com,
	corbet@lwn.net,
	linux-doc@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	masahiroy@kernel.org,
	morbo@google.com,
	natechancellor@gmail.com,
	samitolvanen@google.com,
	torvalds@linux-foundation.org
Subject: Re: [PATCH v4] pgo: add clang's Profile Guided Optimization infrastructure
Date: Fri, 15 Jan 2021 16:13:24 -0800
Message-Id: <20210116001324.2865-1-nick.desaulniers@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <CAKwvOd=rEngs-8DR6pagynYc5-=a06brTOOx5TT1TC+v7-3m2Q@mail.gmail.com>
References: <CAKwvOd=rEngs-8DR6pagynYc5-=a06brTOOx5TT1TC+v7-3m2Q@mail.gmail.com>
MIME-Version: 1.0
X-Original-Sender: Nick.Desaulniers@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Bpag9PGW;       spf=pass
 (google.com: domain of nick.desaulniers@gmail.com designates
 2607:f8b0:4864:20::42e as permitted sender) smtp.mailfrom=nick.desaulniers@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Content-Type: text/plain; charset="UTF-8"
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

> On Wed, Jan 13, 2021 at 8:07 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > On Wed, Jan 13, 2021 at 12:55 PM Nathan Chancellor
> > <natechancellor@gmail.com> wrote:
> > >
> > > However, I see an issue with actually using the data:
> > >
> > > $ sudo -s
> > > # mount -t debugfs none /sys/kernel/debug
> > > # cp -a /sys/kernel/debug/pgo/profraw vmlinux.profraw
> > > # chown nathan:nathan vmlinux.profraw
> > > # exit
> > > $ tc-build/build/llvm/stage1/bin/llvm-profdata merge --output=vmlinux.profdata vmlinux.profraw
> > > warning: vmlinux.profraw: Invalid instrumentation profile data (bad magic)
> > > error: No profiles could be merged.
> > >
> > > Am I holding it wrong? :) Note, this is virtualized, I do not have any
> > > "real" x86 hardware that I can afford to test on right now.
> >
> > Same.
> >
> > I think the magic calculation in this patch may differ from upstream
> > llvm: https://github.com/llvm/llvm-project/blob/49142991a685bd427d7e877c29c77371dfb7634c/llvm/include/llvm/ProfileData/SampleProf.h#L96-L101
> 
> Err...it looks like it was the padding calculation.  With that fixed
> up, we can query the profile data to get insights on the most heavily
> called functions.  Here's what my top 20 are (reset, then watch 10
> minutes worth of cat videos on youtube while running `find /` and
> sleeping at my desk).  Anything curious stand out to anyone?

Hello world from my personal laptop whose kernel was rebuilt with
profiling data!  Wow, I can run `find /` and watch cat videos on youtube
so fast!  Users will love this! /s

Checking the sections sizes of .text.hot. and .text.unlikely. looks
good!

> 
> $ llvm-profdata show -topn=20 /tmp/vmlinux.profraw
> Instrumentation level: IR  entry_first = 0
> Total functions: 48970
> Maximum function count: 62070879
> Maximum internal block count: 83221158
> Top 20 functions with the largest internal block counts:
>   drivers/tty/n_tty.c:n_tty_write, max count = 83221158
>   rcu_read_unlock_strict, max count = 62070879
>   _cond_resched, max count = 25486882
>   rcu_all_qs, max count = 25451477
>   drivers/cpuidle/poll_state.c:poll_idle, max count = 23618576
>   _raw_spin_unlock_irqrestore, max count = 18874121
>   drivers/cpuidle/governors/menu.c:menu_select, max count = 18721624
>   _raw_spin_lock_irqsave, max count = 18509161
>   memchr, max count = 15525452
>   _raw_spin_lock, max count = 15484254
>   __mod_memcg_state, max count = 14604619
>   __mod_memcg_lruvec_state, max count = 14602783
>   fs/ext4/hash.c:str2hashbuf_signed, max count = 14098424
>   __mod_lruvec_state, max count = 12527154
>   __mod_node_page_state, max count = 12525172
>   native_sched_clock, max count = 8904692
>   sched_clock_cpu, max count = 8895832
>   sched_clock, max count = 8894627
>   kernel/entry/common.c:exit_to_user_mode_prepare, max count = 8289031
>   fpregs_assert_state_consistent, max count = 8287198
> 
> -- 
> Thanks,
> ~Nick Desaulniers
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210116001324.2865-1-nick.desaulniers%40gmail.com.
