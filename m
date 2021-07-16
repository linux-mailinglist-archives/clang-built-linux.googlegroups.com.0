Return-Path: <clang-built-linux+bncBC3ZPIWN3EFBB556YODQMGQEXZBODPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id D89A63CB060
	for <lists+clang-built-linux@lfdr.de>; Fri, 16 Jul 2021 03:23:04 +0200 (CEST)
Received: by mail-lj1-x23b.google.com with SMTP id a5-20020a2e7f050000b0290192ede80275sf1547673ljd.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Jul 2021 18:23:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626398584; cv=pass;
        d=google.com; s=arc-20160816;
        b=MTg/z4cBRpPXx1ufifhPFh3zTKT2+4mSTvIoWPoU3XVTGfyXBmOcRk3XGOnCecAc5D
         j+cNYOoZjyo6n+DT3WAEJ6Qishc48M1cdD+OyqkQdhojTBxuHAA5X6FsD0V1Ms1yzg9r
         9YT18GWYLRcJ5E8QGiAVWWxnhYQSWdnHuBAnZf+P6484fzJ72GdmPSB7AhILEq+rS8Mr
         4irSPoaF/FdvUWDG9rNql3a6nhnWnVMsll5MV/6QBfZkyffmp3k60cva1JtJGs0bI4ME
         8t13oewz3McGy9uI9MNQ6M44S6MLzdB0A8l8JjO1EWECj3XpOnCOfQCwiJP5Bv2B+5iS
         mrow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=Dr6ppTRBa4s7snQZlCC+R3X3Z5UbokFtibP6AAbUhxM=;
        b=IM+kw0vTdKC3nzqQHyBJ/O7jTuFCpIossfts73Bs/PuUG3cPAeJa3/rP5XAlLu4hai
         eFpPGn+h99COujVJ/Ma23nj5igmHmOU72Pc3s8CMTUkTDQhv2n9PZYeCGBAzv3O8fgEB
         CAO6q3bE9sW4KG2yBsHoNsOh9flYYspIppZxFcKzZjViJodzWzI3oH5c4Ve5MsQcazdV
         YEPz7H7ai02WY+K1bOuaZeVsdoSBPpmKFkUInfd6b+rcBLQCCYP5D2orza4VCthDNccW
         4YHe2RFe7y1I8hGajKatmy3flL3N2ZHZYsiJK64jIYYm4kl36vUDCLMnPJDxbrS9ksWG
         VLog==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=bOAeC7eg;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::22b as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Dr6ppTRBa4s7snQZlCC+R3X3Z5UbokFtibP6AAbUhxM=;
        b=Zshjs4bgMFkm2NLMzeXZKlXFL0DrhX1df/CWiw9Tz2zrU8wq7wUav/U7iq+rAwJm6U
         wQ9lJD7k/b6NMMmwYfAVMfIOr1TZA2jaC28EeaoWKHJprMxLmBzAaolkqSvA5aFcgHAe
         AymcXyQPQ2aJ/Q5AHu1OpbiZTMGdrcVyH6YUxsp3LpHftM+SPYdHuLcjXrV97w4mUV8s
         WfJRRv5pldZcswW23qCjYZeUiC9EACdMwOVXij2z6XhOsGlKQeVj5ReFgosbzj4U6nDL
         kbpJEYBW+svyyGZ3Rdn/MEz/+98nCz/ULq3c8dL3L0LrxpFeBPTfc+9v+z1ycEJa0cnl
         /7ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Dr6ppTRBa4s7snQZlCC+R3X3Z5UbokFtibP6AAbUhxM=;
        b=X5Yda1iLUtiy5kpdMoog0ZZNtvoG5JRkhKmqesJm2KY+mUY38U/EEJAjC+FCdRECAO
         PsigfBv3oSvN/WKaQibDoz5t8sbjXQFH+W+iqd4zV7Z28LclKVs2YwamArS5iaZtWUgo
         JQ2A5yd+kCWoWnZK3xrB9QImM7+GGctjxRzeI2hVgDZ6iSoWSjxRdmOve6+C39y+i8Bn
         F6dYrsAyFE5LaCLG8P77RPFodJQudIUgfoOjc6Vz9EvzETlgXrEE5LVDxOwSRfQZLmTK
         bOnSdpiM3crhgAGuYPwg7vdJpnic/cIRlNK95CgTEZiWboEFIpMSmqckOWtEDtVLN7j3
         1p0Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531oeQ8e/f5FqmWXSqnwXqDVmsdZNy+bu3HSYuaLvNDz5R+/VP72
	Mz/8iKhAj1K0Xhj4AxyxTcg=
X-Google-Smtp-Source: ABdhPJwbRnWsQEDBfxtA5xywLw1ZcmnUyKUbXvdFQu0MlL63+zSbDpdvf1ZAd7ARLoJF9fzRcN/YyA==
X-Received: by 2002:a05:6512:3744:: with SMTP id a4mr5623708lfs.112.1626398584121;
        Thu, 15 Jul 2021 18:23:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:a783:: with SMTP id c3ls2031310ljf.2.gmail; Thu, 15 Jul
 2021 18:23:03 -0700 (PDT)
