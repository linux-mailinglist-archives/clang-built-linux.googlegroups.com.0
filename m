Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB2FB76EAMGQEXGAXALY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3e.google.com (mail-oo1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id ADAD63F3060
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Aug 2021 17:57:30 +0200 (CEST)
Received: by mail-oo1-xc3e.google.com with SMTP id e9-20020a4ab1490000b029026e25c335b8sf4511429ooo.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Aug 2021 08:57:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629475049; cv=pass;
        d=google.com; s=arc-20160816;
        b=m1e8/hxTXzSQe8LI098T5M1uwfE2sRxsb9pxGiWbfZOWSuKysMOIGOeTY9fKGpwPGR
         uusG6sBokTgrH2QouxrttHK/j9OFbYTvT+j7VgP4mlrhU1r2bZgnx/Jyr8d4tGnRbRpQ
         ewmMJKIkJKXtizXjurFbYGzwmKTzXVx1NP+hb/wULG846su7FAXiBZAkuYbvTk0/KAB7
         dtkSQEQHHW5MyJ7fhYtgMbcmuQqC19czJqUEooiRUSqK9tIj+x8zSrar8YpSfPZ3JLGA
         PithKiyZeadSqLvvP+VaQS+8BUEGvgXZ88C9IOjrrssIPm6PDAAyzJXXZBqXyn53kKLe
         UgGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Xb6Pd289QySejiZFpp7/a8rYoNO8nwGD8MNi4QG23Gc=;
        b=UyOt9zueR3/MLfyhDhUy2yst1KhfwsKCZ9Fh8IO1M2l87FH+/mvTMd1wsGJdvpBdUT
         rRtw8oMRst367tSBSWqLBG7aqyqhqHco114L04moRG/Vvx6+l5EiWS8e9kTYTgcc0E66
         YXdYzQon9l+UXWGyD/T+npclUack/eouPM80EWkFijJJOk/FtOSzlIJKJl/TPo9r6MOO
         s3O3YR6CcSsQUyeC4EuG/ssNTOPiL2g+QbnumvfGc8fzb190CMRexIWj8nUMCNDcOuZp
         WS1QP92mUTMHSXtDdQRzDyP0YudlVHExsfXYZdtDJCB1iTrMHX52tr8hQiy7nzw4bgPc
         lkGA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=oIxFw+GW;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1031 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Xb6Pd289QySejiZFpp7/a8rYoNO8nwGD8MNi4QG23Gc=;
        b=hSHjmIZqK7IyTfVppIW3nFRaNAeHG8M80GppW/T68gabs/AwkXcolR+3Da2ZNzNIL0
         wSNvzqtc2MImY8PPF70Nk5/9JRMtXWQPG7LTW0OeI7ZTYOtMWQvfKCGb2wJgMSIYDL8u
         81NOicqNMWQJpvZPxClQMfhpJoheVD9tQKkPDeo8VIi58lJMEs6WxFqEreXflTCafTNp
         NpvlChlnQJM0qMqbrkzTmxEO1ZNtfx6yB8M7p57VPRDe6FhwntXhubnDKWUILTrSuk7u
         UGYBiU0zl1OPMSOat7xRGN1bE4fRVQedKLSIbQoJYjkS3xThMWPae9BLP+vhfMRtb32q
         wKww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Xb6Pd289QySejiZFpp7/a8rYoNO8nwGD8MNi4QG23Gc=;
        b=AEifyd/sV+X9SWZw+n4YpkiucBMey0Mt6jruchUIb3QsB7P8jogrtkqD+IyExBUV79
         2dvClal5LKQsfNz4qovXfLbMlb8UHswQFDfczMOoRkbis7aa93g7eOalERQ7qFulDj/V
         lFu1CwKUUAa6oi8jNX4z5IQZAAwJHa5yuga3vlEm7GFXWc+RU5tSV4WsOsFoNN0CS+Jt
         3eqfv1HFGgaZ9Ib8afyMqv7Ql8D6lB5lkyn5ZCszmj0vH0vyQjUmTs5/6uBDXrDhZQWa
         Z075hzDg1GVLSFuquAn/E4qkyb1NSmcba4kYfGjEnG528bMpzcy/6xnrHKsJvy+u1jto
         r6aw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530obEagpPjuFO1K6AQBuQvTg4LheFUFlj3Vcph8xKIM8JaVeN+0
	8cHe8dn+L+7ah8jdS8wT5ns=
X-Google-Smtp-Source: ABdhPJzBO9qADOHhafUHZrpyNGTsVsUMAjbC6WTKLcA76+SftyBaWJTOatbTPZCjv8kQGqgr6jBmmA==
X-Received: by 2002:a05:6808:2208:: with SMTP id bd8mr3694436oib.110.1629475049002;
        Fri, 20 Aug 2021 08:57:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:1208:: with SMTP id 8ls1298075ois.10.gmail; Fri, 20 Aug
 2021 08:57:28 -0700 (PDT)
X-Received: by 2002:aca:3857:: with SMTP id f84mr3519360oia.96.1629475048709;
        Fri, 20 Aug 2021 08:57:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629475048; cv=none;
        d=google.com; s=arc-20160816;
        b=iE4fs8iWUY9jIjcEtJ+q4j9tdbLU2ul8+EaG6kbVF6EJVi8KMAYHiMGRk3iLfZE07l
         3vyA5LYuV4rbJHoKoZk7s5ijABsiao9tSIg6/HCc4zEk0+rTK3rfgrUWKwxr9+2He9/0
         AfxvY7nieUbE8drPFOks1ZLiI/8YbbiYEHUClCs3v77IFBPjQg6recu9Y/6vjFXCbqUg
         jXwjAin3WYtdOHfAUz8bu9LoPrkEzyOPWnKvYhPk9dUzSFZQdYSoHahZYn5bR2OydyYZ
         h4Ivx5UNPrcNQVTipaJ++Sh0ZiuecQd5KWx6yWAZJI5TSdELl0Pj28Be0ejbxGzZXeUC
         eMsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=AJeoq+Z5WucmTQVKUtIcwcvIvzIMIDi7YIzeoCuQoP0=;
        b=lbDSS6VV7+5IGUhV47VQLAPLHzXQq/plQNzAguC9qQlw7rjRFjuSeJ2K1z6EcCahhZ
         W/69HeXHUErTx5hGuT6dR68B6U4YdGl24xRYNGLa0fxvwVGRM9vW6VtWfjg5JXZ4mlUx
         Eh8F2MwbDfkWNz2CgcGoAtDzBE8GELvDfnY7PjAndtmPlb8y2CJMF+tc7V8UiVP9Yd7/
         n73CKOnnc0psi/+/oGRm2Bowr+sDFJGgXBesD8zgfE5XoluS5uCA1PxCuHiTn5r6uBo+
         Gbv50rPsf9e+LjWceASDYBGjJV6/UZTIc25i9Js9G4OKt1qCTjsxbj0CkjA+cIlQ1/zz
         G3bw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=oIxFw+GW;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1031 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com. [2607:f8b0:4864:20::1031])
        by gmr-mx.google.com with ESMTPS id m6si256347otk.4.2021.08.20.08.57.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Aug 2021 08:57:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1031 as permitted sender) client-ip=2607:f8b0:4864:20::1031;
