Return-Path: <clang-built-linux+bncBDYJPJO25UGBBOWY72EQMGQE6QT7L6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 19A6F409D79
	for <lists+clang-built-linux@lfdr.de>; Mon, 13 Sep 2021 21:53:31 +0200 (CEST)
Received: by mail-lf1-x139.google.com with SMTP id q5-20020ac25fc5000000b003d9227d9edcsf3594724lfg.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Sep 2021 12:53:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631562810; cv=pass;
        d=google.com; s=arc-20160816;
        b=cQdgr8LRZnT7LP11s+p14ZNnwxFJntS4Lbj6fyWHlcHlAE9xLCydrFPj/BcTlADB/L
         sV5xl2566ZzPjXvaQgBUGQ2ZBFiBUhwECxsQAgjwH7eisblaAS+xg2oGPyFAFBoJpmMs
         sWZRC78JnBv5El7xlz1oWxPqItxyGdNuHar1if/+zwRzGo13a8s1MaxklwzV+l3dpD3s
         Fm5b3CnGba8Jrh+Z00+6FM9kKwNGMxk7eBAyYsksEtUjO0df96d2TQrTP/FbRbD7ywjS
         bZaQqNBnCghit4lV1yl/QeOhPc/X6HF0/VJr3i1F8CDrY5VwEAoX3d0kbshwAcsQ7Sg4
         NTGg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=5qLwLQoRghSCmgtozWevymLEQwgk9sfVeHqRGjkRmfw=;
        b=NLRRjui3y/Wv50ACHR/7H3jGx6J8SMSe4r4z1WEmhWQQYP1cxYUF8CzdebbtoibQhk
         mNrHIVevRbh8G4FHpail5azLmB895HIH/J63u0y5233tT1Srky6+2CCEgwcv5zp7JEaS
         m1sJsli8lgoeg8Ih3Qwhd4gHYo7vTlDmTgoNTLF3n5HjKXgVVrxLhpZ6OPLQxeGWJZuj
         Yh8nvCj+AKmaIipvGllHzO+1HpkcSrgi/z01xXbosD458o9d0PfXjFeW8lYLvUD81xgI
         gqDlSMQefrFaASGJUE3cxNSHTb5VcJXTBDFzJ1pkXj/RSQhvDYAx3dAWClp/s2Z+X42e
         FqMg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=KtLYMNSM;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5qLwLQoRghSCmgtozWevymLEQwgk9sfVeHqRGjkRmfw=;
        b=ZrkUdMg+OdlP0ZnH9Bnq3U2zrbOO4+5MGnIBN+u0NSjoNk6pEpdwBUIRzSNI4PodxL
         M3i7qpxSe6PxWj+K6ePSWNdVLKMrOrruhhKpKhTnHengayLFhOYHlRVZVGBspkuMOtPV
         EEB99IwCulU33J04ayS3JouIz07oqyEvbSoEefRYWo5Tic58wjVj2cbIcLAJO2/3BaoB
         m0H99/g2z2OLMxk1N7pkFKuS6Kpa4q+6wvndfygQkZvaBqzQC89VpCqtLJHL10Xhnpzi
         3tlGnucDWEKe/y5z27VTyMntIAa+q2g4Y3E+tyy3e0LW8Sq/1UD0HxyDV4JORG2w4hGS
         Ynmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5qLwLQoRghSCmgtozWevymLEQwgk9sfVeHqRGjkRmfw=;
        b=bgP59jBEa0Hnjehy2xbtAIDpAdnyx5Ef6v4O7XuVNCoqtJDUE2EeuylfU00/AJ3rx3
         ZHAhx9/304LJGCA/YmuPbyReMskC37zUt+Uhj8gUy/2MFwnnn9O2BvPpGVtTpOoYWCt8
         WNQ05NN4z3SXcJ78qof8xHymugUHlc5Vex41V9YvfJhI8KPaH1V/lg++QIz3Dq8xc1f/
         Dw7GJtsNjiGfH2g6R4S+BB4WhoybsmWdrLFi1X29/x7tsxWh6D8aigZkObIT7sqVUEYI
         X26z+Kduu+0bdsKQfO7546EQix77wc5cx5h2zBEw+WHaY2aGC2Umqn1ROE2+v9j+ilgc
         +DFQ==
X-Gm-Message-State: AOAM533Rmau7GpgZf57Su2D+AaEGVbB8U3go/Qo1lUJm0I9MwUD12SMK
	fmNmrtOR4GQPqovbVBZtltk=
