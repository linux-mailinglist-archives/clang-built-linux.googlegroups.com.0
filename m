Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBL75Q3WAKGQEFC65D6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id F1977B5ACA
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Sep 2019 07:20:48 +0200 (CEST)
Received: by mail-qt1-x83d.google.com with SMTP id h10sf6758280qtq.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Sep 2019 22:20:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568784048; cv=pass;
        d=google.com; s=arc-20160816;
        b=asDiIoZm2LssiO+88tzmQQ6KUPJ2/8x5oKK+5NzJjqsBc//U3hFNCKAdozX2kMhav2
         0HOyaKAmlRzPniWDoelElV39HMpfRt1D4Z6G+N7F0SQ1n6YxYustrjpDhV4VgykAy9QK
         plS8i9YSpelM6vOz11LFKsgr1gpZS3o0TG73+k63Hwbm41kcY6+uvhUS7yFAxfDg3MqT
         1pRWgLLBJYhETEhUVTWbXbAegwfdyw13ew/Gs7zcduI9SpBuC8cQL2KHUdSFEN/hSy4T
         IvPA/1Oe5lx8WHkKUC8cGm+x4wjvKL1q4JUyZwg1qqjLhm++wxCnFZf1fvBb4oOekT+p
         PuGQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=r5RtBI47kmCjDqj+cSSUsxmBQSPFemvFljkufQSHaqA=;
        b=Tl12sBGzyXARJ8PJE3tJLwmJh+1WQJHID2HijMnsYIG/UcAJMY1INy8ecRUBN7uuXT
         nUTxzoYvqbZ8EUbhX0uvEqfzcy0+aKsjkPODSS87boVbROS+MJsSBaEMWaN8O0aplVjr
         DzCs5gxhrLy/atP3nETemJiAgmF9nyH8FYRgGQ9OcZ9Wn8Pn4nbDfhwacAEB7oQ49jmj
         KqKZcPBYnX3+UBmaC7Zwy6gRiaX+MCB1YbsqpmN+0mdaoc6mwoDIjUga+Igiiz4xrGQo
         m59ZqZPlOs2PM/74y3diJClyDHcNh9qze1AxsQsVyqZpeITy9EGEpuzAnzVvyA0jlcPT
         CYiw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=V80UfxZj;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=r5RtBI47kmCjDqj+cSSUsxmBQSPFemvFljkufQSHaqA=;
        b=Z0aWynueXs0UybxrxXk47imJ38g/Pjw8WY4mS3+GRWOnyKZDfzj6DDFrWQtzZXEoMU
         yw2FVKqG9KIMj+iT0DiIOPr14dy7pSaV1uPdZ5XIeRQNvetP+JQ0jGfUUZoXIyvUTHDv
         nI6VCOP6X0TzryfzFviHoGZzy7OZTqeHf9ersBvYg17jT6S3on4cMzOZz3vc2ztoyu0D
         ZLSllrYu77fK/37udpeiCBGjekYiJ3q7q6FKsSxy8Udb56ZOLyBnkDyFfujmnYZpzl4Z
         elP4QDMmsHZt2+7jEwI/2g131slRZF1jI5GRqaIYdIMZX2LwLkE4B9VrCSfVhtFMYrOc
         xlyg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=r5RtBI47kmCjDqj+cSSUsxmBQSPFemvFljkufQSHaqA=;
        b=Fe4rzWrdCOe0VB1lX7ONTrapOgFHdw/GxAo89h5MY6NPMtDeDcAUJ0qohoQgVEgj07
         20p7OpiEQWXRiTxAGqcmIWC8OjsY5ZoLKPvsq6gvML6HZPptOGHneHtdBpZ8ABH3A3+B
         Bc4Dg75qYLa8pAzYkh1u6dVtxvgo3yFgcc+rfcBfAwdOVUKpM2Cvn+8s1eBZP8/Jz0WB
         dp+nF4s9Zv+iqXYa4mmwJ/vwxLueWMYcAqCK9QN8vHQZQfsU88YvQnffbKavARDukZ6o
         RWA1BXiu2w5hUZaB6nddUCRlPxgm32cdikPOfTgbTa8oDHtreTpguMP/zgpUvIG0KD9Y
         DntA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=r5RtBI47kmCjDqj+cSSUsxmBQSPFemvFljkufQSHaqA=;
        b=iibfW1c8Xy2bAX5kS2+CTkFCmAU78EG1HjPThcE0vuO+cxb1WsZwcbli3aNmCIMHat
         d3TxUjz9997qeyBCFpCLbzRxMaGxwdT2V83JKFyDeiwfK3A0toUBRXUmIQuvvS7fLhPs
         iazFmU0+Nal2psanlsCYFmrs+Fu5JMV1xpzDC2snrL4xnqRmOm8mmMoUce97ITxyUIJK
         /fJ29FOKbfOrot1z1Yn73ltpvE3slNjrwX4fQ5OQwJrpxFHdC6PR9KbU9qp9WohvT6g8
         xTOuUAA8R/75kjV5oHNz/E8AqebnJ+ANzXIGCLktI0g45NkqUc/QgDS0QWKwavQbGhxr
         M+lA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXDVAj+VWy7gu0M5UiNpfULjj08UcWtAtUNbRWmZkZ3SdqrJyAn
	QYYv8eS1kudaVgZl5Pbsxak=
