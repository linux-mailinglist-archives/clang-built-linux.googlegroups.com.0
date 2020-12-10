Return-Path: <clang-built-linux+bncBCMIZB7QWENRBXFPY77AKGQEDPZCQRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FD842D5521
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Dec 2020 09:10:05 +0100 (CET)
Received: by mail-qk1-x739.google.com with SMTP id c71sf3197159qkg.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Dec 2020 00:10:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607587804; cv=pass;
        d=google.com; s=arc-20160816;
        b=HOBzBFgkDEOTNYqvA7+SCa4onnVcYWkpwjPocFKlQknoqs1yOHpjQVsJ/Kwp/xV3LE
         IKDJrgfI8q5HF5SZbo4+XLREbBccdD50DA1ik2Nuo8+33wq8CMdt7GMnebh4St8Ul9Ku
         h8AU7Fppg2hLNsFCjJIV7oKjQKEfAb5LvLNCdnFRl4sj/IJrg3ysdwydl6xfQIbPQq91
         HFY9YPNVB2EdiVUXJzNonYfUpvqRogHyfsmKWSZH5JhwTzY7fYx+blH2PCBf7A0P4r66
         FvKvCUmf2wHne7+1kIc9UfVkgm5EmrKbyFSLHvO08IierOXhaN0goV3qkPWjB6vlmZ0A
         +eYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=pk9opcym/rzCA889LrwTLbWoXWkIg4XyFYGAKot1eiQ=;
        b=db5dJiMg/JyU98wyh45UmfCoT0fngEma9axfIYiM2NR3NlO4NXiHd6oCraJMCx9/5s
         4r0j3hi53RJ3aodnaNEDsM1Mj/vEKDIMj/HIV7N9u+xQBBqyKIs0wAq7/l++o8ONv/VC
         822jZbZz1Dd4NymFzvZMT3S5S+TVCZF3Ea0Fa8MxuMLr3GHFGorFhbDwq4XyQYn+dGfu
         BTjGoBu61mUybI5kiqdNyJBd4O/uxe46bN3A3AogbSvgUQ9k+8KBFk7+2okIFZUhbq1A
         NH6Yesk8xexTVDEXf5tB0xhQcJ8405zbohd9E6EyjBqPmvqIi9eIy6NI4FCsyuegIPQF
         3SZQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=X340a6vY;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pk9opcym/rzCA889LrwTLbWoXWkIg4XyFYGAKot1eiQ=;
        b=UKj56wG0i+fF+EmA+lf4ZXqSrzLhNdHiXlQ4ShN0SFCOK4bsRc8X85eEwT1HYkSuzO
         N6oGQkmQssm2+83dPl8azjJxuabuIsbft1Qvcr3MuzQ2avCvyPMp6LFtaGCfPyg3fDPd
         rgt5dsTZKKiK3yWolucTAaTOutFEKTeOP1V/guhG7SPqIDY7XjnO08Ahr5zRC9058smd
         cXY813zfqeL+Y52BUT9678He0NjrUHdRKHeYfuG66Ak9+EsxadfnvpjfXfBjj8bFcn67
         296KR5G3c80LdnQENc0toDlCqTTyjwKDgfOPgvvjqXeVP/1RuJwE/AjkWuM6x15hwS67
         kZdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pk9opcym/rzCA889LrwTLbWoXWkIg4XyFYGAKot1eiQ=;
        b=FPFGyu5A6Bbc+RHR8pgTo+qd/Ydn96DiWm2p5pSeaVi6a3ZJxRMe58KXSopueTGHkE
         N3WMv9OGxmav8jG8QrhTMS63fRNVz+6hMN5nqV0wMgzWlfr1GUpTa5ELVYYX7slI+l0R
         rH80I4AulrWl8Xoh83iQGhpXawHqurGNa+IQfMlNIts0fNap8OWgLESj5Ljcn8BETOOg
         LGjzNF6pXaofxsE8Zzd+8LcRLEp0zmqCroxEmdKv7/Y6SDUYvXHSsNi2ENFgh8DT2+nN
         3WLfeQxpG0Tv0ghYb761xE+6H+WhQDyPy8Lz3PGPw7ypNrUupcfioWGgDz/uZVgWWnqO
         1jmg==
X-Gm-Message-State: AOAM531H9bLb5RUr4XwvU2IJsUh/cFlAhzQHaL0AMvQkwWCVyJBDPJ7T
	1whuhiVgrz2okN55PWFRmEE=
