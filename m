Return-Path: <clang-built-linux+bncBDYJPJO25UGBBEHFX7ZQKGQER2QPNEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 53CF91874DF
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 22:41:38 +0100 (CET)
Received: by mail-oi1-x23a.google.com with SMTP id d131sf11793701oif.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 14:41:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584394897; cv=pass;
        d=google.com; s=arc-20160816;
        b=aGdxvcdEGv7/uuHpWMa3ys51o+OXRV3oEb1PJob4rMrJunE2JPGfTNIksTASCV5Tw/
         Uou+UzcCBQ7Fb5WHMfkOrm0uSwRHF4OYh7hdwHs4daeGCWc3U8sol5hlF6aIngt3/fK1
         NKWXYuZSeNbtYtj0eH+DYrxgeR8E+W5NkDi6lOX3U3L/AK6G6Qpl2C1PrLk9V8PJFKk8
         pyujss18OWmYP6w+pHu8L9+1HAv613qPe7AUjsdLWXMElkQzQVa3NIBQvPeDCRf1VKdM
         sfZSvIjwaJ8OCuwih+ynP3vY4kxqZ6JXFiApFp1K9ZNX+QYZMdTr34arlLS01CpoCY/F
         jYhA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=rQEAmeUKBaFyfQkAV5RSnEtqaSs+eKbmPEcXfD676kU=;
        b=z5jFa3HTeiSn7bD7nPU55JMiKpPFTwFiOyCY+C9uIIs3ZXkzOgKMWHzlFqNY2PBFAO
         A8oOjxv0uKEVgn4+6D42JQ5pxro+XPnKeij5k/CyErm3eBnpMt77QxFBpmhEpdW/if6R
         BnEiSYx2TGvqt8W/3/2h2QhiT13PMXLcsyI4PejpQOKOJiTimNPMhPkj5RU3/FiYMUaA
         nF7INjIx3Pd6w42gx1He09d3QMMyWHkAUli5hnUC9vSJIvjADsP55TUe2P/7vO5VBp6O
         fZmDt9Tx8NTq/pEpZDP56VLLIw3SWeo+FJi0sArLRNODCKxmoDmqtk3nIuJiQ4JB7TcE
         r6JA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bygEw+ut;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=rQEAmeUKBaFyfQkAV5RSnEtqaSs+eKbmPEcXfD676kU=;
        b=tRzv/4QB+jPmBi0n3I9eyc4nJoiHvQ7ch2q5WULsbCjR9Oh/WeXJn105LKUdHm4aEJ
         7I+16g7zoyCBfkXcEulCt3S5oFSfOHcRa0+/e+/SThTB5nD+r6rDPAvZwuj/7q1NW7ua
         rN98iNCEBsKNZU+0khIaLykpMryoPiPpGxtqWliVseVsnwfmi+IHzeDr2FjAPMx7N6WY
         fqGrVlvbe83q38FRTG2D6HhAlFbu+VIaahcWN1bWn9HI7kTmDKFcbFqawOHeKe4Nl1SD
         7RfTZH2PI0VS3tawFN0zgtik4KFDcFZtLC4cPgY6Hn+8lse298p6OKgIRmHuKk4D6bXG
         QfTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rQEAmeUKBaFyfQkAV5RSnEtqaSs+eKbmPEcXfD676kU=;
        b=SCvYtzIHxo/NAIO5sU5hhHTJyvvpdNCWOJQuvjozdkm4ZnjtyBFhQ9/9C1S5AGxpaG
         9E0ACWBfzz/ho0QWU8tYzWzN4OgSm3GctgdMlpWFErxa5PE+giRmzZeRbyumOPfsDd/v
         uY971cZcw78MK2n+zaCf1ou4tEvWh4n38HvS/Y7yLLWrCoFXzrXUWSgRsKKQSG8U7c5f
         wtXT4bDRABcYux3ggqsQMRub6Pl+JeDJezjJNa2hEAfAAQPV4SSKIeMSiPZsbArIHQa3
         CTPjorgMFPYXl33b7Cr390h49Jx0W0Z4HDkFAlWp9ryFBjS0ZVFRT5oLVH9eVynAK6CS
         7QlA==
