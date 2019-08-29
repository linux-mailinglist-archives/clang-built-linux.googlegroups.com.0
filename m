Return-Path: <clang-built-linux+bncBC3ZPIWN3EFBBKNCUHVQKGQE2BN46II@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id AE7A7A29BD
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Aug 2019 00:26:49 +0200 (CEST)
Received: by mail-wr1-x439.google.com with SMTP id b1sf2827430wru.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 15:26:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567117609; cv=pass;
        d=google.com; s=arc-20160816;
        b=odB7zSH0q0nl05H007f85foMwRJgaCtINBuvFua5Fkq0nZ7Vwj/4VcfC1rKzVw5b2U
         szHMlUItumVazNaN21BtHGwT4HDghveR3xeOeJUHfjUVPlDGcFvf2Zh0jMUpXaNPpoWn
         va2HXx1vJJyGR13QUGrH+wtvLD2mqtIr4X0UD+UunA16/kc8Xo15XNZD376PQZz/WMfd
         bV07mBcZBvH3SxAqxRRUo0SKujIWD3Efeeiu4rgOF3c6k3SPmGsCbgOWYwtcBt9TDOVY
         y5vA6A8ikNbaKwqG/7CUWmK2VZj+YhGydUfryox2Vex9f6Y91RbUA44qBWxYKqIfj64H
         33RA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=2pUNCQH+GMV3Bexp/YyEkvwtlUuohKfNhGL2GjCxDjU=;
        b=cI+YQjaezjueYArbMyAD+LfB0uqZcWzNVkndOBe34zBghJK4EWhrx/yDheSLlUBCug
         OSEo93VQl/VlqJ9Mj1jpWz+MM3oC2+sW/KMczAEEON7YCvCqV3mZW2l7HV8xy6RyYljy
         nVu42R7Pa0PNDuDaLKQ4VvAoinIga3aTRpr9uxQYl5SxDsVROYZUIX1w9dgd/QwGxQkI
         XyXCA7/DsmgpZPwPq9ZSajIY7AEcUXwql+zxIafZqhYolXV6gccAxjriXSfwxm2c70Yo
         l2pVbgyJ9ZlS4G+sKmAi+u0xIzfLKgWEINBbFe1sroU1L+7TvIibteBy9xRWByDJqPes
         xIrw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=BP0dXFaA;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2pUNCQH+GMV3Bexp/YyEkvwtlUuohKfNhGL2GjCxDjU=;
        b=rYpluZPPmUs0/Ev27p50TVGXEpYC7rbnFknC7XRMwr5Gpj2WWEr+klHaqQqLCIWD13
         orf0ZUPQ7jaZyfxPED7LqazcUcx766JRKrRriWmwm7h+29Th34uV5izQPlDbHCkvJKVr
         lJ/6y2SZzgdXm416ume1ekGYF4ZerjfdmzJx/KtISbiWY+4TXwSwjiA5US20X4/YLWvi
         TL3EId4WQEHUIm2nxZHOIPAN8JIJCYstSANyq64lq3RtFqqohmVIV04LdP+KskXHKEQh
         PhaicwctbNxHfEbpiD5AKBWobGV1HSpYfquULGvZkKBfzDztdygKfvi5/gabOfz4gK1E
         JkZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2pUNCQH+GMV3Bexp/YyEkvwtlUuohKfNhGL2GjCxDjU=;
        b=KHxzpSqw1zEwQRzMKAyVb7/GOz0SHrcDI1s6ekFNAL5RoYx/Ynt1S/W7VAGyZnfWI2
         9DD7os+nPaH0e9m6Mz0dyzWtV+ZoJzgRlXBPfCXOK83lgIU1msrpBuqqkuPeXBdXTcrS
         CdxzMUzeHhRy9g08Dy+KqEobh5nL3UjupQqIDBWjinSpEsDOAC2H8V3lskp5Dey8SdbG
         85s2VYOoM+La4C9kPLVqxIBM01TvBMJmNHyKgKcVbmQjlhxXt3M/4q9DdNAzRpI7ED6v
         hD5HMYJcRpWv3kbab9OaoFlvLYdvkrPLMKgnBc6AT+dDFgid3QeLqJ3l+ED5Q7QZtTfK
         ngTg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWVjkV6NND6shfKfwiviWvtnm0t2cXfdNTcW8nJY2pFCMUTBwnM
	gDd87ioEspleom/PP9qlrS0=
