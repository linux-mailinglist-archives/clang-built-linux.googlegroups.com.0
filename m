Return-Path: <clang-built-linux+bncBDYJPJO25UGBB3FS5L3AKGQEDR3X4BI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A0941F004D
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Jun 2020 21:13:49 +0200 (CEST)
Received: by mail-il1-x13f.google.com with SMTP id c29sf7068888ilf.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 05 Jun 2020 12:13:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591384428; cv=pass;
        d=google.com; s=arc-20160816;
        b=VFwjJOaJUiZOvk4qh4bOpjtZ7rMiTAVMHQMFChilWfUFkZ0NX8V9/0tcOccfwHcb+l
         xP4mWRIR9mLiaCqXM20WA63/medDzkpyFfiah6xRLqifGkdbz+McE8jrxgdrIxuf1OZp
         NyxOaqM+my/FtywefzRcCNU7nLkBI/2zJdHNgpUmzQxzlW5hgq+z7qXJViHyPNo7PleZ
         ASgu7bfqkJ0wrQIDpyh9otgvQhF7bZKH6iwoMwG40wRTzK7NCZ62NcJ6fKYGBV499m2n
         8F8zR2znz62qmVEUCncRIuHHBFS/50qHQHMV8fhz+3+GLfZ5EopMfRrZyXjpWwqwiKjP
         t05A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=uHRJsredUTQyoQxK4ai5MwXC2uDUdW/oBd9kd9AgN0I=;
        b=wEHcEfDKHyklaCoZ+tvXl1d8pYmrZjchuBzN46iUZJhjzj3CzvfGQgBCE3jXjTXDO2
         AInba+oZgbtYXFQVfjQgv2M3mkMMbaJk9XVATQwhmmu8KXPIUeIjxvdhaPfyu7B42OAh
         FFrQyGAKMlgnloTuQ7c2zJ9QA4hatwd+WRLL7fwRyRs037AaupledVnP5BrovJPa//h9
         zq2v8hxd5B/VIJbmjn0VepkyEvHudHlklEF0SeMt5bOr656PT3rRiH8Ql3oEpf+QU/9g
         nGE88tvEOJn0YCvhx/4FTWTws60tk1OILIUYcGRx0owY+GX69QChAu2eaRBwPBQlDxC0
         P75A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=o4DGytFB;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uHRJsredUTQyoQxK4ai5MwXC2uDUdW/oBd9kd9AgN0I=;
        b=hGecGva0LWo5Gg6VCj0/5tuYKSUqWTctUcdFcvNKb7643N5bDfjmtQadcix/jCGCX5
         MAdndJPv1URORoTG0fuh1LI96jLbcSZwqMD0vltJNzSAd/r/Vkd4EGXSrPFO4zG1Bjiw
         BBjXGYfLFjs5uqC/ajXy9mCvJzkyZjt24KZr6/TFE0ibIZ+kD2qt9NqDqnYVt62zYW5X
         smBJIUNS+unpfDnGufYzmWxm6Aw9CzhhdxCyGTgJz+7lt+xc+s7l92uwDjEqJPE5nFUm
         e98qJwR7QFTkYH/QxR2ZZCAL/Xh+DehLUZa3Fm9MkTXdgBuwbtbP5IvAS7NA7/6SBrgb
         5MHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uHRJsredUTQyoQxK4ai5MwXC2uDUdW/oBd9kd9AgN0I=;
        b=tlF3/TjQ68T0eCFFEya9hw08F4t3eXDXXyeAIYYiM7LMU1br4KU6843sg6EA43YA2T
         mCS5an/DNk0PLd757/Ce6UD/DnNj2Ac6VLFyj48k6qPD94eretMsxWUGAmf8u53jdhUO
         kAEJhxwaRbGXJYjlqu+v7DVJEHccxPZbiCYi2uvKCqLU2pjF7xOYk26Q5jUq0JHnHJn2
         fo3TwdGNfApLZtWgZi+ycPPSXP/XJbaUW2outk1WI/M65U1RLbr1BxQSz64y25+1ub69
         cGhsE0smJHHrLUYuYlXxhPLbk/BxRq/hG/7cGZgsKTImRHWCGo7WIySZtklvZBGk71gV
         EaSQ==
