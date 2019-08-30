Return-Path: <clang-built-linux+bncBC3ZPIWN3EFBBVMQUXVQKGQE2HKFVBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x339.google.com (mail-wm1-x339.google.com [IPv6:2a00:1450:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id A9639A3B2F
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Aug 2019 18:01:25 +0200 (CEST)
Received: by mail-wm1-x339.google.com with SMTP id l16sf3682177wmg.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Aug 2019 09:01:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567180885; cv=pass;
        d=google.com; s=arc-20160816;
        b=BGlQtqgNLKVjJcKNWfrCEWJ+3P/swO7Kj8TPhZeQOKLbxgDlkT+r4hnVzv3sVXv1s+
         mAC+slK6yhV7d6xcTCc+0iazRHTojm1orSusRxVjLLWj6kQvcj19nnhVFEf2audK/JhM
         1go5vCZ3TBv+wRXBQ21quHXTbU7DFR1XFYhwPYooAov7jc+sPgSNUcXainB/8Psx8F8A
         wY8Y8w4ljMobJi7wcu55EyhwYnji1xYk45FC3uGwlmKndReX20vfnNkx3i47Ft6u72Zl
         uyYZ7v+oK6emT4Qk0qSmvb92ZWdwQ1EvMOXWToGLDQXooYHCg55MwtYqDYUTqseaS+T3
         wg4g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=yR6M2/QlvRe52R/YCwwVDhgIkG6G3eJwpdtBRiIobro=;
        b=YgYjmdjRR/tG10YKZb5qAyiqqYhtWPNvv+iREHfyBmXc09W5rS+6vkLDOgT8E5FGNV
         Ujo41zZ/swerCAzV6yhygt4KInygSQVOq82ls/Mv0WpWBt2Cirxx45GfYJCj2bYSwuhB
         0DeBlrCnn300CnyUR7Lfc8yck9qgtEl2aPopkdZ/MT/KlV7Hx6eJSRsojgUKwmqAfc5l
         NdSzivhq4gYv+IqmZIilw/fPsc+zI0a/kd5DqFC5zx7naCAEIOnUv4j+jNiql++rbtyw
         EsaudXiURtA6XtrW/Y0ddA3je0FHrjEVJYQoFRcM2InmJReqBIXra4B7ZlY2UZJtqWlM
         gXng==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=T7kIPLTi;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yR6M2/QlvRe52R/YCwwVDhgIkG6G3eJwpdtBRiIobro=;
        b=oHqWbGkg0ykmUS/3KD61Pj8HykIk/U1DAmlZv9wWMfdI8RkajSDz+P6eA+MiLW8gOY
         /vNEslMJmSJEsuNA8zEunS3ZcNoHewyfH2lJEkQ/Qq2xz02eAUf0b1DVip4UbFG1JbPX
         xKbxWrR6yhGalwTlxQ+MXhejqWKxQW79ayQCBtDTz/OFupBY+LnKzGyWpEGQZlpIyJk4
         7UGN4TgNGABJepX7V3GlY04s98mL005A2daLud7N17PQ9CIY6nGS36152m0KVGZaHol9
         CiF0BFPG83L1o9BrfdZohUkeyToddJn1JF/S/DLF6+UKy231ew9L8usMfanI3Xt61PSg
         B8iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yR6M2/QlvRe52R/YCwwVDhgIkG6G3eJwpdtBRiIobro=;
        b=Q3Gs3MZSLtAlgGnRB28tg2TL/hh9H+n2pXuQbojL66IYzh1KEYURvCEyXNmpCkpYnP
         YkkpaMlyQsWvIa4FB3jKoDr8kDYRQrxWH0JdK5l/jw4+eoVfupJtiJCe3WW9DFpiaY8y
         7YQJEnCRyPZkGaK4++mngdUAq90aoZ81vRk1WvU8IxaoL9LnnaHAstU0flgZoNkOSFWv
         AamAZwzxweJx+Dlm6JTS9FYxNaDz3yKTCBEpRR7x/qXObd3odsQtxzAQSW37HGWHOw60
         ba701EJpL5l1WkcI7074Z9wtx+FQ8YywFISBQ3ciPCQw116ti4/35FQFNaXuLjYUN/5z
         328w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX56+OMiplol0q5kIHYDP56xNxHkIrlaOVB1/3/8M9cYIB9CyzH
	zAPfS6PsUX6Wz9P+Ag9uzGs=
X-Google-Smtp-Source: APXvYqwXO2x3b3B8ng5nYJVfJfLJCknLzPxRdhHYkWYeX7pxyXuWnKTwS6pgYmkcWBMX1yCkfgYZAg==
X-Received: by 2002:a7b:ce98:: with SMTP id q24mr20150324wmj.142.1567180885073;
        Fri, 30 Aug 2019 09:01:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:6484:: with SMTP id y126ls2800427wmb.1.canary-gmail;
 Fri, 30 Aug 2019 09:01:24 -0700 (PDT)
X-Received: by 2002:a1c:3944:: with SMTP id g65mr20032831wma.68.1567180884543;
        Fri, 30 Aug 2019 09:01:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567180884; cv=none;
        d=google.com; s=arc-20160816;
        b=AMGBFyh6LigiJ2oXxxqzKLR1oya2AJtVL4uF57u0Ev+ZnGLlUMllGAe4hTdkGPYuKo
         d6Tw8ZbzebcY7UfWpbE0OTax4gidMOt1O5PXx2cXep/T665N+Ffy8txmoigaI/DJcSX+
         uu5Mpl+FdjXmkjAK05C6zmKegbjryB+TtycSiGLBXWIxMhFw2QczZWFfR+MHwiWH5IDd
         uOowpocuRhN9UT1FSUQ5m9Fz+lbOR+VsX8apV64Y5HTiK1/m9gUe8CzTBDIZrRUpW9cH
         4HVy/CGZLNzge+uv3kuUq1nsBdoSVnj1dr347rDlq9cEoLvT79xf1o6eiIum/T4Bz/W4
         F43g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ltWuTNDx89MOEcanga9Bo5hPEURK5Z+mB3gG62hMcco=;
        b=sySVwKItPyg+nEL5Ev8XRCvxRAIhTmTio3B/IQ+OVkEI1Ric6VBCmmfUZJ+HG4l7QQ
         GqRLeEK282vISoZzBdOMsnyNWXXGgo/3s3t+Q/j8X/cqLqk9jClfONydDcdHU2JF9vCr
         rK2RMdHnri5wTXso5Bl5ymcq/4ydBRpV8pPHG2HPMG5fnRKv+7toOv/dBzZJW+w450FM
         /5fKiB/TjN20d68OE8mapTQD8zwueNZIAozLc4a7vCJQtxcCiaU4JtawJVNGBp8ZeUc4
         wgkPeHX/87G8Izcd76UqBmwP2hC60f7o2agM7qMU/51wZa3Utvkx/nBkIY+8e7XvoF+8
         7LWw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=T7kIPLTi;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com. [2a00:1450:4864:20::141])
        by gmr-mx.google.com with ESMTPS id a10si277480wmm.2.2019.08.30.09.01.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Aug 2019 09:01:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::141 as permitted sender) client-ip=2a00:1450:4864:20::141;
