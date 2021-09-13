Return-Path: <clang-built-linux+bncBC3ZPIWN3EFBBFVQ76EQMGQEHADNTHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23d.google.com (mail-lj1-x23d.google.com [IPv6:2a00:1450:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 73ADC40A124
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 01:00:39 +0200 (CEST)
Received: by mail-lj1-x23d.google.com with SMTP id 192-20020a2e05c90000b02901b91e6a0ebasf4864761ljf.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Sep 2021 16:00:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631574039; cv=pass;
        d=google.com; s=arc-20160816;
        b=JhjDsUNcDiq94CqEmq7/yOE12PYIupUUbqM3TEHurifAzuxeo3MAU9ADF88VqdCXSA
         8wf/eOfwUuznEfxaM09pclEICXNs9lad0d6+zeakt2GSZU0do0MI2+JjNdMbm26z5GjV
         ShVnXosY543WQntPo5Bv1qbBfgrqgmbAR+LJZNz7D8bdFWM7idr+jvRdAGUoX4bq72lB
         KaVHFFTJL+IMhZKaPVP5+gXkw3w+QNTSBYG1QTeRRBVzdKNBmcI7ZyqUg2KPS6MGYVW+
         QiQJT4QTsN6HxAc01ODtayWhWq/axiVyvd96XzcDPPFDNJdNAK4xVVbJbvEkRuD9zu8m
         EIug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=EluyFZqqQRKQpkLzvV9VM4exNWhBbLYoofDyWE2Vot0=;
        b=wAcwDLPKUfP540cukAz3A8NoxHMKNHq55RGjQ1NBB4UfiSyEA8/n9a768HHsjeMXO9
         VjWlbv0K2DezggudAiJVA1Q9niHsxPFONNb3d9BdftfBmOe4t93nx9xXmHN7P8Ze8Qs6
         puLINNNP0EjigyTZkAt1jDagMhUyBBIJLxP/2vW4g9GESWAOCgJOellMtFJq89lbu6zZ
         LHZ5J5H0kyS25ga7oH4ghtAqFgIYeaxs4jxcuA1KSPX3BcWpLm5qlWeW9ravlnFwZ6ZS
         BCDWD7yG2ibYjJ3PRFsFPt3W2j37iopiUb4NxyQoDY2B+jLJRfJAaKe9MfLQ/kVMSpEc
         JCeA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=A1SYNoXP;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::22e as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EluyFZqqQRKQpkLzvV9VM4exNWhBbLYoofDyWE2Vot0=;
        b=EKZS1Ghf6+iAXZ7D4WmSLg6xXSZTqp/XWqAaljVOHChIJgsWQKstwJElOZPQZwIEUW
         0AYrJIkKgvoyhOKtCQsyGKB3th4BlHS86/Ms+jdh6GNreN+sd89GnA2qg7vwq4uv2bIG
         JvJkmNzfWMB1XVH4Jl9HAoRGrGr+kZo3thcRfwwHtAxUbcsPTZcIeeUxn7XGng0VxX9b
         qq3a2Xim5z1qh3xyCFI4Ze5jIRJb9ZdTGfV8kh4eIHTcVsAa6w8+bSh8RKUEXm0gTYai
         SNleVE6J3qCpomDJ+dAMn+EnuA9KftmEMtRf4C6b+5rAG9P1OsLmpfoUpbsXFSZg2R+O
         G6lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EluyFZqqQRKQpkLzvV9VM4exNWhBbLYoofDyWE2Vot0=;
        b=vGyFKACrZ4YPd4FUpQ0dFxe8SiHuJba5peXhZvENtQ0FMAi7X4nYUP/g/GSpP0tVx4
         /sRYkgyknqQPaZ5qX2uhOq6PKbKagAmVn5cOEPPcXPZ+TuULpjaBNEH3q8MNr9nWB6it
         pUA/Tc/7pJ8qm3q8TgPHeLYbKbgGxYomuUZkxkN8EEBOnPg/JUtaXNrRfILY4SkS/DLh
         1MjJrSwmnAJ4sFeYPQaCOtlxYq7Hnpv8YSjrtxFPEQbhi08MCdt7cFF6NSMM4BDaT5HI
         16H3D33vfjDx7aLJyi8crL26aJTQ12OpjJmz7I4B3w/WxAQrLaat4B9r9pGYyWtwcLyR
         iErg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5302DhWdBjcGT65lbIRYdiwhw7iWx1shQYqyx1DGdmYOWibeUBFP
	leprHcZzbSKLTnWXVzFXLtA=
X-Google-Smtp-Source: ABdhPJx65nZrJ5SC0kJhkJmpb0VvMysI/wzGLrlIOWtdY/cYeQ8wMrMHO9cplZxYr50nKdmjM4rTQA==
X-Received: by 2002:a05:6512:118e:: with SMTP id g14mr10610054lfr.661.1631574038992;
        Mon, 13 Sep 2021 16:00:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:4146:: with SMTP id c6ls1513831lfi.2.gmail; Mon, 13 Sep
 2021 16:00:37 -0700 (PDT)
X-Received: by 2002:a05:6512:39c2:: with SMTP id k2mr10962236lfu.289.1631574037675;
        Mon, 13 Sep 2021 16:00:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631574037; cv=none;
        d=google.com; s=arc-20160816;
        b=jHgJc3k9f0zZ8Hc1uDgUni0hGhc9QK9ICbkJzzvHZHNNQhLYEiOuXKohyF0CG/7dFl
         k+Lbr2Q8BYq5UqRlhLkQqGjImhxT1ByX9MJ18OF1Nl+yQGHsdHHH+ana05Cfv7cSLic5
         p1UKLRlDQ9nDmQZWZcH4XE1E8Cm7ccpz8+g1PRQLV8aRulwxyr088ll6toLBMOto7Su8
         lCa5hSsSMs4bR9Rpij23CF1iG/21toI8Vc49urmq+A7DXEux+Ftv1uMCxVNwYuPMERat
         N+1lhC1vdDJPwabZmVHck+cdkOL4qmQeckx81JAreQkt03MDH6GNpQwY+VC7gOOVOi4T
         apOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=WKl+vSgoVtwUpDwTiYFeDbvOkP5sbvNaiiVprss03Dw=;
        b=pG5GNSwCxFop9GO8lBiGnFfhvomj4VMbhdT9htitcR6eVshcdRVRj4vE6jaUDysgT8
         xyX2kMerfR6wZM6sMWh7tsZr9j2rlCjk8Yq//E2w0DilDBwPlmf0r20Sq8e5ZA0fDM6/
         /ud7VDQx4CQHHKhJcg8CO5eO/0KwtDq7ecOgHQXXkaXbuLdCUCBN6b1GN54Mz74m87Fh
         +qQRFl7ldzGVDcHaiy8Y54ia+vE+HJat8nbNa/A8rAsaC2WugeYvumfSkd9THQfhiV/B
         Ui0bJIfs8R1hcH0gvB76/5vFlmbhjth9cjhJlHtVfY9MlbRIWb6uryotoBkgMDpenleJ
         NEXg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=A1SYNoXP;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::22e as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com. [2a00:1450:4864:20::22e])
        by gmr-mx.google.com with ESMTPS id n6si744505lft.8.2021.09.13.16.00.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Sep 2021 16:00:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::22e as permitted sender) client-ip=2a00:1450:4864:20::22e;
