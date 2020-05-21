Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBJ4JTL3AKGQETMDYRHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x838.google.com (mail-qt1-x838.google.com [IPv6:2607:f8b0:4864:20::838])
	by mail.lfdr.de (Postfix) with ESMTPS id 4248B1DCE4D
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 15:39:52 +0200 (CEST)
Received: by mail-qt1-x838.google.com with SMTP id c8sf7681466qtk.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 06:39:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590068391; cv=pass;
        d=google.com; s=arc-20160816;
        b=Gnudknn6jAs4c/7DxVaJBTKOOKos+VHSqOJrFU+8ttMbsqywfwtk8ZhKDjsmqT+Xth
         v9nM95Om5me+5OCd1EVUQc79PE7HqzRm32uQpj1vodp37GPFfVDz1IHY63hfFDsMNko0
         tMQkz0NGz+MEuHXW2T3FDk2pfsISXNvBzS5xp/zr7zLwBGVkXAwTCqsk20/NuqanRZsd
         PtSWtTGCQ9wWZZg/wwLbxg+Cv5Dyi18ExQ7LsSp0mgK1d7mXyzFEQ5GqJceUz/0Q44P5
         9xBHm6SXotaH7wMBksGH9Wg/y6vPNdaNtUDMkbVh1Hra/FchWEyGWtth5D9GVvMBxxlU
         udDw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Lj+oLt58r6pxq0XjDIQSpaTkugUiX/cBamXjggzOxuM=;
        b=BeJRdbQEzCItkhkD9/w5uR+cvAuY2CV0KQMLv6AQ4fVKnGzzuCBKpCjxxextIteBxy
         InlyuWmV3i1eX6r+GmuK7DD2DvCDqIZlkJEgJMHnV6CrebnniSXbSzUqzqxUQfXIO/1d
         o34btMInPlSPE7veZm/eHbu7iEUdarsb88XoVj0tiYNGEqYRxvRQhP1CiPSx/vWLQKgd
         u8ZNlp7ng5Q6QhaNaWd18RxK9nkYMPgrqeU5AuFS1rvvhf6CiGJgASqOX5KGN1BdUjoV
         7UEqwR6TCP7M0sK7SWZK6DQfpg2ZQq297bwgi6Ndx1uB439JMkw3U13lWqInFaaw2Cwy
         n1yQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gA+IMnIW;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Lj+oLt58r6pxq0XjDIQSpaTkugUiX/cBamXjggzOxuM=;
        b=NYvSfnZxupJUuQMifHoxoDoOA1baChH468L8JBpcfDtHCGAXNDlZM3kzK0E7T/62cM
         3IVf2YM/FMVMB+0I9Uec1cyjeQvMQRLKzHpDHqtf1RySkC2J2JzWAjcF+EOVfeVlxTEg
         JhBga/T4abexlQ/td9WNze5imxH8Rc3t73lStWuHjnRVO8zmDSZTaVCBS3XaP4Jj/A6L
         FI2/JAfzRkP5tzLAEyqGfEx5oIOjO/JrJ2FdVK0Bkqobh1jxOQzh20qBkm4FyTEd+aIc
         FCEMauQMLXOrDFu6lnXeK8lfUMZULdgADGisd99Nh2ir64mynnEdEBeiAlZ9rRZ2Wtpt
         jEYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Lj+oLt58r6pxq0XjDIQSpaTkugUiX/cBamXjggzOxuM=;
        b=L36t/qtWDkuSzR8wyh+alJ0hb23fJ5M4iuChHeqZiaDfVVPgQNrM/YwTvGjX5rPVUW
         raK04LjvWslOwTUJS5LSCFu10+6WGLYgc4ysdZnaDCvLWGj1+27nBYGb7Z6mb3xHYJ/L
         fC1FT3eGKgTaToUqp2DXp7vMSmEeZsKHWw1GWAcZb8r6xXyiGa9X5ubQhs8TR6D6UBa6
         wmLx8y7/7girkvsfOGq7VQcJIfdGdMnCz8gQllhbJO5/JbC9aWclhyOSUfMru3PRS7ix
         YQ1Ggj8XkmDDA/ytoeYHiQc+hIaxy+hTF4YSRMAp8AjpmooXFZs16ESsckJ/Xi9E57mw
         CRpQ==
X-Gm-Message-State: AOAM531Rg22JHWOIbDIHrXtfkat7AthhFbfye02ZZpiFQf9XQkNg6nWD
	Hu8YJ9uPd4UOMtzFzcbcz/k=
X-Google-Smtp-Source: ABdhPJyENHRhuPeO1T7q/Gh7zTZU2JIDPYp3oIQ8iRp1WS8LK7UZTxsxZjKk/Z74T3ClZc2BBKvqQw==
X-Received: by 2002:a37:f517:: with SMTP id l23mr10053897qkk.475.1590068391333;
        Thu, 21 May 2020 06:39:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:edd1:: with SMTP id i17ls481965qvr.2.gmail; Thu, 21 May
 2020 06:39:51 -0700 (PDT)
