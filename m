Return-Path: <clang-built-linux+bncBC3ZPIWN3EFBB3OQRT3AKGQE2SV4YFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33d.google.com (mail-wm1-x33d.google.com [IPv6:2a00:1450:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id C2F531D8C45
	for <lists+clang-built-linux@lfdr.de>; Tue, 19 May 2020 02:29:33 +0200 (CEST)
Received: by mail-wm1-x33d.google.com with SMTP id v23sf347305wmj.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 18 May 2020 17:29:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589848173; cv=pass;
        d=google.com; s=arc-20160816;
        b=MEr5IYqgpKn7hIjLgqhsJbUe6GBJPni24/nBjQJbCksP/LQocZf59in2dc+DduTh5r
         zua8Swd1uLBpQCqWFSIOfcqBPICgSZSoN3ogWyGCzSjHb7n8pRxZ7c+QMuLaLwK6q9uw
         BbmTh4bcDj0NaAl991CdjINcn7JF8WWpQb7VYVX6I7clJcZ2sq24z8ZZ3dnJOW+xh1Rn
         7rqP0f6hUYJHiPwWWtD4QPnNx7r61Okre7VWbdkSMLRh4Pl8VGDO+nJsIUDNS5dBvy2p
         RGUCd6fbZS2X3k7uwx49UzTsa1D2/yb8Rs29OkU5e4CQ0OcDq6ArJZn67hvDgkzr8XV1
         T/kw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=FRkHi/EI2lyjEeITxnNEkJSRyyYdv3gc1IZ2kViYDtA=;
        b=g1dN8PC1sMDrBxGUBXcgBEHe5p/riuL61AHZj2/xHjfDCVbb6mILWzoobg2rysFAts
         p9gfQcAYYkRlcktXBfAc71R7Iw9y7aTU5l73Qt5/0rOOWK+H6X0kx/bb5P8djuLXN2R2
         sTXHTpDeyegfj4zMQRAKW0IQksZxihn4OchM4wBVQlGsUQMjYfGEopDhT6GLAGKIkY6L
         kZWFD8w2T/GWw5y4BURaPIw+nLzujt96k1j9rMWSWPeoMBUiZJh9nFbQmefJaPeRCm0R
         qCx1ANWyHmTlePX9j4Ml8Mzmab+VJ00IY71mQyVOsRATuzm/fq9O9lnYbjmKWPMTlITo
         6NQQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b="HhfO0c/8";
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FRkHi/EI2lyjEeITxnNEkJSRyyYdv3gc1IZ2kViYDtA=;
        b=hO6ugeTSDtRy/t5KoJ7V15SzYrCjsxFLAi84YkeJBrqswSINh2S6mIQnEzmUP6Tf19
         4EpmZM740nDQ8SjncUGDuGc4NjG2vO9w4a9oKC6OnwMdSsSw3s4cJUKKmEFV3DOH8A3D
         JstK82rbEv25+Ffd+8cv4bLFiam+smH1NoGEKEILOrkeKi3DPq+jlavE/U/VMceozi81
         YzaIqRWUyCiw4/4pVwalvlen1ZwnDLps8QWJo+n3x7tRWCz3ldbIBds9f2VSb2OKra6f
         DAULeF5wvDAcj4XpGIiEtgg8+1e3es9+CM5AFm3hLf25scUf1kOdL8NU1/y+gqfwirC+
         Nffw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FRkHi/EI2lyjEeITxnNEkJSRyyYdv3gc1IZ2kViYDtA=;
        b=d/45s3RB2pgmvwF14CyFmgFsCdszWrXhFZDmYRCaXdj64xnx9t/FOp1yiRA6OymKPR
         ekDpTfIKwbS9QwvYzg3L4iZvszW4F6Qy2N2s2epnEmjJ9gt6ZW257s4i5Fsx+WmB2/39
         UNLecBdMsC/EjevGjmRNGk08tA0YGO2u+ahONMfITPthkBFg63qpGvtMpSt8rd1/582w
         ncjO/08zHd2aYORnhCgsqSFnfah0nZZcdqYiBPeJt956421RYzd4LVzSITS9vMxWYdVT
         5fLKPYcJ8/Y25EpFcTL0RS7rhcIk3Rz5LyURDlqOa0n8uYpfN0eVqMUcJ2fVJv7EOXf1
         cAyw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530xOQwPACDv7MyhFokuU2O8mWEJ8lrOnAHtrrsdokkQ2i5tW+64
	nJcRjGhbt7Q1QdniP7knCAY=
X-Google-Smtp-Source: ABdhPJwUFxkY0qigVAkJJtVhojCVz16vTa7slIxERph/fNqNiTGEuPhn4CBXJQQuqHZ5Ky8DRbfHBQ==
X-Received: by 2002:a1c:2289:: with SMTP id i131mr2130522wmi.111.1589848173505;
        Mon, 18 May 2020 17:29:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:61c5:: with SMTP id v188ls611071wmb.3.canary-gmail; Mon,
 18 May 2020 17:29:32 -0700 (PDT)
X-Received: by 2002:a1c:1d8d:: with SMTP id d135mr2054382wmd.98.1589848172862;
        Mon, 18 May 2020 17:29:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589848172; cv=none;
        d=google.com; s=arc-20160816;
        b=M+0Sv/XSOxWM5B+bfQRb7JD81JpiogKFq4LWN+tc58G7o6OQZL7ESQyLBP9ZAmOpnf
         scHclCYoUxDHHed4zUKxvjRXU+Z/ea6bDgvv7aQwPPTw8jBQLten1kNDzMLYypYLk8Zl
         lW7KEXbqPIKucbK2fOBLd7ZgUSpbTJOJHo9LebyjMASzK652ZlKOLl3msl3oOUJRKvEz
         BWOxf8C0r5kiLGcnpwo2+mAYRyHG3eeWBgAgImZuhJPXvrLgZjwkuAt5/YQj+zbwG+X+
         WW/0Np4XaFmXILR3FSRDS4ddZop3CspvOjgV8t9UlaFhYW3YybP9oXhVkvd+vaptmreu
         IFQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Lp5YS4wnqdBmdbNdBQYAqe4C1skHr56PklzUDuGNt/o=;
        b=CYvo5M2yy01Iiv27JyjWGFHluHDbRJCRbde1p9p9kyCALUFeIWjPrDYDnc51rJ1XDc
         HB3WRqo9qrbaB5VRV9cA/jkAdu4llxoxMg8paTx80Gn5eoNckM7UlH45jbGkIC/9shvJ
         PsVPzT4ulXOPPM1r77uHxacjg8LmdOry1oTCZb939lev30HfJxL/cTwzvhnsC+Q3Dav2
         7gshH8/vAz3ShjagRke5yqdweQTjWtbARomuYOF0DDVs1wuPElRqMJjBU2ECWwJKZHKv
         /mOhoyIYFbAnLalOyE/jLNF4zZVbe9fN5e6ZZWdxkFKQnhP+0czwon2OZcZM/LHi+E7M
         +zsQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b="HhfO0c/8";
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com. [2a00:1450:4864:20::141])
        by gmr-mx.google.com with ESMTPS id v11si646778wrp.5.2020.05.18.17.29.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 May 2020 17:29:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::141 as permitted sender) client-ip=2a00:1450:4864:20::141;