X-Google-Smtp-Source: APXvYqw1A2RlmkSfztm74pG8tkazEMvB7B8Hw146oxjUCXSQaplyHKEZIABqibpldJ/OpTSnzQwbYw==
X-Received: by 2002:a05:6214:142c:: with SMTP id o12mr1856486qvx.198.1568784047798;
        Tue, 17 Sep 2019 22:20:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:f992:: with SMTP id t18ls877080qvn.14.gmail; Tue, 17 Sep
 2019 22:20:47 -0700 (PDT)
X-Received: by 2002:ad4:43c5:: with SMTP id o5mr1752521qvs.207.1568784047532;
        Tue, 17 Sep 2019 22:20:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568784047; cv=none;
        d=google.com; s=arc-20160816;
        b=U8NNOdxFk1nbrc2A/zowe5RP6wOuHwADK0pVLISATTaDKuPPwJBfkDv2crbUz0tzxc
         G5jts4OAFPCw3ti5vghyAxOy5LxLg3a7GUYF1USGTVShux4SoZdwD6pwEYEEadmdx11m
         7gIkbIK19vl+/3+NM9/pbXrHRFdlPjBQAIlijafSD5oyLhB+UZMwOVTU/qMP6obhLUDd
         xGBKY2f8HQTgNacBEdw7RMYYoIo7/X/g+bBFEQ3hGQkgYISkgfLlTmKvaG/QAsmCh0vr
         ZLOzycPTLu0i9Dc5ZnWabeQRVxTCdfNfLap69NYcRr1edM0tpXUm96xJ9PpZHaBtG1ML
         4CBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=b0tfdb5P9pk3INZ0jESPpPCfhjoXmj1Um+iTci+rVkE=;
        b=MTImTiHT4aWSzaftrd7sabZOSR1F4Orppm/1Doc3Ct3YHkmLfgOfpYVprS9WdNKhhe
         gHwoXDW24VA+IQf2DRmyrFm93Lj5XCFIzWPuKahTTUVY8frLkmfgeJC3SOYEfylciMcZ
         eBZzu+XOFky8MDUVIF8pg2Zcmp6PbAC8gACmB//jcvNpwI3BrX7zDsQsKQgnXxb8sPcs
         HA7YbOLhsWpjO+LfHCVmDIVnvkOeJ3mTkSXfwo/8Bvds2SvevOooWsatPXDA0GAxwe2n
         Cb5XEdmlKKdtZfy9Irngn1M/5dqn7klpdiGaBS3OXqOyEXuuHRECaCHntO4bMsh7hj05
         Naag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=V80UfxZj;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com. [2607:f8b0:4864:20::841])
        by gmr-mx.google.com with ESMTPS id u44si739802qtb.5.2019.09.17.22.20.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Sep 2019 22:20:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) client-ip=2607:f8b0:4864:20::841;
