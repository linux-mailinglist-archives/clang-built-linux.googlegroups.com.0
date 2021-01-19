Return-Path: <clang-built-linux+bncBDYJPJO25UGBBOE6TWAAMGQEE2MBZMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id 991152FC246
	for <lists+clang-built-linux@lfdr.de>; Tue, 19 Jan 2021 22:29:29 +0100 (CET)
Received: by mail-yb1-xb38.google.com with SMTP id b131sf27501954ybc.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 19 Jan 2021 13:29:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611091768; cv=pass;
        d=google.com; s=arc-20160816;
        b=Y/N4X1X81X14q9aESrTmEwlvpdmZZxRMzJqdiMOftWKGeRq5qY02fmqIQpL4Evv3ea
         ruW7/f0m4kGYFTNp5hcj+QV+GcVOOzsrocCk+ONhf6Fh0n4X+ocqtDNop/xQoQ6IoU78
         V8UUH/HfLSH936jYcocBTKOfNaqz+HxXQPeu9Ym55QkqFtD/4G6gLVzPjabicjtZ+yaT
         KqAP4Io1uE5yshz1ukDo8q+enK6GhcjKcpQjvEtraWVuEgzYZSSZpaKfLcM6CO1l5v4g
         /1cEoc/mnT9ekHfPd5zzcAke0mYUzyaD723Vp50c3MHEB7lxIkkJG1vohud4jPVrZ7Ey
         e28w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=aWrFMMhgUfznQL15tOKDZW/w1FR8iyIeE0So9kTwFrs=;
        b=KMazmFhcbIOYYfveiAYpjnSmkxrCQu7lSkY3AgYQAbyVUoaiPHejexE35p+xoDygSJ
         VXInu0QAyuWRg9kjERTyWmQaAwaks2OdgQWmFsr+r5zXayD565/grIM5bIgWaT8D+fHW
         suibCBEiExUmdMelSBJe2TiqOmrRfFSeZCZqYpFW9xjrQBjzyMdlT+PR9Qgo9IDCaTaH
         niLK9wzlNiElX65J1+6EkaKdoictOzS+rcQO8kN0xgl5TyjhBoS99taPaS+eMiS622M1
         SOkuldJxeQJj/EiE+E8+PBckpCBxTuAKLtO3cAgpRRROZ8Cc5I3UMyfb6tj8x9wyyGgH
         8DAQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=EP4GZbG7;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aWrFMMhgUfznQL15tOKDZW/w1FR8iyIeE0So9kTwFrs=;
        b=GUrnFWCfPeEf2P2xhWpUpGMpiAUcqYLFTFeE1q61Tsa3aHQR1K8oa4DZ8bEdYS31Zg
         ty3yf0UtzrL94YdMla+VUBuHXAya69kLYhheS78Ia0C8cF7G7CDDOLRdAFrzot7cFtPq
         m1DFUYn1RNa56AAElf3OdNW1oqcU/B/T0V3oHW6tkGlPloN5znBb8xXm0abQ7zimOAjU
         fnvnjvp5XroHXeYsbIvjyDrwI9oSh9nWfW3G9ib7AfwGlybha3kkN6xgnvE7QtRWiafR
         f5QhEkimnDjAqii6dIJEbDTuA7xKIaq8idiBCK9mLI3UcIoux0Lldvue+yJ+tWWCWqdr
         HMcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aWrFMMhgUfznQL15tOKDZW/w1FR8iyIeE0So9kTwFrs=;
        b=YfMu4A81flQLrOXJ9IK2rsQp+uBeSkTHuuROgh1PbLTVcDhuf5tKpksDMExmT5FD5k
         E2zuP/FhLFifiKjW2sQ4JSwG4muaO+/z9qEa3NyM688GHMlWI/vMW7JzqTnx4Cw5Bw1s
         dI2Nl4JNz9RDGoy5wuFlmf0syou2m1iISeOB/CR/q0KFNRaU7mNpDwgiXCmDtjzK8m06
         kRIiVfNjhjAuiP5O4/Hx2HYvIR8Lkz5LWzxyZWFB21Sa125Js/O9Qv1tgGZLujUJk4RU
         MQ5r2o2gpYkcsFs3u/K0fjpvLNvVczorSa2AnUwA/7Eji/847oQej8zqfD75EV7XldMg
         LZ+w==
X-Gm-Message-State: AOAM5313VqYrvAE8NPIJr1m6AEHo2J5Wn4ZoB+Q6dtbUxFQwOkwXRhwt
	MyOBhLGTkS/O2hM1iIcgkh0=
X-Google-Smtp-Source: ABdhPJx1gvrchR+523GhJw+izEWbv8rvqo2Fb8/O6rIfjcqGmpXtNe3/uiI9sNJkD4S6WbNXG/mAHQ==
X-Received: by 2002:a25:2886:: with SMTP id o128mr2498544ybo.80.1611091768646;
        Tue, 19 Jan 2021 13:29:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:b5cb:: with SMTP id d11ls11141639ybg.5.gmail; Tue, 19
 Jan 2021 13:29:28 -0800 (PST)