Received: by mail-lf1-x141.google.com with SMTP id z21so5764813lfe.1
        for <clang-built-linux@googlegroups.com>; Fri, 30 Aug 2019 09:01:24 -0700 (PDT)
X-Received: by 2002:a19:ac41:: with SMTP id r1mr9954140lfc.100.1567180883268;
        Fri, 30 Aug 2019 09:01:23 -0700 (PDT)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com. [209.85.167.45])
        by smtp.gmail.com with ESMTPSA id h9sm929037lfp.40.2019.08.30.09.01.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Aug 2019 09:01:22 -0700 (PDT)
Received: by mail-lf1-f45.google.com with SMTP id u13so5723484lfm.9
        for <clang-built-linux@googlegroups.com>; Fri, 30 Aug 2019 09:01:22 -0700 (PDT)
X-Received: by 2002:ac2:4c12:: with SMTP id t18mr9983076lfq.134.1567180881892;
 Fri, 30 Aug 2019 09:01:21 -0700 (PDT)
MIME-Version: 1.0
References: <CAK8P3a2DWh54eroBLXo+sPgJc95aAMRWdLB2n-pANss1RbLiBw@mail.gmail.com>
 <CAKwvOdnD1mEd-G9sWBtnzfe9oGTeZYws6zNJA7opS69DN08jPg@mail.gmail.com>
 <CAK8P3a0nJL+3hxR0U9kT_9Y4E86tofkOnVzNTEvAkhOFxOEA3Q@mail.gmail.com>
 <CAK8P3a0bY9QfamCveE3P4H+Nrs1e6CTqWVgiY+MCd9hJmgMQZg@mail.gmail.com>
 <20190828152226.r6pl64ij5kol6d4p@treble> <CAK8P3a2ATzqRSqVeeKNswLU74+bjvwK_GmG0=jbMymVaSp2ysw@mail.gmail.com>
 <20190829173458.skttfjlulbiz5s25@treble> <CAHk-=wi-epJZfBHDbKKDZ64us7WkF=LpUfhvYBmZSteO8Q0RAg@mail.gmail.com>
 <CAK8P3a1K5HgfACmJXr4dTTwDJFz5BeSCCa3RQWYbXGE-2q4TJQ@mail.gmail.com>
 <CAHk-=whuUdqrh2=LLNfRiW6oadx0zzGVkvqyx_O1cGLa2U6Jjg@mail.gmail.com>
 <20190830150208.jyk7tfzznqimc6ow@treble> <CAHk-=wgqAcRU99Dp20+ZAux7Mdgbnw5deOguwOjdCJY0eNnSkA@mail.gmail.com>
 <d1af87f139b54346b420d06855297cfa@AcuMS.aculab.com>
