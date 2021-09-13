Return-Path: <clang-built-linux+bncBDYJPJO25UGBB5P672EQMGQEUISGKHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 20FDD409EF9
	for <lists+clang-built-linux@lfdr.de>; Mon, 13 Sep 2021 23:15:34 +0200 (CEST)
Received: by mail-lj1-x237.google.com with SMTP id v2-20020a2e2f02000000b001dc7ee2a7b8sf4733344ljv.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Sep 2021 14:15:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631567733; cv=pass;
        d=google.com; s=arc-20160816;
        b=yocbA2hQvLDpfH+akNtc7ruD0AeLo/lyDIsTmUT0juMjUpE3K/8Lt45QAZKcFEBiNv
         jfPf+u51mP5O5aFxOxXZzOvolRjnndlnmcjguMvL2rKJ6Z3Taf7AL6Cbo3eP6Cw6+6YK
         DM0a7Ti4NXA7CBIvZ9MSRJ1WyDzMih/F0hdhXPG79EPx6yx0SoDZOA0TYFscuzkJu14x
         78osa8IfDsZjfGtS8IAp2DOWONeO9ePB0r7Sf3lbc4GThYqnWNuL9yOwIyqqdh1bmmys
         sdHE6My7l2RmqII6yLExsCR5TO8j3grZHF1oWVF9aVJ37DusW83AOs/z+ROB3tiz6hHu
         eIvA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=FfKmavzfgYGxHQ6/y9RZA686spNe6kUC85y/4Bi9o9M=;
        b=b2wVtnDLbXemTBuM8b9p8IiSlSnUJCNOffoVdWB8ItDnR0nPeu2Dx5QvV7tJh9P8rb
         HI1KKv7Ciq0hHRjVRmw6+ffaB8wtGbbDGOxo+TWsUi00j1j4p0lan8JggwWwzUfrEsL/
         MwhoZZaBOqOFFbppC0JHWlE6bovnok8FDAOOxovT6yJstID+ILAk8P//q/+eTeyXKZ/a
         XhN9O6RCMeg9E/MdwYmT3wFvNSuwWCIiK2U82wVybRtbWBS6j21ryeflWRUCIhnntx06
         xEaTLlAt4v8/z5rdroTdo9NXaqpBgIiLMApUJH/Gp8zJej7Aw4KWJQW5mGC++FlWrA9x
         az+Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=mygUPtbJ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FfKmavzfgYGxHQ6/y9RZA686spNe6kUC85y/4Bi9o9M=;
        b=lIfqVj8clVMaz3pIdgvQlXzhlFjIqiadSQZ9/tHJqdD6MwjCxvFD5e8yLIr/VR3JXo
         3qoiki2CGGsKUb/7PDXjgwNmpsm1WYTVO/hQB5i35EV7z7QAdvq+WDex4uw/TRIYRlsr
         kPGS5MD6DykWoZLUkY0J4A8teLHJ5040RBjMGTOv8Xc/PveLypeX/bhQVkbgpdU56rBx
         TsrDoPizAeip9kqR7BNzUkVsQtzmUrSGM6OOWCPkspceOQoYFLIFo1VB8EzjMIj2Yscj
         Sn947RILij9bDSojDvGt2uHxJ2E4Xj+8n3NDX7Pv1/VaYjCsYsjRXmtx3JjERuzUaX87
         ep4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FfKmavzfgYGxHQ6/y9RZA686spNe6kUC85y/4Bi9o9M=;
        b=YpaOLy2oTxhkSckScZmNqWmBEj8dcAYjVSZkvWfC7Dc8+C4HWHheOejS4ZpBN4K/Nc
         r5D7kOPerO7le4huG+wO2NOpK7S0I8NeF7s0pHkuN8Y1azzMyqogubjOi6iVUOS/jpcW
         p9IiKfhMR5ypIZTaSH82ZbVQjeoX845BzlsSHP2oiMakdf7FPCvl2E5C3iU0BTYNpAmD
         MBcuA3n8twBCzATV1OnEH2tToJz4fvpJdOTJVv4g79Tk1/f0aiBpaFgm3tUd6Qivt0H8
         vyT4s3eBZchHnqlARtpD8XbxI4Mcy2OWrvGzF+ZJMnxmneVseVQt0HssFdm/Gpiq9yH4
         +Tnw==
