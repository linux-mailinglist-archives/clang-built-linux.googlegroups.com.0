Return-Path: <clang-built-linux+bncBC3ZPIWN3EFBB77A432QKGQEWV26KZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id A9BEE1CE510
	for <lists+clang-built-linux@lfdr.de>; Mon, 11 May 2020 22:07:27 +0200 (CEST)
Received: by mail-lj1-x23b.google.com with SMTP id k14sf1450260ljg.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 May 2020 13:07:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589227647; cv=pass;
        d=google.com; s=arc-20160816;
        b=DKLB4OeBTrpBRPOgyTd0MXT1DZtWeSecaH7m8ZIrh0w+O4QrX8c3TnGXUWZ4g4/jgH
         etjTdXJlGz5/nvWZ8sN8TZYxFNADck5Uz3WJPZIGVjk2oxwDUkXssgoUxXAdGns6q4SM
         Vz8MqUY60uhW3sF/Wc9NCEKp0lunmAwfTywYFdPBuDf1YSpDhKdMf44zZOBITFOW9yN8
         WEyPwEM9hk7BTPWz35R17isUyOERDScvl763+VqMsYNB/SueaoBLrDtN9yAKMbsYAaGg
         plSiZLxnEKIIHOn39UDOMORS1O9hnIJr/M0tAFe3DK5qvoMVVKapt9KSgPlknBJoctYt
         eQ3Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=XMagMiccCR7kefb4hO8OULJoEAGrU2nktJWrDAlCADY=;
        b=xDcTC8QtmUe+/P10kvBZNO1lUNitcHr/8PqPlksHpF3aC6j7EOEgHX2iUAWK1Hk+SP
         lWcikYXBAexRdaEDIm5euyL+fUYw1205PwgW8i8zo966PiDlUItuSbSSz3NZGaKJr6on
         JaX0SaRsFK1vPPZ8BzB8zKFD3aCFsIsWefmVAkQ4yZixdJi2b3x9pvy14SpN5OH27mMi
         1zHqgnIqu+06dz5ztH9dIYoMheKFm8kzdzKAyKsNzjw7GtPzU4m6slP7nbxB5SwxjQuc
         J9kbHAqhFBwyb2141e8c3WuxyC3br+kK8ky/CTqlO6Rki8xUdVFntlFVIn9RRdmzJ42Z
         Clmg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=SAhc+XRd;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XMagMiccCR7kefb4hO8OULJoEAGrU2nktJWrDAlCADY=;
        b=cDRmNRpgnT+PEybTNEyZSSddaaUne5ldabm9BAwwt29hOiqvZs58A+zAcKol7qgzzR
         hfQE9piVSYE8KFcDAmlSpCystEMDwrbV2aLDdiKecL3zy65v9NNtpKllCVZfVUuCJotc
         ibRPodEPG7GWUzGkmy473TiySbjDaB9ly+gKwsbtbQg5Uh5dWp/FBPf4HHtXv8UoPctx
         MoT7fPkJVuvZdTvtZCyObCel2rnIZWyPN15JpjEJwZNJV139UBjFX1EB48HSWY72W5LT
         Nutee+U6I5TRN+ncay0k+15IXrkraBqGtgDgE8eKLTJM7gxqN0KiNd/Vx1CgHw+IWTLe
         t24w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XMagMiccCR7kefb4hO8OULJoEAGrU2nktJWrDAlCADY=;
        b=GlhL50K3pUxBO69dUpM95rX8NWrZqsY4CBTtmShfYroQAItqtvbYKMLYgkemUyGz7a
         chfPXQNTqbXQoR7qcA6CdUI+7DHIiUiFl/nAAnGzC27Qx+G9An2u7tCMjFNFCa4pUkfX
         oNdFZYE6XsT8uKEJpEnjIl5BkxAYQoqzd7JJPiqQp2zDnILnqShQNuzqUkRU879Xi7+K
         9PJFU/ggbPJxqLRGzbXYWoMUyKHukLXbSRlIavfxPiVOhigjHoG4/tG+8gPKUshAbmL3
         8xRmvaOINNmLVOneo6c5H/9KoYtyg1Q3oN70wp2zY7pwR+JNWOBUNcnu2ev5pMUQqKvi
         6uyA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533gLnkm0WQ8xqvf9MS0Wo95YmiCFMxvLas45tUSRr5ZR/oLzi+m
	eKgWzlPYB8tWMVckEmttvc0=
X-Google-Smtp-Source: ABdhPJzEYS53NPStSp4/q5mtj/P9qjUYaa2HBJUW9C/NzJIuJFqbgrnluzLX51N1TG802Ce9q38ZKg==
X-Received: by 2002:a2e:85c4:: with SMTP id h4mr11588823ljj.112.1589227647244;
        Mon, 11 May 2020 13:07:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:ae17:: with SMTP id f23ls176089lfc.9.gmail; Mon, 11 May
 2020 13:07:26 -0700 (PDT)
