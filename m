Return-Path: <clang-built-linux+bncBDYJPJO25UGBBINQR75QKGQE2Z55EHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id 03A0026E781
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 23:41:55 +0200 (CEST)
Received: by mail-pj1-x103b.google.com with SMTP id fy7sf1882573pjb.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 14:41:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600378913; cv=pass;
        d=google.com; s=arc-20160816;
        b=bW35DmI2QDvAKJHaU0u2Ykl3zHNufR6ilBHD0qQAJkL6aRqVs6+kSRsk3MfefSpRJ1
         BxvSKXIQNUcrhT0Svg5aIDNk3EFUVLdYnNKvb3Ul6Y+OLv2ZMORBjmvU9LgHxipNTKU7
         IQWxkHwcutFeEV/FysuAPO+m3IT91b9VSqrqVc2WIKhGOCwwKj2O1NrUb1ONd3VoU63T
         uz57SITQj5Ajz6tsu8DSJwrX4DrrjvAPyjfuEON7fRd/2G9F8wEd7pgtuWKOjustH2Ul
         QwZ5Kae4AqBvv0zVYQT7aAgF9WyDet8Sk1HSbVSukkgAiMW+JLnC8xiAYVzLJEUH5NTu
         txug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Uw+0n03KZ1EHo3MxCA95Eh6eJwr4gT/e9ghhRB6Whk0=;
        b=khgsL9k36pn5dGdVmoaVC2k+Wy2A3wwgBLeHZwecoQi8em/ccMs//x2ef9FGrN3IvR
         o4qv2KlXJGQJGL5mzGtXkZ9KWxwfEUZSCfUNFutfI2ZItHbiFJO+dMxTVjlaRWNpcSVy
         mUJM7SDbsJfqy8B1uid1Mae85C7ol5laSdkb2T95ml9dGarV+DVihnewEs0f4yWgIhzV
         Cdc3DbTbMAUSmadso7cFEhBV/ze1pvoSAEI4G0uyBfqpKFgsehhEGW+zo9bZLOx33pwO
         +L/nUQlLqK8xm/P2d9PGbVfusZRicizeOsaDqTVLW9vBsfqIUzem1knJagULqjHk9rbe
         CkOg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qva0PxBN;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Uw+0n03KZ1EHo3MxCA95Eh6eJwr4gT/e9ghhRB6Whk0=;
        b=lj5LcLkbIMzmGf/KiRFTjhzFKjfy5PtW1V1abM2XCXeU/C+pa35bAXMdSRQzqcNKe9
         pXAZEfBiA2JFVSL87oe2JO/sNV/OGTzm8+KeQK/rgiqjBVg4E5B8HhGB154lDkyRAJsg
         yNzt31IDdMpHEOyGVj6pBwKR17ZJJOK6slp2lVI2w8BxmnWf1tC804mDcckQTZBtRUs+
         feG90GRgWKwtlf/HPDeQNM4sd3fQTgFkW9OwNfQo9fvflkbjy0eG3HUjTY9Aas/Z6EOs
         YZHJKbnuQOb9ymf0MMYM1EhKa6el1iSZ0rpRGkS3/5iy5BhnM2CQT59EdbEwpLXsDYCm
         7XNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Uw+0n03KZ1EHo3MxCA95Eh6eJwr4gT/e9ghhRB6Whk0=;
        b=kokxdFz5OD/YJ+ZH0pgt5K4RuIlSFnm8zMmkbvvTQ8IhVuSy3XtfBCZk3nVneEbEui
         XQXijr7mKkq1GILnyJ6oAlzH4lmlvwJrwOwKUXkiD0p2oIiHe36oJ6TyhAQ4/xMBRi8U
         jPDZhs+60bW9eYlsivvpomEzNew1tWetspWMY34zF+O/HP0W44GUCw/lF2oPEyYeFjRi
         ekbT9b+9oCxVsqbKxu5dE8vPt0cv6UXweKXt6BProrzD2s5zwE/1UPUCihp1lX949daR
         utKNkFRqKqt+PXxrjuYjQEF5Kw+QYr+DnE+iQZrfeDtbKuxHqtmtUYzkfjvGKWRisZW6
         hNXQ==
X-Gm-Message-State: AOAM5336B3VR07oXrDquXEhSL+2LYdfueMgyqF9Vl9g4Pgqblc/qUboc
	pkXjhuTwG+P2smTIpc4J9iw=
X-Google-Smtp-Source: ABdhPJwoOavfQD5RrCJ0A/WzhzGfNSN35zDotBciefQzQmgk4kBfYH9v52vczUTc7kthbKW38mZ+kQ==
X-Received: by 2002:a17:90a:ad8b:: with SMTP id s11mr10092001pjq.40.1600378913739;
        Thu, 17 Sep 2020 14:41:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ead1:: with SMTP id p17ls1631688pld.2.gmail; Thu, 17
 Sep 2020 14:41:53 -0700 (PDT)
