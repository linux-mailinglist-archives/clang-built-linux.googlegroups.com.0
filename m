Return-Path: <clang-built-linux+bncBCS7XUWOUULBBWVSYODAMGQEXXJJ7AQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 600693AF4FC
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Jun 2021 20:24:27 +0200 (CEST)
Received: by mail-io1-xd3d.google.com with SMTP id u19-20020a6be3130000b02904a77f550cbcsf9443071ioc.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Jun 2021 11:24:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624299866; cv=pass;
        d=google.com; s=arc-20160816;
        b=MEwZn8iUuyShY3Y0/J9Ps0XufTqrMKGUBDIHrawT5/jo/siV/e6jETpcKUKUcOK9We
         FiO/raDjSCJqydF/ejcVau6eqOp7TQKqxR6hAbqIh2q7Xv9vX0IV/IAAbm0oISRiuwK9
         6BKPO5AMc0QM7iZIGHgbJDDhcrQdzB5GjcklltVcBozQYQ25qagZEg6ZkV/Ajl2IuI/f
         gR5H2ZjRG9Aa/koi+JCrP/6VJ6PYUdRgT7kUmyc0zv2j9/FkhzYEitXMshL+nYKn7XKL
         C1CeWHha7JY9tX7E306ViQKcRueykkURtOqx3VaA3zjK2mYEDxQBU7FnUO5MlGHp9N0U
         Nymw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=abjVecADEL4k4hp/mYaCx76xEjSUpdHC6yonRwtWwO8=;
        b=d6xkdE2TMLr+ICXCyCvOG60+D8lhlt3RaPbGrc8PDDhcYL/GhIlA2z222ojfKvBPje
         YBZOE8NJD8fzshDzELH7wfdAN47pmrsJXX0WSacBfYKGLwFjxBbWiP1irLuHB34P09lF
         ftNceyHA8+xvhhbFMyW6Ny1RXbZchkoJOId3NMrfcUMUOx/2aIB51UnHpifD10JmnYOO
         pGqXIwKGkHJcwZ5dXXAk4pCq3u/Lcyew+B3NB0HUyq0InqH6XblWmtMSv72BONChi/Y1
         EfdrKEuk2TG2bcSlrvbN5BvB0xseNa2koa4IyNhaoAizIAM2+LDDQ4B7SOF9W89/icXX
         uhJg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mbdRjmeq;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::52e as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=abjVecADEL4k4hp/mYaCx76xEjSUpdHC6yonRwtWwO8=;
        b=bE2txzpYIP9iEC0YcFJROHAK56D99TVUhkWjYv2Baki2/fraMxdqc+nEbERVNW9Kcm
         6mQPfleiaTCehKdZbdjI1iEGfmxyoxaENI+iewZrbJjLzmMMEodaCCfsINvr2EUGaw22
         6Z8bARcSTnpHxg+4WhTrYfg/U+SD0UZNVUymz27VoIXaecW72TSXzeniCqOKEmAY10gs
         FuU4c+gZQSJjwYF2uBeVlIdMGAgiaDk47aOt6hsK8f+DLovzOJWb9KoLWU2PSVPpGAqy
         g/aqDycGS5wuwv+O9TMK5EF676WZlivk3TwE9HlB4qz38rFZ04ytCFabPezB5jyH50Wv
         s+1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=abjVecADEL4k4hp/mYaCx76xEjSUpdHC6yonRwtWwO8=;
        b=nidxIEM7Q/BUwb4CW60grOGTbGaxpPozC98HBWZEDt+jjebd7hnNIXuO2bj7sEzUnb
         XCBeYNXxxnRqLrb9MqgY+5KE+wHOxrHahym5p8EvkJoh5APJBvYGZ5NWl9/usMg8pR98
         ZGJrhEiuWW1p/FJ4o201tFimUaTzWwQjSyTW0DWdY6jxDlSO/4FRP6wizV/69hH9rL7P
         Q2UMF579npKkIDE2RT5/PQEjJjNjMlkqGkFA0LqLYU/Z3PHnqoCdKjY3bEd47Vs5Nfn4
         ueS4OC9DMVqHuziuYGYyN4YdQj8i07nFLGhJFS21+cldHyGGcruTxG74uiv1E4cAGJaE
         BmeA==
X-Gm-Message-State: AOAM531TjjWwMz8RrvOsJyxrFNPwJ6sBY9K5h/IsvT8/ljNctygHkq8J
	+sPf5EV/0MHfgkhZPr11qAk=
X-Google-Smtp-Source: ABdhPJzLZSsguriEYEvTLQyJlgkrFeCt4PDImx0RdEzCkgsQaWHUBoaNPh/HP+N1niOy4vDY2G66qg==
X-Received: by 2002:a05:6e02:5a3:: with SMTP id k3mr19531963ils.302.1624299866118;
        Mon, 21 Jun 2021 11:24:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:da:: with SMTP id z26ls3341011ioe.11.gmail; Mon, 21
 Jun 2021 11:24:25 -0700 (PDT)
