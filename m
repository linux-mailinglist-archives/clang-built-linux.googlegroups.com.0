Return-Path: <clang-built-linux+bncBDRZHGH43YJRBJGF6D7AKGQEPYRNDOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x840.google.com (mail-qt1-x840.google.com [IPv6:2607:f8b0:4864:20::840])
	by mail.lfdr.de (Postfix) with ESMTPS id 195632DDD4B
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Dec 2020 04:31:49 +0100 (CET)
Received: by mail-qt1-x840.google.com with SMTP id a22sf785526qtx.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Dec 2020 19:31:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608262308; cv=pass;
        d=google.com; s=arc-20160816;
        b=mNXIyh3T5q3i0GqPaCrAKHrcEjSpuLm/H/+8dOz7Sr+gxK8Tc/CDiKylddIkqlTsVU
         5JDk2IFxvF0VDB45Hp7/Clj7n2/1GJPayCSM+nY5DDs2sstexUT9JuVLJR59d/M8MCGq
         bu9QBG8dYf3oavLYJ+nnbC45IMHQwC7JbZuYD1NPS4fScKUAqzc5p224JLxidsj/n+3e
         RV4ZsA15JH4pmls+RMDloQtDE9cM3XP4s4Qt1QVQRIBt9odY4eZ4RqMaRrFXu7mubsvs
         rzq9n26aiUgfNfsSlBwOxKkQ/kzs6C/2Zyu1rhmyOjAhLK6IDgXmtkwQtHOSR7MyyAnp
         NeUQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=qBjmtpRZGWT7/Xpxjp0Fr+PhVZrR0xvRfj+hLIJSlVo=;
        b=z7fAXcml9sT7dHIzoL8g+baQ94jPZbh+RXqHC7A9YmqnUpGdEqSnKtcalhxBzDdUYZ
         HX8aWMKdif2DKrHkYDlTqqXxx37oSFLfm94rUSMkdg0Y1MvFTQ1q/TIplmo5BUERcW1K
         Z8uBErzrzbrXGn82F1hKS/KgU7YIbXGU9YXPA8/j31ctlLQksArfk0Gtl7H1XU9KfNpH
         SIz6ev8fMgJyCDlgSL1ZM7MREpFJVadOMO7bpIGM/YOIaEx8+Fb+sAHvmswNkiuUMcf9
         YJllx3nonjA7/f8cNHQlKIi+lbusaFkkN52Y25IApWfzYVDA66qtsqvq4HIhk2mVOXT5
         KgIA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BGDeqVqg;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b30 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qBjmtpRZGWT7/Xpxjp0Fr+PhVZrR0xvRfj+hLIJSlVo=;
        b=kVplo13zIUDSVPyHTwgx/de/XV+Dx9wGno8YhTqyiSn+JDEdiMppd3efI7YVFtxBhf
         J1F1ecahuy7hSDQtL5woJPxzWkW6liYeGe6BD5kDiWZ67OamxNVCql6ha5yCmem6gHzV
         A5rwbr9EoIoZlgwXL5BYq7qqA9WiT1I21FfQpoumzz/1eFkvfmriyFdSkBeJXLhWOc9X
         s4pDaIkrnLqPgfDSUz5oAV6sCasgKp86DQs+LJ0YNMWSp6NWwbaVo6Xu6v0O6zWKxv2s
         N/+7VgtWUXvGxzZDtv5XGz3mQrFJAz+AMnUQpgG9t3E3ZqKLSJovrh0JebGOi9p4UjOU
         N1QA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qBjmtpRZGWT7/Xpxjp0Fr+PhVZrR0xvRfj+hLIJSlVo=;
        b=meaZSyKroSGZsAxj7V7Frf0GB/QQ8UTVpF+wiSpzQ8BZzD53q2JA3JwfmBoRJjlHU+
         OJO9BXqMqw1ROvEm/o47QDosZ/EKiLzMDx9yOdIZr7or8J+1aKRujkgHaOldkim/xeVF
         ZyAKJj9plYmLMAQpVxipJh8ya9Rsvz2HKPYwBRgoVqVGV4YsblwuDFZ+k5qoBYNa12zl
         YeYbBycHbI/YQx65w8WaSmTicFD8nRwznMB46t0dO+PRgaExHDrH4jWQCcmcgixi/Mtc
         Z358YkHOut/ju9/oGvNW5r9rboPGdCAhpQVyd1FOFkaAx+f87j5YUXiWDMhIutYhloIV
         UEDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qBjmtpRZGWT7/Xpxjp0Fr+PhVZrR0xvRfj+hLIJSlVo=;
        b=nHRbM3PXJeqDlvOEzIsU8gPWC91umDqbJqx42ZwFTQUqhMjkeI8ue/YSL5YfTWGyvK
         JDF6XKFfCjr2+CU4Nl556DHwNGKBB+rKrnBkhMRmb6Qj0eog0xhMc8rZQXlLhtHNVC1v
         S5uhpT94TCD3ew3cbOrxxdpCypyFkBjzZMvgOxlrUN8LQj2iFADqu1uytw7ImWGUpnax
         YgttXzUtGGwd8UoPhFLgAVNC6j7rIbCltFdGyWiEW/IlEgoupP6F1jltEkxfBqd6JZXZ
         bnHDZk1lapoyLwpQ8xWwdPm4wpRUYHmN2bCY0mLkQrxT3ltlOwMl8VNdYdm5nq7l3FMH
         tB2Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531fN6A6UIbLhzSw+4klrEJY0ROG5RkS9NKgqiZ5VhIM5fOCmD6T
	22R/zTz0TRQp/vLg9pBPL5Q=
