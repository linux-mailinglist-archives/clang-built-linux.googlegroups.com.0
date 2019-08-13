Return-Path: <clang-built-linux+bncBDRZHGH43YJRBUXBZLVAKGQEGMC4POA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id B08718B8EE
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Aug 2019 14:45:06 +0200 (CEST)
Received: by mail-wr1-x43e.google.com with SMTP id r4sf52001828wrt.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Aug 2019 05:45:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565700306; cv=pass;
        d=google.com; s=arc-20160816;
        b=eJzJu96rjs39+SUOFty30md2UDOqR0l97H/Kbw0AiEIt018AvcO0n6ZOLXZey6yP1r
         uko0H8kdGrRFp6kewOEjzZAUF4ZfW7F8gd1B2Wlqi75UFNffsO+aw9dUcC7EYCLwB0Ka
         eCjRdlbSdfgsaKvZ5IS22BFs5oCmf1gWDTSl7clRCkas53JOy88DIUKe6NbXe4EdrpJz
         yN88saceef6gBMXVJDyMogz4jsf2vaNiH64e1yIv4FX74AqjXff7jFYvjHAD9epTNe+V
         D3q0NcXMsZAvgDNSl3guEqfFtDW85O73rmGiOkYiLr23bp0cxaFaExAZi87r1S9GTskN
         Lsmw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=mWqiX06dG8Av+I4zR5hRLXwCKwDfRdUXs6WzPHTbIlQ=;
        b=ItbXQxn/5R8TgMeebxzaFkc7aySCZ0AzVQ6pKhYB9k7axHrF92HixlQI3d3Huxu/5E
         ddNhuy9EeXLP5WOMDrcASAiefA/XJsb2PKx3lmaRUccM9/k0fRlnRz0acQlxOifsEuRv
         XAIvoeYhq9pJtK+tbZTdXbgG+zjYsdPZ+bDU+SQuDqxzHa0lkNifPN3Q+plwouFZBNZa
         bZCTVL10r1Pmkctzwq+6Esx10jyvMclMv86eFTjunRd8KiAnfoC4X/5o4LHUcLAaxpqM
         X0R6lQ6n/zXjkNayU1qnHtn8iHUD7jkP3zsjoWNbvFWeucfbMOQx4E/4MvabmhVbDVo8
         P9qg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gCbDyLGs;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mWqiX06dG8Av+I4zR5hRLXwCKwDfRdUXs6WzPHTbIlQ=;
        b=dsHZbAUTaJZzunMjLV5j4XlDl6ribscYLlqleY7IeWGBWyQ0K1WpO16KcOxZSVtGbv
         gyV6iLUZXVOW9AukFxCNlX24IAjCz/mgXGGumv9wMklgdu2t7Lcgx3KUOvRP4MZl3N2e
         2SeqY2gNd+5yzLntFEBBrFaZI/wkXyqg1gyiPWcaHyswkFvJdLrZA/HtZL61yNQErOC+
         BpraDG1xe0fCJsmgi3oNDGMYEz5kFU3o6IMskbMxUoCbyF4jcPZwQsH0sH8/f6xq7W8W
         /640wo/I5RuXrIzg17J6+zoeQNNx1JaF/UrPpaJh+ik9t9Bvom3HTEg1GXCi531N4as1
         GAYg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mWqiX06dG8Av+I4zR5hRLXwCKwDfRdUXs6WzPHTbIlQ=;
        b=RLFkWGRxNuVnls9DKcw1Q0ZeEuCckoL8w+dG85NKEgwi22Mor1dpQkpGafYZ4Jw16H
         2dWG3/NxjOvOX46qPp2OxGoyndtnsJ7wTEvjA2VqB6lXdGjCWKddo39vMMXA9vw4F7q+
         M2hcIJ00rPeBYK1Q6DKr2yfmwCxdy4LVc3kJpqMea4EjC3Bf6Damz2MVK9fkd4/gP1t3
         ofWcIS6GnJ/ppzBRBoSq7g4qkzbyb3GEq61tVKIopwHveRS301jG9Apno0B1nQQaZzhP
         ISaoEw/CoBipqRYdZ9pz0AxWqxk0+KhDnbG2AsNqaRUF1jEqy+Qn7MTxaQYed/e4FCB4
         tWZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mWqiX06dG8Av+I4zR5hRLXwCKwDfRdUXs6WzPHTbIlQ=;
        b=XuU/Lo2THhWoJkyRzIxmVP8q+Zu9fowg4Ul2TA/asY9lplLTef1eP9YxlOQ5MysMLo
         i9220z1BsI2Iqu7tEGen+WOnG75GyrhMG46qUHQW34wsWWujiI+C23yi4IHnaU1l1HyX
         IP+EFct43YkycTHaSLSRhvNXu6ObYk6KExsllA7meIS2LvlfL58ha7YnfclKn5kAvJSX
         1h722miuxwLbihfs1E/Gg8lB410NW9S5N25/fNmw4KrZT3ifmd9XiaeYkiV2dy9Z8dvO
         FZeTjCCb2OdS58H3sNHKOXnfzHb7uqzKaYWHmMLcBD6CbsFTMgPueCrGo+a0RsIMPqW+
         pnQw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV2gZSP/a0PidiCKVGMjoqez8eOvvuiWhZv0U8Z5T6G2AOGuWPd
	Rul0qvU6B3AnjR86019LAgk=