Received: by mail-pj1-x1031.google.com with SMTP id m24-20020a17090a7f98b0290178b1a81700so7536619pjl.4
        for <clang-built-linux@googlegroups.com>; Fri, 20 Aug 2021 08:57:28 -0700 (PDT)
X-Received: by 2002:a17:902:c215:b0:12f:b1b6:9f07 with SMTP id 21-20020a170902c21500b0012fb1b69f07mr7880820pll.82.1629475048022;
        Fri, 20 Aug 2021 08:57:28 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id z20sm7604377pfr.121.2021.08.20.08.57.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Aug 2021 08:57:27 -0700 (PDT)
Date: Fri, 20 Aug 2021 08:57:26 -0700
From: Kees Cook <keescook@chromium.org>
To: Jiri Kosina <jikos@kernel.org>
Cc: LKML <linux-kernel@vger.kernel.org>,
	Stefan Achatz <erazor_de@users.sourceforge.net>,
	Benjamin Tissoires <benjamin.tissoires@redhat.com>,
	linux-input <linux-input@vger.kernel.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-wireless <linux-wireless@vger.kernel.org>,
	Network Development <netdev@vger.kernel.org>,
	Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
	linux-staging@lists.linux.dev,
	linux-block <linux-block@vger.kernel.org>,
	linux-kbuild <linux-kbuild@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	linux-hardening@vger.kernel.org
Subject: Re: [PATCH v2 55/63] HID: roccat: Use struct_group() to zero
 kone_mouse_event
Message-ID: <202108200857.FA4AA13@keescook>
References: <20210818060533.3569517-1-keescook@chromium.org>
 <20210818060533.3569517-56-keescook@chromium.org>
 <nycvar.YFH.7.76.2108201501510.15313@cbobk.fhfr.pm>
 <CAJr-aD=6-g7VRw2Hw0dhs+RrtA=Tago5r6Dukfw_gGPB0YYKOQ@mail.gmail.com>
 <nycvar.YFH.7.76.2108201725360.15313@cbobk.fhfr.pm>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <nycvar.YFH.7.76.2108201725360.15313@cbobk.fhfr.pm>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=oIxFw+GW;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1031
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Fri, Aug 20, 2021 at 05:27:35PM +0200, Jiri Kosina wrote:
> On Fri, 20 Aug 2021, Kees Cook wrote:
> 
> > > > In preparation for FORTIFY_SOURCE performing compile-time and run-time
> > > > field bounds checking for memset(), avoid intentionally writing across
> > > > neighboring fields.
> > > >
> > > > Add struct_group() to mark region of struct kone_mouse_event that should
> > > > be initialized to zero.
> > > >
> > > > Cc: Stefan Achatz <erazor_de@users.sourceforge.net>
> > > > Cc: Jiri Kosina <jikos@kernel.org>
> > > > Cc: Benjamin Tissoires <benjamin.tissoires@redhat.com>
> > > > Cc: linux-input@vger.kernel.org
> > > > Signed-off-by: Kees Cook <keescook@chromium.org>
> > >
> > > Applied, thank you Kees.
> > >
> > 
> > Eek! No, this will break the build: struct_group() is not yet in the tree.
> > I can carry this with an Ack, etc.
> 
> I was pretty sure I saw struct_group() already in linux-next, but that was 
> apparently a vacation-induced brainfart, sorry. Dropping.

Oh, for these two patches, can I add your Acked-by while I carry them?

Thanks!

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108200857.FA4AA13%40keescook.