X-Google-Smtp-Source: ABdhPJw199P8JWsfzaPlzFyt8PAoWy8Ed4oKJbHNO8++LoSECXLHc5ZVr/mJp0S3KT6NiW4dx1DRxA==
X-Received: by 2002:a05:6512:2610:: with SMTP id bt16mr10519906lfb.138.1631562810508;
        Mon, 13 Sep 2021 12:53:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3b88:: with SMTP id g8ls1095047lfv.1.gmail; Mon, 13
 Sep 2021 12:53:29 -0700 (PDT)
X-Received: by 2002:ac2:5d27:: with SMTP id i7mr10544981lfb.488.1631562809506;
        Mon, 13 Sep 2021 12:53:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631562809; cv=none;
        d=google.com; s=arc-20160816;
        b=Ri6zqfzdLFWMH/dp0XXFo6UOeLoeJA/acxNai4FPIlQol4iehxQ+hfFl3nT+aQn/Be
         EtdnJOKYRL5pOflYzPIv62EpDyNi+GQcrRPVbGGzVJeMuoZFyAZWJY4OBUPxCMbkZicH
         6KMZHsLh6tun3i05DJPjde7icZNgFy8AnMfEIxRJI+/+8oNf7+38NN7o9FXItOU6iV9l
         LDQ05pARpC08/kol081Ln9ujZAPxP5ThkWYDoysUhL5lKBK0g1xxPvuO1+SWh+f/NObe
         GoAgYm0a4biALJEkh52zDVktVyOaGKKuGc42re9yx0ne1rSuVBzf3H+7xj5vg/OI2EGv
         snUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=IuIV1pMgtSTFHYB/MlE6n0ObQf+QrwwyHfpeOlhLGV4=;
        b=BZCg76jidwfR5g0uO+lXJfyWvIHJS/FUnP/K7Mg0X/ATuInSQ82y0ObiGB5HFwyhjA
         8llzo2v8iIcH0UjVlJi6q7KevPjAszWcOR9DgsaCWJQcXxluMbfAFk9y5nAtl2aJwcy5
         D5USSMCMeQKZQG9kYz7a0lQZ5ZVpgwZY5UszV/oo/KfySeOLmEv7qBW9Btj6G5WmDaVh
         XuUm9cAr1EgXYSh7Nz83TqlH1v6fOPsI3HTuMjJsKecvX8TJoZuoaCi2kOsOzRAKzOzk
         2A/l8nPcB0igq/mmrCQ2/jvKbaAXhQERmjroXhKjcghF2WTsTvI0XVele+awoUAiLVcE
         HeRw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=KtLYMNSM;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com. [2a00:1450:4864:20::12d])
        by gmr-mx.google.com with ESMTPS id t12si337473ljh.0.2021.09.13.12.53.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Sep 2021 12:53:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12d as permitted sender) client-ip=2a00:1450:4864:20::12d;
Received: by mail-lf1-x12d.google.com with SMTP id g1so12018806lfj.12
        for <clang-built-linux@googlegroups.com>; Mon, 13 Sep 2021 12:53:29 -0700 (PDT)
X-Received: by 2002:ac2:4c46:: with SMTP id o6mr10039958lfk.240.1631562809064;
 Mon, 13 Sep 2021 12:53:29 -0700 (PDT)
MIME-Version: 1.0
References: <20210913131113.390368911@linuxfoundation.org> <20210913131114.028340332@linuxfoundation.org>
 <CA+G9fYtdPnwf+fi4Oyxng65pWjW9ujZ7dd2Z-EEEHyJimNHN6g@mail.gmail.com>
 <YT+RKemKfg6GFq0S@kroah.com> <CAKwvOdmOAKTkgFK4Oke1SFGR_NxNqXe-buj1uyDgwZ4JdnP2Vg@mail.gmail.com>
In-Reply-To: <CAKwvOdmOAKTkgFK4Oke1SFGR_NxNqXe-buj1uyDgwZ4JdnP2Vg@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 13 Sep 2021 12:53:17 -0700
Message-ID: <CAKwvOdmCS5Q7AzUL5nziYVU7RrtRjoE9JjOXfVBWagO1Bzbsew@mail.gmail.com>
Subject: Re: [PATCH 5.14 018/334] nbd: add the check to prevent overflow in __nbd_ioctl()
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Linus Torvalds <torvalds@linux-foundation.org>
Cc: Naresh Kamboju <naresh.kamboju@linaro.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Baokun Li <libaokun1@huawei.com>, open list <linux-kernel@vger.kernel.org>, 
	linux-stable <stable@vger.kernel.org>, Hulk Robot <hulkci@huawei.com>, 
	Josef Bacik <josef@toxicpanda.com>, Jens Axboe <axboe@kernel.dk>, Sasha Levin <sashal@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, lkft-triage@lists.linaro.org, 
	llvm@lists.linux.dev, Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20210112 header.b=KtLYMNSM;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12d
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

