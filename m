Return-Path: <clang-built-linux+bncBDRZHGH43YJRBYMQ2TVQKGQEKO6URWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 572FBACF20
	for <lists+clang-built-linux@lfdr.de>; Sun,  8 Sep 2019 15:55:46 +0200 (CEST)
Received: by mail-wr1-x439.google.com with SMTP id l6sf5651949wrn.2
        for <lists+clang-built-linux@lfdr.de>; Sun, 08 Sep 2019 06:55:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567950946; cv=pass;
        d=google.com; s=arc-20160816;
        b=zsYn+oRX3pXM/c0O5WnBXzFyopGlFdZgwDg4t86lKBCmL3hdKRHtAzBCkW9J14rzTQ
         /3pHy8mPYX6F7iPA22C4qabvCCt0PvDmxHGkTgxDH/dpqXVrQGLsY/6MyTjjUghl1z+k
         vck1vSGcCMmRosJS1qjOpPHirJSNzLtCg67lhq/4tulMapt/E8xqyVYHht+oS4bdJbo8
         OZSit2/NJynYGb+Rw8T3f9K5M/B+9Zm7qnZ1N2BKin1Kysm8ALkbHp99NqqrgrNKMXaF
         D31Hud6tZRCVP5P+9t0qhi9m6Ay/CSdMVv2wOGhgEAfzbYqwRfMjjLyLVpWYC22mawjY
         rbEQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=berJ/+Z3LSW1jLBUOu/IiUXt7C/tobgF0K21Yxt0bOs=;
        b=VSYHNT/KH77KzAMtFWkGZgQlfRee0g6mRbzpN4aXQvPCLcp5+nDQPvnRkzcxl98dRM
         uO4gs8QlwC9QZd5tBcFOiSmjY6K8GISpZz/WZi1vsqwO7lSEFlaypJhywOAYZde1GnuI
         K24tJXQCS7CacA4cKM3WkpQIkWhBULr0RPx/6Qr8CEOsfxxU6nIRekxZbNz7Dau0l3SU
         Gc0Y+gFk3TSFTGIWZHAPxV9zp/h58FNDcqmtq1XktRqKhnvcZTPvzrmVu8xcLVWj2/qy
         ahtDVRipKGd2oplYGGL4M99ucoPfDUVCwfZRjnok1g56EH3BNihCDhadJq57MKKq2d5H
         8ojw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NH6YvOJS;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=berJ/+Z3LSW1jLBUOu/IiUXt7C/tobgF0K21Yxt0bOs=;
        b=jndHCMEeSBU4MwSneIUmrAlP1/clG/vqhfTXb0dYoHjMInn2PAtQLYEy+/vcR8MIz5
         feSGbk94LY3LT5jQsWp1zVGcs+m1dCkDjXj+HNsAQCFxGrg6fq46SqRZcboE6ZcM3KqA
         N7yMB30wfMd07W2y5t9VMy+lWElCn56+71ZlBZjL4hIatj97AlU7pM3+yqUPsLbnCZOx
         uyx4veZMMgxQxJFKVkv+oZ2x9vRJdPiD9yIjJi4m2yhrLTb0i9DLb6okJI9yphl14YQj
         o+3Z8uBbDK4xKMuervMvtr+Dq9rphGkJiV6ZBUcDIvhJAL/j4mI1PtgKGxLh4HoduIyO
         fDlw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=berJ/+Z3LSW1jLBUOu/IiUXt7C/tobgF0K21Yxt0bOs=;
        b=MYx4o/DBgmOvNzjNM+y58mQnoHQmQ+bDROscwKOKfnRKbQ1f7Sum8QmgGw2UN0urHr
         TkcGwz/Oxr9bkPc+jtYkgz0gZkOVAH1FYCXdj7N/G+ioV5e/HUDm4MsXwwrRxw7qKrIY
         u/tGgP26MtAVqfl4edL4fkkA8y+0JH9bVGdowhvkVw8JZ0vdLGzrYW7WvtDkJjAj88Hp
         sls/NdHmtqGoT7EH5deMLhBgGHuPESe9WuQdYqBrMwNBVMU0eRFioGiR1fIRADiPd5dW
         M5fr+9HIfoki7OpWg1XcyUTLrIEQapCudWLz3ls2Qg15+min+cBrFSFGUeqZhZrY8zbt
         /NDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=berJ/+Z3LSW1jLBUOu/IiUXt7C/tobgF0K21Yxt0bOs=;
        b=qxzsd1nkBEDdIfRfQuO8ixoEwoNVAEJ8anQsPIleXUSir/BTdLP4PrGrtNnzs3cG7t
         kb9dnL8R2T9vQfE1I4NW7Sewzfo25dHeSDkgkG04LL4b4BZo+EYBbykQsYGIS+GEJ5j5
         ZdDBzU7E2/e6l+A3y592ZSolRcuicFACF3g9AVwS7DToMBk4fMZ9NOAV/z/pCWoiOEsh
         dIfYUnHGK3gthSVRWzf3qcHRZFSoyu8RwB+D55c5k+700+qThXS1ZQifKV9UoomyNI7w
         5F5ms4t4aIOjm7Bqi37bGsfKBFTiX/mnUBgTs7+Dl17BQCrMkLgTW/a5SGI0A1PbSow2
         puDg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWzoo9q1X5Xlde9dv1SfUzrllaHiOrGMKi5pOkUVB7faq/7f7aw
	2UwHZLvQ2aDWXiezF0afzak=