X-Received: by 2002:a0c:9ad5:: with SMTP id k21mr10126622qvf.2.1590068390975;
        Thu, 21 May 2020 06:39:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590068390; cv=none;
        d=google.com; s=arc-20160816;
        b=lUnGGPaIvI5Mv2Icb6UwIvD6BNBfudT/x1ma/+KOUAHfdq7UoAM2PbsS9HFTlS2UVU
         Jm2sRC1Q/Ous35VRP4/mi+o1TW/VVc5ztItGcIa94fw7OE0fPEqhk1Q2Gx3KmxOSt5iM
         3htoQJi5gcx6vAU2Q0I3poqTEIZx3OYiJOzSioQ17nLvu66M51yEskqvTsRZwLihnVtb
         lyIOWtR8OMjtZ8A9vSYnl63Ra79HktwGWmjg78Z6imuHn6mqBfVElTMBLOSz2L8ZwK+K
         df0eCIR/I391luzbg/ZogsJjjdtN0tZ3mKbig4qHrF3RWPWfY9bpfPUOFvyqdALRVkAR
         BeGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=L/LyXHTvDj+xHsQkYhu/jnhClGb0G5rs8Coqbegx7nM=;
        b=fnMDFd0g57ohW3k/Ay9VpfpDkzYJEPkPXpGYzLIoo1rQITUGgmJPQJnbC7vQmVOnjv
         mSl5AGcaCKgcusDErwfOEDf7hovY7MHgTudnEitqrM3s1nY0Pid0bFv+vb7YL7c+cb0u
         gT4xMjfSHmS+yxTV7rEuLIlc2cnmjj7CHj9KM4r6B4Ujn3CpTn3F7n63y6wsBEexLZq0
         OBRFyZf06wA9ANPdWY/zE67TZZOfcyixm5PMXhLs3ndYlCuQw57rkfHOpx+SKtuEVNod
         YurfdDj8wdCcSCMQ2OqgcWxkNTgFyAnk34+MMpUSz/gYSHQmbtE5CVfGHKM3pR15eh8X
         nF4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gA+IMnIW;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id n23si411659qtv.0.2020.05.21.06.39.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 May 2020 06:39:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Received: by mail-ot1-x342.google.com with SMTP id c3so5481018otr.12
        for <clang-built-linux@googlegroups.com>; Thu, 21 May 2020 06:39:50 -0700 (PDT)
X-Received: by 2002:a9d:27a3:: with SMTP id c32mr7608614otb.233.1590068390262;
 Thu, 21 May 2020 06:39:50 -0700 (PDT)
MIME-Version: 1.0
References: <20200521110854.114437-1-elver@google.com> <20200521110854.114437-10-elver@google.com>
 <20200521133150.GB6608@willie-the-truck>
In-Reply-To: <20200521133150.GB6608@willie-the-truck>
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 21 May 2020 15:39:38 +0200
Message-ID: <CANpmjNORDOZxpk8=dRNu86V5YcJeinAq0K=8PZs39HXDLwNNJw@mail.gmail.com>
Subject: Re: [PATCH -tip v2 09/11] data_race: Avoid nested statement expression
To: Will Deacon <will@kernel.org>
Cc: "Paul E. McKenney" <paulmck@kernel.org>, Dmitry Vyukov <dvyukov@google.com>, 
	Alexander Potapenko <glider@google.com>, Andrey Konovalov <andreyknvl@google.com>, 
	kasan-dev <kasan-dev@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@kernel.org>, 
	Peter Zijlstra <peterz@infradead.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Borislav Petkov <bp@alien8.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=gA+IMnIW;       spf=pass
 (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::342 as
 permitted sender) smtp.mailfrom=elver@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Marco Elver <elver@google.com>
Reply-To: Marco Elver <elver@google.com>
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

On Thu, 21 May 2020 at 15:31, Will Deacon <will@kernel.org> wrote:
>
> On Thu, May 21, 2020 at 01:08:52PM +0200, Marco Elver wrote:
> > It appears that compilers have trouble with nested statements
> > expressions, as such make the data_race() macro be only a single
> > statement expression. This will help us avoid potential problems in
> > future as its usage increases.
> >
> > Link: https://lkml.kernel.org/r/20200520221712.GA21166@zn.tnic
> > Signed-off-by: Marco Elver <elver@google.com>
> > ---
> > v2:
> > * Add patch to series in response to above linked discussion.
> > ---
> >  include/linux/compiler.h | 9 ++++-----
> >  1 file changed, 4 insertions(+), 5 deletions(-)
> >
> > diff --git a/include/linux/compiler.h b/include/linux/compiler.h
> > index 7444f026eead..1f9bd9f35368 100644
> > --- a/include/linux/compiler.h
> > +++ b/include/linux/compiler.h
> > @@ -211,12 +211,11 @@ void ftrace_likely_update(struct ftrace_likely_data *f, int val,
> >   */
> >  #define data_race(expr)                                                      \
> >  ({                                                                   \
> > +     __unqual_scalar_typeof(({ expr; })) __v;                        \
> >       __kcsan_disable_current();                                      \
> > -     ({                                                              \
> > -             __unqual_scalar_typeof(({ expr; })) __v = ({ expr; });  \
> > -             __kcsan_enable_current();                               \
> > -             __v;                                                    \
> > -     });                                                             \
> > +     __v = ({ expr; });                                              \
> > +     __kcsan_enable_current();                                       \
> > +     __v;                                                            \
>
> Hopefully it doesn't matter, but this will run into issues with 'const'
> non-scalar expressions.

Good point. We could move the kcsan_disable_current() into ({
__kcsan_disable_current(); expr; }).

Will fix for v3.

Thanks,
-- Marco

> Will
>
> --
> You received this message because you are subscribed to the Google Groups "kasan-dev" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to kasan-dev+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/kasan-dev/20200521133150.GB6608%40willie-the-truck.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANpmjNORDOZxpk8%3DdRNu86V5YcJeinAq0K%3D8PZs39HXDLwNNJw%40mail.gmail.com.
