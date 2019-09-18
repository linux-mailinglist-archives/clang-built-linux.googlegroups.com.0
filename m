Return-Path: <clang-built-linux+bncBCTYRDEG7MGBB6P6Q3WAKGQEZFTMLII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3a.google.com (mail-yw1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 32867B5ADA
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Sep 2019 07:24:10 +0200 (CEST)
Received: by mail-yw1-xc3a.google.com with SMTP id i199sf4637902ywe.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Sep 2019 22:24:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568784249; cv=pass;
        d=google.com; s=arc-20160816;
        b=seXeocu/cbEAqlpyu5SHN6Uc2SrGcCW9FPfcqXelQwKAVvjmLEr/vkm+tWWeOcfe4i
         g3u+wSgDKfnnREZvLZGJgX6vB+UPBqXPe5k7Ko/oiFEwhwQ7mnPuqe4ySvoI8mXgbbDo
         +FKNrN7syTTxwKQuonSU8KS91rzIzZLeBsrjSePqETbGiL3J/ahAC7ZPjTUM3Cs3/1fd
         TYvUSR6VEWWRBFPi+h4+YRaSaFCsCcLPlqkY0Y+6xYQpky++Sc9VsvlbF1yVP3YQ1ajq
         K4rJ1QcuiHH3EfLi/SRKN7wc2l1q5GfiX9d5nwqHa4Wgi9Td7SlNB/kKEGoX4HFL3Ey9
         ILtQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=nMpNckqpHjZUoZqtdgrZeGDEf8bnFAAKK7DJ+i5lj5g=;
        b=XWWZFFhgvE2I7bPifQueZq1X5aChuxcLBB2t/hFFEUEKwOKrU2B+8Ug9Jjtfcm+3sg
         FAeEdzdARTFsYZJ2YI5rypOF/JkMxyK03NGJtXbYV9SoVcDaAAp6l3ZQWKlaTMfZmK4T
         N3SsIeR7+g6FndRbGJkOgMcjbIr0bi3F7OcmKklvn6uEN4vpg/TwXKnnktdjZB0Ah/jI
         YXnjI2n8TLfIifWTz8HX1hJ+piO8Lheje+PgLgYSt1KQEm8CcOBgyVh/h5dSre43Ihrl
         7zIS6MU7zgQX/MrYlpJ3uzRNqqRnsnlKUYCqh99Po8SVh2XhEwTL8FR3/IA3wGUkZEr1
         4ksQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=md5DyGBY;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nMpNckqpHjZUoZqtdgrZeGDEf8bnFAAKK7DJ+i5lj5g=;
        b=g/c25s6KEAisxscOMA4ta5+lMzZK9NRpFVjnmeBv2jJ+v+22hZ1U3/c/QzPTcPry0J
         vqGP5PJoWJFmJr0fua7db3NU9pIWsahYMMLPRNS5m7snpE6+DVYVKKGavCwza4NLUSSh
         M+nZMbXAxo6uYgOGZDtWEb3kEW7OIgLX33tgnBt9qIFYnT4q2OqrTyPD0VqjGldYSleC
         /Ynd3B4PagUrwTTIIxO2JJhP91/yv77iqDjduAY/P6mhkO4BmCUzSnaAF+QwcrBzmubP
         junTjdnz9/OVPrXcK6HavPTeBcaTtofOiWIBBWloBxHQ80CgEblUZnSeWEpp/Wpq5iaa
         QEvA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nMpNckqpHjZUoZqtdgrZeGDEf8bnFAAKK7DJ+i5lj5g=;
        b=tz063Qpyb5u8YY+stamuXzZVb63QRcVwM9BzK1QRvSc1bFjDxyWmbI4l65vzJhq93r
         dwo5FXI6KjCm0NHoSjMzGyTlWw7TuOuMTtMhN/oXnP1vVPNYwj820DrH/0Ug37OyX33Y
         y5MFVONcQ64dGh2ETTTNuhBmFX7+V9uS5jc1zwVXsi/o3zbNpF3QARiNFmFLD/CewkL6
         31lJEh4oFsQUWRNWHH6Aves9fS4VoBlGJURTczSaVQyJcW/5b7r3dAnhKpzm7qg7RtTj
         YJXzLL7ZuUJnhzyn1rtlWJLWy3NX2F8hhiNWMvtAFynhIeGUvoXYm8enKfA566nVZd1C
         XdEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nMpNckqpHjZUoZqtdgrZeGDEf8bnFAAKK7DJ+i5lj5g=;
        b=m8eIkp9G9nLRbW2DFZO8OFgbtMHIFQRD+62hdUdbWbXGVOQghdKUIXYFWJGOPM8ohD
         rGl2KULLYIN/jnG9mcF0oQ3fkWWvMoGjioH8hKJT2DvgRgk5qo9f+h40KbOSJqnGB1Qa
         7nAPipr26T90Ag3OkFTASNxNy4QepfRbFoo1uGY+iS1Fe3rNYv0a4T9doce52xOT+qLS
         3DDK/Zfh+2jZBvi2rUzkvnTUssl+tqinO6HZLT/TJwNQKsbM0SIJ9r45Eqcr3qiJRGhy
         mubaCKIOyuGcg3jN+4Qnq890Hub6Idb1jD15Ff9xRMJykY3JDDeHw7slkS46vYRaXaOg
         NcQw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVoQc00HjxV2O8Z9Ee/4bUcs9CbJJQjEXrvjqWndroL7jYxaJIz
	5qn1hdKg/Wj3nfn4rHM65YY=
X-Google-Smtp-Source: APXvYqzUuyfe59fPDlqLsRtbUvDP/saciTLkYgcSZLaGOsoVV+F2qNim3QiduSmcj1DWudT+c+RkJg==
X-Received: by 2002:a25:c3:: with SMTP id 186mr1536809yba.417.1568784249199;
        Tue, 17 Sep 2019 22:24:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:bd89:: with SMTP id f9ls956334ybh.2.gmail; Tue, 17 Sep
 2019 22:24:08 -0700 (PDT)
X-Received: by 2002:a25:d788:: with SMTP id o130mr1537388ybg.475.1568784248901;
        Tue, 17 Sep 2019 22:24:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568784248; cv=none;
        d=google.com; s=arc-20160816;
        b=OYc9b1dCLsqrRNdyq/PhPBEEhb8dq9fUwK/tviwU+mAhNXtjyBA4b83pWzkmpyQDua
         5ILAxfPnFtGiBgWDjTwgFFCOcanME/5UPDzlNg+ZK33z7GxT5o+F5tzp/iAcBq4TqxM1
         eblGJDY5ad60PuIwNueUzl0ucgClZPw1gmxluHw5Env+BiglwZB0Jo6AFT1GtSs7MgqU
         IFbBv3yl7t24qmLM8nOb50EhY57n0ww4X1GfSgUJPvcVrsxxR9w1eWD8SlwVTMOcs0Kk
         ob6oqCjHGlY/Tkh1DnOxqn+Y5/r1hBtqEEw0jCjNceEGjL5X/IFMf6YTmKYICgSYHvzd
         24ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=0D/XAt0W45n0d0sCLH4jOu6TgQPDUKf8Gz3W2ap8Xqk=;
        b=SUKISkZcbx98rOPHLLf3nVJp2R+5C3iHyVNJ8lR8hKxkquKwWGtvtf9ec3VZOb6A0W
         VFN15Erqmw0Qi9osi7AkZYj/+d9YezXq6gQo7+1ojpmpcb+pCMD8yZ+bULhCdk1OYRcu
         R1NVbwTN23x15xVqIkVJTEvvZWCubiRsILSHlRbqjZe8kCgB9sjK9+3MFjmzNGykgroN
         AvGYkg4Q88kM7UY+at6kWZGPji6BtFg6vWXNbwxugVQ2+M9OdsSdzzcyQNYDEdGMYQcu
         8Hnd1OL37LDpHMkqhkKcaw0DFFIot4pcWOvszpy6IO4lBbUOXdIuZaOCNLcLToMzY7pU
         IxgA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=md5DyGBY;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id i140si362988ybg.4.2019.09.17.22.24.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Sep 2019 22:24:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Received: by mail-qt1-x844.google.com with SMTP id u22so7355043qtq.13
        for <clang-built-linux@googlegroups.com>; Tue, 17 Sep 2019 22:24:08 -0700 (PDT)
X-Received: by 2002:a0c:e48b:: with SMTP id n11mr1873130qvl.38.1568784248547;
 Tue, 17 Sep 2019 22:24:08 -0700 (PDT)
MIME-Version: 1.0
References: <20190916105433.11404-1-ivan.khoronzhuk@linaro.org> <20190916105433.11404-14-ivan.khoronzhuk@linaro.org>
In-Reply-To: <20190916105433.11404-14-ivan.khoronzhuk@linaro.org>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Tue, 17 Sep 2019 22:23:57 -0700
Message-ID: <CAEf4BzYa7mwFLZWdS0EMf4m=s88a94z6p30mxN8Q9=erpE5=Xg@mail.gmail.com>
Subject: Re: [PATCH v3 bpf-next 13/14] samples: bpf: makefile: add sysroot support
To: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
Cc: Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Yonghong Song <yhs@fb.com>, 
	"David S. Miller" <davem@davemloft.net>, Jakub Kicinski <jakub.kicinski@netronome.com>, 
	Jesper Dangaard Brouer <hawk@kernel.org>, john fastabend <john.fastabend@gmail.com>, 
	open list <linux-kernel@vger.kernel.org>, Networking <netdev@vger.kernel.org>, 
	bpf <bpf@vger.kernel.org>, clang-built-linux@googlegroups.com, 
	sergei.shtylyov@cogentembedded.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andrii.nakryiko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=md5DyGBY;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
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

On Mon, Sep 16, 2019 at 4:00 AM Ivan Khoronzhuk
<ivan.khoronzhuk@linaro.org> wrote:
>
> Basically it only enables that was added by previous couple fixes.
> Sysroot contains correct libs installed and its headers ofc. Useful

Please, let's not use unnecessary abbreviations/slang. "Of course" is
not too long and is a proper English, let's stick to it.

> when working with NFC or virtual machine.
>
> Usage:
>
> clean (on demand)
>     make ARCH=arm -C samples/bpf clean
>     make ARCH=arm -C tools clean
>     make ARCH=arm clean
>
> configure and install headers:
>
>     make ARCH=arm defconfig
>     make ARCH=arm headers_install
>
> build samples/bpf:
>     make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- samples/bpf/ \
>     SYSROOT="path/to/sysroot"
>
> Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
> ---
>  samples/bpf/Makefile | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
> index 133123d4c7d7..57ddf055d6c3 100644
> --- a/samples/bpf/Makefile
> +++ b/samples/bpf/Makefile
> @@ -194,6 +194,11 @@ TPROGS_CFLAGS += -I$(srctree)/tools/lib/
>  TPROGS_CFLAGS += -I$(srctree)/tools/include
>  TPROGS_CFLAGS += -I$(srctree)/tools/perf
>
> +ifdef SYSROOT
> +TPROGS_CFLAGS += --sysroot=${SYSROOT}
> +TPROGS_LDFLAGS := -L${SYSROOT}/usr/lib

Please stay consistent: $() instead of ${}?

> +endif
> +
>  EXTRA_CXXFLAGS := $(TPROGS_CFLAGS)
>
>  # options not valid for C++
> --
> 2.17.1
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEf4BzYa7mwFLZWdS0EMf4m%3Ds88a94z6p30mxN8Q9%3DerpE5%3DXg%40mail.gmail.com.
