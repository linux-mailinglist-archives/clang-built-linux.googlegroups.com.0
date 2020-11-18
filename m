Return-Path: <clang-built-linux+bncBCT6537ZTEKRB7FS2P6QKGQETSWLNLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x338.google.com (mail-wm1-x338.google.com [IPv6:2a00:1450:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id A99BF2B784C
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 09:21:16 +0100 (CET)
Received: by mail-wm1-x338.google.com with SMTP id 3sf697633wms.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 00:21:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605687676; cv=pass;
        d=google.com; s=arc-20160816;
        b=UFBeBajBzwpviubNAlFkNS+AEQKAtsD+nBkHFhoZxyXE77TcwMDD/vswmhT8vfWqiG
         ARCXkl5IeK4xmWVRft0weI2FDS0IExgGVN8MzGsiG9J+gkdyqdyD9Vku8G7v9Eg40oPt
         i2D0Ch7YPYDy+UgnwQCnuPKjAYh2wHR8qBxTEuD4ZylBeq8NmsUCTaXVogIDgEuUd+st
         A6hfQQK21N1gogOKP+akkB/xuBR6Omst6R/ieZm3xkZwqCWxALx/z5l5mVeUZuDTn6xs
         IfwgrhIjfbHPUNa42u57X7qWp3d2FsgSbiPtt/x8mmpWTAGPmIO70n4Dme2MCksTAq8C
         Tv1g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=D6sV1qwDBLbNxVPnTqdgXnJNkkrMVVjmv1W7IaMrXcs=;
        b=e+o3mr2Ww0N43d2kMwoA1YCv8ytMGAn7Orbok6XZjOqfBfgYczF5BVO/3MfSb1jZV5
         047IlcXDkodspOHkUs4x4pE+8KOrA14qNtMDE40nzWNLpQBEiK+p7TbnWYXzreYf9Y6Z
         +1VsnWhvyrImRqxL9l68kwty4XXA1+L3aBKLfPPz7nk05jm9hZWfxnCKYwvn6lpKptsr
         l61bv25TZ6oqEJy4toeXIbf5bvOudrgUcobuyQ///h3/reGuCYmpPQ7srYYb7eXzSLqP
         QJymUzqPNzKRzbKhSMXjLTEAuukMsa1JD3bznHymDIHbIklfogkStUDMTWMV7h1tNCp5
         kHSg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="Y/68wXAx";
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::535 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D6sV1qwDBLbNxVPnTqdgXnJNkkrMVVjmv1W7IaMrXcs=;
        b=fxJ3ZOPf9FDBZ0+IsDB80svX4ql8wolvg/MnZtal4dR9r7gwB5cK6GC9s13EjhfytO
         0aC4qpfhFj1RL0GZTLSayIq0XmKt38sd/iTPBCm8Cv5S2OwmQxBfSdym5/GOM0K7Jat/
         KyW5hm50MKNbIxDXiUUqRc3giJLh18ZJtn+H2fKVTQNiERBP+/nEMUG3gN2AFOEFhBag
         E6Kd9ikkzF3giE7pSw6rATZ67JUiHRMjXxkgMLhkkFWn45rccJ8PzXAyGJHvQIq+8Zuh
         XCsbJ59Q1h7gOuj1X1SSViKic+ov+RAOBbjpPJo9oUQUGKxgDKNPoBNcWMtw8Gvw4l2q
         VXLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D6sV1qwDBLbNxVPnTqdgXnJNkkrMVVjmv1W7IaMrXcs=;
        b=KAprVyvrl8TP6CHxYpCW8+Rs1aR1sl4y7DlE6BXEzB/pjJF8UQyITqEetPigN74sT+
         jDOJIx9rm05T9nottRVlbmaH8jlIdOKHbatvE5jrOn22F74RbJkBF/fde064qDUKu269
         kNxJYbGcqCjSiMILnbaWEcAae1MncGdUrdIdO9PQ3U2SXyZu7VIQbHjwIY1f+Erv3+fE
         YGAvNYGAjkWY8mbh7c1ijNLBh03j8Wo8BKsqP9suEfJxcXPnZyvTSU8VKpfgYDAg2yLM
         IAFgHzIIZNw0IQMj0pe4gCWfr65yUXwFGOUZ9SReOIKKllwVG0ndaSbzsoq3ru+PpFi6
         A/zg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532aFOXVsESjy028v0LIJdfHzQcNl7qtm2QQ6/4kpcIZgppaNWxB
	jtsK/srfUbGNf/hkvlw9A4A=
X-Google-Smtp-Source: ABdhPJwuLqgt1ao0HFEJAiru537Gn6AVlIlk2an+k5wv+uythFNB2MhnR7JlRuS7rNx2+VBC2CuO1w==
X-Received: by 2002:a1c:1b85:: with SMTP id b127mr3224585wmb.163.1605687676391;
        Wed, 18 Nov 2020 00:21:16 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:2348:: with SMTP id j69ls2638390wmj.0.gmail; Wed, 18 Nov
 2020 00:21:15 -0800 (PST)
X-Received: by 2002:a1c:6587:: with SMTP id z129mr3184395wmb.45.1605687675466;
        Wed, 18 Nov 2020 00:21:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605687675; cv=none;
        d=google.com; s=arc-20160816;
        b=rOosS+WLXdvGIRkRqf001JjFzlmzanzQpkugjTvDSauj2pT39M+PWV0N4sZSD9bGUT
         IOkNAEmRxqyvwyXTzIRv1MKfl7JFk4ckBhBmpRll3oh1K/qKi58aAfs4lifPwLOjW5RX
         +VB+ZEOLM8u72B/hxY5BZbylHQjxbVGm98WyJ9n3bwIMGRAGfT6S+gl3tC40pIV2MYZI
         IEv3BylmUlNSeVOBqAcW5hTbPQfKRLW4bUloT10gtZE2wfxZZAVoRfIJpqxtj9YeqcQl
         Z+iPnmgJ2NiV/xcVvTwW/7DL8OJUBS84nwo37EuwcQX9cdnPvHa51srXAFUvIE23hMLc
         xsCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=OqJTEGYkLJNMKAxqZMGdWyCGICXed4jug7t0mTEZI/Q=;
        b=QV8vuaY+jVfaS3j8TawGvh47TVgZWj0nM7RQY8sydV4FJ9yxb0GTJyXT1HbdsT+BoL
         NkFjG2+xEG8iu34o8TNELrPmqLpJMxvtLosmmSV7j1spuWffpy5M313UbeSD9QCS3Hsz
         laekq0K2bWo1arpL7ZpCD9Kfp1FSg31EzTUDmo3MXZtEwXpwJlSipIkFeAYkYNYlqGw+
         oD+yN35EuBpwxHglkaoZc9vVWWDf+ZnPtT8M9sjmAvWioxA3dbjOLRmg99UsgrNewwvs
         qdX+sXf10SR0QUGRGQGxZ0w/YYfdIcb1HuwTLE7hq1OZcn2ddNITlBAQaP4Dv8luDvyi
         36Zg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="Y/68wXAx";
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::535 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com. [2a00:1450:4864:20::535])
        by gmr-mx.google.com with ESMTPS id j199si64694wmj.0.2020.11.18.00.21.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Nov 2020 00:21:15 -0800 (PST)
Received-SPF: pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::535 as permitted sender) client-ip=2a00:1450:4864:20::535;
Received: by mail-ed1-x535.google.com with SMTP id ay21so1058347edb.2
        for <clang-built-linux@googlegroups.com>; Wed, 18 Nov 2020 00:21:15 -0800 (PST)