X-Google-Smtp-Source: APXvYqwWhsOj2bCkivz5h6gxSgcRkHSlaSj0Z1+ARxKFu1+BomXOjfBu8u1hPnTSibxSVC+kGQol4w==
X-Received: by 2002:a1c:f914:: with SMTP id x20mr3102699wmh.142.1565700306385;
        Tue, 13 Aug 2019 05:45:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:6484:: with SMTP id y126ls552993wmb.1.canary-gmail; Tue,
 13 Aug 2019 05:45:05 -0700 (PDT)
X-Received: by 2002:a1c:64c5:: with SMTP id y188mr3074293wmb.154.1565700305782;
        Tue, 13 Aug 2019 05:45:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565700305; cv=none;
        d=google.com; s=arc-20160816;
        b=GUZAWz9r9nK9CH5geGnYtMYnNlWMHVLpAnR6x2pWBSnd+6kRNpc6wu8SXzdKi/YZdi
         nMKLl+dvwcm+K6NvFePQNgmZtCZ8ZXVqNbJb8xmhzOUmjtHgI6WjNBJKPoIZrDeD3sNF
         tNdGTjzuSt1hAbTIwU2tqoXgX7cIdWVcKJ2aBD7pI/Gh+KGSZWo0QkVw22yhycZ3/wXN
         4/h5Avxv6uIJhBtfr7O/zL1+eUXg15y2REadflO+E+xr7SL8GrfhvGVKx+NRwxVCYOGn
         C7nkXGBGxQG/bxgrn5RMEGeQjuvJ68ayUDld+QW7H8ecbuLE0rFtCBXG4lA0bsYCp+sJ
         fz0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Nkts4LtZcrW5Ro8T3DBoeBEvb4PQKRLGam7T/wDj6kM=;
        b=n0aNIh/hw4Fiiwl0ERnNJkDudhwc2X55m5gti52lUK2GSd2vxeXLSOrMwIi9Xzzur0
         oqWvxM9FbnRZazEHd6Ej5HylvBmfC5l8NKza6vyfrgpnHySQNR5OweSjdrHEQSOJ/HWY
         Gi1OVaJ04CjwAlbW7U/AVU1xYeoXajjxurgtWfM7kdopdVPtU9kATjqVN00knasomNWI
         Fh0hnHLEUMtjCo1/KQk6QsHjk2XSVRsir2nCk1HRGePXvnCwHUQiwCAyk1B4Nwln1dJh
         dg6A8UlpJpiuSMLZ3Evv2eQtRZ020BwE52JHIgLJjfbel1cksv6BsiqZ75ReI2ge0p5Y
         teVQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gCbDyLGs;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com. [2a00:1450:4864:20::143])
        by gmr-mx.google.com with ESMTPS id q14si39855wmc.1.2019.08.13.05.45.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Aug 2019 05:45:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::143 as permitted sender) client-ip=2a00:1450:4864:20::143;
