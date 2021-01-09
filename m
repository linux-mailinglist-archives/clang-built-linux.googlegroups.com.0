Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB66R477QKGQEL2FEURQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ABA22F0248
	for <lists+clang-built-linux@lfdr.de>; Sat,  9 Jan 2021 18:33:49 +0100 (CET)
Received: by mail-vk1-xa40.google.com with SMTP id t9sf7131495vkm.12
        for <lists+clang-built-linux@lfdr.de>; Sat, 09 Jan 2021 09:33:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610213628; cv=pass;
        d=google.com; s=arc-20160816;
        b=FSgEIq6m8crQcqCrTQ2mIjTDHYTZI7pPEwJ0cn4OCIQo/to40Je02OqQl9DU4WkJZu
         co4BwacOdtZRCMi+albGrQ8hKNHK2CJt/fGH4RzgAwXP87I7DH5PZPW6nXI+td5kEh5f
         J8AavZW7w4jOobaSc7pOX4wg8Qi+KOJMo2yztAsNO2ux0b34GMbBO2dk7yjdhjLHq6jH
         OhDlZzLny2yW0VRc+xiUip2sYz4voDo7oBQJOUEsdTbNCDRa8nC46PnXYfa7u/9dyUNJ
         sGnE4mCK16DvGnwPLijAG1435dzOhCbzdciq1YOu2hrs1lnddndIaNmPHbaRXiSLmq5C
         3ZFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=xVdlwUDNKBvStNjzCevFa06EGWgscZlOPHBvp2kg89E=;
        b=O4L6BHgv/GpJ1+OzSLryXpEXBsUZe4YUtyOfrFCw98fCW8ZGcjnlkYm36K1enR+l4m
         7Q70787S9NtNshy40mlYluS6IKlbREDv4WoKWphJxU7HJHNFszL2sYjPaChhl9vdAXMw
         Txub1dOjOKRo1kJ4eeVCiT5xDavUyw0CTAIZJDVlBvPosmoihzXs47IF1XT2ISdjSyQl
         7zr0xcy4E1+9PJpGuhgmivrB7vYxU1+B2RVPTaBp+iY7Ff4rQXS3jS2f0fqM0vIoo85y
         t92KRa4HJSr6vSQbhGX4J8zVOgFc08BQIsqLutbyRQ05ru4jxrAkWkB87CxwyZvmQ+VT
         7Pvw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="g/pQdtKn";
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::135 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xVdlwUDNKBvStNjzCevFa06EGWgscZlOPHBvp2kg89E=;
        b=UAcD/02HbkmpgXJwTbD9lEUclngBsX0/aYKh7WF3KDCNMN8VN+VLrjvgSB/owTAnpL
         wQnx8HZ0hnHGNRKcUz2B/GGvCoEc6S62pj9yk5PERAWp+d9eO07YmeF1H6uHj/PcXEUG
         qHuQkWABK/12as1c/ha/h5eyCIHGOrkX0x+1BI0Npzz7RqTmm7bwzFgyInls8RUOOkl+
         jFqhEDjo8WlZRmSfRSKdl4BAPNJAQEYC+5Lo75EWUIUIWGb+ss1u/wL7YvPaUVprwwC8
         QC5uCvwifEOpurH4QFDAXQdc0G/6MUxX6Ff32usJtQ4Y4+nR81JNi8892X1rl2WF0PNp
         y5ew==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xVdlwUDNKBvStNjzCevFa06EGWgscZlOPHBvp2kg89E=;
        b=hU0bZ3J4n5vp3u+hKygLpzGI50jmrWq/RR7WIu3p1BRMXXgRlSOv7fGgls4jnlsFWO
         +MTFldGuyo+IUxlSHm5pdsiCG1mTZ4BbeRKBxwb0WWPX/m0T2YDIuhZOWHRFzZOAYQ7o
         pYsAbEZmPDuwP7v8vRSaSCZbuamyo+GtL7IGRVpP2myy7xGnN+pdXcbWzLbhdd0e+jAB
         o6ICNjWzouo+ctKFkdWy9NdXiM0AuochLxqlsmPuX0spmg+nESg3dZa/MDZFqtex/IkY
         ReEZP7nZDmd5oCzmy1VGpfRAA1ayTLX44cifceUUihgQyqlEJlPRyCKnNLnESCuK0Bbv
         v2Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xVdlwUDNKBvStNjzCevFa06EGWgscZlOPHBvp2kg89E=;
        b=FjEgVTuvQ+6AwV/5AEJuWQ5Qa5Sz+Tau/nWOCxZrLvNmrZoshBPMsVluCUlHBW/b/E
         wTwKcVVnzCEuCEaE1QNMk7BtosG7mzw9M1MsPaikI/qk5kZb2pWV44DJFxL7YevTEVmR
         5YFISwcxdzVIvlaimzLVO7/v8Y6b3OgT29TwzNZL0ULfZ2ysRFurvRYLqqHQcQmfFC6m
         61kSSmI8tRn3BkrkBRmEUjgwlpCssbflx04rIRuUGpoHF8F/cAkqZ2hmVjM/KeaEWUZB
         iKG/0dpKW9K0s2v8BaO44LPiTJx0K+osny9tZv0Ju1x90X/NIfuR6eVPTurPnmAQtKQm
         8RQw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531dhDcicCIKyi8NkhWmMpWuGdIfBMgOTt4LHOf9K9Wm+ZYBDli2
	59mjZuFgEiyLMvQ18uvUr28=
