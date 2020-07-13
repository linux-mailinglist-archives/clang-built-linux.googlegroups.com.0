Return-Path: <clang-built-linux+bncBCYIBK4PW4CRBMFGWP4AKGQEBEEJE2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ADEF21E241
	for <lists+clang-built-linux@lfdr.de>; Mon, 13 Jul 2020 23:33:37 +0200 (CEST)
Received: by mail-wr1-x43a.google.com with SMTP id i14sf18805314wru.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Jul 2020 14:33:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594676017; cv=pass;
        d=google.com; s=arc-20160816;
        b=XRQ77GvTKd193hzIhV/9JYFh9vPMiZoCzwplqiMVVT4JRqt1uZSd59U98wk8UxVTpy
         6jeAYtkyV3VQWEcpBOsKD6JlsHBpaafU9Ldu339HOTEE0pG0LCSlL5eUsXH318ZW7yGo
         mmBvj0gAXMDrAOEryuyZ15K9N69dn4SuVMljDgnrk40tCY4ABNLT4IZX2J81VCeGiU4k
         LjkMRihMdg8mA/rTGOOBqPn03lT+BYXFqjmxzjLIIr/pF0QS58vMv4lugD/HtQH3/zPc
         9BNjKs2nnIAVq/9Y6y39gXmPbuXXVCw0BdiCilztZb7V0BVUBVEy9PY7h8Ud7m+kSotS
         JGBg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=cIGJeJ8oQ9gf/OA0nvbtWDNwftwY7ASvE0gNaSw9vsI=;
        b=RC821mg2rx89h1nLzXuC8RivW73i6j9RNs+GH40ic+qm/sPAZvQFdx8po13uDrohoI
         +KwTbz1ZO8/SayVvqw/0D6lwG0imUzOjuYt4Zp31pJJfkEh0s1yLCwz8msLOppVUmW+G
         s7DSOd3jcSKznsjrAjsZ+Nz5KHY4jPLy3jh5y/CeUkC4LdN3Fm1cWYyFSXqCmrsq6P1D
         X2hF0vTk/rn4GA0DLjiXIk8SBetssXM9A3bid28/9biEJnRTiRlVe5nKLij5dZk6zrbi
         boQsVIya0vUjj0yD6zyfZc/hGIf3oK1VlX+MRd3QwGz3R8FeeFXkA88aGFGkDOeqqpVR
         /jtg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of josh@joshtriplett.org designates 217.70.183.197 as permitted sender) smtp.mailfrom=josh@joshtriplett.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cIGJeJ8oQ9gf/OA0nvbtWDNwftwY7ASvE0gNaSw9vsI=;
        b=sNT4fJt+SAAA4Ou4Uru0ftm9ktLR9Y1A4NpkZKtDvrYCwRjdcgKypaWcGtg3wTyhVR
         /ameH7Jcem3RNgl9G5Q7JuEm8AtufhBYTMdq1wWNsFvM221SnpVDBhkkXjUKSXAc3VsO
         3LYW85eAyDztPvU5SctdutnXaDaUlpdz6oQrtSLelzV4x5yotx+mX7dYWXetBXQlQd/U
         Vqm00GQzI8xQ+jv5RhTkTOqux9aVYsb1ArcWmdPs3+t/74WEJ7UxeaJGFigSy/kUpYKW
         eKeU5OduZHpvpwLNwg6oAdwWHKCrrtyWmf0knbPcOxKlAA7oMVuQ1PVNFVt2IRBeQO12
         m5dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=cIGJeJ8oQ9gf/OA0nvbtWDNwftwY7ASvE0gNaSw9vsI=;
        b=kOFVO/oEK/zqZZrHfjiiFNoDzuSfxmsQFvwLNfhGnGsac4D4Fgp292gCd0VF+IAXaH
         377rYQlz2EcrWTvoPurBjoNXkf/ng/YEo0FjpZhwSuvIrH2XF8GWv+ByGZ/WHsQa4umD
         sINm/dTjqnQt5LOQps/lQfNku16a3zp6vkz3N3aseKeUgOrvdntzkcrGn0aHIeg14jwU
         oNHg9lr6aLqk8tuG48mPiObzUliY0Cl8QSEp55VF/0v9aD8gKjARKzLCoj8VRoaLxhym
         QtQrUKQ3tv0tXj7dWyYvAq4dp/kVpE+yPVis63BufqT4uGF8EFjF6zN9ljO1bfLVyUBW
         45Ng==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5333DrVJOZbftl+szgex2yjiZ/oQp/BK3UlvZL9DlLYWMoF6/X4F
	47YQDG0KLcsSCiOa0Q1j6Ww=
X-Google-Smtp-Source: ABdhPJwGuPrlTp8NA769660d9ni35IV1EQzgydrxxtgWWnpoIQ0eZl/sJlkkkUdJFLuhlCfzgHPCVA==
X-Received: by 2002:a5d:6748:: with SMTP id l8mr1591896wrw.347.1594676016939;
        Mon, 13 Jul 2020 14:33:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:6507:: with SMTP id x7ls2033187wru.0.gmail; Mon, 13 Jul
 2020 14:33:36 -0700 (PDT)