Received: by mail-lf1-x143.google.com with SMTP id b29so69417401lfq.1
        for <clang-built-linux@googlegroups.com>; Tue, 13 Aug 2019 05:45:05 -0700 (PDT)
X-Received: by 2002:a19:e006:: with SMTP id x6mr22095212lfg.165.1565700305317;
 Tue, 13 Aug 2019 05:45:05 -0700 (PDT)
MIME-Version: 1.0
References: <c0005a09c89c20093ac699c97e7420331ec46b01.camel@perches.com>
 <9c7a79b4d21aea52464d00c8fa4e4b92638560b6.camel@perches.com>
 <CAHk-=wiL7jqYNfYrNikgBw3byY+Zn37-8D8yR=WUu0x=_2BpZA@mail.gmail.com>
 <6a5f470c1375289908c37632572c4aa60d6486fa.camel@perches.com>
 <20190811020442.GA22736@archlinux-threadripper> <871efd6113ee2f6491410409511b871b7637f9e3.camel@perches.com>
 <CAKwvOdmAj34xDcMUn7Fu_aXdtD-7xHjHuU20qY=rFcr_Kz7gpg@mail.gmail.com>
In-Reply-To: <CAKwvOdmAj34xDcMUn7Fu_aXdtD-7xHjHuU20qY=rFcr_Kz7gpg@mail.gmail.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Tue, 13 Aug 2019 14:44:53 +0200
Message-ID: <CANiq72m5=pqHaNi3P5VAMviaoX6yxT7OPg6sys1uMDki0g2bOw@mail.gmail.com>
Subject: Re: [PATCH] Makefile: Convert -Wimplicit-fallthrough=3 to just
 -Wimplicit-fallthrough for clang
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Joe Perches <joe@perches.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	Linus Torvalds <torvalds@linux-foundation.org>, 
	"Gustavo A. R. Silva" <gustavo@embeddedor.com>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=gCbDyLGs;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Mon, Aug 12, 2019 at 6:29 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Sat, Aug 10, 2019 at 8:06 PM Joe Perches <joe@perches.com> wrote:
> >
> > On Sat, 2019-08-10 at 19:04 -0700, Nathan Chancellor wrote:
> > > On a tangential note, how are you planning on doing the fallthrough
> > > comment to attribute conversion? The reason I ask is clang does not
> > > support the comment annotations, meaning that when Nathan Huckleberry's
> > > patch is applied to clang (which has been accepted [1]), we are going
> > > to get slammed by the warnings. I just ran an x86 defconfig build at
> > > 296d05cb0d3c with his patch applied and I see 27673 instances of this
> > > warning... (mostly coming from some header files so nothing crazy but it
> > > will be super noisy).
> > >
> > > If you have something to share like a script or patch, I'd be happy to
> > > test it locally.
> > >
> > > [1]: https://reviews.llvm.org/D64838
> >
> > Something like this patch:
> >
> > https://lore.kernel.org/patchwork/patch/1108577/
> >
> > Maybe use:
> >
> > #define fallthrough [[fallthrough]]
>
> Isn't [[fallthrough]] the C++ style attribute?  **eek** Seems to be a

It is going to be very likely also the C spelling too, i.e. C2x will
likely be released with attributes. [[fallthrough]] in particular is
still on discussion but it may be included too (thanks Aaron!).

> waste for Clang to implement __attribute__((fallthrough)) just as we
> switch the kernel to not use it.  Also, I'd recommend making the
> preprocessor define all caps to help folks recognize it's a
> preprocessor define.

Hm... I would go for either __fallthrough as the rest of attributes,
or simply fallthrough -- FALLTHROUGH seems wrong. If you want it that
way for visibility, then I would choose __fallthrough, since the
underscores are quite prominent and anyway IDEs typically highlight
macros in a different color than keywords (return etc.).

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72m5%3DpqHaNi3P5VAMviaoX6yxT7OPg6sys1uMDki0g2bOw%40mail.gmail.com.