X-Google-Smtp-Source: APXvYqyIvuAL9k8oVbA31Bb+PN0KB+uZgyaa+X/Ej4M+3IWZNzjFHD56nATb4Dsw60RJ8ZgmTOQd8Q==
X-Received: by 2002:adf:e2d0:: with SMTP id d16mr2714176wrj.245.1567950945998;
        Sun, 08 Sep 2019 06:55:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:550:: with SMTP id k16ls4134654wmc.1.canary-gmail;
 Sun, 08 Sep 2019 06:55:45 -0700 (PDT)
X-Received: by 2002:a1c:be04:: with SMTP id o4mr15535117wmf.60.1567950945503;
        Sun, 08 Sep 2019 06:55:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567950945; cv=none;
        d=google.com; s=arc-20160816;
        b=YWwrIJvBQGZnRAQNcBsu1sFdTK88bwUiN0U8dEAC2XhfNHr6+PNicCBdnbgEuUVsrt
         OwBJNO6RjRLBva8AOTcsjv0j/tEZCRQsP9PRHkNGnoMUDulHViOwBfQlAMMp6CpAj3Be
         /uog2aGc3ES1ZqEJiFMpl1euExElOz8HtfTHsv8nDSGPNQOKOVjtUl3J6p8AMBKHWzLp
         EXzwPirnJBmFMUTNxTwj7uWMwfS44NRUwvMJqc0HMgjZ+iia+3SmfZPpG2ggGAi71LT8
         9ywYf09KhHVs7ICz4xlEMZh3DffIQIqu+2/+KtxfWI/z/YN4cqu+jv0Cwwh5rptAeoeI
         eKBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=sF4vWdoCClkvUWmjG7SmHm1u0cF208Pq+GV3iOlmbEI=;
        b=UIfXasWzY0Ze19JzehXn7pbK1szPZZ3zTL/MLytoC3JfVeG0t+86T8kCmCKpBQ8ZWZ
         EZMPR+6h8LHQqWM2U0zrYWYiLrl6DR8xU1+F77OYcyou5BMRZjd0ReLca5KEnTJyl2Wh
         C2b4wOvTsxuZbdQ1A3G1SCZPbn37u/TfPGKX307uhRexV3q83EzjX9T6DNV0c8y/yjqW
         q7aurAQYLqB7n7txbkptZKl1sfQBOsIIAxHJtber1wIziNR4scEOWjARpxBDQD4zPoQ5
         jFbV/35nq1SVMGdXlnqDaplcIBQ9suGovYeD0QWUc9mtt+ER6fw+qQxJHugSqzIYDtwq
         1WQg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NH6YvOJS;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com. [2a00:1450:4864:20::142])
        by gmr-mx.google.com with ESMTPS id a14si430970wru.1.2019.09.08.06.55.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Sep 2019 06:55:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) client-ip=2a00:1450:4864:20::142;
