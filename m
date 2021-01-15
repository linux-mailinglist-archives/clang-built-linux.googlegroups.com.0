Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBNEFRCAAMGQEKETXRNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 82D572F870B
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 22:01:41 +0100 (CET)
Received: by mail-pf1-x440.google.com with SMTP id 193sf6768367pfz.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 13:01:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610744500; cv=pass;
        d=google.com; s=arc-20160816;
        b=u/sC7C/aAGuR3Qo1igOXMASAW36PH3hmd2LpGMaHb7bSaJaVHhcUNupmLhVfWcOra2
         WjAVZ+q7eq36yYgnQpuPvo1qbugMLDvhoQdL2u/sezlzVAO7aYK0I52WCBVxB56RAdyi
         XQET6vL+xhZFW9L6uRAxjSEXppyiI18VAK6yNqZWdDQBDFhFUO0UemdVn3HHK4bE8ysX
         ZfjVRT5jYVU1gbcCT17upoqEGDHDBuL5v8jrA9pKpkbha5qdNvIorOWE3prvetUMyanZ
         VN3PAcF+yUqM2Q+ANk+0o9DKQyzhfgPDx5JpVdG2qW9MuTvCckTv9YqCL4r/kqr2lJbh
         +MCA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=KJBxiPGn1zUBDbwx8J4ZlxtfwZEY3Y/US5k5OfdbjKE=;
        b=jNySgSujSCDzrAZlYi9xVza8ZmAclyhuU1eIm9m6uYNIsN0UwghOKnZr9oPPfNfZ2p
         r7cu1GSFOomcVwqgn5GVRm7Bsna+3w19rGwlTaqzc0OmPrXWq9eX/H83Iz0UUWZGupfC
         7e0ybVcfWGZF5y1hBROENgSKU5GzVjxUiZIhLR21HMwatAXTEsDcDOqwjIo3vBk4OhsT
         95p9CTtlYbZ6cRRDgCd3xZceRJeikvC+CVYh/IgVKL+DBPA/Z8baJmo+Nvnt95JoRYAi
         0xEsNy+LoJGmaAo9velwBX6UFfc3VtlgvZBZia1gPMUYQvd7qneLmNvBnpA/f5QKdEM8
         ShZA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RRcneQSD;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d32 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KJBxiPGn1zUBDbwx8J4ZlxtfwZEY3Y/US5k5OfdbjKE=;
        b=A//AaK7RQLwtSOU4e6GjR62n15L68EwIi39WUNgejNpZ6xxLlpaUpoqMd/MQI3woUq
         DrC5jEWKEApMN57xkMIyidNFD/OUjOkQ35APgEOrZJ+LhpmnSLEFE20jzyCKtlC1xrdS
         mZfpc58dXA+KdYu3zvwfyhG4niAVcs62KT9a7mD3IgrO4kuJYzXJlcMN/926TII4tWoU
         GRIbh01Du7YQ68tmAv5MgUvYfL0qazOmTbTCP5mnK/d4qS6RgF6XC6VevlGejZcR5ei4
         Qdd8tpTkGLrO3+QZ+x8U12oQocjuqIJO1LhK+zM/uWhE2y8rRe+fb7w+oME7FbpMczB5
         1BFQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KJBxiPGn1zUBDbwx8J4ZlxtfwZEY3Y/US5k5OfdbjKE=;
        b=Lc2fzrsVvpp2O/3yJZo31NW4LWhJTRPdwPVhFW4q7F88WZ3GzouwxKFE0sS3uL41wZ
         oyz9sHT5GX6F5ZpInUUW5hfmNWIWzlDYFMesEF/G2t901Hm9TEecfSqr4fkR4AhsdrVb
         EIEPOLD5IhNaSKEou0wXc+WnxqmZ0exI7IGUG/OZPrBvCjq/ND29S8tennHWDZnOZkhx
         mlOaKL0zEz6aXc0opgkYJEHIX57LaOpiuqgwbwtAGCBKc9Mo8w/VfrPzJib63Lv41UDe
         g7vNDBjgnwFqjm9mqx/s5Z3Oh58rXlzjAyE8NeUr3md850v1tBXvH3rL9HfI0gnwxb9H
         ecfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KJBxiPGn1zUBDbwx8J4ZlxtfwZEY3Y/US5k5OfdbjKE=;
        b=tdPAITeLx7km61w9qg8eIodaYcQ980R16cntx8iYKhnEQNwSE/dJgCGR5ED7zGhheM
         FVpiLiXZ8fWaFF8Hw58YJpk8lPS301FP2taa+TGoHO46mLjztyOYw5MiZxwNKIB4oyAq
         Amp6s97zlj4TPU6j73C7j3Dg19XYmWxADg3LcHR/I6YBZnf5OE1ZnbKFCcbOg2u69Uax
         4/T7J+0ZBxCGClhqETvI4eQ/P5bxP23nm6aaFni8TShABtwYF/T2zcfDhYVegsy0VMl4
         lNlpQ0/2e8BX0FTEYGSl94JGKNksaubMeQLbPBVevYdOuaVXshxiYPsskZxcYymKeMeO
         Cnqg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5306DOgUd6RV45QLpFnvXU+59AIxvAj0oFtAwDg8jSwCSoYVli3n
	+5J7SWnVlqbUfUHVM62gfqo=