Received: by mail-qt1-x841.google.com with SMTP id c21so7360275qtj.12
        for <clang-built-linux@googlegroups.com>; Tue, 17 Sep 2019 22:20:47 -0700 (PDT)
X-Received: by 2002:ac8:7401:: with SMTP id p1mr2351489qtq.141.1568784047221;
 Tue, 17 Sep 2019 22:20:47 -0700 (PDT)
MIME-Version: 1.0
References: <20190916105433.11404-1-ivan.khoronzhuk@linaro.org> <20190916105433.11404-13-ivan.khoronzhuk@linaro.org>
In-Reply-To: <20190916105433.11404-13-ivan.khoronzhuk@linaro.org>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Tue, 17 Sep 2019 22:20:36 -0700
Message-ID: <CAEf4Bzbwdy7qokjHAM7smgiAE=NS2kxc99X2qytaaoWbbYhNjA@mail.gmail.com>
Subject: Re: [PATCH v3 bpf-next 12/14] samples: bpf: makefile: provide
 C/CXX/LD flags to libbpf
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
 header.i=@gmail.com header.s=20161025 header.b=V80UfxZj;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
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

On Mon, Sep 16, 2019 at 3:58 AM Ivan Khoronzhuk
<ivan.khoronzhuk@linaro.org> wrote:
>
> In order to build libs using C/CXX/LD flags of target arch,
> provide them to libbpf make.
>
> Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
> ---
>  samples/bpf/Makefile | 14 +++++++++++---
>  1 file changed, 11 insertions(+), 3 deletions(-)
>
> diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
> index 18ec22e7b444..133123d4c7d7 100644
> --- a/samples/bpf/Makefile
> +++ b/samples/bpf/Makefile
> @@ -182,8 +182,6 @@ ifdef CROSS_COMPILE
>  TPROGS_CFLAGS += -Wall
>  TPROGS_CFLAGS += -O2
>  TPROGS_CFLAGS += -fomit-frame-pointer
> -TPROGS_CFLAGS += -Wmissing-prototypes
> -TPROGS_CFLAGS += -Wstrict-prototypes
>  else
>  TPROGS_LDLIBS := $(KBUILD_HOSTLDLIBS)
>  TPROGS_CFLAGS += $(KBUILD_HOSTCFLAGS) $(HOST_EXTRACFLAGS)
> @@ -196,6 +194,14 @@ TPROGS_CFLAGS += -I$(srctree)/tools/lib/
>  TPROGS_CFLAGS += -I$(srctree)/tools/include
>  TPROGS_CFLAGS += -I$(srctree)/tools/perf
>
> +EXTRA_CXXFLAGS := $(TPROGS_CFLAGS)
> +
> +# options not valid for C++
> +ifdef CROSS_COMPILE
> +$(TPROGS_CFLAGS) += -Wmissing-prototypes
> +$(TPROGS_CFLAGS) += -Wstrict-prototypes
> +endif
> +

ugh, let's really get rid of dependency on C++ compiler, as suggested
for previous patch.


>  TPROGCFLAGS_bpf_load.o += -Wno-unused-variable
>
>  TPROGS_LDLIBS                  += $(LIBBPF) -lelf
> @@ -257,7 +263,9 @@ clean:
>
>  $(LIBBPF): FORCE
>  # Fix up variables inherited from Kbuild that tools/ build system won't like
> -       $(MAKE) -C $(dir $@) RM='rm -rf' LDFLAGS= srctree=$(BPF_SAMPLES_PATH)/../../ O=
> +       $(MAKE) -C $(dir $@) RM='rm -rf' EXTRA_CFLAGS="$(TPROGS_CFLAGS)" \
> +               EXTRA_CXXFLAGS="$(EXTRA_CXXFLAGS)" LDFLAGS=$(TPROGS_LDFLAGS) \
> +               srctree=$(BPF_SAMPLES_PATH)/../../ O=
>
>  $(obj)/syscall_nrs.h:  $(obj)/syscall_nrs.s FORCE
>         $(call filechk,offsets,__SYSCALL_NRS_H__)
> --
> 2.17.1
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEf4Bzbwdy7qokjHAM7smgiAE%3DNS2kxc99X2qytaaoWbbYhNjA%40mail.gmail.com.
