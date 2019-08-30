Return-Path: <clang-built-linux+bncBC3ZPIWN3EFBB2ERUXVQKGQE6S5IPKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x540.google.com (mail-ed1-x540.google.com [IPv6:2a00:1450:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 9093EA3B3A
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Aug 2019 18:03:52 +0200 (CEST)
Received: by mail-ed1-x540.google.com with SMTP id z2sf4512402ede.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Aug 2019 09:03:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567181032; cv=pass;
        d=google.com; s=arc-20160816;
        b=IZ5z44osn9o9fiGHsLWLIichmZH4oMhTmCT8qvWImN1lOM4GO/+PRbcVmCCswceoTF
         0HKB0tKfaSlmnKYwTrnIenNXUBfG8Gm9VlLCXHXWOtjpbfD3NQEHCZ6STsqbPdq9dEY8
         o+mJm9pUOfCIhvUv+YiAomDX3Y1C3egPtGUB1NNCjBkcJzsTpS29ZPZUxLHUcld1V+Uf
         NOKXilJ4YLtZw7Gqc4z3NpHgAnp65UC2YzWZPgxzePbLpNznBb6z1jLiMIDFdaqcR0/x
         bNMOWnOH6g2SChZ/bZrafrrvl9Q9Z6olLRZhiyqPFVK8wu/SIWZdp9+R5Y6anEub2e+D
         ZUaw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=M6UrF/rqlaOyl75gkyT/vry1Gozpye13rPUzQjryhFM=;
        b=HI14MGe7a4YDvUFLYRr1ZuxoifrjFLmmeP3xRNLjHbu0HZHYaQItzgFZ/kk9YPTwpq
         ifHWfBn+EiVxQqrGGrvd56QfUtD4kx4MZBuUZlRPJ7uOUE535ylAhDs9/sbWTrsmdcWY
         0y3O8n2SQq2k5eQ9UnGnA6PNtjsZ/hcNogP7rJO212U7bLyo1pxpIPZ1PIl3Ck+TEHg+
         cqEHFrymBnEvHwJCn50+0+KfiDw64a08PIVau4doe2zVsleu+tx5sE2B+vJDbrN1AuzR
         7000wUGU8kO1/Id7L/f0VRhdYVmOr9wlrUmPzzwQl4MOnw4Bescv5Dy5rFg2kIpFvYtO
         lFTg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=ZBVoFQCN;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::232 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=M6UrF/rqlaOyl75gkyT/vry1Gozpye13rPUzQjryhFM=;
        b=JXsXBeo1qM6DPf6nlxigj7N4rQl8bgUtqAnkyFFBt5cI5AoQv5bcIC1+v+XH56lZlI
         wGpOzp0FJC0dom2f3JtuM/uvDL+mRs6eieZsk7Br50/g209QnLykswqyb71Ewxte1FkD
         IWuV9RinIVAgpL09IXktULGq7Mtpo9d6q9A5pHafoc+y9veC813LbVauUrQNbg/Xbcpu
         D3+wkbzvz+KVHq/bMosoyGEGTQd64jztZi71xAAxWVH9PM3Xj6h8SDUscYRfz2xS7Vt/
         8YdI2/Tv8gqIK1U/Qv5Re5KhEhmGLC1EPQs4orieeOXXCQA69Y9DhEy/ANCIC00tDrE1
         FxYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=M6UrF/rqlaOyl75gkyT/vry1Gozpye13rPUzQjryhFM=;
        b=EayHSPRp7hPd8/4RtbKTn4YJtA/+XgEezfAINN4DlbyfLJp1arxism6LN+w8HiFZUP
         SQjPWfIU0PWB0zMaZpXMdXANDazHU+MachD838T4f6NP/iA1srgrblHyLTRtI1DRFjyV
         LJIi2+TVkdyW6zH6sPpmihoA9FwiE2AtYbaoJrOP6jEKhy91a2cwGPKkKJIBhoAanGs8
         jJ97k5pphxnL/Pnq6CjROgKt2UM+td7bi4taxrU+ad+PDgAMyL5ihYxY5QUzLrRNhZSF
         tA9hTsrhJKkLlEYJXy8YnMqDYm2bH692cOFZHEdIB+8YbNzgKyNwbT8Raei5c+03Gm+0
         D6Ag==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUhvXxlKChmJuLagKMqoOQ2q03qWufF2f5pdlE6/TQRGn3rQPNE
	/vTG9Y+De8M67A8PdgjMAq0=
X-Google-Smtp-Source: APXvYqziB8igYBJg87JTKCeXtUb8BXp763MERarrXTePqBdABBsp3mUSz5xAqkRGz37jq/Gx7Kw+IQ==
X-Received: by 2002:a17:906:30d9:: with SMTP id b25mr13051523ejb.55.1567181032289;
        Fri, 30 Aug 2019 09:03:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:90d5:: with SMTP id d21ls2147335eda.11.gmail; Fri, 30
 Aug 2019 09:03:51 -0700 (PDT)
X-Received: by 2002:aa7:d1c7:: with SMTP id g7mr16469698edp.227.1567181031788;
        Fri, 30 Aug 2019 09:03:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567181031; cv=none;
        d=google.com; s=arc-20160816;
        b=cB/Tq1GthG8+y2baenrp+c97r2h5Z4/NEeVLVsRiGh0adIh7ETw8PtREt87RNj+9CK
         kjqf/5bbWfodpESdgDGWeaJ5+r4yNsbKL2n7q8ne+lCF8m0LvqiS6cLQ3MfyH1fkAQkO
         LpbmmSIjRWFLdhSJgWXav8SLyGiATPf/RJ0F5vPga4AoyKcdXX5P91INsw/AfnwmE0e5
         alETaJKrsT7HsQi1lVVSDiFKSAS/J47hmLVyQxp+23jr7+BSHv+DdYD99iPU8gO2masy
         GvMmjcWsYTSYhzpj5O0D4dRM6ggZshA5csVT5kU/G6oNfi2Vv3YveFfwDDIqT6ZMrsmM
         vJqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=O41u0LaDz39ALIXuHv0yabeuXt1/muoAQJYzGxbd+Vw=;
        b=wewlDlEMZOteLr9hoNXdKPtGQ5rgwNiThOrZzH4ibINnhcYLOPfCv9ZwyUQZSwAmp0
         +W77yz79UaGPlZoE9Fo9ZmbLK5+e5QSJp2j0GzH9exuT4cHWUS+fjswhZrZivua4UxF9
         J3MgCpC/QJI482Ik9uUQZzsmykxF82nOsQfTrz0ohVzqi7HmTAghCEiYIAtGJ9T9Ehth
         FhD2qEqDysQjrE1ib7mlIyQH/iYA4tYx+cEOuWLUZ0Zm14mXff+O508xukweA0eI7sgH
         9//paMsc/1chOyKbmcvcqgyJHxFB+mxsgojghATQ69EbdN929H9KlnUc/H4r/NdF6iFm
         R8tg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=ZBVoFQCN;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::232 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com. [2a00:1450:4864:20::232])
        by gmr-mx.google.com with ESMTPS id o12si107570ejj.1.2019.08.30.09.03.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Aug 2019 09:03:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::232 as permitted sender) client-ip=2a00:1450:4864:20::232;
