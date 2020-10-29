Return-Path: <clang-built-linux+bncBDYJPJO25UGBBWUI5T6AKGQEEACXY2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id ACA1F29F3C1
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Oct 2020 19:05:15 +0100 (CET)
Received: by mail-ot1-x340.google.com with SMTP id 65sf1279752otv.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Oct 2020 11:05:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603994714; cv=pass;
        d=google.com; s=arc-20160816;
        b=oDC3MTj///CdFn+QtRs0pHg55zmsAKB3vjclvdMO6qv5sEPxqkbNbfBLF7S9cgXEd0
         U6FY5BiItfoNpf2Q/uOqODclD1Bn9TjBei0qb5ha3/V5/ulFxzi4vhasBli49rYPdj1D
         riOxuwL8mbTbFSmnGs8UmVwtklca5OJWZu877/o63VoqyjasQyo0INfyG9et/b7Rq61y
         WK6O6stKH8Us9alsS70rOs5wVvuYRqK807zry8uZpXXLHQBQD17VmiYxIjDa1UZRbWWu
         u8GBWxZ41y7TpLf/48ZsvlhlhDb2xr0VGXgT11zaoypUV3zojlZyn+zJWYOtURM6AWYn
         EDmA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=q3WcCe7SlHVXwdf8OO4dRgr6xzqCZE3mTQrW1k0bUyA=;
        b=WX7X5u5x/HSHW488oZeF095z5u7afIGSHKZ+JH7nY3QyCZFVSBTsbJNuY3wHesOIMC
         eVXFlvm4IcJxl8YdqwQ1rqAqHJUo2tEoybRiCW4A4sPibuwU6xzJDPsHg+wrstiEn6aD
         Ts/v+yUvbrskpbBWTUHNxk5GcwFhG0obZJSP/anQ8DGDU8pkXtT8X8rvd5XtSSmEQKGS
         5eHfecr20r4Oc/73ScHYCjGtU6AbxjLLDgZr9ip0VrEhPBJb/VSkV5aMWuB5OOUB4xm+
         FElOgrDbEPoyu6DJxwHZCT+FbqLhAeh3qMteGbI+h2BQ5TjuZkfYPKczRQS1tl/U6Wif
         Hvng==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=B2MvEPzx;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=q3WcCe7SlHVXwdf8OO4dRgr6xzqCZE3mTQrW1k0bUyA=;
        b=o28XJQTgQpofKPZO6RLyaVntUdBmZz+ebnEb+1hrPNwn08ZsrsGcZkRbz3HxHDcad+
         pLsIbo6syI4l8kJBUnirBuwub41Zp3NbzjC3mdIytQSdrKjmfU0waXI7M7KY3YbO2qjN
         NocH5Y/wqTr26tFrdZva2DdOXx1008jEZjA31DzT81v1wm19du46vVT7kouEzA+UETuI
         z8vU6Tqq3o5y4YXmr5YwVFHEHBUbaDrf5mjtD6hf5/40JikXXxJOaPsb1hgi/pqtrLNo
         cWrq4sFi+SLoG04GjHRAypO6pMjcLBVLsvOyuh+imni8ulm+uMzrFgTCg5mDT9Sq+ipD
         WuAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=q3WcCe7SlHVXwdf8OO4dRgr6xzqCZE3mTQrW1k0bUyA=;
        b=cYTP8qAv1ehWkvtGERjJ17QbyQBoHJ9sbuQFkpbHeclQ5c/gL+h4uUFUCe5StSdp/7
         0TKBAfIEMfzb2IEbe8pP5zdCDmXsJSlCHOmjv5EnPGNtn6EVU9PDXp2+hNK//JyWVMS3
         +2baw4CfGy1uWUXmkoOwzJ2moGkm9rYDjx/E6vT/8U2LO1w2489RJf666l3bM2f4a6i+
         HFSEC3gvvKXpma62DiaszK4ALyeR/+mz6aQvYuNhIflkxvdbNYDFDElqtwfn48AMI4uV
         n0Y6JZBregeeo/rS0aFpt9YLKiH+4wA+RFQd2VfFRj9Xkwq3+D5Vw53WZPLPfbhzf4nT
         y2BQ==
X-Gm-Message-State: AOAM531x2rMbod0GHAUvoeRI0l+7SlOl9XtW9KDqlWQHJVI5H0AmBvJx
	jwFCoy4OVjiRuDQCRWhcPP0=
X-Google-Smtp-Source: ABdhPJwKVIOq/Pmess9nVGftSGRJWDz20G510jiSv2IdxrLL4y68vlNaVgJ5YXbh9Z/MVO4pVKphYw==
X-Received: by 2002:a9d:eca:: with SMTP id 68mr3955686otj.141.1603994714302;
        Thu, 29 Oct 2020 11:05:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:cf15:: with SMTP id f21ls874511oig.8.gmail; Thu, 29 Oct
 2020 11:05:14 -0700 (PDT)
