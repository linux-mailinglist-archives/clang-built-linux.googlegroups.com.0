Return-Path: <clang-built-linux+bncBDEKVJM7XAHRB66S3PUQKGQEL2RKPEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id BC11A716B3
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jul 2019 13:03:26 +0200 (CEST)
Received: by mail-pf1-x440.google.com with SMTP id a20sf25929105pfn.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jul 2019 04:03:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563879805; cv=pass;
        d=google.com; s=arc-20160816;
        b=X7pw7MyN1tM+i8lTyGr68zI3m883gp2IHKtKdINV07qmnk4GzYBBOaE5r8otcDFYBT
         2AHFLIj+r99gLfrvd9uNKiYhJb9w8J8kWxbs6hqVM3losTDUuEZYC9PSmf7PD0mZi+a6
         stzrRQoXZ0aE1Ptj0o3Mw25mGFuH5lPiiPb+AkI8MGmXvHYVxhOl61RO43YnJWKEZRtZ
         dOH96gMB44z6B3zryEahoo7aZ2ocYLUCsXg/DoyM1LhvuWD/F+ZxSH37pABe1Dpt7slK
         sEnaK93vO5YxQ+XAh4m5RsAuPkePXSUHZKpqbQL26dNTLFMiCpotb/cCsOzlCyRabMfP
         9nmQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=gsRasMNw/EhoiAjq692w75/mTAicMPSatxebTs0O0wM=;
        b=n4j/SDZvJJAmbFC/lW4F1rYiQQXx3nDSfhueFhjndgxT5uqbjNH+2kliK7L9drcQNe
         aOeXdB+vduHLHRmoBZVKE6WuJG6IRBXY3Nk9qvKmuZ+fj6w19wIhELoKQgwP8EEvtwT+
         RA4Pfx+0doyzuxQiqr+bB4gf+8K3nzegGMkMeZfv9xSw+Epdo2Fs1zFw4AdhjjLoN2oO
         TC/k6dJSe4Vqygv6zvuRqnXqU9Ut0pxmqa6np9xjwCjwuS7bEWAbmuXZLWRL3QE/cFYt
         Tg8VkuDza4mwJ1KhFijtoaNRR81CuChd8XCQpe82NSetu738PWjsCGs4j2pzAEvi5ovO
         DVyw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.160.195 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gsRasMNw/EhoiAjq692w75/mTAicMPSatxebTs0O0wM=;
        b=Ur1kPf77ZP/gEEvG+DL0JW3Zcx4Pahi4esQ34Byh/Hfl18hf/dSmIpZ8YEiALY2v5d
         YYWSTRkG2E759RyGjyWy3BGaxf7S4dcndKfYKh4/vIJN/KB9gqCBGqEytsuVz9pHnz8u
         /SAczzNlG08GM0UypAG9jH7r9AyjwbB92LqoinLT3yu+R1VIunvMJ8kx+2aeOQwGx7f8
         xvSZmS4A+PyWcYRrAcJaLx5h3Hfb6lEY5vH3oSyKvD1u9RTNdpl1oo1AtdOA3O0Zz/w2
         MPUyTo0366KVkzbEYG/XS6e7YwEqQTL2FvoNkljziXNvK9cxOJip4FPek+PwUWY+PwvO
         3b8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gsRasMNw/EhoiAjq692w75/mTAicMPSatxebTs0O0wM=;
        b=W6BW0QQAnIGneBG9ZIf9F1CoXrSPwixCfUToKY+6jJvgKepz7BSnJIS4ta3v9hM/hz
         HCsrN81hCYWtBDtiEMDphESVby1G4OxtqDZgFLVJP99QxwX107iYHhPg91NvL0g4y67J
         j4n1vW46syPMg3DzzshSeVBwJjs6dYFpUQlic/vDsvRO/86fx+15cvBAyVOwZbm0h9RV
         uPpBHIuDWOci2GHzdXPozRX6z27HXVAoCsG2liDqeYzMg8Vmkoj2QuM7VSttT57j8Gxz
         YtjHWaCvbF06WtkSoN/ZDfduCpqJnJlfKAO05WJzyXSm9WhC//gNNubimXcudGckXGM4
         d5Wg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWN6a6SKFfPbSqpM+BK7MMvYc+xihGgBPxh5nC5kRwUKNo96k1P
	0BKWrdmndxgUgCIGRgCiIvE=
X-Google-Smtp-Source: APXvYqxav5rzMtQayuAWhefHYDhSYBTkxHQ2ccsRTCJhZWt1aY72NZCANpLPf85NkHrGmInQ1OA7Lg==
X-Received: by 2002:a65:4189:: with SMTP id a9mr49517914pgq.399.1563879803309;
        Tue, 23 Jul 2019 04:03:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:6b81:: with SMTP id p1ls10203638plk.6.gmail; Tue, 23
 Jul 2019 04:03:22 -0700 (PDT)