X-Gm-Message-State: AOAM5307FXLgBGdrbvvneR+evZFNIUXMoW9/+CURxWZAWVN1o6+52XFP
	rxJOpb43OBHoK+ecnJJ4Scg=
X-Google-Smtp-Source: ABdhPJy/T+kyrFUEY2SrO+I/X6CwmcBx3hFaXj20Nw2+OtXXdbPZDvsjqfnl4Q9KfHKaiNhGngslbA==
X-Received: by 2002:ac2:5c11:: with SMTP id r17mr10142136lfp.416.1631567733658;
        Mon, 13 Sep 2021 14:15:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8945:: with SMTP id b5ls2236461ljk.8.gmail; Mon, 13 Sep
 2021 14:15:32 -0700 (PDT)
X-Received: by 2002:a2e:a224:: with SMTP id i4mr11824035ljm.168.1631567732712;
        Mon, 13 Sep 2021 14:15:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631567732; cv=none;
        d=google.com; s=arc-20160816;
        b=CkgwNR2As8YqQF2pm5vzqlzR3Qst8l/VVwQY8iE3ev6+S07ttMrhw9YbaEMo0uEHgD
         DsRGoz8heP1mUPS5egI+SG4zwDwaXqFPlQgNPYn8QOEIa9FvXxIy96zgvFV7YTcLMivj
         ZdzOI1AbmyAH7+pbgoBMygm1eYjBmZLuikSvvHDc/37cq63R7wsMwXawWO5YnMv7qaUJ
         J4ID5qCa3SvUihS7gjDv/DI2zdh8sj2/z9EMkoc8bWgi5Q1Yx4FrjQTQeFXpkcHNSzGX
         /HhTFQoVEem4g/rNoeWJOW310JZW0+75uJSj8n90HK3IJ7O3KZ9qX/t28HAHpdISNPjE
         K2Sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=KsP30ov9xl9zhULjcWutgVa5WGmRNrz9j2ugExJGuYo=;
        b=h964Wqd/JPNRBnXoq6yvY1pXzXTNDp65PeRS3kOKH3KwlkJ3DW8Unp7oIK3UbEGu9V
         apQi+Wafw/fGpqXqirSwR7d78i8iItO31fbe5hTs9rL3jfA8aKhpKECd5w2N6FoOB08W
         YOk1WKZ95fftEImRV9R5/mB01xcXC3/Ix9hOBlrCgSlkB9hCewpIfNaoIpXZQu7yq0Qk
         C77OTuFyIWhZMMKlMWQJoow/vdJ8EbJyLkm4zJWrBziT2hxqhwMiBnk5e0JbDW9sVrA2
         epGvw3bT4V74dW+uoXjSOtkBkCn5L1u9fkDIO9lx/mdn0wUZOaelkmpe2ks+whXzUUL2
         160w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=mygUPtbJ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com. [2a00:1450:4864:20::22a])
        by gmr-mx.google.com with ESMTPS id h20si753946lfv.7.2021.09.13.14.15.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Sep 2021 14:15:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22a as permitted sender) client-ip=2a00:1450:4864:20::22a;
Received: by mail-lj1-x22a.google.com with SMTP id l18so19699332lji.12
        for <clang-built-linux@googlegroups.com>; Mon, 13 Sep 2021 14:15:32 -0700 (PDT)
X-Received: by 2002:a2e:b551:: with SMTP id a17mr12026583ljn.128.1631567732248;
 Mon, 13 Sep 2021 14:15:32 -0700 (PDT)
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
 <CAKwvOd=ZG8sf1ZOkuidX_49VGkQE+BJDa19_vR4gh2FNQ2F_9Q@mail.gmail.com> <CAKwvOdkz4e3HdNKFvOdDDWVijB7AKaeP14_vAEbxWXD1AviVhA@mail.gmail.com>