X-Google-Smtp-Source: ABdhPJwevOxtZH2SSDouIXpqjpDDnDONsE9kvqlN3RNiyT/bwJET3OFeVlwSJcqCCWUwj0fiElA4Ew==
X-Received: by 2002:a9f:37ca:: with SMTP id q68mr7632252uaq.114.1610213627831;
        Sat, 09 Jan 2021 09:33:47 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:760f:: with SMTP id o15ls1166342uap.7.gmail; Sat, 09 Jan
 2021 09:33:47 -0800 (PST)
X-Received: by 2002:ab0:708c:: with SMTP id m12mr7194076ual.69.1610213627347;
        Sat, 09 Jan 2021 09:33:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610213627; cv=none;
        d=google.com; s=arc-20160816;
        b=sY6iZe5gZAh+jKXYwwTy35v7cLmUkJv9fkRWadaxuKQmcjgg+V7PjP5n1JEfq/NOPJ
         Ya9Eb1scnokS/wEBnmzxUCLUkHvSgGYAHVIzWoLAkeOe1RYs+ll+0UCl9k0ci0ESw4bd
         DQLyxWoGVlA9OKrC3d1m2u2dj+QTcynz4rcu/ENjEEtHwvIAkBrKGYmjWwisodGnqOSN
         6AfQ7/07yCHs9qQMApmZBZ4MGtkXK4L695mLvHh39RSQdT7aglwQI2wGvNDEPTkQ+hc0
         AgvZT4PrHefslGDeNxBtzAxkI7izCaGJGSzFZW86r3rU7581NQqzPhGUQ0nyJKSwoeiz
         c2Kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=NikId7Xj7bWOh+hLaIn+ZZMlijXDi8nElT+l6OdToWY=;
        b=drEF1rd17pJEYLBOs4yum3MHesnZr0GXJ7eByii+jCcmPg5bY8mtsEdukxb8XJSs4c
         X59nBaLKULc+lhFx1gaSo2vIUhYgnzj5VJHmCn11A/qZiakoj6pHvXIKZQXGAE3epR7g
         QwzLIFIC0+tpmGEmXnoxlMV4e7XOh/Oj+zRKa2L4//8KUaWtH5qbmmAd+qBy9sGUpvV3
         wILP0dxLv0NTfOjGvvWTusSFAW0XGRC1yQ79sBqq5iWwkqBgdd2BSv93fP7MRG0hD8Ym
         Hqfnpl71VGUXAFPYVrWOGS0aAoSZ/GNhmLHp93MMfemyn+cxLSkWI81ZuuHoff+C4csv
         rocA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="g/pQdtKn";
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::135 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x135.google.com (mail-il1-x135.google.com. [2607:f8b0:4864:20::135])
        by gmr-mx.google.com with ESMTPS id h123si497865vkg.0.2021.01.09.09.33.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 09 Jan 2021 09:33:47 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::135 as permitted sender) client-ip=2607:f8b0:4864:20::135;