Received: by mail-lf1-x141.google.com with SMTP id z22so9715153lfd.0
        for <clang-built-linux@googlegroups.com>; Mon, 18 May 2020 17:29:32 -0700 (PDT)
X-Received: by 2002:a19:103:: with SMTP id 3mr9119105lfb.196.1589848171675;
        Mon, 18 May 2020 17:29:31 -0700 (PDT)
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com. [209.85.208.179])
        by smtp.gmail.com with ESMTPSA id g6sm6451956ljj.78.2020.05.18.17.29.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 May 2020 17:29:30 -0700 (PDT)
Received: by mail-lj1-f179.google.com with SMTP id z18so3607946lji.12
        for <clang-built-linux@googlegroups.com>; Mon, 18 May 2020 17:29:30 -0700 (PDT)
X-Received: by 2002:a2e:8956:: with SMTP id b22mr5686169ljk.16.1589848169813;
 Mon, 18 May 2020 17:29:29 -0700 (PDT)
MIME-Version: 1.0
References: <20200408205323.44490-1-natechancellor@gmail.com>
 <20200518093117.GA719849@ubuntu-s3-xlarge-x86> <CAKwvOdmXgYThHRDpt5dFZy5T1zS6MYQhcBNcq6-rsuc5fjiE6Q@mail.gmail.com>
 <20200518183513.53b94f11@gandalf.local.home>
In-Reply-To: <20200518183513.53b94f11@gandalf.local.home>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Mon, 18 May 2020 17:29:13 -0700
X-Gmail-Original-Message-ID: <CAHk-=wiwom6EF4DqStcZD0cJwXRMwAmLx2Z-wcn5xTiaJpgEkA@mail.gmail.com>
Message-ID: <CAHk-=wiwom6EF4DqStcZD0cJwXRMwAmLx2Z-wcn5xTiaJpgEkA@mail.gmail.com>
Subject: Re: [PATCH] x86: mmiotrace: Use cpumask_available for cpumask_var_t variables
To: Steven Rostedt <rostedt@goodmis.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	Ingo Molnar <mingo@kernel.org>, Karol Herbst <karolherbst@gmail.com>, 
	Pekka Paalanen <ppaalanen@gmail.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	nouveau@lists.freedesktop.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Sedat Dilek <sedat.dilek@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: torvalds@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=google header.b="HhfO0c/8";
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates
 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
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

On Mon, May 18, 2020 at 3:35 PM Steven Rostedt <rostedt@goodmis.org> wrote:
>
> Linus,
>
> Are you OK with this patch?

Yup, I don't care deeply either way, as long as we can get rid of the warning.

                Linus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHk-%3Dwiwom6EF4DqStcZD0cJwXRMwAmLx2Z-wcn5xTiaJpgEkA%40mail.gmail.com.