Received: by mail-lj1-x232.google.com with SMTP id z17so7011584ljz.0
        for <clang-built-linux@googlegroups.com>; Fri, 30 Aug 2019 09:03:51 -0700 (PDT)
X-Received: by 2002:a2e:b16d:: with SMTP id a13mr8843042ljm.1.1567181030807;
        Fri, 30 Aug 2019 09:03:50 -0700 (PDT)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com. [209.85.167.45])
        by smtp.gmail.com with ESMTPSA id u9sm896701lju.100.2019.08.30.09.03.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Aug 2019 09:03:49 -0700 (PDT)
Received: by mail-lf1-f45.google.com with SMTP id r5so5763573lfc.3
        for <clang-built-linux@googlegroups.com>; Fri, 30 Aug 2019 09:03:49 -0700 (PDT)
X-Received: by 2002:ac2:4c9b:: with SMTP id d27mr9727934lfl.29.1567181029264;
 Fri, 30 Aug 2019 09:03:49 -0700 (PDT)
MIME-Version: 1.0
References: <20190827192255.wbyn732llzckmqmq@treble> <CAK8P3a2DWh54eroBLXo+sPgJc95aAMRWdLB2n-pANss1RbLiBw@mail.gmail.com>
 <CAKwvOdnD1mEd-G9sWBtnzfe9oGTeZYws6zNJA7opS69DN08jPg@mail.gmail.com>
 <CAK8P3a0nJL+3hxR0U9kT_9Y4E86tofkOnVzNTEvAkhOFxOEA3Q@mail.gmail.com>
 <CAK8P3a0bY9QfamCveE3P4H+Nrs1e6CTqWVgiY+MCd9hJmgMQZg@mail.gmail.com>
 <20190828152226.r6pl64ij5kol6d4p@treble> <CAK8P3a2ATzqRSqVeeKNswLU74+bjvwK_GmG0=jbMymVaSp2ysw@mail.gmail.com>
 <CAK8P3a1CONyt0AwBr2wQXZNo5+jpwAT8T3WfXe73=j799Jnv6A@mail.gmail.com>
 <20190829232439.w3whzmci2vqtq53s@treble> <CAK8P3a0ddxbGVj974XS+PM_mSJDu=aGfTGarjmqMCuLKn81mRg@mail.gmail.com>
 <20190830151422.o4pbvjyravrz2wre@treble>
In-Reply-To: <20190830151422.o4pbvjyravrz2wre@treble>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 30 Aug 2019 09:03:33 -0700
X-Gmail-Original-Message-ID: <CAHk-=wgcQBYjs-bX-v4CQUaT_bh_41EzEw4PmvSjBmAxGbr3OQ@mail.gmail.com>
Message-ID: <CAHk-=wgcQBYjs-bX-v4CQUaT_bh_41EzEw4PmvSjBmAxGbr3OQ@mail.gmail.com>
Subject: Re: objtool warning "uses BP as a scratch register" with clang-9
To: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Nick Desaulniers <ndesaulniers@google.com>, 
	Ilie Halip <ilie.halip@gmail.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Peter Zijlstra <peterz@infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: torvalds@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=google header.b=ZBVoFQCN;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates
 2a00:1450:4864:20::232 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
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

On Fri, Aug 30, 2019 at 8:14 AM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
>
> What about just adding a couple of WRITE_ONCE's to sas_ss_reset()?  That
> would probably be the least disruptive option.

I think that WRITE_ONCE() with a comment about why is a good idea.

The reason I dislike WRITE_ONCE() in general is not because it's
wrong, it's because people often use it mindlessly and the rationale
for it isn't clear.

But with a comment about why, that issue obviously goes away.

            Linus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHk-%3DwgcQBYjs-bX-v4CQUaT_bh_41EzEw4PmvSjBmAxGbr3OQ%40mail.gmail.com.