X-Google-Smtp-Source: ABdhPJy3vOCD+AdsQdP/qDBpl1dLjM5KuUC4aNImZW0Go01oqmhCPf5P5G3KL/bWVWnay3CegpOY+w==
X-Received: by 2002:a37:63d6:: with SMTP id x205mr2781978qkb.21.1608262308162;
        Thu, 17 Dec 2020 19:31:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:562f:: with SMTP id cb15ls7019824qvb.1.gmail; Thu, 17
 Dec 2020 19:31:47 -0800 (PST)
X-Received: by 2002:a0c:8e85:: with SMTP id x5mr393647qvb.11.1608262307796;
        Thu, 17 Dec 2020 19:31:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608262307; cv=none;
        d=google.com; s=arc-20160816;
        b=bHMHKW0KMYq35MA6vu9Ks5uqxTnnQr3fi6ye6jkFnuQY94teuJPV7d0T2HLJ5HvC6m
         ZbfWNmxpeAD78NEvHjaNkIslax+4A/guWG5bWORVJnujzZvP1kGfo4Ww0LVDPqDyBW7Q
         wJy2Yz2jG44k00PELw4s+dywWzSVBtyyADOWZ5gV+EzWwoQDG6vBE0sY318/Q3RZQw4x
         NENN9MnsT1zGieSr0EjbDlHakewcSQ/V47dt01PZ2IxIqIfZyCVY9aqC3ZnDDNziELwp
         P/FP9oOZ2Vw1AkFZjhymYF0zk1whi46cqgggkUUX2TePL/AbFhwlSbCQ1a7k2EAub2xl
         oAug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ThANl8keVovxssa+E4sSSWUNAQHe9R0+iBJSgPR0CjQ=;
        b=lls6EmZ7pCo6QXO6JmAVqo3VvTR/mQLfTg7QuN14pkyk4qKjUYb5RkmmMbndZgEKfA
         htsA6a/yHfMc0gygJzaAy2jeEfYe5DWfDMGEl/IQLHzbq/ViFSlgwUMI/PbpqIn8CgDH
         jbxSiec9Z6aPdwJlbOwA5UpAaDyOdLmkrtVlRnOvN9yYSYXvJCVeQo+f1iGQL420l+aG
         3adcMScY0QRY5AE4k1vXY0UDIaReThAOcBBUQtj4+SZVUu35ua93gR3i2pSSdkl1x/RZ
         bZmJe80wXX8uPvTs0xtdYo0zvTUm2pEmRn98bL4DoW36+84HA/B9wkvZrMDAJYx6/XGL
         Jt+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BGDeqVqg;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b30 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb30.google.com (mail-yb1-xb30.google.com. [2607:f8b0:4864:20::b30])
        by gmr-mx.google.com with ESMTPS id m11si465253qkn.1.2020.12.17.19.31.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Dec 2020 19:31:47 -0800 (PST)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b30 as permitted sender) client-ip=2607:f8b0:4864:20::b30;