X-Received: by 2002:a25:7449:: with SMTP id p70mr8408949ybc.363.1611091768283;
        Tue, 19 Jan 2021 13:29:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611091768; cv=none;
        d=google.com; s=arc-20160816;
        b=G2sKkHsOki+uHjG0jFf8aCZdx2U77cIKQCgyGtGVCqr8bOi0ThIuuaPLhnsSXilgZR
         NOoBpJyDWu2Lx6FjQz6IliS8wo9pgHybfm2tNXrzyE3SqD7Bx2k8J1rJ65xgr1wTDOih
         4deC1mFO/M73h2KpuGRtqAkGBdviboXVdf1ndXx0SZ/9PTA+j16tnVgVX2lzEdl2hEQU
         DMzmHxDa/iEfbfMGEntnu2YKAPiRPuFD2yyvDBXd4l7ET4vBwUg9efDw46A2yWJORjWU
         qVha1jr59rfzkrdCVVh1W4sZguGMgH02ioyHXZehvGcjFtZdkzSxO+/rEUDDxa/Wfspo
         pQDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=XCrNzaL4w56hc9lFQdEeIjWEg1C4jutehfs9o1t6SSE=;
        b=iWdxTrNVa/b1upswv0PLMBbzIXQ8RI6JtlqrWzFolDq7c9pufJirs1AtbY3HqxGV6O
         osOBhoyBR7I+6rCKk98ikrrRaYpaWxVKC1Wr1YJxQj/LwhxI7m7NHgp1sU1NwR7oTO7l
         OnBKsOCPS3Cq02aQ4lLwHmDXRyXbP7JGfvYN5sVvQ0k/ogc0LXu+vqNK+48AltFl33qH
         eKtCvMkrCxvVglIyATfVl0Lof7cPH/IRBFfMgGxJ/LuL5S4hJ5+l6MTriX942tb3uwx7
         I5zgmkkayO8KFXuqwfzJc8gbasY7HfH2Z9E6bozCauAPk+kibUvjx520ZFqaIAzSM2kF
         s7gw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=EP4GZbG7;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com. [2607:f8b0:4864:20::102a])
        by gmr-mx.google.com with ESMTPS id d37si4398ybi.4.2021.01.19.13.29.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Jan 2021 13:29:28 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102a as permitted sender) client-ip=2607:f8b0:4864:20::102a;
Received: by mail-pj1-x102a.google.com with SMTP id u4so757195pjn.4
        for <clang-built-linux@googlegroups.com>; Tue, 19 Jan 2021 13:29:28 -0800 (PST)
X-Received: by 2002:a17:90a:9915:: with SMTP id b21mr1752235pjp.101.1611091767735;
 Tue, 19 Jan 2021 13:29:27 -0800 (PST)
MIME-Version: 1.0
References: <cover.1610652862.git.jpoimboe@redhat.com> <CABCJKudgPc5FFAD5BKX2dK7BJYs_Dpa_JRFgKgGh8b2Xs6khUA@mail.gmail.com>
 <20210118172255.hirr6qpquxgq2vr6@treble>
In-Reply-To: <20210118172255.hirr6qpquxgq2vr6@treble>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 19 Jan 2021 13:29:16 -0800
Message-ID: <CAKwvOd=tRwOvLdQXDRYo00P3vLAnwnb1SXtaHPVkXTnfjMst+g@mail.gmail.com>
Subject: Re: [PATCH 00/21] objtool: vmlinux.o and CLANG LTO support
To: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Sami Tolvanen <samitolvanen@google.com>, X86 ML <x86@kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, Kees Cook <keescook@chromium.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Miroslav Benes <mbenes@suse.cz>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=EP4GZbG7;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102a
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

On Mon, Jan 18, 2021 at 9:23 AM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
>
> On Thu, Jan 14, 2021 at 04:41:28PM -0800, Sami Tolvanen wrote:
> > I can confirm that all the warnings I previously saw are now fixed,
> > but I'm seeing a few new ones:
> >
> > vmlinux.o: warning: objtool: balance_leaf_when_delete()+0x17d4: stack state mismatch: cfa1=7+192 cfa2=7+176
> > vmlinux.o: warning: objtool: internal_move_pointers_items()+0x9f7: stack state mismatch: cfa1=7+160 cfa2=7+176
>
> These seem legit stack state mismatches (compiler bug).  Two code
> blocks, with different stack sizes, transfer control to the same
> noreturn block (violating DWARF/ORC expectation that each instruction
> has a deterministic stack layout).  In both cases the noreturn block has
> a call to __reiserfs_panic().
>
> https://paste.centos.org/view/081cbfc1
> https://paste.centos.org/view/265968a6
>

Sorry, I think all of the pastes linked here expired before I had a
chance to grab them.

> > vmlinux.o: warning: objtool: strncpy_from_user()+0x181: call to do_strncpy_from_user() with UACCESS enabled
> > vmlinux.o: warning: objtool: strnlen_user()+0x12b: call to do_strnlen_user() with UACCESS enabled
>
> It's odd that Clang wouldn't inline these static single-called
> functions.  I could '__always_inline' them, but is this expected
> behavior?
>
> > vmlinux.o: warning: objtool: i915_gem_execbuffer2_ioctl()+0x390: call to __ubsan_handle_negate_overflow() with UACCESS enabled
>
> PeterZ, have you seen this one?
>
> https://paste.centos.org/view/b4723113
>
> > vmlinux.o: warning: objtool: .text.snd_trident_free_voice: unexpected end of section
>
> Another weird compiler issue.  It generates obviously dead code which
> jumps off the end of the function:
>
>   f7:   b0 01                   mov    $0x1,%al
>   f9:   84 c0                   test   %al,%al
>   fb:   0f 84 79 05 00 00       je     67a <snd_trident_free_voice+0x67a>
>
> https://paste.centos.org/view/a1887ae3
>
> --
> Josh
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DtRwOvLdQXDRYo00P3vLAnwnb1SXtaHPVkXTnfjMst%2Bg%40mail.gmail.com.