Received: by mail-lj1-x22e.google.com with SMTP id f2so20108860ljn.1
        for <clang-built-linux@googlegroups.com>; Mon, 13 Sep 2021 16:00:37 -0700 (PDT)
X-Received: by 2002:a2e:58c:: with SMTP id 134mr12466228ljf.269.1631574036539;
        Mon, 13 Sep 2021 16:00:36 -0700 (PDT)
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com. [209.85.167.53])
        by smtp.gmail.com with ESMTPSA id r11sm1135691ljk.71.2021.09.13.16.00.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Sep 2021 16:00:35 -0700 (PDT)
Received: by mail-lf1-f53.google.com with SMTP id i25so20441719lfg.6
        for <clang-built-linux@googlegroups.com>; Mon, 13 Sep 2021 16:00:35 -0700 (PDT)
X-Received: by 2002:a05:6512:3984:: with SMTP id j4mr963725lfu.280.1631574034860;
 Mon, 13 Sep 2021 16:00:34 -0700 (PDT)
MIME-Version: 1.0
References: <20210913131113.390368911@linuxfoundation.org> <20210913131114.028340332@linuxfoundation.org>
 <CA+G9fYtdPnwf+fi4Oyxng65pWjW9ujZ7dd2Z-EEEHyJimNHN6g@mail.gmail.com>
 <YT+RKemKfg6GFq0S@kroah.com> <CAKwvOdmOAKTkgFK4Oke1SFGR_NxNqXe-buj1uyDgwZ4JdnP2Vg@mail.gmail.com>
 <CAKwvOdmCS5Q7AzUL5nziYVU7RrtRjoE9JjOXfVBWagO1Bzbsew@mail.gmail.com>
 <CA+icZUVuRaMs=bx775gDF88_xzy8LFkBA5xaK21hFDeYvgo12A@mail.gmail.com>
 <CAKwvOdmN3nQe8aL=jUwi0nGXzYQGic=NA2o40Q=yeHeafSsS3g@mail.gmail.com>
 <CAHk-=whwREzjT7=OSi5=qqOkQsvMkCOYVhyKQ5t8Rdq4bBEzuw@mail.gmail.com>
 <CAKwvOdkf3B41RRe8FDkw1H-0hBt1_PhZtZxBZ5pj0pyh7vDLmA@mail.gmail.com>
 <CAHk-=wjP2ijctPt2Hw3DagSZ-KgdRsO6zWTTKQNnSk0MajtJgA@mail.gmail.com>
 <CAKwvOd=ZG8sf1ZOkuidX_49VGkQE+BJDa19_vR4gh2FNQ2F_9Q@mail.gmail.com>
 <CAKwvOdkz4e3HdNKFvOdDDWVijB7AKaeP14_vAEbxWXD1AviVhA@mail.gmail.com> <CAKwvOdmtX8Y8eWESYj4W-H-KF7cZx6w1NbSjoSPt5x5U9ezQUQ@mail.gmail.com>