Received: by mail-lf1-x142.google.com with SMTP id t8so8428999lfc.13
        for <clang-built-linux@googlegroups.com>; Sun, 08 Sep 2019 06:55:45 -0700 (PDT)
X-Received: by 2002:a19:428f:: with SMTP id p137mr13288714lfa.149.1567950945057;
 Sun, 08 Sep 2019 06:55:45 -0700 (PDT)
MIME-Version: 1.0
References: <CANiq72=3Vz-_6ctEzDQgTA44jmfSn_XZTS8wP1GHgm31Xm8ECw@mail.gmail.com>
 <20190906163028.GC9749@gate.crashing.org> <20190906163918.GJ2120@tucnak>
 <CAKwvOd=MT_=U250tR+t0jTtj7SxKJjnEZ1FmR3ir_PHjcXFLVw@mail.gmail.com>
 <20190906220347.GD9749@gate.crashing.org> <CAKwvOdnWBV35SCRHwMwXf+nrFc+D1E7BfRddb20zoyVJSdecCA@mail.gmail.com>
 <20190906225606.GF9749@gate.crashing.org> <CAKwvOdk-AQVJnD6-=Z0eUQ6KPvDp2eS2zUV=-oL2K2JBCYaOeQ@mail.gmail.com>
 <20190907001411.GG9749@gate.crashing.org> <CAKwvOdnaBD3Dg3pmZqX2-=Cd0n30ByMT7KUNZKhq0bsDdFeXpg@mail.gmail.com>
 <20190907131127.GH9749@gate.crashing.org>
In-Reply-To: <20190907131127.GH9749@gate.crashing.org>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Sun, 8 Sep 2019 15:55:33 +0200
Message-ID: <CANiq72=qXM=jEULGsWup+AtUTMTd_T-LHLY8iNna5y+zN3E6UA@mail.gmail.com>
Subject: Re: [PATCH v2 4/6] compiler-gcc.h: add asm_inline definition
To: Segher Boessenkool <segher@kernel.crashing.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Jakub Jelinek <jakub@redhat.com>, 
	Rasmus Villemoes <linux@rasmusvillemoes.dk>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	"gcc-patches@gcc.gnu.org" <gcc-patches@gcc.gnu.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=NH6YvOJS;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Sat, Sep 7, 2019 at 3:11 PM Segher Boessenkool
<segher@kernel.crashing.org> wrote:
>
> I wouldn't.  Please stop using that straw man.  I'm not saying version
> checks are good, or useful for most things.  I am saying they are not.
>
> Predefined compiler symbols to do version checking (of a feature) is
> just a lesser instance of the same problem though.  (And it causes its
> own more or less obvious problems as well).

That is fair enough, but what are you suggesting we use, then?

Because "testing to do X to know if you can do X" cannot work with
source code alone and implies each project has to redo this work in
its build system for each compiler, plus each project ends up with
different names for these macros. The C++20 approach of having
standardized macros for major features is way better (whether we have
one macro per feature or a __has_feature(X) macro). Note this does not
mean we need to take this to the extreme and have a feature-test macro
for *every* feature, bugfix or behavior change as a macro.

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72%3DqXM%3DjEULGsWup%2BAtUTMTd_T-LHLY8iNna5y%2BzN3E6UA%40mail.gmail.com.