X-Google-Smtp-Source: ABdhPJztc78j1p3Iv6NUI3erawcGuZc7cXGrhAWBmkzSL6NpPqQoGoULbDza6FXvrlZrV3WRZiDT0Q==
X-Received: by 2002:a65:4347:: with SMTP id k7mr14532052pgq.186.1610744500244;
        Fri, 15 Jan 2021 13:01:40 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7583:: with SMTP id j3ls4881065pll.0.gmail; Fri, 15
 Jan 2021 13:01:39 -0800 (PST)
X-Received: by 2002:a17:90a:c705:: with SMTP id o5mr12461901pjt.64.1610744499384;
        Fri, 15 Jan 2021 13:01:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610744499; cv=none;
        d=google.com; s=arc-20160816;
        b=zIXTfcctZ/HKZebaZ2PG066ClJF/OPiLJNC0o/dZJIPyFyGN/55Qam8aa35BLUNUv9
         JSTx9mOgsLL5K7d7AnzzZcNg+rNHDfufUZLkVExL7XLS3XWRZ0qbAdMCCWjOaCer9cy/
         kaHbtmGRkQYyeV/Kcvac8S8/c5cC1hXDy8EBz8MM7ap2tiHwOD+m3balVUsQchrKBKzf
         XS5KEz/qKGiZ86jYoV3bnigkGMmJlzkcrS+OLK09KD4oihEQfArllSgT57uXWRllKRSl
         WpJxztcNUB+NUOz7oYjWA/axNaH6pPHGwC+4GlGvFI3T7Fdf8AGNFwPdvl3af47O1XSo
         58XQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Rw2hDfTe+mOrdjn0mjFiTbDIDipciz+JNoQG0iXK/9Y=;
        b=uCDVlvOrlhFpcACafhrxmtN22i2UvAiMmbwdS+4k/d/5D3CPE+JWBpkrh9HKp2fEzo
         GRx3GBwZAnkR4RYlto1Ema4yDnbjIx7bXwUEE5tkDTr6gyYs7h6udNW6y0Ap02/sVbDe
         YpDYFisetbp5TtbZkfwWAO+NZdF/TT3yaBjmaLw+9/pqLUmp5K7OuIUbARPCIGHZv9jv
         uuW80d1hPVuAq+aZvjdFuABQ8wC4JFrsTjeBqJmjYzGAWSKKcWwZQqN1TscRTiPQAi/6
         Cg048G1uQWGK6A52wNsw52JJ8d3e0ge8ko02dgLWlyfsfci/KqJz79IuLnHevJhPDk3k
         wV8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RRcneQSD;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d32 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd32.google.com (mail-io1-xd32.google.com. [2607:f8b0:4864:20::d32])
        by gmr-mx.google.com with ESMTPS id c2si746485pls.4.2021.01.15.13.01.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Jan 2021 13:01:39 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d32 as permitted sender) client-ip=2607:f8b0:4864:20::d32;