X-Received: by 2002:a05:6402:b35:: with SMTP id bo21mr26126181edb.52.1605687674935;
 Wed, 18 Nov 2020 00:21:14 -0800 (PST)
MIME-Version: 1.0
References: <CA+G9fYssjT9+BBwGrjgVOwqVM923GmEtShQV8pVFnsu3X09-ZQ@mail.gmail.com>
 <CAK8P3a3DAVK2Vy-Hb7AbbFwfRnMCkwtmw1L5EivSRdoZ17hJ9A@mail.gmail.com>
 <CA+G9fYushaXDdg7CEU-CTmqpdGFNS_sMGPXXgiHj1RuUwxyK2w@mail.gmail.com>
 <CAKwvOd=gzo1eWADp+y0COoNz77Y51Rj0uWtmcYvJKOpjusJGsA@mail.gmail.com> <CAKwvOdk+bq6CbJKJ0VrXRMvqEPqvV-01k+cB8=o5V7=s8uA4Dg@mail.gmail.com>
In-Reply-To: <CAKwvOdk+bq6CbJKJ0VrXRMvqEPqvV-01k+cB8=o5V7=s8uA4Dg@mail.gmail.com>
From: Naresh Kamboju <naresh.kamboju@linaro.org>
Date: Wed, 18 Nov 2020 13:51:03 +0530
Message-ID: <CA+G9fYswPnqx77mRZuaqS8nmvog2EJ_iPqT9EV1ShmLPemQQYA@mail.gmail.com>
Subject: Re: [stable rc 5.4] arch/x86/events/amd/../perf_event.h:838:21:
 error: invalid output size for constraint '=q'
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Arnd Bergmann <arnd@kernel.org>, Anders Roxell <anders.roxell@linaro.org>, 
	=?UTF-8?B?RGFuaWVsIETDrWF6?= <daniel.diaz@linaro.org>, 
	Arnd Bergmann <arnd@arndb.de>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Brian Gerst <brgerst@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: naresh.kamboju@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b="Y/68wXAx";       spf=pass
 (google.com: domain of naresh.kamboju@linaro.org designates
 2a00:1450:4864:20::535 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

Hi Nick,

On Wed, 18 Nov 2020 at 00:13, Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> On Mon, Nov 16, 2020 at 3:57 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > On Mon, Nov 16, 2020 at 9:45 AM Naresh Kamboju
> > <naresh.kamboju@linaro.org> wrote:
> > > >
> > > > c94055fe93c8 x86/percpu: Clean up percpu_stable_op()
> > > > ebcd580bed4a x86/percpu: Clean up percpu_cmpxchg_op()
>
> Cherry picking fails for me at ^ on top of linux-5.4.77.
>
> > > > 73ca542fbabb x86/percpu: Clean up percpu_xchg_op()
> > > > bbff583b84a1 x86/percpu: Clean up percpu_add_return_op()
> > > > e4d16defbbde x86/percpu: Remove "e" constraint from XADD
> > > > 33e5614a435f x86/percpu: Clean up percpu_add_op()

FYI,
It was on Linux 5.4.78-rc1 and cherry-picked as below log,

$ git log --oneline
8f07af69db34 (HEAD -> stable-rc-5.4) x86/percpu: Clean up percpu_stable_op()
9e5662b5fde9 x86/percpu: Clean up percpu_cmpxchg_op()
e40147795a85 x86/percpu: Clean up percpu_xchg_op()
ef108cfee0c1 x86/percpu: Clean up percpu_add_return_op()
24b2535ffca5 x86/percpu: Remove "e" constraint from XADD
b305a9dd1e1b x86/percpu: Clean up percpu_add_op()
77c833cf4547 x86/percpu: Clean up percpu_from_op()
2e7456eb1194 x86/percpu: Clean up percpu_to_op()
2521df42a253 x86/percpu: Introduce size abstraction macros
a3e34830d912 (origin/linux-5.4.y) Linux 5.4.78-rc1


>
> ^ 99 lines changed in the diffstat; cutting it close to stable wanting
> relatively small patches.
>
> > > > bb631e300284 x86/percpu: Clean up percpu_from_op()
> > > > c175acc14719 x86/percpu: Clean up percpu_to_op()
> > > > 6865dc3ae93b x86/percpu: Introduce size abstraction macros
> > > >
> > > > It may be a stretch to have these applied to v5.4.y, but maybe
> > > > there is some other way.
> > >
> > > We need to find a way to apply these patches into stable 5.4 branch.
> >
> > If those all cherry pick cleanly; I don't view them as super high risk
>
> Naresh, if you want to identify the full list of patches to cherry
> pick back to get the above to cherry pick cleanly, I'm happy to help
> test and help you send them to stable.  The current list isn't
> sufficient as it stands if `git cherry-pick -x <sha>` fails going in
> order.

Sorry, I am more inclined towards Arnd comments on patch series.
I am happy to test your 5.4 tree before sending it for stable rc review.
Our CI system can run most of the LTP testing for validation on x86 and i386.

>
> > to request stable to pick them up.  As Arnd notes, we only very
> > recently got i386 to build with Clang (thanks to Brian's series, and
> > others' work); I'm personally curious though, what's the use case for
> > 5.4+i386+clang?  If it's anything Android related, I'm curious whether
> > 4.19 might be of interest, too? (That will probably be much more
> > painful to retroactively support).

5.4 would be good have i386+Clang support. TBH, I do not think of any usecases.
IMHO, 4.19 support not required.

- Naresh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BG9fYswPnqx77mRZuaqS8nmvog2EJ_iPqT9EV1ShmLPemQQYA%40mail.gmail.com.
