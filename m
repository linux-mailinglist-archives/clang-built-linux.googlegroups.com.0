Return-Path: <clang-built-linux+bncBCQJP74GSUDRBX6LX3VQKGQEXN6GL2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3b.google.com (mail-vk1-xa3b.google.com [IPv6:2607:f8b0:4864:20::a3b])
	by mail.lfdr.de (Postfix) with ESMTPS id C9187A8189
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Sep 2019 13:54:08 +0200 (CEST)
Received: by mail-vk1-xa3b.google.com with SMTP id j8sf5252736vkn.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Sep 2019 04:54:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567598047; cv=pass;
        d=google.com; s=arc-20160816;
        b=STUD+NIMiEvxOvNIv9DswOplNVCNfHbDSoqyzZE3Fqk0XjjtTcy/fgl+ZUZ7KI9Bm/
         lepazYmb7vYXRn2e5Cr1xWTYkAbLS9kjXgP+TAKRNo80lcIybizbbhIaLYIj1HxcVDPM
         KLHol00Ichm0g6MIWp8pY/lyQ7zxa2lgm+AtlRlJ2bXOr96GjnQTtorZgVXemdfkNRrl
         u8HdhWBWNvYN75pjydPRxXz9CUI6lrFohkQqDWTjh2WWCUJUDjirQ0DuspKxWbz+IW+3
         UFnRklbsQOTwzEkggL3dmtC2Ixb73ozXCX0fzGvAOeBFkw2oSD57JAEQTTuqbi2v7+/9
         nOAg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=+OHNDICLSqz7LFEbPovT3nDbaWQQmF0aUr58IA3ldsU=;
        b=TJCVV78jcwIHQrZf743bCNoifOsH7JFTUmo+M4UVVYmPuaiDOqU6//vAbFG58Qzmmb
         l6JwoVIXOxbrhz9DpF7fBvjjfNdHFcbDxkXCAphkt/cMoQpJNlhmCfSzPTxKhu7PUd14
         x9WfMfj2SNGT3upbNaJcLugHfHIoSzdEvjG2kAQ0QpGb2QF8sUG/wYO9Uqcg+38GCCNV
         4uuDr25VNZM2pbr7fjdz0wSxeh8FNhxOq5I7J7O1dDhjwy4xwDxKDtAwWoedzsj3O1or
         rfMLCdNkJw8MfiKrR8kwwSo1iRk2gc6xiiAgRadP65oRv2cYl7hNEkE9JClbOy9ZAqVb
         vLqQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.167.170 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+OHNDICLSqz7LFEbPovT3nDbaWQQmF0aUr58IA3ldsU=;
        b=aZ/UpYPCj6jE62dz5xnXiKs9XzahEnLSYzGvow9MAEBxYxKBZ8rgTzz11TxJuAYAiH
         xd8wBCZ6fQiyqvvtKQeqf9H21mYf7pM+iJ4NABkSnb7Wfj8y+So2RkGoapGuU3jRx+oS
         VrTz3sOjb8UocjexwTJF/xw3PL3420eBFf+CyA3JgQvsJA6/A9nh4L7m8GmV+3lDGopT
         oV0J9P6FC+WQkNZvQd4OxC6xVXn9dO7TNic/beAMBSSrDxiOprAYyxp1Um4Bs7/h53rP
         5blQdXB7M+rTEMP1SA3EYN7r32eqw2as7SYVz39/FHieXXh12Hfz7+GbjkP44YTCXlcS
         0nLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+OHNDICLSqz7LFEbPovT3nDbaWQQmF0aUr58IA3ldsU=;
        b=HiSjB1q02l3ngRDlDTlobTJEnPZUX+gQ7F3MhDli/9hrdbf31XVtigFpTZyvlKHbIJ
         +WsIcHRwWlL1cq/H7nxtJWsvWikGeZulQRh0KdZkeareTCUgVPzqFjTIuZLyum/Bf8bK
         u0YU/fv3rM17j5YNCix/dSLwk3D/vTUOd2KhoP1kZzNO964MEG0VwKlG9R5Bx84M79ds
         6q4dkXXtGHmsWcBAycb9RiWpX0101qmReoMTt1PILY9GkY63INxDzqOExVKd+bC5h1OH
         CC7Yr8bpyDAjTik4vG8aH8sV8HwBccOiCPpcgg3ZXCaKcqgW/UWY3NVuN9IWLjNDToZ1
         D9oQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVRSthWKgimdICdt0XfIYpK91PgUiHOR26Bk5AT71gfkxF5sANd
	xZn6HTInDIlknb7jLoW+F0U=