X-Gm-Message-State: AOAM5305G6zAC/H6PzFbpRnF72ecsaSdVhTVAoTFj+GKMnMdryQ1X0gt
	3Vp71oCzYBnQyq3jxh2EH00=
X-Google-Smtp-Source: ABdhPJw7rfSXEzEu/NVmWqEDZjI6oZA8Pvpoq1FB0SsZcMjCeU6Sa7wJO9Z4BiPxQgL5grH8K/fm3w==
X-Received: by 2002:a02:390b:: with SMTP id l11mr10032911jaa.54.1591384428255;
        Fri, 05 Jun 2020 12:13:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:5b11:: with SMTP id p17ls2729997ilb.0.gmail; Fri, 05 Jun
 2020 12:13:47 -0700 (PDT)
X-Received: by 2002:a92:cc8e:: with SMTP id x14mr9672815ilo.152.1591384427785;
        Fri, 05 Jun 2020 12:13:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591384427; cv=none;
        d=google.com; s=arc-20160816;
        b=fZsSnjJiEvQAwQ+jnIgclA7RwagU8Kn00uc7H1xY4ZJ5pMiA3g+AFSALP5NDszSEVg
         NRrEokKW3JpjbBNAMJp2y0CE44KDN63meHkKqTfAGPqIRVYLsZhlRL9A3H8EVWbwQChl
         gHPw7U5ZVOhlngHdsiy8Z5GdGQ0X+Vi8LPJwezXI1F7k4Lip0m7/nD2GU3LVLDW5VyMx
         w/9oGbjdWHfXiBlLHv2qNyqi5k5zDfKWVUf1DY/hQerYc2NZ9L+6M3aX1IFmG1/eyucx
         S4Hp66h0p4cwCHSmI+Ho5gtk73Jh5q1ehyGa6lktexGyf41WPwusjgO+zZXYduZ/6xnG
         hgZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=6WHiUyOIDHR4+bvFUXosn5rN3X+sqfDKa0rZNHtAmfs=;
        b=ya6Uqod5hWej77Iu3jYh3ZrZpZxuw1vZK+UVB8D3R5nZOvmv/nWQoX5oTaVFFzjwBY
         SJ0Ak2OoxdFXkLtR24Ah4zx1feyiSPPMriIgNwaCYYgVlZ6h7nbard9JSH4E2a/ojbA3
         1RtoQxerxKurRosJGEriMiljbfy5E91XxKkoCLVHL4laUWeNeVQzod+Pi2V0MQKjaJ/Q
         zn6SU14L7QfSZeGMzWj2vqXycES4YX3sxao0/VIqw33w9kubVLVRw+J6UgHALLQfL8cB
         SiqgSNlfukQhjiHhEOnrVXl5P0rHpD9HTfEgJjtx4rgkMD7VjDyG830EESD5Ht5dKytP
         95ug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=o4DGytFB;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id b1si160583ilq.4.2020.06.05.12.13.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Jun 2020 12:13:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id s23so4093381pfh.7
        for <clang-built-linux@googlegroups.com>; Fri, 05 Jun 2020 12:13:47 -0700 (PDT)
X-Received: by 2002:a63:5644:: with SMTP id g4mr10427299pgm.381.1591384426680;
 Fri, 05 Jun 2020 12:13:46 -0700 (PDT)