X-Google-Smtp-Source: APXvYqyBlTRLuMJHXq6MODCneWStQ1I2cH+srNw/KOH3pQT8GAMrUv2Xd9PewmDYSdXfROwEA+nxAA==
X-Received: by 2002:adf:ff84:: with SMTP id j4mr13730303wrr.71.1567117609421;
        Thu, 29 Aug 2019 15:26:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c141:: with SMTP id z1ls1539993wmi.5.gmail; Thu, 29 Aug
 2019 15:26:48 -0700 (PDT)
X-Received: by 2002:a1c:4b0a:: with SMTP id y10mr13203696wma.78.1567117608883;
        Thu, 29 Aug 2019 15:26:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567117608; cv=none;
        d=google.com; s=arc-20160816;
        b=ZV3Sx5znCyLykAEQrEz4wwEWnggFogWVMNw6FAE1l8APwTx3sGdoQmaYgNGuy742Wp
         JqH2lWoOMJkcsOivOAcrUYVwNHuZVnItiWv1DV2vK+sVggTsanNX7uS5IxZnIJWkFK5n
         a5cQ9bq8mTVh4qrHMDRGuRLiPmBjGKN8DsRQlh1FA39w8lfSp/PShyR7pVxfXmX43EE1
         suS7K3rPOVvEKccGiX9Pnu1Umj/c3g5TGBYt+Rgd7aDaVo8dVpdJa799tD751AjHZPTZ
         VhkCpd8oz7PgnNlnRMNOwFLfN9LrgxfM2uMhcfFD5rxQunA6YM/YjzawEBfDjpuFKny2
         B2LQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=d1p6twckm5kR9a3U7GQAO7MCvELV5xge+cqb1gwqLOM=;
        b=tFktEuQ+6FBuKI9pD6Qh5Rqh9CTT3ajASrukfwd+LTh1Ob9agOZrBuO+xiUXz79Oc3
         /B9UhMgDA2w8ZGq6K4BlGpUIujhQapEmbnZAbM5+iXGDdyvuAp0nbKlMiKWcV322vrcu
         hANj1UXeHYPpU9jll/gjfYsgT0m7a5e+aJRBgxTLLLT2vHdZ/pxS+TZzzxySPNAv1z2K
         xetTTRYrKqwu7dvV2oZ53nEpkHo1OECXlAkLQjWEICcSNc7k3Cru73Ss1zkDw7WMiyn3
         vh/JM+0P5qEofhe2xW5FyhjEp3PqP9VEg6DtahXR5oy5Ii99t14JFGvVb8i/cFCZss/3
         3d1Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=BP0dXFaA;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com. [2a00:1450:4864:20::243])
        by gmr-mx.google.com with ESMTPS id s194si273936wme.2.2019.08.29.15.26.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Aug 2019 15:26:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::243 as permitted sender) client-ip=2a00:1450:4864:20::243;
Received: by mail-lj1-x243.google.com with SMTP id x4so4584857ljj.6
        for <clang-built-linux@googlegroups.com>; Thu, 29 Aug 2019 15:26:48 -0700 (PDT)
X-Received: by 2002:a2e:9887:: with SMTP id b7mr6803786ljj.45.1567117607941;
        Thu, 29 Aug 2019 15:26:47 -0700 (PDT)
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com. [209.85.208.171])
        by smtp.gmail.com with ESMTPSA id q24sm583784lfa.94.2019.08.29.15.26.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Aug 2019 15:26:47 -0700 (PDT)
Received: by mail-lj1-f171.google.com with SMTP id u15so4601957ljl.3
        for <clang-built-linux@googlegroups.com>; Thu, 29 Aug 2019 15:26:46 -0700 (PDT)