On Mon, Sep 13, 2021 at 11:39 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Mon, Sep 13, 2021 at 10:58 AM Greg Kroah-Hartman
> <gregkh@linuxfoundation.org> wrote:
> >
> > On Mon, Sep 13, 2021 at 09:52:33PM +0530, Naresh Kamboju wrote:
> > > [PATCH 00/10] raise minimum GCC version to 5.1
> > > https://lore.kernel.org/lkml/20210910234047.1019925-1-ndesaulniers@google.com/
> >
> > Has anyone submitted a fix for this upstream yet?  I can't seem to find
> > one :(
>
> That lore link has a series to address this, though that's maybe
> something we don't want to backport to stable.
>
> I thought about this all weekend; I think I might be able to work
> around the one concern I had with my other approach, using
> __builtin_choose_expr().
>
> There's an issue with my alternative approach
> (https://gist.github.com/nickdesaulniers/2479818f4983bbf2d688cebbab435863)
> with declaring the local variable z in div_64() since either operand
> could be 64b, which result in an unwanted truncation if the dividend
> is 32b (or less, and divisor is 64b). I think (what I realized this
> weekend) is that we might be able to replace the `if` with
> `__builtin_choose_expr`, then have that whole expression be the final
> statement and thus the "return value" of the statement expression.

Christ...that...works? Though, did Linus just merge my patches for gcc 5.1?

Anyways, I'll send something like this for stable:
---

diff --git a/include/linux/math64.h b/include/linux/math64.h
index 2928f03d6d46..e9ab8c25f8d3 100644
--- a/include/linux/math64.h
+++ b/include/linux/math64.h
@@ -11,6 +11,9 @@

 #define div64_long(x, y) div64_s64((x), (y))
 #define div64_ul(x, y)   div64_u64((x), (y))
+#ifndef is_signed_type
+#define is_signed_type(type)       (((type)(-1)) < (type)1)
+#endif

 /**
  * div_u64_rem - unsigned 64bit divide with 32bit divisor with remainder
@@ -112,6 +115,15 @@ extern s64 div64_s64(s64 dividend, s64 divisor);

 #endif /* BITS_PER_LONG */

+#define div64_x64(dividend, divisor) ({                        \
+       BUILD_BUG_ON_MSG(sizeof(dividend) < sizeof(u64),\
+                        "prefer div_x64");             \
+       __builtin_choose_expr(                          \
+               is_signed_type(typeof(dividend)),       \
+               div64_s64(dividend, divisor),           \
+               div64_u64(dividend, divisor));          \
+})
+
 /**
  * div_u64 - unsigned 64bit divide with 32bit divisor
  * @dividend: unsigned 64bit dividend
@@ -142,6 +154,28 @@ static inline s64 div_s64(s64 dividend, s32 divisor)
 }
 #endif

+#define div_x64(dividend, divisor) ({                  \
+       BUILD_BUG_ON_MSG(sizeof(dividend) > sizeof(u32),\
+                        "prefer div64_x64");           \
+       __builtin_choose_expr(                          \
+               is_signed_type(typeof(dividend)),       \
+               div_s64(dividend, divisor),             \
+               div_u64(dividend, divisor));            \
+})
+
+// TODO: what if divisor is 128b?
+#define div_64(dividend, divisor) ({
         \
+       __builtin_choose_expr(
         \
+               __builtin_types_compatible_p(typeof(dividend), s64) ||
         \
+               __builtin_types_compatible_p(typeof(dividend), u64),
         \
+               __builtin_choose_expr(
         \
+                       __builtin_types_compatible_p(typeof(divisor),
s64) ||   \
+                       __builtin_types_compatible_p(typeof(divisor),
u64),     \
+                       div64_x64(dividend, divisor),
         \
+                       div_x64(dividend, divisor)),
         \
+               dividend / divisor);
         \
+})
+
 u32 iter_div_u64_rem(u64 dividend, u32 divisor, u64 *remainder);

 #ifndef mul_u32_u32
---
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmCS5Q7AzUL5nziYVU7RrtRjoE9JjOXfVBWagO1Bzbsew%40mail.gmail.com.
