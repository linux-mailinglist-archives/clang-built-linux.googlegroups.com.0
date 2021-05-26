Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBSMCXGCQMGQESZJUHBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13a.google.com (mail-il1-x13a.google.com [IPv6:2607:f8b0:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 36999391785
	for <lists+clang-built-linux@lfdr.de>; Wed, 26 May 2021 14:38:35 +0200 (CEST)
Received: by mail-il1-x13a.google.com with SMTP id 15-20020a920d0f0000b02901c54acae19esf594977iln.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 26 May 2021 05:38:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622032714; cv=pass;
        d=google.com; s=arc-20160816;
        b=Tpn3Qi6OetbZ+4j3bJpMSECeIf1Pe/ayH3CVUiLRuQ+AM6DfF+NK/jN5gVqObF+Zlh
         cwqcbsN0ZVqKsgl+X7bPGCU62E+1Sagb3ex1yDEdcdqgNi89ZZY3sPGqO/tD1uS97fFf
         O/kiVP0dIKYP0ZUUV+t0zyhqVro+js9F9MwEX9b20UNoh06o9moVNWom1L0QgZyqNxY7
         w9awSA58cP6gMDYWdQ1mSVoxA15C6p9WCZFsr0TFeTDmhRaSJATFYl9PW6XVe9GjrYvK
         rxeXTopAXn5s7W0JwNgeDCO80/IpEGhu0qiulogz4fRC6jsJOnfpAoRFzwdf34Wt2gVC
         HtXA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=+/sXw5j6NZqxqsRQKy+0tleHpKHckxAewnqibGNQQMs=;
        b=mcZTMK+1i56UxQCZ2BezKRho4EZnJLxsHbpZtijr82P5OQmU9DlLZ0UoniAPmQfjPI
         /VTGCbU+GUz187a9Tlpu5YV0lqk1ZGQDYRAW3KfqGck3hcVNC9eLx2gAiuVYSM5ImY4B
         1Yf0w8C1yjbG2PiaKoLhqrj1zmFpamjw/agW4ya8PMQ8Kc0Z8owy+yeWEW5M6ezSJP5L
         zCWkaz/+STLUE8Et5Zf/eqk7VhjjqEN7Tc65ZzUk6QRALc0ka5BrAESomwuYAAqS0kc2
         Xj+FwVCdlZ5FMrOl2UZDZYvMk7uiyi2zKjP8vWDTQgf8tGTydyc1PCIydDXkfcaa/tu/
         O0mw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jju67nOH;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::230 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+/sXw5j6NZqxqsRQKy+0tleHpKHckxAewnqibGNQQMs=;
        b=BfIXncf6lCXoQgzDNqHnn+CFKLPquJFu1OyeaPgV9PPFmz/FiLueQkqtOYKluThIpa
         8+pFW6D00VFLrhJQrU+D1PKGEfN1a94cdOutp4x5p08/0oa+n/sDSEz9AI0Wsot/ogi3
         S96LWDaXdxNgyhHJfI8n7+6xoxGnZEJTVKbTDQDzK+Rfz7l3ZHndxvuFQyENwBH0CJkS
         FxsLSKundcYa46yvhmD6zqLrRVHzgxv/11wRRWj7ymY0kMgQ9EU8m0BRYW/6uu4zGc+3
         PZagx+pjgZC5y8BHHRAjgiKBU5/IHc6LsQ81+7Jdu6DVfshS9iF2RUp736lMnjshpi9w
         yGvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+/sXw5j6NZqxqsRQKy+0tleHpKHckxAewnqibGNQQMs=;
        b=kO0KVOpDixeDZ/qSMOroMrJPygf2iWqYE43jmORySxlM+u7fka5N45m1LyV9ZAvrs1
         KJAYUQBw0N1ocKorOSkNH6+gd8MiYdZIEZXVFPLegUXRyqBe8fogXQhHiTLNTXJDsUzd
         xqGvHdKdQGClnYCbKEpl5iXlrLHlzcgvQDAvdESeCEa2SSrQg/P7GQfBmGdQDuxUZh2Y
         NQcbRMe0ZbX/F6qmO8HmdB8tKkcnmJASBVirRpQphFlOzyAmkN8tKhojnMw14NsY22Em
         7f7753eeN7Ki8mLQsR6Xl2QuUXlK2ofYE2WjkL+KR7VAIlL0zy/s5KluAgRFf6g5e4jI
         IAPQ==
X-Gm-Message-State: AOAM533jOaKohbQDSo3RKHVxKr3h/OUTbody3NSYArDuf2Kse91hfUUf
	whYV9GcG8R5PN5BOpqoBKTY=
X-Google-Smtp-Source: ABdhPJyZO64VfD4d2660WtUTPoFTAb9cs2Yzw1UmRN0SwsmlcV/eQCCVaRqmcIF4Op6IR2P/SgEvhw==
X-Received: by 2002:a5e:8c11:: with SMTP id n17mr25386927ioj.53.1622032713948;
        Wed, 26 May 2021 05:38:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:37aa:: with SMTP id w42ls2781688jal.6.gmail; Wed,
 26 May 2021 05:38:33 -0700 (PDT)
X-Received: by 2002:a02:7fc1:: with SMTP id r184mr3064095jac.109.1622032713371;
        Wed, 26 May 2021 05:38:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622032713; cv=none;
        d=google.com; s=arc-20160816;
        b=IeDyjdue6oVj1tNLLFfO4R46XA9V+ouw6VDdtJrnOMmXiCPs3u9eHR8o7XOHFT4Qr4
         9e/jxPyqzhyhZTA0hXdayCvyqZ6gRUGmImFqyCxDzR9YciOR6h9uu80ja7818UN385Se
         881IrW4djasb5YCoJQKZqhP2ktPKNhv++yyR/Iv6+GtkXccmp2uRG83h3Lq2cPWK6RM9
         DKGkggFBY6aeOz8EY8A95TDffsVBN5qq10mxeDQZTiINXAgaZhLMCHsTGUzWwBttBcm2
         CKO3qchDX1jODr1fovW0W99AMG2X4CfBVd2aWiUJCeAIj0S/+pq+NypW29jsSlKxv7r8
         5tQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=cY6PkHBdJI7ud8EJlbf0GZl8OjlRbXkg5kf2YC2nFpU=;
        b=QGIgp8BxbHJ6MDP7ZPBvqt4K6gCpwNR7zF2HXwr+UPwaRzSX8t5K9FEZ0rPgsbNmF9
         gVn8s9fNbPJOTi1Ws4rvD0zjC4grB1YzGmW3NAgYv9ZN/XUsHItXGJEimCKoIKWQW3Q2
         KYaCw7Z72IV6ucNsdqPSqzHuYOZYMWiVDbR/xbopihDJDws+dit4OZfcgwfNPHGJx0pT
         iMS+krhwYTXRw/hpZtAzxWxcvnDra34sGrSGmhb4AbenoP0X7AN5tNrjsIG2/Hbpn+BL
         RAycdaWPB0EE+7bW0ba3BSigWfZ9JrRtv2hFyaPsdS/GoUkgypUDCy+Io0hpT8kDbpx/
         W/yg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jju67nOH;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::230 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-oi1-x230.google.com (mail-oi1-x230.google.com. [2607:f8b0:4864:20::230])
        by gmr-mx.google.com with ESMTPS id p5si3317957ilm.4.2021.05.26.05.38.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 May 2021 05:38:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::230 as permitted sender) client-ip=2607:f8b0:4864:20::230;
Received: by mail-oi1-x230.google.com with SMTP id h9so1323151oih.4
        for <clang-built-linux@googlegroups.com>; Wed, 26 May 2021 05:38:33 -0700 (PDT)
X-Received: by 2002:a05:6808:f94:: with SMTP id o20mr1675929oiw.121.1622032712848;
 Wed, 26 May 2021 05:38:32 -0700 (PDT)
MIME-Version: 1.0
References: <20210525175819.699786-1-elver@google.com> <CANiq72krX9PU14wFsQyW_CJEjTS-TT8wyhBVZZbC132Gz5XO-Q@mail.gmail.com>
 <CANpmjNPGUAv-d3yEusyF11ip0zEdht7eMGi4pSoQsRYns-MvJA@mail.gmail.com>
 <CANiq72kCkej_ONwSWjRHWLVrr+g0BZygAUAQVx+FQf7DEdg3cQ@mail.gmail.com> <CANpmjNM_fP-ziy204=1rd52hOO4WfCsxAwQgJ-t1WF_yFo=UzA@mail.gmail.com>
In-Reply-To: <CANpmjNM_fP-ziy204=1rd52hOO4WfCsxAwQgJ-t1WF_yFo=UzA@mail.gmail.com>
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 26 May 2021 14:38:21 +0200
Message-ID: <CANpmjNOkX5NFFekezDSntjVBp2mVgxTprjV1QK56DsE2fv-w3A@mail.gmail.com>
Subject: Re: [PATCH] kcov: add __no_sanitize_coverage to fix noinstr for all architectures
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: linux-kernel <linux-kernel@vger.kernel.org>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Miguel Ojeda <ojeda@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Andrew Morton <akpm@linux-foundation.org>, 
	Will Deacon <will@kernel.org>, Ard Biesheuvel <ardb@kernel.org>, 
	Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, Arvind Sankar <nivedita@alum.mit.edu>, 
	Masahiro Yamada <masahiroy@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	Sami Tolvanen <samitolvanen@google.com>, Arnd Bergmann <arnd@arndb.de>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Dmitry Vyukov <dvyukov@google.com>, 
	Mark Rutland <mark.rutland@arm.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=jju67nOH;       spf=pass
 (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::230 as
 permitted sender) smtp.mailfrom=elver@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Marco Elver <elver@google.com>
Reply-To: Marco Elver <elver@google.com>
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

On Wed, 26 May 2021 at 08:25, Marco Elver <elver@google.com> wrote:
> On Wed, 26 May 2021 at 03:54, Miguel Ojeda
> <miguel.ojeda.sandonis@gmail.com> wrote:
> > On Tue, May 25, 2021 at 9:13 PM Marco Elver <elver@google.com> wrote:
> > >
> > > Long story short: this is not fixable without more Clang changes. The
> > > only way to do it without a version check would be to introduce
> > > no_sanitize_coverage attr to Clang, which we probably shouldn't do,
> > > and I didn't want to fight it. ;-)
> >
> > I am not sure I followed why you would not want to support querying
> > for the attributes (if they are intended to be used separately).
>
> Not my decision, but some historical decision in Clang. Somebody
> thought "no_sanitize(<string_literal>)" simplifies things. Hence,
> Clang only knows about the no_sanitize attribute but not its
> "subattributes".
>
> > But regardless of that, why not the feature flag at least then, to be
> > consistent with the others?
>
> __has_feature(coverage_sanitizer) does not work either (yet).
>
> > Going back to version checks seems bad -- they should be reserved for
> > e.g. known broken versions and things like that. New compiler features
> > should come with new feature flags...
> >
> > In fact, for Clang, I do not see any version checks in code at the
> > moment, so this would be the first :(
>
> In this instance it's absolutely required (for now). But if you don't
> like it I'll go back to trying to fix Clang more. I'll check with
> Clang folks which one we can implement, the feature check or the
> attribute check.

Ok, let's wait for response to: https://reviews.llvm.org/D103159
If that lands in the LLVM repo I'll change to use
__has_feature(coverage_sanitizer), and send a v2. That __has_feature()
is a bit of a lie though, because fsanitize-coverage has long been
supported, but it just so happens that if we get it, then its
availability implies availability of the no_sanitize("coverage")
attribute.

Thanks,
-- Marco

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANpmjNOkX5NFFekezDSntjVBp2mVgxTprjV1QK56DsE2fv-w3A%40mail.gmail.com.
