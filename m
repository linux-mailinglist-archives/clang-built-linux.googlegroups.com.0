Return-Path: <clang-built-linux+bncBAABBMPBSD2AKGQEHRRVEZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D47719A51F
	for <lists+clang-built-linux@lfdr.de>; Wed,  1 Apr 2020 08:12:03 +0200 (CEST)
Received: by mail-ot1-x33d.google.com with SMTP id k34sf19975222otk.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 31 Mar 2020 23:12:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585721522; cv=pass;
        d=google.com; s=arc-20160816;
        b=PWg3/Ty2fCXdLyZhN1DJ67owdQczO0iBIRweczU9dF+EgVWG3BmRKH51EaIeOShrqb
         qadnfZdPm2dEsCptTYjwFfZpKsjhcQe8fXChpCEQHjb7tNy6T1d4igh6TgqSkoXKhAmA
         FWJFjg/dDrE4wxLwqfuoNWbOqIyClXsavnWEHtVK/it+HlCbtMmfmTARQOaadIW8PXEn
         juG5TAgR8BfBzRVwncxN3VVIS30xqeR/yO5v60P5Z7SiendTkqDEy0wapLlZW5xSY45g
         x6xZjAb5ZEObQThOZd0PQs8diq7qpefNHd3IyCsWAanQ+q8VbharrA0Ur/RcNldifxcv
         NH1w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=8PR+/BCBsRNYcdZVJK87CETvux/xSG9WudmIqtqQvQo=;
        b=IdKYcro1GPbmEbewzMh52/ppllKHM4S8M8HUbZ7xXkhQtE3a26tCWhHDU8djGB5P3z
         Oj8Rv80LfEs0YfpqlQUrgGegEOq/O6YR4/RcP1gSmQbBvNLfcuJP/6ocqdmooH6NBTJc
         qg3P+NE0CiZ1ZJuRLLt/eVcr2a6hOA/9C5fidF1Ru1YRCsT6JxGUIA03/rQ6Suc2fDK8
         jNSAjQmGl8NwFHc6gq2ziTVJu6kr9Bj3qBQyitbewhYQYEofeSwBn2qzBhkDvCFPqrkb
         0rZWvV8yiaG5+9H42XwrV4FMGeVTKQ7Dg8hLwfqSgLO2k8FCslRsAgOQ4+8sv/0bgH4I
         mQhQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="mPud/LiN";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8PR+/BCBsRNYcdZVJK87CETvux/xSG9WudmIqtqQvQo=;
        b=J0fUAPEInHIOuTvoRtEO6Wrjo7XwP4zdIhUYwfuGXlMh1YaiwJ7gBPM+3kMm1cVsim
         eUBGBZ5J2g9FUijnltl6TJmmbENffdxiS21qHyEq4Qzn3SR/Rk8QWTKNuxTl38U8PP/U
         uaEH5F8Daobov8mTAT9jRhucBI5MODZUw/Tttu590d1FzxQUKyXmotB0OxuV6sWyuIm2
         JvoYyqJ0lfwcWeZzmhsBQadJpzbHuHzT1Coo86yJw63pDvWiI86lx8wcaAdRF861Jh2T
         riOhtRsINlE3WWQOb7YSfui5QNM/iNEt7fXkD/HI5mq/qXHY2BqK63eD/4v90kWClkvC
         hZNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8PR+/BCBsRNYcdZVJK87CETvux/xSG9WudmIqtqQvQo=;
        b=LcqLehYartkWtkz8BdVuBmGc/KITvk7R99j4mOYT5hMM6QVZizZY+e3mjDMCaIPtnt
         LA3ZIrXabq5/ywJbfpCWo5Ympk3bjx9BZpfreWNe/5D3WxE0RIm89RP8+i0rhJNx6v0Z
         N8UUoTcJp4CJ4A7gllcv4RuyoVA7CH3aHyOjqW5j2tIrAN28Z9+z800QGyYGhPURANLK
         PScswekME0rsj02qf14YWofmFFlQWiyxfSHKt9QLOKXnIro7/1dVgO3dkhVnNPs1N5YC
         w/+ZyZHTCw9batk6JC9AyQiQ/oYsOAvFjpDASHoDkNs844uvKB+PmMqti4P/kw2VGJ1r
         W1Rg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuanIQI1Jt00qGYtYFT/EUDvsRkEJcAmEeDWmQasNW0s4fs7jpPc
	WbD2rLs7D7wuLdI+SB7tayw=