X-Google-Smtp-Source: APXvYqzNSFYC37nw9uZn+bCdL19ArpBLp5NTnQflnHPbgRTkBZ057d9nsubuiiOlwskOPII+RkB2kw==
X-Received: by 2002:a67:fb45:: with SMTP id e5mr7820787vsr.190.1567598047583;
        Wed, 04 Sep 2019 04:54:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:211:: with SMTP id z17ls1726997vsp.2.gmail; Wed, 04
 Sep 2019 04:54:07 -0700 (PDT)
X-Received: by 2002:a67:f08d:: with SMTP id i13mr814562vsl.193.1567598047207;
        Wed, 04 Sep 2019 04:54:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567598047; cv=none;
        d=google.com; s=arc-20160816;
        b=UP+46rrHMlHs3bSNbBN3jrMwawsE6RtjqWHFgK3a0pQSTqbZOdkiQc1KAxF1XPXyR5
         ZZAd3qIdwX9Lfahnc4gmbCRHfucbLRSLsLcALIKXA/zqBnC9I038Cgo2E67HX+yRLg/u
         MN6zE1fqOTGWWl3Ltz+gY3hWxiYhHOr3niUvlhh6PvLYY/sea5NjQ8azfxYqWxd99m1v
         eoX8jEafGq3fRhxjaQ35iLgCGwE0K2IxL8EJZP0VnBiV+wUM6ZU/YZmrqCBidb03pd69
         wQb0VUytRyVAxKI0TNC4r0umt/I/oCPceYiKXR4Z31i+Ztv2UDnjbUgewjgbYiDsTGPm
         56tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=T69bo+UrOlt2glBHGVe76qsO1FE/ClOTc1fP/qn3ly4=;
        b=hvphfTSyDPl5BvzOFB5zEcJDwP5xRdtk10slEZqAR+P903mdg4eUn0CBOPk1ywCkwP
         EMVwtD4YI/xIeo7MtiWBiRoOqrlO8CtRLQeH8DPYeo3VocO+V0Opet4KB/Us6Orrvmfg
         MCGARk0LkmAMQmTkRAEbgAHyXeuy54oqFjw7NY6FAYw/L4D6nhhYKjWvGtGH51sdYSIm
         OZDk1aeBJTUXIo0o/2/fhY1g5ufhnYYCEL6AvnNsKY9Rf+vBX/CxekQcSnAZysQU8b9L
         dag4WIjsfrdn0RNGWVaKVhXhxSFlYFTrcjjqDq5O8/kpcnKQpVNxBLOjGfMe+D6Ho35u
         a/5w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.167.170 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com. [209.85.167.170])
        by gmr-mx.google.com with ESMTPS id y23si466073vsn.1.2019.09.04.04.54.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Sep 2019 04:54:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.167.170 as permitted sender) client-ip=209.85.167.170;
Received: by mail-oi1-f170.google.com with SMTP id b80so8697364oii.7
        for <clang-built-linux@googlegroups.com>; Wed, 04 Sep 2019 04:54:07 -0700 (PDT)