X-Received: by 2002:a17:902:f095:: with SMTP id go21mr81583767plb.58.1563879802908;
        Tue, 23 Jul 2019 04:03:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563879802; cv=none;
        d=google.com; s=arc-20160816;
        b=KsiAxXCmArbyCJY0YqA544CkqVxGB9EKjn+XGV/340ciAsJYwxY107PQwg7xXLtc3N
         dDVSzpnnNAM7smvuQ7dybqnJhFsC91WkDHOs4fBbkCym+7hbHJCaAge7eLrPQoi9zB13
         QpZPqK5AT9bwehT+I//qy2JpP/3oAA2wf+fhz9o7vxbBku9cxOZaBo2JdRbZBeiBBACM
         BSDutAiCjmscu2xwlqg5WP4w8GURAFtvkB/jeYeoogbTYV6rze8xO52zTvy7nGD7NIjK
         +3fFOAN89ZxEaH+G8dajvmvODCWkBl8Y7i0khSlB9iHV99D/6LZIKKo0mFncummoe7B8
         1iSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=5gRVq4mioQ1Lvj1oyc3VAOJ7VbnTpBvpRXYz+4yO8Nc=;
        b=WKG2krG2eRWYMKiTWnCahrhEUEwozC/hV8rDJ/XmUR5Br3+tc1+36K6myrilOxU6lC
         PaGV37h6O8jg27AH1Idbu5ay6jd78TTN22CwrT0NMp8gpxj95KEJwKATxc1PpQddmvBC
         1t0y0EQIb1dF/bBSpBn8QexWUAXHBpgdNoCWNfewTDLjyj7XkJUY3nkNgZJtTGwOBadm
         q6Dn+Cnn3TJ+zrq3e0GK/XWGP6Tbec9pnfhMCBFjDaRa/RwgMwOpolUV4EFVNVlJ8fbB
         G8I1jvQM7HhrSjQmEeH9XrslGfGs5As6lpNYgNj85TfWIIT0J2oKZMDd57Yp/Kk41nXn
         DYtg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.160.195 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com. [209.85.160.195])
        by gmr-mx.google.com with ESMTPS id m93si1762276pje.2.2019.07.23.04.03.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Jul 2019 04:03:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of arndbergmann@gmail.com designates 209.85.160.195 as permitted sender) client-ip=209.85.160.195;
Received: by mail-qt1-f195.google.com with SMTP id d23so41467780qto.2
        for <clang-built-linux@googlegroups.com>; Tue, 23 Jul 2019 04:03:22 -0700 (PDT)
X-Received: by 2002:a0c:dd86:: with SMTP id v6mr54513824qvk.176.1563879801936;
 Tue, 23 Jul 2019 04:03:21 -0700 (PDT)
MIME-Version: 1.0
References: <20190719113638.4189771-1-arnd@arndb.de> <20190723105046.GD3402@hirez.programming.kicks-ass.net>
In-Reply-To: <20190723105046.GD3402@hirez.programming.kicks-ass.net>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 23 Jul 2019 13:03:05 +0200
Message-ID: <CAK8P3a3_sRmHVsEh=+83zR_Q3+Bh9fd+-iiCxt4PU4gkx0HZ7Q@mail.gmail.com>
Subject: Re: [PATCH] [v2] waitqueue: shut up clang -Wuninitialized warnings
To: Peter Zijlstra <peterz@infradead.org>
Cc: Ingo Molnar <mingo@redhat.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	Andrew Morton <akpm@linux-foundation.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of arndbergmann@gmail.com designates 209.85.160.195 as
 permitted sender) smtp.mailfrom=arndbergmann@gmail.com
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

On Tue, Jul 23, 2019 at 12:50 PM Peter Zijlstra <peterz@infradead.org> wrote:
> On Fri, Jul 19, 2019 at 01:36:00PM +0200, Arnd Bergmann wrote:
> > --- a/include/linux/wait.h
> > +++ b/include/linux/wait.h
> > @@ -70,8 +70,17 @@ extern void __init_waitqueue_head(struct wait_queue_head *wq_head, const char *n
> >  #ifdef CONFIG_LOCKDEP
> >  # define __WAIT_QUEUE_HEAD_INIT_ONSTACK(name) \
> >       ({ init_waitqueue_head(&name); name; })
> > -# define DECLARE_WAIT_QUEUE_HEAD_ONSTACK(name) \
> > +# if defined(__clang__) && __clang_major__ <= 9
> > +/* work around https://bugs.llvm.org/show_bug.cgi?id=42604 */
> > +#  define DECLARE_WAIT_QUEUE_HEAD_ONSTACK(name)                                      \
> > +     _Pragma("clang diagnostic push")                                        \
> > +     _Pragma("clang diagnostic ignored \"-Wuninitialized\"")                 \
> > +     struct wait_queue_head name = __WAIT_QUEUE_HEAD_INIT_ONSTACK(name)      \
> > +     _Pragma("clang diagnostic pop")
> > +# else
> > +#  define DECLARE_WAIT_QUEUE_HEAD_ONSTACK(name) \
> >       struct wait_queue_head name = __WAIT_QUEUE_HEAD_INIT_ONSTACK(name)
> > +# endif
>
> While this is indeed much better than before; do we really want to do
> this? That is, since clang-9 release will not need this, we're basically
> doing the above for pre-release compilers only.

Kernelci currently builds arch/arm and arch/arm64 kernels with clang-8,
and probably won't change to clang-9 until after that is released,
presumably in September.

Anyone doing x86 builds would use a clang-9 snapshot today
because of the asm-goto support, but so far the fix has not
been merged there either. I think the chances of it getting
fixed before the release are fairly good, but I don't know how
long it will actually take.

       Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a3_sRmHVsEh%3D%2B83zR_Q3%2BBh9fd%2B-iiCxt4PU4gkx0HZ7Q%40mail.gmail.com.
