Return-Path: <clang-built-linux+bncBDYJPJO25UGBBBV376EQMGQE2PXAV2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 5127040A18F
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 01:23:51 +0200 (CEST)
Received: by mail-wr1-x43f.google.com with SMTP id s13-20020a5d69cd000000b00159d49442cbsf3235339wrw.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Sep 2021 16:23:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631575431; cv=pass;
        d=google.com; s=arc-20160816;
        b=rAbg2JxLkqQtQzj9wJnh8nOxTK1cx0cF8WNAEf9IKKdPDsoRB9WbDPa6QiVy7iogGb
         I7wdD4LIKdcdl+ca7MZzyzrdHBL5DKsvTtY6hLG+/GxrFJfBDyBmBmB7hSSBdRpPFoDw
         whtZbCfnO0g9ATcn2sUiGvAo03+wFPE4vcqrH0i8AgD8c/nC304uXUIn5Wlp8pq4KVqn
         Lv+96lNEAUbaE/oeyUeNyKTeUfyf67qNGFPXKfXucLwNtdFblAHVeoaQ0cxjLncLgB5/
         IsZNNGgT+YUI+Fd2mlmLp9cj2k4XujkvQvzK7PJkJ5mA4UrKAXnBJBl7ZQcsPnCM36j1
         D7VQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=wtL9hMmtzGeugpbNtXkynynQ2CAiJHxA3du6i3bNZcU=;
        b=OEn/6nm1ywvHDDY2fyOC3rMH51HXmkymn8GBtCflDAyJ6lVw2P+wUuMJA22BYKiAXC
         geLTQhbSqwjqT7jwdJgOnOjfYLIkX4ekMKPi+obaxRTZVbE5hc3Uz+3K5Zpzo1e0ZsID
         kLt/2GrE82DalPY6C8JXqAChQ47R/d72D8n2DxaSltL+IBs5TXcFcY3ppwmIv40FSFon
         D21i9MBbVFlP1bO1F309COTaCYlbq4839roMsIxXHZGCyMDWCYPlryn6H1T8ha7Y1RT+
         W53GVUyLIz14E1pXMABzjka+NxLdJgvdAs/fx5xk8rqsQBH0Qxrv8LyVyhuhFzChMnim
         Zs6w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=B5LAKq0e;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wtL9hMmtzGeugpbNtXkynynQ2CAiJHxA3du6i3bNZcU=;
        b=iclDZGEsNYTZPXrsWbqk/BYJD6YDBj58dkrtY34Pd7jEzgvo0V7b8uAddXUivbgXd3
         u3HmO4LaPu/UT0K/2dVlNi24aePX28ydWvWw1FSacL74eHuEHtkpEUDsGgyRnjHYeJUt
         SJ9Sh6icyg1nWPyqCwe47HwUdp/WR5Ty79AG06SwWK+ZMz4KM2/eW1p/mAoJ1qyzBsQQ
         yW1aH7PFev0GVPYCzQ9djX5XFod/hp2qolMemzpHM8JWJiMa4FbmDZlODk0F4BlS0qlR
         BCZ6/tyX+6YydJ3V+sSdMlH5uHsOaLbajB07LM6KiWYxhEd6OJFRGlPfg5PtnSdL/2NK
         U+dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wtL9hMmtzGeugpbNtXkynynQ2CAiJHxA3du6i3bNZcU=;
        b=u5uUx1/g7rgtd4nMuD52BKyIt3C1G18C0iZhJZuh3wMe31QEAD04BbmoIBhI+cv0Qh
         C+/cOm1owvJgU04F/4X09nb5PMh3hoaWotsdIPLF7HiUwBstlZMa9+bj1bMb0sj+ObRT
         rP85JQDcbjY96Z1KH3QGecSuCOqiesph4ykNb/gWUE7N3vaE6QWtYjhECA9TpJL06atR
         zhRHQUU5P5RpaF1dM3/msRr1NxItnfuVBohM2vdWMPn4jGYQCD9J0JuBKH2I5u+Hf/2u
         sp6UVV42H2DbXgd+NgiD4hepuTx6+mJ5pHAX+sio4SGSxyl+Hn5BXBVpP9qOGFFXkaVo
         zmbQ==
X-Gm-Message-State: AOAM531xU/bRRPTnTX8hn7yUA+mvCgnhVXr4tliX4kc8GlJNUvDa8xtG
	KM+9+Es67B4SiByrYahkh9E=
X-Google-Smtp-Source: ABdhPJx3yvUOp4Cfaw+ws0QBClSRjWYkG8jjWnj/VpI2Y0ZiwmwRgEyamBQZSEHtY/DAHxQ8u3nlMQ==
X-Received: by 2002:adf:c542:: with SMTP id s2mr15504645wrf.374.1631575431106;
        Mon, 13 Sep 2021 16:23:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:1:: with SMTP id g1ls3792060wmc.3.canary-gmail;
 Mon, 13 Sep 2021 16:23:50 -0700 (PDT)