X-Received: by 2002:a05:6602:2587:: with SMTP id p7mr21525760ioo.12.1624299865800;
        Mon, 21 Jun 2021 11:24:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624299865; cv=none;
        d=google.com; s=arc-20160816;
        b=ot8M/5v3B0nSkytMt7a4NABikiVU6ULO7/2uywI53srMa3eDOWZN3IrusxFTNB5WCR
         OJjKMfkWD5KQM4hQPogz/0L6DK/r5LafjetU6INR5FuEZ4bLA9YUZzIsiq/WW0hI+i4i
         AlpSRVuAN7Kihy0o4WVyis/Jqmlo6AAfXPlOaJUyRofr0wJGXILyKIjdzsJCsPTnfoq2
         hlsIC7OjU/jh0LB0QNuUrEgy4H7rSs7S3coy3eXwFpRLAKTDb+UWIJpELwDJFnlgz4xS
         oy9uoB9VxBDKOXWnkQ+IAENNPnyNgwFKoskfbn20pWRWYeZIiFDqdXAOg46O5xDSroEB
         dAWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=8srstiN/1QZXwDTulF83V5rnWY0uXObxwuHnse4sC/A=;
        b=mTPXq+pFVKR0KnTON/k6XgCopdi2G0DTQiVXoH1I64rHHgFovmEdGMWSPOVS43yUll
         rHuHW8jH+GiLZRZUmq40t8FbP7IJD2YRxl48EfxSnktcVdbgijvG4D/Yaep7bulZ7Tvm
         20uA3OHx2EB9pQ35Ubu8xD9EqPd2m0pDHoSa3wgxHI2UKj4fe3FxxwjD9i4a38P4+tv+
         36J+1kgXWBvyXt2KJt6qC00b09cWkdAT/R3MGMa2HPpAgp8L651jdz9DuD9rnoilKAFo
         p7hh6p1CWyl1ZVjN5CbqsIwa2kToBW9xo3xFvFLMFBMx8p3MY8QweiM6HZRtNksLBEXm
         Af+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mbdRjmeq;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::52e as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com. [2607:f8b0:4864:20::52e])
        by gmr-mx.google.com with ESMTPS id h15si2929ili.5.2021.06.21.11.24.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Jun 2021 11:24:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::52e as permitted sender) client-ip=2607:f8b0:4864:20::52e;
Received: by mail-pg1-x52e.google.com with SMTP id e20so14883267pgg.0
        for <clang-built-linux@googlegroups.com>; Mon, 21 Jun 2021 11:24:25 -0700 (PDT)
X-Received: by 2002:a63:1143:: with SMTP id 3mr25502463pgr.166.1624299865199;
        Mon, 21 Jun 2021 11:24:25 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:200:33e1:52f0:4159:6ed])
        by smtp.gmail.com with ESMTPSA id b18sm4756953pft.1.2021.06.21.11.24.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Jun 2021 11:24:24 -0700 (PDT)
Date: Mon, 21 Jun 2021 11:24:18 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Kees Cook <keescook@chromium.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Bill Wendling <wcw@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Peter Oberparleiter <oberpar@linux.ibm.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
	Ard Biesheuvel <ardb@kernel.org>, Will Deacon <will@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Andrew Morton <akpm@linux-foundation.org>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	linux-kernel <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	Borislav Petkov <bp@alien8.de>, Martin Liska <mliska@suse.cz>,
	Marco Elver <elver@google.com>, Jonathan Corbet <corbet@lwn.net>,
	Linux Doc Mailing List <linux-doc@vger.kernel.org>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	Dmitry Vyukov <dvyukov@google.com>,
	Johannes Berg <johannes.berg@intel.com>,
	linux-toolchains@vger.kernel.org
Subject: Re: [PATCH 1/2] compiler_attributes.h: define __no_profile, add to
 noinstr
Message-ID: <20210621182418.57qbumtovysrlkwy@google.com>
References: <20210618233023.1360185-1-ndesaulniers@google.com>
 <20210618233023.1360185-2-ndesaulniers@google.com>
 <CANiq72kjyiAQn2+ijZKFo7SY3z+dCV6fGXYP1O_Mq7Ui3EqSzQ@mail.gmail.com>
 <CANiq72nbbqeD2dv3z0y3rN-_kdnh=9-pD7oSyWUfaG8oJ2y_8A@mail.gmail.com>
 <CAKwvOd=B6LV9rZmtPacfz_F10jj1wrovoGu8yvdOqKZ69-T6mQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAKwvOd=B6LV9rZmtPacfz_F10jj1wrovoGu8yvdOqKZ69-T6mQ@mail.gmail.com>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=mbdRjmeq;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::52e
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

On 2021-06-21, Nick Desaulniers wrote:
>On Sat, Jun 19, 2021 at 4:32 AM Miguel Ojeda
><miguel.ojeda.sandonis@gmail.com> wrote:
>>
>> On Sat, Jun 19, 2021 at 1:26 PM Miguel Ojeda
>> <miguel.ojeda.sandonis@gmail.com> wrote:
>> >
>> > I am not sure if it is best or not to have the GCC link in order to be
>> > consistent with the rest of the links (they are for the docs only). Do
>> > we know if GCC going to implement it soon?
>>
>> i.e. if GCC does not implement it yet we use elsewhere this kind of
>> marker instead:
>>
>>      * Optional: not supported by gcc
>>
>> The first of its kind, normally it is clang/icc there ;-)
>
>:^) GCC does have an attribute since GCC 7.1 for this.
>https://gcc.gnu.org/bugzilla/show_bug.cgi?id=80223#c11
>I'm moving Clang over to use that in
>https://reviews.llvm.org/D104658
>Once that lands, I'll send a v2 (without carrying any reviewed by tags).

Thanks! __attribute__((no_profile_instrument_function)) looks good to me.

Also a reminder that __GCC4_has_attribute___no_profile in v1 misses two
underscores. v2 no_profile_instrument_function may need to fix this.


Reviewed-by: Fangrui Song <maskray@google.com>

>>
>> We could nevertheless have the link there, something like:
>>
>>     * Optional: not supported by GCC
>>                 https://gcc.gnu.org/bugzilla/show_bug.cgi?id=80223
>
>-- 
>Thanks,
>~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210621182418.57qbumtovysrlkwy%40google.com.