X-Received: by 2002:aca:f305:: with SMTP id r5mr2841597oih.131.1567598046606;
 Wed, 04 Sep 2019 04:54:06 -0700 (PDT)
MIME-Version: 1.0
References: <20190827145102.p7lmkpytf3mngxbj@treble> <CAHFW8PRsmmCR6TWoXpQ9gyTA7azX9YOerPErCMggcQX-=fAqng@mail.gmail.com>
 <CAK8P3a2TeaMc_tWzzjuqO-eQjZwJdpbR1yH8yzSQbbVKdWCwSg@mail.gmail.com>
 <20190827192255.wbyn732llzckmqmq@treble> <CAK8P3a2DWh54eroBLXo+sPgJc95aAMRWdLB2n-pANss1RbLiBw@mail.gmail.com>
 <CAKwvOdnD1mEd-G9sWBtnzfe9oGTeZYws6zNJA7opS69DN08jPg@mail.gmail.com>
 <CAK8P3a0nJL+3hxR0U9kT_9Y4E86tofkOnVzNTEvAkhOFxOEA3Q@mail.gmail.com>
 <CAK8P3a0bY9QfamCveE3P4H+Nrs1e6CTqWVgiY+MCd9hJmgMQZg@mail.gmail.com>
 <20190828152226.r6pl64ij5kol6d4p@treble> <CAK8P3a2ATzqRSqVeeKNswLU74+bjvwK_GmG0=jbMymVaSp2ysw@mail.gmail.com>
 <20190829173458.skttfjlulbiz5s25@treble> <CAHk-=wi-epJZfBHDbKKDZ64us7WkF=LpUfhvYBmZSteO8Q0RAg@mail.gmail.com>
In-Reply-To: <CAHk-=wi-epJZfBHDbKKDZ64us7WkF=LpUfhvYBmZSteO8Q0RAg@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 4 Sep 2019 13:53:55 +0200
Message-ID: <CAMuHMdWvD37CQmDcDQAFtxSGv+vXw_dzPMOv_mLVpiQ3EniFtg@mail.gmail.com>
Subject: Re: objtool warning "uses BP as a scratch register" with clang-9
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>, Arnd Bergmann <arnd@arndb.de>, 
	Nick Desaulniers <ndesaulniers@google.com>, Ilie Halip <ilie.halip@gmail.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Peter Zijlstra <peterz@infradead.org>, 
	"Paul E. McKenney" <paulmck@linux.ibm.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: geert@linux-m68k.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.167.170
 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
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

Hi Linus,

On Thu, Aug 29, 2019 at 8:31 PM Linus Torvalds
<torvalds@linux-foundation.org> wrote:
> On Thu, Aug 29, 2019 at 10:35 AM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
> >
> > Peter suggested to try WRITE_ONCE for the two zero writes to see if that
> > "fixes" it.
>
> I'm sure it "fixes" it.
>
> .. and then where else will we hit this?
>
> It's one thing to turn a structure zeroing into "memset()", but some
> places really can't do it.
>
> We use "-ffreestanding" in some places to make sure that gcc doesn't
> start calling random libc routines. I wonder if we need to make it a
> general rule that it's done unconditionally.
>
> Sadly, I think that ends up also disabling things like
> "__builtin_memcpy()" and friends. Which we _do_ want to have access
> to, because then gcc can inline the memcpy() when we _do_ use
> memcpy().
>
> We used to do all of those heuristics by hand, but wanted to let the
> compiler do them for us.
>
> So:
>
>  - we do want "memcpy()" to become "__builtin_memcpy()" which can then
> be optimized to either individual inlined assignments _or_ to an
> out-of-line call to memcpy().

You can do

    #define memcpy(d, s, n) __builtin_memcpy(d, s, n)

Alpha, m68k, sparc, and x86 already do.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMuHMdWvD37CQmDcDQAFtxSGv%2BvXw_dzPMOv_mLVpiQ3EniFtg%40mail.gmail.com.