X-Received: by 2002:ac2:5685:: with SMTP id 5mr12084307lfr.5.1589227646426;
        Mon, 11 May 2020 13:07:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589227646; cv=none;
        d=google.com; s=arc-20160816;
        b=bRV71RB0zhGPk3L7tiYg7dvevnR54mCBnOOBefbiPCBRE+j8idUeg4OH/4u5qBukkC
         dqFu2XZQB9qEXIR6kukK4oQAvQBzOAhFGoxP+qurW8mxNmNKqVMyFQ2oQ3VgoT86hV5B
         r7SYFGiIQMQxSZmU9a+adUNgXLvGfi621NznwWm+SqUjCEHZstCVSEdnB2LSL1pAk6y5
         rrsNYL/FRHshN9w1kGTBxqNaikb7hk38j4qb/fIUicbjGtPJbdsHsmjTSZomm9yfd6aB
         enl929cFgrvEo9TtGKj/exvXXV14v+UqXP1tO+5cqir75FqWJbSFdd7PNraG9V6Wb3NF
         Z4Pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=qxWS8BqpexPsTW15vsMEf9TiqtDG6ywAaC/lrYZHjg8=;
        b=CXUY0N2D6JilOBFlS4LDD/bW65rpxZBDfUhHyv83UxfadaTIYhK/ybrHcDb1udhELQ
         NndV1Gq0FYuHscEFPyZ71ZnztuSY1EojLw8EF1sJZOPHDuhg1z9Bc/wFznuj05ICfgQv
         czkA3IjJXopmyqoxKle+EJ2CAi4G/bwWgGQzrpO0+Q91VSF6kiKNU6m1//YPf9fGwGYL
         YTDzWlCHUoX5ouiBEsaNjH78owP3hkT1qGABSbTdI2QAQWHSARTUTJ02QUBM4VdwtoCX
         Bw9euJziiJ/JVCjk+UmoKuZhP8VR94TZW8SGUxEYt7qanGvR6VxwkpUhgsn8hJKPZUbG
         vrVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=SAhc+XRd;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com. [2a00:1450:4864:20::244])
        by gmr-mx.google.com with ESMTPS id x16si703521lfn.0.2020.05.11.13.07.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 May 2020 13:07:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::244 as permitted sender) client-ip=2a00:1450:4864:20::244;
Received: by mail-lj1-x244.google.com with SMTP id u15so11001462ljd.3
        for <clang-built-linux@googlegroups.com>; Mon, 11 May 2020 13:07:26 -0700 (PDT)
X-Received: by 2002:a2e:584a:: with SMTP id x10mr1302179ljd.181.1589227645410;
        Mon, 11 May 2020 13:07:25 -0700 (PDT)
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com. [209.85.208.180])
        by smtp.gmail.com with ESMTPSA id a15sm10722791ljb.37.2020.05.11.13.07.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 May 2020 13:07:25 -0700 (PDT)
Received: by mail-lj1-f180.google.com with SMTP id e25so10990521ljg.5
        for <clang-built-linux@googlegroups.com>; Mon, 11 May 2020 13:07:24 -0700 (PDT)
X-Received: by 2002:a2e:814e:: with SMTP id t14mr11207205ljg.204.1589227288953;
 Mon, 11 May 2020 13:01:28 -0700 (PDT)
MIME-Version: 1.0
References: <20200504230309.237398-1-ndesaulniers@google.com>
 <CAKwvOdmspKUknbzDn9kY2jMgkFw=Ktvst0ZtwambDOfybqJGWw@mail.gmail.com>
 <CAHk-=wif=_ZomkWJAmQRCUAMHQ72V3NEQ-OteiPE56K7KoSjbQ@mail.gmail.com>
 <CAHk-=whhCBvjXtRiFM2JEZ4XyBmuPprvdo5tpPVBqUhkRszxiQ@mail.gmail.com> <CAKwvOdn06jCe_FhKiF_wSQavytVVD++RXD-bHbMdqnEA-wO-9w@mail.gmail.com>
In-Reply-To: <CAKwvOdn06jCe_FhKiF_wSQavytVVD++RXD-bHbMdqnEA-wO-9w@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Mon, 11 May 2020 13:01:13 -0700
X-Gmail-Original-Message-ID: <CAHk-=wh8zOnTN17XcGfnfihGgM5R5XG71qP+V54iLqBgZON4hw@mail.gmail.com>
Message-ID: <CAHk-=wh8zOnTN17XcGfnfihGgM5R5XG71qP+V54iLqBgZON4hw@mail.gmail.com>
Subject: Re: [PATCH] x86: support i386 with Clang
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	David Woodhouse <dwmw2@infradead.org>, Arnd Bergmann <arnd@arndb.de>, Dmitry Golovin <dima@golovin.in>, 
	Dennis Zhou <dennis@kernel.org>, Tejun Heo <tj@kernel.org>, Christoph Lameter <cl@linux.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, Al Viro <viro@zeniv.linux.org.uk>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Peter Zijlstra <peterz@infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: torvalds@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=google header.b=SAhc+XRd;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates
 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
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

On Mon, May 11, 2020 at 12:52 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> Interesting approach.  Researching __builtin_choose_expr, it looks
> like it was cited as prior art for C11's _Generic keyword.

Well, the thing that made me think that __builtin_choose_expr() would
work is that unlike the switch statement, you absolutely _have_ to do
the choice in the front end. You can't leave it as some kind of
optimization for later phases, because the choice od expression ends
up also determining the type of the result, so it isn't just a local
choice - it affects everything around that expression.

But clang still doesn't like that "qi" constraint with a (non-chosen)
expression that has a "u64" type.

I guess we can take the stupid extra cast, but I think it would at
least need a comment (maybe through a helper function) about why "qi"
needs it, but "ri" does not, and why the cast to "unsigned long" is
needed, even though "clearly" the type is already just 8 bits.

Otherwise somebody will just remove that "obviously pointless" cast,
and gcc will eat the result happily, and clang will fail.

And nobody will notice for a while anyway, because this issue only
happens on 32-bit targets, and developers don't use those any more.

                 Linus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHk-%3Dwh8zOnTN17XcGfnfihGgM5R5XG71qP%2BV54iLqBgZON4hw%40mail.gmail.com.