Received: by mail-yb1-xb30.google.com with SMTP id y4so729808ybn.3
        for <clang-built-linux@googlegroups.com>; Thu, 17 Dec 2020 19:31:47 -0800 (PST)
X-Received: by 2002:a25:284:: with SMTP id 126mr3402389ybc.22.1608262307575;
 Thu, 17 Dec 2020 19:31:47 -0800 (PST)
MIME-Version: 1.0
References: <CAKwvOdmuYc8rW_H4aQG4DsJzho=F+djd68fp7mzmBp3-wY--Uw@mail.gmail.com>
 <20200710062803.GA1071395@kroah.com> <20200710125022.alry7wkymalmv3ge@wittgenstein>
 <20200710225934.GA16881@localhost> <CAHk-=wipXqemHbVnK1kQsFzGOOZ8FUXn3PKrZb5WC=KkgAjRRw@mail.gmail.com>
 <20200711210317.GA60425@localhost> <20200728204037.GC1012@bug>
 <20200729063417.GD286933@localhost> <20201217214506.GD28574@duo.ucw.cz>
In-Reply-To: <20201217214506.GD28574@duo.ucw.cz>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Fri, 18 Dec 2020 04:31:36 +0100
Message-ID: <CANiq72=rFzxMyxDNkobdnMZohT_qT0KfGCincYBteyoJbtr2Gw@mail.gmail.com>
Subject: Re: Linux kernel in-tree Rust support
To: Pavel Machek <pavel@ucw.cz>
Cc: Josh Triplett <josh@joshtriplett.org>, Linus Torvalds <torvalds@linux-foundation.org>, 
	Christian Brauner <christian.brauner@ubuntu.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Alex Gaynor <alex.gaynor@gmail.com>, Greg KH <gregkh@linuxfoundation.org>, 
	Geoffrey Thomas <geofft@ldpreload.com>, jbaublitz@redhat.com, 
	Masahiro Yamada <masahiroy@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=BGDeqVqg;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::b30 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Thu, Dec 17, 2020 at 10:45 PM Pavel Machek <pavel@ucw.cz> wrote:
>
> Well.. not everyone has 32 cores in their notebook.

It is true that complex Rust, like complex C++, does have high
compilation times. But it all depends on how much one relies on
certain language features. Straightforward Rust code is quick to
compile.

For reference, some quick stats :-)

On a given machine, building v5.10 with a minimal config under -j3
takes 3 minutes. With Rust support enabled and 4 trivial Rust modules,
it takes 50 seconds more. "A big increase!", you may indeed claim, but
those 50 seconds are basically all spent on the shared Rust support.
The actual Rust modules compile very quickly afterwards. For example,
touching either `drivers/char/mem.c` or one of the trivial Rust
modules takes the same time in that machine: 10 seconds.

This is for a minimal config -- when you start dealing with
`allmodconfig` builds, or when you start having a hundred Rust modules
instead of 4, the upfront cost becomes very small per Rust module.

> Okay. I did some refactoring recently and I really wished kernel was
> in Rust (and not in C)... so lets see what happens.

Indeed, I think it is definitely worth it.

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72%3DrFzxMyxDNkobdnMZohT_qT0KfGCincYBteyoJbtr2Gw%40mail.gmail.com.