X-Received: by 2002:a2e:7f12:: with SMTP id a18mr6754809ljd.492.1626398583002;
        Thu, 15 Jul 2021 18:23:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626398582; cv=none;
        d=google.com; s=arc-20160816;
        b=yAy3jqPQNpwGq02kx5ZClpQFQJfcOMDsBhDkuHYzHY/8wHG9rFcSL1Hw+OaGCbtEFG
         9Nke4TuqdEZ0emn9qYZmc0wLaZR4ishsxtGPuKJbNqKdV6ntRC39MvqWJ+wbVbd4XgJ9
         YwRgYad9AQ4sg2/RO++FKSFhi2JsAwGFWYNQ++X5dPKnn5j+owK5UvhtqdLogyjks997
         g/9qBTPmUkt4kle0bJDoLJTjih9MawELLUOAXb2c/SMXULWMWp/ybap+9F0/8wrYPHnz
         7xCzVnGDfd/ueI73CYG3+i8wJv5SUu2ykYrGYkl63Fz0mlHU7MzRPUsGatG5Pc8T+3Hi
         7Rzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=vwM1T+8Px0FLEGXWA6zrhkQm5HdM2ArGoJTAqP8zhhM=;
        b=IZB83bf9mzsRILfyExtDv76/Os+VEeVev6FJEj1ukT6f7PD1e/Z42CAaY2mbV3SzH9
         upokX3UietspBzmIlG/Y62/IqLc2Ymyy4HI8f7DjYZYvP1BEzAW1EeM9/w6AxIg3WwON
         d3/Ajix+VPjZ6I9xiyTVfGHlNsojgjvL5zFxi+OuVZ1d8Xe2K347CZJea5Cm7YpO+q1q
         h36o3zEXnXnzOFKhzJdVPyjJM3IM/zlsbocBeoPQ3gbwYnH+m/d+MfnlIBfXqFMF2/6G
         tOSczPk2JpfBtkk9Bg98ERUuR9eZ2G7vHpcZqTmZ4YMv1BUD1juzBkeaHSW0bPSXGquW
         zl8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=bOAeC7eg;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::22b as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com. [2a00:1450:4864:20::22b])
        by gmr-mx.google.com with ESMTPS id b12si244739lfb.9.2021.07.15.18.23.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Jul 2021 18:23:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::22b as permitted sender) client-ip=2a00:1450:4864:20::22b;
Received: by mail-lj1-x22b.google.com with SMTP id x19so2942492ljc.4
        for <clang-built-linux@googlegroups.com>; Thu, 15 Jul 2021 18:23:02 -0700 (PDT)
X-Received: by 2002:a2e:9743:: with SMTP id f3mr6576835ljj.380.1626398582555;
        Thu, 15 Jul 2021 18:23:02 -0700 (PDT)
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com. [209.85.167.50])
        by smtp.gmail.com with ESMTPSA id r11sm848992ljp.9.2021.07.15.18.23.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Jul 2021 18:23:02 -0700 (PDT)
Received: by mail-lf1-f50.google.com with SMTP id f30so13289483lfj.1
        for <clang-built-linux@googlegroups.com>; Thu, 15 Jul 2021 18:23:01 -0700 (PDT)
X-Received: by 2002:a05:6512:2347:: with SMTP id p7mr5671088lfu.253.1626398581772;
 Thu, 15 Jul 2021 18:23:01 -0700 (PDT)
MIME-Version: 1.0
References: <20210714200523.GA10606@embeddedor> <CAHk-=wjQeeUiv+P_4cZfCy-hY13yGqCGS-scKGhuJ-SAzz2doA@mail.gmail.com>
 <5d170cc8-501d-0cec-bf03-2f53108a8486@embeddedor.com>
In-Reply-To: <5d170cc8-501d-0cec-bf03-2f53108a8486@embeddedor.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, 15 Jul 2021 18:22:45 -0700
X-Gmail-Original-Message-ID: <CAHk-=wj8GqP8ughGBbwcyrBNNdtcXVo_G=XjQ1MAUVUuJfUtGg@mail.gmail.com>
Message-ID: <CAHk-=wj8GqP8ughGBbwcyrBNNdtcXVo_G=XjQ1MAUVUuJfUtGg@mail.gmail.com>
Subject: Re: [GIT PULL] fallthrough fixes for Clang for 5.14-rc2
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Cc: "Gustavo A. R. Silva" <gustavoars@kernel.org>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Kees Cook <keescook@chromium.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: torvalds@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=google header.b=bOAeC7eg;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates
 2a00:1450:4864:20::22b as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
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

On Thu, Jul 15, 2021 at 6:14 PM Gustavo A. R. Silva
<gustavo@embeddedor.com> wrote:
>
> Kees just opened a bug report for this:
>
> https://bugs.llvm.org/show_bug.cgi?id=51094

I don't have an account on that bugzilla, but it might be worth adding
the note that no warning or error should EVER not say where it
happens.

That's the thing that made me pissed off in the first place. I build
my kernels with "make -j128", and if the warning doesn't specify the
filename and the line number, the warning is just unacceptably bad.

How can a compiler _ever_ give a warning without specifying where it is?

The fact that the warning is also entirely wrong-headed in the first
place is just the extra cherry on top.

But at least it should hopefully make it easy to fix in clang - just
remove the incredibly broken thing entirely.

             Linus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHk-%3Dwj8GqP8ughGBbwcyrBNNdtcXVo_G%3DXjQ1MAUVUuJfUtGg%40mail.gmail.com.