X-Google-Smtp-Source: APiQypL2oPIrbmV92xjTHhSdjKErtTkH11+w29c5mVXtObHYR10kxCDhv//sBTm7WLtY1gfvefk4SA==
X-Received: by 2002:a4a:271d:: with SMTP id l29mr577356oof.18.1585721521743;
        Tue, 31 Mar 2020 23:12:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:467:: with SMTP id 94ls1354499otc.11.gmail; Tue, 31 Mar
 2020 23:12:01 -0700 (PDT)
X-Received: by 2002:a05:6830:16cc:: with SMTP id l12mr15838841otr.172.1585721521333;
        Tue, 31 Mar 2020 23:12:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585721521; cv=none;
        d=google.com; s=arc-20160816;
        b=VEoHByIZ3I6tvZu5bsGKFOJXAeaQliHw0GUWAsq1UFo8WrTg3IpD9M8UE0T5No7mfz
         fIn/A0m3m2VG5ObOYSFjGjp5OX31a5CarnXHLCLnHxCG2B+isdhcIaBZjSvQO5Tvj/yI
         nV83bTaq5CASg1dpo+5dId7TrBfLM3yDm7MQtb9VbZ7Ni4AXve3ovG9/Jo881sYJuj7J
         IMeUP4o3p/GgiqfZaHDp1mj2PcGG2l+fOR+7hXI/N4XToIBequjsqbmUhRX3zlvGUYhL
         MFH4RM54EioZAf8sYbJD3hqLvv0M/ytwJcYPEJGQntLl9NGVBVDoWmMvY6ByU7qDxzXA
         MrlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=R55qrFxMB1D2pHAEH2G7LutEbvVqxktsxI6xh1JrVFw=;
        b=A7/5aC35/j5bXC58fDNFl0kUqxIejds5G8wB+sswUUELWbLRsFXim0YwendyEQoWAA
         qq0nGFVRhmNMWhqQJM4auhZNclaE1tIIGIvqMKIr0kVJFNwdqnTYwBEjmojNdOC3heQa
         ewTkt7Eu8+q4a5ZdBzwXWrLXrr9Pj54QXqefe7yR+uhIwr9tqjnLe7xFjGyrBQqirgfF
         itygcGgijkaWm12X53LeyyCZz14P1S73aByZdNePWWXKB8tJiBcv85MfuMNwelXN00HW
         OvmtMyWUFMZYxcvqH3vN570VCu08nijlAYxVKkXGlF6XQ1eqprVx/hd1xt/6qINswNwO
         K8mA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="mPud/LiN";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-04.nifty.com (conssluserg-04.nifty.com. [210.131.2.83])
        by gmr-mx.google.com with ESMTPS id s12si92825oth.1.2020.03.31.23.12.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 31 Mar 2020 23:12:01 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) client-ip=210.131.2.83;
Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com [209.85.217.49]) (authenticated)
	by conssluserg-04.nifty.com with ESMTP id 0316BTSF016960
	for <clang-built-linux@googlegroups.com>; Wed, 1 Apr 2020 15:11:30 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com 0316BTSF016960
X-Nifty-SrcIP: [209.85.217.49]
Received: by mail-vs1-f49.google.com with SMTP id u9so334416vsp.6
        for <clang-built-linux@googlegroups.com>; Tue, 31 Mar 2020 23:11:30 -0700 (PDT)
X-Received: by 2002:a67:6542:: with SMTP id z63mr16010836vsb.179.1585721489076;
 Tue, 31 Mar 2020 23:11:29 -0700 (PDT)
MIME-Version: 1.0
References: <20200317202404.GA20746@ubuntu-m2-xlarge-x86> <20200317215515.226917-1-ndesaulniers@google.com>
 <20200327224246.GA12350@ubuntu-m2-xlarge-x86> <CAK7LNAShb1gWuZyycLAGWm19EWn17zeNcmdPyqu1o=K9XrfJbg@mail.gmail.com>
 <CAK7LNAQ3=jUu4aa=JQB8wErUGDd-Vr=cX_yZSdP_uAP6kWZ=pw@mail.gmail.com>
 <CAKwvOd=5AG1ARw6JUXmkuiftuShuYHKLk0ZnueuLhvOdMr5dOA@mail.gmail.com>
 <20200330190312.GA32257@ubuntu-m2-xlarge-x86> <CAK7LNAT1HoV5wUZRdeU0+P1nYAm2xQ4tpOG+7UtT4947QByakg@mail.gmail.com>
 <CAKwvOd==U6NvvYz8aUz8fUNdvz27pKrn8X5205rFadpGXzRC-Q@mail.gmail.com>