MIME-Version: 1.0
References: <202006060103.jSCpnV1g%lkp@intel.com> <CANpmjNPBxkBBnD-y9Hpvsne3o6JA0KYgyxZhbCN+kZv4CD4yWQ@mail.gmail.com>
In-Reply-To: <CANpmjNPBxkBBnD-y9Hpvsne3o6JA0KYgyxZhbCN+kZv4CD4yWQ@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 5 Jun 2020 12:13:36 -0700
Message-ID: <CAKwvOdk5MCxi7c-ANKYRggo1rVrpxbhR_-hWo5j9F4VSaLj18w@mail.gmail.com>
Subject: Re: [linux-next:master 10774/15793] kernel/kcsan/core.c:829:1:
 warning: no previous prototype for function '__tsan_volatile_read1'
To: Marco Elver <elver@google.com>, Philip Li <philip.li@intel.com>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Borislav Petkov <bp@suse.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=o4DGytFB;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443
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

On Fri, Jun 5, 2020 at 10:58 AM 'Marco Elver' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> On Fri, 5 Jun 2020 at 19:42, kernel test robot <lkp@intel.com> wrote:
> >
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> > head:   af30725c132e2e5c5369b60369ff0771fde7d4ff
> > commit: 4e23395b9e97562d12b87a330a2fca3bf10c8663 [10774/15793] kcsan: Support distinguishing volatile accesses
> > config: x86_64-randconfig-r013-20200605 (attached as .config)
> > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 6dd738e2f0609f7d3313b574a1d471263d2d3ba1)
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install x86_64 cross compiling tool for clang build
> >         # apt-get install binutils-x86-64-linux-gnu
> >         git checkout 4e23395b9e97562d12b87a330a2fca3bf10c8663
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> >
> > All warnings (new ones prefixed by >>, old ones prefixed by <<):
> >
> > DEFINE_TSAN_READ_WRITE(4);
> > ^
> > kernel/kcsan/core.c:757:7: note: expanded from macro 'DEFINE_TSAN_READ_WRITE'
> > void __tsan_read##size(void *ptr)                                                      ^
> > <scratch space>:92:1: note: expanded from here
> > __tsan_read4
> > ^
> > kernel/kcsan/core.c:776:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
> > DEFINE_TSAN_READ_WRITE(4);
> > ^
> > static
> > kernel/kcsan/core.c:757:2: note: expanded from macro 'DEFINE_TSAN_READ_WRITE'
> > void __tsan_read##size(void *ptr)                                                 ^
> > kernel/kcsan/core.c:776:1: warning: no previous prototype for function '__tsan_write4' [-Wmissing-prototypes]
> > DEFINE_TSAN_READ_WRITE(4);
> > ^
> [...]
>
> In the case here (and for all other *SAN or compiler-based
> instrumentation), it's clearly fine since the compiler is the one
> emitting calls to them.
>
> How is one meant to act on W=1 reports like this? The kernel seems to
> be full of these. It seems wrong, just to shut up W=1, to start adding
> -Wno-missing-prototypes everywhere.

+ Philip, because the team is probably getting asked this a lot, and
should link to this response.

`make W=1` enabled -Wmissing-prototypes via scripts/Makfile.extrawarn.

Both GCC and Clang will warn for -Wmissing-prototypes when you define
a function without a previous declaration of it, for non-static
functions.  If the linkage is extern, and there was no previous
declaration, then callers may have the wrong signature.  Mostly, this
isn't a bug, which is why it's not an error. But sometimes the
signature has changed but the callers have not been updated, which is
an ABI breakage resulting in a bug.  Mostly this is not an issue due
to -Wimplicit-function-declaration being on by default, which also
helps in this case.

See: https://godbolt.org/z/aYrYfS

Functions with external linkage should have a forward declaration, or
be marked static if in a .c file, or be marked static inline if in a
header file.

For this specific case, it looks like kcsan.h should forward declare
the functions defined by DEFINE_TSAN_READ_WRITE, to avoid any ABI
mismatch due to different call signatures between callers and callee.
Though I can't see where the callees are; if they're only within
kernel/kcsan/core.c, then defining them as static qualified may be
better. (Probably not, since they're exported via EXPORT_SYMBOL).
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk5MCxi7c-ANKYRggo1rVrpxbhR_-hWo5j9F4VSaLj18w%40mail.gmail.com.