Received: by mail-il1-x135.google.com with SMTP id 75so13723282ilv.13
        for <clang-built-linux@googlegroups.com>; Sat, 09 Jan 2021 09:33:47 -0800 (PST)
X-Received: by 2002:a05:6e02:1a43:: with SMTP id u3mr9156005ilv.209.1610213627012;
 Sat, 09 Jan 2021 09:33:47 -0800 (PST)
MIME-Version: 1.0
References: <20201211184633.3213045-1-samitolvanen@google.com>
 <CA+icZUWYxO1hHW-_vrJid7EstqQRYQphjO3Xn6pj6qfEYEONbA@mail.gmail.com>
 <20210109153646.zrmglpvr27f5zd7m@treble> <CA+icZUUiucbsQZtJKYdD7Y7Cq8hJZdBwsF0U0BFbaBtnLY3Nsw@mail.gmail.com>
 <20210109160709.kqqpf64klflajarl@treble> <CA+icZUU=sS2xfzo9qTUTPQ0prbbQcj29tpDt1qK5cYZxarXuxg@mail.gmail.com>
 <20210109163256.3sv3wbgrshbj72ik@treble> <CA+icZUUszOHkJ8Acx2mDowg3StZw9EureDQ7YYkJkcAnpLBA+g@mail.gmail.com>
 <20210109170353.litivfvc4zotnimv@treble> <20210109170558.meufvgwrjtqo5v3i@treble>
In-Reply-To: <20210109170558.meufvgwrjtqo5v3i@treble>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Sat, 9 Jan 2021 18:33:36 +0100
Message-ID: <CA+icZUVEyCJK4ja_d=45t35=uRoXSDutcqEXBtKbChoP3MozrQ@mail.gmail.com>
Subject: Re: [PATCH v9 00/16] Add support for Clang LTO
To: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Sami Tolvanen <samitolvanen@google.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Steven Rostedt <rostedt@goodmis.org>, Will Deacon <will@kernel.org>, 
	Peter Zijlstra <peterz@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="g/pQdtKn";       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::135
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
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

On Sat, Jan 9, 2021 at 6:06 PM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
>
> On Sat, Jan 09, 2021 at 11:03:57AM -0600, Josh Poimboeuf wrote:
> > On Sat, Jan 09, 2021 at 05:45:47PM +0100, Sedat Dilek wrote:
> > > I tried merging with clang-cfi Git which is based on Linux v5.11-rc2+
> > > with a lot of merge conflicts.
> > >
> > > Did you try on top of cfi-10 Git tag which is based on Linux v5.10?
> > >
> > > Whatever you successfully did... Can you give me a step-by-step instruction?
> >
> > Oops, my bad.  My last three commits (which I just added) do conflict.
> > Sorry for the confusion.
> >
> > Just drop my last three commits:
> >
> > git fetch https://git.kernel.org/pub/scm/linux/kernel/git/jpoimboe/linux.git objtool-vmlinux
> > git checkout -B tmp FETCH_HEAD
> > git reset --hard HEAD~~~
> > git fetch https://github.com/samitolvanen/linux clang-lto
> > git rebase --onto FETCH_HEAD 79881bfc57be
>
> Last one should be:
>
> git rebase --onto FETCH_HEAD 2c85ebc57b3e
>

OK, that worked fine.

So commit 2c85ebc57b3e is v5.10 Git tag in upstream.

So, I substituted:

git rebase --onto FETCH_HEAD v5.10

Thanks.

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVEyCJK4ja_d%3D45t35%3DuRoXSDutcqEXBtKbChoP3MozrQ%40mail.gmail.com.