X-Received: by 2002:a2e:88c7:: with SMTP id a7mr6938647ljk.72.1567117606631;
 Thu, 29 Aug 2019 15:26:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190827145102.p7lmkpytf3mngxbj@treble> <CAHFW8PRsmmCR6TWoXpQ9gyTA7azX9YOerPErCMggcQX-=fAqng@mail.gmail.com>
 <CAK8P3a2TeaMc_tWzzjuqO-eQjZwJdpbR1yH8yzSQbbVKdWCwSg@mail.gmail.com>
 <20190827192255.wbyn732llzckmqmq@treble> <CAK8P3a2DWh54eroBLXo+sPgJc95aAMRWdLB2n-pANss1RbLiBw@mail.gmail.com>
 <CAKwvOdnD1mEd-G9sWBtnzfe9oGTeZYws6zNJA7opS69DN08jPg@mail.gmail.com>
 <CAK8P3a0nJL+3hxR0U9kT_9Y4E86tofkOnVzNTEvAkhOFxOEA3Q@mail.gmail.com>
 <CAK8P3a0bY9QfamCveE3P4H+Nrs1e6CTqWVgiY+MCd9hJmgMQZg@mail.gmail.com>
 <20190828152226.r6pl64ij5kol6d4p@treble> <CAK8P3a2ATzqRSqVeeKNswLU74+bjvwK_GmG0=jbMymVaSp2ysw@mail.gmail.com>
 <20190829173458.skttfjlulbiz5s25@treble> <CAHk-=wi-epJZfBHDbKKDZ64us7WkF=LpUfhvYBmZSteO8Q0RAg@mail.gmail.com>
 <CAK8P3a1K5HgfACmJXr4dTTwDJFz5BeSCCa3RQWYbXGE-2q4TJQ@mail.gmail.com>
In-Reply-To: <CAK8P3a1K5HgfACmJXr4dTTwDJFz5BeSCCa3RQWYbXGE-2q4TJQ@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, 29 Aug 2019 15:26:30 -0700
X-Gmail-Original-Message-ID: <CAHk-=whuUdqrh2=LLNfRiW6oadx0zzGVkvqyx_O1cGLa2U6Jjg@mail.gmail.com>
Message-ID: <CAHk-=whuUdqrh2=LLNfRiW6oadx0zzGVkvqyx_O1cGLa2U6Jjg@mail.gmail.com>
Subject: Re: objtool warning "uses BP as a scratch register" with clang-9
To: Arnd Bergmann <arnd@arndb.de>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Ilie Halip <ilie.halip@gmail.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Peter Zijlstra <peterz@infradead.org>, 
	"Paul E. McKenney" <paulmck@linux.ibm.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: torvalds@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=google header.b=BP0dXFaA;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates
 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
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

On Thu, Aug 29, 2019 at 1:22 PM Arnd Bergmann <arnd@arndb.de> wrote:
>
> Maybe we can just pass -fno-builtin-memcpy -fno-builtin-memset
> for clang when CONFIG_KASAN is set and hope for the best?

I really hate how that disables conversions both ways, which is kind
of pointless and wrong.  It's really just "we don't want surprising
memcpy calls for single writes".

Disabling all the *good* "optimize memset/memcpy" cases is really sad.

We actually have a lot of small structures in the kernel on purpose
(often for type safety), and I bet we use memcpy on them on purpose at
times. I'd hate to see that become a function call rather than "copy
two words by hand".

Even for KASAN.

And I guess that when the compiler sees 20+ "set to zero" it's quite
reasonable to say "just turn it into a memset".

So maybe the right thing to do is to just special-case this code, and
hope for the best. If moving the sas_ss_reset() out of the try/catch
thing works, then by all means lets just do that.

(Partly because I've actually wanted to turn the try/catchj thing into
a _real_ try/catch, not a "fall through and check at the end" like it
just happens to be now - the try/catch is actually very misleading as
it is now. So if this is the only case that matters, then...).

                Linus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHk-%3DwhuUdqrh2%3DLLNfRiW6oadx0zzGVkvqyx_O1cGLa2U6Jjg%40mail.gmail.com.