X-Received: by 2002:a1c:2943:: with SMTP id p64mr13536495wmp.107.1631575430291;
        Mon, 13 Sep 2021 16:23:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631575430; cv=none;
        d=google.com; s=arc-20160816;
        b=ZwQdxMw/c0osqrXHDARu3jhFJ81SjyhZVCknR6XpZa9uc5vayU3iHTC9VzyI06xCK2
         IFPymgDDLP+NBAFSRHtRX5/LLMq3wx/bavXAgat9Xwp3l+h64lhw65c8DbUeUAvX20jb
         R8dtTslDf1Az9MkUinnE78Yr7buBgqb1s6czvGmjds4O0mMfPTYJeMOp0q51bjKB1uA8
         Ygva14wY22Ps2WYNZQLMNsyxzy4bBK4VmPSIqWdtanw3a0/vGkO0xUskwCSHQ4daJlxu
         7Al5dPQ0VNNdWUZmaVa4V1JNkPLx7noNKbetQFshj+ccHampfcBLct4YLVugGFiJNBTq
         sT8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Bq011lt5dgdAQr/ZuHdy0F7gQGrCf2JBCgapEFXHuqM=;
        b=Xr6ylBG8bIl5eGatz8ailP3kDhcnBP7EruH1r980rdw5FXYr3zQ0mtAMFCrwhqt6nM
         gZu16PuXZPtcIwqogaQemcCQ/W+cmSKfBIZ5Gl1tJXIkUIYfu9xUGmeeE18m689lXm1i
         ztAPsPEzDH/QkbktymEdtecZt0QnhY2UzZ4OUjE5iiGvaVct5b8g97HmVaU/cdB7mi59
         0pRI4ID8biAfhJx9s/Gp60CcxdT3EJhspoUfUC3VA3bhvRDFJrNdysoZs7E91HyrPZ0r
         39+koevcX9oH2jZZ4yaKNrptsEqBlmLKgvMfqNB14i5+22cgq/jy8aTgZvrcJ4+rDcXB
         Ullw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=B5LAKq0e;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com. [2a00:1450:4864:20::136])
        by gmr-mx.google.com with ESMTPS id f20si15813wmj.3.2021.09.13.16.23.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Sep 2021 16:23:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136 as permitted sender) client-ip=2a00:1450:4864:20::136;
Received: by mail-lf1-x136.google.com with SMTP id s10so24487995lfr.11
        for <clang-built-linux@googlegroups.com>; Mon, 13 Sep 2021 16:23:50 -0700 (PDT)
X-Received: by 2002:a05:6512:1114:: with SMTP id l20mr11222779lfg.550.1631575429882;
 Mon, 13 Sep 2021 16:23:49 -0700 (PDT)
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
 <CAKwvOdkz4e3HdNKFvOdDDWVijB7AKaeP14_vAEbxWXD1AviVhA@mail.gmail.com>
 <CAKwvOdmtX8Y8eWESYj4W-H-KF7cZx6w1NbSjoSPt5x5U9ezQUQ@mail.gmail.com> <CAHk-=whjhJgk7hD-ftUy-8+9cenhMDHqaNKXOyeNVoMxZRD-_A@mail.gmail.com>
In-Reply-To: <CAHk-=whjhJgk7hD-ftUy-8+9cenhMDHqaNKXOyeNVoMxZRD-_A@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 13 Sep 2021 16:23:38 -0700
Message-ID: <CAKwvOdnFRhKDZ3XuePSGsuxhOpuS5RmZ1u+MeN=PRPPKSS3wFg@mail.gmail.com>
Subject: Re: [PATCH 5.14 018/334] nbd: add the check to prevent overflow in __nbd_ioctl()
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Arnd Bergmann <arnd@kernel.org>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Naresh Kamboju <naresh.kamboju@linaro.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Baokun Li <libaokun1@huawei.com>, 
	open list <linux-kernel@vger.kernel.org>, linux-stable <stable@vger.kernel.org>, 
	Hulk Robot <hulkci@huawei.com>, Josef Bacik <josef@toxicpanda.com>, Jens Axboe <axboe@kernel.dk>, 
	Sasha Levin <sashal@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	lkft-triage@lists.linaro.org, llvm@lists.linux.dev, 
	Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20210112 header.b=B5LAKq0e;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Mon, Sep 13, 2021 at 4:00 PM Linus Torvalds
<torvalds@linux-foundation.org> wrote:
>
> On Mon, Sep 13, 2021 at 2:15 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > Sorry wrong diff:
>
> Well, this second diff was seriously whitespace-damaged and hard to
> read, but while it seems to be the same number of lines, it sure looks
> a lot more readable in this format.
>
> Except I think that
>
>                 default: dividend / divisor);
>
> should really have parentheses around both of those macro arguments.
>
> That's a preexisting problem, but it should be fixed while at it.

Ok, I'll send a revised v2 based on _Generic; Rasmus can help review
when he's awake.

> I'm also not sure why that (again, preexisting) BUILD_BUG_ON_MSG()
> only checks the size of the dividend, not the divisor. Very strange.
> But probably not worth worrying about.

I sent a not-yet-applied diff of my not-yet-applied diff.  I was
playing with this last week, and IIRC we had divisors that were less
than 32b being promoted to int. But I'll test it some more.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnFRhKDZ3XuePSGsuxhOpuS5RmZ1u%2BMeN%3DPRPPKSS3wFg%40mail.gmail.com.