X-Google-Smtp-Source: ABdhPJys4U54WbosEUVOzZzNNaNqtObyw+tdqVPmyw8lJppvvEMMf0wfN4KOIMUUMzmToO5W6q0sTg==
X-Received: by 2002:a37:2796:: with SMTP id n144mr7835547qkn.471.1607587804248;
        Thu, 10 Dec 2020 00:10:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:4149:: with SMTP id e9ls1660725qtm.5.gmail; Thu, 10 Dec
 2020 00:10:03 -0800 (PST)
X-Received: by 2002:a05:622a:1c5:: with SMTP id t5mr7720848qtw.230.1607587803853;
        Thu, 10 Dec 2020 00:10:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607587803; cv=none;
        d=google.com; s=arc-20160816;
        b=evdRSFhXd5iCX2jQUBSExx7Dk4eCMX6dJZFpttx7f4GUk5u+G+NjVNf8ttRUlfoU+J
         FVZ7LytHur8MCP1r4dmVh+/BxgA5Tgm2V4GwoWRpmyte8NqhhsuQ4qu11NRKYP+D2wO5
         DE/a3f1Th9yZT4I7mkm2SFG0Y1Ubqyv1HPW+xmzPNyLECViIpFu5Ti6vFJfYTN21zHNp
         RUMH9yscBc9ec1RnzIVj1xdcZck48W0sG1Z0eKdocJZ34e2pAld+p3DiZCPkUFBheBER
         2ezIz6nk/AbBA2draksTGVeSttXGziEOg59SDVFfa7H/RxniuDxFmv9lxt8+mTPtM9Ir
         0dKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=vYDAWamrgtXENPLy0KNGY/iAQYLlOTlQsd1JUCvYlbQ=;
        b=qN75tsOSncbLXiq92i6sOoHkWxoMnFlpDlLfYYfQr7o5eO+dPCxCWx143Y2djlnz8Z
         JrkCG++XP6YHMi6KPxq/wBR0Ig0u4vWEnsEYu2CnwJ1q4NUpxLnAax8wBC5k6t8xPndi
         7UZNNTXZcwSnJmHtJnmV3NcN1ULcoJy2av9b+NOppOtxI45OpWPNPgbBEV3A1D4g79t4
         s1eU3EVJqx7h3STvCZqP9OEzWd6VqYYa/zcgytQK+3HWkS4ATOy4sE9ZxjS6TwmvH/+y
         2G7GjQciR9SMcdLLLlbE65pUmxyG1U2W7o4nalunzFHXDNdZUwUzZZJ1Itedl3wZImiq
         CtoQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=X340a6vY;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id n18si292699qkk.7.2020.12.10.00.10.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Dec 2020 00:10:03 -0800 (PST)
Received-SPF: pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Received: by mail-qk1-x744.google.com with SMTP id 19so4003300qkm.8
        for <clang-built-linux@googlegroups.com>; Thu, 10 Dec 2020 00:10:03 -0800 (PST)
X-Received: by 2002:a37:56c6:: with SMTP id k189mr7380186qkb.501.1607587803237;
 Thu, 10 Dec 2020 00:10:03 -0800 (PST)
MIME-Version: 1.0
References: <20201210023638.GP52960@mit.edu> <00000000000024030c05b61412e6@google.com>
In-Reply-To: <00000000000024030c05b61412e6@google.com>
From: "'Dmitry Vyukov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 10 Dec 2020 09:09:51 +0100
Message-ID: <CACT4Y+bkaVq1RzONGuPJxu-pSyCSRrEs7xV0sa2n0oLNkicHQQ@mail.gmail.com>
Subject: Re: UBSAN: shift-out-of-bounds in ext4_fill_super
To: syzbot <syzbot+345b75652b1d24227443@syzkaller.appspotmail.com>
Cc: Andreas Dilger <adilger.kernel@dilger.ca>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, linux-ext4@vger.kernel.org, 
	LKML <linux-kernel@vger.kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, syzkaller-bugs <syzkaller-bugs@googlegroups.com>, 
	"Theodore Ts'o" <tytso@mit.edu>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dvyukov@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=X340a6vY;       spf=pass
 (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::744
 as permitted sender) smtp.mailfrom=dvyukov@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Dmitry Vyukov <dvyukov@google.com>
Reply-To: Dmitry Vyukov <dvyukov@google.com>
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

