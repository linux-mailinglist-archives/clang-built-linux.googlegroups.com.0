Return-Path: <clang-built-linux+bncBCTYRDEG7MGBB4EN2X7QKGQEA2CL5VI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id BD1512EB93B
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Jan 2021 06:13:22 +0100 (CET)
Received: by mail-pj1-x103b.google.com with SMTP id m9sf64061pji.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 Jan 2021 21:13:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609910001; cv=pass;
        d=google.com; s=arc-20160816;
        b=KLjxCOKdM/erlhs745Pg7tqztQh5tycO7rbzmGPddGDTFVZeKiWA9Y4UDxknlMAsPQ
         0Giv+ZaIA2BvV5E1djuYSh5k6vu4eX007FNCHxGhAvVJ84pNFX0GV/S07Z7axssUD6b2
         6GR2zFDYjNtXVG60kUf/u1tjN73XfGu6Jvfo3XtH5NtagncyYq2Vot7udgexp4mBoCG0
         WiCozYsaicSdS8VcnJQE81QilgepAjlGW9zg62i8EMuHdoWhtVkKsMwYxHPmtWMpVU4Y
         DNrkZ51smDy0ieI4uwdWqa+oK9ZpDhoXKKdN8nG3LCWakFHIyJXwG+9+NfbPx1qjjTIC
         IeIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=hF9YzUX1jRySmM+H6Rs2XP+fAPnz/HP6cc0468GghxE=;
        b=wMXdBvrburJjoofVAeFQ9T8c6Bybek1Nr7XW0RZnvXBTMGVenUcRcfAzhh+J2Xsd5t
         Uj9GUHilhpiT4q0vZb8zl7eYiRHUiTvOIh5PIrn44AndSKZqq8oxU1VBDcVqYM5mixbv
         WFOlw59qbX7pxFpOOhMhCfopXKeO7ABnnG5JG7M0kY5XsaBRmSR2FYYJhkI6v5sv96nj
         3oZt8LXgOK6z0Z7xqhHQl1WT2EvSyA0mXTP2G0jE/2RWZsFWNYXmJNhzNymseXVjHXEh
         UrNRgY7NwpbRBrsMTOLHBmmSOeWjastbjLXRcQbt4c+2eFX5TW5XCz/O8GUpB3hOvdwP
         TWJg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kbCCrZh5;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b2b as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hF9YzUX1jRySmM+H6Rs2XP+fAPnz/HP6cc0468GghxE=;
        b=th7ECZIY5IPXc2oUB+IRk5qIdV2EtLeDxTV9ZQXLWqP1/ReXDnOvCvTKg9w2qsDOOB
         GbvKJCULYC3+0ZgKyzS5puR5AF1QtbC67RizCyQ4c3x1s6+tybKvlfEfs6Ehy7B61djH
         tCUhEzbCNZMclU72reZcvNuJnPp2PfgT7NuFh6mqGXfgWsXH7NyOg5vyJ5Vw1FO4Vu9r
         Jv5/3iVhyhvYXmYYYzw6DR1BMjbzW8Isc6EkkHBDELxP0SGmae1zD+9MgfmQGXdI3CuK
         koSTz4VPqH1qp7APzXTF9PrZF/jxsfwS6Y8cySTsvPlHgD4K+VksdFIqe3E/92maTav6
         O4nA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hF9YzUX1jRySmM+H6Rs2XP+fAPnz/HP6cc0468GghxE=;
        b=YwGUGrAH1vl6FpvodLZoF/L3/ywv8UtYHwKGngWrrBmdt6IbFO1o0dZGbkGOaAjHQG
         43+azGJ3AJxHmgi97JcdNPaQpHoXhWtl+iUIOfhom9bDR9lv+87ZQtNmd/ItRbtgx3fb
         /bNeQtjHIr6yeSYXJ2yKQHDTzeR4tnvWRdV0OEEJEPPfyPx8qgbku/Xd1zDEdc0FCWpu
         /RTfXulykQldWvqQ7aha3ru0e/q5sKBhNNWoSQOSx46+O/Juxq1rUm0LAkeVwq2W2qwi
         N2N+qrMVV60GThcX1UHrnWy/2BCtkRG7usCM+9nNJr+E7AfCvvcrcE0yuzWot3lNgltE
         q0lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hF9YzUX1jRySmM+H6Rs2XP+fAPnz/HP6cc0468GghxE=;
        b=mOZBgWr5U13hCWwMmRw+Zve6qq012xgaHZDCRNjfYKPSfdhXmjAf+z22P8j4PamX8U
         j2K3aJD/LKU93E4MFtwurNywxcyD/XyHYBdXVPSc4xBGlzTyIXl+6uJQmirlfekTYzZa
         U+WotkQwC2nRq02KsMwTy5IHvZTs95ITq52WjE73p63C+2p+fDf7hX+rd249KMttRn/I
         RQsp2016dYAEr3Oc6XUrXYfhDKHtcOC/18tI4Qn55KaJI5Mh5W7Vyi1+dyzJabSxgVQS
         TKFcUL8bxI1li6A5gQE4QQYpW5+I5EZuldBaNxgUDgGxoM5OD3jcTBE6JWJk0IFYzbi/
         IOxA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530FWcDoeJ7mjYtSdcnBPQNISGfJu7fkHcoq+8FTSHIKV2C3oum6
	9P26Qk6DU7+CZX0QRaFOfOw=