In-Reply-To: <CAKwvOdmtX8Y8eWESYj4W-H-KF7cZx6w1NbSjoSPt5x5U9ezQUQ@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Mon, 13 Sep 2021 16:00:18 -0700
X-Gmail-Original-Message-ID: <CAHk-=whjhJgk7hD-ftUy-8+9cenhMDHqaNKXOyeNVoMxZRD-_A@mail.gmail.com>
Message-ID: <CAHk-=whjhJgk7hD-ftUy-8+9cenhMDHqaNKXOyeNVoMxZRD-_A@mail.gmail.com>
Subject: Re: [PATCH 5.14 018/334] nbd: add the check to prevent overflow in __nbd_ioctl()
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Arnd Bergmann <arnd@kernel.org>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Naresh Kamboju <naresh.kamboju@linaro.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Baokun Li <libaokun1@huawei.com>, 
	open list <linux-kernel@vger.kernel.org>, linux-stable <stable@vger.kernel.org>, 
	Hulk Robot <hulkci@huawei.com>, Josef Bacik <josef@toxicpanda.com>, Jens Axboe <axboe@kernel.dk>, 
	Sasha Levin <sashal@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	lkft-triage@lists.linaro.org, llvm@lists.linux.dev, 
	Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: torvalds@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=google header.b=A1SYNoXP;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates
 2a00:1450:4864:20::22e as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
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

On Mon, Sep 13, 2021 at 2:15 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> Sorry wrong diff:

Well, this second diff was seriously whitespace-damaged and hard to
read, but while it seems to be the same number of lines, it sure looks
a lot more readable in this format.

Except I think that

                default: dividend / divisor);

should really have parentheses around both of those macro arguments.

That's a preexisting problem, but it should be fixed while at it.

I'm also not sure why that (again, preexisting) BUILD_BUG_ON_MSG()
only checks the size of the dividend, not the divisor. Very strange.
But probably not worth worrying about.

               Linus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHk-%3DwhjhJgk7hD-ftUy-8%2B9cenhMDHqaNKXOyeNVoMxZRD-_A%40mail.gmail.com.