X-Gm-Message-State: ANhLgQ0vKIwwFWV45Ch925jgtvDfmWz0LK+wcml9pdYhfrTrU1PUnAoJ
	ghfTJ0xf4ro6O8a494BH7Qk=
X-Google-Smtp-Source: ADFU+vtS0J1Yic4QTAVTKwYMWKEzUwM5+Aw9XuTJxOb+tg9YsDjBMJLxvSS3LmiApJ5t2Gh2DGMxMQ==
X-Received: by 2002:a05:6830:456:: with SMTP id d22mr1076741otc.138.1584394896854;
        Mon, 16 Mar 2020 14:41:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:13d5:: with SMTP id e21ls6825485otq.11.gmail; Mon,
 16 Mar 2020 14:41:36 -0700 (PDT)
X-Received: by 2002:a9d:ac5:: with SMTP id 63mr1091848otq.239.1584394896487;
        Mon, 16 Mar 2020 14:41:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584394896; cv=none;
        d=google.com; s=arc-20160816;
        b=v1Nclet+y5ENdnm6Gwr0vdKe3CkJ+Z8rrvuoFaTDnjAqGagd2UbEu9WbAAYmGrOZpx
         27Bm53bSFZ8d3cyNeF1O2eQ3S9rOxB/2InDmKWwHy3i6fThcSnsd38IAK0gohqs55rLA
         LHA0QsCzfrPvvHWZkspMEMPgYZHLLBmjKWc7lqmk2iR1LYBLFhkwAEboMmn/PlosXz2a
         Ej9s7TPsq4PlCLPrxOb+Jj/k5vnPzbQARkEwJpMZyHhG5WjejN5iPzRj2cpMDWOEUkrR
         EY7be0OEEp8kMRt1ObBBazzK3GEkjNKAdQAyTgm2k1SROCKCs/5OQa/tLEkOR/uFrB6Q
         h2+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=9wf0Koz5Hqawzf6JsmYQiKszzPagSKBiZUUlt5oOYqk=;
        b=t1ZxyiKn7g0XQ2ZBIeOAeLf/VhOYMYwbvU4kiu4L12g7ko4RiA63usKvi334GGIPDz
         30MEfu/UeF0FhPci1Oy7WGYbBs7XpMectdne4Sr8rO7FXlv7gniIEkvb+hgUqOqNwlpd
         F4VozZUym4yfN+SroAZhqPExb/6XnBJJ8qiGnqR2hyXzTtQERsOfXAOEtTAU9F2E79Tx
         vrqhznJhGA1gTd5qo9l7plIuAY7raWPsn5w/cTqx2fApAkh60Ym4ADBGhQdBBbEsNHuk
         m0AQ63pkihJVH5EW+SAICASFQjoITOmV7byf1kGq1qk69WkYWzFGLCEknKYAEIiYAmmo
         sp/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bygEw+ut;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id c24si128294oto.4.2020.03.16.14.41.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2020 14:41:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id g2so6097184plo.3
        for <clang-built-linux@googlegroups.com>; Mon, 16 Mar 2020 14:41:36 -0700 (PDT)
X-Received: by 2002:a17:902:8a88:: with SMTP id p8mr1121105plo.179.1584394895359;
 Mon, 16 Mar 2020 14:41:35 -0700 (PDT)
MIME-Version: 1.0
References: <20200214054706.33870-1-natechancellor@gmail.com>
 <87v9o965gg.fsf@intel.com> <158166913989.4660.10674824117292988120@skylake-alporthouse-com>
 <87o8u1wfqs.fsf@intel.com> <ff302c03-d012-a80d-b818-b7feababb86b@daenzer.net>
In-Reply-To: <ff302c03-d012-a80d-b818-b7feababb86b@daenzer.net>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 16 Mar 2020 14:41:23 -0700
Message-ID: <CAKwvOdnaRG=7mib9vtWX4wkjQXHeUiioonTaZLStMVXfOOSUfw@mail.gmail.com>
Subject: Re: [PATCH] drm/i915: Cast remain to unsigned long in eb_relocate_vma
To: =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel@daenzer.net>, 
	Chris Wilson <chris@chris-wilson.co.uk>, Nathan Chancellor <natechancellor@gmail.com>, 
	Jani Nikula <jani.nikula@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, 
	intel-gfx@lists.freedesktop.org, LKML <linux-kernel@vger.kernel.org>, 
	dri-devel <dri-devel@lists.freedesktop.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=bygEw+ut;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644
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