In-Reply-To: <CAKwvOdkz4e3HdNKFvOdDDWVijB7AKaeP14_vAEbxWXD1AviVhA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 13 Sep 2021 14:15:21 -0700
Message-ID: <CAKwvOdmtX8Y8eWESYj4W-H-KF7cZx6w1NbSjoSPt5x5U9ezQUQ@mail.gmail.com>
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
 header.i=@google.com header.s=20210112 header.b=mygUPtbJ;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22a
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

On Mon, Sep 13, 2021 at 2:13 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Mon, Sep 13, 2021 at 1:50 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > On Mon, Sep 13, 2021 at 1:42 PM Linus Torvalds
> > <torvalds@linux-foundation.org> wrote:
> > >
> > > On Mon, Sep 13, 2021 at 1:16 PM Nick Desaulniers
> > > <ndesaulniers@google.com> wrote:
> > > >
> > > > Do we have access to _Generic in GCC 4.9?
> > >
> > > We've ended up using it unconditionally since last year, so yes.
> >
> > Sorry, grepping would have taken < 1s. I'm very lazy.
> > http://threevirtues.com/
> >
> > >
> > > In fact, the compiler version tests got removed when we raised the gcc
> > > version requirement to 4.9 in commit 6ec4476ac825 ("Raise gcc version
> > > requirement to 4.9"):
> > >
> > >    "In particular, raising the minimum to 4.9 means that we can now just
> > >     assume _Generic() exists, which is likely the much better replacement
> > >     for a lot of very convoluted built-time magic with conditionals on
> > >     sizeof and/or __builtin_choose_expr() with same_type() etc"
> > >
> > > but we haven't used it much since.
> > >
> > > The "seqprop" code for picking the right lock for seqlock is perhaps
> > > the main example, and staring at that code will make you go blind, so
> > > look away.
> >
> > Looking at my patch:
> > https://lore.kernel.org/stable/20210913203201.1844253-1-ndesaulniers@google.com/
> > I don't think _Generic helps us in the case of dispatching based on
> > the result of is_signed_type() (the operands could undergo type
> > promotion, so we'd need lots of cases that are more concisely covered
> > by is_signed_type()). It could replace the nested checks in div_64
> > with nested _Generics, I think. Not sure it's a huge win for
> > readability.  Maybe cut the number of expansions of the parameters in
> > half though. Let me give it a try just to see what it looks like.
>
> Is this more readable? Same line count.  I'm not sure if there's such
> a thing as "fallthrough" between the "cases" of _Generic to minimize
> duplication, or whether this could be factored further.  Needs lots
> more () around macro param use and tab'ed out line endings...

Sorry wrong diff:
diff --git a/include/linux/math64.h b/include/linux/math64.h
index bc9c12c168d0..8fc4d56a45b9 100644
--- a/include/linux/math64.h
+++ b/include/linux/math64.h
@@ -162,18 +162,18 @@ static inline s64 div_s64(s64 dividend, s32 divisor)
                div_u64(dividend, divisor));            \
 })

+#define __div_64(dividend, divisor) _Generic((divisor),        \
+  s64: div64_x64(dividend, divisor),   \
+  u64: div64_x64(dividend, divisor),   \
+  default: div_x64(dividend, divisor))
+
 #define div_64(dividend, divisor) ({
         \
        BUILD_BUG_ON_MSG(sizeof(dividend) > sizeof(u64),
         \
                         "128b div unsupported");
         \
-       __builtin_choose_expr(
         \
-               __builtin_types_compatible_p(typeof(dividend), s64) ||
         \
-               __builtin_types_compatible_p(typeof(dividend), u64),
         \
-               __builtin_choose_expr(
         \
-                       __builtin_types_compatible_p(typeof(divisor),
s64) ||   \
-                       __builtin_types_compatible_p(typeof(divisor),
u64),     \
-                       div64_x64(dividend, divisor),
         \
-                       div_x64(dividend, divisor)),
         \
-               dividend / divisor);
         \
+       _Generic((dividend),    \
+               s64: __div_64(dividend, divisor),       \
+               u64: __div_64(dividend, divisor),       \
+               default: dividend / divisor);   \
 })
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmtX8Y8eWESYj4W-H-KF7cZx6w1NbSjoSPt5x5U9ezQUQ%40mail.gmail.com.