On Thu, Dec 10, 2020 at 4:50 AM syzbot
<syzbot+345b75652b1d24227443@syzkaller.appspotmail.com> wrote:
>
> Hello,
>
> syzbot tried to test the proposed patch but the build/boot failed:
>
> failed to checkout kernel repo git://git.kernel.org/pub/scm/linux/kernel/git/tytso/ext4.git on commit e360ba58d067a30a4e3e7d55ebdd919885a058d6: failed to run ["git" "fetch" "--tags" "d06f7b29746c7f0a52f349ff7fbf2a3f22d27cf8"]: exit status 1
> From git://git.kernel.org/pub/scm/linux/kernel/git/tytso/ext4
>  * [new branch]                bisect-test-ext4-035     -> d06f7b29746c7f0a52f349ff7fbf2a3f22d27cf8/bisect-test-ext4-035
>  * [new branch]                bisect-test-generic-307  -> d06f7b29746c7f0a52f349ff7fbf2a3f22d27cf8/bisect-test-generic-307
>  * [new branch]                dev                      -> d06f7b29746c7f0a52f349ff7fbf2a3f22d27cf8/dev
>  * [new branch]                ext4-3.18                -> d06f7b29746c7f0a52f349ff7fbf2a3f22d27cf8/ext4-3.18
>  * [new branch]                ext4-4.1                 -> d06f7b29746c7f0a52f349ff7fbf2a3f22d27cf8/ext4-4.1
>  * [new branch]                ext4-4.4                 -> d06f7b29746c7f0a52f349ff7fbf2a3f22d27cf8/ext4-4.4
>  * [new branch]                ext4-4.9                 -> d06f7b29746c7f0a52f349ff7fbf2a3f22d27cf8/ext4-4.9
>  * [new branch]                ext4-dax                 -> d06f7b29746c7f0a52f349ff7fbf2a3f22d27cf8/ext4-dax
>  * [new branch]                ext4-tools               -> d06f7b29746c7f0a52f349ff7fbf2a3f22d27cf8/ext4-tools
>  * [new branch]                fix-bz-206443            -> d06f7b29746c7f0a52f349ff7fbf2a3f22d27cf8/fix-bz-206443
>  * [new branch]                for-stable               -> d06f7b29746c7f0a52f349ff7fbf2a3f22d27cf8/for-stable
>  * [new branch]                fsverity                 -> d06f7b29746c7f0a52f349ff7fbf2a3f22d27cf8/fsverity
>  * [new branch]                lazy_journal             -> d06f7b29746c7f0a52f349ff7fbf2a3f22d27cf8/lazy_journal
>  * [new branch]                master                   -> d06f7b29746c7f0a52f349ff7fbf2a3f22d27cf8/master
>  * [new branch]                origin                   -> d06f7b29746c7f0a52f349ff7fbf2a3f22d27cf8/origin
>  * [new branch]                pu                       -> d06f7b29746c7f0a52f349ff7fbf2a3f22d27cf8/pu
>  * [new branch]                test                     -> d06f7b29746c7f0a52f349ff7fbf2a3f22d27cf8/test
>  * [new tag]                   ext4-for-linus-5.8-rc1-2 -> ext4-for-linus-5.8-rc1-2
>  ! [rejected]                  ext4_for_linus           -> ext4_for_linus  (would clobber existing tag)

Interesting. First time I see this. Should syzkaller use 'git fetch
--tags --force"?...
StackOverflow suggests it should help:
https://stackoverflow.com/questions/58031165/how-to-get-rid-of-would-clobber-existing-tag


>  * [new tag]                   ext4_for_linus_bugfixes  -> ext4_for_linus_bugfixes
>  * [new tag]                   ext4_for_linus_cleanups  -> ext4_for_linus_cleanups
>  * [new tag]                   ext4_for_linus_fixes     -> ext4_for_linus_fixes
>  * [new tag]                   ext4_for_linus_fixes2    -> ext4_for_linus_fixes2
>
>
>
> Tested on:
>
> commit:         [unknown
> git tree:       git://git.kernel.org/pub/scm/linux/kernel/git/tytso/ext4.git e360ba58d067a30a4e3e7d55ebdd919885a058d6
> dashboard link: https://syzkaller.appspot.com/bug?extid=345b75652b1d24227443
> compiler:       gcc (GCC) 10.1.0-syz 20200507
> patch:          https://syzkaller.appspot.com/x/patch.diff?x=1499c287500000

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACT4Y%2BbkaVq1RzONGuPJxu-pSyCSRrEs7xV0sa2n0oLNkicHQQ%40mail.gmail.com.