Received: by mail-io1-xd32.google.com with SMTP id q2so19122142iow.13
        for <clang-built-linux@googlegroups.com>; Fri, 15 Jan 2021 13:01:39 -0800 (PST)
X-Received: by 2002:a92:c692:: with SMTP id o18mr12608774ilg.215.1610744498720;
 Fri, 15 Jan 2021 13:01:38 -0800 (PST)
MIME-Version: 1.0
References: <cover.1610652862.git.jpoimboe@redhat.com> <CABCJKudgPc5FFAD5BKX2dK7BJYs_Dpa_JRFgKgGh8b2Xs6khUA@mail.gmail.com>
 <20210115195226.uiclol5lji3tuxgx@treble> <CA+icZUXPiE_ES4V7SbKs6Et9nJua5j4HhxFcBjgzvyttaxszDQ@mail.gmail.com>
 <20210115205920.oknluuroxlhkxd2c@treble>
In-Reply-To: <20210115205920.oknluuroxlhkxd2c@treble>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Fri, 15 Jan 2021 22:01:27 +0100
Message-ID: <CA+icZUWOSNAff5ZmxjQ752Lw02dvYo-mFwvOG87bYtF2EzfFnA@mail.gmail.com>
Subject: Re: [PATCH 00/21] objtool: vmlinux.o and CLANG LTO support
To: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Sami Tolvanen <samitolvanen@google.com>, X86 ML <x86@kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Miroslav Benes <mbenes@suse.cz>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=RRcneQSD;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d32
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

On Fri, Jan 15, 2021 at 9:59 PM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
>
> On Fri, Jan 15, 2021 at 09:19:16PM +0100, Sedat Dilek wrote:
> > > > vmlinux.o: warning: objtool: balance_leaf_when_delete()+0x17d4: stack
> > > > state mismatch: cfa1=7+192 cfa2=7+176
> > > > vmlinux.o: warning: objtool: internal_move_pointers_items()+0x9f7:
> > > > stack state mismatch: cfa1=7+160 cfa2=7+176
> > > > vmlinux.o: warning: objtool: strncpy_from_user()+0x181: call to
> > > > do_strncpy_from_user() with UACCESS enabled
> > > > vmlinux.o: warning: objtool: strnlen_user()+0x12b: call to
> > > > do_strnlen_user() with UACCESS enabled
> > > > vmlinux.o: warning: objtool: i915_gem_execbuffer2_ioctl()+0x390: call
> > > > to __ubsan_handle_negate_overflow() with UACCESS enabled
> > > > vmlinux.o: warning: objtool: .text.snd_trident_free_voice: unexpected
> > > > end of section
> > > >
> > > > I haven't had a chance to take a closer look yet, but some of these
> > > > are probably related to
> > > > https://github.com/ClangBuiltLinux/linux/issues/1192. However, I can
> > > > reproduce these also with ToT Clang, not just with Clang 11.
> > >
> > > Thanks, I'm able to reproduce these.  Will take a look.
> > >
> >
> > AFAICS, that misses the v2 diff (see attachment) you sent me when
> > dealing with objtool-vmlinux and clang-cfi.
> > It does not cleanly apply with the combination of your objtool-vmlinux
> > Git and clang-cfi Git.
>
> Patches 11 and 12 should in theory have the same functionality as that
> diff.  I just refactored the code a bit before posting.
>

Just realized that when looking at "objtool: Add CONFIG_CFI_CLANG
support" in your tree.

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUWOSNAff5ZmxjQ752Lw02dvYo-mFwvOG87bYtF2EzfFnA%40mail.gmail.com.