X-Google-Smtp-Source: ABdhPJzHW/a8p9zuoxQ6GCqmfHi0S4PnDl+2ulmmP9ht4CkkFJHINqfUqHqCa9fQu4gVilFGCamNHA==
X-Received: by 2002:a63:c04b:: with SMTP id z11mr2679482pgi.74.1609910001010;
        Tue, 05 Jan 2021 21:13:21 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:6d0e:: with SMTP id i14ls737519pgc.8.gmail; Tue, 05 Jan
 2021 21:13:20 -0800 (PST)
X-Received: by 2002:a63:ec4d:: with SMTP id r13mr2661609pgj.53.1609910000387;
        Tue, 05 Jan 2021 21:13:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609910000; cv=none;
        d=google.com; s=arc-20160816;
        b=XJTC77GtTkSPK0JE7UceR5VjUrGtcp2fksd7EkxIeaW8+y18dW6NAc5raJky0upEce
         aUXnw3JHAGoZ99zrGRloHESsqi5S8aOy/1eA5FK2dwURQtJVWpEl6O9Hhc+qWIBhTSGw
         PK/pDuHbPiZSGxVZCfa2HpbMGHLo553yRVXr50nz2OB7yIvebqMoIggOnV1+PzpqHAqe
         pFe6sElM51aKavHgAuuG4FndfmF5dtyLklHvH8OcOY/4CArspVdUzT/iVBAIbRubWI+o
         8su6ehfOsA3RuF7V0Px0v3HNKoJFW7NVOQB+7embw+uJ7GgTmK8xsYrlYvnf9V3unDS/
         LMqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=JQUlyOnlBcqYVUIlvxW8hwy4E/pavn1J3HXdQXV8Lvk=;
        b=tg8Vxkj021H/w/mzGxuZrhpGH1QNwtPSMXnTPWcohq+ukys6LfZ19Y991vsw5nXcDC
         5OkrNN9x7Yu0bE9U2wWOHFmxbwdLoaad3nLsYzcchG+52NE08dfr9YiGLt6DrbWpTaT2
         22cDbXdSlYAJpqUo4BLEPlzBMvMXMBud140JPHQG/eAy8WFJxUUkKOYOSeUQSi+x5/4x
         Q6SHsLyBwwXrR3K0tI3GO2OF71HT+2P/XnAmkw6BSdrekP2DkHMQgjPauz/PIPPuS3N6
         Ms2T1aQg613ZgnnYF0/iTvM8BnT2X/xOdu5TLinNAKNl7jL4QO9gHRdCFKfyDnsfNPD9
         44Hg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kbCCrZh5;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b2b as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb2b.google.com (mail-yb1-xb2b.google.com. [2607:f8b0:4864:20::b2b])
        by gmr-mx.google.com with ESMTPS id m13si126582pjg.3.2021.01.05.21.13.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jan 2021 21:13:20 -0800 (PST)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b2b as permitted sender) client-ip=2607:f8b0:4864:20::b2b;
Received: by mail-yb1-xb2b.google.com with SMTP id b64so1742880ybg.7
        for <clang-built-linux@googlegroups.com>; Tue, 05 Jan 2021 21:13:20 -0800 (PST)
X-Received: by 2002:a25:818e:: with SMTP id p14mr3703964ybk.425.1609909999694;
 Tue, 05 Jan 2021 21:13:19 -0800 (PST)
MIME-Version: 1.0
References: <cover.1609855479.git.sean@mess.org> <67ffe6998af5cf88bdda6eaa1e6b085db1e093ed.1609855479.git.sean@mess.org>
In-Reply-To: <67ffe6998af5cf88bdda6eaa1e6b085db1e093ed.1609855479.git.sean@mess.org>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Tue, 5 Jan 2021 21:13:09 -0800
Message-ID: <CAEf4BzZ_KLOiqR1jdcekui5uWTFjO9mt8+7UG8DKbUEdq0SHVQ@mail.gmail.com>
Subject: Re: [PATCH v3 3/4] bpftool: add support for ints larger than 128 bits
To: Sean Young <sean@mess.org>
Cc: Yonghong Song <yhs@fb.com>, Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, 
	Andrii Nakryiko <andrii@kernel.org>, Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, 
	John Fastabend <john.fastabend@gmail.com>, KP Singh <kpsingh@kernel.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Quentin Monnet <quentin@isovalent.com>, =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>, 
	linux-doc@vger.kernel.org, Networking <netdev@vger.kernel.org>, 
	bpf <bpf@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andrii.nakryiko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=kbCCrZh5;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::b2b as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
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

On Tue, Jan 5, 2021 at 6:45 AM Sean Young <sean@mess.org> wrote:
>
> clang supports arbitrary length ints using the _ExtInt extension. This
> can be useful to hold very large values, e.g. 256 bit or 512 bit types.
>
> This requires the _ExtInt extension enabled in clang, which is under
> review.
>
> Link: https://clang.llvm.org/docs/LanguageExtensions.html#extended-integer-types
> Link: https://reviews.llvm.org/D93103
>
> Signed-off-by: Sean Young <sean@mess.org>
> ---

all the same comments as in patch #1

>  tools/bpf/bpftool/btf_dumper.c | 40 ++++++++++++++++++++++++++++++++++
>  1 file changed, 40 insertions(+)
>
> diff --git a/tools/bpf/bpftool/btf_dumper.c b/tools/bpf/bpftool/btf_dumper.c
> index 0e9310727281..8b5318ec5c26 100644
> --- a/tools/bpf/bpftool/btf_dumper.c
> +++ b/tools/bpf/bpftool/btf_dumper.c
> @@ -271,6 +271,41 @@ static void btf_int128_print(json_writer_t *jw, const void *data,
>         }
>  }

[...]

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEf4BzZ_KLOiqR1jdcekui5uWTFjO9mt8%2B7UG8DKbUEdq0SHVQ%40mail.gmail.com.