X-Received: by 2002:a17:902:bb82:b029:d1:e5e7:bde6 with SMTP id m2-20020a170902bb82b02900d1e5e7bde6mr13023988pls.70.1600378913171;
        Thu, 17 Sep 2020 14:41:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600378913; cv=none;
        d=google.com; s=arc-20160816;
        b=hFYNAcejTPrdal+PvCljM0wCcFyiSa5uhZE5PMgcXtm7yONuQz+ReUR0wbBUpx24O+
         r5fauEDKa0ThQd0vvW0Zqb/3suifbBem9+G/kqg+Js2AeJTqow8ptVWF5snZlyYTBY6f
         LU3/Y2Za93HQSOv190P9r/drJQThKX7gVDuKmAfOi8Sv55RymiOn1xvQbfFPZaaTNS+B
         GvkQDmX0opsupNoOqDry0X9JXPPpkcYZHsnapn8RKh+nUafwSdLWyuTXvEP7PGFh3a4M
         yW0gceHmLasgFBd2H9sVH7uqKAT++KG5hJ4YhPpZp6I+xp7eenX+QRYxACERbydyxCdO
         hkZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=QVbYh+hXgKacyMS8b9RupbFvdNVcoZTVLthm30rJh0k=;
        b=hNzzhE5mtGKoKxK4l0XErX5uzygJ1wh0Xt+VgT8R7qXLPHsxebC9rit7myZa829oI5
         XdZpP8CAs4fLfr2JC6MVTPsbQALioIhwxHnFCRYSgydmbJfQjo5SH2sh6FnJSI4l1G+5
         L02syVOrikPnW8MG39DwEHNNX+X78PxLzFJTlePyKMhupZ2bbEXV6SFMu2fv8LnGk2sv
         A4Pr1DoFmlE+FyrSyZ0hQb3K65wV3mgkCs5DhP7lAWMkmRascq/ybFi0WjG4o/H+Tf0r
         slU0D0j/nQseX4PNjloedk6yjslDwh46xL4X/QscywiXSmoOmTh7u7OFg+IagBVlN5Wm
         6xxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qva0PxBN;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id p15si72502plr.5.2020.09.17.14.41.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Sep 2020 14:41:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id d19so1846038pld.0
        for <clang-built-linux@googlegroups.com>; Thu, 17 Sep 2020 14:41:53 -0700 (PDT)
X-Received: by 2002:a17:90b:698:: with SMTP id m24mr10118248pjz.32.1600378912642;
 Thu, 17 Sep 2020 14:41:52 -0700 (PDT)
MIME-Version: 1.0
References: <9441ed0f247d0cac6e85f3847e1b4c32a199dd8f.camel@perches.com>
 <20200916200255.1382086-1-ndesaulniers@google.com> <ce28bb9bc25cb3f1197f75950a0cfe14947f9002.camel@perches.com>
In-Reply-To: <ce28bb9bc25cb3f1197f75950a0cfe14947f9002.camel@perches.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 17 Sep 2020 14:41:41 -0700
Message-ID: <CAKwvOdm84xCFq_KVQcNws2QveJdOM_uRrH9s023Gv8sp8V79JA@mail.gmail.com>
Subject: Re: [PATCH v2] nfs: remove incorrect fallthrough label
To: Joe Perches <joe@perches.com>
Cc: Trond Myklebust <trond.myklebust@hammerspace.com>, 
	Anna Schumaker <anna.schumaker@netapp.com>, 
	"Gustavo A . R . Silva" <gustavo@embeddedor.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	Hongxiang Lou <louhongxiang@huawei.com>, Miaohe Lin <linmiaohe@huawei.com>, 
	linux-nfs@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=qva0PxBN;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642
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

On Wed, Sep 16, 2020 at 1:19 PM Joe Perches <joe@perches.com> wrote:
>
> On Wed, 2020-09-16 at 13:02 -0700, Nick Desaulniers wrote:
> > * (call of function with __attribute__(__noreturn__))
>
> I guess panic counts.  I count 11 of those.
>
> Are there any other uses of functions with __noreturn
> in switch/case label blocks?

If you look at global_noreturns in tools/objtool/check.c:
 145   static const char * const global_noreturns[] = {
 146     "__stack_chk_fail",
 147     "panic",
 148     "do_exit",
 149     "do_task_dead",
 150     "__module_put_and_exit",
 151     "complete_and_exit",
 152     "__reiserfs_panic",
 153     "lbug_with_loc",
 154     "fortify_panic",
 155     "usercopy_abort",
 156     "machine_real_restart",
 157     "rewind_stack_do_exit",
 158     "kunit_try_catch_throw",
 159   };

Whether they occur or not at the position you ask; I haven't checked.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm84xCFq_KVQcNws2QveJdOM_uRrH9s023Gv8sp8V79JA%40mail.gmail.com.