In-Reply-To: <CAKwvOd==U6NvvYz8aUz8fUNdvz27pKrn8X5205rFadpGXzRC-Q@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 1 Apr 2020 15:10:52 +0900
X-Gmail-Original-Message-ID: <CAK7LNAR0PPxibFVC5F07mytz4J2BbwQkpHcquH56j7=S_Mqj2g@mail.gmail.com>
Message-ID: <CAK7LNAR0PPxibFVC5F07mytz4J2BbwQkpHcquH56j7=S_Mqj2g@mail.gmail.com>
Subject: Re: [PATCH v2] Makefile.llvm: simplify LLVM build
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Sandeep Patil <sspatil@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b="mPud/LiN";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org
 does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Wed, Apr 1, 2020 at 3:39 AM Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> On Mon, Mar 30, 2020 at 11:25 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >
> > On Tue, Mar 31, 2020 at 4:03 AM Nathan Chancellor
> > <natechancellor@gmail.com> wrote:
> > >
> > > On Mon, Mar 30, 2020 at 11:58:19AM -0700, Nick Desaulniers wrote:
> > > > On Sat, Mar 28, 2020 at 6:57 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> > > > >
> > > > > I also had planned to provide a single switch to change
> > > > > all the tool defaults to LLVM.
> > > > >
> > > > > So, supporting 'LLVM' is fine, but I'd rather want this
> > > > > look symmetrical, and easy to understand.
> > > > >
> > > > > CPP        = $(CC) -E
> > > > > ifneq ($(LLVM),)
> > > >
> > > > Yes, a simple if statement is much simpler than the overly complex patch I had.
> > > >
> > > > > CC         = $(LLVM_DIR)clang
> > > >
> > > > Do we need $LLVM_DIR? Shouldn't users just have that in their $PATH?
> > > >
> > > > Also, I think we need to support suffixed binaries, as debian
> > > > distributes these with version suffixes, as Nathan points out.  Or do
> > > > the debian packages install suffixed binaries AND path versioned
> > > > non-suffixed binaries?
> > >
> > > I think the idea here is that ultimately, the suffixed versions of clang
> > > that Debian has in /usr/bin are symlinks to binaries in
> > > /usr/lib/llvm-#/bin; as a result, a user could say
> > > LLVM_DIR=/usr/lib/llvm-#/bin/ and all of those tools would be picked up
> > > automatically. I am not really sure what is better.
>
> $ sudo apt install clang-8
> $ which clang-8
> /usr/bin/clang-8
> $ ls -l `!!`
> /usr/bin/clang-8 -> ../lib/llvm-8/bin/clang
> $ ls /usr/lib/llvm-8/bin
> <non suffixed versions>
>
> Ok, so Nathan, it looks like we don't need the version suffixes.
> Instead, we can be more explicit with our $PATH, and only add the
> above (and bintutils).  I was thinking supporting the suffix was
> required for our CI, but it seems like maybe not.
>
> > I periodically build the latest llvm from the trunk,
> > and install it under my home directory.
> > So, I just thought it would be useful to
> > allow a user to specify the llvm directory.
> > Of course, I can do the equivalent by tweaking PATH, but
> > I hesitate to make the non-released version my default.
>
> Respectfully, I strongly disagree.  This should be handled by
> modifications to $PATH, either by your shell's .rc file when you
> always want it, or exported for a session when you want it, or
> prefixed to an invocation for the duration of that command.  We should
> not have a new variable just for the path of a few tools.
>
> Rather than `make LLVM_DIR=~/llvm-project LLVM=1`, you can do
> `PATH=$PATH:~/llvm-project make LLVM=1`. (or export it manually or via
> your shell .rc, depending on how comfortable you are with that
> version).
>
> > Having both LLVM_DIR and LLVM_SUFFIX seems verbose.
>
> I agree, so maybe just LLVM=y, and we can support both non-standard
> locations and debian suffixes via modifications to PATH.



OK, so we will start with the boolean switch 'LLVM'.

People can use PATH to cope with directory path and suffixes.


-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAR0PPxibFVC5F07mytz4J2BbwQkpHcquH56j7%3DS_Mqj2g%40mail.gmail.com.