X-Received: by 2002:a5d:6809:: with SMTP id w9mr1574545wru.182.1594676016483;
        Mon, 13 Jul 2020 14:33:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594676016; cv=none;
        d=google.com; s=arc-20160816;
        b=rOVVgE80qNLygkvo5dO/eyDJxXCmGXn3QtRVPzMrbluIIjHBlvjy6sVj1QJRycK1dy
         AnCpzeMip9bqSOoJawnYwqTe/LejwwLhxx2rRxm9ChCcngf3sgzNb3C+Enfar7v3lSle
         +EmKMMvxXMe+BhS743BipTM78PTavWy1NxTPRYhhpzJeDAS8E0THzGdlGMOtFTjrD7jX
         3pq+E29ywPVUhzA8Xe9ICtQm+BvyggqWApwl1XYSUkNo8Vhp79HXLTBJ11UG8PdFAh5M
         2nLjuD2cdwzG1VFFqxqTPfURNUHkjmRcnBnsljZVs/Q5zHRzuo8a2wW+CpO+fdFuGIGn
         Z15w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=mCZnE0CJQqrHIch9BxgF7hKdt63z0p1z4KVvFNPvCag=;
        b=KTuCQgGEB1qaiq0H2Spm75Ja60e83GX2EnRp0Q2I1cgcZfGs3Q+ZBibyplKo3FOFVt
         RrFmuaUg6OrvRSaX3Oe/l7Ibr9Ia5aWbg59scqEdC/NWXo2fQbEbhfMSOzdVMSI5X9ST
         8MTAnXOWTwtQHuf+09EpmfVL7Sb07eZEuAYlXit6F1Hubb5O/QKrlLA/rU7Pj8VTpb0Z
         PwaAcvjERBjq2hiO8U2m5tD5NwBxE40NTVlCQtnsTYAbh1VU6ZEGIKlcEKoLXjF8WEe5
         KmUmZMvgxrPu/wda3Kjcz+bz5jXkTxnub64XQcQ4iinxexXF49KIh95d0NGvJ+0Pcsf/
         UeAw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of josh@joshtriplett.org designates 217.70.183.197 as permitted sender) smtp.mailfrom=josh@joshtriplett.org
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net. [217.70.183.197])
        by gmr-mx.google.com with ESMTPS id q193si40416wme.0.2020.07.13.14.33.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 13 Jul 2020 14:33:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of josh@joshtriplett.org designates 217.70.183.197 as permitted sender) client-ip=217.70.183.197;
X-Originating-IP: 50.39.163.217
Received: from localhost (50-39-163-217.bvtn.or.frontiernet.net [50.39.163.217])
	(Authenticated sender: josh@joshtriplett.org)
	by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 9F75F1C0002;
	Mon, 13 Jul 2020 21:33:30 +0000 (UTC)
Date: Mon, 13 Jul 2020 14:33:26 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: ebiederm@xmission.com (Eric W. Biederman)
Cc: Nick Desaulniers <ndesaulniers@google.com>, alex.gaynor@gmail.com,
	geofft@ldpreload.com, jbaublitz@redhat.com,
	Masahiro Yamada <masahiroy@kernel.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Greg KH <gregkh@linuxfoundation.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: Linux kernel in-tree Rust support
Message-ID: <20200713213326.GA16462@localhost>
References: <CAKwvOdmuYc8rW_H4aQG4DsJzho=F+djd68fp7mzmBp3-wY--Uw@mail.gmail.com>
 <875zarb7zy.fsf@x220.int.ebiederm.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <875zarb7zy.fsf@x220.int.ebiederm.org>
X-Original-Sender: josh@joshtriplett.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of josh@joshtriplett.org designates 217.70.183.197 as
 permitted sender) smtp.mailfrom=josh@joshtriplett.org
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

On Mon, Jul 13, 2020 at 01:11:13PM -0500, Eric W. Biederman wrote:
> Nick Desaulniers <ndesaulniers@google.com> writes:
> 
> > Hello folks,
> > I'm working on putting together an LLVM "Micro Conference" for the
> > upcoming Linux Plumbers Conf
> > (https://www.linuxplumbersconf.org/event/7/page/47-attend).  It's not
> > solidified yet, but I would really like to run a session on support
> > for Rust "in tree."  I suspect we could cover technical aspects of
> > what that might look like (I have a prototype of that, was trivial to
> > wire up KBuild support), but also a larger question of "should we do
> > this?" or "how might we place limits on where this can be used?"
> >
> > Question to folks explicitly in To:, are you planning on attending plumbers?
> >
> > If so, would this be an interesting topic that you'd participate in?
> 
> I have two big concerns about actually using rust.
> 
> 1) How large is the rust language support, and will each rust module
>    need to duplicate it.  I seem to remember someone mentioning it is
>    noticable in size.

There should only be a single copy, which could either be in the kernel
(if there's Rust code compiled into the kernel) or be in a "rust.ko"
support module. As long as you use the same version of Rust for the
kernel and all modules, you can supply symbols dynamically.

There are a few other steps we can take to control code size, as well.
In particular, there are tradeoffs between performance and size, such as
the amount of code in generics vs non-generics. (We also need to get
some further optimizations into Rust on that front, such as tail
merging.)

As for the size overall, given that we'll just be providing the portions
of "core" and "alloc" that the built code actually uses, and likely not
providing "std" at all, I would expect the size to remain relatively
small.

I very much care about overall kernel size, and I'm happy to help make
sure it remains reasonable.

> 2) What is rust usable for?  The rust type system will not admit
>    doubly linked lists (or anything where two pointers point at the
>    same memory) unless you are using an unsafe block.

There are libraries like intrusive-collections which implement
kernel-style structures with potentially multiple nodes in the structure
that put them into multiple lists at once. I would expect us to use
those (or in some cases implement our own). They don't need to be
written in C, just unsafe Rust that's wrapped up in a safe interface.

Just as the kernel has a variety of higher-level interfaces and data
structures that make working in the kernel sometimes *easier* than the
average C program, I'd expect that we'll end up with common Rust
structures that do what people need, rather than people reimplementing
their own.

- Josh Triplett

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200713213326.GA16462%40localhost.