In-Reply-To: <d1af87f139b54346b420d06855297cfa@AcuMS.aculab.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 30 Aug 2019 09:01:05 -0700
X-Gmail-Original-Message-ID: <CAHk-=wh33ouqv7UNovQn8WWXGA_kXEHDY3_H7x5-_j33AHYPwg@mail.gmail.com>
Message-ID: <CAHk-=wh33ouqv7UNovQn8WWXGA_kXEHDY3_H7x5-_j33AHYPwg@mail.gmail.com>
Subject: Re: objtool warning "uses BP as a scratch register" with clang-9
To: David Laight <David.Laight@aculab.com>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>, Arnd Bergmann <arnd@arndb.de>, 
	Nick Desaulniers <ndesaulniers@google.com>, Ilie Halip <ilie.halip@gmail.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Peter Zijlstra <peterz@infradead.org>, 
	"Paul E. McKenney" <paulmck@linux.ibm.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: torvalds@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=google header.b=T7kIPLTi;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates
 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
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

On Fri, Aug 30, 2019 at 8:55 AM David Laight <David.Laight@aculab.com> wrote:
>
> Even in userspace you might be accessing mmap()ed PCIe device memory.
> The last thing you want is the compiler converting anything into
> 'rep movsb'.

Agreed, although for actual IO accesses you likely should really be
doing "volatile" anyway.

But yeah, in general it's just not obviously safe to turn individual
accesses into memset/memcpy. In contrast, the reverse is obviously
fine (and _required_ for any kind of half-way good performance when
you do small constant-sized memory copies, which is actually a common
pattern partly because the insane C aliasing rules have taught people
that it's the _only_ safe pattern in some situations).

This is why I think "-ffreestanding" and "-fno-builtin-memcpy" are
completely broken as-is: they are an all-or-nothing thing, they don't
understand that it's directional.

                 Linus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHk-%3Dwh33ouqv7UNovQn8WWXGA_kXEHDY3_H7x5-_j33AHYPwg%40mail.gmail.com.