On Fri, Feb 14, 2020 at 7:36 AM Michel D=C3=A4nzer <michel@daenzer.net> wro=
te:
>
> On 2020-02-14 12:49 p.m., Jani Nikula wrote:
> > On Fri, 14 Feb 2020, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> >> Quoting Jani Nikula (2020-02-14 06:36:15)
> >>> On Thu, 13 Feb 2020, Nathan Chancellor <natechancellor@gmail.com> wro=
te:
> >>>> A recent commit in clang added -Wtautological-compare to -Wall, whic=
h is
> >>>> enabled for i915 after -Wtautological-compare is disabled for the re=
st
> >>>> of the kernel so we see the following warning on x86_64:
> >>>>
> >>>>  ../drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1433:22: warning:
> >>>>  result of comparison of constant 576460752303423487 with expression=
 of
> >>>>  type 'unsigned int' is always false
> >>>>  [-Wtautological-constant-out-of-range-compare]
> >>>>          if (unlikely(remain > N_RELOC(ULONG_MAX)))
> >>>>             ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~
> >>>>  ../include/linux/compiler.h:78:42: note: expanded from macro 'unlik=
ely'
> >>>>  # define unlikely(x)    __builtin_expect(!!(x), 0)
> >>>>                                             ^
> >>>>  1 warning generated.
> >>>>
> >>>> It is not wrong in the case where ULONG_MAX > UINT_MAX but it does n=
ot
> >>>> account for the case where this file is built for 32-bit x86, where
> >>>> ULONG_MAX =3D=3D UINT_MAX and this check is still relevant.
> >>>>
> >>>> Cast remain to unsigned long, which keeps the generated code the sam=
e
> >>>> (verified with clang-11 on x86_64 and GCC 9.2.0 on x86 and x86_64) a=
nd
> >>>> the warning is silenced so we can catch more potential issues in the
> >>>> future.
> >>>>
> >>>> Link: https://github.com/ClangBuiltLinux/linux/issues/778
> >>>> Suggested-by: Michel D=C3=A4nzer <michel@daenzer.net>
> >>>> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> >>>
> >>> Works for me as a workaround,
> >>
> >> But the whole point was that the compiler could see that it was
> >> impossible and not emit the code. Doesn't this break that?
> >
> > It seems that goal and the warning are fundamentally incompatible.
>
> Not really:
>
>     if (sizeof(remain) >=3D sizeof(unsigned long) &&
>         unlikely(remain > N_RELOC(ULONG_MAX)))
>              return -EINVAL;
>
> In contrast to the cast, this doesn't generate any machine code on 64-bit=
:
>
> https://godbolt.org/z/GmUE4S
>
> but still generates the same code on 32-bit:
>
> https://godbolt.org/z/hAoz8L

Exactly.

This check is only a tautology when `sizeof(long) =3D=3D sizeof(int)` (ie.
ILP32 platforms, like 32b x86), notice how BOTH GCC AND Clang generate
exactly the same code: https://godbolt.org/z/6ShrDM

Both compilers eliminate the check when `-m32` is not set, and
generate the exact same check otherwise.  How about:
```
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index d3f4f28e9468..25b9d3f3ad57 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -1415,8 +1415,10 @@ static int eb_relocate_vma(struct
i915_execbuffer *eb, struct eb_vma *ev)

        urelocs =3D u64_to_user_ptr(entry->relocs_ptr);
        remain =3D entry->relocation_count;
+#ifndef CONFIG_64BIT
        if (unlikely(remain > N_RELOC(ULONG_MAX)))
                return -EINVAL;
+#endif

        /*
         * We must check that the entire relocation array is safe
```

We now have 4 proposed solutions:
1. https://lore.kernel.org/lkml/20191123195321.41305-1-natechancellor@gmail=
.com/
2. https://lore.kernel.org/lkml/20200211050808.29463-1-natechancellor@gmail=
.com/
3. https://lore.kernel.org/lkml/20200214054706.33870-1-natechancellor@gmail=
.com/
4. my diff above
Let's please come to a resolution on this.
--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdnaRG%3D7mib9vtWX4wkjQXHeUiioonTaZLStMVXfOOSUfw%40m=
ail.gmail.com.