X-Received: by 2002:a05:6808:254:: with SMTP id m20mr619552oie.139.1603994713916;
        Thu, 29 Oct 2020 11:05:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603994713; cv=none;
        d=google.com; s=arc-20160816;
        b=vmo7jkz/zTlzSVqiAQwLsawYEXnUr105LQ7J5+avNV0BzGxxyidDhoS0Jn0pUEtZGc
         wtlGw+kgidD/qTtaXnE0r0eq4xwBq5++IHqP86OMOE3NN2/18OTgeVTNZ9D0yXzWLfI9
         ErwwaBdR50oRZs005iHlo2x2yN7YO4BtDzpuEfuumpZeCwKBT61Wcn99ysVmztxUKKDt
         whTaVe48Td9R5UOglYjHGXRAxZRyheDhj2F7y2VaDuV8uKw2ni52Di2bno32gaHHCgDu
         tsl1/7W5+jb2zi1X8IXjBEIXxne69psVVPt2/svZUlWhhUxXKgGuJkFuKMhX8mIDXDlC
         3p9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=5WJeTYznKfcfB3JkvqNmYT6rbBxdKza91BrDnR1e/Mc=;
        b=wpJRmQFJPyA51fGkFc7P3fcB0kFoRg3APhwJSix4nd1AiLeHzlj3lb5MTtUvq+F6dt
         5rv1ryRNHe8kBVFev52T0tGtolEVHp8A/x92JX5lBFY6bQrkf2TXVr1JRFst831OPSMr
         1i+acoLoml/8K784Mwj93xYs6lSscgBSPAkVtLAw0XYAg4Tjrwm3+lQ0MZttbgFxXBYo
         Enj+b5SS3aKyDguyPrCU/2wyic8jT6p/QztRGMNVgZAm/rsNNK+WqEV20Zn9kpFhi1mF
         acs9lCL6rWKjvl7M5OMDh62R6yXAiKEPEFhas1BT4LidQp7Y3fG6bSufcUNrdwG3pWqh
         rglQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=B2MvEPzx;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id p17si333479oot.0.2020.10.29.11.05.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Oct 2020 11:05:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id 10so3005754pfp.5
        for <clang-built-linux@googlegroups.com>; Thu, 29 Oct 2020 11:05:13 -0700 (PDT)
X-Received: by 2002:a62:5e06:0:b029:164:a9ca:b07e with SMTP id
 s6-20020a625e060000b0290164a9cab07emr5280171pfb.36.1603994712971; Thu, 29 Oct
 2020 11:05:12 -0700 (PDT)
MIME-Version: 1.0
References: <CA+SOCLLXnxcf=bTazCT1amY7B4_37HTEXL2OwHowVGCb8SLSQQ@mail.gmail.com>
 <20201029110153.GA3840801@kroah.com>
In-Reply-To: <20201029110153.GA3840801@kroah.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 29 Oct 2020 11:05:01 -0700
Message-ID: <CAKwvOdkQ5M+ujYZgg7T80W-uNgsn_mmv8R+-15HJjPoPDpES1Q@mail.gmail.com>
Subject: Re: Backport 44623b2818f4a442726639572f44fd9b6d0ef68c to kernel 5.4
To: Jian Cai <jiancai@google.com>
Cc: Sasha Levin <sashal@kernel.org>, "# 3.4.x" <stable@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Manoj Gupta <manojgupta@google.com>, 
	Luis Lozano <llozano@google.com>, Arnd Bergmann <arnd@arndb.de>, Greg KH <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=B2MvEPzx;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441
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

On Thu, Oct 29, 2020 at 4:01 AM Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Mon, Oct 26, 2020 at 06:17:00PM -0700, Jian Cai wrote:
> > Hello,
> >
> > I am working on assembling kernel 5.4 with LLVM's integrated assembler on
> > ChromeOS, and the following patch is required to make it work. Would you
> > please consider backporting it to 5.4?
> >
> >
> > commit 44623b2818f4a442726639572f44fd9b6d0ef68c
> > Author: Arnd Bergmann <arnd@arndb.de>
> > Date:   Wed May 27 16:17:40 2020 +0200
> >
> >     crypto: x86/crc32c - fix building with clang ias
> >
> > Link:
> > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=44623b2818f4a442726639572f44fd9b6d0ef68c
> >
>
> It does not apply cleanly, can you please provide a properly backported
> and tested version?

Hi Jian,
Thanks for proactively identifying and requesting a backport of
44623b2818.  We'll need it for Android as well soon.

One thing I do when requesting backports from stable is I checkout the
branch of the stable tree and see if the patch cherry picks cleanly.

stable is its own tree; you could add it as a remote or check out a
copy of it.  If you go to kernel.org, click any stable branch, go to
summary tab in top left, scroll down for the git url to clone.  Then
you can `git checkout -b linux-5.4.y origin/linux-5.4.y` to setup the
branch.  Fetch/pull so it's up to date, then `git cherry-pick -x
<sha>`. If it applies without conflict, you can simply send an email
as you've done.

If it does not, then you should fix up the conflict, and test it.
Then you add your signed off by tag (`git commit --amend -s`) and
sometime people leave a note like `[<initials>: had to drop a hunk
because a packport of <upstream sha> doesn't exist in this branch]`.
If you `git log` in a stable tree's branch, you should be able to see
examples.

Another thing I like to do is include comments (in the request email,
not the commit message of the patch) on my risk assessment and what
the first version of the mainline tree the patch landed in.  In a
mainline tree (not stable tree), I run this function I've added to my
shell's rc file:
first_tag () {
        tag=$1
        git describe --match 'v*' --contains "$tag" | sed 's/~.*//'
}

$ first_tag <sha>
That information can help the stable maintainers better assess the
risks in accepting the backport.  Though I'm not always great about
sticking to my own advice in this regard; the last request I made I
forgot to include info about the upstream version.  But
https://www.kernel.org/doc/html/latest/process/stable-kernel-rules.html
doesn't mention that's actually necessary.

Anyways I'm sure you already knew most of the above; I don't mean to
patronize.  My apologies in that regard.  Having it typed out helps me
forward a URL to future travelers.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkQ5M%2BujYZgg7T80W-uNgsn_mmv8R%2B-15HJjPoPDpES1Q%40mail.gmail.com.
